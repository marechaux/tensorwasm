wit_bindgen_guest_rust::generate!({
    import: "import.wit",
    default: "interface.wit",
    name: "exports",
});

struct Exports;

export_exports!(Exports);

impl exports::Exports for Exports {
    fn compute(input: Vec<i32>,) -> Vec<i32> {
        let mut result = vec![0; input.len()];
        result[0] = input[0];
        // result[0] = 9;
        return result;
    }
}
