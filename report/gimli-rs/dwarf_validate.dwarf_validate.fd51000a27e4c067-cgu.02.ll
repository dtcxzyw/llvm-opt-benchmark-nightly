Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/dwarf_validate.dwarf_validate.fd51000a27e4c067-cgu.02?download=true
inline.NumInlined: 172
inline.NumDeleted: 105
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9Jn0q30Ea0B_6object4read3any4FileECslKoDbeUmNq5_14dwarf_validate:bb.a
bb.s:                                             ; preds = %bb.q
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho7segment20MachOSegmentInternalINtNtBV_5macho12MachHeader64NtNtBV_6endian10EndiannessERShEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho7segment20MachOSegmentInternalINtNtB1h_5macho12MachHeader64NtNtB1h_6endian10EndiannessERShEEECslKoDbeUmNq5_14dwarf_validate.exit.i unwind label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body.i2

.body.i2:                                         ; preds = %bb.u, %bb.r
  %eh.lpad-body.i3 = phi { ptr, i32 } [ %i.t, %bb.u ], [ %i.r, %bb.r ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho7section20MachOSectionInternalINtNtB1h_5macho12MachHeader64NtNtB1h_6endian10EndiannessERShEEECslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u) #18
          to label %common.resume unwind label %bb.x

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho7segment20MachOSegmentInternalINtNtB1h_5macho12MachHeader64NtNtB1h_6endian10EndiannessERShEEECslKoDbeUmNq5_14dwarf_validate.exit.i: ; preds = %bb.s
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho7section20MachOSectionInternalINtNtBO_5macho12MachHeader64NtNtBO_6endian10EndiannessERShEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho4file9MachOFileINtNtBK_5macho12MachHeader64NtNtBK_6endian10EndiannessEEECslKoDbeUmNq5_14dwarf_validate.exit unwind label %bb.v

bb.v:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho7segment20MachOSegmentInternalINtNtB1h_5macho12MachHeader64NtNtB1h_6endian10EndiannessERShEEECslKoDbeUmNq5_14dwarf_validate.exit.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho7section20MachOSectionInternalINtNtBV_5macho12MachHeader64NtNtBV_6endian10EndiannessERShEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %common.resume unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.x:                                             ; preds = %.body.i2
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho4file9MachOFileINtNtBK_5macho12MachHeader64NtNtBK_6endian10EndiannessEEECslKoDbeUmNq5_14dwarf_validate.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho7segment20MachOSegmentInternalINtNtB1h_5macho12MachHeader64NtNtB1h_6endian10EndiannessERShEEECslKoDbeUmNq5_14dwarf_validate.exit.i
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho7section20MachOSectionInternalINtNtBV_5macho12MachHeader64NtNtBV_6endian10EndiannessERShEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
  br label %bb.b

bb.y:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs9Jn0q30Ea0B_6object4read4wasm13SectionHeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.z)
          to label %bb.aa unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9Jn0q30Ea0B_6object4read4wasm13SectionHeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.z)
          to label %.body.i6 unwind label %bb.ab

bb.aa:                                            ; preds = %bb.y
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9Jn0q30Ea0B_6object4read4wasm13SectionHeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.z)
          to label %bb.ad unwind label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body.i6

.body.i6:                                         ; preds = %bb.ac, %bb.z
  %eh.lpad-body.i7 = phi { ptr, i32 } [ %i.ac, %bb.ac ], [ %i.aa, %bb.z ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val2.i = load ptr, ptr %i.ad, align 8, !alias.scope !20, !nonnull !6, !noundef !6
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef 224, i64 noundef 8) #20
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs9Jn0q30Ea0B_6object4read4wasm18WasmSymbolInternalEECslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ae) #18
          to label %common.resume unwind label %bb.ag

bb.ad:                                            ; preds = %bb.aa
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val.i = load ptr, ptr %i.af, align 8, !alias.scope !20, !nonnull !6, !noundef !6
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 224, i64 noundef 8) #20
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs9Jn0q30Ea0B_6object4read4wasm18WasmSymbolInternalENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9Jn0q30Ea0B_6object4read4wasm8WasmFileECslKoDbeUmNq5_14dwarf_validate.exit unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9Jn0q30Ea0B_6object4read4wasm18WasmSymbolInternalENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %common.resume unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.ag:                                            ; preds = %.body.i6
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9Jn0q30Ea0B_6object4read4wasm8WasmFileECslKoDbeUmNq5_14dwarf_validate.exit: ; preds = %bb.ad
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9Jn0q30Ea0B_6object4read4wasm18WasmSymbolInternalENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys6os_str5bytes3BufECslKoDbeUmNq5_14dwarf_validate.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECslKoDbeUmNq5_14dwarf_validate.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECslKoDbeUmNq5_14dwarf_validate.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys6os_str5bytes3BufECslKoDbeUmNq5_14dwarf_validate.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsECslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev12AbbreviationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev12AbbreviationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev12AbbreviationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev12AbbreviationEECslKoDbeUmNq5_14dwarf_validate.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapyNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev12AbbreviationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapyNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev12AbbreviationEECslKoDbeUmNq5_14dwarf_validate.exit unwind label %bb.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev12AbbreviationEECslKoDbeUmNq5_14dwarf_validate.exit: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapyNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev12AbbreviationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  ret void

bb.f:                                             ; preds = %.body
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapyNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev12AbbreviationEECslKoDbeUmNq5_14dwarf_validate.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvCslKoDbeUmNq5_14dwarf_validate4main() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [80 x i8], align 8                ; 7 uses
  %i.i = alloca [80 x i8], align 8                ; 7 uses
  %i.j = alloca [8 x i8], align 8                 ; 5 uses
  %i.k = alloca [32 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 9 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [56 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 10 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 5 uses
  %i.u = alloca [56 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 10 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %i.y = alloca [56 x i8], align 8                ; 20 uses
  %i.z = alloca [16 x i8], align 8                ; 4 uses
  %i.aa = alloca [32 x i8], align 8               ; 9 uses
  %i.ab = alloca [40 x i8], align 8               ; 8 uses
  %i.ac = alloca [24 x i8], align 8               ; 4 uses
  %i.ad = alloca [24 x i8], align 8               ; 6 uses
  %i.ae = alloca [24 x i8], align 8               ; 4 uses
  %i.af = alloca [48 x i8], align 8               ; 12 uses
  %i.ag = alloca [32 x i8], align 8               ; 7 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [16 x i8], align 8               ; 5 uses
  %i.aj = alloca [304 x i8], align 8              ; 8 uses
  %i.ak = alloca [304 x i8], align 8              ; 12 uses
  %i.al = alloca [32 x i8], align 8               ; 7 uses
  %i.am = alloca [8 x i8], align 8                ; 4 uses
  %i.an = alloca [16 x i8], align 8               ; 5 uses
  %i.ao = alloca [8 x i8], align 8                ; 6 uses
  %i.ap = alloca [24 x i8], align 8               ; 7 uses
  %i.aq = alloca [16 x i8], align 8               ; 8 uses
  %i.ar = alloca [32 x i8], align 8               ; 7 uses
  %i.as = alloca [16 x i8], align 8               ; 5 uses
  %i.at = alloca [8 x i8], align 8                ; 6 uses
  %i.au = alloca [16 x i8], align 8               ; 7 uses
  %i.av = alloca [4 x i8], align 4                ; 5 uses
  %i.aw = alloca [24 x i8], align 8               ; 12 uses
  %.sroa.10 = alloca [16 x i8], align 8           ; 5 uses
  %i.ax = alloca [40 x i8], align 8               ; 9 uses
  %i.ay = alloca [32 x i8], align 8               ; 4 uses
  %i.az = alloca [40 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  %i.ba = tail call noundef nonnull align 8 ptr @_RNvNtNtCsG258MDvU3F_3std2io5stdio6stdout()
  call void @_RNvMNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB2_9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutE13with_capacityCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.az, i64 noundef 8192, ptr noundef nonnull align 8 %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  invoke void @_RNvNtCsG258MDvU3F_3std3env7args_os(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ay)
          to label %bb.b unwind label %.thread98

.thread98:                                        ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCslKoDbeUmNq5_14dwarf_validate.exit.thread, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %i.ay, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 32 ; 3 uses
  store i64 1, ptr %.sroa.2.0..sroa_idx, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 24 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 3 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aa, i64 26
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aa, i64 27
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aa, i64 28
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ak, i64 72 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ak, i64 48 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %.sroa.4.0..sroa_idx16.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx17.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 4 uses
  %.sroa.66.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.4.0..sroa_idx16.i29.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx17.i30.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  %.sroa.66.0..sroa_idx.i14.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.8.0..sroa_idx.i15.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.4.0..sroa_idx.i21.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.5.0..sroa_idx.i22.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ci = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.c

thread-pre-split:                                 ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys6os_str5bytes3BufECslKoDbeUmNq5_14dwarf_validate.exit.i73, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys6os_str5bytes3BufECslKoDbeUmNq5_14dwarf_validate.exit.i
  %.pn106 = phi i64 [ %i.gw, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys6os_str5bytes3BufECslKoDbeUmNq5_14dwarf_validate.exit.i ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys6os_str5bytes3BufECslKoDbeUmNq5_14dwarf_validate.exit.i73 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  %.sroa.0.0.ph = add i64 %.pn106, %.sroa.0.0
  %.pr = load i64, ptr %.sroa.2.0..sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split, %bb.b
  %i.cp = phi i64 [ %.pr, %thread-pre-split ], [ 1, %bb.b ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.ph, %thread-pre-split ], [ 0, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  %.not = icmp eq i64 %i.cp, 0
  br i1 %.not, label %bb.d, label %bb.e, !prof !9

bb.d:                                             ; preds = %bb.c
  %i.cq = load ptr, ptr %i.bb, align 8, !alias.scope !76, !nonnull !6, !noundef !6
  %i.cr = load ptr, ptr %i.bc, align 8, !alias.scope !76, !nonnull !6, !noundef !6 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.cq
  br i1 %i.cs, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCslKoDbeUmNq5_14dwarf_validate.exit.thread, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCslKoDbeUmNq5_14dwarf_validate.exit

bb.e:                                             ; preds = %bb.c
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8
  %i.ct = invoke fastcc noundef i64 @_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ax, i64 noundef %i.cp)
          to label %bb.g unwind label %bb.f

.body66:                                          ; preds = %bb.cn, %bb.cd, %bb.f, %bb.j
  %.pn47 = phi { ptr, i32 } [ %.pn45, %bb.j ], [ %i.ha, %bb.cd ], [ %i.cu, %bb.f ], [ %i.hl, %bb.cn ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ax)
          to label %.thread unwind label %bb.cf

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys6os_str5bytes3BufECslKoDbeUmNq5_14dwarf_validate.exit.i73, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys6os_str5bytes3BufECslKoDbeUmNq5_14dwarf_validate.exit.i, %bb.e
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body66

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCslKoDbeUmNq5_14dwarf_validate.exit: ; preds = %bb.d, %bb.h
  %.sink226 = phi ptr [ %i.cx, %bb.h ], [ %i.cr, %bb.d ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sink226, i64 24
  store ptr %i.cv, ptr %i.bc, align 8
  %.sroa.0.0.copyload86 = load i64, ptr %.sink226, align 8, !noalias !6 ; 2 uses
  %.sroa.10.0..sroa_idx88 = getelementptr inbounds nuw i8, ptr %.sink226, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx88, i64 16, i1 false), !noalias !6
  %.not39 = icmp eq i64 %.sroa.0.0.copyload86, -1
  br i1 %.not39, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCslKoDbeUmNq5_14dwarf_validate.exit.thread, label %bb.i

bb.g:                                             ; preds = %bb.e
  %.not38 = icmp eq i64 %i.ct, 0
  br i1 %.not38, label %bb.h, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCslKoDbeUmNq5_14dwarf_validate.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.cw = load ptr, ptr %i.bb, align 8, !alias.scope !77, !nonnull !6, !noundef !6
  %i.cx = load ptr, ptr %i.bc, align 8, !alias.scope !77, !nonnull !6, !noundef !6 ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.cw
  br i1 %i.cy, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCslKoDbeUmNq5_14dwarf_validate.exit.thread, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCslKoDbeUmNq5_14dwarf_validate.exit

bb.i:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCslKoDbeUmNq5_14dwarf_validate.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  store i64 %.sroa.0.0.copyload86, ptr %i.aw, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10, i64 16, i1 false)
  %i.cz = load ptr, ptr %.sroa.10.0..sroa_idx, align 8, !nonnull !6, !noundef !6 ; 5 uses
  %i.da = load i64, ptr %i.bd, align 8, !noundef !6 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  invoke void @_RINvMs2_NtCsG258MDvU3F_3std2fsNtB6_4File4openRNtNtB8_4path4PathECslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.au, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cz, i64 noundef %i.da)
          to label %bb.l unwind label %bb.k

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCslKoDbeUmNq5_14dwarf_validate.exit.thread: ; preds = %bb.h, %bb.d, %bb.g, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCslKoDbeUmNq5_14dwarf_validate.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ax)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4skip4SkipNtNtCsG258MDvU3F_3std3env6ArgsOsEECslKoDbeUmNq5_14dwarf_validate.exit57 unwind label %.thread98

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECslKoDbeUmNq5_14dwarf_validate.exit, %bb.cp, %bb.k
end_hunk_0
begin_hunk_1_@_RNvCslKoDbeUmNq5_14dwarf_validate4main:bb.a
  %i.dt = load ptr, ptr %i.bp, align 8, !alias.scope !81, !nonnull !6, !noundef !6
  %.sroa.04.0.copyload.i = load i16, ptr %i.dt, align 1, !noalias !81
  %i.du = icmp ne i16 %.sroa.04.0.copyload.i, 498
  br label %_RNvXs0_NtNtCs9Jn0q30Ea0B_6object4read3anyNtB5_4FileNtNtB7_6traits6Object16is_little_endianCslKoDbeUmNq5_14dwarf_validate.exit

bb.y:                                             ; preds = %bb.w
  %i.dv = load ptr, ptr %i.bp, align 8, !alias.scope !81, !nonnull !6, !noundef !6
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 6
  %.sroa.03.0.copyload.i = load i16, ptr %i.dw, align 1, !noalias !81
  %i.dx = icmp ne i16 %.sroa.03.0.copyload.i, 498
  br label %_RNvXs0_NtNtCs9Jn0q30Ea0B_6object4read3anyNtB5_4FileNtNtB7_6traits6Object16is_little_endianCslKoDbeUmNq5_14dwarf_validate.exit

bb.z:                                             ; preds = %bb.w
  %i.dy = load ptr, ptr %i.bo, align 8, !alias.scope !81, !nonnull !6, !noundef !6
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 5
  %i.ea = load i8, ptr %i.dz, align 1, !noalias !81, !noundef !6
  %i.eb = icmp eq i8 %i.ea, 1
  br label %_RNvXs0_NtNtCs9Jn0q30Ea0B_6object4read3anyNtB5_4FileNtNtB7_6traits6Object16is_little_endianCslKoDbeUmNq5_14dwarf_validate.exit

bb.aa:                                            ; preds = %bb.w
  %i.ec = load ptr, ptr %i.bo, align 8, !alias.scope !81, !nonnull !6, !noundef !6
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 5
  %i.ee = load i8, ptr %i.ed, align 1, !noalias !81, !noundef !6
  %i.ef = icmp eq i8 %i.ee, 1
  br label %_RNvXs0_NtNtCs9Jn0q30Ea0B_6object4read3anyNtB5_4FileNtNtB7_6traits6Object16is_little_endianCslKoDbeUmNq5_14dwarf_validate.exit

bb.ab:                                            ; preds = %bb.w
  %i.eg = load ptr, ptr %i.bn, align 8, !alias.scope !81, !nonnull !6, !noundef !6
  %.sroa.02.0.copyload.i = load i32, ptr %i.eg, align 1, !noalias !81
  %i.eh = icmp eq i32 %.sroa.02.0.copyload.i, -17958194
  br label %_RNvXs0_NtNtCs9Jn0q30Ea0B_6object4read3anyNtB5_4FileNtNtB7_6traits6Object16is_little_endianCslKoDbeUmNq5_14dwarf_validate.exit

bb.ac:                                            ; preds = %bb.w
  %i.ei = load ptr, ptr %i.bn, align 8, !alias.scope !81, !nonnull !6, !noundef !6
  %.sroa.01.0.copyload.i = load i32, ptr %i.ei, align 1, !noalias !81
  %i.ej = icmp eq i32 %.sroa.01.0.copyload.i, -17958193
  br label %_RNvXs0_NtNtCs9Jn0q30Ea0B_6object4read3anyNtB5_4FileNtNtB7_6traits6Object16is_little_endianCslKoDbeUmNq5_14dwarf_validate.exit

bb.ad:                                            ; preds = %bb.w, %bb.w
  br label %_RNvXs0_NtNtCs9Jn0q30Ea0B_6object4read3anyNtB5_4FileNtNtB7_6traits6Object16is_little_endianCslKoDbeUmNq5_14dwarf_validate.exit

.body61:                                          ; preds = %bb.bz, %bb.ae, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ek, %bb.ae ], [ %i.gx, %bb.bz ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9Jn0q30Ea0B_6object4read3any4FileECslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef align 8 dereferenceable(304) %i.ak) #18
          to label %bb.s unwind label %bb.cf

bb.ae:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECslKoDbeUmNq5_14dwarf_validate.exit.i, %_RNvXs0_NtNtCs9Jn0q30Ea0B_6object4read3anyNtB5_4FileNtNtB7_6traits6Object16is_little_endianCslKoDbeUmNq5_14dwarf_validate.exit
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %.body61

_RNvXs0_NtNtCs9Jn0q30Ea0B_6object4read3anyNtB5_4FileNtNtB7_6traits6Object16is_little_endianCslKoDbeUmNq5_14dwarf_validate.exit: ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.w, %bb.w
  %.sroa.0.0.shrunk.i = phi i1 [ %i.du, %bb.x ], [ %i.dx, %bb.y ], [ %i.eb, %bb.z ], [ %i.ef, %bb.aa ], [ %i.eh, %bb.ab ], [ %i.ej, %bb.ac ], [ true, %bb.w ], [ true, %bb.w ], [ true, %bb.w ], [ false, %bb.ad ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  invoke void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path11to_path_buf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cz, i64 noundef %i.da)
          to label %bb.af unwind label %bb.ae

bb.af:                                            ; preds = %_RNvXs0_NtNtCs9Jn0q30Ea0B_6object4read3anyNtB5_4FileNtNtB7_6traits6Object16is_little_endianCslKoDbeUmNq5_14dwarf_validate.exit
  %.sroa.06.0 = xor i1 %.sroa.0.0.shrunk.i, true
  store i64 0, ptr %i.bq, align 8
  store ptr %i.az, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !82
  invoke void @_RNvMCsfER1pEaRVit_11typed_arenaINtB2_5ArenaINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE3newCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.y)
          to label %.noexc59 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc59:                                         ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !82
  call void @llvm.experimental.noalias.scope.decl(metadata !83)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !84
  %i.el = invoke { ptr, i64 } @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read6abbrev11DebugAbbrevINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEEINtB7_7SectionBS_E12section_nameCslKoDbeUmNq5_14dwarf_validate()
          to label %.noexc.i unwind label %bb.ar, !noalias !82 ; 2 uses

.noexc.i:                                         ; preds = %.noexc59
  %i.em = extractvalue { ptr, i64 } %i.el, 0
  %i.en = extractvalue { ptr, i64 } %i.el, 1
  invoke void @_RNvXs0_NtNtCs9Jn0q30Ea0B_6object4read3anyNtB5_4FileNtNtB7_6traits6Object21section_by_name_bytesCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(304) %i.ak, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.em, i64 noundef %i.en)
          to label %.noexc1.i unwind label %bb.ar, !noalias !85

.noexc1.i:                                        ; preds = %.noexc.i
  %i.eo = load i64, ptr %i.u, align 8, !range !80, !noalias !84, !noundef !6
  %.not.i.i = icmp eq i64 %i.eo, -1
  br i1 %.not.i.i, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %.noexc1.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !84
  invoke void @_RNvYNtNtNtCs9Jn0q30Ea0B_6object4read3any7SectionNtNtB6_6traits13ObjectSection17uncompressed_dataCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.u)
          to label %.noexc2.i unwind label %bb.ar, !noalias !85

.noexc2.i:                                        ; preds = %bb.ag
  call void @llvm.experimental.noalias.scope.decl(metadata !86)
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  call void @llvm.experimental.noalias.scope.decl(metadata !88)
  %i.ep = load i64, ptr %i.t, align 8, !range !89, !alias.scope !87, !noalias !84, !noundef !6
  %i.eq = icmp eq i64 %i.ep, -2
  br i1 %i.eq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECslKoDbeUmNq5_14dwarf_validate.exit.thread.i.i.i, label %bb.ah

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECslKoDbeUmNq5_14dwarf_validate.exit.thread.i.i.i: ; preds = %.noexc2.i
  store i64 -1, ptr %i.v, align 8, !alias.scope !90, !noalias !84
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx16.i.i, align 8, !alias.scope !90, !noalias !84
  store i64 0, ptr %.sroa.5.0..sroa_idx17.i.i, align 8, !alias.scope !90, !noalias !84
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENtNtCs9Jn0q30Ea0B_6object4read5ErrorE9unwrap_orCslKoDbeUmNq5_14dwarf_validate.exit.i.i

bb.ah:                                            ; preds = %.noexc2.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.t, i64 24, i1 false), !alias.scope !91, !noalias !84
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENtNtCs9Jn0q30Ea0B_6object4read5ErrorE9unwrap_orCslKoDbeUmNq5_14dwarf_validate.exit.i.i

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENtNtCs9Jn0q30Ea0B_6object4read5ErrorE9unwrap_orCslKoDbeUmNq5_14dwarf_validate.exit.i.i: ; preds = %bb.ah, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECslKoDbeUmNq5_14dwarf_validate.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !84
  br label %bb.aj

bb.ai:                                            ; preds = %.noexc1.i
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx16.i.i, align 8, !noalias !84
  store i64 0, ptr %.sroa.5.0..sroa_idx17.i.i, align 8, !noalias !84
  store i64 -1, ptr %i.v, align 8, !noalias !84
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENtNtCs9Jn0q30Ea0B_6object4read5ErrorE9unwrap_orCslKoDbeUmNq5_14dwarf_validate.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !84
  call void @llvm.experimental.noalias.scope.decl(metadata !92)
  call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %i.er = load i64, ptr %i.y, align 8, !noalias !94, !noundef !6
  %.not.i.i.i = icmp eq i64 %i.er, 0
  br i1 %.not.i.i.i, label %bb.ak, label %bb.al, !prof !9

bb.ak:                                            ; preds = %bb.aj
  store i64 -1, ptr %i.y, align 8, !noalias !94
  %i.es = load i64, ptr %i.bs, align 8, !noalias !94, !noundef !6 ; 5 uses
  %i.et = icmp ult i64 %i.es, 384307168202282326
  call void @llvm.assume(i1 %i.et)
  %i.eu = load i64, ptr %i.br, align 8, !range !14, !noalias !94, !noundef !6
  %i.ev = icmp samesign ult i64 %i.es, %i.eu
  br i1 %i.ev, label %_RNvMCsfER1pEaRVit_11typed_arenaINtB2_5ArenaINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE15alloc_fast_pathCslKoDbeUmNq5_14dwarf_validate.exit.thread.i.i, label %_RNvMCsfER1pEaRVit_11typed_arenaINtB2_5ArenaINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE15alloc_fast_pathCslKoDbeUmNq5_14dwarf_validate.exit.i.i

bb.al:                                            ; preds = %bb.aj
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #21
          to label %bb.an unwind label %bb.ao, !noalias !95

_RNvMCsfER1pEaRVit_11typed_arenaINtB2_5ArenaINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE15alloc_fast_pathCslKoDbeUmNq5_14dwarf_validate.exit.thread.i.i: ; preds = %bb.ak
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !96, !noalias !94
  %i.ew = getelementptr inbounds nuw [24 x i8], ptr %.pre.i.i.i, i64 %i.es
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ew, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !97
  %i.ex = add nuw nsw i64 %i.es, 1
  store i64 %i.ex, ptr %i.bs, align 8, !alias.scope !96, !noalias !94
  %i.ey = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !94, !nonnull !6, !noundef !6
  %i.ez = getelementptr inbounds nuw [24 x i8], ptr %i.ey, i64 %i.es
  %.pre10.i.i.i = load i64, ptr %i.y, align 8, !noalias !94
  %i.fa = add i64 %.pre10.i.i.i, 1
  store i64 %i.fa, ptr %i.y, align 8, !noalias !94
  br label %bb.aq

bb.am:                                            ; preds = %bb.ao
  %i.fb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !97
  unreachable

bb.an:                                            ; preds = %bb.al
  unreachable

bb.ao:                                            ; preds = %bb.al
  %i.fc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v) #18
          to label %.body.i unwind label %bb.am, !noalias !97

_RNvMCsfER1pEaRVit_11typed_arenaINtB2_5ArenaINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE15alloc_fast_pathCslKoDbeUmNq5_14dwarf_validate.exit.i.i: ; preds = %bb.ak
  %.sroa.04.0.copyload5.i.i = load i64, ptr %i.v, align 8, !alias.scope !98, !noalias !84 ; 2 uses
  %.sroa.66.0.copyload8.i.i = load ptr, ptr %.sroa.4.0..sroa_idx16.i.i, align 8, !alias.scope !98, !noalias !84 ; 2 uses
  %.sroa.8.0.copyload10.i.i = load i64, ptr %.sroa.5.0..sroa_idx17.i.i, align 8, !alias.scope !98, !noalias !84
  store i64 0, ptr %i.y, align 8, !noalias !94
  %.not2.i.i = icmp eq i64 %.sroa.04.0.copyload5.i.i, -2
  br i1 %.not2.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_RNvMCsfER1pEaRVit_11typed_arenaINtB2_5ArenaINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE15alloc_fast_pathCslKoDbeUmNq5_14dwarf_validate.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !84
  store i64 %.sroa.04.0.copyload5.i.i, ptr %i.s, align 8, !noalias !84
  store ptr %.sroa.66.0.copyload8.i.i, ptr %.sroa.66.0..sroa_idx.i.i, align 8, !noalias !84
  store i64 %.sroa.8.0.copyload10.i.i, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !84
  %i.fd = invoke noundef nonnull align 8 ptr @_RNvMCsfER1pEaRVit_11typed_arenaINtB2_5ArenaINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE15alloc_slow_pathCslKoDbeUmNq5_14dwarf_validate(ptr noundef nonnull align 8 %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.s)
          to label %.noexc3.i unwind label %bb.ar, !noalias !85

.noexc3.i:                                        ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !84
  br label %bb.as

bb.aq:                                            ; preds = %_RNvMCsfER1pEaRVit_11typed_arenaINtB2_5ArenaINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE15alloc_fast_pathCslKoDbeUmNq5_14dwarf_validate.exit.i.i, %_RNvMCsfER1pEaRVit_11typed_arenaINtB2_5ArenaINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE15alloc_fast_pathCslKoDbeUmNq5_14dwarf_validate.exit.thread.i.i
  %.sroa.66.015.i.i = phi ptr [ %i.ez, %_RNvMCsfER1pEaRVit_11typed_arenaINtB2_5ArenaINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE15alloc_fast_pathCslKoDbeUmNq5_14dwarf_validate.exit.thread.i.i ], [ %.sroa.66.0.copyload8.i.i, %_RNvMCsfER1pEaRVit_11typed_arenaINtB2_5ArenaINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE15alloc_fast_pathCslKoDbeUmNq5_14dwarf_validate.exit.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.66.015.i.i) ]
  br label %bb.as

bb.ar:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB1a_.exit.i.i, %.loopexit.i.i.a, %bb.bc, %bb.at, %.noexc31.i, %bb.as, %bb.ap, %bb.ag, %.noexc.i, %.noexc59
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.bq, %bb.bo, %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %bb.bb, %bb.ar, %bb.ao
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.fc, %bb.ao ], [ %i.fx, %bb.bb ], [ %i.fe, %bb.ar ], [ %lpad.loopexit.split-lp261, %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ], [ %i.gm, %bb.bq ], [ %i.gl, %bb.bo ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsfER1pEaRVit_11typed_arena5ArenaINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEEECslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef align 8 dereferenceable(56) %i.y) #18
          to label %.body unwind label %bb.bu

bb.as:                                            ; preds = %bb.aq, %.noexc3.i
  %.sroa.01.0.i.i = phi ptr [ %i.fd, %.noexc3.i ], [ %.sroa.66.015.i.i, %bb.aq ] ; 2 uses
  %.sroa.0.0.in.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 8
  %.sroa.0.0.i.i = load ptr, ptr %.sroa.0.0.in.i.i, align 8, !noalias !99, !nonnull !6, !noundef !6
  %.sroa.3.0.in.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 16
  %.sroa.3.0.i.i = load i64, ptr %.sroa.3.0.in.i.i, align 8, !noalias !99, !noundef !6
  %i.ff = zext i1 %.sroa.06.0 to i8               ; 2 uses
  store ptr %.sroa.0.0.i.i, ptr %i.x, align 8, !alias.scope !100, !noalias !82
  store i64 %.sroa.3.0.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !100, !noalias !82
  store i8 %i.ff, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !100, !noalias !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !82
  call void @llvm.experimental.noalias.scope.decl(metadata !101)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !102
  %i.fg = invoke { ptr, i64 } @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read4unit9DebugInfoINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEEINtB7_7SectionBN_E12section_nameCslKoDbeUmNq5_14dwarf_validate()
          to label %.noexc31.i unwind label %bb.ar, !noalias !85 ; 2 uses

.noexc31.i:                                       ; preds = %bb.as
  %i.fh = extractvalue { ptr, i64 } %i.fg, 0
  %i.fi = extractvalue { ptr, i64 } %i.fg, 1
  invoke void @_RNvXs0_NtNtCs9Jn0q30Ea0B_6object4read3anyNtB5_4FileNtNtB7_6traits6Object21section_by_name_bytesCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(304) %i.ak, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fh, i64 noundef %i.fi)
          to label %.noexc32.i unwind label %bb.ar, !noalias !85

.noexc32.i:                                       ; preds = %.noexc31.i
  %i.fj = load i64, ptr %i.q, align 8, !range !80, !noalias !102, !noundef !6
  %.not.i4.i = icmp eq i64 %i.fj, -1
  br i1 %.not.i4.i, label %bb.av, label %bb.at

bb.at:                                            ; preds = %.noexc32.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !102
  invoke void @_RNvYNtNtNtCs9Jn0q30Ea0B_6object4read3any7SectionNtNtB6_6traits13ObjectSection17uncompressed_dataCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.q)
          to label %.noexc33.i unwind label %bb.ar, !noalias !85

.noexc33.i:                                       ; preds = %bb.at
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  call void @llvm.experimental.noalias.scope.decl(metadata !104)
  call void @llvm.experimental.noalias.scope.decl(metadata !105)
  %i.fk = load i64, ptr %i.p, align 8, !range !89, !alias.scope !104, !noalias !102, !noundef !6
  %i.fl = icmp eq i64 %i.fk, -2
  br i1 %i.fl, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECslKoDbeUmNq5_14dwarf_validate.exit.thread.i.i28.i, label %bb.au

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECslKoDbeUmNq5_14dwarf_validate.exit.thread.i.i28.i: ; preds = %.noexc33.i
  store i64 -1, ptr %i.r, align 8, !alias.scope !106, !noalias !102
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx16.i29.i, align 8, !alias.scope !106, !noalias !102
  store i64 0, ptr %.sroa.5.0..sroa_idx17.i30.i, align 8, !alias.scope !106, !noalias !102
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENtNtCs9Jn0q30Ea0B_6object4read5ErrorE9unwrap_orCslKoDbeUmNq5_14dwarf_validate.exit.i5.i

bb.au:                                            ; preds = %.noexc33.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.p, i64 24, i1 false), !alias.scope !107, !noalias !102
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENtNtCs9Jn0q30Ea0B_6object4read5ErrorE9unwrap_orCslKoDbeUmNq5_14dwarf_validate.exit.i5.i

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENtNtCs9Jn0q30Ea0B_6object4read5ErrorE9unwrap_orCslKoDbeUmNq5_14dwarf_validate.exit.i5.i: ; preds = %bb.au, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECslKoDbeUmNq5_14dwarf_validate.exit.thread.i.i28.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !102
  br label %bb.aw

bb.av:                                            ; preds = %.noexc32.i
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx16.i29.i, align 8, !noalias !102
  store i64 0, ptr %.sroa.5.0..sroa_idx17.i30.i, align 8, !noalias !102
  store i64 -1, ptr %i.r, align 8, !noalias !102
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENtNtCs9Jn0q30Ea0B_6object4read5ErrorE9unwrap_orCslKoDbeUmNq5_14dwarf_validate.exit.i5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !102
  call void @llvm.experimental.noalias.scope.decl(metadata !108)
  call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %i.fm = load i64, ptr %i.y, align 8, !noalias !110, !noundef !6
  %.not.i.i6.i = icmp eq i64 %i.fm, 0
  br i1 %.not.i.i6.i, label %bb.ax, label %bb.ay, !prof !9

bb.ax:                                            ; preds = %bb.aw
  store i64 -1, ptr %i.y, align 8, !noalias !110
  %i.fn = load i64, ptr %i.bs, align 8, !noalias !110, !noundef !6 ; 5 uses
  %i.fo = icmp ult i64 %i.fn, 384307168202282326
  call void @llvm.assume(i1 %i.fo)
  %i.fp = load i64, ptr %i.br, align 8, !range !14, !noalias !110, !noundef !6
  %i.fq = icmp samesign ult i64 %i.fn, %i.fp
  br i1 %i.fq, label %_RNvMCsfER1pEaRVit_11typed_arenaINtB2_5ArenaINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE15alloc_fast_pathCslKoDbeUmNq5_14dwarf_validate.exit.thread.i24.i, label %_RNvMCsfER1pEaRVit_11typed_arenaINtB2_5ArenaINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE15alloc_fast_pathCslKoDbeUmNq5_14dwarf_validate.exit.i7.i

bb.ay:                                            ; preds = %bb.aw
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #21
          to label %bb.ba unwind label %bb.bb, !noalias !111

_RNvMCsfER1pEaRVit_11typed_arenaINtB2_5ArenaINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE15alloc_fast_pathCslKoDbeUmNq5_14dwarf_validate.exit.thread.i24.i: ; preds = %bb.ax
  %.pre.i.i26.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !112, !noalias !110
  %i.fr = getelementptr inbounds nuw [24 x i8], ptr %.pre.i.i26.i, i64 %i.fn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fr, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !113
  %i.fs = add nuw nsw i64 %i.fn, 1
  store i64 %i.fs, ptr %i.bs, align 8, !alias.scope !112, !noalias !110
  %i.ft = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !110, !nonnull !6, !noundef !6
  %i.fu = getelementptr inbounds nuw [24 x i8], ptr %i.ft, i64 %i.fn
  %.pre10.i.i27.i = load i64, ptr %i.y, align 8, !noalias !110
  %i.fv = add i64 %.pre10.i.i27.i, 1
  store i64 %i.fv, ptr %i.y, align 8, !noalias !110
  br label %bb.bd

bb.az:                                            ; preds = %bb.bb
  %i.fw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !113
  unreachable

bb.ba:                                            ; preds = %bb.ay
  unreachable

bb.bb:                                            ; preds = %bb.ay
  %i.fx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r) #18
          to label %.body.i unwind label %bb.az, !noalias !113

_RNvMCsfER1pEaRVit_11typed_arenaINtB2_5ArenaINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE15alloc_fast_pathCslKoDbeUmNq5_14dwarf_validate.exit.i7.i: ; preds = %bb.ax
  %.sroa.04.0.copyload5.i8.i = load i64, ptr %i.r, align 8, !alias.scope !114, !noalias !102 ; 2 uses
  %.sroa.66.0.copyload8.i10.i = load ptr, ptr %.sroa.4.0..sroa_idx16.i29.i, align 8, !alias.scope !114, !noalias !102 ; 2 uses
  %.sroa.8.0.copyload10.i12.i = load i64, ptr %.sroa.5.0..sroa_idx17.i30.i, align 8, !alias.scope !114, !noalias !102
  store i64 0, ptr %i.y, align 8, !noalias !110
  %.not2.i13.i = icmp eq i64 %.sroa.04.0.copyload5.i8.i, -2
  br i1 %.not2.i13.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %_RNvMCsfER1pEaRVit_11typed_arenaINtB2_5ArenaINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE15alloc_fast_pathCslKoDbeUmNq5_14dwarf_validate.exit.i7.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !102
  store i64 %.sroa.04.0.copyload5.i8.i, ptr %i.o, align 8, !noalias !102
  store ptr %.sroa.66.0.copyload8.i10.i, ptr %.sroa.66.0..sroa_idx.i14.i, align 8, !noalias !102
  store i64 %.sroa.8.0.copyload10.i12.i, ptr %.sroa.8.0..sroa_idx.i15.i, align 8, !noalias !102
  %i.fy = invoke noundef nonnull align 8 ptr @_RNvMCsfER1pEaRVit_11typed_arenaINtB2_5ArenaINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE15alloc_slow_pathCslKoDbeUmNq5_14dwarf_validate(ptr noundef nonnull align 8 %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o)
          to label %.noexc36.i unwind label %bb.ar, !noalias !85

.noexc36.i:                                       ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !102
  br label %bb.be

bb.bd:                                            ; preds = %_RNvMCsfER1pEaRVit_11typed_arenaINtB2_5ArenaINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE15alloc_fast_pathCslKoDbeUmNq5_14dwarf_validate.exit.i7.i, %_RNvMCsfER1pEaRVit_11typed_arenaINtB2_5ArenaINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE15alloc_fast_pathCslKoDbeUmNq5_14dwarf_validate.exit.thread.i24.i
  %.sroa.66.015.i23.i = phi ptr [ %i.fu, %_RNvMCsfER1pEaRVit_11typed_arenaINtB2_5ArenaINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE15alloc_fast_pathCslKoDbeUmNq5_14dwarf_validate.exit.thread.i24.i ], [ %.sroa.66.0.copyload8.i10.i, %_RNvMCsfER1pEaRVit_11typed_arenaINtB2_5ArenaINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE15alloc_fast_pathCslKoDbeUmNq5_14dwarf_validate.exit.i7.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.66.015.i23.i) ]
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.noexc36.i
  %.sroa.01.0.i16.i = phi ptr [ %i.fy, %.noexc36.i ], [ %.sroa.66.015.i23.i, %bb.bd ] ; 2 uses
  %.sroa.0.0.in.i17.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i16.i, i64 8
  %.sroa.0.0.i18.i = load ptr, ptr %.sroa.0.0.in.i17.i, align 8, !noalias !115, !nonnull !6, !noundef !6
  %.sroa.3.0.in.i19.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i16.i, i64 16
  %.sroa.3.0.i20.i = load i64, ptr %.sroa.3.0.in.i19.i, align 8, !noalias !115, !noundef !6
  store ptr %.sroa.0.0.i18.i, ptr %i.w, align 8, !alias.scope !116, !noalias !82
  store i64 %.sroa.3.0.i20.i, ptr %.sroa.4.0..sroa_idx.i21.i, align 8, !alias.scope !116, !noalias !82
  store i8 %i.ff, ptr %.sroa.5.0..sroa_idx.i22.i, align 8, !alias.scope !116, !noalias !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !82
  store ptr %i.af, ptr %i.n, align 8, !noalias !117
  store ptr %i.x, ptr %i.m, align 8, !noalias !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !117
  store i64 0, ptr %i.l, align 8, !noalias !117
  store ptr inttoptr (i64 8 to ptr), ptr %i.bt, align 8, !noalias !117
  store i64 0, ptr %i.bu, align 8, !noalias !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !117
  invoke void @_RNvMs3_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB5_9DebugInfoINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE5unitsCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w)
          to label %bb.bf unwind label %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !117
  store i64 0, ptr %i.j, align 8, !noalias !117
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bm, %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !117
  invoke void @_RNvMs7_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB5_24DebugInfoUnitHeadersIterINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE4nextCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %bb.bh unwind label %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp

bb.bh:                                            ; preds = %bb.bg
  %i.fz = load i64, ptr %i.h, align 8, !range !118, !noalias !117, !noundef !6
  switch i64 %i.fz, label %bb.bj [
    i64 -2, label %bb.bi
    i64 -1, label %.loopexit.i.i.a
  ]

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !117
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i64 16, i1 false), !noalias !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !117
  store ptr %i.j, ptr %i.e, align 8, !noalias !117
  store ptr @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8LowerHex3fmt, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !noalias !117
  store ptr %i.g, ptr %i.bx, align 8, !noalias !117
  store ptr @_RNvXNtCsi68uqYEhoRA_5gimli4readNtB2_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !noalias !117
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @0, ptr noundef nonnull %i.e)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslKoDbeUmNq5_14dwarf_validate.exit.i.i unwind label %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp

bb.bj:                                            ; preds = %bb.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.h, i64 80, i1 false), !noalias !117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !117
  %i.ga = load i64, ptr %i.bv, align 8, !noalias !117, !noundef !6
  %i.gb = invoke noundef i64 @_RNvMsb_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB5_10UnitHeaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEjE21length_including_selfCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.i)
          to label %bb.bk unwind label %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp

.loopexit.i.i.a:                                  ; preds = %bb.bh, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !117
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !117
  store ptr %i.m, ptr %i.by, align 8, !noalias !117
  store ptr %i.n, ptr %i.bz, align 8, !noalias !117
  invoke void @_RINvNtNtCs3uS0LcqId4h_5rayon4iter13from_par_iter16collect_extendedINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEINtNtB4_3map3MapINtNtB6_3vec8IntoIterINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB2Z_12endian_slice11EndianSliceNtNtB31_9endianity13RunTimeEndianEjEENCINvB1B_13validate_infoQINtNtNtNtB17_2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB3H_E0EEB1B_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.c)
          to label %.noexc37.i unwind label %bb.ar

.noexc37.i:                                       ; preds = %.loopexit.i.i.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !117
  %i.gc = load ptr, ptr %i.ca, align 8, !noalias !117, !nonnull !6, !noundef !6
  %i.gd = load i64, ptr %i.cb, align 8, !noalias !117, !noundef !6
  invoke void @_RINvYINtNtCs3uS0LcqId4h_5rayon5slice4IterNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENtNtB8_4iter16ParallelIterator8for_eachNCINvBF_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB48_9endianity13RunTimeEndianEEs_0EBF_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.gc, i64 noundef %i.gd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n)
          to label %bb.bp unwind label %bb.bo

.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bl, %bb.bj, %bb.bg, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslKoDbeUmNq5_14dwarf_validate.exit.i.i, %bb.bi, %bb.be
  %lpad.loopexit.split-lp261 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB1d_12endian_slice11EndianSliceNtNtB1f_9endianity13RunTimeEndianEjEEECslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #18
          to label %.body.i unwind label %bb.bs

bb.bk:                                            ; preds = %bb.bj
  %i.ge = add i64 %i.gb, %i.ga
  store i64 %i.ge, ptr %i.j, align 8, !noalias !117
  %i.gf = load i64, ptr %i.bu, align 8, !alias.scope !119, !noalias !117, !noundef !6 ; 3 uses
  %i.gg = load i64, ptr %i.l, align 8, !range !14, !alias.scope !119, !noalias !117, !noundef !6
  %i.gh = icmp eq i64 %i.gf, %i.gg
  br i1 %i.gh, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtBR_12endian_slice11EndianSliceNtNtBT_9endianity13RunTimeEndianEjEE8grow_oneCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l) #19
          to label %bb.bm unwind label %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.gi = load ptr, ptr %i.bt, align 8, !alias.scope !119, !noalias !117, !nonnull !6, !noundef !6
  %i.gj = getelementptr inbounds nuw [80 x i8], ptr %i.gi, i64 %i.gf
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.gj, ptr noundef nonnull align 8 dereferenceable(80) %i.i, i64 80, i1 false)
  %i.gk = add i64 %i.gf, 1
  store i64 %i.gk, ptr %i.bu, align 8, !alias.scope !119, !noalias !117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !117
  br label %bb.bg

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslKoDbeUmNq5_14dwarf_validate.exit.i.i: ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !117
  invoke fastcc void @_RNvMs_CslKoDbeUmNq5_14dwarf_validateINtB4_11ErrorWriterQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEE5errorB4_(ptr noundef nonnull align 8 dereferenceable(48) %i.af, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.bn unwind label %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp

bb.bn:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslKoDbeUmNq5_14dwarf_validate.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !117
  br label %.loopexit.i.i.a

bb.bo:                                            ; preds = %.noexc37.i
  %i.gl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB1a_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #18
          to label %.body.i unwind label %bb.bs

bb.bp:                                            ; preds = %.noexc37.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB1a_.exit.i.i unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.gm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.br

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB1a_.exit.i.i: ; preds = %bb.bp
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.bt unwind label %bb.ar

bb.br:                                            ; preds = %bb.bq
  %i.gn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.bs:                                            ; preds = %bb.bo, %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  %i.go = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.bt:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB1a_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !82
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsfER1pEaRVit_11typed_arena5ArenaINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEEECslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef align 8 dereferenceable(56) %i.y)
          to label %bb.bv unwind label %.loopexit.split-lp.loopexit.split-lp

bb.bu:                                            ; preds = %.body.i
  %i.gp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.bt, %bb.af, %bb.bv, %bb.bx
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp, %.body.i
  %eh.lpad-body = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCslKoDbeUmNq5_14dwarf_validate11ErrorWriterQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEEBE_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.af) #18
          to label %.body61 unwind label %bb.cf

bb.bv:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i64 24, i1 false)
  invoke void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexTQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtBb_2io5stdio6StdoutEjEE10into_innerCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ac)
          to label %bb.bw unwind label %.loopexit.split-lp.loopexit.split-lp

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %i.gq = load i64, ptr %i.ad, align 8, !range !13, !alias.scope !120, !noundef !6
  %i.gr = trunc nuw i64 %i.gq to i1
  br i1 %i.gr, label %bb.bx, label %bb.by, !prof !10

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !120
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8, !alias.scope !120, !nonnull !6, !align !7, !noundef !6
  %i.gu = load i64, ptr %i.cc, align 8, !alias.scope !120, !noundef !6
  store ptr %i.gt, ptr %i.z, align 8, !noalias !120
  %i.gv = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %i.gu, ptr %i.gv, align 8, !noalias !120
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 43, ptr noundef nonnull %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #22
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.bx
  unreachable

bb.by:                                            ; preds = %bb.bw
  %i.gw = load i64, ptr %i.cc, align 8, !alias.scope !120, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.af)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECslKoDbeUmNq5_14dwarf_validate.exit.i unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.gx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.af)
          to label %.body61 unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.gy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECslKoDbeUmNq5_14dwarf_validate.exit.i: ; preds = %bb.by
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.af)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCslKoDbeUmNq5_14dwarf_validate11ErrorWriterQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEEBE_.exit unwind label %bb.ae

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCslKoDbeUmNq5_14dwarf_validate11ErrorWriterQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEEBE_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECslKoDbeUmNq5_14dwarf_validate.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9Jn0q30Ea0B_6object4read3any4FileECslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef align 8 dereferenceable(304) %i.ak)
          to label %bb.cb unwind label %bb.t

bb.cb:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCslKoDbeUmNq5_14dwarf_validate11ErrorWriterQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEEBE_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  invoke void @_RNvXs_NtCsgQ7e0lqRvgo_7memmap22osNtB4_9MmapInnerNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aq)
          to label %bb.cc unwind label %bb.o

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  %i.gz = call noundef i32 @close(i32 noundef %i.df) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys6os_str5bytes3BufECslKoDbeUmNq5_14dwarf_validate.exit.i unwind label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ha = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %.body66 unwind label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.hb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys6os_str5bytes3BufECslKoDbeUmNq5_14dwarf_validate.exit.i: ; preds = %bb.cc
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %thread-pre-split unwind label %bb.f

bb.cf:                                            ; preds = %bb.s, %.body66, %.thread, %bb.cp, %bb.ch, %.body, %.body61, %bb.j
  %i.hc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.cg:                                            ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  invoke void @_RNvXs_NtCsgQ7e0lqRvgo_7memmap22osNtB4_9MmapInnerNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aq)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECslKoDbeUmNq5_14dwarf_validate.exit70 unwind label %bb.o

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECslKoDbeUmNq5_14dwarf_validate.exit70: ; preds = %bb.cg, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  %i.hd = call noundef i32 @close(i32 noundef %i.df) #20 ; 0 uses
  br label %bb.cm

bb.ch:                                            ; preds = %bb.q
  %i.he = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ao) #18
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECslKoDbeUmNq5_14dwarf_validate.exit unwind label %bb.cf

bb.ci:                                            ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.experimental.noalias.scope.decl(metadata !121)
  %.val.i = load ptr, ptr %i.ao, align 8, !alias.scope !121, !nonnull !6, !noundef !6 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !121
  %i.hf = ptrtoint ptr %.val.i to i64             ; 2 uses
  %i.hg = and i64 %i.hf, 3
  switch i64 %i.hg, label %default.unreachable [
    i64 2, label %bb.cl
    i64 3, label %bb.cj
    i64 0, label %bb.cl
    i64 1, label %bb.ck
  ], !prof !11

bb.cj:                                            ; preds = %bb.ci
  %i.hh = icmp ult ptr %.val.i, inttoptr (i64 188978561024 to ptr)
  %i.hi = and i64 %i.hf, 1095216660480
  %i.hj = icmp ne i64 %i.hi, 1095216660480
  call void @llvm.assume(i1 %i.hh)
  call void @llvm.assume(i1 %i.hj)
  br label %bb.cl

bb.ck:                                            ; preds = %bb.ci
  %i.hk = getelementptr i8, ptr %.val.i, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hk) ]
  store ptr %i.hk, ptr %i.ck, align 8, !alias.scope !122, !noalias !121
  store i8 3, ptr %i.b, align 8, !alias.scope !122, !noalias !121
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ck)
          to label %bb.cl unwind label %bb.o

bb.cl:                                            ; preds = %bb.cj, %bb.ci, %bb.ci, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECslKoDbeUmNq5_14dwarf_validate.exit70

bb.cm:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECslKoDbeUmNq5_14dwarf_validate.exit70, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys6os_str5bytes3BufECslKoDbeUmNq5_14dwarf_validate.exit.i73 unwind label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.hl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %.body66 unwind label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.hm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys6os_str5bytes3BufECslKoDbeUmNq5_14dwarf_validate.exit.i73: ; preds = %bb.cm
end_hunk_1
