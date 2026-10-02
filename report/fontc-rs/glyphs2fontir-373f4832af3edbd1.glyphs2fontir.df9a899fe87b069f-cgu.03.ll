Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/glyphs2fontir-373f4832af3edbd1.glyphs2fontir.df9a899fe87b069f-cgu.03?download=true
inline.NumInlined: 608
inline.NumDeleted: 230
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata7NameKeyNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir:bb.a
  %i.x = add i16 %.lcssa.i.i.i, -1
  %i.y = and i16 %i.x, %.lcssa.i.i.i
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t), !noalias !1104
  %i.z = icmp eq i64 %i.w, 0
  br i1 %i.z, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata7NameKeyNtNtCsgCecv3eZDcN_5alloc6string6StringEECsjceHdiZFn9b_13glyphs2fontir.exit.i, label %bb.d

_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata7NameKeyNtNtCsgCecv3eZDcN_5alloc6string6StringEECsjceHdiZFn9b_13glyphs2fontir.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata7NameKeyNtNtCsgCecv3eZDcN_5alloc6string6StringEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i, %bb.b
  %i.aa = shl i64 %i.b, 5                         ; 2 uses
  %i.ab = add i64 %i.aa, 32                       ; 2 uses
  %i.ac = add i64 %i.b, 17
  %i.ad = add i64 %i.ac, %i.ab                    ; 4 uses
  %i.ae = icmp uge i64 %i.ad, %i.ab
  %i.af = icmp ult i64 %i.ad, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ae)
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i64 %i.ad, 0
  br i1 %i.ag, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata7NameKeyNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtB2a_5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir.exit, label %bb.g

bb.g:                                             ; preds = %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata7NameKeyNtNtCsgCecv3eZDcN_5alloc6string6StringEECsjceHdiZFn9b_13glyphs2fontir.exit.i
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !1102, !nonnull !4, !noundef !4
  %i.ai = sub nuw nsw i64 -32, %i.aa
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 16) #21, !noalias !1102
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata7NameKeyNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtB2a_5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir.exit

_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata7NameKeyNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtB2a_5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir.exit: ; preds = %bb.a, %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata7NameKeyNtNtCsgCecv3eZDcN_5alloc6string6StringEECsjceHdiZFn9b_13glyphs2fontir.exit.i, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTReINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1115)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1115, !noundef !4 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENtNtB1k_5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1116)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1117, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTReINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEEECsjceHdiZFn9b_13glyphs2fontir.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !1117, !nonnull !4, !noundef !4 ; 3 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !1118
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTReINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i, %bb.c
  %.sroa.05.017.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTReINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i ] ; 2 uses
  %.sroa.6.016.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTReINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i ] ; 2 uses
  %.sroa.86.015.i.i = phi i16 [ %i.j, %bb.c ], [ %i.y, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTReINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i ] ; 2 uses
  %.sroa.107.014.i.i = phi i64 [ %i.e, %bb.c ], [ %i.w, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTReINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i ]
  %.not11.i.i.i = icmp eq i16 %.sroa.86.015.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTReINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEEE9next_implKb0_ECsjceHdiZFn9b_13glyphs2fontir.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.016.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.05.017.i.i, %bb.d ]
  %.val9.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !1119
  %i.m = icmp sgt <16 x i8> %.val9.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -640 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTReINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEEE9next_implKb0_ECsjceHdiZFn9b_13glyphs2fontir.exit.i.i

_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTReINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEEE9next_implKb0_ECsjceHdiZFn9b_13glyphs2fontir.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.016.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.017.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.015.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds [40 x i8], ptr %.sroa.05.1.i.i, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -24 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTReINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i unwind label %bb.e, !noalias !1117

bb.e:                                             ; preds = %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTReINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEEE9next_implKb0_ECsjceHdiZFn9b_13glyphs2fontir.exit.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i.i unwind label %bb.f, !noalias !1117

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23, !noalias !1117
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i.i: ; preds = %bb.e
  resume { ptr, i32 } %i.u

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTReINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i: ; preds = %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTReINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEEE9next_implKb0_ECsjceHdiZFn9b_13glyphs2fontir.exit.i.i
  %i.w = add i64 %.sroa.107.014.i.i, -1           ; 2 uses
  %i.x = add i16 %.lcssa.i.i.i, -1
  %i.y = and i16 %i.x, %.lcssa.i.i.i
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t), !noalias !1117
  %i.z = icmp eq i64 %i.w, 0
  br i1 %i.z, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTReINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEEECsjceHdiZFn9b_13glyphs2fontir.exit.i, label %bb.d

_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTReINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEEECsjceHdiZFn9b_13glyphs2fontir.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTReINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i, %bb.b
  %i.aa = mul i64 %i.b, 40
  %i.ab = icmp slt i64 %i.b, 461168601842738790
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = and i64 %i.aa, -16                      ; 2 uses
  %i.ad = add i64 %i.ac, 48                       ; 2 uses
  %i.ae = add nsw i64 %i.b, 17
  %i.af = add i64 %i.ae, %i.ad                    ; 4 uses
  %i.ag = icmp uge i64 %i.af, %i.ad
  %i.ah = icmp ult i64 %i.af, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ag)
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp eq i64 %i.af, 0
  br i1 %i.ai, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENtNtB1k_5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir.exit, label %bb.g

bb.g:                                             ; preds = %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTReINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEEECsjceHdiZFn9b_13glyphs2fontir.exit.i
  %i.aj = load ptr, ptr %0, align 8, !alias.scope !1115, !nonnull !4, !noundef !4
  %i.ak = sub i64 -48, %i.ac
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.al, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 16) #21, !noalias !1115
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENtNtB1k_5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir.exit

_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENtNtB1k_5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir.exit: ; preds = %bb.a, %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTReINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEEECsjceHdiZFn9b_13glyphs2fontir.exit.i, %bb.g
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTReuEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !4 ; 3 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReuENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir.exit, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.c = shl i64 %.val1, 4                        ; 2 uses
  %i.d = add i64 %i.c, 16                         ; 2 uses
  %i.e = add i64 %.val1, 17
  %i.f = add i64 %i.e, %i.d                       ; 4 uses
  %i.g = icmp uge i64 %i.f, %i.d
  %i.h = icmp ult i64 %i.f, 9223372036854775793
  tail call void @llvm.assume(i1 %i.g)
  tail call void @llvm.assume(i1 %i.h)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.i = icmp eq i64 %i.f, 0
  br i1 %i.i, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReuENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.j = sub nuw nsw i64 -16, %i.c
  %i.k = getelementptr inbounds i8, ptr %.val, i64 %i.j
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 16) #21
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReuENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir.exit

_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReuENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir.exit: ; preds = %bb.a, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTmuEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !4 ; 4 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTmuENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir.exit, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.c = shl i64 %.val1, 2
  %i.d = icmp slt i64 %.val1, 4611686018427387900
  tail call void @llvm.assume(i1 %i.d)
  %i.e = and i64 %i.c, -16                        ; 2 uses
  %i.f = add i64 %i.e, 16                         ; 2 uses
  %i.g = add nsw i64 %.val1, 17
  %i.h = add i64 %i.g, %i.f                       ; 4 uses
  %i.i = icmp uge i64 %i.h, %i.f
  %i.j = icmp ult i64 %i.h, 9223372036854775793
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTmuENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.l = sub nuw nsw i64 -16, %i.e
  %i.m = getelementptr inbounds i8, ptr %.val, i64 %i.l
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 16) #21
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTmuENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir.exit

_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTmuENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir.exit: ; preds = %bb.a, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupuEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsjceHdiZFn9b_13glyphs2fontir(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 5 uses
  %.val3.i = load <16 x i8>, ptr %i.a, align 16, !noalias !1122
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupuEE15into_allocationCsjceHdiZFn9b_13glyphs2fontir.exit, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %2 = icmp slt i64 %i.c, 576460752303423487
  tail call void @llvm.assume(i1 %2)
  %i.g = shl i64 %i.c, 5                          ; 2 uses
  %3 = add i64 %i.g, 32                           ; 2 uses
  %4 = add nsw i64 %i.c, 17
  %i.h = add i64 %4, %3                           ; 3 uses
  %5 = icmp uge i64 %i.h, %3
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ult i64 %i.h, 9223372036854775793
  tail call void @llvm.assume(i1 %6)
  %i.i = sub nuw nsw i64 -32, %i.g
  %i.j = getelementptr inbounds i8, ptr %i.a, i64 %i.i
  br label %_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupuEE15into_allocationCsjceHdiZFn9b_13glyphs2fontir.exit

_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupuEE15into_allocationCsjceHdiZFn9b_13glyphs2fontir.exit: ; preds = %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.511.0 = phi ptr [ undef, %bb.a ], [ %i.j, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.410.0 = phi i64 [ undef, %bb.a ], [ %i.h, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = icmp sgt <16 x i8> %.val3.i, splat (i8 -1)
  %i.m = getelementptr i8, ptr %i.a, i64 %i.c
  %i.n = getelementptr i8, ptr %i.m, i64 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.o, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.k, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.n, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.l, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.410.0, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.511.0, ptr %.sroa.511.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtBb_8RawTableTINtNtCsgCecv3eZDcN_5alloc3vec3VecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2i_15NormalizedSpaceEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B2f_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTOhEE9call_onceCsjceHdiZFn9b_13glyphs2fontir(ptr noundef nonnull %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtCsgCecv3eZDcN_5alloc3vec3VecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1Z_15NormalizedSpaceEEECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtBb_8RawTableTINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceEINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtCs9NoVXegZYB5_8smol_str7SmolStrINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B23_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTOhEE9call_onceCsjceHdiZFn9b_13glyphs2fontir(ptr noundef nonnull %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1l_15NormalizedSpaceEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1O_15NormalizedSpaceEEEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1s_15NormalizedSpaceEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %.body.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1O_15NormalizedSpaceEEEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1s_15NormalizedSpaceEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBV_15NormalizedSpaceEINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtCs9NoVXegZYB5_8smol_str7SmolStrINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B20_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0CsjceHdiZFn9b_13glyphs2fontir.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1O_15NormalizedSpaceEEEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.d, %bb.b
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtCs9NoVXegZYB5_8smol_str7SmolStrINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtCs9NoVXegZYB5_8smol_str7SmolStrINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %.body.i.i
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtCs9NoVXegZYB5_8smol_str7SmolStrINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i: ; preds = %.body.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i

_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBV_15NormalizedSpaceEINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtCs9NoVXegZYB5_8smol_str7SmolStrINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B20_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0CsjceHdiZFn9b_13glyphs2fontir.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1O_15NormalizedSpaceEEEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtCs9NoVXegZYB5_8smol_str7SmolStrINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtBb_8RawTableTNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtBZ_2ir15KerningInstanceEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1G_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTOhEE9call_onceCsjceHdiZFn9b_13glyphs2fontir(ptr noundef nonnull %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1134)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1135, !nonnull !4, !noundef !4
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !1136
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir15KerningInstanceEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs3v5ql5U6hxj_6fontir2ir15KerningInstanceE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir15KerningInstanceEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1138)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !1139, !nonnull !4, !noundef !4
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !1140
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.e, label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtBW_2ir15KerningInstanceEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1D_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0CsjceHdiZFn9b_13glyphs2fontir.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs3v5ql5U6hxj_6fontir2ir15KerningInstanceE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #25
  br label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtBW_2ir15KerningInstanceEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1D_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0CsjceHdiZFn9b_13glyphs2fontir.exit

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir15KerningInstanceEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a

_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtBW_2ir15KerningInstanceEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1D_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0CsjceHdiZFn9b_13glyphs2fontir.exit: ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtBb_8RawTableTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupuEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTOhEE9call_onceCsjceHdiZFn9b_13glyphs2fontir(ptr noundef %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1162)
  %i.a = load i64, ptr %0, align 8, !range !15, !alias.scope !1163, !noundef !4
  %i.b = icmp eq i64 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1165)
  %i.d = load i8, ptr %i.c, align 8, !range !13, !alias.scope !1166, !noundef !4
  %switch.i.i.i.i.i = icmp samesign ult i8 %i.d, 25
  br i1 %switch.i.i.i.i.i, label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0CsjceHdiZFn9b_13glyphs2fontir.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1168)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !1169, !nonnull !4, !noundef !4
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !1169
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir.exit.sink.split.i.i.i, label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0CsjceHdiZFn9b_13glyphs2fontir.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1171)
  %i.i = load i8, ptr %i.c, align 8, !range !13, !alias.scope !1172, !noundef !4
  %switch.i.i1.i.i.i = icmp samesign ult i8 %i.i, 25
  br i1 %switch.i.i1.i.i.i, label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0CsjceHdiZFn9b_13glyphs2fontir.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1174)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !1175, !nonnull !4, !noundef !4
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !1175
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir.exit.sink.split.i.i.i, label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0CsjceHdiZFn9b_13glyphs2fontir.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir.exit.sink.split.i.i.i: ; preds = %bb.e, %bb.c
  %.sink.i.i.i = phi ptr [ %i.e, %bb.c ], [ %i.j, %bb.e ]
  fence acquire
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink.i.i.i) #25
  br label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0CsjceHdiZFn9b_13glyphs2fontir.exit

_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0CsjceHdiZFn9b_13glyphs2fontir.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir.exit.sink.split.i.i.i
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtBb_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1A_15NormalizedSpaceEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1x_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTOhEE9call_onceCsjceHdiZFn9b_13glyphs2fontir(ptr noundef nonnull %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1h_15NormalizedSpaceEEECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtBb_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringjEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_jNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTOhEE9call_onceCsjceHdiZFn9b_13glyphs2fontir(ptr noundef nonnull %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0CsjceHdiZFn9b_13glyphs2fontir.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_RNvYNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtBb_8RawTableTReINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_BX_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTOhEE9call_onceCsjceHdiZFn9b_13glyphs2fontir:bb.a
_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTReINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0CsjceHdiZFn9b_13glyphs2fontir.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration10AccessTypeNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdEuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0EB1Q_(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noundef nonnull align 8, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtBT_15NormalizedSpaceEuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0EBV_(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noundef nonnull align 8, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBT_15NormalizedSpaceEINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1Y_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0ECs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noundef nonnull align 8, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBT_15NormalizedSpaceEuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0EBV_(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noundef nonnull align 8, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtBU_2ir12GlyphAnchorsEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1B_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0EBU_(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noundef nonnull align 8, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtBU_2ir5GlyphEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1B_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0EBU_(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noundef nonnull align 8, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB2q_15NormalizedSpaceEEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtB1B_4hash6random11RandomStateE0EB2s_(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noundef nonnull align 8, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsbZq13ASDQ8l_10font_types3tag3TaguEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0ECsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noundef nonnull align 8, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0ECs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noundef nonnull align 8, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata7NameKeyNtNtCsgCecv3eZDcN_5alloc6string6StringEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1J_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0EBW_(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noundef nonnull align 8, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCsf3pcBkf8rwa_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtCsbeZck1VjBmm_8indexmap5inner8get_hashNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameuE0ECs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noundef nonnull align 8, i64 noundef, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #10

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #13

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsbDKHzkXHCUM_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsbDKHzkXHCUM_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsf3pcBkf8rwa_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsf3pcBkf8rwa_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #13

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscDfuDmzQoJe_5kurbo7bezpath7BezPathENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1l_15NormalizedSpaceEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15VariationRegionIBw_dEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCscDfuDmzQoJe_5kurbo7bezpath7BezPathENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1s_15NormalizedSpaceEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15VariationRegionINtNtB7_3vec3VecdEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtCs9NoVXegZYB5_8smol_str7SmolStrINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callQNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentNCNvNtCsjceHdiZFn9b_13glyphs2fontir6source31update_bracket_glyph_componentss0_0E0INtB7_5FnMutTuB1O_EE8call_mutB2x_(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(96)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRINtNtCsgCecv3eZDcN_5alloc3vec3VecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1I_15NormalizedSpaceEECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtCsgCecv3eZDcN_5alloc6string6StringECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRReECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRmECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #3

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsjceHdiZFn9b_13glyphs2fontir(ptr noundef, ptr noundef, i64 noundef range(i64 1, 0)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #18

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs3v5ql5U6hxj_6fontir2ir15KerningInstanceE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #19

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

attributes #0 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nounwind }
attributes #22 = { cold }
attributes #23 = { cold noreturn nounwind }
attributes #24 = { inlinehint }
attributes #25 = { noinline }
attributes #26 = { noinline noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (809936eac 2026-09-12)"}
!4 = !{}
!5 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!6 = !{!"branch_weights", i32 2002, i32 2000}
!7 = !{i64 8}
!8 = !{!"branch_weights", i32 1, i32 1999}
!9 = !{!"branch_weights", i32 0, i32 1}
!10 = !{!"branch_weights", !"expected", i32 2146946, i32 2145336702}
!11 = !{!"branch_weights", i32 4292820, i32 2143190828}
!12 = !{!"branch_weights", i32 1, i32 4001}
!13 = !{i8 0, i8 26}
!14 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!15 = !{i64 0, i64 2}
!16 = distinct !{!16, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir"}
!17 = distinct !{!17, !16, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!18 = distinct !{!18, !16, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir: argument 2"}
!19 = distinct !{!19, !16, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir: argument 1"}
!20 = distinct !{!20, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir"}
!21 = distinct !{!21, !20, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!22 = distinct !{!22, !20, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir: argument 2"}
!23 = distinct !{!23, !20, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir: argument 1"}
!24 = distinct !{!24, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir"}
!25 = distinct !{!25, !24, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!26 = distinct !{!26, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir"}
!27 = distinct !{!27, !26, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!28 = distinct !{!28, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECsjceHdiZFn9b_13glyphs2fontir"}
!29 = distinct !{!29, !28, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!30 = distinct !{!30, !"_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir"}
!31 = distinct !{!31, !30, !"_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!32 = distinct !{!32, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTINtNtCsgCecv3eZDcN_5alloc3vec3VecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2f_15NormalizedSpaceEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2c_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0CsjceHdiZFn9b_13glyphs2fontir"}
!33 = distinct !{!33, !32, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTINtNtCsgCecv3eZDcN_5alloc3vec3VecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2f_15NormalizedSpaceEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2c_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0CsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!34 = distinct !{!34, !32, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTINtNtCsgCecv3eZDcN_5alloc3vec3VecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2f_15NormalizedSpaceEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2c_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0CsjceHdiZFn9b_13glyphs2fontir: argument 1"}
!35 = distinct !{!35, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!36 = distinct !{!36, !35, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!37 = !{!17}
!38 = !{!19, !18}
!39 = !{!17, !19, !18}
!40 = !{!21}
!41 = !{!21, !23, !22, !17, !19, !18}
!42 = !{!27, !25}
!43 = !{!25}
!44 = !{!22, !18}
!45 = !{!21, !17}
!46 = !{!23, !22, !19, !18}
!47 = !{!29}
!48 = !{!31}
!49 = !{!31, !29}
!50 = !{!31, !29, !22, !18}
!51 = !{!33}
!52 = !{!34}
!53 = !{!34, !22, !18}
!54 = !{!33, !22, !18}
!55 = !{!33, !34, !22, !18}
!56 = !{!36}
!57 = distinct !{!57, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir"}
!58 = distinct !{!58, !57, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!59 = distinct !{!59, !57, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir: argument 2"}
!60 = distinct !{!60, !57, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir: argument 1"}
!61 = distinct !{!61, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir"}
!62 = distinct !{!62, !61, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!63 = distinct !{!63, !61, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir: argument 2"}
!64 = distinct !{!64, !61, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir: argument 1"}
!65 = distinct !{!65, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir"}
!66 = distinct !{!66, !65, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!67 = distinct !{!67, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir"}
!68 = distinct !{!68, !67, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!69 = distinct !{!69, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECsjceHdiZFn9b_13glyphs2fontir"}
!70 = distinct !{!70, !69, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!71 = distinct !{!71, !"_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir"}
!72 = distinct !{!72, !71, !"_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!73 = distinct !{!73, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBV_15NormalizedSpaceEINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtCs9NoVXegZYB5_8smol_str7SmolStrINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B20_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0CsjceHdiZFn9b_13glyphs2fontir"}
!74 = distinct !{!74, !73, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBV_15NormalizedSpaceEINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtCs9NoVXegZYB5_8smol_str7SmolStrINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B20_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0CsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!75 = distinct !{!75, !73, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBV_15NormalizedSpaceEINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtCs9NoVXegZYB5_8smol_str7SmolStrINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B20_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0CsjceHdiZFn9b_13glyphs2fontir: argument 1"}
!76 = distinct !{!76, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!77 = distinct !{!77, !76, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!78 = !{!58}
!79 = !{!60, !59}
!80 = !{!58, !60, !59}
!81 = !{!62}
!82 = !{!62, !64, !63, !58, !60, !59}
!83 = !{!68, !66}
!84 = !{!66}
!85 = !{!63, !59}
!86 = !{!62, !58}
!87 = !{!64, !63, !60, !59}
!88 = !{!70}
!89 = !{!72}
!90 = !{!72, !70}
!91 = !{!72, !70, !63, !59}
!92 = !{!74}
!93 = !{!75}
!94 = !{!75, !63, !59}
!95 = !{!74, !63, !59}
!96 = !{!74, !75, !63, !59}
!97 = !{!77}
!98 = distinct !{!98, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir"}
!99 = distinct !{!99, !98, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!100 = distinct !{!100, !98, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir: argument 2"}
!101 = distinct !{!101, !98, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir: argument 1"}
!102 = distinct !{!102, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir"}
!103 = distinct !{!103, !102, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!104 = distinct !{!104, !102, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir: argument 2"}
!105 = distinct !{!105, !102, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir: argument 1"}
!106 = distinct !{!106, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir"}
!107 = distinct !{!107, !106, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!108 = distinct !{!108, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir"}
!109 = distinct !{!109, !108, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!110 = distinct !{!110, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECsjceHdiZFn9b_13glyphs2fontir"}
!111 = distinct !{!111, !110, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!112 = distinct !{!112, !"_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir"}
!113 = distinct !{!113, !112, !"_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!114 = distinct !{!114, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtBW_2ir15KerningInstanceEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1D_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0CsjceHdiZFn9b_13glyphs2fontir"}
!115 = distinct !{!115, !114, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtBW_2ir15KerningInstanceEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1D_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0CsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!116 = distinct !{!116, !114, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtBW_2ir15KerningInstanceEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1D_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0CsjceHdiZFn9b_13glyphs2fontir: argument 1"}
!117 = distinct !{!117, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!118 = distinct !{!118, !117, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!119 = !{!99}
!120 = !{!101, !100}
!121 = !{!99, !101, !100}
!122 = !{!103}
!123 = !{!103, !105, !104, !99, !101, !100}
!124 = !{!109, !107}
!125 = !{!107}
!126 = !{!104, !100}
!127 = !{!103, !99}
!128 = !{!105, !104, !101, !100}
!129 = !{!111}
!130 = !{!113}
!131 = !{!113, !111}
!132 = !{!113, !111, !104, !100}
!133 = !{!115}
!134 = !{!116}
!135 = !{!116, !104, !100}
!136 = !{!115, !104, !100}
!137 = !{!115, !116, !104, !100}
!138 = !{!118}
!139 = distinct !{!139, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir"}
!140 = distinct !{!140, !139, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!141 = distinct !{!141, !139, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir: argument 2"}
!142 = distinct !{!142, !139, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir: argument 1"}
!143 = distinct !{!143, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir"}
!144 = distinct !{!144, !143, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!145 = distinct !{!145, !143, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir: argument 2"}
!146 = distinct !{!146, !143, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir: argument 1"}
!147 = distinct !{!147, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir"}
!148 = distinct !{!148, !147, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!149 = distinct !{!149, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir"}
!150 = distinct !{!150, !149, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!151 = distinct !{!151, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECsjceHdiZFn9b_13glyphs2fontir"}
!152 = distinct !{!152, !151, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!153 = distinct !{!153, !"_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir"}
!154 = distinct !{!154, !153, !"_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!155 = distinct !{!155, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0CsjceHdiZFn9b_13glyphs2fontir"}
!156 = distinct !{!156, !155, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0CsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!157 = distinct !{!157, !155, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0CsjceHdiZFn9b_13glyphs2fontir: argument 1"}
!158 = distinct !{!158, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!159 = distinct !{!159, !158, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!160 = !{!140}
!161 = !{!142, !141}
!162 = !{!140, !142, !141}
!163 = !{!144}
!164 = !{!144, !146, !145, !140, !142, !141}
!165 = !{!150, !148}
!166 = !{!148}
!167 = !{!145, !141}
!168 = !{!144, !140}
!169 = !{!146, !145, !142, !141}
!170 = !{!152}
!171 = !{!154}
!172 = !{!154, !152}
!173 = !{!154, !152, !145, !141}
!174 = !{!156}
!175 = !{!157}
!176 = !{!157, !145, !141}
!177 = !{!156, !145, !141}
!178 = !{!156, !157, !145, !141}
end_hunk_1
