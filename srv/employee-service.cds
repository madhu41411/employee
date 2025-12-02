using {sap.employee as my} from '../db/schema';

service EmployeeService {
    @odata.draft.enabled
    entity Employee       as projection on my.T_EMPLOYEE_MASTER;

    entity Qualifications as projection on my.T_EMPLOYEE_QUALIFICATIONS;

    @readonly
    entity Status         as projection on my.EMPLOYEE_STATUS;
}
