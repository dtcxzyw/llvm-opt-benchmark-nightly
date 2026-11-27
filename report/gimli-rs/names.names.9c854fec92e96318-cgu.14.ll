Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/names.names.9c854fec92e96318-cgu.14?download=true
inline.NumInlined: 157
inline.NumDeleted: 86
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9Jn0q30Ea0B_6object4read3any4FileECsdr9GKMNitvw_5names:bb.a
bb.u:                                             ; preds = %bb.s
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body.i2

.body.i2:                                         ; preds = %bb.u, %bb.r
  %eh.lpad-body.i3 = phi { ptr, i32 } [ %i.t, %bb.u ], [ %i.r, %bb.r ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho7section20MachOSectionInternalINtNtB1h_5macho12MachHeader64NtNtB1h_6endian10EndiannessERShEEECsdr9GKMNitvw_5names(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u) #20
          to label %common.resume unwind label %bb.x

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho7segment20MachOSegmentInternalINtNtB1h_5macho12MachHeader64NtNtB1h_6endian10EndiannessERShEEECsdr9GKMNitvw_5names.exit.i: ; preds = %bb.s
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho7section20MachOSectionInternalINtNtBO_5macho12MachHeader64NtNtBO_6endian10EndiannessERShEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdr9GKMNitvw_5names(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho4file9MachOFileINtNtBK_5macho12MachHeader64NtNtBK_6endian10EndiannessEEECsdr9GKMNitvw_5names.exit unwind label %bb.v

bb.v:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho7segment20MachOSegmentInternalINtNtB1h_5macho12MachHeader64NtNtB1h_6endian10EndiannessERShEEECsdr9GKMNitvw_5names.exit.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho7section20MachOSectionInternalINtNtBV_5macho12MachHeader64NtNtBV_6endian10EndiannessERShEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdr9GKMNitvw_5names(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %common.resume unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.x:                                             ; preds = %.body.i2
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho4file9MachOFileINtNtBK_5macho12MachHeader64NtNtBK_6endian10EndiannessEEECsdr9GKMNitvw_5names.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho7segment20MachOSegmentInternalINtNtB1h_5macho12MachHeader64NtNtB1h_6endian10EndiannessERShEEECsdr9GKMNitvw_5names.exit.i
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho7section20MachOSectionInternalINtNtBV_5macho12MachHeader64NtNtBV_6endian10EndiannessERShEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdr9GKMNitvw_5names(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
  br label %bb.b

bb.y:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs9Jn0q30Ea0B_6object4read4wasm13SectionHeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdr9GKMNitvw_5names(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.z)
          to label %bb.aa unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9Jn0q30Ea0B_6object4read4wasm13SectionHeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdr9GKMNitvw_5names(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.z)
          to label %.body.i6 unwind label %bb.ab

bb.aa:                                            ; preds = %bb.y
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9Jn0q30Ea0B_6object4read4wasm13SectionHeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdr9GKMNitvw_5names(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.z)
          to label %bb.ad unwind label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body.i6

.body.i6:                                         ; preds = %bb.ac, %bb.z
  %eh.lpad-body.i7 = phi { ptr, i32 } [ %i.ac, %bb.ac ], [ %i.aa, %bb.z ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val2.i = load ptr, ptr %i.ad, align 8, !alias.scope !266, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef 224, i64 noundef 8) #22
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs9Jn0q30Ea0B_6object4read4wasm18WasmSymbolInternalEECsdr9GKMNitvw_5names(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ae) #20
          to label %common.resume unwind label %bb.ag

bb.ad:                                            ; preds = %bb.aa
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val.i = load ptr, ptr %i.af, align 8, !alias.scope !266, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 224, i64 noundef 8) #22
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs9Jn0q30Ea0B_6object4read4wasm18WasmSymbolInternalENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdr9GKMNitvw_5names(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9Jn0q30Ea0B_6object4read4wasm8WasmFileECsdr9GKMNitvw_5names.exit unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9Jn0q30Ea0B_6object4read4wasm18WasmSymbolInternalENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdr9GKMNitvw_5names(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %common.resume unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.ag:                                            ; preds = %.body.i6
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9Jn0q30Ea0B_6object4read4wasm8WasmFileECsdr9GKMNitvw_5names.exit: ; preds = %bb.ad
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9Jn0q30Ea0B_6object4read4wasm18WasmSymbolInternalENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdr9GKMNitvw_5names(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtCsi68uqYEhoRA_5gimli4read7aranges12DebugArangesNtCsdr9GKMNitvw_5names7SectionEINtB8_7SectionBV_E4loadQNCNvBX_4main0INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorEL_EEBX_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs2_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvCsdr9GKMNitvw_5names4main0INtB7_6FnOnceTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdEE9call_onceBS_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, i8 noundef 2)
  %i.b = load i64, ptr %i.a, align 8, !range !8, !noundef !5
  %i.c = icmp eq i64 %i.b, -2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load <2 x ptr>, ptr %i.d, align 8
  store <2 x ptr> %i.f, ptr %i.e, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtCsi68uqYEhoRA_5gimli4read8rnglists11DebugRangesNtCsdr9GKMNitvw_5names7SectionEINtB8_7SectionBV_E4loadQNCNvBX_4main0INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorEL_EEBX_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs2_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvCsdr9GKMNitvw_5names4main0INtB7_6FnOnceTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdEE9call_onceBS_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, i8 noundef 19)
  %i.b = load i64, ptr %i.a, align 8, !range !8, !noundef !5
  %i.c = icmp eq i64 %i.b, -2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load <2 x ptr>, ptr %i.d, align 8
  store <2 x ptr> %i.f, ptr %i.e, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtCsi68uqYEhoRA_5gimli4read8rnglists13DebugRngListsNtCsdr9GKMNitvw_5names7SectionEINtB8_7SectionBX_E4loadQNCNvBZ_4main0INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorEL_EEBZ_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs2_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvCsdr9GKMNitvw_5names4main0INtB7_6FnOnceTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdEE9call_onceBS_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, i8 noundef 20)
  %i.b = load i64, ptr %i.a, align 8, !range !8, !noundef !5
  %i.c = icmp eq i64 %i.b, -2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load <2 x ptr>, ptr %i.d, align 8
  store <2 x ptr> %i.f, ptr %i.e, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvCsdr9GKMNitvw_5names4main() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.4491 = alloca [7 x i8], align 1          ; 4 uses
  %.sroa.8303 = alloca [16 x i8], align 8         ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %.sroa.0125 = alloca [64 x i8], align 8         ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 9 uses
  %.sroa.054 = alloca [48 x i8], align 8          ; 4 uses
  %.sroa.733 = alloca [16 x i8], align 8          ; 3 uses
  %.sroa.0229 = alloca [120 x i8], align 8        ; 4 uses
  %i.f = alloca [160 x i8], align 8               ; 9 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 6 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [8 x i8], align 8                 ; 5 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 16               ; 5 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 7 uses
  %i.v = alloca [8 x i8], align 8                 ; 5 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [2 x i8], align 2                 ; 4 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [48 x i8], align 8                ; 14 uses
  %i.aa = alloca [72 x i8], align 8               ; 7 uses
  %i.ab = alloca [72 x i8], align 8               ; 8 uses
  %i.ac = alloca [56 x i8], align 16              ; 8 uses
  %i.ad = alloca [80 x i8], align 8               ; 7 uses
  %i.ae = alloca [80 x i8], align 8               ; 8 uses
  %i.af = alloca [24 x i8], align 8               ; 5 uses
  %i.ag = alloca [16 x i8], align 16              ; 5 uses
  %i.ah = alloca [160 x i8], align 8              ; 4 uses
  %i.ai = alloca [496 x i8], align 8              ; 9 uses
  %i.aj = alloca [496 x i8], align 8              ; 18 uses
  %i.ak = alloca [64 x i8], align 8               ; 5 uses
  %i.al = alloca [64 x i8], align 8               ; 2 uses
  %i.am = alloca [936 x i8], align 8              ; 12 uses
  %i.an = alloca [1152 x i8], align 8             ; 8 uses
  %i.ao = alloca [1152 x i8], align 8             ; 11 uses
  %i.ap = alloca [1 x i8], align 1                ; 5 uses
  %i.aq = alloca [304 x i8], align 8              ; 8 uses
  %i.ar = alloca [304 x i8], align 8              ; 15 uses
  %i.as = alloca [24 x i8], align 8               ; 7 uses
  %i.at = alloca [16 x i8], align 8               ; 8 uses
  %i.au = alloca [24 x i8], align 8               ; 4 uses
  %i.av = alloca [16 x i8], align 8               ; 7 uses
  %i.aw = alloca [4 x i8], align 4                ; 5 uses
  %i.ax = alloca [24 x i8], align 8               ; 5 uses
  %i.ay = alloca [24 x i8], align 8               ; 11 uses
  %i.az = alloca [24 x i8], align 8               ; 5 uses
  %i.ba = alloca [24 x i8], align 8               ; 6 uses
  %i.bb = alloca [24 x i8], align 8               ; 5 uses
  %i.bc = alloca [24 x i8], align 8               ; 6 uses
  %i.bd = alloca [16 x i8], align 8               ; 5 uses
  %i.be = alloca [24 x i8], align 8               ; 5 uses
  %i.bf = alloca [24 x i8], align 8               ; 8 uses
  %i.bg = alloca [32 x i8], align 8               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  call void @_RNvNtCsG258MDvU3F_3std3env4args(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bg)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.val = load ptr, ptr %i.bh, align 8, !nonnull !5, !noundef !5
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %.val445 = load ptr, ptr %i.bi, align 8, !nonnull !5, !noundef !5
  %i.bj = ptrtoint ptr %.val445 to i64
  %i.bk = ptrtoint ptr %.val to i64
  %i.bl = sub nuw i64 %i.bj, %i.bk
  %i.bm = icmp eq i64 %i.bl, 72
  br i1 %i.bm, label %bb.c, label %bb.d

.body449:                                         ; preds = %bb.ez, %bb.es, %.body442, %bb.k, %bb.g, %bb.ex, %bb.eu
  %.pn426.pn = phi { ptr, i32 } [ %lpad.thr_comm, %bb.eu ], [ %lpad.thr_comm.split-lp, %bb.k ], [ %i.it, %bb.ex ], [ %i.iq, %bb.es ], [ %i.iu, %bb.ez ], [ %i.bo, %bb.g ], [ %.pn424, %.body442 ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdr9GKMNitvw_5names(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bg)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env4ArgsECsdr9GKMNitvw_5names.exit unwind label %bb.dw

bb.b:                                             ; preds = %bb.n
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  invoke void @_RNvXsc_NtCsG258MDvU3F_3std3envNtB5_4ArgsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bb, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bg)
          to label %bb.e unwind label %bb.k

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  invoke void @_RNvXsc_NtCsG258MDvU3F_3std3envNtB5_4ArgsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.be, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bg)
          to label %bb.ev unwind label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.bn = load i64, ptr %i.bb, align 8, !range !7, !noundef !5
  %.not405 = icmp eq i64 %i.bn, -1
  br i1 %.not405, label %.invoke, label %bb.f, !prof !9

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdr9GKMNitvw_5names(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsdr9GKMNitvw_5names.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdr9GKMNitvw_5names(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %.body449 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsdr9GKMNitvw_5names.exit.i: ; preds = %bb.f
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdr9GKMNitvw_5names(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsdr9GKMNitvw_5names.exit unwind label %bb.k

.invoke:                                          ; preds = %bb.i, %bb.e, %bb.ev
  %i.bq = phi ptr [ @17, %bb.ev ], [ @1, %bb.e ], [ @2, %bb.i ]
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bq) #23
          to label %.cont unwind label %bb.k

.cont:                                            ; preds = %.invoke
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsdr9GKMNitvw_5names.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsdr9GKMNitvw_5names.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  invoke void @_RNvXsc_NtCsG258MDvU3F_3std3envNtB5_4ArgsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.az, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bg)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsdr9GKMNitvw_5names.exit
  %i.br = load i64, ptr %i.az, align 8, !range !7, !noundef !5
  %.not406 = icmp eq i64 %i.br, -1
  br i1 %.not406, label %.invoke, label %bb.j, !prof !9

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  invoke void @_RNvXsc_NtCsG258MDvU3F_3std3envNtB5_4ArgsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ax, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bg)
          to label %bb.l unwind label %bb.eu

bb.k:                                             ; preds = %.invoke, %bb.c, %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsdr9GKMNitvw_5names.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsdr9GKMNitvw_5names.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsdr9GKMNitvw_5names.exit.i476, %bb.az, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsdr9GKMNitvw_5names.exit.i470
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body449

bb.l:                                             ; preds = %bb.j
  %i.bs = load i64, ptr %i.ax, align 8, !range !7, !noundef !5
  %.not407 = icmp eq i64 %i.bs, -1
  br i1 %.not407, label %bb.n, label %bb.m, !prof !9

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 24, i1 false)
  invoke void @_RINvMs2_NtCsG258MDvU3F_3std2fsNtB6_4File4openNtNtCsexYYUdYSQU6_5alloc6string6StringECsdr9GKMNitvw_5names(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.av, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.au)
          to label %bb.p unwind label %bb.o

bb.n:                                             ; preds = %bb.l
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #23
          to label %bb.b unwind label %bb.eu

.body442:                                         ; preds = %bb.s, %bb.o, %.body
  %.pn424 = phi { ptr, i32 } [ %.pn422, %.body ], [ %i.bt, %bb.o ], [ %i.ca, %bb.s ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsdr9GKMNitvw_5names(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ay) #20
          to label %.body449 unwind label %bb.dw

bb.o:                                             ; preds = %bb.m
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %.body442

bb.p:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  %i.bu = load i32, ptr %i.av, align 8, !range !279, !noundef !5
  %i.bv = trunc nuw i32 %i.bu to i1
  br i1 %i.bv, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.bw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bx, ptr %i.a, align 8
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
  %i.by = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 8, 17) 8, i64 noundef 8) #22 ; 3 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.r, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE3newCsdr9GKMNitvw_5names.exit444, !prof !9

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #23
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.r
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdr9GKMNitvw_5names(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #20
          to label %.body442 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE3newCsdr9GKMNitvw_5names.exit444: ; preds = %bb.q
  store ptr %i.bx, ptr %i.by, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.er

bb.u:                                             ; preds = %bb.p
  %i.cc = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !range !280, !noundef !5 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  store i32 %i.cd, ptr %i.aw, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %i.ce, align 8
  store i64 0, ptr %i.g, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i8 0, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 26
  store i16 0, ptr %i.cg, align 2
  %i.ch = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  store i8 0, ptr %i.ch, align 4
  invoke void @_RINvMs0_CsgQ7e0lqRvgo_7memmap2NtB6_11MmapOptions3mapRNtNtCsG258MDvU3F_3std2fs4FileECsdr9GKMNitvw_5names(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.as, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.aw)
          to label %bb.w unwind label %bb.v

.body:                                            ; preds = %bb.ac, %bb.z, %bb.v
  %.pn422 = phi { ptr, i32 } [ %i.cq, %bb.z ], [ %i.cj, %bb.v ], [ %.pn420, %bb.ac ]
  %i.ci = call noundef i32 @close(i32 noundef %i.cd) #22 ; 0 uses
  br label %.body442

bb.v:                                             ; preds = %bb.ep, %bb.ay, %bb.u
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ck = load i64, ptr %i.as, align 8, !range !10, !noundef !5
  %i.cl = trunc nuw i64 %i.ck to i1
  %i.cm = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !noundef !5 ; 4 uses
  br i1 %i.cl, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.cn, ptr %i.b, align 8
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
  %i.co = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 8, 17) 8, i64 noundef 8) #22 ; 3 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %bb.y, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE3newCsdr9GKMNitvw_5names.exit, !prof !9

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #23
          to label %.noexc451 unwind label %bb.z

.noexc451:                                        ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.y
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdr9GKMNitvw_5names(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #20
          to label %.body unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE3newCsdr9GKMNitvw_5names.exit: ; preds = %bb.x
  store ptr %i.cn, ptr %i.co, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECsdr9GKMNitvw_5names.exit468

bb.ab:                                            ; preds = %bb.w
  %i.cs = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  store ptr %i.cn, ptr %i.at, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %i.ct, ptr %i.cu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  invoke void @_RNvMNtNtCs9Jn0q30Ea0B_6object4read3anyNtB2_4File5parseCsdr9GKMNitvw_5names(ptr noalias nofree noundef nonnull sret([304 x i8]) align 8 captures(none) dereferenceable(304) %i.aq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cn, i64 noundef %i.ct)
          to label %bb.ae unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ai, %bb.ad
  %.pn420 = phi { ptr, i32 } [ %i.cv, %bb.ad ], [ %.pn418, %bb.ai ]
  invoke void @_RNvXs_NtCsgQ7e0lqRvgo_7memmap22osNtB4_9MmapInnerNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.at)
          to label %.body unwind label %bb.dw

bb.ad:                                            ; preds = %bb.ag, %bb.eo, %bb.ax, %bb.ab
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ae:                                            ; preds = %bb.ab
  %i.cw = load i64, ptr %i.aq, align 8, !range !11, !noundef !5 ; 3 uses
  %i.cx = icmp eq i64 %i.cw, -1
  %i.cy = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8            ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.db = load i64, ptr %i.da, align 8            ; 2 uses
  br i1 %i.cx, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !281
  %i.dc = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 8, 17) 16, i64 noundef 8) #22, !noalias !281 ; 4 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %bb.ag, label %bb.eq, !prof !9

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #23
          to label %.noexc454 unwind label %bb.ad, !noalias !281

.noexc454:                                        ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.ae
  %.sroa.6221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.616.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.6221.0..sroa_idx, i64 280, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  store i64 %i.cw, ptr %i.ar, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.cz, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i64 %i.db, ptr %.sroa.515.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.experimental.noalias.scope.decl(metadata !282)
  switch i64 %i.cw, label %default.unreachable594 [
    i64 0, label %.split
    i64 1, label %_RNvXs0_NtNtCs9Jn0q30Ea0B_6object4read3anyNtB5_4FileNtNtB7_6traits6Object16is_little_endianCsdr9GKMNitvw_5names.exit
    i64 2, label %.split525
    i64 3, label %.split524
    i64 4, label %.split522
    i64 5, label %.split520
    i64 6, label %_RNvXs0_NtNtCs9Jn0q30Ea0B_6object4read3anyNtB5_4FileNtNtB7_6traits6Object16is_little_endianCsdr9GKMNitvw_5names.exit.thread
    i64 7, label %_RNvXs0_NtNtCs9Jn0q30Ea0B_6object4read3anyNtB5_4FileNtNtB7_6traits6Object16is_little_endianCsdr9GKMNitvw_5names.exit.thread
    i64 8, label %_RNvXs0_NtNtCs9Jn0q30Ea0B_6object4read3anyNtB5_4FileNtNtB7_6traits6Object16is_little_endianCsdr9GKMNitvw_5names.exit.thread
    i64 9, label %_RNvXs0_NtNtCs9Jn0q30Ea0B_6object4read3anyNtB5_4FileNtNtB7_6traits6Object16is_little_endianCsdr9GKMNitvw_5names.exit.thread516
    i64 10, label %_RNvXs0_NtNtCs9Jn0q30Ea0B_6object4read3anyNtB5_4FileNtNtB7_6traits6Object16is_little_endianCsdr9GKMNitvw_5names.exit.thread516
  ]

default.unreachable594:                           ; preds = %bb.cn, %bb.ah
  unreachable

.split:                                           ; preds = %bb.ah
  %.sroa.04.0.copyload.i = load i16, ptr %i.cz, align 1, !noalias !282
  %.sroa.04.0.copyload.i.fr = freeze i16 %.sroa.04.0.copyload.i
  %.not527 = icmp eq i16 %.sroa.04.0.copyload.i.fr, 498
  br i1 %.not527, label %_RNvXs0_NtNtCs9Jn0q30Ea0B_6object4read3anyNtB5_4FileNtNtB7_6traits6Object16is_little_endianCsdr9GKMNitvw_5names.exit.thread516, label %_RNvXs0_NtNtCs9Jn0q30Ea0B_6object4read3anyNtB5_4FileNtNtB7_6traits6Object16is_little_endianCsdr9GKMNitvw_5names.exit.thread

.split525:                                        ; preds = %bb.ah
  %i.de = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.df = load ptr, ptr %i.de, align 8, !alias.scope !282, !nonnull !5, !noundef !5
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 5
  %i.dh = load i8, ptr %i.dg, align 1, !noalias !282, !noundef !5
  %i.di = icmp eq i8 %i.dh, 1
  br i1 %i.di, label %_RNvXs0_NtNtCs9Jn0q30Ea0B_6object4read3anyNtB5_4FileNtNtB7_6traits6Object16is_little_endianCsdr9GKMNitvw_5names.exit.thread, label %_RNvXs0_NtNtCs9Jn0q30Ea0B_6object4read3anyNtB5_4FileNtNtB7_6traits6Object16is_little_endianCsdr9GKMNitvw_5names.exit.thread516

.split524:                                        ; preds = %bb.ah
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.dk = load ptr, ptr %i.dj, align 8, !alias.scope !282, !nonnull !5, !noundef !5
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 5
  %i.dm = load i8, ptr %i.dl, align 1, !noalias !282, !noundef !5
  %i.dn = icmp eq i8 %i.dm, 1
  br i1 %i.dn, label %_RNvXs0_NtNtCs9Jn0q30Ea0B_6object4read3anyNtB5_4FileNtNtB7_6traits6Object16is_little_endianCsdr9GKMNitvw_5names.exit.thread, label %_RNvXs0_NtNtCs9Jn0q30Ea0B_6object4read3anyNtB5_4FileNtNtB7_6traits6Object16is_little_endianCsdr9GKMNitvw_5names.exit.thread516

.split522:                                        ; preds = %bb.ah
  %i.do = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %i.dp = load ptr, ptr %i.do, align 8, !alias.scope !282, !nonnull !5, !noundef !5
  %.sroa.02.0.copyload.i = load i32, ptr %i.dp, align 1, !noalias !282
  %.sroa.02.0.copyload.i.fr = freeze i32 %.sroa.02.0.copyload.i
  %i.dq = icmp eq i32 %.sroa.02.0.copyload.i.fr, -17958194
  br i1 %i.dq, label %_RNvXs0_NtNtCs9Jn0q30Ea0B_6object4read3anyNtB5_4FileNtNtB7_6traits6Object16is_little_endianCsdr9GKMNitvw_5names.exit.thread, label %_RNvXs0_NtNtCs9Jn0q30Ea0B_6object4read3anyNtB5_4FileNtNtB7_6traits6Object16is_little_endianCsdr9GKMNitvw_5names.exit.thread516

.split520:                                        ; preds = %bb.ah
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %i.ds = load ptr, ptr %i.dr, align 8, !alias.scope !282, !nonnull !5, !noundef !5
  %.sroa.01.0.copyload.i = load i32, ptr %i.ds, align 1, !noalias !282
  %.sroa.01.0.copyload.i.fr = freeze i32 %.sroa.01.0.copyload.i
  %i.dt = icmp eq i32 %.sroa.01.0.copyload.i.fr, -17958193
  br i1 %i.dt, label %_RNvXs0_NtNtCs9Jn0q30Ea0B_6object4read3anyNtB5_4FileNtNtB7_6traits6Object16is_little_endianCsdr9GKMNitvw_5names.exit.thread, label %_RNvXs0_NtNtCs9Jn0q30Ea0B_6object4read3anyNtB5_4FileNtNtB7_6traits6Object16is_little_endianCsdr9GKMNitvw_5names.exit.thread516

bb.ai:                                            ; preds = %.body465, %bb.aj
  %.pn418 = phi { ptr, i32 } [ %i.du, %bb.aj ], [ %.pn416, %.body465 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9Jn0q30Ea0B_6object4read3any4FileECsdr9GKMNitvw_5names(ptr noalias nofree noundef align 8 dereferenceable(304) %i.ar) #20
          to label %bb.ac unwind label %bb.dw

bb.aj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEEEB2Z_.exit, %bb.aw, %_RNvXs0_NtNtCs9Jn0q30Ea0B_6object4read3anyNtB5_4FileNtNtB7_6traits6Object16is_little_endianCsdr9GKMNitvw_5names.exit.thread516
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

_RNvXs0_NtNtCs9Jn0q30Ea0B_6object4read3anyNtB5_4FileNtNtB7_6traits6Object16is_little_endianCsdr9GKMNitvw_5names.exit: ; preds = %bb.ah
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cz, i64 6
  %.sroa.03.0.copyload.i = load i16, ptr %i.dv, align 1, !noalias !282
  %.sroa.03.0.copyload.i.fr = freeze i16 %.sroa.03.0.copyload.i
  %.not526 = icmp eq i16 %.sroa.03.0.copyload.i.fr, 498
  br i1 %.not526, label %_RNvXs0_NtNtCs9Jn0q30Ea0B_6object4read3anyNtB5_4FileNtNtB7_6traits6Object16is_little_endianCsdr9GKMNitvw_5names.exit.thread516, label %_RNvXs0_NtNtCs9Jn0q30Ea0B_6object4read3anyNtB5_4FileNtNtB7_6traits6Object16is_little_endianCsdr9GKMNitvw_5names.exit.thread

_RNvXs0_NtNtCs9Jn0q30Ea0B_6object4read3anyNtB5_4FileNtNtB7_6traits6Object16is_little_endianCsdr9GKMNitvw_5names.exit.thread: ; preds = %bb.ah, %bb.ah, %bb.ah, %.split525, %.split524, %.split522, %.split520, %.split, %_RNvXs0_NtNtCs9Jn0q30Ea0B_6object4read3anyNtB5_4FileNtNtB7_6traits6Object16is_little_endianCsdr9GKMNitvw_5names.exit
  br label %_RNvXs0_NtNtCs9Jn0q30Ea0B_6object4read3anyNtB5_4FileNtNtB7_6traits6Object16is_little_endianCsdr9GKMNitvw_5names.exit.thread516

_RNvXs0_NtNtCs9Jn0q30Ea0B_6object4read3anyNtB5_4FileNtNtB7_6traits6Object16is_little_endianCsdr9GKMNitvw_5names.exit.thread516: ; preds = %bb.ah, %bb.ah, %.split525, %.split524, %.split522, %.split520, %.split, %_RNvXs0_NtNtCs9Jn0q30Ea0B_6object4read3anyNtB5_4FileNtNtB7_6traits6Object16is_little_endianCsdr9GKMNitvw_5names.exit, %_RNvXs0_NtNtCs9Jn0q30Ea0B_6object4read3anyNtB5_4FileNtNtB7_6traits6Object16is_little_endianCsdr9GKMNitvw_5names.exit.thread
  %i.dw = phi i8 [ 0, %_RNvXs0_NtNtCs9Jn0q30Ea0B_6object4read3anyNtB5_4FileNtNtB7_6traits6Object16is_little_endianCsdr9GKMNitvw_5names.exit.thread ], [ 1, %_RNvXs0_NtNtCs9Jn0q30Ea0B_6object4read3anyNtB5_4FileNtNtB7_6traits6Object16is_little_endianCsdr9GKMNitvw_5names.exit ], [ 1, %.split525 ], [ 1, %.split ], [ 1, %.split520 ], [ 1, %.split522 ], [ 1, %.split524 ], [ 1, %bb.ah ], [ 1, %bb.ah ]
  store i8 %i.dw, ptr %i.ap, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  invoke void @_RINvMNtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB3_13DwarfSectionsNtCsdr9GKMNitvw_5names7SectionE4loadNCNvBZ_4main0INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorEL_EEBZ_(ptr noalias nofree noundef nonnull sret([1152 x i8]) align 8 captures(none) dereferenceable(1152) %i.an, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(304) %i.ar)
          to label %bb.ak unwind label %bb.aj

bb.ak:                                            ; preds = %_RNvXs0_NtNtCs9Jn0q30Ea0B_6object4read3anyNtB5_4FileNtNtB7_6traits6Object16is_little_endianCsdr9GKMNitvw_5names.exit.thread516
  %i.dx = load i64, ptr %i.an, align 8, !range !8, !noundef !5 ; 2 uses
  %i.dy = icmp eq i64 %i.dx, -2
  %i.dz = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8            ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8            ; 2 uses
  br i1 %i.dy, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  br label %bb.eo

bb.am:                                            ; preds = %bb.ak
  %.sroa.6225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %.sroa.630.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1128) %.sroa.630.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1128) %.sroa.6225.0..sroa_idx, i64 1128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  store i64 %i.dx, ptr %i.ao, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.ea, ptr %.sroa.428.0..sroa_idx, align 8
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr %i.ec, ptr %.sroa.529.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  invoke void @_RINvMNtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB3_13DwarfSectionsNtCsdr9GKMNitvw_5names7SectionE6borrowNCNvBZ_4mains_0INtNtB5_8relocate14RelocateReaderINtNtB5_12endian_slice11EndianSliceNtNtB7_9endianity13RunTimeEndianERNtBZ_13RelocationMapEEBZ_(ptr noalias nofree noundef nonnull sret([936 x i8]) align 8 captures(none) dereferenceable(936) %i.am, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1152) %i.ao, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.ap)
          to label %bb.ao unwind label %bb.an

.body465:                                         ; preds = %bb.ek, %bb.an, %.body461
  %.pn416 = phi { ptr, i32 } [ %.pn414, %.body461 ], [ %i.ed, %bb.an ], [ %i.ik, %bb.ek ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf13DwarfSectionsNtCsdr9GKMNitvw_5names7SectionEEB1u_(ptr noalias nofree noundef align 8 dereferenceable(1152) %i.ao) #20
          to label %bb.ai unwind label %bb.dw

bb.an:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtB1A_8relocate14RelocateReaderINtNtB1A_12endian_slice11EndianSliceNtNtB1C_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEEEEEB3W_.exit.i, %bb.av, %bb.am
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %.body465

bb.ao:                                            ; preds = %bb.am
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !nonnull !5, !noundef !5
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %i.eh = load i64, ptr %i.eg, align 8, !noundef !5
  %i.ei = invoke noundef i32 @_RNvNtCsi68uqYEhoRA_5gimli9case_fold21case_folding_djb_hash(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ef, i64 noundef %i.eh)
          to label %bb.ap unwind label %.loopexit.split-lp539.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.body461:                                         ; preds = %.loopexit.split-lp539.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ef, %.body458
  %.pn414 = phi { ptr, i32 } [ %.pn, %.body458 ], [ %i.ic, %bb.ef ], [ %lpad.loopexit.split-lp666, %.loopexit.split-lp539.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEEEB2Z_(ptr noalias nofree noundef align 8 dereferenceable(936) %i.am) #20
          to label %.body465 unwind label %bb.dw

.loopexit.split-lp539.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bp, %bb.au, %bb.ar, %bb.bd, %bb.at, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli4read5names17NameAbbreviationsECsdr9GKMNitvw_5names.exit.i, %bb.ap, %bb.ao
  %lpad.loopexit.split-lp666 = landingpad { ptr, i32 }
          cleanup
  br label %.body461

bb.ap:                                            ; preds = %bb.ao
  %i.ej = getelementptr inbounds nuw i8, ptr %i.am, i64 480
  invoke void @_RNvMs0_NtNtCsi68uqYEhoRA_5gimli4read5namesINtB5_10DebugNamesINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEE7headersB2C_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.al, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ej)
          to label %bb.aq unwind label %.loopexit.split-lp539.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ak, ptr noundef nonnull align 8 dereferenceable(64) %i.al, i64 64, i1 false)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %.sroa.5243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 121
  %.sroa.838.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %i.ah, i64 120
  %.sroa.941.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %i.ah, i64 121
  %.sroa.4251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.5252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.el = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %.sroa.5259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 49
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 49
  %i.en = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.am, i64 536
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %.sroa.8280.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %.sroa.9281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.er = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.et = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %.sroa.5296.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 65
  %.sroa.2132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %.sroa.3133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 65
  %.sroa.4313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.5314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.4141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %.sroa.5142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.eu = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %.sroa.4324.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.4328.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.4394.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.4380.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.4372.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.4358.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %.sroa.4350.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.4398.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.4402.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.bq, %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMs3_NtNtCsi68uqYEhoRA_5gimli4read5namesINtB5_19NameIndexHeaderIterINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEE4nextB2L_(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ak)
          to label %bb.as unwind label %.loopexit.split-lp539.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.as:                                            ; preds = %bb.ar
  %i.ez = load i8, ptr %i.ek, align 8, !range !283, !noundef !5 ; 2 uses
  switch i8 %i.ez, label %bb.au [
    i8 -1, label %bb.at
    i8 2, label %bb.av
  ]

bb.at:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0229, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %i.fa = invoke fastcc noundef nonnull align 8 ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 16) #24
          to label %bb.en unwind label %.loopexit.split-lp539.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.au:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.0229, ptr noundef nonnull align 8 dereferenceable(120) %i.f, i64 120, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.941.0..sroa_idx42, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5243.0..sroa_idx, i64 39, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ah, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.0229, i64 120, i1 false)
  store i8 %i.ez, ptr %.sroa.838.0..sroa_idx39, align 8
  invoke void @_RNvMs6_NtNtCsi68uqYEhoRA_5gimli4read5namesINtB5_9NameIndexINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEE3newB2A_(ptr noalias nofree noundef nonnull sret([496 x i8]) align 8 captures(none) dereferenceable(496) %i.ai, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(160) %i.ah)
          to label %bb.bc unwind label %.loopexit.split-lp539.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.av:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEEEB2Z_(ptr noalias nofree noundef align 8 dereferenceable(936) %i.am)
          to label %bb.aw unwind label %bb.an

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf13DwarfSectionsNtCsdr9GKMNitvw_5names7SectionEEB1u_(ptr noalias nofree noundef align 8 dereferenceable(1152) %i.ao)
          to label %bb.ax unwind label %bb.aj

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9Jn0q30Ea0B_6object4read3any4FileECsdr9GKMNitvw_5names(ptr noalias nofree noundef align 8 dereferenceable(304) %i.ar)
          to label %bb.ay unwind label %bb.ad

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  invoke void @_RNvXs_NtCsgQ7e0lqRvgo_7memmap22osNtB4_9MmapInnerNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.at)
          to label %bb.az unwind label %bb.v

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  %i.fb = call noundef i32 @close(i32 noundef %i.cd) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsdr9GKMNitvw_5names(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ay)
          to label %bb.ba unwind label %bb.k

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br label %bb.bb

bb.bb:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsdr9GKMNitvw_5names.exit474, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsdr9GKMNitvw_5names.exit480, %bb.ba
  %.sroa.21.0 = phi ptr [ undef, %bb.ba ], [ %.sroa.21.13, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsdr9GKMNitvw_5names.exit474 ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsdr9GKMNitvw_5names.exit480 ]
  %.sroa.0.0 = phi ptr [ null, %bb.ba ], [ %.sroa.0.13, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsdr9GKMNitvw_5names.exit474 ], [ null, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsdr9GKMNitvw_5names.exit480 ]
  call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdr9GKMNitvw_5names(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  %i.fc = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.fd = insertvalue { ptr, ptr } %i.fc, ptr %.sroa.21.0, 1
  ret { ptr, ptr } %i.fd

bb.bc:                                            ; preds = %bb.au
  %i.fe = load i64, ptr %i.ai, align 8, !range !7, !noundef !5 ; 2 uses
  %i.ff = icmp eq i64 %i.fe, -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.733, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4251.0..sroa_idx, i64 16, i1 false)
  br i1 %i.ff, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  %i.fg = invoke fastcc noundef nonnull align 8 ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 16) #24
          to label %bb.em unwind label %.loopexit.split-lp539.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.be:                                            ; preds = %bb.bc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(472) %.sroa.545.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(472) %.sroa.5252.0..sroa_idx, i64 472, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.444.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.733, i64 16, i1 false)
  store i64 %i.fe, ptr %i.aj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  invoke void @_RNvMs6_NtNtCsi68uqYEhoRA_5gimli4read5namesINtB5_9NameIndexINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEE20default_compile_unitB2A_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(496) %i.aj)
          to label %bb.bf unwind label %.loopexit.split-lp529.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.body458:                                         ; preds = %.loopexit.split-lp529.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.du, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp661, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.hz, %bb.du ], [ %lpad.loopexit.split-lp669, %.loopexit.split-lp529.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5names9NameIndexINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEEEB33_(ptr noalias nofree noundef align 8 dereferenceable(496) %i.aj) #20
          to label %.body461 unwind label %bb.dw

.loopexit.split-lp529.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.backedge, %bb.bo, %bb.bt, %bb.by, %bb.cc, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCsi68uqYEhoRA_5gimli4read5names13NameAttributeINtNtB1d_8relocate14RelocateReaderINtNtB1d_12endian_slice11EndianSliceNtNtB1f_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEEEEB3I_.exit.i, %bb.bh, %bb.be, %bb.ce, %bb.ca, %bb.bv, %bb.bs, %bb.bm, %bb.bj, %bb.bg, %bb.cv
  %lpad.loopexit.split-lp669 = landingpad { ptr, i32 }
          cleanup
  br label %.body458

bb.bf:                                            ; preds = %bb.be
  %i.fh = load i64, ptr %i.af, align 8, !range !10, !noundef !5
  %i.fi = trunc nuw i64 %i.fh to i1
  %i.fj = load <2 x i64>, ptr %i.el, align 8      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br i1 %i.fi, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.fk = invoke fastcc noundef nonnull align 8 ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 16) #24
          to label %bb.eh unwind label %.loopexit.split-lp529.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.bh:                                            ; preds = %bb.bf
  store <2 x i64> %i.fj, ptr %i.ag, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  invoke void @_RNvMsb_NtNtCsi68uqYEhoRA_5gimli4read5namesINtB5_12NameHashIterINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEE3newB2E_(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(496) %i.aj, i32 noundef %i.ei)
          to label %bb.bi unwind label %.loopexit.split-lp529.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bi:                                            ; preds = %bb.bh
  %i.fl = load i8, ptr %i.em, align 8, !range !283, !noundef !5 ; 2 uses
  %i.fm = icmp eq i8 %i.fl, -1
  br i1 %i.fm, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.054, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.fn = invoke fastcc noundef nonnull align 8 ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 16) #24
          to label %bb.ed unwind label %.loopexit.split-lp529.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.054, ptr noundef nonnull align 8 dereferenceable(48) %i.ae, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.5259.0..sroa_idx, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.054, i64 48, i1 false)
  store i8 %i.fl, ptr %.sroa.2.0..sroa_idx, align 8
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvMsb_NtNtCsi68uqYEhoRA_5gimli4read5namesINtB5_12NameHashIterINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEE4nextB2E_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.ad)
          to label %bb.bl unwind label %.loopexit.split-lp529.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bl:                                            ; preds = %.backedge
  %i.fo = load i8, ptr %i.e, align 8, !range !284, !noundef !5
  %.not409 = icmp eq i8 %i.fo, -1
  br i1 %.not409, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %.sroa.0266.0.copyload = load i32, ptr %i.e, align 8
  %.sroa.4267.0.copyload = load i32, ptr %i.en, align 4
  %.sroa.5268.0.copyload = load i64, ptr %i.eo, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.fp = invoke fastcc noundef nonnull align 8 ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 16) #24
          to label %bb.ec unwind label %.loopexit.split-lp529.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.bn:                                            ; preds = %bb.bl
  %i.fq = load i32, ptr %i.en, align 4, !range !279, !noundef !5
  %i.fr = trunc nuw i32 %i.fq to i1
  br i1 %i.fr, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.fs = load i32, ptr %i.eo, align 8, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  invoke void @_RNvMs6_NtNtCsi68uqYEhoRA_5gimli4read5namesINtB5_9NameIndexINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEE11name_stringB2A_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(496) %i.aj, i32 noundef %i.fs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ep)
          to label %bb.br unwind label %.loopexit.split-lp529.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5names9NameIndexINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEEEB33_(ptr noalias nofree noundef align 8 dereferenceable(496) %i.aj)
          to label %bb.bq unwind label %.loopexit.split-lp539.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.ar

bb.br:                                            ; preds = %bb.bo
  %i.ft = load i8, ptr %i.eq, align 16, !range !285, !noundef !5
  %i.fu = icmp eq i8 %i.ft, 2
  br i1 %i.fu, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.fv = load <2 x ptr>, ptr %i.ac, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %i.fw = invoke fastcc noundef nonnull align 8 ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 16) #24
          to label %bb.eb unwind label %.loopexit.split-lp529.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bt:                                            ; preds = %bb.br
  %.sroa.8280.0.copyload = load ptr, ptr %.sroa.8280.0..sroa_idx, align 16, !nonnull !5, !noundef !5
  %.sroa.9281.0.copyload = load i64, ptr %.sroa.9281.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.8280.0.copyload, i64 noundef %.sroa.9281.0.copyload)
          to label %bb.bu unwind label %.loopexit.split-lp529.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bu:                                            ; preds = %bb.bt
  %i.fx = load i64, ptr %i.d, align 8, !range !10, !noundef !5
  %i.fy = trunc nuw i64 %i.fx to i1
  br i1 %i.fy, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.fz = invoke fastcc noundef nonnull align 8 ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 16) #24
          to label %bb.ea unwind label %.loopexit.split-lp529.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bw:                                            ; preds = %bb.bu
  %i.ga = load ptr, ptr %i.er, align 8, !nonnull !5, !noundef !5
  %i.gb = load i64, ptr %i.es, align 8, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.gc = load i64, ptr %i.eg, align 8, !noundef !5
  %i.gd = icmp eq i64 %i.gc, %i.gb
  br i1 %i.gd, label %bb.bx, label %.backedge.backedge

bb.bx:                                            ; preds = %bb.bw
  %i.ge = load ptr, ptr %i.ee, align 8, !nonnull !5, !noundef !5
  %bcmp = call i32 @bcmp(ptr nonnull %i.ge, ptr nonnull %i.ga, i64 %i.gb)
  %.not410 = icmp eq i32 %bcmp, 0
  br i1 %.not410, label %bb.by, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.bx, %bb.bw, %bb.cg
  br label %.backedge

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  invoke void @_RNvMsd_NtNtCsi68uqYEhoRA_5gimli4read5namesINtB5_13NameEntryIterINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEE3newB2F_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(496) %i.aj, i32 noundef %i.fs)
          to label %bb.bz unwind label %.loopexit.split-lp529.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bz:                                            ; preds = %bb.by
  %i.gf = load i8, ptr %i.et, align 8, !range !285, !noundef !5 ; 2 uses
  %i.gg = icmp eq i8 %i.gf, 2
  br i1 %i.gg, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0125, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.gh = invoke fastcc noundef nonnull align 8 ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 16) #24
          to label %bb.dy unwind label %.loopexit.split-lp529.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.cb:                                            ; preds = %bb.bz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0125, ptr noundef nonnull align 8 dereferenceable(64) %i.ab, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3133.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5296.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aa, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0125, i64 64, i1 false)
  store i8 %i.gf, ptr %.sroa.2132.0..sroa_idx, align 8
  br label %bb.cc

bb.cc:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5names9NameEntryINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEEEB33_.exit, %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMsd_NtNtCsi68uqYEhoRA_5gimli4read5namesINtB5_13NameEntryIterINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEE4nextB2F_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.aa)
          to label %bb.cd unwind label %.loopexit.split-lp529.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cd:                                            ; preds = %bb.cc
  %i.gi = load i64, ptr %i.c, align 8, !range !8, !noundef !5 ; 2 uses
  switch i64 %i.gi, label %bb.cf [
    i64 -2, label %bb.ce
    i64 -1, label %bb.cg
  ]

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8303, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4313.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.gj = invoke fastcc noundef nonnull align 8 ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 16) #24
          to label %bb.dx unwind label %.loopexit.split-lp529.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.cf:                                            ; preds = %bb.cd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8303, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4313.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5142.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5314.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4141.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8303, i64 16, i1 false)
  store i64 %i.gi, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr %i.eu, ptr %i.y, align 8
  store ptr @_RNvXs10_NtCsi68uqYEhoRA_5gimli9constantsNtB6_5DwTagNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.4324.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsG258MDvU3F_3std2io5stdio6__print(ptr noundef nonnull @4, ptr noundef nonnull %i.y)
          to label %bb.ch unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cg:                                            ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %.backedge.backedge

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.cj, %bb.ck, %bb.cl, %bb.cr, %bb.cy, %bb.db, %bb.di, %bb.dl, %.critedge, %bb.dr, %bb.cf, %bb.dm, %bb.dh, %bb.dc, %bb.cx, %bb.cq
  %lpad.loopexit.split-lp661 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5names9NameEntryINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEEEB33_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.z) #20
          to label %.body458 unwind label %bb.dw

bb.ch:                                            ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.gk = load ptr, ptr %.sroa.4141.0..sroa_idx, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.gl = load i64, ptr %i.ev, align 8, !noundef !5 ; 2 uses
  %.idx = mul nuw nsw i64 %i.gl, 24
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 %.idx
  %i.gn = icmp eq i64 %i.gl, 0
  br i1 %i.gn, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ch, %bb.ct
  %.sroa.0143.0561 = phi i1 [ %.sroa.0143.1, %bb.ct ], [ true, %bb.ch ] ; 4 uses
  %.sroa.0144.0560 = phi ptr [ %i.go, %bb.ct ], [ %i.gk, %bb.ch ] ; 15 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.0144.0560, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.0144.0560, i64 16 ; 2 uses
  %i.gq = load i16, ptr %i.gp, align 8, !noundef !5
  store i16 %i.gq, ptr %i.x, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr %i.x, ptr %i.w, align 8
  store ptr @_RNvXs4i_NtCsi68uqYEhoRA_5gimli9constantsNtB6_5DwIdxNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.4328.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsG258MDvU3F_3std2io5stdio6__print(ptr noundef nonnull @5, ptr noundef nonnull %i.w)
          to label %bb.ci unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge:                                      ; preds = %bb.ct
  br i1 %.sroa.0143.1, label %.critedge, label %bb.dr

bb.ci:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.gr = load i16, ptr %i.gp, align 8, !noundef !5
  switch i16 %i.gr, label %bb.cj [
    i16 1, label %bb.ck
    i16 2, label %bb.cl
    i16 3, label %bb.cm
    i16 4, label %bb.cn
    i16 5, label %bb.co
  ]

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %.sroa.0144.0560, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.j, ptr %i.i, align 8
  store ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtNtCsi68uqYEhoRA_5gimli4read5names18NameAttributeValueINtNtBB_8relocate14RelocateReaderINtNtBB_12endian_slice11EndianSliceNtNtBD_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEENtB6_5Debug3fmtB38_, ptr %.sroa.4398.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsG258MDvU3F_3std2io5stdio6__print(ptr noundef nonnull @6, ptr noundef nonnull %i.i)
          to label %bb.dq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ck:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  invoke void @_RNvMsg_NtNtCsi68uqYEhoRA_5gimli4read5namesINtB5_13NameAttributeINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEE12compile_unitB2F_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0144.0560, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(496) %i.aj)
          to label %bb.cp unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cl:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  invoke void @_RNvMsg_NtNtCsi68uqYEhoRA_5gimli4read5namesINtB5_13NameAttributeINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEE9type_unitB2F_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0144.0560, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(496) %i.aj)
          to label %bb.cw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
end_hunk_0
begin_hunk_1_@_RNvCsdr9GKMNitvw_5names4main:bb.a
  %i.he = invoke fastcc noundef nonnull align 8 ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 16) #24
          to label %bb.da unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.cy:                                            ; preds = %bb.cw
  store <2 x i64> %i.hd, ptr %i.s, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %i.s, ptr %i.q, align 8
  store ptr @_RNvXsz_NtNtCsi68uqYEhoRA_5gimli4read5namesINtB5_12NameTypeUnitjENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsdr9GKMNitvw_5names, ptr %.sroa.4358.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsG258MDvU3F_3std2io5stdio6__print(ptr noundef nonnull @9, ptr noundef nonnull %i.q)
          to label %bb.cz unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.ct

bb.da:                                            ; preds = %bb.cx
  %i.hf = extractelement <2 x i64> %i.hd, i64 0
  store i64 %i.hf, ptr %i.he, align 8
  %.sroa.4494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hg = extractelement <2 x i64> %i.hd, i64 1
  store i64 %i.hg, ptr %.sroa.4494.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.cv

bb.db:                                            ; preds = %bb.cm
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.0144.0560, i64 8
  %i.hi = load i64, ptr %i.hh, align 8, !noundef !5
  store i64 %i.hi, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.p, ptr %i.o, align 8
  store ptr @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8LowerHex3fmt, ptr %.sroa.4372.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsG258MDvU3F_3std2io5stdio6__print(ptr noundef nonnull @6, ptr noundef nonnull %i.o)
          to label %bb.dd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dc:                                            ; preds = %bb.cm
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.0144.0560, i64 18
  %i.hk = load i16, ptr %i.hj, align 2, !noundef !5
  %i.hl = invoke fastcc noundef nonnull align 8 ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 16) #24
          to label %bb.de unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.dd:                                            ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ct

bb.de:                                            ; preds = %bb.dc
  store i8 64, ptr %i.hl, align 8
  %.sroa.4497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hl, i64 2
  store i16 %i.hk, ptr %.sroa.4497.0..sroa_idx, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.cv

bb.df:                                            ; preds = %bb.cn
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.0144.0560, i64 8
  %i.hn = load i64, ptr %i.hm, align 8, !noundef !5
  br label %bb.di

bb.dg:                                            ; preds = %bb.cn
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.0144.0560, i64 1
  %i.hp = load i8, ptr %i.ho, align 1, !range !6, !noundef !5
  %i.hq = trunc nuw i8 %i.hp to i1
  br i1 %i.hq, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.cn
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.0144.0560, i64 18
  %i.hs = load i16, ptr %i.hr, align 2, !noundef !5
  %i.ht = invoke fastcc noundef nonnull align 8 ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 16) #24
          to label %bb.dk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.di:                                            ; preds = %bb.dg, %bb.df
  %.sroa.11191.0 = phi i64 [ %i.hn, %bb.df ], [ undef, %bb.dg ]
  %.sroa.6189.0 = phi i64 [ 1, %bb.df ], [ 0, %bb.dg ]
  store i64 %.sroa.6189.0, ptr %i.n, align 8
  store i64 %.sroa.11191.0, ptr %i.ew, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.n, ptr %i.m, align 8
  store ptr @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCsi68uqYEhoRA_5gimli4read5names15NameEntryOffsetENtNtB7_3fmt5Debug3fmtCsdr9GKMNitvw_5names, ptr %.sroa.4380.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsG258MDvU3F_3std2io5stdio6__print(ptr noundef nonnull @6, ptr noundef nonnull %i.m)
          to label %bb.dj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ct

bb.dk:                                            ; preds = %bb.dh
  %.sroa.0334.2.insert.ext = zext i16 %i.hs to i64
  %.sroa.0334.2.insert.shift = shl nuw nsw i64 %.sroa.0334.2.insert.ext, 16
  %.sroa.0334.0.insert.insert = or disjoint i64 %.sroa.0334.2.insert.shift, 64
  store i64 %.sroa.0334.0.insert.insert, ptr %i.ht, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.cv

bb.dl:                                            ; preds = %bb.co
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.0144.0560, i64 8
  %i.hv = load i64, ptr %i.hu, align 8, !noundef !5
  store i64 %i.hv, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.l, ptr %i.k, align 8
  store ptr @_RNvXsC_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8LowerHex3fmt, ptr %.sroa.4394.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsG258MDvU3F_3std2io5stdio6__print(ptr noundef nonnull @10, ptr noundef nonnull %i.k)
          to label %bb.dn unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dm:                                            ; preds = %bb.co
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.0144.0560, i64 18
  %i.hx = load i16, ptr %i.hw, align 2, !noundef !5
  %i.hy = invoke fastcc noundef nonnull align 8 ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 16) #24
          to label %bb.do unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.dn:                                            ; preds = %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ct

bb.do:                                            ; preds = %bb.dm
  store i8 64, ptr %i.hy, align 8
  %.sroa.4503.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hy, i64 2
  store i16 %i.hx, ptr %.sroa.4503.0..sroa_idx, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.cv

bb.dp:                                            ; preds = %bb.dx, %bb.cv
  %.sroa.0.2 = phi ptr [ %i.gj, %bb.dx ], [ %.sroa.0.1, %bb.cv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.dz

bb.dq:                                            ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ct

bb.dr:                                            ; preds = %bb.ds, %._crit_edge
  invoke void @_RNvNtNtCsG258MDvU3F_3std2io5stdio6__print(ptr noundef nonnull @12, ptr noundef nonnull inttoptr (i64 3 to ptr))
          to label %bb.dt unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.critedge:                                        ; preds = %bb.ch, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.ag, ptr %i.h, align 8
  store ptr @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCsi68uqYEhoRA_5gimli6common15DebugInfoOffsetENtNtB7_3fmt5Debug3fmtCsdr9GKMNitvw_5names, ptr %.sroa.4402.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsG258MDvU3F_3std2io5stdio6__print(ptr noundef nonnull @11, ptr noundef nonnull %i.h)
          to label %bb.ds unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ds:                                            ; preds = %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.dr

bb.dt:                                            ; preds = %bb.dr
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsi68uqYEhoRA_5gimli4read5names13NameAttributeINtNtBK_8relocate14RelocateReaderINtNtBK_12endian_slice11EndianSliceNtNtBM_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB3c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.z)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCsi68uqYEhoRA_5gimli4read5names13NameAttributeINtNtB1d_8relocate14RelocateReaderINtNtB1d_12endian_slice11EndianSliceNtNtB1f_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEEEEB3I_.exit.i unwind label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.hz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsi68uqYEhoRA_5gimli4read5names13NameAttributeINtNtBR_8relocate14RelocateReaderINtNtBR_12endian_slice11EndianSliceNtNtBT_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB3j_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.z)
          to label %.body458 unwind label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.ia = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCsi68uqYEhoRA_5gimli4read5names13NameAttributeINtNtB1d_8relocate14RelocateReaderINtNtB1d_12endian_slice11EndianSliceNtNtB1f_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEEEEB3I_.exit.i: ; preds = %bb.dt
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsi68uqYEhoRA_5gimli4read5names13NameAttributeINtNtBR_8relocate14RelocateReaderINtNtBR_12endian_slice11EndianSliceNtNtBT_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB3j_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.z)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5names9NameEntryINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEEEB33_.exit unwind label %.loopexit.split-lp529.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5names9NameEntryINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEEEB33_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCsi68uqYEhoRA_5gimli4read5names13NameAttributeINtNtB1d_8relocate14RelocateReaderINtNtB1d_12endian_slice11EndianSliceNtNtB1f_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEEEEB3I_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.cc

bb.dw:                                            ; preds = %bb.ac, %.body449, %bb.ex, %bb.eu, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body458, %.body461, %.body465, %bb.ai, %.body442
  %i.ib = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.dx:                                            ; preds = %bb.ce
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gj, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8303, i64 16, i1 false)
  br label %bb.dp

bb.dy:                                            ; preds = %bb.ca
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gh, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0125, i64 16, i1 false)
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dp, %bb.dy, %bb.ea, %bb.eb, %bb.ec
  %.sroa.0.4 = phi ptr [ %i.fp, %bb.ec ], [ %i.fz, %bb.ea ], [ %i.fw, %bb.eb ], [ %i.gh, %bb.dy ], [ %.sroa.0.2, %bb.dp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.ee

bb.ea:                                            ; preds = %bb.bv
  store ptr inttoptr (i64 26 to ptr), ptr %i.fz, align 8
  br label %bb.dz

bb.eb:                                            ; preds = %bb.bs
  store <2 x ptr> %i.fv, ptr %i.fw, align 8
  br label %bb.dz

bb.ec:                                            ; preds = %bb.bm
  %0 = freeze i32 %.sroa.0266.0.copyload
  %1 = zext i32 %0 to i64
  %2 = freeze i32 %.sroa.4267.0.copyload
  %3 = zext i32 %2 to i64
  %4 = shl nuw i64 %3, 32
  %5 = or disjoint i64 %4, %1
  store i64 %5, ptr %i.fp, align 8
  %.sroa.6485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store i64 %.sroa.5268.0.copyload, ptr %.sroa.6485.0..sroa_idx, align 8
  br label %bb.dz

bb.ed:                                            ; preds = %bb.bj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fn, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.054, i64 16, i1 false)
  br label %bb.ee

bb.ee:                                            ; preds = %bb.dz, %bb.ed, %bb.eh
  %.sroa.0.7 = phi ptr [ %i.fk, %bb.eh ], [ %i.fn, %bb.ed ], [ %.sroa.0.4, %bb.dz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsi68uqYEhoRA_5gimli4read5names16NameAbbreviationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdr9GKMNitvw_5names(ptr noalias nofree noundef nonnull align 8 dereferenceable(496) %i.aj)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli4read5names17NameAbbreviationsECsdr9GKMNitvw_5names.exit.i unwind label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.ic = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli4read5names16NameAbbreviationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdr9GKMNitvw_5names(ptr noalias nofree noundef nonnull align 8 dereferenceable(496) %i.aj)
          to label %.body461 unwind label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.id = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli4read5names17NameAbbreviationsECsdr9GKMNitvw_5names.exit.i: ; preds = %bb.ee
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli4read5names16NameAbbreviationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdr9GKMNitvw_5names(ptr noalias nofree noundef nonnull align 8 dereferenceable(496) %i.aj)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5names9NameIndexINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEEEB33_.exit unwind label %.loopexit.split-lp539.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.eh:                                            ; preds = %bb.bg
  %i.ie = extractelement <2 x i64> %i.fj, i64 0
  store i64 %i.ie, ptr %i.fk, align 8
  %.sroa.4482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.if = extractelement <2 x i64> %i.fj, i64 1
  store i64 %i.if, ptr %.sroa.4482.0..sroa_idx, align 8
  br label %bb.ee

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5names9NameIndexINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEEEB33_.exit: ; preds = %bb.em, %bb.en, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli4read5names17NameAbbreviationsECsdr9GKMNitvw_5names.exit.i
  %.sroa.0.8 = phi ptr [ %.sroa.0.7, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli4read5names17NameAbbreviationsECsdr9GKMNitvw_5names.exit.i ], [ %i.fa, %bb.en ], [ %i.fg, %bb.em ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.experimental.noalias.scope.decl(metadata !286)
  call void @llvm.experimental.noalias.scope.decl(metadata !287)
  %i.ig = load ptr, ptr %i.am, align 8, !alias.scope !288, !noundef !5 ; 2 uses
  %i.ih = icmp eq ptr %i.ig, null
  br i1 %i.ih, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtB1A_8relocate14RelocateReaderINtNtB1A_12endian_slice11EndianSliceNtNtB1C_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEEEEEB3W_.exit.i, label %bb.ei

bb.ei:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5names9NameIndexINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEEEB33_.exit
  %i.ii = atomicrmw add ptr %i.ig, i64 -1 release, align 8, !noalias !289
  %i.ij = icmp eq i64 %i.ii, 1
  br i1 %i.ij, label %bb.ej, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtB1A_8relocate14RelocateReaderINtNtB1A_12endian_slice11EndianSliceNtNtB1C_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEEEEEB3W_.exit.i

bb.ej:                                            ; preds = %bb.ei
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtBL_8relocate14RelocateReaderINtNtBL_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEEE9drop_slowB34_(ptr noalias nofree noundef nonnull align 8 dereferenceable(936) %i.am) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtB1A_8relocate14RelocateReaderINtNtB1A_12endian_slice11EndianSliceNtNtB1C_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEEEEEB3W_.exit.i unwind label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.ik = landingpad { ptr, i32 }
          cleanup
  %i.il = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapyINtNtCskKLDkoKarTP_4core6result6ResultINtNtB8_4sync3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsENtB22_5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsdr9GKMNitvw_5names(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.il)
          to label %.body465 unwind label %bb.el

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtB1A_8relocate14RelocateReaderINtNtB1A_12endian_slice11EndianSliceNtNtB1C_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEEEEEB3W_.exit.i: ; preds = %bb.ej, %bb.ei, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5names9NameIndexINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEEEB33_.exit
  %i.im = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapyINtNtCskKLDkoKarTP_4core6result6ResultINtNtB8_4sync3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsENtB22_5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsdr9GKMNitvw_5names(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.im)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEEEB2Z_.exit unwind label %bb.an

bb.el:                                            ; preds = %bb.ek
  %i.in = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.em:                                            ; preds = %bb.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fg, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.733, i64 16, i1 false)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5names9NameIndexINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEEEB33_.exit

bb.en:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fa, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0229, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5names9NameIndexINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEEEB33_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEEEB2Z_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtB1A_8relocate14RelocateReaderINtNtB1A_12endian_slice11EndianSliceNtNtB1C_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEEEEEB3W_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf13DwarfSectionsNtCsdr9GKMNitvw_5names7SectionEEB1u_(ptr noalias nofree noundef align 8 dereferenceable(1152) %i.ao)
          to label %bb.eo unwind label %bb.aj

bb.eo:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEEEB2Z_.exit, %bb.al
  %.sroa.21.10 = phi ptr [ %i.ec, %bb.al ], [ @8, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEEEB2Z_.exit ]
  %.sroa.0.10 = phi ptr [ %i.ea, %bb.al ], [ %.sroa.0.8, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEEEB2Z_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9Jn0q30Ea0B_6object4read3any4FileECsdr9GKMNitvw_5names(ptr noalias nofree noundef align 8 dereferenceable(304) %i.ar)
          to label %bb.ep unwind label %bb.ad

bb.ep:                                            ; preds = %bb.eq, %bb.eo
  %.sroa.21.11 = phi ptr [ @14, %bb.eq ], [ %.sroa.21.10, %bb.eo ]
  %.sroa.0.11 = phi ptr [ %i.dc, %bb.eq ], [ %.sroa.0.10, %bb.eo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  invoke void @_RNvXs_NtCsgQ7e0lqRvgo_7memmap22osNtB4_9MmapInnerNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.at)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECsdr9GKMNitvw_5names.exit468 unwind label %bb.v

bb.eq:                                            ; preds = %bb.af
  store ptr %i.cz, ptr %i.dc, align 8, !noalias !281
  %i.io = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store i64 %i.db, ptr %i.io, align 8
  br label %bb.ep

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECsdr9GKMNitvw_5names.exit468: ; preds = %bb.ep, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE3newCsdr9GKMNitvw_5names.exit
  %.sroa.21.12 = phi ptr [ @16, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE3newCsdr9GKMNitvw_5names.exit ], [ %.sroa.21.11, %bb.ep ]
  %.sroa.0.12 = phi ptr [ %i.co, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE3newCsdr9GKMNitvw_5names.exit ], [ %.sroa.0.11, %bb.ep ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  %i.ip = call noundef i32 @close(i32 noundef %i.cd) #22 ; 0 uses
  br label %bb.er

bb.er:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECsdr9GKMNitvw_5names.exit468, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE3newCsdr9GKMNitvw_5names.exit444
  %.sroa.21.13 = phi ptr [ %.sroa.21.12, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECsdr9GKMNitvw_5names.exit468 ], [ @16, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE3newCsdr9GKMNitvw_5names.exit444 ]
  %.sroa.0.13 = phi ptr [ %.sroa.0.12, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECsdr9GKMNitvw_5names.exit468 ], [ %i.by, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE3newCsdr9GKMNitvw_5names.exit444 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdr9GKMNitvw_5names(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsdr9GKMNitvw_5names.exit.i470 unwind label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.iq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdr9GKMNitvw_5names(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %.body449 unwind label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.ir = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsdr9GKMNitvw_5names.exit.i470: ; preds = %bb.er
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdr9GKMNitvw_5names(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsdr9GKMNitvw_5names.exit474 unwind label %bb.k

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsdr9GKMNitvw_5names.exit474: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsdr9GKMNitvw_5names.exit.i470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br label %bb.bb

bb.eu:                                            ; preds = %bb.n, %bb.j
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsdr9GKMNitvw_5names(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ba) #20
          to label %.body449 unwind label %bb.dw

bb.ev:                                            ; preds = %bb.d
  %i.is = load i64, ptr %i.be, align 8, !range !7, !noundef !5
  %.not = icmp eq i64 %i.is, -1
  br i1 %.not, label %.invoke, label %bb.ew, !prof !9

bb.ew:                                            ; preds = %bb.ev
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %i.be, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  store ptr %i.bf, ptr %i.bd, align 8
  %.sroa.4217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.4217.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsG258MDvU3F_3std2io5stdio6__print(ptr noundef nonnull @18, ptr noundef nonnull %i.bd)
          to label %bb.ey unwind label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.it = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsdr9GKMNitvw_5names(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bf) #20
          to label %.body449 unwind label %bb.dw

bb.ey:                                            ; preds = %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdr9GKMNitvw_5names(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsdr9GKMNitvw_5names.exit.i476 unwind label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.iu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdr9GKMNitvw_5names(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %.body449 unwind label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.iv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsdr9GKMNitvw_5names.exit.i476: ; preds = %bb.ey
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdr9GKMNitvw_5names(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsdr9GKMNitvw_5names.exit480 unwind label %bb.k

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsdr9GKMNitvw_5names.exit480: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsdr9GKMNitvw_5names.exit.i476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  br label %bb.bb

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env4ArgsECsdr9GKMNitvw_5names.exit: ; preds = %.body449
  resume { ptr, i32 } %.pn426.pn
end_hunk_1
