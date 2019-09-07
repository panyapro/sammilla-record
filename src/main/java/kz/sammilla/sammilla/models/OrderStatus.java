package kz.sammilla.sammilla.models;

public enum OrderStatus {

    NEW("NEW", "Новый"),
    COMPLETED("COMPLETED", "Завершен");

    private String code;
    private String value;

    OrderStatus(String code, String value) { this.code = code; this.value = value;}

    public String getCode() { return code; }
    public void setCode(String code) { this.code = code; }

    public String getValue() { return value; }
    public void setValue(String value) { this.value = value; }
}
