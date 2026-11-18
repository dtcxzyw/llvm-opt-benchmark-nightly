Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontir-5cde1a390add4703.fontir.28c8796742607b47-cgu.03?download=true
inline.NumInlined: 645
inline.NumDeleted: 361
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvXs_NtNtCs3v5ql5U6hxj_6fontir2ir12test_helpersNtB6_21GlobalMetricsInstanceNtB4_6Round26round2:bb.a
  %i.cl = load <2 x double>, ptr %i.h, align 8
  %i.cm = fmul <2 x double> %i.cl, splat (double 1.000000e+02)
  %i.cn = call <2 x double> @llvm.round.v2f64(<2 x double> %i.cm)
  %i.co = fdiv <2 x double> %i.cn, splat (double 1.000000e+02)
  store <2 x double> %i.co, ptr %i.ck, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.cq = load <2 x double>, ptr %i.i, align 8
  %i.cr = fmul <2 x double> %i.cq, splat (double 1.000000e+02)
  %i.cs = call <2 x double> @llvm.round.v2f64(<2 x double> %i.cr)
  %i.ct = fdiv <2 x double> %i.cs, splat (double 1.000000e+02)
  store <2 x double> %i.ct, ptr %i.cp, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.cv = load <2 x double>, ptr %i.j, align 8
  %i.cw = fmul <2 x double> %i.cv, splat (double 1.000000e+02)
  %i.cx = call <2 x double> @llvm.round.v2f64(<2 x double> %i.cw)
  %i.cy = fdiv <2 x double> %i.cx, splat (double 1.000000e+02)
  store <2 x double> %i.cy, ptr %i.cu, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 280
  store double %i.u, ptr %i.cz, align 8
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1l_15NormalizedSpaceEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(288) %1)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir2ir21GlobalMetricsInstanceEBF_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.da = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1s_15NormalizedSpaceEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(288) %1)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.da, %bb.d ], [ %i.b, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir2ir21GlobalMetricsInstanceEBF_.exit: ; preds = %bb.c
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1s_15NormalizedSpaceEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(288) %1)
  ret void

bb.f:                                             ; preds = %bb.b
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsc_NtCs3v5ql5U6hxj_6fontir2irNtB5_13GlobalMetricsNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq(ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB5_7HashMapNtNtCs3v5ql5U6hxj_6fontir2ir12GlobalMetricINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15VariationRegionIB1K_dEEEENtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eqB17_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsn_NtCs3v5ql5U6hxj_6fontir2irNtB5_5GlyphINtNtB7_13orchestration7IdAwareNtBJ_6WorkIdE2id(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !range !10, !noundef !4
  %i.d = icmp eq i8 %i.c, 25
  br i1 %i.d, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RNvNvXs_Cs9NoVXegZYB5_8smol_strNtB6_7SmolStrNtNtCsf3Ta7LF998c_4core5clone5Clone5clone10cold_clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b) #25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  store i64 2, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXso_NtCs3v5ql5U6hxj_6fontir2irNtB5_15KerningInstanceINtNtB7_13orchestration7IdAwareNtBU_6WorkIdE2id(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1l_15NormalizedSpaceEEENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  store i64 9, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsp_NtCs3v5ql5U6hxj_6fontir2irNtB5_12GlyphAnchorsINtNtB7_13orchestration7IdAwareNtBR_6WorkIdE2id(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !range !10, !noundef !4
  %i.d = icmp eq i8 %i.c, 25
  br i1 %i.d, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RNvNvXs_Cs9NoVXegZYB5_8smol_strNtB6_7SmolStrNtNtCsf3Ta7LF998c_4core5clone5Clone5clone10cold_clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b) #25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  store i64 10, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCsf3Ta7LF998c_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsr_NtCs3v5ql5U6hxj_6fontir2irNtB5_12GlyphBuilderINtNtCsf3Ta7LF998c_4core7convert4FromNtB5_5GlyphE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) initializes((0, 121)) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(152) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.c = load i8, ptr %i.b, align 8, !range !13, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 %i.c, ptr %i.h, align 8
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1l_15NormalizedSpaceEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBE_15NormalizedSpaceEECs3v5ql5U6hxj_6fontir.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1s_15NormalizedSpaceEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1V_15NormalizedSpaceEEEECs3v5ql5U6hxj_6fontir.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1V_15NormalizedSpaceEEEECs3v5ql5U6hxj_6fontir.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBE_15NormalizedSpaceEECs3v5ql5U6hxj_6fontir.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1s_15NormalizedSpaceEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCsf3Ta7LF998c_4core3fmtSNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentNtB5_5Debug3fmtBz_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 96076792050570582) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentINtNtNtBa_5slice4iter4IterB14_EEB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !18, !noundef !4
  switch i64 %i.a, label %default.unreachable260 [
    i64 0, label %.preheader
    i64 1, label %bb.q
    i64 2, label %bb.r
  ]

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.d = load i8, ptr %i.c, align 2, !range !13
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.j = load i64, ptr %i.i, align 8              ; 16 uses
  br i1 %i.e, label %_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3v5ql5U6hxj_6fontir.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %.promoted205 = load i8, ptr %i.f, align 8      ; 4 uses
  %.promoted156 = load i64, ptr %i.b, align 8     ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !980)
  %i.k = trunc nuw i8 %.promoted205 to i1         ; 2 uses
  %i.l = icmp eq i64 %.promoted156, 0
  br i1 %i.l, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader
  %.not.i.i.us.peel = icmp ult i64 %.promoted156, %i.j
  br i1 %.not.i.i.us.peel, label %bb.c, label %.split.i.i.us.peel

.split.i.i.us.peel:                               ; preds = %bb.b
  %i.m = icmp eq i64 %.promoted156, %i.j
  br i1 %i.m, label %bb.d, label %.split.us160

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %.promoted156
  %i.o = load i8, ptr %i.n, align 1, !alias.scope !981, !noalias !982, !noundef !4
  %i.p = icmp sgt i8 %i.o, -65
  br i1 %i.p, label %bb.d, label %.split.us160

bb.d:                                             ; preds = %bb.c, %.split.i.i.us.peel, %.lr.ph.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 %.promoted156 ; 4 uses
  %i.r = icmp samesign eq i64 %.promoted156, %i.j
  br i1 %i.r, label %.split165.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i8, ptr %i.q, align 1, !noalias !983, !noundef !4 ; 5 uses
  %i.t = icmp sgt i8 %i.s, -1
  br i1 %i.t, label %bb.f, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3v5ql5U6hxj_6fontir.exit12.i.i.us.peel

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3v5ql5U6hxj_6fontir.exit12.i.i.us.peel: ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.v = and i8 %i.s, 31
  %i.w = zext nneg i8 %i.v to i32                 ; 3 uses
  %i.x = add nuw nsw i64 %.promoted156, 1
  %i.y = icmp samesign ne i64 %i.x, %i.j
  tail call void @llvm.assume(i1 %i.y)
  %i.z = load i8, ptr %i.u, align 1, !noalias !983, !noundef !4
  %i.aa = shl nuw nsw i32 %i.w, 6
  %i.ab = and i8 %i.z, 63
  %i.ac = zext nneg i8 %i.ab to i32               ; 2 uses
  %i.ad = or disjoint i32 %i.aa, %i.ac
  %i.ae = icmp samesign ugt i8 %i.s, -33
  br i1 %i.ae, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3v5ql5U6hxj_6fontir.exit14.i.i.us.peel, label %bb.g

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3v5ql5U6hxj_6fontir.exit14.i.i.us.peel: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3v5ql5U6hxj_6fontir.exit12.i.i.us.peel
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.ag = add nuw nsw i64 %.promoted156, 2
  %i.ah = icmp samesign ne i64 %i.ag, %i.j
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = load i8, ptr %i.af, align 1, !noalias !983, !noundef !4
  %i.aj = shl nuw nsw i32 %i.ac, 6
  %i.ak = and i8 %i.ai, 63
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = or disjoint i32 %i.aj, %i.al            ; 2 uses
  %i.an = shl nuw nsw i32 %i.w, 12
  %i.ao = or disjoint i32 %i.am, %i.an
  %i.ap = icmp samesign ugt i8 %i.s, -17
  br i1 %i.ap, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3v5ql5U6hxj_6fontir.exit16.i.i.us.peel, label %bb.g

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3v5ql5U6hxj_6fontir.exit16.i.i.us.peel: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3v5ql5U6hxj_6fontir.exit14.i.i.us.peel
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 3
  %i.ar = add nuw nsw i64 %.promoted156, 3
  %i.as = icmp samesign ne i64 %i.ar, %i.j
  tail call void @llvm.assume(i1 %i.as)
  %i.at = load i8, ptr %i.aq, align 1, !noalias !983, !noundef !4
  %i.au = shl nuw nsw i32 %i.w, 18
  %i.av = and i32 %i.au, 1835008
  %i.aw = shl nuw nsw i32 %i.am, 6
  %i.ax = and i8 %i.at, 63
  %i.ay = zext nneg i8 %i.ax to i32
  %i.az = or disjoint i32 %i.aw, %i.ay
  %i.ba = or disjoint i32 %i.az, %i.av
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bb = zext nneg i8 %i.s to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3v5ql5U6hxj_6fontir.exit16.i.i.us.peel, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3v5ql5U6hxj_6fontir.exit14.i.i.us.peel, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3v5ql5U6hxj_6fontir.exit12.i.i.us.peel
  %.sroa.4.0.i.ph.i.us.peel = phi i32 [ %i.ao, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3v5ql5U6hxj_6fontir.exit14.i.i.us.peel ], [ %i.ba, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3v5ql5U6hxj_6fontir.exit16.i.i.us.peel ], [ %i.ad, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3v5ql5U6hxj_6fontir.exit12.i.i.us.peel ], [ %i.bb, %bb.f ] ; 4 uses
  %i.bc = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.peel, 1114112
  tail call void @llvm.assume(i1 %i.bc)
  br i1 %i.k, label %.loopexit41.split.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.peel, 128
  br i1 %i.bd, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.us.peel, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.peel, 2048
  br i1 %i.be, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.us.peel, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.peel, 65536
  %..i.us.peel = select i1 %i.bf, i64 3, i64 4
  br label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.us.peel

_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.us.peel: ; preds = %bb.j, %bb.i, %bb.h
  %.sroa.01.0.i.us.peel = phi i64 [ 2, %bb.i ], [ %..i.us.peel, %bb.j ], [ 1, %bb.h ]
  %i.bg = add i64 %.sroa.01.0.i.us.peel, %.promoted156 ; 13 uses
  store i64 %i.bg, ptr %i.b, align 8, !alias.scope !980
  %i.bh = icmp eq i64 %i.bg, 0
  %.not.i.i.us = icmp ult i64 %i.bg, %i.j
  %i.bi = icmp eq i64 %i.bg, %i.j
  %i.bj = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.bg
  %i.bk = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.bg ; 4 uses
  %i.bl = icmp samesign eq i64 %i.bg, %i.j
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  %i.bn = add nuw nsw i64 %i.bg, 1
  %i.bo = icmp samesign ne i64 %i.bn, %i.j
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %i.bq = add nuw nsw i64 %i.bg, 2
  %i.br = icmp samesign ne i64 %i.bq, %i.j
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 3
  %i.bt = add nuw nsw i64 %i.bg, 3
  %i.bu = icmp samesign ne i64 %i.bt, %i.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !984)
  br i1 %i.bh, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.us.peel
  br i1 %.not.i.i.us, label %bb.l, label %.split.i.i.us

.split.i.i.us:                                    ; preds = %bb.k
  br i1 %i.bi, label %bb.m, label %.split.us160

bb.l:                                             ; preds = %bb.k
  %i.bv = load i8, ptr %i.bj, align 1, !alias.scope !981, !noalias !985, !noundef !4
  %i.bw = icmp sgt i8 %i.bv, -65
  br i1 %i.bw, label %bb.m, label %.split.us160

bb.m:                                             ; preds = %bb.l, %.split.i.i.us, %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.us.peel
  br i1 %i.bl, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = load i8, ptr %i.bk, align 1, !noalias !986, !noundef !4 ; 5 uses
  %i.by = icmp sgt i8 %i.bx, -1
  br i1 %i.by, label %bb.o, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3v5ql5U6hxj_6fontir.exit12.i.i.us

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3v5ql5U6hxj_6fontir.exit12.i.i.us: ; preds = %bb.n
  %i.bz = and i8 %i.bx, 31
  %i.ca = zext nneg i8 %i.bz to i32               ; 3 uses
  tail call void @llvm.assume(i1 %i.bo)
  %i.cb = load i8, ptr %i.bm, align 1, !noalias !986, !noundef !4
  %i.cc = shl nuw nsw i32 %i.ca, 6
  %i.cd = and i8 %i.cb, 63
  %i.ce = zext nneg i8 %i.cd to i32               ; 2 uses
  %i.cf = or disjoint i32 %i.cc, %i.ce
  %i.cg = icmp samesign ugt i8 %i.bx, -33
  br i1 %i.cg, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3v5ql5U6hxj_6fontir.exit14.i.i.us, label %.loopexit41.split.us.loopexit

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3v5ql5U6hxj_6fontir.exit14.i.i.us: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3v5ql5U6hxj_6fontir.exit12.i.i.us
  tail call void @llvm.assume(i1 %i.br)
  %i.ch = load i8, ptr %i.bp, align 1, !noalias !986, !noundef !4
  %i.ci = shl nuw nsw i32 %i.ce, 6
  %i.cj = and i8 %i.ch, 63
  %i.ck = zext nneg i8 %i.cj to i32
  %i.cl = or disjoint i32 %i.ci, %i.ck            ; 2 uses
  %i.cm = shl nuw nsw i32 %i.ca, 12
  %i.cn = or disjoint i32 %i.cl, %i.cm
  %i.co = icmp samesign ugt i8 %i.bx, -17
  br i1 %i.co, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3v5ql5U6hxj_6fontir.exit16.i.i.us, label %.loopexit41.split.us.loopexit

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3v5ql5U6hxj_6fontir.exit16.i.i.us: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3v5ql5U6hxj_6fontir.exit14.i.i.us
  tail call void @llvm.assume(i1 %i.bu)
  %i.cp = load i8, ptr %i.bs, align 1, !noalias !986, !noundef !4
  %i.cq = shl nuw nsw i32 %i.ca, 18
  %i.cr = and i32 %i.cq, 1835008
  %i.cs = shl nuw nsw i32 %i.cl, 6
  %i.ct = and i8 %i.cp, 63
  %i.cu = zext nneg i8 %i.ct to i32
  %i.cv = or disjoint i32 %i.cs, %i.cu
  %i.cw = or disjoint i32 %i.cv, %i.cr
  br label %.loopexit41.split.us.loopexit

bb.o:                                             ; preds = %bb.n
  %i.cx = zext nneg i8 %i.bx to i32
  br label %.loopexit41.split.us.loopexit

.loopexit41.split.us.loopexit:                    ; preds = %bb.o, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3v5ql5U6hxj_6fontir.exit16.i.i.us, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3v5ql5U6hxj_6fontir.exit14.i.i.us, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3v5ql5U6hxj_6fontir.exit12.i.i.us
  %.sroa.4.0.i.ph.i.us = phi i32 [ %i.cn, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3v5ql5U6hxj_6fontir.exit14.i.i.us ], [ %i.cw, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3v5ql5U6hxj_6fontir.exit16.i.i.us ], [ %i.cf, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3v5ql5U6hxj_6fontir.exit12.i.i.us ], [ %i.cx, %bb.o ]
  %i.cy = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us, 1114112
  tail call void @llvm.assume(i1 %i.cy)
  br label %.loopexit41.split.us

.split.us160:                                     ; preds = %bb.l, %.split.i.i.us, %bb.c, %.split.i.i.us.peel
  %.lcssa322 = phi i64 [ %.promoted156, %.split.i.i.us.peel ], [ %.promoted156, %bb.c ], [ %i.bg, %.split.i.i.us ], [ %i.bg, %bb.l ]
  %.lcssa319 = phi i8 [ %.promoted205, %.split.i.i.us.peel ], [ %.promoted205, %bb.c ], [ 1, %.split.i.i.us ], [ 1, %bb.l ]
  %i.cz = xor i8 %.lcssa319, 1
  store i8 %i.cz, ptr %i.f, align 8, !alias.scope !984
  tail call void @_RNvNtCsf3Ta7LF998c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.j, i64 noundef %.lcssa322, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #28, !noalias !985
  unreachable

.split165.us:                                     ; preds = %bb.d
  %i.da = xor i8 %.promoted205, 1
  store i8 %i.da, ptr %i.f, align 8, !alias.scope !984
  br i1 %i.k, label %bb.s, label %bb.p

.loopexit41.split.us:                             ; preds = %.loopexit41.split.us.loopexit, %bb.g
  %.lcssa324 = phi i64 [ %.promoted156, %bb.g ], [ %i.bg, %.loopexit41.split.us.loopexit ]
  store i8 0, ptr %i.f, align 8, !alias.scope !984
  br label %bb.s

default.unreachable260:                           ; preds = %bb.a
  unreachable

bb.p:                                             ; preds = %.split165.us
  store i8 1, ptr %i.c, align 2, !alias.scope !984
  br label %_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3v5ql5U6hxj_6fontir.exit

bb.q:                                             ; preds = %bb.a
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dc = load i64, ptr %i.db, align 8, !noundef !4 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.de = load i64, ptr %i.dd, align 8, !noundef !4 ; 4 uses
  %.not = icmp ult i64 %i.de, %i.dc
  br i1 %.not, label %bb.t, label %_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3v5ql5U6hxj_6fontir.exit

bb.r:                                             ; preds = %bb.a
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.dh = load i64, ptr %i.dg, align 8, !noundef !4 ; 2 uses
  %i.di = icmp eq i64 %i.dh, -1
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dk = load ptr, ptr %i.dj, align 8, !nonnull !4, !noundef !4 ; 6 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dm = load i64, ptr %i.dl, align 8, !noundef !4 ; 10 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.do = load ptr, ptr %i.dn, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.dq = load i64, ptr %i.dp, align 8, !noundef !4 ; 14 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 8 uses
  %i.ds = add nsw i64 %i.dq, -1                   ; 4 uses
  br i1 %i.di, label %bb.ae, label %bb.w

.critedge:                                        ; preds = %bb.m
  store i8 0, ptr %i.f, align 8, !alias.scope !984
  br label %bb.s

bb.s:                                             ; preds = %.critedge, %.loopexit41.split.us, %.split165.us
  %i.dt = phi i64 [ %.lcssa324, %.loopexit41.split.us ], [ %i.j, %.split165.us ], [ %i.j, %.critedge ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dt, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dt, ptr %i.dv, align 8
  br label %_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3v5ql5U6hxj_6fontir.exit

_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3v5ql5U6hxj_6fontir.exit: ; preds = %bb.s, %bb.p, %.preheader, %.split.us.i20, %._crit_edge.i12, %.split.us.i10, %._crit_edge.i, %.loopexit42, %.loopexit43, %bb.q
  %storemerge.i.sink = phi i64 [ 1, %.loopexit42 ], [ 1, %.split.us.i10 ], [ 0, %bb.q ], [ 1, %.split.us.i20 ], [ 0, %.loopexit43 ], [ 0, %._crit_edge.i ], [ 0, %._crit_edge.i12 ], [ 1, %bb.s ], [ 0, %bb.p ], [ 0, %.preheader ]
  store i64 %storemerge.i.sink, ptr %0, align 8
  ret void

bb.t:                                             ; preds = %bb.q
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dx = load ptr, ptr %i.dw, align 8, !nonnull !4, !noundef !4
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dz = load i8, ptr %i.dy, align 8, !noundef !4 ; 2 uses
  %i.ea = sub nuw i64 %i.dc, %i.de                ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.de ; 2 uses
  %i.ec = icmp samesign ult i64 %i.ea, 16
  br i1 %i.ec, label %.lr.ph.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ed = tail call { i64, i64 } @_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr14memchr_aligned(i8 noundef %i.dz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eb, i64 noundef range(i64 0, -9223372036854775808) %i.ea) ; 2 uses
  %i.ee = extractvalue { i64, i64 } %i.ed, 0
  %i.ef = extractvalue { i64, i64 } %i.ed, 1
  %i.eg = trunc nuw i64 %i.ee to i1
  br i1 %i.eg, label %.loopexit42, label %.loopexit43

.lr.ph.i:                                         ; preds = %bb.t, %bb.v
  %.sroa.04.011.i = phi i64 [ %i.ek, %bb.v ], [ 0, %bb.t ] ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.sroa.04.011.i
  %i.ei = load i8, ptr %i.eh, align 1, !alias.scope !987, !noundef !4
  %i.ej = icmp eq i8 %i.ei, %i.dz
  br i1 %i.ej, label %.loopexit42, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i
  %i.ek = add nuw nsw i64 %.sroa.04.011.i, 1      ; 2 uses
  %exitcond.not.i7 = icmp eq i64 %i.ek, %i.ea
  br i1 %exitcond.not.i7, label %.loopexit43, label %.lr.ph.i

.loopexit42:                                      ; preds = %.lr.ph.i, %bb.u
  %.sroa.5.0.i = phi i64 [ %i.ef, %bb.u ], [ %.sroa.04.011.i, %.lr.ph.i ] ; 2 uses
  %i.el = icmp ult i64 %.sroa.5.0.i, %i.ea
  tail call void @llvm.assume(i1 %i.el)
  %i.em = add i64 %.sroa.5.0.i, %i.de             ; 2 uses
  %i.en = add i64 %i.em, 1                        ; 2 uses
  store i64 %i.en, ptr %i.dd, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.em, ptr %i.eo, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.en, ptr %i.ep, align 8
  br label %_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3v5ql5U6hxj_6fontir.exit

.loopexit43:                                      ; preds = %bb.v, %bb.u
  store i64 %i.dc, ptr %i.dd, align 8
  br label %_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3v5ql5U6hxj_6fontir.exit

bb.w:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !988)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !989)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !990)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !991)
  %.promoted.i = load i64, ptr %i.dr, align 8, !alias.scope !989 ; 2 uses
  %i.eq = add i64 %.promoted.i, %i.ds             ; 2 uses
  %i.er = icmp ult i64 %i.eq, %i.dm
  br i1 %i.er, label %.lr.ph.i8, label %._crit_edge.i

.lr.ph.i8:                                        ; preds = %bb.w
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.et = load i64, ptr %i.es, align 8, !alias.scope !989, !noundef !4
  %i.eu = load i64, ptr %i.df, align 8, !alias.scope !989 ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ew = load i64, ptr %i.ev, align 8, !alias.scope !989 ; 2 uses
  %i.ex = sub i64 %i.dq, %i.ew
  %invariant.op = sub i64 1, %i.eu
  br label %.lr.ph.split.i

._crit_edge.i:                                    ; preds = %bb.z, %bb.w
  store i64 %i.dm, ptr %i.dr, align 8, !alias.scope !989
  br label %_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3v5ql5U6hxj_6fontir.exit

.lr.ph.split.i:                                   ; preds = %bb.z, %.lr.ph.i8
  %i.ey = phi i64 [ %.sink70.i, %bb.z ], [ %i.dh, %.lr.ph.i8 ] ; 3 uses
  %i.ez = phi i64 [ %i.fk, %bb.z ], [ %i.eq, %.lr.ph.i8 ]
  %i.fa = phi i64 [ %.sink71.i, %bb.z ], [ %.promoted.i, %.lr.ph.i8 ] ; 7 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.ez
  %i.fc = load i8, ptr %i.fb, align 1, !alias.scope !990, !noundef !4
  %i.fd = and i8 %i.fc, 63
  %i.fe = zext nneg i8 %i.fd to i64
  %i.ff = shl nuw i64 1, %i.fe
  %i.fg = and i64 %i.ff, %i.et
  %.not.i9 = icmp eq i64 %i.fg, 0
  br i1 %.not.i9, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph.split.i
  %i.fh = add i64 %i.fa, %i.dq
  br label %bb.z

bb.y:                                             ; preds = %.lr.ph.split.i
  %i.fi = tail call i64 @llvm.umax.i64(i64 %i.eu, i64 %i.ey) ; 2 uses
  %i.fj = icmp ult i64 %i.fi, %i.dq
  br i1 %i.fj, label %.lr.ph305, label %.preheader36.i.preheader

bb.z:                                             ; preds = %bb.ad, %bb.ac, %bb.x
  %.sink71.i = phi i64 [ %i.gi, %bb.ad ], [ %i.gh, %bb.ac ], [ %i.fh, %bb.x ] ; 3 uses
  %.sink70.i = phi i64 [ 0, %bb.ad ], [ %i.ex, %bb.ac ], [ 0, %bb.x ] ; 2 uses
  store i64 %.sink71.i, ptr %i.dr, align 8, !alias.scope !989
  store i64 %.sink70.i, ptr %i.dg, align 8, !alias.scope !989
  %i.fk = add i64 %.sink71.i, %i.ds               ; 2 uses
  %i.fl = icmp ult i64 %i.fk, %i.dm
  br i1 %i.fl, label %.lr.ph.split.i, label %._crit_edge.i

bb.aa:                                            ; preds = %.lr.ph305
  %i.fm = add nuw nsw i64 %.sroa.04.0.i304, 1     ; 2 uses
  %i.fn = icmp ult i64 %i.fm, %i.dq
  br i1 %i.fn, label %.lr.ph305, label %.preheader36.i.preheader

.preheader36.i.preheader:                         ; preds = %bb.aa, %bb.y
  %i.fo = icmp ult i64 %i.ey, %i.eu
  br i1 %i.fo, label %.lr.ph307, label %.split.us.i10

.lr.ph305:                                        ; preds = %bb.y, %bb.aa
  %.sroa.04.0.i304 = phi i64 [ %i.fm, %bb.aa ], [ %i.fi, %bb.y ] ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.do, i64 %.sroa.04.0.i304
  %i.fq = load i8, ptr %i.fp, align 1, !alias.scope !991, !noundef !4
  %i.fr = add i64 %.sroa.04.0.i304, %i.fa         ; 2 uses
  %i.fs = icmp ult i64 %i.fr, %i.dm
  tail call void @llvm.assume(i1 %i.fs)
  %i.ft = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.fr
  %i.fu = load i8, ptr %i.ft, align 1, !alias.scope !990, !noundef !4
  %.not21.i = icmp eq i8 %i.fq, %i.fu
  br i1 %.not21.i, label %bb.aa, label %bb.ad

.preheader36.i:                                   ; preds = %bb.ab
  %i.fv = icmp ult i64 %i.ey, %i.fz
  br i1 %i.fv, label %.lr.ph307, label %.split.us.i10

.split.us.i10:                                    ; preds = %.preheader36.i.preheader, %.preheader36.i
  %i.fw = add i64 %i.fa, %i.dq                    ; 2 uses
  store i64 %i.fw, ptr %i.dr, align 8, !alias.scope !989
  store i64 0, ptr %i.dg, align 8, !alias.scope !989
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.fa, ptr %i.fx, align 8, !alias.scope !992
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fw, ptr %i.fy, align 8, !alias.scope !992
  br label %_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3v5ql5U6hxj_6fontir.exit

.lr.ph307:                                        ; preds = %.preheader36.i.preheader, %.preheader36.i
  %.sroa.2.0.i306 = phi i64 [ %i.fz, %.preheader36.i ], [ %i.eu, %.preheader36.i.preheader ]
  %i.fz = add i64 %.sroa.2.0.i306, -1             ; 6 uses
  %i.ga = icmp ult i64 %i.fz, %i.dq
  br i1 %i.ga, label %bb.ab, label %.split32.us.i

bb.ab:                                            ; preds = %.lr.ph307
  %i.gb = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.fz
  %i.gc = load i8, ptr %i.gb, align 1, !alias.scope !991, !noundef !4
  %i.gd = add i64 %i.fz, %i.fa                    ; 2 uses
  %i.ge = icmp ult i64 %i.gd, %i.dm
  tail call void @llvm.assume(i1 %i.ge)
  %i.gf = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.gd
  %i.gg = load i8, ptr %i.gf, align 1, !alias.scope !990, !noundef !4
  %.not20.i = icmp eq i8 %i.gc, %i.gg
  br i1 %.not20.i, label %.preheader36.i, label %bb.ac

.split32.us.i:                                    ; preds = %.lr.ph307
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.fz, i64 noundef range(i64 0, -9223372036854775808) %i.dq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #28, !noalias !993
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.gh = add i64 %i.fa, %i.ew
  br label %bb.z

bb.ad:                                            ; preds = %.lr.ph305
  %.reass.reass = add i64 %i.fa, %invariant.op
  %i.gi = add i64 %.reass.reass, %.sroa.04.0.i304
  br label %bb.z

bb.ae:                                            ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !994)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !995)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !996)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !997)
  %.promoted.i11 = load i64, ptr %i.dr, align 8, !alias.scope !995 ; 2 uses
  %i.gj = add i64 %.promoted.i11, %i.ds           ; 2 uses
  %i.gk = icmp ult i64 %i.gj, %i.dm
  br i1 %i.gk, label %.lr.ph.i14, label %._crit_edge.i12

.lr.ph.i14:                                       ; preds = %bb.ae
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gm = load i64, ptr %i.gl, align 8, !alias.scope !995, !noundef !4
  %i.gn = load i64, ptr %i.df, align 8, !alias.scope !995
  %.fr214 = freeze i64 %i.gn                      ; 7 uses
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gp = load i64, ptr %i.go, align 8, !alias.scope !995
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.fr214, i64 range(i64 0, -9223372036854775808) %i.dq)
  %i.gq = add i64 %.fr214, -1                     ; 2 uses
  %.first_iter.i15 = icmp ult i64 %i.gq, %i.dq
  %exitcond.not.i16309.not = icmp ult i64 %.fr214, %i.dq
  %invariant.op358 = sub i64 1, %.fr214
  %.not34.i.us312 = icmp eq i64 %.fr214, 0        ; 2 uses
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.ah, %.lr.ph.i14
  %i.gr = phi i64 [ %i.hq, %bb.ah ], [ %i.gj, %.lr.ph.i14 ]
  %i.gs = phi i64 [ %.sink.i17, %bb.ah ], [ %.promoted.i11, %.lr.ph.i14 ] ; 7 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.gr
  %i.gu = load i8, ptr %i.gt, align 1, !alias.scope !996, !noundef !4
  %i.gv = and i8 %i.gu, 63
  %i.gw = zext nneg i8 %i.gv to i64
  %i.gx = shl nuw i64 1, %i.gw
  %i.gy = and i64 %i.gx, %i.gm
  %.not.us.i = icmp eq i64 %i.gy, 0
  br i1 %.not.us.i, label %bb.ag, label %.preheader35.i.preheader

.preheader35.i.preheader:                         ; preds = %.lr.ph.split.us.i
  br i1 %exitcond.not.i16309.not, label %.lr.ph311, label %.preheader.i18.preheader

.preheader35.i:                                   ; preds = %.lr.ph311
  %i.gz = add i64 %.sroa.04.0.us.i310, 1          ; 2 uses
  %exitcond.not.i16 = icmp eq i64 %i.gz, %umax.i
  br i1 %exitcond.not.i16, label %.preheader.i18.preheader, label %.lr.ph311

.preheader.i18.preheader:                         ; preds = %.preheader35.i, %.preheader35.i.preheader
  br i1 %.first_iter.i15, label %.preheader.i18.us.preheader, label %.preheader.i18

.preheader.i18.us.preheader:                      ; preds = %.preheader.i18.preheader
  br i1 %.not34.i.us312, label %.split.us.i20, label %.lr.ph314

.preheader.i18.us:                                ; preds = %.lr.ph314
  %.not34.i.us = icmp eq i64 %i.ha, 0
  br i1 %.not34.i.us, label %.split.us.i20, label %.lr.ph314

.lr.ph314:                                        ; preds = %.preheader.i18.us.preheader, %.preheader.i18.us
  %.sroa.2.0.us.i.us313 = phi i64 [ %i.ha, %.preheader.i18.us ], [ %.fr214, %.preheader.i18.us.preheader ]
  %i.ha = add i64 %.sroa.2.0.us.i.us313, -1       ; 4 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ha
  %i.hc = load i8, ptr %i.hb, align 1, !alias.scope !997, !noundef !4
  %i.hd = add i64 %i.ha, %i.gs                    ; 2 uses
  %i.he = icmp ult i64 %i.hd, %i.dm
  tail call void @llvm.assume(i1 %i.he)
  %i.hf = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.hd
  %i.hg = load i8, ptr %i.hf, align 1, !alias.scope !996, !noundef !4
  %.not20.us.i.us = icmp eq i8 %i.hc, %i.hg
  br i1 %.not20.us.i.us, label %.preheader.i18.us, label %.split.us

.split.us:                                        ; preds = %.lr.ph314
  %i.hh = add i64 %i.gs, %i.gp
  br label %bb.ah

.lr.ph311:                                        ; preds = %.preheader35.i.preheader, %.preheader35.i
  %.sroa.04.0.us.i310 = phi i64 [ %i.gz, %.preheader35.i ], [ %.fr214, %.preheader35.i.preheader ] ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.do, i64 %.sroa.04.0.us.i310
  %i.hj = load i8, ptr %i.hi, align 1, !alias.scope !997, !noundef !4
  %i.hk = add i64 %.sroa.04.0.us.i310, %i.gs      ; 2 uses
  %i.hl = icmp ult i64 %i.hk, %i.dm
  tail call void @llvm.assume(i1 %i.hl)
  %i.hm = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.hk
  %i.hn = load i8, ptr %i.hm, align 1, !alias.scope !996, !noundef !4
  %.not21.us.i = icmp eq i8 %i.hj, %i.hn
  br i1 %.not21.us.i, label %.preheader35.i, label %bb.af

.preheader.i18:                                   ; preds = %.preheader.i18.preheader
  br i1 %.not34.i.us312, label %.split.us.i20, label %.split32.us.i19

.split32.us.i19:                                  ; preds = %.preheader.i18
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.gq, i64 noundef range(i64 0, -9223372036854775808) %i.dq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #28, !noalias !998
  unreachable

bb.af:                                            ; preds = %.lr.ph311
  %.reass281.reass = add i64 %i.gs, %invariant.op358
  %i.ho = add i64 %.reass281.reass, %.sroa.04.0.us.i310
  br label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.split.us.i
  %i.hp = add i64 %i.gs, %i.dq
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %.split.us
  %.sink.i17 = phi i64 [ %i.hp, %bb.ag ], [ %i.ho, %bb.af ], [ %i.hh, %.split.us ] ; 3 uses
  store i64 %.sink.i17, ptr %i.dr, align 8, !alias.scope !995
  %i.hq = add i64 %.sink.i17, %i.ds               ; 2 uses
  %i.hr = icmp ult i64 %i.hq, %i.dm
  br i1 %i.hr, label %.lr.ph.split.us.i, label %._crit_edge.i12

._crit_edge.i12:                                  ; preds = %bb.ah, %bb.ae
  store i64 %i.dm, ptr %i.dr, align 8, !alias.scope !995
  br label %_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3v5ql5U6hxj_6fontir.exit

.split.us.i20:                                    ; preds = %.preheader.i18.us.preheader, %.preheader.i18.us, %.preheader.i18
  %i.hs = add i64 %i.gs, %i.dq                    ; 2 uses
  store i64 %i.hs, ptr %i.dr, align 8, !alias.scope !995
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.gs, ptr %i.ht, align 8, !alias.scope !999
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.hs, ptr %i.hu, align 8, !alias.scope !999
  br label %_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3v5ql5U6hxj_6fontir.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef ptr @_RNvYNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !13, !noalias !1004, !noundef !4
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs3v5ql5U6hxj_6fontir.exit, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs3v5ql5U6hxj_6fontir(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %0)
  br label %_RNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs3v5ql5U6hxj_6fontir.exit

_RNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs3v5ql5U6hxj_6fontir.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsB_Cs9NoVXegZYB5_8smol_strNtB5_4Repr3new(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #6

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs3v5ql5U6hxj_6fontir(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable_or_null(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1I_15NormalizedSpaceEECs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtCs3v5ql5U6hxj_6fontir2ir12GlobalMetricEB1J_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdECs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata7NameKeyEB1L_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvMs3_NtCsbeZck1VjBmm_8indexmap3mapINtB6_8IndexMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameuE12get_index_ofBO_ECs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE9from_iterCs3v5ql5U6hxj_6fontir(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCsbDKHzkXHCUM_9hashbrown11rustc_entryINtNtB4_3map7HashMapINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB12_15NormalizedSpaceEINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE11rustc_entryCs3v5ql5U6hxj_6fontir(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtCsf3Ta7LF998c_4core5sliceSh11starts_withCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsksibNCz2yVN_3log13___private_api3loguNtB2_12GlobalLoggerECs3v5ql5U6hxj_6fontir(ptr noundef nonnull, ptr noundef nonnull, i64 noundef range(i64 1, 6), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBS_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB21_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCs3v5ql5U6hxj_6fontir2ir12GlobalMetricINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15VariationRegionIB1w_dEEEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtNtCsf3Ta7LF998c_4core3ops5range14RangeInclusiveINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEEENtNtB1w_4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata7NameKeyEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1E_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata7NameKeyNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTRNtNtCs3v5ql5U6hxj_6fontir2ir5ColoruEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTmuEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsf_NtCsf3pcBkf8rwa_9hashbrown3rawINtB5_8RawTablejENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecIBw_NtNtCs3v5ql5U6hxj_6fontir2ir5ColorEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecIBw_TjINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtCsbeZck1VjBmm_8indexmap6BucketNtCs9NoVXegZYB5_8smol_str7SmolStrINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2H_15NormalizedSpaceENtNtCscDfuDmzQoJe_5kurbo5point5PointEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBI_15NormalizedSpaceEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types3tag3TagENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscDfuDmzQoJe_5kurbo7bezpath6PathElENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscDfuDmzQoJe_5kurbo7bezpath7BezPathENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsgdm2QMcbaeA_10fontdrasil10variations15VariationRegionENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecReENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1l_15NormalizedSpaceEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecdENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtCsbeZck1VjBmm_8indexmap6BucketNtCs9NoVXegZYB5_8smol_str7SmolStrINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2O_15NormalizedSpaceENtNtCscDfuDmzQoJe_5kurbo5point5PointEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtCs3v5ql5U6hxj_6fontir2ir5ColorEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB16_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecTjINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBP_15NormalizedSpaceEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbZq13ASDQ8l_10font_types3tag3TagENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCscDfuDmzQoJe_5kurbo7bezpath6PathElENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCscDfuDmzQoJe_5kurbo7bezpath7BezPathENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsgdm2QMcbaeA_10fontdrasil10variations15VariationRegionENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1s_15NormalizedSpaceEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecdENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNvMNtCsgCecv3eZDcN_5alloc6stringNtB5_6String6retainNtB2_10PanicGuardNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1U_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENCNvMsm_B32_NtB32_5Glyph19has_nonidentity_2x20ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvMsg_NtB8_7flattenINtB5m_13FlattenCompatppE13iter_try_fold7flattenINtNtNtBc_5slice4iter4IterNtB32_9ComponentEuINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvXsi_B5m_B5z_B4t_8try_fold7flattenB6l_uB73_NCINvNvB4t_3any5checkRB6L_NvMst_B32_B6L_19has_nonidentity_2x2E0E0E0B73_EB34_(ptr noalias nofree noundef align 8 dereferenceable(40), ptr noundef nonnull, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentEBW_EINtB5_7ZipImplBW_BW_E3newB1q_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, ptr noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #0
end_hunk_0
begin_hunk_1_@llvm.round.v2f64
!758 = !{!750, !748, !746, !744, !742}
!759 = distinct !{!759, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentEBF_"}
!760 = distinct !{!760, !759, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentEBF_: argument 0"}
!761 = distinct !{!761, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECs3v5ql5U6hxj_6fontir"}
!762 = distinct !{!762, !761, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECs3v5ql5U6hxj_6fontir: argument 0"}
!763 = distinct !{!763, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs3v5ql5U6hxj_6fontir"}
!764 = distinct !{!764, !763, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs3v5ql5U6hxj_6fontir: argument 0"}
!765 = distinct !{!765, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str4ReprECs3v5ql5U6hxj_6fontir"}
!766 = distinct !{!766, !765, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str4ReprECs3v5ql5U6hxj_6fontir: argument 0"}
!767 = distinct !{!767, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentEBG_"}
!768 = distinct !{!768, !767, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentEBG_: argument 0"}
!769 = distinct !{!769, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECs3v5ql5U6hxj_6fontir"}
!770 = distinct !{!770, !769, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECs3v5ql5U6hxj_6fontir: argument 0"}
!771 = distinct !{!771, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir"}
!772 = distinct !{!772, !771, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir: argument 0"}
!773 = distinct !{!773, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9NoVXegZYB5_8smol_str7SmolStrEECs3v5ql5U6hxj_6fontir"}
!774 = distinct !{!774, !773, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9NoVXegZYB5_8smol_str7SmolStrEECs3v5ql5U6hxj_6fontir: argument 0"}
!775 = distinct !{!775, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs3v5ql5U6hxj_6fontir"}
!776 = distinct !{!776, !775, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs3v5ql5U6hxj_6fontir: argument 0"}
!777 = distinct !{!777, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str4ReprECs3v5ql5U6hxj_6fontir"}
!778 = distinct !{!778, !777, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str4ReprECs3v5ql5U6hxj_6fontir: argument 0"}
!779 = distinct !{!779, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECs3v5ql5U6hxj_6fontir"}
!780 = distinct !{!780, !779, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECs3v5ql5U6hxj_6fontir: argument 0"}
!781 = distinct !{!781, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir"}
!782 = distinct !{!782, !781, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir: argument 0"}
!783 = !{!760}
!784 = !{!762}
!785 = !{!764}
!786 = !{!766}
!787 = !{!766, !764, !762, !760, !768}
!788 = !{!770}
!789 = !{!772}
!790 = !{!772, !770, !766, !764, !762, !760, !768}
!791 = !{!772, !770, !766, !764, !762, !760}
!792 = !{!774}
!793 = !{!774, !760, !768}
!794 = !{!776}
!795 = !{!778}
!796 = !{!780}
!797 = !{!782}
!798 = !{!782, !780, !778, !776, !774, !760, !768}
!799 = !{!782, !780, !778, !776, !774}
!800 = distinct !{!800, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECs3v5ql5U6hxj_6fontir"}
!801 = distinct !{!801, !800, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECs3v5ql5U6hxj_6fontir: argument 0"}
!802 = distinct !{!802, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs3v5ql5U6hxj_6fontir"}
!803 = distinct !{!803, !802, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs3v5ql5U6hxj_6fontir: argument 0"}
!804 = distinct !{!804, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str4ReprECs3v5ql5U6hxj_6fontir"}
!805 = distinct !{!805, !804, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str4ReprECs3v5ql5U6hxj_6fontir: argument 0"}
!806 = distinct !{!806, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECs3v5ql5U6hxj_6fontir"}
!807 = distinct !{!807, !806, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECs3v5ql5U6hxj_6fontir: argument 0"}
!808 = distinct !{!808, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir"}
!809 = distinct !{!809, !808, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir: argument 0"}
!810 = !{!801}
!811 = !{!803}
!812 = !{!805}
!813 = !{!805, !803, !801}
!814 = !{!807}
!815 = !{!809}
!816 = !{!809, !807, !805, !803, !801}
!817 = distinct !{!817, i1 true, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointE8push_mutCs3v5ql5U6hxj_6fontir"}
!818 = distinct !{!818, !817, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointE8push_mutCs3v5ql5U6hxj_6fontir: argument 0"}
!819 = distinct !{!819, i1 true, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointE8push_mutCs3v5ql5U6hxj_6fontir"}
!820 = distinct !{!820, !819, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointE8push_mutCs3v5ql5U6hxj_6fontir: argument 0"}
!821 = distinct !{!821, i1 true, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointE8push_mutCs3v5ql5U6hxj_6fontir"}
!822 = distinct !{!822, !821, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointE8push_mutCs3v5ql5U6hxj_6fontir: argument 0"}
!823 = distinct !{!823, i1 true, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointE8push_mutCs3v5ql5U6hxj_6fontir"}
!824 = distinct !{!824, !823, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointE8push_mutCs3v5ql5U6hxj_6fontir: argument 0"}
!825 = !{!818}
!826 = !{!820}
!827 = !{!822}
!828 = !{!824}
!829 = distinct !{!829, i1 true, !"_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainIB4_IB4_INtNtB8_7flatten7FlatMapIB14_INtNtNtBc_5slice4iter4IterNtNtCscDfuDmzQoJe_5kurbo7bezpath7BezPathEINtNtB8_6copied6CopiedIB1x_NtB1Y_6PathElEENvMB1Y_B1W_4iterEIB14_INtB16_7FlattenINtNtNtBc_5array4iter8IntoIterINtNtBc_6option6OptionNtNtB20_5point5PointEKj3_EEAdj2_NCNvNvMss_NtCs3v5ql5U6hxj_6fontir2irNtB5o_13GlyphInstance24values_for_interpolation18iter_pathel_points0EB5g_EIB14_IB1x_NtB5o_9ComponentEAdj6_NCB5i_0EEINtB4p_8IntoIterdEEB7F_ENtNtNtBa_6traits8iterator8Iterator5chainIB4n_dEEB5q_"}
!830 = distinct !{!830, !829, !"_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainIB4_IB4_INtNtB8_7flatten7FlatMapIB14_INtNtNtBc_5slice4iter4IterNtNtCscDfuDmzQoJe_5kurbo7bezpath7BezPathEINtNtB8_6copied6CopiedIB1x_NtB1Y_6PathElEENvMB1Y_B1W_4iterEIB14_INtB16_7FlattenINtNtNtBc_5array4iter8IntoIterINtNtBc_6option6OptionNtNtB20_5point5PointEKj3_EEAdj2_NCNvNvMss_NtCs3v5ql5U6hxj_6fontir2irNtB5o_13GlyphInstance24values_for_interpolation18iter_pathel_points0EB5g_EIB14_IB1x_NtB5o_9ComponentEAdj6_NCB5i_0EEINtB4p_8IntoIterdEEB7F_ENtNtNtBa_6traits8iterator8Iterator5chainIB4n_dEEB5q_: argument 1"}
!831 = distinct !{!831, !829, !"_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainIB4_IB4_INtNtB8_7flatten7FlatMapIB14_INtNtNtBc_5slice4iter4IterNtNtCscDfuDmzQoJe_5kurbo7bezpath7BezPathEINtNtB8_6copied6CopiedIB1x_NtB1Y_6PathElEENvMB1Y_B1W_4iterEIB14_INtB16_7FlattenINtNtNtBc_5array4iter8IntoIterINtNtBc_6option6OptionNtNtB20_5point5PointEKj3_EEAdj2_NCNvNvMss_NtCs3v5ql5U6hxj_6fontir2irNtB5o_13GlyphInstance24values_for_interpolation18iter_pathel_points0EB5g_EIB14_IB1x_NtB5o_9ComponentEAdj6_NCB5i_0EEINtB4p_8IntoIterdEEB7F_ENtNtNtBa_6traits8iterator8Iterator5chainIB4n_dEEB5q_: argument 0"}
!832 = !{!830}
!833 = !{!831, !830}
!834 = !{!831}
!835 = distinct !{!835, i1 true, !"_RNvNtCs3v5ql5U6hxj_6fontir2ir22copy_points_to_contour"}
!836 = distinct !{!836, !835, !"_RNvNtCs3v5ql5U6hxj_6fontir2ir22copy_points_to_contour: argument 1"}
!837 = distinct !{!837, !835, !"_RNvNtCs3v5ql5U6hxj_6fontir2ir22copy_points_to_contour: argument 0"}
!838 = distinct !{!838, i1 true, !"_RNvNtCs3v5ql5U6hxj_6fontir2ir16copy_ponts_to_el"}
!839 = distinct !{!839, !838, !"_RNvNtCs3v5ql5U6hxj_6fontir2ir16copy_ponts_to_el: argument 1"}
!840 = distinct !{!840, i1 true, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscDfuDmzQoJe_5kurbo7bezpath6PathElE8push_mutCs3v5ql5U6hxj_6fontir"}
!841 = distinct !{!841, !840, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscDfuDmzQoJe_5kurbo7bezpath6PathElE8push_mutCs3v5ql5U6hxj_6fontir: argument 0"}
!842 = distinct !{!842, i1 true, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscDfuDmzQoJe_5kurbo7bezpath7BezPathE8push_mutCs3v5ql5U6hxj_6fontir"}
!843 = distinct !{!843, !842, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscDfuDmzQoJe_5kurbo7bezpath7BezPathE8push_mutCs3v5ql5U6hxj_6fontir: argument 0"}
!844 = distinct !{!844, !842, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscDfuDmzQoJe_5kurbo7bezpath7BezPathE8push_mutCs3v5ql5U6hxj_6fontir: argument 1"}
!845 = !{!836}
!846 = !{!837, !836}
!847 = !{i64 0, i64 5}
!848 = !{!839, !836}
!849 = !{!841}
!850 = !{!843}
!851 = !{!844}
!852 = !{!"branch_weights", !"expected", i32 2145857966, i32 1625682}
!853 = distinct !{!853, i1 true, !"_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs3v5ql5U6hxj_6fontir2ir5ColorEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsu_B1p_NtB1p_13ColorPalettes3new0EB1r_"}
!854 = distinct !{!854, !853, !"_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs3v5ql5U6hxj_6fontir2ir5ColorEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsu_B1p_NtB1p_13ColorPalettes3new0EB1r_: argument 0"}
!855 = distinct !{!855, i1 true, !"_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs3v5ql5U6hxj_6fontir2ir5ColorEENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvMsu_B1p_NtB1p_13ColorPalettes3news_0EB1r_"}
!856 = distinct !{!856, !855, !"_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs3v5ql5U6hxj_6fontir2ir5ColorEENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvMsu_B1p_NtB1p_13ColorPalettes3news_0EB1r_: argument 0"}
!857 = distinct !{!857, i1 true, !"_RNvXs5_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterjENtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs3v5ql5U6hxj_6fontir"}
!858 = distinct !{!858, !857, !"_RNvXs5_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterjENtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs3v5ql5U6hxj_6fontir: argument 0"}
!859 = distinct !{!859, i1 true, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjE8push_mutCs3v5ql5U6hxj_6fontir"}
!860 = distinct !{!860, !859, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjE8push_mutCs3v5ql5U6hxj_6fontir: argument 0"}
!861 = !{!854}
!862 = !{!856}
!863 = !{!858}
!864 = !{!860}
!865 = distinct !{!865, i1 true, !"_RNCNvMsu_NtCs3v5ql5U6hxj_6fontir2irNtB7_13ColorPalettes8index_of0B9_"}
!866 = distinct !{!866, !865, !"_RNCNvMsu_NtCs3v5ql5U6hxj_6fontir2irNtB7_13ColorPalettes8index_of0B9_: argument 0"}
!867 = distinct !{!867, i1 true, !"_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCs3v5ql5U6hxj_6fontir2ir5ColorENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvMsu_BS_NtBS_13ColorPalettes8index_of0EBU_"}
!868 = distinct !{!868, !867, !"_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCs3v5ql5U6hxj_6fontir2ir5ColorENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvMsu_BS_NtBS_13ColorPalettes8index_of0EBU_: argument 0"}
!869 = !{!866}
!870 = !{!868}
!871 = distinct !{!871, i1 true, !"_RNvXs23_NtCs3v5ql5U6hxj_6fontir2irNtB6_5ColorNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq"}
!872 = distinct !{!872, !871, !"_RNvXs23_NtCs3v5ql5U6hxj_6fontir2irNtB6_5ColorNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq: argument 0"}
!873 = distinct !{!873, !871, !"_RNvXs23_NtCs3v5ql5U6hxj_6fontir2irNtB6_5ColorNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq: argument 1"}
!874 = !{!872}
!875 = !{!873}
!876 = distinct !{!876, i1 true, !"_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtB8_3map3MapINtNtB8_9enumerate9EnumerateINtNtNtCsbeZck1VjBmm_8indexmap3set4iter4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCNvMs2_NtCs3v5ql5U6hxj_6fontir2irNtB3b_10GlyphOrder4iter0EBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB44_3all5checkTTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16RB2h_EB58_ENCNvXs1_B3b_B3B_NtNtBc_3cmp9PartialEq2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB3d_"}
!877 = distinct !{!877, !876, !"_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtB8_3map3MapINtNtB8_9enumerate9EnumerateINtNtNtCsbeZck1VjBmm_8indexmap3set4iter4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCNvMs2_NtCs3v5ql5U6hxj_6fontir2irNtB3b_10GlyphOrder4iter0EBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB44_3all5checkTTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16RB2h_EB58_ENCNvXs1_B3b_B3B_NtNtBc_3cmp9PartialEq2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB3d_: argument 0"}
!878 = distinct !{!878, i1 true, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16RNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEB1c_ENCNvXs1_NtCs3v5ql5U6hxj_6fontir2irNtB2Z_10GlyphOrderNtNtBe_3cmp9PartialEq2eq0E0B31_"}
!879 = distinct !{!879, !878, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16RNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEB1c_ENCNvXs1_NtCs3v5ql5U6hxj_6fontir2irNtB2Z_10GlyphOrderNtNtBe_3cmp9PartialEq2eq0E0B31_: argument 0"}
!880 = distinct !{!880, i1 true, !"_RNCNvXs1_NtCs3v5ql5U6hxj_6fontir2irNtB7_10GlyphOrderNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq0B9_"}
!881 = distinct !{!881, !880, !"_RNCNvXs1_NtCs3v5ql5U6hxj_6fontir2irNtB7_10GlyphOrderNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq0B9_: argument 0"}
!882 = !{!881, !879, !877}
!883 = distinct !{!883, i1 true, !"_RNvXs1O_NtCs3v5ql5U6hxj_6fontir2irNtB6_9ComponentNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt"}
!884 = distinct !{!884, !883, !"_RNvXs1O_NtCs3v5ql5U6hxj_6fontir2irNtB6_9ComponentNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt: argument 1"}
!885 = distinct !{!885, !883, !"_RNvXs1O_NtCs3v5ql5U6hxj_6fontir2irNtB6_9ComponentNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt: argument 0"}
!886 = !{!885, !884}
!887 = distinct !{!887, i1 true, !"_RNvXs5_NtCs3v5ql5U6hxj_6fontir2irNtB5_9KernGroupNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt"}
!888 = distinct !{!888, !887, !"_RNvXs5_NtCs3v5ql5U6hxj_6fontir2irNtB5_9KernGroupNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt: argument 0"}
!889 = distinct !{!889, !887, !"_RNvXs5_NtCs3v5ql5U6hxj_6fontir2irNtB5_9KernGroupNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt: argument 1"}
!890 = !{!888}
!891 = !{!889}
!892 = !{!888, !889}
!893 = distinct !{!893, i1 true, !"_RNvYNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neB6_"}
!894 = distinct !{!894, !893, !"_RNvYNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neB6_: argument 0"}
!895 = distinct !{!895, !893, !"_RNvYNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neB6_: argument 1"}
!896 = distinct !{!896, i1 true, !"_RNvXs1y_NtCs3v5ql5U6hxj_6fontir2irNtB6_6AnchorNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq"}
!897 = distinct !{!897, !896, !"_RNvXs1y_NtCs3v5ql5U6hxj_6fontir2irNtB6_6AnchorNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq: argument 0"}
!898 = distinct !{!898, !896, !"_RNvXs1y_NtCs3v5ql5U6hxj_6fontir2irNtB6_6AnchorNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq: argument 1"}
!899 = distinct !{!899, i1 true, !"_RNvXs1u_NtCs3v5ql5U6hxj_6fontir2irNtB6_10AnchorKindNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq"}
!900 = distinct !{!900, !899, !"_RNvXs1u_NtCs3v5ql5U6hxj_6fontir2irNtB6_10AnchorKindNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq: argument 0"}
!901 = distinct !{!901, !899, !"_RNvXs1u_NtCs3v5ql5U6hxj_6fontir2irNtB6_10AnchorKindNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq: argument 1"}
!902 = !{!894}
!903 = !{!895}
!904 = !{!897}
!905 = !{!898}
!906 = !{!900}
!907 = !{!901}
!908 = !{!900, !897, !894}
!909 = !{!901, !898, !895}
!910 = distinct !{!910, i1 true, !"_RNvYNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neB6_"}
!911 = distinct !{!911, !910, !"_RNvYNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neB6_: argument 0"}
!912 = distinct !{!912, !910, !"_RNvYNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neB6_: argument 1"}
!913 = distinct !{!913, i1 true, !"_RNvXs1R_NtCs3v5ql5U6hxj_6fontir2irNtB6_9ComponentNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq"}
!914 = distinct !{!914, !913, !"_RNvXs1R_NtCs3v5ql5U6hxj_6fontir2irNtB6_9ComponentNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq: argument 0"}
!915 = distinct !{!915, !913, !"_RNvXs1R_NtCs3v5ql5U6hxj_6fontir2irNtB6_9ComponentNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq: argument 1"}
!916 = !{!911}
!917 = !{!912}
!918 = !{!914}
!919 = !{!915}
!920 = !{!914, !911}
!921 = !{!915, !912}
!922 = distinct !{!922, i1 true, !"_RNvMsm_NtCs3v5ql5U6hxj_6fontir2irNtB5_5Glyph15component_names"}
!923 = distinct !{!923, !922, !"_RNvMsm_NtCs3v5ql5U6hxj_6fontir2irNtB5_5Glyph15component_names: argument 0"}
!924 = distinct !{!924, i1 true, !"_RNvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2o_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENCNvMsm_B3w_NtB3w_5Glyph15component_names0EIB1c_INtNtNtBb_5slice4iter4IterNtB3w_9ComponentENCNCB4e_00EENtNtNtB9_6traits8iterator8Iterator4nextB3y_"}
!925 = distinct !{!925, !924, !"_RNvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2o_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENCNvMsm_B3w_NtB3w_5Glyph15component_names0EIB1c_INtNtNtBb_5slice4iter4IterNtB3w_9ComponentENCNCB4e_00EENtNtNtB9_6traits8iterator8Iterator4nextB3y_: argument 0"}
!926 = distinct !{!926, i1 true, !"_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_5slice4iter4IterNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentENCNCNvMsm_B1O_NtB1O_5Glyph15component_names00ERNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1Q_"}
!927 = distinct !{!927, !926, !"_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_5slice4iter4IterNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentENCNCNvMsm_B1O_NtB1O_5Glyph15component_names00ERNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1Q_: argument 0"}
!928 = distinct !{!928, i1 true, !"_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentENCNCNvMsm_B1l_NtB1l_5Glyph15component_names00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1n_"}
!929 = distinct !{!929, !928, !"_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentENCNCNvMsm_B1l_NtB1l_5Glyph15component_names00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1n_: argument 0"}
!930 = distinct !{!930, i1 true, !"_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentENCNCNvMsm_B1o_NtB1o_5Glyph15component_names00ENtNtNtB9_6traits8iterator8Iterator4nextB1q_"}
!931 = distinct !{!931, !930, !"_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentENCNCNvMsm_B1o_NtB1o_5Glyph15component_names00ENtNtNtB9_6traits8iterator8Iterator4nextB1q_: argument 0"}
!932 = distinct !{!932, i1 true, !"_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_"}
!933 = distinct !{!933, !932, !"_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_: argument 0"}
!934 = distinct !{!934, i1 true, !"_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2b_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENCNvMsm_B3j_NtB3j_5Glyph15component_names0EEINtB5_8FuseImplBY_E4nextB3l_"}
!935 = distinct !{!935, !934, !"_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2b_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENCNvMsm_B3j_NtB3j_5Glyph15component_names0EEINtB5_8FuseImplBY_E4nextB3l_: argument 0"}
!936 = distinct !{!936, i1 true, !"_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_5slice4iter4IterNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentENCNCNvMsm_B1O_NtB1O_5Glyph15component_names00ERNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1Q_"}
!937 = distinct !{!937, !936, !"_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_5slice4iter4IterNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentENCNCNvMsm_B1O_NtB1O_5Glyph15component_names00ERNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1Q_: argument 0"}
!938 = distinct !{!938, i1 true, !"_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentENCNCNvMsm_B1l_NtB1l_5Glyph15component_names00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1n_"}
!939 = distinct !{!939, !938, !"_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentENCNCNvMsm_B1l_NtB1l_5Glyph15component_names00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1n_: argument 0"}
!940 = distinct !{!940, i1 true, !"_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentENCNCNvMsm_B1o_NtB1o_5Glyph15component_names00ENtNtNtB9_6traits8iterator8Iterator4nextB1q_"}
!941 = distinct !{!941, !940, !"_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentENCNCNvMsm_B1o_NtB1o_5Glyph15component_names00ENtNtNtB9_6traits8iterator8Iterator4nextB1q_: argument 0"}
!942 = distinct !{!942, i1 true, !"_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_"}
!943 = distinct !{!943, !942, !"_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_: argument 0"}
!944 = !{!923}
!945 = !{!933, !931, !929, !927, !925}
!946 = !{!927, !925}
!947 = !{!935, !925}
!948 = !{!925}
!949 = !{!937, !925}
!950 = !{!943, !941, !939, !937, !925}
!951 = distinct !{!951, i1 true, !"_RNvMsm_NtCs3v5ql5U6hxj_6fontir2irNtB5_5Glyph15component_names"}
!952 = distinct !{!952, !951, !"_RNvMsm_NtCs3v5ql5U6hxj_6fontir2irNtB5_5Glyph15component_names: argument 0"}
!953 = !{!952}
!954 = distinct !{!954, i1 true, !"_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!955 = distinct !{!955, !954, !"_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1:Peel0"}
!956 = distinct !{!956, i1 true, !"_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!957 = distinct !{!957, !956, !"_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!958 = distinct !{!958, !954, !"_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 0:Peel0"}
!959 = distinct !{!959, i1 true, !"_RINvNtNtCsf3Ta7LF998c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs3v5ql5U6hxj_6fontir"}
!960 = distinct !{!960, !959, !"_RINvNtNtCsf3Ta7LF998c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs3v5ql5U6hxj_6fontir: argument 0"}
!961 = distinct !{!961, i1 true, !"_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!962 = distinct !{!962, !961, !"_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1"}
!963 = distinct !{!963, !961, !"_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 0"}
!964 = distinct !{!964, i1 true, !"_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr"}
!965 = distinct !{!965, !964, !"_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr: argument 0"}
!966 = distinct !{!966, i1 true, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3v5ql5U6hxj_6fontir"}
!967 = distinct !{!967, !966, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3v5ql5U6hxj_6fontir: argument 0"}
!968 = distinct !{!968, !966, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3v5ql5U6hxj_6fontir: argument 1"}
!969 = distinct !{!969, !966, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3v5ql5U6hxj_6fontir: argument 2"}
!970 = distinct !{!970, !966, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3v5ql5U6hxj_6fontir: argument 3"}
!971 = distinct !{!971, i1 true, !"_RNvXsy_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching"}
!972 = distinct !{!972, !971, !"_RNvXsy_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching: argument 0"}
!973 = distinct !{!973, i1 true, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3v5ql5U6hxj_6fontir"}
!974 = distinct !{!974, !973, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3v5ql5U6hxj_6fontir: argument 0"}
!975 = distinct !{!975, !973, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3v5ql5U6hxj_6fontir: argument 1"}
!976 = distinct !{!976, !973, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3v5ql5U6hxj_6fontir: argument 2"}
!977 = distinct !{!977, !973, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3v5ql5U6hxj_6fontir: argument 3"}
!978 = distinct !{!978, i1 true, !"_RNvXsy_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching"}
!979 = distinct !{!979, !978, !"_RNvXsy_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching: argument 0"}
!980 = !{!955}
!981 = !{!957}
!982 = !{!958, !955}
!983 = !{!960, !958, !955}
!984 = !{!962}
!985 = !{!963, !962}
!986 = !{!960, !963, !962}
!987 = !{!965}
!988 = !{!967}
!989 = !{!968}
!990 = !{!969}
!991 = !{!970}
!992 = !{!972, !967}
!993 = !{!967, !968, !969, !970}
!994 = !{!974}
!995 = !{!975}
!996 = !{!976}
!997 = !{!977}
!998 = !{!974, !975, !976, !977}
!999 = !{!979, !974}
!1000 = distinct !{!1000, i1 true, !"_RNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs3v5ql5U6hxj_6fontir"}
!1001 = distinct !{!1001, !1000, !"_RNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs3v5ql5U6hxj_6fontir: argument 0"}
!1002 = distinct !{!1002, i1 true, !"_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECs3v5ql5U6hxj_6fontir"}
!1003 = distinct !{!1003, !1002, !"_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECs3v5ql5U6hxj_6fontir: argument 0"}
!1004 = !{!1003, !1001}
end_hunk_1
