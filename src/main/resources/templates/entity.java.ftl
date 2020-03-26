package ${package.Entity};
import org.springframework.data.jpa.domain.support.AuditingEntityListener;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.Table;
import java.time.LocalDateTime;

<#if entityLombokModel>
import lombok.Data;
</#if>


@Data
@Entity
@Table(name = "${table.name}")
@EntityListeners(AuditingEntityListener.class)
public class ${entity} extends ${superEntityClass}{

<#-- ----------  BEGIN 字段循环遍历  ---------->
<#list table.fields as field>

    <#if field.keyFlag>
    <#-- 普通字段 -->
    <#elseif field.propertyName!="gmtCreate"&&field.propertyName!="gmtModify">
    private ${field.propertyType} ${field.propertyName};
    </#if>
</#list>
<#------------  END 字段循环遍历  ---------->
}
