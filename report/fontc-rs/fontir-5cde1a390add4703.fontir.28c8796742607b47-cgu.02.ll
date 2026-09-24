Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontir-5cde1a390add4703.fontir.28c8796742607b47-cgu.02?download=true
inline.NumInlined: 1071
inline.NumDeleted: 658
begin_hunk_0_@_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentE6retainNCNvNtBJ_5glyph24prune_missing_componentss1_0EBJ_:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21, !noalias !122
  unreachable

bb.n:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw [96 x i8], ptr %i.f, i64 %.sroa.15.134.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ad, ptr noundef nonnull align 8 dereferenceable(96) %i.l, i64 96, i1 false), !noalias !122
  %i.ae = add i64 %.sroa.15.134.i, 1
  %i.af = add nuw nsw i64 %.sroa.8.135.i, 1
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentEBF_.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentEBF_.exit.i: ; preds = %bb.n, %bb.l, %bb.k, %bb.j, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECs3v5ql5U6hxj_6fontir.exit.i.i
  %.sroa.15.2.i = phi i64 [ %i.ae, %bb.n ], [ %.sroa.15.134.i, %bb.l ], [ %.sroa.15.134.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECs3v5ql5U6hxj_6fontir.exit.i.i ], [ %.sroa.15.134.i, %bb.j ], [ %.sroa.15.134.i, %bb.k ] ; 2 uses
  %.sroa.8.2.i = phi i64 [ %i.af, %bb.n ], [ %i.n, %bb.l ], [ %i.n, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECs3v5ql5U6hxj_6fontir.exit.i.i ], [ %i.n, %bb.j ], [ %i.n, %bb.k ] ; 2 uses
  %i.ag = icmp samesign ult i64 %.sroa.8.2.i, %i.b
  br i1 %i.ag, label %.lr.ph.i, label %._crit_edge.i

bb.o:                                             ; preds = %bb.i, %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.15.3.i = phi i64 [ %.sroa.15.134.i, %bb.i ], [ %.sroa.15.134.i, %.loopexit.i ], [ %.sroa.0.0.i, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.8.3.i = phi i64 [ %i.n, %bb.i ], [ %.sroa.8.0.ph.i, %.loopexit.i ], [ %i.i, %.loopexit.split-lp.i ] ; 2 uses
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.t, %bb.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.ah = sub i64 %i.b, %.sroa.8.3.i              ; 2 uses
  %i.ai = getelementptr inbounds nuw [96 x i8], ptr %i.f, i64 %.sroa.8.3.i
  %i.aj = getelementptr inbounds nuw [96 x i8], ptr %i.f, i64 %.sroa.15.3.i
  %i.ak = mul nuw nsw i64 %i.ah, 96
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aj, ptr nonnull align 8 %i.ai, i64 %i.ak, i1 false), !noalias !140
  %i.al = add i64 %i.ah, %.sroa.15.3.i
  store i64 %i.al, ptr %i.a, align 8, !alias.scope !122, !noalias !141
  resume { ptr, i32 } %eh.lpad-body.i

_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentE10retain_mutNCINvB2_6retainNCNvNtBJ_5glyph24prune_missing_componentss1_0E0EBJ_.exit: ; preds = %bb.c, %bb.a, %._crit_edge.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecRRNtNtCs3v5ql5U6hxj_6fontir2ir5GlyphE6retainNCINvNtCsgdm2QMcbaeA_10fontdrasil4util29depth_sorted_composite_glyphsBG_Es_0EBL_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [80 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [80 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !154, !noundef !4 ; 6 uses
  %i.g = icmp ult i64 %i.f, 1152921504606846976
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecRRNtNtCs3v5ql5U6hxj_6fontir2ir5GlyphE10retain_mutNCINvB2_6retainNCINvNtCsgdm2QMcbaeA_10fontdrasil4util29depth_sorted_composite_glyphsBG_Es_0E0EBL_.exit, label %.preheader29.i

.preheader29.i:                                   ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !154, !nonnull !4, !noundef !4 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.preheader29.i
  %.sroa.0.0.i = phi i64 [ %.sroa.7.035.i, %bb.d ], [ 0, %.preheader29.i ] ; 4 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.0.0.i
  %.val11.i = load ptr, ptr %i.l, align 8, !noalias !154, !nonnull !4, !align !9, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !154
  call void @_RNvXs_NtCs3v5ql5U6hxj_6fontir5glyphRNtNtB6_2ir5GlyphNtNtCsgdm2QMcbaeA_10fontdrasil4util13CompositeLike15component_names(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val11.i), !noalias !154
  store ptr %1, ptr %i.d, align 8, !alias.scope !155, !noalias !156
  %i.m = call { i32, i32 } @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_7flatten7FlatMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2i_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceEIBO_INtNtNtBc_5slice4iter4IterNtB3q_9ComponentENCNCNvMsm_B3q_NtB3q_5Glyph15component_names00ENCB4V_0ENCNvXs_NtB3s_5glyphRB55_NtNtB2k_4util13CompositeLike15component_names0ENtNtNtBa_6traits8iterator8Iterator8try_foldlNCINvB6_12map_try_foldNtCs9NoVXegZYB5_8smol_str7SmolStrINtNtBc_6option6OptionlElB8t_NCNCINvB69_29depth_sorted_composite_glyphsB62_Es_00NCB8Y_s_0E0B8t_EB3s_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.k, i32 noundef 0, ptr noundef nonnull align 8 %i.d), !noalias !154 ; 2 uses
  %i.n = extractvalue { i32, i32 } %i.m, 0        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !154
  %i.o = trunc i32 %i.n to i1
  br i1 %i.o, label %bb.c, label %_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRRNtNtCs3v5ql5U6hxj_6fontir2ir5GlyphE6retainNCINvNtCsgdm2QMcbaeA_10fontdrasil4util29depth_sorted_composite_glyphsBI_Es_0E0BN_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.p = extractvalue { i32, i32 } %i.m, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !154
  call void @_RNvXs_NtCs3v5ql5U6hxj_6fontir5glyphRNtNtB6_2ir5GlyphNtNtCsgdm2QMcbaeA_10fontdrasil4util13CompositeLike4name(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val11.i), !noalias !154
  %i.q = add i32 %i.p, 1
  %i.r = call { i32, i32 } @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtCs9NoVXegZYB5_8smol_str7SmolStrlNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, i32 noundef %i.q), !noalias !154 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !154
  br label %_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRRNtNtCs3v5ql5U6hxj_6fontir2ir5GlyphE6retainNCINvNtCsgdm2QMcbaeA_10fontdrasil4util29depth_sorted_composite_glyphsBI_Es_0E0BN_.exit.i

_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRRNtNtCs3v5ql5U6hxj_6fontir2ir5GlyphE6retainNCINvNtCsgdm2QMcbaeA_10fontdrasil4util29depth_sorted_composite_glyphsBI_Es_0E0BN_.exit.i: ; preds = %bb.c, %bb.b
  %.not.i = icmp eq i32 %i.n, 1
  %.sroa.7.035.i = add nuw nsw i64 %.sroa.0.0.i, 1 ; 4 uses
  br i1 %.not.i, label %.preheader.i, label %bb.d, !prof !6

.preheader.i:                                     ; preds = %_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRRNtNtCs3v5ql5U6hxj_6fontir2ir5GlyphE6retainNCINvNtCsgdm2QMcbaeA_10fontdrasil4util29depth_sorted_composite_glyphsBI_Es_0E0BN_.exit.i
  %i.s = icmp samesign ult i64 %.sroa.7.035.i, %i.f
  br i1 %i.s, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %bb.e

bb.d:                                             ; preds = %_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRRNtNtCs3v5ql5U6hxj_6fontir2ir5GlyphE6retainNCINvNtCsgdm2QMcbaeA_10fontdrasil4util29depth_sorted_composite_glyphsBI_Es_0E0BN_.exit.i
  %i.u = icmp eq i64 %.sroa.7.035.i, %i.f
  br i1 %i.u, label %_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecRRNtNtCs3v5ql5U6hxj_6fontir2ir5GlyphE10retain_mutNCINvB2_6retainNCINvNtCsgdm2QMcbaeA_10fontdrasil4util29depth_sorted_composite_glyphsBG_Es_0E0EBL_.exit, label %bb.b

._crit_edge.i:                                    ; preds = %bb.i, %.preheader.i
  %.sroa.13.0.lcssa.i = phi i64 [ %.sroa.0.0.i, %.preheader.i ], [ %.sroa.13.1.i, %bb.i ]
  store i64 %.sroa.13.0.lcssa.i, ptr %i.e, align 8, !alias.scope !154
  br label %_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecRRNtNtCs3v5ql5U6hxj_6fontir2ir5GlyphE10retain_mutNCINvB2_6retainNCINvNtCsgdm2QMcbaeA_10fontdrasil4util29depth_sorted_composite_glyphsBG_Es_0E0EBL_.exit

bb.e:                                             ; preds = %bb.i, %.lr.ph.i
  %.sroa.7.037.i = phi i64 [ %.sroa.7.035.i, %.lr.ph.i ], [ %.sroa.7.0.i, %bb.i ] ; 3 uses
  %.sroa.13.036.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i ], [ %.sroa.13.1.i, %bb.i ] ; 5 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.7.037.i ; 3 uses
  %.val9.i = load ptr, ptr %i.v, align 8, !noalias !154, !nonnull !4, !align !9, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !154
  invoke void @_RNvXs_NtCs3v5ql5U6hxj_6fontir5glyphRNtNtB6_2ir5GlyphNtNtCsgdm2QMcbaeA_10fontdrasil4util13CompositeLike15component_names(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val9.i)
          to label %.noexc.i unwind label %bb.j, !noalias !154

.noexc.i:                                         ; preds = %bb.e
  store ptr %1, ptr %i.b, align 8, !alias.scope !157, !noalias !158
  %i.w = invoke { i32, i32 } @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_7flatten7FlatMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2i_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceEIBO_INtNtNtBc_5slice4iter4IterNtB3q_9ComponentENCNCNvMsm_B3q_NtB3q_5Glyph15component_names00ENCB4V_0ENCNvXs_NtB3s_5glyphRB55_NtNtB2k_4util13CompositeLike15component_names0ENtNtNtBa_6traits8iterator8Iterator8try_foldlNCINvB6_12map_try_foldNtCs9NoVXegZYB5_8smol_str7SmolStrINtNtBc_6option6OptionlElB8t_NCNCINvB69_29depth_sorted_composite_glyphsB62_Es_00NCB8Y_s_0E0B8t_EB3s_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.t, i32 noundef 0, ptr noundef nonnull align 8 %i.b)
          to label %.noexc13.i unwind label %bb.j, !noalias !154 ; 2 uses

.noexc13.i:                                       ; preds = %.noexc.i
  %i.x = extractvalue { i32, i32 } %i.w, 0        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !154
  %i.y = trunc i32 %i.x to i1
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.noexc13.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !154
  invoke void @_RNvXs_NtCs3v5ql5U6hxj_6fontir5glyphRNtNtB6_2ir5GlyphNtNtCsgdm2QMcbaeA_10fontdrasil4util13CompositeLike4name(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val9.i)
          to label %.noexc14.i unwind label %bb.j, !noalias !154

.noexc14.i:                                       ; preds = %bb.f
  %i.z = extractvalue { i32, i32 } %i.w, 1
  %i.aa = add i32 %i.z, 1
  %i.ab = invoke { i32, i32 } @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtCs9NoVXegZYB5_8smol_str7SmolStrlNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, i32 noundef %i.aa)
          to label %.noexc15.i unwind label %bb.j, !noalias !154 ; 0 uses

.noexc15.i:                                       ; preds = %.noexc14.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !154
  br label %bb.g

bb.g:                                             ; preds = %.noexc15.i, %.noexc13.i
  %.not28.i = icmp eq i32 %i.x, 1
  br i1 %.not28.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.13.036.i
  %i.ad = load i64, ptr %i.v, align 8, !noalias !154
  store i64 %i.ad, ptr %i.ac, align 8, !noalias !154
  %i.ae = add i64 %.sroa.13.036.i, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.13.1.i = phi i64 [ %i.ae, %bb.h ], [ %.sroa.13.036.i, %bb.g ] ; 2 uses
  %.sroa.7.0.i = add nuw nsw i64 %.sroa.7.037.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.7.0.i, %i.f
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.e

bb.j:                                             ; preds = %.noexc14.i, %bb.f, %.noexc.i, %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = sub nuw nsw i64 %i.f, %.sroa.7.037.i    ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.13.036.i
  %i.ai = shl nuw nsw i64 %i.ag, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr nonnull align 8 %i.v, i64 %i.ai, i1 false), !noalias !159
  %i.aj = add i64 %i.ag, %.sroa.13.036.i
  store i64 %i.aj, ptr %i.e, align 8, !alias.scope !154, !noalias !160
  resume { ptr, i32 } %i.af

_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecRRNtNtCs3v5ql5U6hxj_6fontir2ir5GlyphE10retain_mutNCINvB2_6retainNCINvNtCsgdm2QMcbaeA_10fontdrasil4util29depth_sorted_composite_glyphsBG_Es_0E0EBL_.exit: ; preds = %bb.d, %bb.a, %._crit_edge.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1l_15NormalizedSpaceEEE8dedup_byNCNvXs7_B1l_INtB1l_8LocationB20_EINtNtCsf3Ta7LF998c_4core7convert4FromBv_E4froms_0ECs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 5 uses
  %i.c = icmp ult i64 %i.b, 576460752303423488
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i64 %i.b, 2
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_15NormalizedSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0Cs3v5ql5U6hxj_6fontir.exit
  %.sroa.0.023 = phi i64 [ 1, %bb.b ], [ %i.k, %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_15NormalizedSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0Cs3v5ql5U6hxj_6fontir.exit ] ; 5 uses
  %i.g = getelementptr [16 x i8], ptr %i.f, i64 %.sroa.0.023 ; 4 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -16
  %.val11 = load i32, ptr %i.g, align 8, !noundef !4
  %i.i = load i32, ptr %i.h, align 8, !alias.scope !165, !noundef !4
  %i.j = icmp eq i32 %.val11, %i.i
  br i1 %i.j, label %bb.d, label %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_15NormalizedSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0Cs3v5ql5U6hxj_6fontir.exit

_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_15NormalizedSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0Cs3v5ql5U6hxj_6fontir.exit: ; preds = %bb.c
  %i.k = add nuw nsw i64 %.sroa.0.023, 1          ; 2 uses
  %.not = icmp eq i64 %i.k, %i.b
  br i1 %.not, label %.thread, label %bb.c

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.g, i64 8
  %.val12 = load double, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %i.g, i64 -8
  store double %.val12, ptr %i.m, align 8, !alias.scope !165
  %.sroa.5.024 = add nuw i64 %.sroa.0.023, 1      ; 2 uses
  %i.n = icmp ult i64 %.sroa.5.024, %i.b
  br i1 %i.n, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %bb.d
  %.sroa.11.0.lcssa = phi i64 [ %.sroa.0.023, %bb.d ], [ %.sroa.11.1, %bb.f ]
  store i64 %.sroa.11.0.lcssa, ptr %i.a, align 8
  br label %.thread

.lr.ph:                                           ; preds = %bb.d, %bb.f
  %.sroa.5.026 = phi i64 [ %.sroa.5.0, %bb.f ], [ %.sroa.5.024, %bb.d ] ; 2 uses
  %.sroa.11.025 = phi i64 [ %.sroa.11.1, %bb.f ], [ %.sroa.0.023, %bb.d ] ; 3 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.sroa.5.026 ; 3 uses
  %i.p = getelementptr [16 x i8], ptr %i.f, i64 %.sroa.11.025 ; 3 uses
  %i.q = getelementptr i8, ptr %i.p, i64 -16
  %.val = load i32, ptr %i.o, align 8, !noundef !4
  %i.r = load i32, ptr %i.q, align 8, !alias.scope !166, !noundef !4
  %i.s = icmp eq i32 %.val, %i.r
  br i1 %i.s, label %bb.e, label %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_15NormalizedSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0Cs3v5ql5U6hxj_6fontir.exit13

.thread:                                          ; preds = %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_15NormalizedSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0Cs3v5ql5U6hxj_6fontir.exit, %bb.a, %._crit_edge
  ret void

_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_15NormalizedSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0Cs3v5ql5U6hxj_6fontir.exit13: ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false)
  %i.t = add i64 %.sroa.11.025, 1
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.u = getelementptr i8, ptr %i.o, i64 8
  %.val10 = load double, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %i.p, i64 -8
  store double %.val10, ptr %i.v, align 8, !alias.scope !166
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_15NormalizedSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0Cs3v5ql5U6hxj_6fontir.exit13
  %.sroa.11.1 = phi i64 [ %.sroa.11.025, %bb.e ], [ %i.t, %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_15NormalizedSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0Cs3v5ql5U6hxj_6fontir.exit13 ] ; 2 uses
  %.sroa.5.0 = add nuw nsw i64 %.sroa.5.026, 1    ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.5.0, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1l_9UserSpaceEEE8dedup_byNCNvXs7_B1l_INtB1l_8LocationB20_EINtNtCsf3Ta7LF998c_4core7convert4FromBv_E4froms_0ECs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 5 uses
  %i.c = icmp ult i64 %i.b, 576460752303423488
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i64 %i.b, 2
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_9UserSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0Cs3v5ql5U6hxj_6fontir.exit
  %.sroa.0.023 = phi i64 [ 1, %bb.b ], [ %i.k, %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_9UserSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0Cs3v5ql5U6hxj_6fontir.exit ] ; 5 uses
  %i.g = getelementptr [16 x i8], ptr %i.f, i64 %.sroa.0.023 ; 4 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -16
  %.val11 = load i32, ptr %i.g, align 8, !noundef !4
  %i.i = load i32, ptr %i.h, align 8, !alias.scope !171, !noundef !4
  %i.j = icmp eq i32 %.val11, %i.i
  br i1 %i.j, label %bb.d, label %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_9UserSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0Cs3v5ql5U6hxj_6fontir.exit

_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_9UserSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0Cs3v5ql5U6hxj_6fontir.exit: ; preds = %bb.c
  %i.k = add nuw nsw i64 %.sroa.0.023, 1          ; 2 uses
  %.not = icmp eq i64 %i.k, %i.b
  br i1 %.not, label %.thread, label %bb.c

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.g, i64 8
  %.val12 = load double, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %i.g, i64 -8
  store double %.val12, ptr %i.m, align 8, !alias.scope !171
  %.sroa.5.024 = add nuw i64 %.sroa.0.023, 1      ; 2 uses
  %i.n = icmp ult i64 %.sroa.5.024, %i.b
  br i1 %i.n, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %bb.d
  %.sroa.11.0.lcssa = phi i64 [ %.sroa.0.023, %bb.d ], [ %.sroa.11.1, %bb.f ]
  store i64 %.sroa.11.0.lcssa, ptr %i.a, align 8
  br label %.thread

.lr.ph:                                           ; preds = %bb.d, %bb.f
  %.sroa.5.026 = phi i64 [ %.sroa.5.0, %bb.f ], [ %.sroa.5.024, %bb.d ] ; 2 uses
  %.sroa.11.025 = phi i64 [ %.sroa.11.1, %bb.f ], [ %.sroa.0.023, %bb.d ] ; 3 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.sroa.5.026 ; 3 uses
  %i.p = getelementptr [16 x i8], ptr %i.f, i64 %.sroa.11.025 ; 3 uses
  %i.q = getelementptr i8, ptr %i.p, i64 -16
  %.val = load i32, ptr %i.o, align 8, !noundef !4
  %i.r = load i32, ptr %i.q, align 8, !alias.scope !172, !noundef !4
  %i.s = icmp eq i32 %.val, %i.r
  br i1 %i.s, label %bb.e, label %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_9UserSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0Cs3v5ql5U6hxj_6fontir.exit13

.thread:                                          ; preds = %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_9UserSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0Cs3v5ql5U6hxj_6fontir.exit, %bb.a, %._crit_edge
  ret void

_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_9UserSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0Cs3v5ql5U6hxj_6fontir.exit13: ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false)
  %i.t = add i64 %.sroa.11.025, 1
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.u = getelementptr i8, ptr %i.o, i64 8
  %.val10 = load double, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %i.p, i64 -8
  store double %.val10, ptr %i.v, align 8, !alias.scope !172
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_9UserSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0Cs3v5ql5U6hxj_6fontir.exit13
  %.sroa.11.1 = phi i64 [ %.sroa.11.025, %bb.e ], [ %i.t, %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_9UserSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0Cs3v5ql5U6hxj_6fontir.exit13 ] ; 2 uses
  %.sroa.5.0 = add nuw nsw i64 %.sroa.5.026, 1    ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.5.0, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE5drainINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECs3v5ql5U6hxj_6fontir(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs3v5ql5U6hxj_6fontir(i64 noundef %2, i64 noundef %3, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6cloned6ClonedINtNtNtB1U_5slice4iter4IterBG_EEEBK_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxEENtNtNtB8_6traits8iterator8Iterator9size_hintB1v_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !10, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = trunc nuw i64 %i.f to i1
  br i1 %i.i, label %bb.b, label %bb.d, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !177, !noundef !4 ; 3 uses
  %i.l = load i64, ptr %0, align 8, !range !11, !alias.scope !177, !noundef !4
  %i.m = sub i64 %i.l, %i.k
  %i.n = icmp ugt i64 %i.h, %i.m
  br i1 %i.n, label %bb.c, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxE7reserveBI_.exit, !prof !6

bb.c:                                             ; preds = %bb.b
  call void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.k, i64 noundef %i.h, i64 noundef 8, i64 noundef 24)
  %.pre = load i64, ptr %i.j, align 8
  br label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxE7reserveBI_.exit

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxE7reserveBI_.exit: ; preds = %bb.b, %bb.c
  %i.o = phi i64 [ %i.k, %bb.b ], [ %.pre, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !178
  store ptr %i.j, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.q, ptr %.sroa.5.0..sroa_idx, align 8
  call void @_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB2i_8for_each4callB1s_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3y_3VecB1s_E14extend_trustedBP_E0E0EB1w_(ptr noundef nonnull %1, ptr noundef %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !178
  ret void

bb.d:                                             ; preds = %bb.a
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameE16extend_desugaredINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6cloned6ClonedINtNtB1O_7flatten7FlatMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesINtNtBK_6coords8LocationNtB3Z_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceEINtNtB1O_3map3MapINtNtNtB1S_5slice4iter4IterNtB4K_9ComponentENCNCNvMsm_B4K_NtB4K_5Glyph15component_names00ENCB6t_0EEEB4M_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_7flatten7FlatMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2m_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceEINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterNtB3u_9ComponentENCNCNvMsm_B3u_NtB3u_5Glyph15component_names00ENCB5b_0EENtNtNtB8_6traits8iterator8Iterator4nextB3w_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
  %i.d = load i8, ptr %i.c, align 8, !range !8, !noundef !4
  %.not3 = icmp eq i8 %i.d, -1
  br i1 %.not3, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameE7reserveCs3v5ql5U6hxj_6fontir.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.g = load i64, ptr %i.e, align 8, !noundef !4 ; 4 uses
  %i.h = icmp ult i64 %i.g, 384307168202282326
  call void @llvm.assume(i1 %i.h)
  %i.i = load i64, ptr %0, align 8, !range !11, !noundef !4
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameE7reserveCs3v5ql5U6hxj_6fontir.exit

._crit_edge:                                      ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameE7reserveCs3v5ql5U6hxj_6fontir.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_7flatten7FlatMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2m_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceEINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterNtB3u_9ComponentENCNCNvMsm_B3u_NtB3u_5Glyph15component_names00ENCB5b_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3w_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1)
          to label %bb.g unwind label %bb.d

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameE7reserveCs3v5ql5U6hxj_6fontir.exit: ; preds = %bb.g, %bb.h, %bb.b
  %i.k = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.m = add nuw nsw i64 %i.g, 1
  store i64 %i.m, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_7flatten7FlatMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2m_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceEINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterNtB3u_9ComponentENCNCNvMsm_B3u_NtB3u_5Glyph15component_names00ENCB5b_0EENtNtNtB8_6traits8iterator8Iterator4nextB3w_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
  %i.n = load i8, ptr %i.c, align 8, !range !8, !noundef !4
  %.not = icmp eq i8 %i.n, -1
  br i1 %.not, label %._crit_edge, label %bb.b

bb.d:                                             ; preds = %bb.h, %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !191)
  call void @llvm.experimental.noalias.scope.decl(metadata !192)
  call void @llvm.experimental.noalias.scope.decl(metadata !193)
  %i.p = load i8, ptr %i.b, align 8, !range !5, !alias.scope !194, !noundef !4
  %switch.i.i.i = icmp samesign ult i8 %i.p, 25
  br i1 %switch.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECs3v5ql5U6hxj_6fontir.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !195)
  call void @llvm.experimental.noalias.scope.decl(metadata !196)
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !197, !nonnull !4, !noundef !4
  %i.s = atomicrmw sub ptr %i.r, i64 1 release, align 8, !noalias !197
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECs3v5ql5U6hxj_6fontir.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q) #20
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECs3v5ql5U6hxj_6fontir.exit unwind label %bb.i

bb.g:                                             ; preds = %bb.c
  %i.u = load i64, ptr %i.a, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.v = call i64 @llvm.uadd.sat.i64(i64 %i.u, i64 1) ; 2 uses
  %i.w = load i64, ptr %i.e, align 8, !alias.scope !198, !noundef !4 ; 2 uses
  %i.x = load i64, ptr %0, align 8, !range !11, !alias.scope !198, !noundef !4
  %i.y = sub i64 %i.x, %i.w
end_hunk_0
