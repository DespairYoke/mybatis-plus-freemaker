package ${package.Service};

import ${cfg.Repository}.${entity}Repository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ${table.serviceName}{

    @Autowired
    private ${entity}Repository ${entity?uncap_first}Repository;

}
