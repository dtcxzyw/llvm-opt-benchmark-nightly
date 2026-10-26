Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flatbuffers/original/idl_gen_rust?download=true
inline.NumInlined: 8319
inline.NumDeleted: 1181
begin_hunk_0
@.str.254 = private unnamed_addr constant [31 x i8] c"    Self([0; {{STRUCT_SIZE}}])\00", align 1
@.str.255 = private unnamed_addr constant [44 x i8] c"impl ::core::fmt::Debug for {{STRUCT_TY}} {\00", align 1
@.str.256 = private unnamed_addr constant [36 x i8] c"    f.debug_struct(\22{{STRUCT_TY}}\22)\00", align 1
@.str.257 = private unnamed_addr constant [16 x i8] c"      .finish()\00", align 1
@.str.258 = private unnamed_addr constant [63 x i8] c"impl ::flatbuffers::SimpleToVerifyInSlice for {{STRUCT_TY}} {}\00", align 1
@.str.259 = private unnamed_addr constant [55 x i8] c"impl<'a> ::flatbuffers::Follow<'a> for {{STRUCT_TY}} {\00", align 1
@.str.260 = private unnamed_addr constant [34 x i8] c"  type Inner = &'a {{STRUCT_TY}};\00", align 1
@.str.261 = private unnamed_addr constant [53 x i8] c"    unsafe { <&'a {{STRUCT_TY}}>::follow(buf, loc) }\00", align 1
@.str.262 = private unnamed_addr constant [59 x i8] c"impl<'a> ::flatbuffers::Follow<'a> for &'a {{STRUCT_TY}} {\00", align 1
@.str.263 = private unnamed_addr constant [73 x i8] c"    unsafe { ::flatbuffers::follow_cast_ref::<{{STRUCT_TY}}>(buf, loc) }\00", align 1
@.str.264 = private unnamed_addr constant [49 x i8] c"impl<'b> ::flatbuffers::Push for {{STRUCT_TY}} {\00", align 1
@.str.265 = private unnamed_addr constant [33 x i8] c"    type Output = {{STRUCT_TY}};\00", align 1
@.str.266 = private unnamed_addr constant [142 x i8] c"        let src = unsafe { ::core::slice::from_raw_parts(self as *const {{STRUCT_TY}} as *const u8, <Self as ::flatbuffers::Push>::size()) };\00", align 1
@.str.267 = private unnamed_addr constant [34 x i8] c"        dst.copy_from_slice(src);\00", align 1
@.str.268 = private unnamed_addr constant [53 x i8] c"    fn alignment() -> ::flatbuffers::PushAlignment {\00", align 1
@.str.269 = private unnamed_addr constant [53 x i8] c"        ::flatbuffers::PushAlignment::new({{ALIGN}})\00", align 1
@.str.270 = private unnamed_addr constant [55 x i8] c"impl<'a> ::flatbuffers::Verifiable for {{STRUCT_TY}} {\00", align 1
@.str.271 = private unnamed_addr constant [29 x i8] c"    v.in_buffer::<Self>(pos)\00", align 1
@.str.272 = private unnamed_addr constant [11 x i8] c"NUM_FIELDS\00", align 1
@.str.273 = private unnamed_addr constant [35 x i8] c"impl Serialize for {{STRUCT_TY}} {\00", align 1
@.str.274 = private unnamed_addr constant [62 x i8] c"    let s = serializer.serialize_struct(\22{{STRUCT_TY}}\22, 0)?;\00", align 1
@.str.275 = private unnamed_addr constant [79 x i8] c"    let mut s = serializer.serialize_struct(\22{{STRUCT_TY}}\22, {{NUM_FIELDS}})?;\00", align 1
@.str.276 = private unnamed_addr constant [12 x i8] c"    s.end()\00", align 1
@.str.277 = private unnamed_addr constant [25 x i8] c"impl<'a> {{STRUCT_TY}} {\00", align 1
@.str.278 = private unnamed_addr constant [39 x i8] c"  #[allow(clippy::too_many_arguments)]\00", align 1
@.str.279 = private unnamed_addr constant [14 x i8] c"  pub fn new(\00", align 1
@.str.280 = private unnamed_addr constant [14 x i8] c"  ) -> Self {\00", align 1
@.str.281 = private unnamed_addr constant [44 x i8] c"    let mut s = Self([0; {{STRUCT_SIZE}}]);\00", align 1
@.str.282 = private unnamed_addr constant [6 x i8] c"    s\00", align 1
@.str.283 = private unnamed_addr constant [11 x i8] c"STRUCT_OTY\00", align 1
@.str.284 = private unnamed_addr constant [43 x i8] c"  pub fn unpack(&self) -> {{STRUCT_OTY}} {\00", align 1
@.str.285 = private unnamed_addr constant [21 x i8] c"    {{STRUCT_OTY}} {\00", align 1
@.str.286 = private unnamed_addr constant [44 x i8] c"#[derive(Debug, Clone, PartialEq, Default)]\00", align 1
@.str.287 = private unnamed_addr constant [40 x i8] c"{{ACCESS_TYPE}} struct {{STRUCT_OTY}} {\00", align 1
@.str.288 = private unnamed_addr constant [22 x i8] c"impl {{STRUCT_OTY}} {\00", align 1
@.str.289 = private unnamed_addr constant [40 x i8] c"  pub fn pack(&self) -> {{STRUCT_TY}} {\00", align 1
@.str.290 = private unnamed_addr constant [24 x i8] c"    {{STRUCT_TY}}::new(\00", align 1
@.str.291 = private unnamed_addr constant [6 x i8] c"    )\00", align 1
@.str.292 = private unnamed_addr constant [11 x i8] c"FIELD_TYPE\00", align 1
@.str.293 = private unnamed_addr constant [10 x i8] c"FIELD_OTY\00", align 1
@.str.294 = private unnamed_addr constant [6 x i8] c"FIELD\00", align 1
@.str.295 = private unnamed_addr constant [13 x i8] c"FIELD_OFFSET\00", align 1
@.str.296 = private unnamed_addr constant [4 x i8] c"REF\00", align 1
@.str.297 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.298 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.299 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.300 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.301 = private unnamed_addr constant [5 x i8] c"<'a>\00", align 1
@_ZZNK11flatbuffers4rust13RustGenerator12GetTypeBasicB5cxx11ERKNS_4TypeEE9ctypename = linkonce_odr dso_local local_unnamed_addr constant [19 x ptr] [ptr @.str.64, ptr @.str.64, ptr @.str.196, ptr @.str.65, ptr @.str.64, ptr @.str.67, ptr @.str.66, ptr @.str.69, ptr @.str.68, ptr @.str.71, ptr @.str.70, ptr @.str.74, ptr @.str.75, ptr @.str.197, ptr @.str.197, ptr @.str.197, ptr @.str.197, ptr @.str.197, ptr @.str.197], comdat, align 16
@.str.302 = private unnamed_addr constant [22 x i8] c"alloc::string::String\00", align 1
@.str.303 = private unnamed_addr constant [19 x i8] c"alloc::boxed::Box<\00", align 1
@.str.304 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.305 = private unnamed_addr constant [24 x i8] c"INVALID_CODE_GENERATION\00", align 1
@.str.306 = private unnamed_addr constant [17 x i8] c"alloc::vec::Vec<\00", align 1
@.str.307 = private unnamed_addr constant [39 x i8] c"alloc::vec::Vec<alloc::string::String>\00", align 1
@.str.308 = private unnamed_addr constant [8 x i8] c"Option<\00", align 1
@.str.309 = private unnamed_addr constant [43 x i8] c"    .field(\22{{FIELD}}\22, &self.{{FIELD}}())\00", align 1
@_ZTIZN11flatbuffers4rust13RustGenerator9GenStructERKNS_9StructDefEEUlRKNS_8FieldDefEE_ = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN11flatbuffers4rust13RustGenerator9GenStructERKNS_9StructDefEEUlRKNS_8FieldDefEE_ }, comdat, align 8
@_ZTSZN11flatbuffers4rust13RustGenerator9GenStructERKNS_9StructDefEEUlRKNS_8FieldDefEE_ = linkonce_odr dso_local constant [83 x i8] c"ZN11flatbuffers4rust13RustGenerator9GenStructERKNS_9StructDefEEUlRKNS_8FieldDefEE_\00", comdat, align 1
@.str.310 = private unnamed_addr constant [56 x i8] c"    s.serialize_field(\22{{FIELD}}\22, &self.{{FIELD}}())?;\00", align 1
@_ZTIZN11flatbuffers4rust13RustGenerator9GenStructERKNS_9StructDefEEUlRKNS_8FieldDefEE0_ = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN11flatbuffers4rust13RustGenerator9GenStructERKNS_9StructDefEEUlRKNS_8FieldDefEE0_ }, comdat, align 8
@_ZTSZN11flatbuffers4rust13RustGenerator9GenStructERKNS_9StructDefEEUlRKNS_8FieldDefEE0_ = linkonce_odr dso_local constant [84 x i8] c"ZN11flatbuffers4rust13RustGenerator9GenStructERKNS_9StructDefEEUlRKNS_8FieldDefEE0_\00", comdat, align 1
@.str.311 = private unnamed_addr constant [36 x i8] c"  {{FIELD}}: {{REF}}{{FIELD_TYPE}},\00", align 1
@_ZTIZN11flatbuffers4rust13RustGenerator9GenStructERKNS_9StructDefEEUlRKNS_8FieldDefEE1_ = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN11flatbuffers4rust13RustGenerator9GenStructERKNS_9StructDefEEUlRKNS_8FieldDefEE1_ }, comdat, align 8
@_ZTSZN11flatbuffers4rust13RustGenerator9GenStructERKNS_9StructDefEEUlRKNS_8FieldDefEE1_ = linkonce_odr dso_local constant [84 x i8] c"ZN11flatbuffers4rust13RustGenerator9GenStructERKNS_9StructDefEEUlRKNS_8FieldDefEE1_\00", comdat, align 1
@.str.312 = private unnamed_addr constant [30 x i8] c"  s.set_{{FIELD}}({{FIELD}});\00", align 1
@_ZTIZN11flatbuffers4rust13RustGenerator9GenStructERKNS_9StructDefEEUlRKNS_8FieldDefEE2_ = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN11flatbuffers4rust13RustGenerator9GenStructERKNS_9StructDefEEUlRKNS_8FieldDefEE2_ }, comdat, align 8
@_ZTSZN11flatbuffers4rust13RustGenerator9GenStructERKNS_9StructDefEEUlRKNS_8FieldDefEE2_ = linkonce_odr dso_local constant [84 x i8] c"ZN11flatbuffers4rust13RustGenerator9GenStructERKNS_9StructDefEEUlRKNS_8FieldDefEE2_\00", comdat, align 1
@.str.313 = private unnamed_addr constant [60 x i8] c"  pub const fn get_fully_qualified_name() -> &'static str {\00", align 1
@.str.314 = private unnamed_addr constant [6 x i8] c"    \22\00", align 1
@.str.315 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.316 = private unnamed_addr constant [45 x i8] c"pub fn {{FIELD}}(&self) -> &{{FIELD_TYPE}} {\00", align 1
@.str.317 = private unnamed_addr constant [13 x i8] c"  // Safety:\00", align 1
@.str.318 = private unnamed_addr constant [48 x i8] c"  // Created from a valid Table for this object\00", align 1
@.str.319 = private unnamed_addr constant [48 x i8] c"  // Which contains a valid struct in this slot\00", align 1
@.str.320 = private unnamed_addr constant [78 x i8] c"  unsafe { &*(self.0[{{FIELD_OFFSET}}..].as_ptr() as *const {{FIELD_TYPE}}) }\00", align 1
@.str.321 = private unnamed_addr constant [11 x i8] c"ARRAY_SIZE\00", align 1
@.str.322 = private unnamed_addr constant [11 x i8] c"ARRAY_ITEM\00", align 1
@.str.323 = private unnamed_addr constant [89 x i8] c"pub fn {{FIELD}}(&'a self) -> ::flatbuffers::Array<'a, {{ARRAY_ITEM}}, {{ARRAY_SIZE}}> {\00", align 1
@.str.324 = private unnamed_addr constant [47 x i8] c"  // Which contains a valid array in this slot\00", align 1
@.str.325 = private unnamed_addr constant [29 x i8] c"  use ::flatbuffers::Follow;\00", align 1
@.str.326 = private unnamed_addr constant [69 x i8] c"  unsafe { ::flatbuffers::Array::follow(&self.0, {{FIELD_OFFSET}}) }\00", align 1
@.str.327 = private unnamed_addr constant [44 x i8] c"pub fn {{FIELD}}(&self) -> {{FIELD_TYPE}} {\00", align 1
@.str.328 = private unnamed_addr constant [111 x i8] c"  let mut mem = ::core::mem::MaybeUninit::<<{{FIELD_TYPE}} as ::flatbuffers::EndianScalar>::Scalar>::uninit();\00", align 1
@.str.329 = private unnamed_addr constant [47 x i8] c"  // Which contains a valid value in this slot\00", align 1
@.str.330 = private unnamed_addr constant [59 x i8] c"  ::flatbuffers::EndianScalar::from_little_endian(unsafe {\00", align 1
@.str.331 = private unnamed_addr constant [38 x i8] c"    ::core::ptr::copy_nonoverlapping(\00", align 1
@.str.332 = private unnamed_addr constant [43 x i8] c"      self.0[{{FIELD_OFFSET}}..].as_ptr(),\00", align 1
@.str.333 = private unnamed_addr constant [35 x i8] c"      mem.as_mut_ptr() as *mut u8,\00", align 1
@.str.334 = private unnamed_addr constant [89 x i8] c"      ::core::mem::size_of::<<{{FIELD_TYPE}} as ::flatbuffers::EndianScalar>::Scalar>(),\00", align 1
@.str.335 = private unnamed_addr constant [7 x i8] c"    );\00", align 1
@.str.336 = private unnamed_addr constant [22 x i8] c"    mem.assume_init()\00", align 1
@.str.339 = private unnamed_addr constant [11 x i8] c"FIELD_SIZE\00", align 1
@.str.340 = private unnamed_addr constant [30 x i8] c"#[allow(clippy::identity_op)]\00", align 1
@.str.341 = private unnamed_addr constant [54 x i8] c"pub fn set_{{FIELD}}(&mut self, x: &{{FIELD_TYPE}}) {\00", align 1
@.str.342 = private unnamed_addr constant [84 x i8] c"  self.0[{{FIELD_OFFSET}}..{{FIELD_OFFSET}} + {{FIELD_SIZE}}].copy_from_slice(&x.0)\00", align 1
@.str.343 = private unnamed_addr constant [16 x i8] c"ARRAY_ITEM_SIZE\00", align 1
@.str.344 = private unnamed_addr constant [58 x i8] c"pub fn set_{{FIELD}}(&mut self, items: &{{FIELD_TYPE}}) {\00", align 1
@.str.345 = private unnamed_addr constant [88 x i8] c"  unsafe { ::flatbuffers::emplace_scalar_array(&mut self.0, {{FIELD_OFFSET}}, items) };\00", align 1
@.str.346 = private unnamed_addr constant [11 x i8] c"  unsafe {\00", align 1
@.str.347 = private unnamed_addr constant [23 x i8] c"    ::core::ptr::copy(\00", align 1
@.str.348 = private unnamed_addr constant [31 x i8] c"      x.as_ptr() as *const u8,\00", align 1
@.str.349 = private unnamed_addr constant [49 x i8] c"      self.0.as_mut_ptr().add({{FIELD_OFFSET}}),\00", align 1
@.str.350 = private unnamed_addr constant [22 x i8] c"      {{FIELD_SIZE}},\00", align 1
@.str.351 = private unnamed_addr constant [53 x i8] c"pub fn set_{{FIELD}}(&mut self, x: {{FIELD_TYPE}}) {\00", align 1
@.str.352 = private unnamed_addr constant [63 x i8] c"  let x_le = ::flatbuffers::EndianScalar::to_little_endian(x);\00", align 1
@.str.353 = private unnamed_addr constant [38 x i8] c"      &x_le as *const _ as *const u8,\00", align 1
@.str.354 = private unnamed_addr constant [47 x i8] c"      self.0[{{FIELD_OFFSET}}..].as_mut_ptr(),\00", align 1
@.str.356 = private unnamed_addr constant [10 x i8] c"#[inline]\00", align 1
@.str.357 = private unnamed_addr constant [65 x i8] c"pub fn key_compare_less_than(&self, o: &{{STRUCT_TY}}) -> bool {\00", align 1
@.str.358 = private unnamed_addr constant [35 x i8] c"  self.{{FIELD}}() < o.{{FIELD}}()\00", align 1
@.str.359 = private unnamed_addr constant [83 x i8] c"pub fn key_compare_with_value(&self, val: {{KEY_TYPE}}) -> ::core::cmp::Ordering {\00", align 1
@.str.360 = private unnamed_addr constant [30 x i8] c"  let key = self.{{FIELD}}();\00", align 1
@.str.361 = private unnamed_addr constant [22 x i8] c"  key.cmp({{REF}}val)\00", align 1
@.str.362 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.363 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.364 = private unnamed_addr constant [22 x i8] c"::flatbuffers::Table<\00", align 1
@.str.365 = private unnamed_addr constant [5 x i8] c" str\00", align 1
@.str.366 = private unnamed_addr constant [23 x i8] c"::flatbuffers::Vector<\00", align 1
@.str.367 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.368 = private unnamed_addr constant [34 x i8] c", ::flatbuffers::ForwardsUOffset<\00", align 1
@.str.369 = private unnamed_addr constant [4 x i8] c">>>\00", align 1
@.str.370 = private unnamed_addr constant [35 x i8] c", ::flatbuffers::ForwardsUOffset<&\00", align 1
@.str.371 = private unnamed_addr constant [7 x i8] c" str>>\00", align 1
@.str.372 = private unnamed_addr constant [31 x i8] c"ARRAYS_NOT_SUPPORTED_IN_TABLES\00", align 1
@_ZTIZN11flatbuffers4rust13RustGenerator9GenStructERKNS_9StructDefEEUlRKNS_8FieldDefEE3_ = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN11flatbuffers4rust13RustGenerator9GenStructERKNS_9StructDefEEUlRKNS_8FieldDefEE3_ }, comdat, align 8
@_ZTSZN11flatbuffers4rust13RustGenerator9GenStructERKNS_9StructDefEEUlRKNS_8FieldDefEE3_ = linkonce_odr dso_local constant [84 x i8] c"ZN11flatbuffers4rust13RustGenerator9GenStructERKNS_9StructDefEEUlRKNS_8FieldDefEE3_\00", comdat, align 1
@.str.373 = private unnamed_addr constant [111 x i8] c"    {{FIELD}}: { let {{FIELD}} = self.{{FIELD}}(); ::flatbuffers::array_init(|i| {{FIELD}}.get(i).unpack()) },\00", align 1
@.str.374 = private unnamed_addr constant [40 x i8] c"    {{FIELD}}: self.{{FIELD}}().into(),\00", align 1
@.str.375 = private unnamed_addr constant [10 x i8] c".unpack()\00", align 1
@.str.376 = private unnamed_addr constant [32 x i8] c"    {{FIELD}}: self.{{FIELD}}()\00", align 1
@_ZTIZN11flatbuffers4rust13RustGenerator9GenStructERKNS_9StructDefEEUlRKNS_8FieldDefEE4_ = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN11flatbuffers4rust13RustGenerator9GenStructERKNS_9StructDefEEUlRKNS_8FieldDefEE4_ }, comdat, align 8
@_ZTSZN11flatbuffers4rust13RustGenerator9GenStructERKNS_9StructDefEEUlRKNS_8FieldDefEE4_ = linkonce_odr dso_local constant [84 x i8] c"ZN11flatbuffers4rust13RustGenerator9GenStructERKNS_9StructDefEEUlRKNS_8FieldDefEE4_\00", comdat, align 1
@.str.377 = private unnamed_addr constant [30 x i8] c"pub {{FIELD}}: {{FIELD_OTY}},\00", align 1
@_ZTIZN11flatbuffers4rust13RustGenerator9GenStructERKNS_9StructDefEEUlRKNS_8FieldDefEE5_ = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN11flatbuffers4rust13RustGenerator9GenStructERKNS_9StructDefEEUlRKNS_8FieldDefEE5_ }, comdat, align 8
@_ZTSZN11flatbuffers4rust13RustGenerator9GenStructERKNS_9StructDefEEUlRKNS_8FieldDefEE5_ = linkonce_odr dso_local constant [84 x i8] c"ZN11flatbuffers4rust13RustGenerator9GenStructERKNS_9StructDefEEUlRKNS_8FieldDefEE5_\00", comdat, align 1
@.str.378 = private unnamed_addr constant [28 x i8] c"    &self.{{FIELD}}.pack(),\00", align 1
@.str.379 = private unnamed_addr constant [62 x i8] c"    &::flatbuffers::array_init(|i| self.{{FIELD}}[i].pack()),\00", align 1
@.str.380 = private unnamed_addr constant [21 x i8] c"    &self.{{FIELD}},\00", align 1
@.str.381 = private unnamed_addr constant [20 x i8] c"    self.{{FIELD}},\00", align 1
@_ZTIZN11flatbuffers4rust13RustGenerator9GenStructERKNS_9StructDefEEUlRKNS_8FieldDefEE6_ = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN11flatbuffers4rust13RustGenerator9GenStructERKNS_9StructDefEEUlRKNS_8FieldDefEE6_ }, comdat, align 8
@_ZTSZN11flatbuffers4rust13RustGenerator9GenStructERKNS_9StructDefEEUlRKNS_8FieldDefEE6_ = linkonce_odr dso_local constant [84 x i8] c"ZN11flatbuffers4rust13RustGenerator9GenStructERKNS_9StructDefEEUlRKNS_8FieldDefEE6_\00", comdat, align 1
@.str.382 = private unnamed_addr constant [10 x i8] c"STRUCT_FN\00", align 1
@.str.383 = private unnamed_addr constant [44 x i8] c"{{ACCESS_TYPE}} enum {{STRUCT_TY}}Offset {}\00", align 1
@.str.384 = private unnamed_addr constant [34 x i8] c"#[derive(Copy, Clone, PartialEq)]\00", align 1
@.str.385 = private unnamed_addr constant [43 x i8] c"{{ACCESS_TYPE}} struct {{STRUCT_TY}}<'a> {\00", align 1
@.str.386 = private unnamed_addr constant [38 x i8] c"  pub _tab: ::flatbuffers::Table<'a>,\00", align 1
@.str.387 = private unnamed_addr constant [59 x i8] c"impl<'a> ::flatbuffers::Follow<'a> for {{STRUCT_TY}}<'a> {\00", align 1
@.str.388 = private unnamed_addr constant [34 x i8] c"  type Inner = {{STRUCT_TY}}<'a>;\00", align 1
@.str.389 = private unnamed_addr constant [66 x i8] c"    Self { _tab: unsafe { ::flatbuffers::Table::new(buf, loc) } }\00", align 1
@.str.390 = private unnamed_addr constant [29 x i8] c"impl<'a> {{STRUCT_TY}}<'a> {\00", align 1
@.str.391 = private unnamed_addr constant [75 x i8] c"  pub unsafe fn init_from_table(table: ::flatbuffers::Table<'a>) -> Self {\00", align 1
@.str.392 = private unnamed_addr constant [34 x i8] c"    {{STRUCT_TY}} { _tab: table }\00", align 1
@.str.395 = private unnamed_addr constant [8 x i8] c"<'args>\00", align 1
@.str.396 = private unnamed_addr constant [23 x i8] c"  #[allow(unused_mut)]\00", align 1
@.str.397 = private unnamed_addr constant [97 x i8] c"  pub fn create<'bldr: 'args, 'args: 'mut_bldr, 'mut_bldr, A: ::flatbuffers::Allocator + 'bldr>(\00", align 1
@.str.398 = private unnamed_addr constant [69 x i8] c"    _fbb: &'mut_bldr mut ::flatbuffers::FlatBufferBuilder<'bldr, A>,\00", align 1
@.str.399 = private unnamed_addr constant [59 x i8] c"    {{MAYBE_US}}args: &'args {{STRUCT_TY}}Args{{MAYBE_LT}}\00", align 1
@.str.400 = private unnamed_addr constant [56 x i8] c"  ) -> ::flatbuffers::WIPOffset<{{STRUCT_TY}}<'bldr>> {\00", align 1
@.str.401 = private unnamed_addr constant [55 x i8] c"    let mut builder = {{STRUCT_TY}}Builder::new(_fbb);\00", align 1
@.str.402 = private unnamed_addr constant [21 x i8] c"    builder.finish()\00", align 1
@.str.403 = private unnamed_addr constant [55 x i8] c"impl ::flatbuffers::Verifiable for {{STRUCT_TY}}<'_> {\00", align 1
@.str.404 = private unnamed_addr constant [25 x i8] c"    v.visit_table(pos)?\\\00", align 1
@.str.405 = private unnamed_addr constant [17 x i8] c"\0A     .finish();\00", align 1
@.str.406 = private unnamed_addr constant [11 x i8] c"    Ok(())\00", align 1
@.str.407 = private unnamed_addr constant [55 x i8] c"{{ACCESS_TYPE}} struct {{STRUCT_TY}}Args{{MAYBE_LT}} {\00", align 1
@.str.408 = private unnamed_addr constant [53 x i8] c"impl<'a> Default for {{STRUCT_TY}}Args{{MAYBE_LT}} {\00", align 1
@.str.409 = private unnamed_addr constant [24 x i8] c"    {{STRUCT_TY}}Args {\00", align 1
@.str.410 = private unnamed_addr constant [39 x i8] c"impl Serialize for {{STRUCT_TY}}<'_> {\00", align 1
@.str.411 = private unnamed_addr constant [92 x i8] c"{{ACCESS_TYPE}} struct {{STRUCT_TY}}Builder<'a: 'b, 'b, A: ::flatbuffers::Allocator + 'a> {\00", align 1
@.str.412 = private unnamed_addr constant [57 x i8] c"  fbb_: &'b mut ::flatbuffers::FlatBufferBuilder<'a, A>,\00", align 1
@.str.413 = private unnamed_addr constant [77 x i8] c"  start_: ::flatbuffers::WIPOffset<::flatbuffers::TableUnfinishedWIPOffset>,\00", align 1
@.str.414 = private unnamed_addr constant [85 x i8] c"impl<'a: 'b, 'b, A: ::flatbuffers::Allocator + 'a> {{STRUCT_TY}}Builder<'a, 'b, A> {\00", align 1
@.str.415 = private unnamed_addr constant [105 x i8] c"  pub fn new(_fbb: &'b mut ::flatbuffers::FlatBufferBuilder<'a, A>) -> {{STRUCT_TY}}Builder<'a, 'b, A> {\00", align 1
@.str.416 = private unnamed_addr constant [36 x i8] c"    let start = _fbb.start_table();\00", align 1
@.str.417 = private unnamed_addr constant [27 x i8] c"    {{STRUCT_TY}}Builder {\00", align 1
@.str.418 = private unnamed_addr constant [18 x i8] c"      fbb_: _fbb,\00", align 1
@.str.419 = private unnamed_addr constant [21 x i8] c"      start_: start,\00", align 1
@.str.420 = private unnamed_addr constant [71 x i8] c"  pub fn finish(self) -> ::flatbuffers::WIPOffset<{{STRUCT_TY}}<'a>> {\00", align 1
@.str.421 = private unnamed_addr constant [46 x i8] c"    let o = self.fbb_.end_table(self.start_);\00", align 1
@.str.422 = private unnamed_addr constant [45 x i8] c"    ::flatbuffers::WIPOffset::new(o.value())\00", align 1
@.str.423 = private unnamed_addr constant [48 x i8] c"impl ::core::fmt::Debug for {{STRUCT_TY}}<'_> {\00", align 1
@.str.424 = private unnamed_addr constant [77 x i8] c"  fn fmt(&self, f: &mut ::core::fmt::Formatter<'_>) -> ::core::fmt::Result {\00", align 1
@.str.425 = private unnamed_addr constant [50 x i8] c"    let mut ds = f.debug_struct(\22{{STRUCT_TY}}\22);\00", align 1
@.str.426 = private unnamed_addr constant [18 x i8] c"      ds.finish()\00", align 1
@.str.427 = private unnamed_addr constant [12 x i8] c"OFFSET_NAME\00", align 1
@.str.428 = private unnamed_addr constant [13 x i8] c"OFFSET_VALUE\00", align 1
@.str.429 = private unnamed_addr constant [13 x i8] c"BLDR_DEF_VAL\00", align 1
@.str.430 = private unnamed_addr constant [13 x i8] c"DISCRIMINANT\00", align 1
@.str.431 = private unnamed_addr constant [4 x i8] c"VT_\00", align 1
@.str.433 = private unnamed_addr constant [6 x i8] c"f32::\00", align 1
@.str.434 = private unnamed_addr constant [6 x i8] c"f64::\00", align 1
@.str.435 = private unnamed_addr constant [4 x i8] c"NAN\00", align 1
@.str.436 = private unnamed_addr constant [9 x i8] c"INFINITY\00", align 1
@.str.437 = private unnamed_addr constant [13 x i8] c"NEG_INFINITY\00", align 1
@.str.439 = private unnamed_addr constant [19 x i8] c"Default::default()\00", align 1
@.str.440 = private unnamed_addr constant [7 x i8] c"::NONE\00", align 1
@.str.441 = private unnamed_addr constant [3 x i8] c"\22\22\00", align 1
@.str.442 = private unnamed_addr constant [36 x i8] c"alloc::string::ToString::to_string(\00", align 1
@.str.443 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.448 = private unnamed_addr constant [5 x i8] c"+inf\00", align 1
@.str.449 = private unnamed_addr constant [9 x i8] c"infinity\00", align 1
@.str.450 = private unnamed_addr constant [10 x i8] c"+infinity\00", align 1
@.str.453 = private unnamed_addr constant [6 x i8] c"_type\00", align 1
@.str.454 = private unnamed_addr constant [71 x i8] c"pub const {{OFFSET_NAME}}: ::flatbuffers::VOffsetT = {{OFFSET_VALUE}};\00", align 1
@_ZTIZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEEUlRKNS_8FieldDefEE_ = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEEUlRKNS_8FieldDefEE_ }, comdat, align 8
@_ZTSZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEEUlRKNS_8FieldDefEE_ = linkonce_odr dso_local constant [82 x i8] c"ZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEEUlRKNS_8FieldDefEE_\00", comdat, align 1
@.str.455 = private unnamed_addr constant [64 x i8] c"  if let Some(x) = args.{{FIELD}} { builder.add_{{FIELD}}(x); }\00", align 1
@.str.456 = private unnamed_addr constant [41 x i8] c"  builder.add_{{FIELD}}(args.{{FIELD}});\00", align 1
@_ZTIZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEEUlRKNS_8FieldDefEE0_ = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEEUlRKNS_8FieldDefEE0_ }, comdat, align 8
@_ZTSZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEEUlRKNS_8FieldDefEE0_ = linkonce_odr dso_local constant [83 x i8] c"ZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEEUlRKNS_8FieldDefEE0_\00", comdat, align 1
@.str.457 = private unnamed_addr constant [36 x i8] c"  let {{FIELD}} = self.{{FIELD}}();\00", align 1
@.str.458 = private unnamed_addr constant [17 x i8] c"NATIVE_ENUM_NAME\00", align 1
@.str.459 = private unnamed_addr constant [18 x i8] c"UNION_TYPE_METHOD\00", align 1
@.str.460 = private unnamed_addr constant [55 x i8] c"  let {{FIELD}} = match self.{{UNION_TYPE_METHOD}}() {\00", align 1
@.str.461 = private unnamed_addr constant [53 x i8] c"    {{ENUM_TY}}::NONE => {{NATIVE_ENUM_NAME}}::NONE,\00", align 1
@.str.462 = private unnamed_addr constant [37 x i8] c"    _ => {{NATIVE_ENUM_NAME}}::NONE,\00", align 1
@.str.465 = private unnamed_addr constant [38 x i8] c"alloc::string::ToString::to_string(x)\00", align 1
@.str.466 = private unnamed_addr constant [11 x i8] c"x.unpack()\00", align 1
@.str.467 = private unnamed_addr constant [35 x i8] c"alloc::boxed::Box::new(x.unpack())\00", align 1
@.str.468 = private unnamed_addr constant [24 x i8] c"x.into_iter().collect()\00", align 1
@.str.469 = private unnamed_addr constant [66 x i8] c"x.iter().map(|s| alloc::string::ToString::to_string(s)).collect()\00", align 1
@.str.470 = private unnamed_addr constant [39 x i8] c"x.iter().map(|t| t.unpack()).collect()\00", align 1
@.str.471 = private unnamed_addr constant [45 x i8] c"  let {{FIELD}} = self.{{FIELD}}().map(|x| {\00", align 1
@.str.472 = private unnamed_addr constant [13 x i8] c"    {{EXPR}}\00", align 1
@.str.473 = private unnamed_addr constant [6 x i8] c"  });\00", align 1
@.str.474 = private unnamed_addr constant [20 x i8] c"  let {{FIELD}} = {\00", align 1
@.str.475 = private unnamed_addr constant [30 x i8] c"    let x = self.{{FIELD}}();\00", align 1
@.str.476 = private unnamed_addr constant [100 x i8] c"  {{ENUM_TY}}::{{VARIANT_NAME}} => {{NATIVE_ENUM_NAME}}::{{NATIVE_VARIANT}}(alloc::boxed::Box::new(\00", align 1
@.str.477 = private unnamed_addr constant [43 x i8] c"    self.{{FIELD}}_as_{{U_ELEMENT_NAME}}()\00", align 1
@.str.478 = private unnamed_addr constant [82 x i8] c"        .expect(\22Invalid union table, expected `{{ENUM_TY}}::{{VARIANT_NAME}}`.\22)\00", align 1
@.str.479 = private unnamed_addr constant [18 x i8] c"        .unpack()\00", align 1
@.str.480 = private unnamed_addr constant [6 x i8] c"  )),\00", align 1
@_ZTIZZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEENKUlRKNS_8FieldDefEE1_clES7_EUlvE_ = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEENKUlRKNS_8FieldDefEE1_clES7_EUlvE_ }, comdat, align 8
@_ZTSZZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEENKUlRKNS_8FieldDefEE1_clES7_EUlvE_ = linkonce_odr dso_local constant [98 x i8] c"ZZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEENKUlRKNS_8FieldDefEE1_clES7_EUlvE_\00", comdat, align 1
@_ZTIZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEEUlRKNS_8FieldDefEE1_ = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEEUlRKNS_8FieldDefEE1_ }, comdat, align 8
@_ZTSZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEEUlRKNS_8FieldDefEE1_ = linkonce_odr dso_local constant [83 x i8] c"ZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEEUlRKNS_8FieldDefEE1_\00", comdat, align 1
@.str.481 = private unnamed_addr constant [15 x i8] c"    {{FIELD}},\00", align 1
@_ZTIZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEEUlRKNS_8FieldDefEE2_ = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEEUlRKNS_8FieldDefEE2_ }, comdat, align 8
@_ZTSZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEEUlRKNS_8FieldDefEE2_ = linkonce_odr dso_local constant [83 x i8] c"ZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEEUlRKNS_8FieldDefEE2_\00", comdat, align 1
@.str.482 = private unnamed_addr constant [12 x i8] c"RETURN_TYPE\00", align 1
@.str.484 = private unnamed_addr constant [45 x i8] c"pub fn {{FIELD}}(&self) -> {{RETURN_TYPE}} {\00", align 1
@.str.485 = private unnamed_addr constant [46 x i8] c"  // Created from valid Table for this object\00", align 1
@.str.486 = private unnamed_addr constant [47 x i8] c"  // which contains a valid value in this slot\00", align 1
@.str.487 = private unnamed_addr constant [18 x i8] c"nested_flatbuffer\00", align 1
@.str.488 = private unnamed_addr constant [7 x i8] c"NESTED\00", align 1
@.str.489 = private unnamed_addr constant [50 x i8] c"pub fn {{FIELD}}_nested_flatbuffer(&'a self) -> \\\00", align 1
@.str.490 = private unnamed_addr constant [17 x i8] c"{{NESTED}}<'a> {\00", align 1
@.str.491 = private unnamed_addr constant [31 x i8] c"  let data = self.{{FIELD}}();\00", align 1
@.str.492 = private unnamed_addr constant [52 x i8] c"  // Which contains a valid flatbuffer in this slot\00", align 1
@.str.493 = private unnamed_addr constant [87 x i8] c"  unsafe { <::flatbuffers::ForwardsUOffset<{{NESTED}}<'a>>>::follow(data.bytes(), 0) }\00", align 1
@.str.494 = private unnamed_addr constant [25 x i8] c"Option<{{NESTED}}<'a>> {\00", align 1
@.str.495 = private unnamed_addr constant [32 x i8] c"  self.{{FIELD}}().map(|data| {\00", align 1
@.str.496 = private unnamed_addr constant [31 x i8] c"    use ::flatbuffers::Follow;\00", align 1
@.str.497 = private unnamed_addr constant [15 x i8] c"    // Safety:\00", align 1
@.str.498 = private unnamed_addr constant [50 x i8] c"    // Created from a valid Table for this object\00", align 1
@.str.499 = private unnamed_addr constant [54 x i8] c"    // Which contains a valid flatbuffer in this slot\00", align 1
@.str.500 = private unnamed_addr constant [89 x i8] c"    unsafe { <::flatbuffers::ForwardsUOffset<{{NESTED}}<'a>>>::follow(data.bytes(), 0) }\00", align 1
@.str.501 = private unnamed_addr constant [6 x i8] c"Some(\00", align 1
@.str.502 = private unnamed_addr constant [10 x i8] c".unwrap()\00", align 1
@.str.503 = private unnamed_addr constant [26 x i8] c"unsafe { self._tab.get::<\00", align 1
@.str.504 = private unnamed_addr constant [18 x i8] c">({{STRUCT_TY}}::\00", align 1
@.str.506 = private unnamed_addr constant [32 x i8] c"::flatbuffers::ForwardsUOffset<\00", align 1
@.str.507 = private unnamed_addr constant [22 x i8] c"::flatbuffers::Array<\00", align 1
@_ZTIZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEEUlRKNS_8FieldDefEE3_ = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEEUlRKNS_8FieldDefEE3_ }, comdat, align 8
@_ZTSZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEEUlRKNS_8FieldDefEE3_ = linkonce_odr dso_local constant [83 x i8] c"ZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEEUlRKNS_8FieldDefEE3_\00", comdat, align 1
@.str.508 = private unnamed_addr constant [20 x i8] c"U_ELEMENT_ENUM_TYPE\00", align 1
@.str.509 = private unnamed_addr constant [25 x i8] c"#[allow(non_snake_case)]\00", align 1
@.str.510 = private unnamed_addr constant [88 x i8] c"pub fn {{FIELD}}_as_{{U_ELEMENT_NAME}}(&self) -> Option<{{U_ELEMENT_TABLE_TYPE}}<'a>> {\00", align 1
@.str.511 = private unnamed_addr constant [58 x i8] c"  if self.{{DISCRIMINANT}}() == {{U_ELEMENT_ENUM_TYPE}} {\00", align 1
@.str.512 = private unnamed_addr constant [30 x i8] c"    let u = self.{{FIELD}}();\00", align 1
@.str.513 = private unnamed_addr constant [49 x i8] c"    // Which contains a valid union in this slot\00", align 1
@.str.514 = private unnamed_addr constant [66 x i8] c"    Some(unsafe { {{U_ELEMENT_TABLE_TYPE}}::init_from_table(u) })\00", align 1
@.str.515 = private unnamed_addr constant [31 x i8] c"    self.{{FIELD}}().map(|t| {\00", align 1
@.str.516 = private unnamed_addr constant [16 x i8] c"     // Safety:\00", align 1
@.str.517 = private unnamed_addr constant [51 x i8] c"     // Created from a valid Table for this object\00", align 1
@.str.518 = private unnamed_addr constant [50 x i8] c"     // Which contains a valid union in this slot\00", align 1
@.str.519 = private unnamed_addr constant [61 x i8] c"     unsafe { {{U_ELEMENT_TABLE_TYPE}}::init_from_table(t) }\00", align 1
@.str.520 = private unnamed_addr constant [6 x i8] c"   })\00", align 1
@_ZTIZZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEENKUlRKNS_8FieldDefEE4_clES7_EUlRKNS_7EnumValEE_ = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEENKUlRKNS_8FieldDefEE4_clES7_EUlRKNS_7EnumValEE_ }, comdat, align 8
@_ZTSZZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEENKUlRKNS_8FieldDefEE4_clES7_EUlRKNS_7EnumValEE_ = linkonce_odr dso_local constant [111 x i8] c"ZZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEENKUlRKNS_8FieldDefEE4_clES7_EUlRKNS_7EnumValEE_\00", comdat, align 1
@_ZTIZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEEUlRKNS_8FieldDefEE4_ = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEEUlRKNS_8FieldDefEE4_ }, comdat, align 8
@_ZTSZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEEUlRKNS_8FieldDefEE4_ = linkonce_odr dso_local constant [83 x i8] c"ZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEEUlRKNS_8FieldDefEE4_\00", comdat, align 1
@.str.521 = private unnamed_addr constant [7 x i8] c"IS_REQ\00", align 1
@.str.524 = private unnamed_addr constant [79 x i8] c"\0A     .visit_field::<{{TY}}>(\22{{FIELD}}\22, Self::{{OFFSET_NAME}}, {{IS_REQ}})?\\\00", align 1
@.str.525 = private unnamed_addr constant [23 x i8] c"UNION_TYPE_OFFSET_NAME\00", align 1
@.str.526 = private unnamed_addr constant [163 x i8] c"\0A     .visit_union::<{{UNION_TYPE}}, _>(\22{{UNION_TYPE_METHOD}}\22, Self::{{UNION_TYPE_OFFSET_NAME}}, \22{{FIELD}}\22, Self::{{OFFSET_NAME}}, {{IS_REQ}}, |key, v, pos| {\00", align 1
@.str.527 = private unnamed_addr constant [18 x i8] c"      match key {\00", align 1
@.str.528 = private unnamed_addr constant [21 x i8] c"        _ => Ok(()),\00", align 1
@.str.529 = private unnamed_addr constant [8 x i8] c"      }\00", align 1
@.str.530 = private unnamed_addr constant [8 x i8] c"   })?\\\00", align 1
@.str.531 = private unnamed_addr constant [151 x i8] c"        {{U_ELEMENT_ENUM_TYPE}} => v.verify_union_variant::<::flatbuffers::ForwardsUOffset<{{U_ELEMENT_TABLE_TYPE}}>>(\22{{U_ELEMENT_ENUM_TYPE}}\22, pos),\00", align 1
@_ZTIZZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEENKUlRKNS_8FieldDefEE5_clES7_EUlRKNS_7EnumValEE_ = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEENKUlRKNS_8FieldDefEE5_clES7_EUlRKNS_7EnumValEE_ }, comdat, align 8
@_ZTSZZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEENKUlRKNS_8FieldDefEE5_clES7_EUlRKNS_7EnumValEE_ = linkonce_odr dso_local constant [111 x i8] c"ZZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEENKUlRKNS_8FieldDefEE5_clES7_EUlRKNS_7EnumValEE_\00", comdat, align 1
@_ZTIZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEEUlRKNS_8FieldDefEE5_ = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEEUlRKNS_8FieldDefEE5_ }, comdat, align 8
@_ZTSZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEEUlRKNS_8FieldDefEE5_ = linkonce_odr dso_local constant [83 x i8] c"ZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEEUlRKNS_8FieldDefEE5_\00", comdat, align 1
@.str.532 = private unnamed_addr constant [11 x i8] c"PARAM_TYPE\00", align 1
@.str.533 = private unnamed_addr constant [33 x i8] c"  pub {{FIELD}}: {{PARAM_TYPE}},\00", align 1
@.str.534 = private unnamed_addr constant [26 x i8] c"::flatbuffers::WIPOffset<\00", align 1
@.str.535 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.536 = private unnamed_addr constant [27 x i8] c"::flatbuffers::WIPOffset<&\00", align 1
@.str.537 = private unnamed_addr constant [6 x i8] c" str>\00", align 1
@.str.538 = private unnamed_addr constant [64 x i8] c"Option<::flatbuffers::WIPOffset<::flatbuffers::UnionWIPOffset>>\00", align 1
@.str.539 = private unnamed_addr constant [48 x i8] c"::flatbuffers::WIPOffset<::flatbuffers::Vector<\00", align 1
@_ZTIZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEEUlRKNS_8FieldDefEE6_ = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEEUlRKNS_8FieldDefEE6_ }, comdat, align 8
@_ZTSZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEEUlRKNS_8FieldDefEE6_ = linkonce_odr dso_local constant [83 x i8] c"ZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEEUlRKNS_8FieldDefEE6_\00", comdat, align 1
@.str.540 = private unnamed_addr constant [34 x i8] c"    {{FIELD}}: {{BLDR_DEF_VAL}},\\\00", align 1
@.str.541 = private unnamed_addr constant [19 x i8] c" // required field\00", align 1
@_ZTIZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEEUlRKNS_8FieldDefEE7_ = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEEUlRKNS_8FieldDefEE7_ }, comdat, align 8
@_ZTSZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEEUlRKNS_8FieldDefEE7_ = linkonce_odr dso_local constant [83 x i8] c"ZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEEUlRKNS_8FieldDefEE7_\00", comdat, align 1
@.str.542 = private unnamed_addr constant [41 x i8] c"    match self.{{UNION_TYPE_METHOD}}() {\00", align 1
@.str.543 = private unnamed_addr constant [31 x i8] c"      {{ENUM_TY}}::NONE => (),\00", align 1
@.str.544 = private unnamed_addr constant [29 x i8] c"      _ => unimplemented!(),\00", align 1
@.str.545 = private unnamed_addr constant [40 x i8] c"    if let Some(f) = self.{{FIELD}}() {\00", align 1
@.str.546 = private unnamed_addr constant [43 x i8] c"      s.serialize_field(\22{{FIELD}}\22, &f)?;\00", align 1
@.str.547 = private unnamed_addr constant [34 x i8] c"      s.skip_field(\22{{FIELD}}\22)?;\00", align 1
@.str.548 = private unnamed_addr constant [41 x i8] c"      {{ENUM_TY}}::{{VARIANT_NAME}} => {\00", align 1
@.str.549 = private unnamed_addr constant [55 x i8] c"        let f = self.{{FIELD}}_as_{{U_ELEMENT_NAME}}()\00", align 1
@.str.550 = private unnamed_addr constant [85 x i8] c"          .expect(\22Invalid union table, expected `{{ENUM_TY}}::{{VARIANT_NAME}}`.\22);\00", align 1
@.str.551 = private unnamed_addr constant [45 x i8] c"        s.serialize_field(\22{{FIELD}}\22, &f)?;\00", align 1
@_ZTIZZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEENKUlRKNS_8FieldDefEE8_clES7_EUlvE_ = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEENKUlRKNS_8FieldDefEE8_clES7_EUlvE_ }, comdat, align 8
@_ZTSZZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEENKUlRKNS_8FieldDefEE8_clES7_EUlvE_ = linkonce_odr dso_local constant [98 x i8] c"ZZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEENKUlRKNS_8FieldDefEE8_clES7_EUlvE_\00", comdat, align 1
@_ZTIZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEEUlRKNS_8FieldDefEE8_ = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEEUlRKNS_8FieldDefEE8_ }, comdat, align 8
@_ZTSZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEEUlRKNS_8FieldDefEE8_ = linkonce_odr dso_local constant [83 x i8] c"ZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEEUlRKNS_8FieldDefEE8_\00", comdat, align 1
@.str.552 = private unnamed_addr constant [4 x i8] c"'b \00", align 1
@.str.553 = private unnamed_addr constant [10 x i8] c"FUNC_BODY\00", align 1
@.str.554 = private unnamed_addr constant [61 x i8] c"pub fn add_{{FIELD}}(&mut self, {{FIELD}}: {{FIELD_TYPE}}) {\00", align 1
@.str.555 = private unnamed_addr constant [64 x i8] c"  {{FUNC_BODY}}({{FIELD_OFFSET}}, {{FIELD}}, {{BLDR_DEF_VAL}});\00", align 1
@.str.556 = private unnamed_addr constant [46 x i8] c"  {{FUNC_BODY}}({{FIELD_OFFSET}}, {{FIELD}});\00", align 1
@.str.557 = private unnamed_addr constant [5 x i8] c">>>>\00", align 1
@.str.558 = private unnamed_addr constant [8 x i8] c" str>>>\00", align 1
@.str.559 = private unnamed_addr constant [55 x i8] c", ::flatbuffers::ForwardsUOffset<::flatbuffers::Table<\00", align 1
@.str.560 = private unnamed_addr constant [56 x i8] c"::flatbuffers::WIPOffset<::flatbuffers::UnionWIPOffset>\00", align 1
@.str.561 = private unnamed_addr constant [30 x i8] c"self.fbb_.push_slot_always::<\00", align 1
@.str.562 = private unnamed_addr constant [23 x i8] c"self.fbb_.push_slot::<\00", align 1
@.str.563 = private unnamed_addr constant [31 x i8] c"self.fbb_.push_slot_always::<&\00", align 1
@.str.564 = private unnamed_addr constant [55 x i8] c"self.fbb_.push_slot_always::<::flatbuffers::WIPOffset<\00", align 1
@.str.565 = private unnamed_addr constant [58 x i8] c"self.fbb_.push_slot_always::<::flatbuffers::WIPOffset<_>>\00", align 1
@_ZTIZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEEUlRKNS_8FieldDefEE9_ = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEEUlRKNS_8FieldDefEE9_ }, comdat, align 8
@_ZTSZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEEUlRKNS_8FieldDefEE9_ = linkonce_odr dso_local constant [83 x i8] c"ZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEEUlRKNS_8FieldDefEE9_\00", comdat, align 1
@.str.566 = private unnamed_addr constant [69 x i8] c"  self.fbb_.required(o, {{STRUCT_TY}}::{{OFFSET_NAME}},\22{{FIELD}}\22);\00", align 1
@_ZTIZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEEUlRKNS_8FieldDefEE10_ = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEEUlRKNS_8FieldDefEE10_ }, comdat, align 8
@_ZTSZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEEUlRKNS_8FieldDefEE10_ = linkonce_odr dso_local constant [84 x i8] c"ZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEEUlRKNS_8FieldDefEE10_\00", comdat, align 1
@.str.567 = private unnamed_addr constant [10 x i8] c"UNION_ERR\00", align 1
@.str.568 = private unnamed_addr constant [63 x i8] c"&\22InvalidFlatbuffer: Union discriminant does not match value.\22\00", align 1
@.str.569 = private unnamed_addr constant [36 x i8] c"    match self.{{DISCRIMINANT}}() {\00", align 1
@.str.570 = private unnamed_addr constant [13 x i8] c"      _ => {\00", align 1
@.str.571 = private unnamed_addr constant [34 x i8] c"        let x: Option<()> = None;\00", align 1
@.str.572 = private unnamed_addr constant [34 x i8] c"        ds.field(\22{{FIELD}}\22, &x)\00", align 1
@.str.574 = private unnamed_addr constant [7 x i8] c"    };\00", align 1
@.str.575 = private unnamed_addr constant [46 x i8] c"    ds.field(\22{{FIELD}}\22, &self.{{FIELD}}());\00", align 1
@.str.576 = private unnamed_addr constant [35 x i8] c"      {{U_ELEMENT_ENUM_TYPE}} => {\00", align 1
@.str.577 = private unnamed_addr constant [66 x i8] c"        if let Some(x) = self.{{FIELD}}_as_{{U_ELEMENT_NAME}}() {\00", align 1
@.str.578 = private unnamed_addr constant [36 x i8] c"          ds.field(\22{{FIELD}}\22, &x)\00", align 1
@.str.579 = private unnamed_addr constant [17 x i8] c"        } else {\00", align 1
@.str.580 = private unnamed_addr constant [47 x i8] c"          ds.field(\22{{FIELD}}\22, {{UNION_ERR}})\00", align 1
@_ZTIZZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEENKUlRKNS_8FieldDefEE11_clES7_EUlRKNS_7EnumValEE_ = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEENKUlRKNS_8FieldDefEE11_clES7_EUlRKNS_7EnumValEE_ }, comdat, align 8
@_ZTSZZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEENKUlRKNS_8FieldDefEE11_clES7_EUlRKNS_7EnumValEE_ = linkonce_odr dso_local constant [112 x i8] c"ZZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEENKUlRKNS_8FieldDefEE11_clES7_EUlRKNS_7EnumValEE_\00", comdat, align 1
@_ZTIZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEEUlRKNS_8FieldDefEE11_ = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEEUlRKNS_8FieldDefEE11_ }, comdat, align 8
@_ZTSZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEEUlRKNS_8FieldDefEE11_ = linkonce_odr dso_local constant [84 x i8] c"ZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEEUlRKNS_8FieldDefEE11_\00", comdat, align 1
@.str.581 = private unnamed_addr constant [34 x i8] c"impl Default for {{STRUCT_OTY}} {\00", align 1
@.str.582 = private unnamed_addr constant [11 x i8] c"    Self {\00", align 1
@.str.583 = private unnamed_addr constant [53 x i8] c"  pub fn pack<'b, A: ::flatbuffers::Allocator + 'b>(\00", align 1
@.str.584 = private unnamed_addr constant [11 x i8] c"    &self,\00", align 1
@.str.585 = private unnamed_addr constant [55 x i8] c"    _fbb: &mut ::flatbuffers::FlatBufferBuilder<'b, A>\00", align 1
@.str.586 = private unnamed_addr constant [53 x i8] c"  ) -> ::flatbuffers::WIPOffset<{{STRUCT_TY}}<'b>> {\00", align 1
@.str.587 = private unnamed_addr constant [52 x i8] c"    {{STRUCT_TY}}::create(_fbb, &{{STRUCT_TY}}Args{\00", align 1
@.str.588 = private unnamed_addr constant [7 x i8] c"    })\00", align 1
@_ZTIZN11flatbuffers4rust13RustGenerator14GenTableObjectERKNS_9StructDefEEUlRKNS_8FieldDefEE_ = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN11flatbuffers4rust13RustGenerator14GenTableObjectERKNS_9StructDefEEUlRKNS_8FieldDefEE_ }, comdat, align 8
@_ZTSZN11flatbuffers4rust13RustGenerator14GenTableObjectERKNS_9StructDefEEUlRKNS_8FieldDefEE_ = linkonce_odr dso_local constant [89 x i8] c"ZN11flatbuffers4rust13RustGenerator14GenTableObjectERKNS_9StructDefEEUlRKNS_8FieldDefEE_\00", comdat, align 1
@.str.589 = private unnamed_addr constant [16 x i8] c"    {{FIELD}}: \00", align 1
@_ZTIZN11flatbuffers4rust13RustGenerator14GenTableObjectERKNS_9StructDefEEUlRKNS_8FieldDefEE0_ = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN11flatbuffers4rust13RustGenerator14GenTableObjectERKNS_9StructDefEEUlRKNS_8FieldDefEE0_ }, comdat, align 8
@_ZTSZN11flatbuffers4rust13RustGenerator14GenTableObjectERKNS_9StructDefEEUlRKNS_8FieldDefEE0_ = linkonce_odr dso_local constant [90 x i8] c"ZN11flatbuffers4rust13RustGenerator14GenTableObjectERKNS_9StructDefEEUlRKNS_8FieldDefEE0_\00", comdat, align 1
@.str.590 = private unnamed_addr constant [34 x i8] c"  let {{FIELD}} = self.{{FIELD}};\00", align 1
@.str.591 = private unnamed_addr constant [12 x i8] c"ENUM_METHOD\00", align 1
@.str.592 = private unnamed_addr constant [64 x i8] c"  let {{DISCRIMINANT}} = self.{{FIELD}}.{{ENUM_METHOD}}_type();\00", align 1
@.str.593 = private unnamed_addr constant [45 x i8] c"  let {{FIELD}} = self.{{FIELD}}.pack(_fbb);\00", align 1
@.str.594 = private unnamed_addr constant [22 x i8] c"_fbb.create_string(x)\00", align 1
@.str.595 = private unnamed_addr constant [51 x i8] c"  let {{FIELD}}_tmp = Some(self.{{FIELD}}.pack());\00", align 1
@.str.596 = private unnamed_addr constant [65 x i8] c"  let {{FIELD}}_tmp = self.{{FIELD}}.as_ref().map(|x| x.pack());\00", align 1
@.str.597 = private unnamed_addr constant [42 x i8] c"  let {{FIELD}} = {{FIELD}}_tmp.as_ref();\00", align 1
@.str.598 = private unnamed_addr constant [13 x i8] c"x.pack(_fbb)\00", align 1
@.str.599 = private unnamed_addr constant [22 x i8] c"_fbb.create_vector(x)\00", align 1
@.str.600 = private unnamed_addr constant [88 x i8] c"let w: alloc::vec::Vec<_> = x.iter().map(|t| t.pack()).collect();_fbb.create_vector(&w)\00", align 1
@.str.601 = private unnamed_addr constant [101 x i8] c"let w: alloc::vec::Vec<_> = x.iter().map(|s| _fbb.create_string(s)).collect();_fbb.create_vector(&w)\00", align 1
@.str.602 = private unnamed_addr constant [92 x i8] c"let w: alloc::vec::Vec<_> = x.iter().map(|t| t.pack(_fbb)).collect();_fbb.create_vector(&w)\00", align 1
@.str.603 = private unnamed_addr constant [51 x i8] c"  let {{FIELD}} = self.{{FIELD}}.as_ref().map(|x|{\00", align 1
@.str.604 = private unnamed_addr constant [25 x i8] c"  let {{FIELD}} = Some({\00", align 1
@.str.605 = private unnamed_addr constant [29 x i8] c"    let x = &self.{{FIELD}};\00", align 1
@_ZTIZN11flatbuffers4rust13RustGenerator14GenTableObjectERKNS_9StructDefEEUlRKNS_8FieldDefEE1_ = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN11flatbuffers4rust13RustGenerator14GenTableObjectERKNS_9StructDefEEUlRKNS_8FieldDefEE1_ }, comdat, align 8
@_ZTSZN11flatbuffers4rust13RustGenerator14GenTableObjectERKNS_9StructDefEEUlRKNS_8FieldDefEE1_ = linkonce_odr dso_local constant [90 x i8] c"ZN11flatbuffers4rust13RustGenerator14GenTableObjectERKNS_9StructDefEEUlRKNS_8FieldDefEE1_\00", comdat, align 1
@_ZTIZN11flatbuffers4rust13RustGenerator14GenTableObjectERKNS_9StructDefEEUlRKNS_8FieldDefEE2_ = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN11flatbuffers4rust13RustGenerator14GenTableObjectERKNS_9StructDefEEUlRKNS_8FieldDefEE2_ }, comdat, align 8
@_ZTSZN11flatbuffers4rust13RustGenerator14GenTableObjectERKNS_9StructDefEEUlRKNS_8FieldDefEE2_ = linkonce_odr dso_local constant [90 x i8] c"ZN11flatbuffers4rust13RustGenerator14GenTableObjectERKNS_9StructDefEEUlRKNS_8FieldDefEE2_\00", comdat, align 1
@.str.606 = private unnamed_addr constant [13 x i8] c"STRUCT_CONST\00", align 1
@.str.607 = private unnamed_addr constant [63 x i8] c"/// Verifies that a buffer of bytes contains a `{{STRUCT_TY}}`\00", align 1
@.str.608 = private unnamed_addr constant [20 x i8] c"/// and returns it.\00", align 1
@.str.609 = private unnamed_addr constant [61 x i8] c"/// Note that verification is still experimental and may not\00", align 1
@.str.610 = private unnamed_addr constant [59 x i8] c"/// catch every error, or be maximally performant. For the\00", align 1
@.str.611 = private unnamed_addr constant [38 x i8] c"/// previous, unchecked, behavior use\00", align 1
@.str.612 = private unnamed_addr constant [39 x i8] c"/// `root_as_{{STRUCT_FN}}_unchecked`.\00", align 1
@.str.613 = private unnamed_addr constant [106 x i8] c"pub fn root_as_{{STRUCT_FN}}(buf: &[u8]) -> Result<{{STRUCT_TY}}<'_>, ::flatbuffers::InvalidFlatbuffer> {\00", align 1
@.str.614 = private unnamed_addr constant [44 x i8] c"  ::flatbuffers::root::<{{STRUCT_TY}}>(buf)\00", align 1
@.str.615 = private unnamed_addr constant [61 x i8] c"/// Verifies that a buffer of bytes contains a size prefixed\00", align 1
end_hunk_0
begin_hunk_1_@_ZN11flatbuffers4rust13RustGenerator15GetDefaultValueB5cxx11ERKNS_8FieldDefENS1_14DefaultContextE:bb.a
  %i.fu = load ptr, ptr %10, align 8, !tbaa !32   ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.fw = icmp eq ptr %i.fu, %i.fv
  br i1 %i.fw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114: ; preds = %bb.am
  %i.fx = load i64, ptr %i.fv, align 8, !tbaa !27
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fy) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114, %bb.al
  %.pn53 = phi { ptr, i32 } [ %i.fs, %bb.al ], [ %i.ft, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114 ], [ %i.ft, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.at

bb.an:                                            ; preds = %.critedge65
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull @.str.297, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.as unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.ap:                                            ; preds = %.critedge65
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.305, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.ga = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %bb.at

bb.as:                                            ; preds = %bb.an, %bb.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110
  %i.gb = load ptr, ptr %7, align 8, !tbaa !32    ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.gd = icmp eq ptr %i.gb, %i.gc
  br i1 %i.gd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117: ; preds = %bb.as
  %i.ge = load i64, ptr %i.gc, align 8, !tbaa !27
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.gf) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.au

bb.at:                                            ; preds = %bb.ar, %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116
  %.pn53.pn = phi { ptr, i32 } [ %.pn53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116 ], [ %i.fz, %bb.ao ], [ %i.ga, %bb.ar ] ; 2 uses
  %i.gg = load ptr, ptr %7, align 8, !tbaa !32    ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.gi = icmp eq ptr %i.gg, %i.gh
  br i1 %i.gi, label %.critedge67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120: ; preds = %bb.at
  %i.gj = load i64, ptr %i.gh, align 8, !tbaa !27
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gk) #26
  br label %.critedge67

.critedge67:                                      ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i112, %bb.ak
  %.pn53.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i112 ], [ %i.fr, %bb.ak ], [ %.pn53.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120 ], [ %.pn53.pn, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.av

.noexc.i124:                                      ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.gl, ptr %0, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 18, ptr %i.a, align 8, !tbaa !178
  %i.gm = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.gm, ptr %0, align 8, !tbaa !32
  %i.gn = load i64, ptr %i.a, align 8, !tbaa !178 ; 3 uses
  store i64 %i.gn, ptr %i.gl, align 8, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.gm, ptr noundef nonnull align 1 dereferenceable(18) @.str.439, i64 18, i1 false)
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.gn, ptr %i.go, align 8, !tbaa !152
  %i.gp = load ptr, ptr %0, align 8, !tbaa !32
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.gn
  store i8 0, ptr %i.gq, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.au

default.unreachable170:                           ; preds = %bb.e
  unreachable

bb.au:                                            ; preds = %.noexc.i87, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, %.noexc.i124, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZN11flatbuffers7IsUnionERKNS_4TypeE.exit.thread, %._crit_edge.i.i
  ret void

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, %.critedge67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn61 = phi { ptr, i32 } [ %i.es, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104 ], [ %i.dq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95 ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn53.pn.pn, %.critedge67 ]
  resume { ptr, i32 } %.pn61
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11flatbuffers8IdlNamer25LegacyRustUnionTypeMethodB5cxx11ERKNS_8FieldDefE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef nonnull align 8 dereferenceable(312) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !216
  call void @_ZN11flatbuffers11ConvertCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_4CaseES8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %i.b, i32 noundef 2)
  call void @llvm.experimental.noalias.scope.decl(metadata !1162)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !152, !noalias !1162
  %i.e = add i64 %i.d, -4611686018427387899
  %i.f = icmp ult i64 %i.e, 5
  br i1 %i.f, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.83) #28
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.a
  %i.g = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.453, i64 noundef 5)
          to label %.noexc3 unwind label %bb.e    ; 6 uses

.noexc3:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !26, !alias.scope !1162
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !32   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 5 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %.noexc3
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !152  ; 3 uses
  %i.n = icmp ult i64 %i.m, 16
  call void @llvm.assume(i1 %i.n)
  %i.o = add nuw nsw i64 %i.m, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.o, i1 false)
  br label %bb.d

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc3
  store ptr %i.i, ptr %0, align 8, !tbaa !32, !alias.scope !1162
  %i.p = load i64, ptr %i.j, align 8, !tbaa !27
  store i64 %i.p, ptr %i.h, align 8, !tbaa !27, !alias.scope !1162
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !152
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.c
  %i.q = phi i64 [ %i.m, %bb.c ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %i.s, align 8, !tbaa !152, !alias.scope !1162
  store ptr %i.j, ptr %i.g, align 8, !tbaa !32
  store i64 0, ptr %i.r, align 8, !tbaa !152
  store i8 0, ptr %i.j, align 8, !tbaa !27
  %i.t = load ptr, ptr %3, align 8, !tbaa !32     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.d
  %i.w = load i64, ptr %i.u, align 8, !tbaa !27
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %3, align 8, !tbaa !32     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.e
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !27
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %i.y
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11flatbuffers34StringIsFlatbufferPositiveInfinityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #17 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !152  ; 4 uses
  switch i64 %i.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9 [
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5
    i64 8, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit7
    i64 9, label %bb.b
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !32     ; 2 uses
  %i.d = load i16, ptr %i.c, align 1
  %i.e = xor i16 %i.d, 28265
  %i.f = getelementptr i8, ptr %i.c, i64 2
  %i.g = load i8, ptr %i.f, align 1
  %i.h = zext i8 %i.g to i16
  %i.i = xor i16 %i.h, 102
  %i.j = or i16 %i.e, %i.i
  %i.k = icmp ne i16 %i.j, 0
  %i.l = zext i1 %i.k to i32
  %i.m = icmp eq i32 %i.l, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5: ; preds = %bb.a
  %.pre = load ptr, ptr %0, align 8, !tbaa !32
  %bcmp.i4 = tail call i32 @bcmp(ptr %.pre, ptr nonnull @.str.448, i64 %i.b)
  %i.n = icmp eq i32 %bcmp.i4, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit7: ; preds = %bb.a
  %.pre13 = load ptr, ptr %0, align 8, !tbaa !32
  %bcmp.i6 = tail call i32 @bcmp(ptr %.pre13, ptr nonnull @.str.449, i64 %i.b)
  %i.o = icmp eq i32 %bcmp.i6, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9

bb.b:                                             ; preds = %bb.a
  %.pre14 = load ptr, ptr %0, align 8, !tbaa !32
  %bcmp.i8 = tail call i32 @bcmp(ptr %.pre14, ptr nonnull @.str.450, i64 %i.b)
  %i.p = icmp eq i32 %bcmp.i8, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit7, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.a, %bb.b
  %i.q = phi i1 [ %i.m, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ false, %bb.a ], [ %i.o, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit7 ], [ %i.n, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5 ], [ %i.p, %bb.b ]
  ret i1 %i.q
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11flatbuffers34StringIsFlatbufferNegativeInfinityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #17 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !152
  switch i64 %i.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3 [
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 9, label %bb.b
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !32
  %i.d = load i32, ptr %i.c, align 1
  %i.e = icmp ne i32 %i.d, 1718511917
  %i.f = zext i1 %i.e to i32
  %i.g = icmp eq i32 %i.f, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !32     ; 2 uses
  %i.i = load i64, ptr %i.h, align 1
  %i.j = xor i64 %i.i, 8388357179923392813
  %i.k = getelementptr i8, ptr %i.h, i64 8
  %i.l = load i8, ptr %i.k, align 1
  %i.m = zext i8 %i.l to i64
  %i.n = xor i64 %i.m, 121
  %i.o = or i64 %i.j, %i.n
  %i.p = icmp ne i64 %i.o, 0
  %i.q = zext i1 %i.p to i32
  %i.r = icmp eq i32 %i.q, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.a, %bb.b
  %i.s = phi i1 [ %i.g, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %i.r, %bb.b ], [ false, %bb.a ]
  ret i1 %i.s
}

declare noundef ptr @_ZNK11flatbuffers7EnumDef11FindByValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(312), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt17_Function_handlerIFvRKN11flatbuffers8FieldDefEEZNS0_4rust13RustGenerator8GenTableERKNS0_9StructDefEEUlS3_E_E9_M_invokeERKSt9_Any_dataS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(312) %1) #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.b = load ptr, ptr %0, align 8, !tbaa !1164
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 70, ptr %i.a, align 8, !tbaa !178
  %i.d = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !32
  %i.e = load i64, ptr %i.a, align 8, !tbaa !178  ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(70) %i.d, ptr noundef nonnull align 1 dereferenceable(70) @.str.454, i64 70, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !152
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  store i8 0, ptr %i.g, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  invoke void @_ZN11flatbuffers10CodeWriterpLENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(477) %i.h, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %2, align 8, !tbaa !32     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.c
  br i1 %i.j, label %_ZSt10__invoke_rIvRZN11flatbuffers4rust13RustGenerator8GenTableERKNS0_9StructDefEEUlRKNS0_8FieldDefEE_JS8_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.c, align 8, !tbaa !27
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #26
  br label %_ZSt10__invoke_rIvRZN11flatbuffers4rust13RustGenerator8GenTableERKNS0_9StructDefEEUlRKNS0_8FieldDefEE_JS8_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit

bb.c:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %2, align 8, !tbaa !32     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.c
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i: ; preds = %bb.c
  %i.p = load i64, ptr %i.c, align 8, !tbaa !27
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i
  resume { ptr, i32 } %i.m

_ZSt10__invoke_rIvRZN11flatbuffers4rust13RustGenerator8GenTableERKNS0_9StructDefEEUlRKNS0_8FieldDefEE_JS8_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN11flatbuffers8FieldDefEEZNS0_4rust13RustGenerator8GenTableERKNS0_9StructDefEEUlS3_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11flatbuffers4rust13RustGenerator8GenTableERKNS1_9StructDefEEUlRKNS1_8FieldDefEE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEEUlRKNS_8FieldDefEE_, ptr %0, align 8, !tbaa !325
  br label %_ZNSt14_Function_base13_Base_managerIZN11flatbuffers4rust13RustGenerator8GenTableERKNS1_9StructDefEEUlRKNS1_8FieldDefEE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !308
  br label %_ZNSt14_Function_base13_Base_managerIZN11flatbuffers4rust13RustGenerator8GenTableERKNS1_9StructDefEEUlRKNS1_8FieldDefEE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !255
  store i64 %i.a, ptr %0, align 8, !tbaa !255
  br label %_ZNSt14_Function_base13_Base_managerIZN11flatbuffers4rust13RustGenerator8GenTableERKNS1_9StructDefEEUlRKNS1_8FieldDefEE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11flatbuffers4rust13RustGenerator8GenTableERKNS1_9StructDefEEUlRKNS1_8FieldDefEE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt17_Function_handlerIFvRKN11flatbuffers8FieldDefEEZNS0_4rust13RustGenerator8GenTableERKNS0_9StructDefEEUlS3_E0_E9_M_invokeERKSt9_Any_dataS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(312) %1) #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !308
  tail call void @_ZZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEENKUlRKNS_8FieldDefEE0_clES7_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(312) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN11flatbuffers8FieldDefEEZNS0_4rust13RustGenerator8GenTableERKNS0_9StructDefEEUlS3_E0_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #6 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11flatbuffers4rust13RustGenerator8GenTableERKNS1_9StructDefEEUlRKNS1_8FieldDefEE0_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEEUlRKNS_8FieldDefEE0_, ptr %0, align 8, !tbaa !325
  br label %_ZNSt14_Function_base13_Base_managerIZN11flatbuffers4rust13RustGenerator8GenTableERKNS1_9StructDefEEUlRKNS1_8FieldDefEE0_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !308
  store ptr %i.a, ptr %0, align 8, !tbaa !308
  br label %_ZNSt14_Function_base13_Base_managerIZN11flatbuffers4rust13RustGenerator8GenTableERKNS1_9StructDefEEUlRKNS1_8FieldDefEE0_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !308
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !tbaa.struct !1165
  store ptr %i.c, ptr %0, align 8, !tbaa !308
  br label %_ZNSt14_Function_base13_Base_managerIZN11flatbuffers4rust13RustGenerator8GenTableERKNS1_9StructDefEEUlRKNS1_8FieldDefEE0_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !308    ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZN11flatbuffers4rust13RustGenerator8GenTableERKNS1_9StructDefEEUlRKNS1_8FieldDefEE0_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 24) #26
  br label %_ZNSt14_Function_base13_Base_managerIZN11flatbuffers4rust13RustGenerator8GenTableERKNS1_9StructDefEEUlRKNS1_8FieldDefEE0_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11flatbuffers4rust13RustGenerator8GenTableERKNS1_9StructDefEEUlRKNS1_8FieldDefEE0_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN11flatbuffers4rust13RustGenerator8GenTableERKNS_9StructDefEENKUlRKNS_8FieldDefEE0_clES7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(312) %1) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1167
  %i.e = load ptr, ptr %0, align 8, !tbaa !1168, !nonnull !37, !align !38
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 274
  %i.g = load i8, ptr %i.f, align 2, !tbaa !305, !range !151, !noundef !37
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.val.pre = load i32, ptr %.phi.trans.insert, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1169, !nonnull !37, !align !38
  %i.k = load i64, ptr %i.j, align 8, !tbaa !178
end_hunk_1
