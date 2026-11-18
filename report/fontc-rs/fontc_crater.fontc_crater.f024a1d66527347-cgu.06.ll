Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontc_crater.fontc_crater.f024a1d66527347-cgu.06?download=true
inline.NumInlined: 309
inline.NumDeleted: 174
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXs5_NtNtCsgCecv3eZDcN_5alloc3vec5drainINtB5_5DrainhENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater:bb.a
  %i.z = add i64 %i.v, %i.f
  store i64 %i.z, ptr %i.u, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNvXs5_NtNtCsgCecv3eZDcN_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardhNtNtBO_5alloc6GlobalEECs1hTjP0dFAwJ_12fontc_crater.exit

bb.i:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.y
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.v
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr nonnull align 1 %i.ac, i64 %i.f, i1 false)
  br label %bb.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCsf3Ta7LF998c_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !475, !noundef !5 ; 4 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048           ; 2 uses
  %i.f = icmp samesign ult i32 %1, 65536          ; 2 uses
  %..i = select i1 %i.f, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.e, i64 2, i64 %..i
  tail call void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.ph.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !475, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b ; 9 uses
  %i.j = trunc i32 %1 to i8
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 3 uses
  %i.m = lshr i32 %1, 6
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 2 uses
  %i.q = lshr i32 %1, 12
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128
  %i.u = lshr i32 %1, 18
  %i.v = trunc nuw nsw i32 %i.u to i8
  %i.w = or disjoint i8 %i.v, -16
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !475, !nonnull !5, !noundef !5
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.b
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.z, align 1
  br label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = or disjoint i8 %i.n, -64
  store i8 %i.ab, ptr %i.i, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.l, ptr %i.ac, align 1
  br label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = or disjoint i8 %i.r, -32
  store i8 %i.ad, ptr %i.i, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.p, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.l, ptr %i.af, align 1
  br label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.w, ptr %i.i, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.t, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.p, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.l, ptr %i.ai, align 1
  br label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push.exit

_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.03.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.aj = add nuw i64 %.sroa.0.03.i, %i.b
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !475
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  tail call void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !481
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !482, !noundef !5 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !482, !nonnull !5, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !482
  br label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !482
  ret i1 false
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsh_NtCs8FY1skn7E2W_15crossbeam_deque5dequeINtB5_8InjectorNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef readonly align 128 captures(none) dereferenceable(256) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 128, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load i64, ptr %i.b, align 128, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !noundef !5 ; 2 uses
  %i.f = and i64 %i.a, -2                         ; 2 uses
  %i.g = and i64 %i.c, -2                         ; 2 uses
  %.not13 = icmp eq i64 %i.f, %i.g
  br i1 %.not13, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.sroa.06.0.lcssa = phi ptr [ %i.e, %bb.a ], [ %.sroa.06.1, %bb.c ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.06.0.lcssa) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.06.0.lcssa, i64 noundef 1520, i64 noundef 8) #19
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.0.015 = phi i64 [ %i.j, %bb.c ], [ %i.f, %bb.a ] ; 2 uses
  %.sroa.06.014 = phi ptr [ %.sroa.06.1, %bb.c ], [ %i.e, %bb.a ] ; 3 uses
  %i.h = and i64 %.sroa.0.015, 126
  %.not10 = icmp eq i64 %i.h, 126
  br i1 %.not10, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.i = load ptr, ptr %.sroa.06.014, align 8, !noundef !5
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.06.014, i64 noundef 1520, i64 noundef 8) #19
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.06.1 = phi ptr [ %i.i, %bb.b ], [ %.sroa.06.014, %.lr.ph ] ; 2 uses
  %i.j = add i64 %.sroa.0.015, 2                  ; 2 uses
  %.not = icmp eq i64 %i.j, %i.g
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCsf3Ta7LF998c_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !13, !noundef !5
  switch i64 %i.a, label %default.unreachable260 [
    i64 0, label %.preheader
    i64 1, label %bb.q
    i64 2, label %bb.r
  ]

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.d = load i8, ptr %i.c, align 2, !range !16
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.j = load i64, ptr %i.i, align 8              ; 16 uses
  br i1 %i.e, label %_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1hTjP0dFAwJ_12fontc_crater.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %.promoted205 = load i8, ptr %i.f, align 8      ; 4 uses
  %.promoted156 = load i64, ptr %i.b, align 8     ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !509)
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
  %i.o = load i8, ptr %i.n, align 1, !alias.scope !510, !noalias !511, !noundef !5
  %i.p = icmp sgt i8 %i.o, -65
  br i1 %i.p, label %bb.d, label %.split.us160

bb.d:                                             ; preds = %bb.c, %.split.i.i.us.peel, %.lr.ph.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 %.promoted156 ; 4 uses
  %i.r = icmp samesign eq i64 %.promoted156, %i.j
  br i1 %i.r, label %.split165.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i8, ptr %i.q, align 1, !noalias !512, !noundef !5 ; 5 uses
  %i.t = icmp sgt i8 %i.s, -1
  br i1 %i.t, label %bb.f, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1hTjP0dFAwJ_12fontc_crater.exit12.i.i.us.peel

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1hTjP0dFAwJ_12fontc_crater.exit12.i.i.us.peel: ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.v = and i8 %i.s, 31
  %i.w = zext nneg i8 %i.v to i32                 ; 3 uses
  %i.x = add nuw nsw i64 %.promoted156, 1
  %i.y = icmp samesign ne i64 %i.x, %i.j
  tail call void @llvm.assume(i1 %i.y)
  %i.z = load i8, ptr %i.u, align 1, !noalias !512, !noundef !5
  %i.aa = shl nuw nsw i32 %i.w, 6
  %i.ab = and i8 %i.z, 63
  %i.ac = zext nneg i8 %i.ab to i32               ; 2 uses
  %i.ad = or disjoint i32 %i.aa, %i.ac
  %i.ae = icmp samesign ugt i8 %i.s, -33
  br i1 %i.ae, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1hTjP0dFAwJ_12fontc_crater.exit14.i.i.us.peel, label %bb.g

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1hTjP0dFAwJ_12fontc_crater.exit14.i.i.us.peel: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1hTjP0dFAwJ_12fontc_crater.exit12.i.i.us.peel
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.ag = add nuw nsw i64 %.promoted156, 2
  %i.ah = icmp samesign ne i64 %i.ag, %i.j
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = load i8, ptr %i.af, align 1, !noalias !512, !noundef !5
  %i.aj = shl nuw nsw i32 %i.ac, 6
  %i.ak = and i8 %i.ai, 63
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = or disjoint i32 %i.aj, %i.al            ; 2 uses
  %i.an = shl nuw nsw i32 %i.w, 12
  %i.ao = or disjoint i32 %i.am, %i.an
  %i.ap = icmp samesign ugt i8 %i.s, -17
  br i1 %i.ap, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1hTjP0dFAwJ_12fontc_crater.exit16.i.i.us.peel, label %bb.g

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1hTjP0dFAwJ_12fontc_crater.exit16.i.i.us.peel: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1hTjP0dFAwJ_12fontc_crater.exit14.i.i.us.peel
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 3
  %i.ar = add nuw nsw i64 %.promoted156, 3
  %i.as = icmp samesign ne i64 %i.ar, %i.j
  tail call void @llvm.assume(i1 %i.as)
  %i.at = load i8, ptr %i.aq, align 1, !noalias !512, !noundef !5
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

bb.g:                                             ; preds = %bb.f, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1hTjP0dFAwJ_12fontc_crater.exit16.i.i.us.peel, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1hTjP0dFAwJ_12fontc_crater.exit14.i.i.us.peel, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1hTjP0dFAwJ_12fontc_crater.exit12.i.i.us.peel
  %.sroa.4.0.i.ph.i.us.peel = phi i32 [ %i.ao, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1hTjP0dFAwJ_12fontc_crater.exit14.i.i.us.peel ], [ %i.ba, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1hTjP0dFAwJ_12fontc_crater.exit16.i.i.us.peel ], [ %i.ad, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1hTjP0dFAwJ_12fontc_crater.exit12.i.i.us.peel ], [ %i.bb, %bb.f ] ; 4 uses
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
  store i64 %i.bg, ptr %i.b, align 8, !alias.scope !509
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !513)
  br i1 %i.bh, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.us.peel
  br i1 %.not.i.i.us, label %bb.l, label %.split.i.i.us

.split.i.i.us:                                    ; preds = %bb.k
  br i1 %i.bi, label %bb.m, label %.split.us160

bb.l:                                             ; preds = %bb.k
  %i.bv = load i8, ptr %i.bj, align 1, !alias.scope !510, !noalias !514, !noundef !5
  %i.bw = icmp sgt i8 %i.bv, -65
  br i1 %i.bw, label %bb.m, label %.split.us160

bb.m:                                             ; preds = %bb.l, %.split.i.i.us, %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.us.peel
  br i1 %i.bl, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = load i8, ptr %i.bk, align 1, !noalias !515, !noundef !5 ; 5 uses
  %i.by = icmp sgt i8 %i.bx, -1
  br i1 %i.by, label %bb.o, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1hTjP0dFAwJ_12fontc_crater.exit12.i.i.us

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1hTjP0dFAwJ_12fontc_crater.exit12.i.i.us: ; preds = %bb.n
  %i.bz = and i8 %i.bx, 31
  %i.ca = zext nneg i8 %i.bz to i32               ; 3 uses
  tail call void @llvm.assume(i1 %i.bo)
  %i.cb = load i8, ptr %i.bm, align 1, !noalias !515, !noundef !5
  %i.cc = shl nuw nsw i32 %i.ca, 6
  %i.cd = and i8 %i.cb, 63
  %i.ce = zext nneg i8 %i.cd to i32               ; 2 uses
  %i.cf = or disjoint i32 %i.cc, %i.ce
  %i.cg = icmp samesign ugt i8 %i.bx, -33
  br i1 %i.cg, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1hTjP0dFAwJ_12fontc_crater.exit14.i.i.us, label %.loopexit41.split.us.loopexit

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1hTjP0dFAwJ_12fontc_crater.exit14.i.i.us: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1hTjP0dFAwJ_12fontc_crater.exit12.i.i.us
  tail call void @llvm.assume(i1 %i.br)
  %i.ch = load i8, ptr %i.bp, align 1, !noalias !515, !noundef !5
  %i.ci = shl nuw nsw i32 %i.ce, 6
  %i.cj = and i8 %i.ch, 63
  %i.ck = zext nneg i8 %i.cj to i32
  %i.cl = or disjoint i32 %i.ci, %i.ck            ; 2 uses
  %i.cm = shl nuw nsw i32 %i.ca, 12
  %i.cn = or disjoint i32 %i.cl, %i.cm
  %i.co = icmp samesign ugt i8 %i.bx, -17
  br i1 %i.co, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1hTjP0dFAwJ_12fontc_crater.exit16.i.i.us, label %.loopexit41.split.us.loopexit

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1hTjP0dFAwJ_12fontc_crater.exit16.i.i.us: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1hTjP0dFAwJ_12fontc_crater.exit14.i.i.us
  tail call void @llvm.assume(i1 %i.bu)
  %i.cp = load i8, ptr %i.bs, align 1, !noalias !515, !noundef !5
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

.loopexit41.split.us.loopexit:                    ; preds = %bb.o, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1hTjP0dFAwJ_12fontc_crater.exit16.i.i.us, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1hTjP0dFAwJ_12fontc_crater.exit14.i.i.us, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1hTjP0dFAwJ_12fontc_crater.exit12.i.i.us
  %.sroa.4.0.i.ph.i.us = phi i32 [ %i.cn, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1hTjP0dFAwJ_12fontc_crater.exit14.i.i.us ], [ %i.cw, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1hTjP0dFAwJ_12fontc_crater.exit16.i.i.us ], [ %i.cf, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1hTjP0dFAwJ_12fontc_crater.exit12.i.i.us ], [ %i.cx, %bb.o ]
  %i.cy = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us, 1114112
  tail call void @llvm.assume(i1 %i.cy)
  br label %.loopexit41.split.us

.split.us160:                                     ; preds = %bb.l, %.split.i.i.us, %bb.c, %.split.i.i.us.peel
  %.lcssa322 = phi i64 [ %.promoted156, %.split.i.i.us.peel ], [ %.promoted156, %bb.c ], [ %i.bg, %.split.i.i.us ], [ %i.bg, %bb.l ]
  %.lcssa319 = phi i8 [ %.promoted205, %.split.i.i.us.peel ], [ %.promoted205, %bb.c ], [ 1, %.split.i.i.us ], [ 1, %bb.l ]
  %i.cz = xor i8 %.lcssa319, 1
  store i8 %i.cz, ptr %i.f, align 8, !alias.scope !513
  tail call void @_RNvNtCsf3Ta7LF998c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.j, i64 noundef %.lcssa322, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #23, !noalias !514
  unreachable

.split165.us:                                     ; preds = %bb.d
  %i.da = xor i8 %.promoted205, 1
  store i8 %i.da, ptr %i.f, align 8, !alias.scope !513
  br i1 %i.k, label %bb.s, label %bb.p

.loopexit41.split.us:                             ; preds = %.loopexit41.split.us.loopexit, %bb.g
  %.lcssa324 = phi i64 [ %.promoted156, %bb.g ], [ %i.bg, %.loopexit41.split.us.loopexit ]
  store i8 0, ptr %i.f, align 8, !alias.scope !513
  br label %bb.s

default.unreachable260:                           ; preds = %bb.a
  unreachable

bb.p:                                             ; preds = %.split165.us
  store i8 1, ptr %i.c, align 2, !alias.scope !513
  br label %_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1hTjP0dFAwJ_12fontc_crater.exit

bb.q:                                             ; preds = %bb.a
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dc = load i64, ptr %i.db, align 8, !noundef !5 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.de = load i64, ptr %i.dd, align 8, !noundef !5 ; 4 uses
  %.not = icmp ult i64 %i.de, %i.dc
  br i1 %.not, label %bb.t, label %_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1hTjP0dFAwJ_12fontc_crater.exit

bb.r:                                             ; preds = %bb.a
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.dh = load i64, ptr %i.dg, align 8, !noundef !5 ; 2 uses
  %i.di = icmp eq i64 %i.dh, -1
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dk = load ptr, ptr %i.dj, align 8, !nonnull !5, !noundef !5 ; 6 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dm = load i64, ptr %i.dl, align 8, !noundef !5 ; 10 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.do = load ptr, ptr %i.dn, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.dq = load i64, ptr %i.dp, align 8, !noundef !5 ; 14 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 8 uses
  %i.ds = add nsw i64 %i.dq, -1                   ; 4 uses
  br i1 %i.di, label %bb.ae, label %bb.w

.critedge:                                        ; preds = %bb.m
  store i8 0, ptr %i.f, align 8, !alias.scope !513
  br label %bb.s

bb.s:                                             ; preds = %.critedge, %.loopexit41.split.us, %.split165.us
  %i.dt = phi i64 [ %.lcssa324, %.loopexit41.split.us ], [ %i.j, %.split165.us ], [ %i.j, %.critedge ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dt, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dt, ptr %i.dv, align 8
  br label %_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1hTjP0dFAwJ_12fontc_crater.exit

_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1hTjP0dFAwJ_12fontc_crater.exit: ; preds = %bb.s, %bb.p, %.preheader, %.split.us.i20, %._crit_edge.i12, %.split.us.i10, %._crit_edge.i, %.loopexit42, %.loopexit43, %bb.q
  %storemerge.i.sink = phi i64 [ 1, %.loopexit42 ], [ 1, %.split.us.i10 ], [ 0, %bb.q ], [ 1, %.split.us.i20 ], [ 0, %.loopexit43 ], [ 0, %._crit_edge.i ], [ 0, %._crit_edge.i12 ], [ 1, %bb.s ], [ 0, %bb.p ], [ 0, %.preheader ]
  store i64 %storemerge.i.sink, ptr %0, align 8
  ret void

bb.t:                                             ; preds = %bb.q
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dx = load ptr, ptr %i.dw, align 8, !nonnull !5, !noundef !5
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dz = load i8, ptr %i.dy, align 8, !noundef !5 ; 2 uses
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
  %i.ei = load i8, ptr %i.eh, align 1, !alias.scope !516, !noundef !5
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
  br label %_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1hTjP0dFAwJ_12fontc_crater.exit

.loopexit43:                                      ; preds = %bb.v, %bb.u
  store i64 %i.dc, ptr %i.dd, align 8
  br label %_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1hTjP0dFAwJ_12fontc_crater.exit

bb.w:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !517)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !518)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !519)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !520)
  %.promoted.i = load i64, ptr %i.dr, align 8, !alias.scope !518 ; 2 uses
  %i.eq = add i64 %.promoted.i, %i.ds             ; 2 uses
  %i.er = icmp ult i64 %i.eq, %i.dm
  br i1 %i.er, label %.lr.ph.i8, label %._crit_edge.i

.lr.ph.i8:                                        ; preds = %bb.w
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.et = load i64, ptr %i.es, align 8, !alias.scope !518, !noundef !5
  %i.eu = load i64, ptr %i.df, align 8, !alias.scope !518 ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ew = load i64, ptr %i.ev, align 8, !alias.scope !518 ; 2 uses
  %i.ex = sub i64 %i.dq, %i.ew
  %invariant.op = sub i64 1, %i.eu
  br label %.lr.ph.split.i

._crit_edge.i:                                    ; preds = %bb.z, %bb.w
  store i64 %i.dm, ptr %i.dr, align 8, !alias.scope !518
  br label %_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1hTjP0dFAwJ_12fontc_crater.exit

.lr.ph.split.i:                                   ; preds = %bb.z, %.lr.ph.i8
  %i.ey = phi i64 [ %.sink70.i, %bb.z ], [ %i.dh, %.lr.ph.i8 ] ; 3 uses
  %i.ez = phi i64 [ %i.fk, %bb.z ], [ %i.eq, %.lr.ph.i8 ]
  %i.fa = phi i64 [ %.sink71.i, %bb.z ], [ %.promoted.i, %.lr.ph.i8 ] ; 7 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.ez
  %i.fc = load i8, ptr %i.fb, align 1, !alias.scope !519, !noundef !5
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
  store i64 %.sink71.i, ptr %i.dr, align 8, !alias.scope !518
  store i64 %.sink70.i, ptr %i.dg, align 8, !alias.scope !518
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
  %i.fq = load i8, ptr %i.fp, align 1, !alias.scope !520, !noundef !5
  %i.fr = add i64 %.sroa.04.0.i304, %i.fa         ; 2 uses
  %i.fs = icmp ult i64 %i.fr, %i.dm
  tail call void @llvm.assume(i1 %i.fs)
  %i.ft = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.fr
  %i.fu = load i8, ptr %i.ft, align 1, !alias.scope !519, !noundef !5
  %.not21.i = icmp eq i8 %i.fq, %i.fu
  br i1 %.not21.i, label %bb.aa, label %bb.ad

.preheader36.i:                                   ; preds = %bb.ab
  %i.fv = icmp ult i64 %i.ey, %i.fz
  br i1 %i.fv, label %.lr.ph307, label %.split.us.i10

.split.us.i10:                                    ; preds = %.preheader36.i.preheader, %.preheader36.i
  %i.fw = add i64 %i.fa, %i.dq                    ; 2 uses
  store i64 %i.fw, ptr %i.dr, align 8, !alias.scope !518
  store i64 0, ptr %i.dg, align 8, !alias.scope !518
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.fa, ptr %i.fx, align 8, !alias.scope !521
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fw, ptr %i.fy, align 8, !alias.scope !521
  br label %_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1hTjP0dFAwJ_12fontc_crater.exit

.lr.ph307:                                        ; preds = %.preheader36.i.preheader, %.preheader36.i
  %.sroa.2.0.i306 = phi i64 [ %i.fz, %.preheader36.i ], [ %i.eu, %.preheader36.i.preheader ]
  %i.fz = add i64 %.sroa.2.0.i306, -1             ; 6 uses
  %i.ga = icmp ult i64 %i.fz, %i.dq
  br i1 %i.ga, label %bb.ab, label %.split32.us.i

bb.ab:                                            ; preds = %.lr.ph307
  %i.gb = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.fz
  %i.gc = load i8, ptr %i.gb, align 1, !alias.scope !520, !noundef !5
  %i.gd = add i64 %i.fz, %i.fa                    ; 2 uses
  %i.ge = icmp ult i64 %i.gd, %i.dm
  tail call void @llvm.assume(i1 %i.ge)
  %i.gf = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.gd
  %i.gg = load i8, ptr %i.gf, align 1, !alias.scope !519, !noundef !5
  %.not20.i = icmp eq i8 %i.gc, %i.gg
  br i1 %.not20.i, label %.preheader36.i, label %bb.ac

.split32.us.i:                                    ; preds = %.lr.ph307
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.fz, i64 noundef range(i64 0, -9223372036854775808) %i.dq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #23, !noalias !522
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.gh = add i64 %i.fa, %i.ew
  br label %bb.z

bb.ad:                                            ; preds = %.lr.ph305
  %.reass.reass = add i64 %i.fa, %invariant.op
  %i.gi = add i64 %.reass.reass, %.sroa.04.0.i304
  br label %bb.z

bb.ae:                                            ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !523)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !524)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !525)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !526)
  %.promoted.i11 = load i64, ptr %i.dr, align 8, !alias.scope !524 ; 2 uses
  %i.gj = add i64 %.promoted.i11, %i.ds           ; 2 uses
  %i.gk = icmp ult i64 %i.gj, %i.dm
  br i1 %i.gk, label %.lr.ph.i14, label %._crit_edge.i12

.lr.ph.i14:                                       ; preds = %bb.ae
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gm = load i64, ptr %i.gl, align 8, !alias.scope !524, !noundef !5
  %i.gn = load i64, ptr %i.df, align 8, !alias.scope !524
  %.fr214 = freeze i64 %i.gn                      ; 7 uses
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gp = load i64, ptr %i.go, align 8, !alias.scope !524
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
  %i.gu = load i8, ptr %i.gt, align 1, !alias.scope !525, !noundef !5
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
  %i.hc = load i8, ptr %i.hb, align 1, !alias.scope !526, !noundef !5
  %i.hd = add i64 %i.ha, %i.gs                    ; 2 uses
  %i.he = icmp ult i64 %i.hd, %i.dm
  tail call void @llvm.assume(i1 %i.he)
  %i.hf = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.hd
  %i.hg = load i8, ptr %i.hf, align 1, !alias.scope !525, !noundef !5
  %.not20.us.i.us = icmp eq i8 %i.hc, %i.hg
  br i1 %.not20.us.i.us, label %.preheader.i18.us, label %.split.us

.split.us:                                        ; preds = %.lr.ph314
  %i.hh = add i64 %i.gs, %i.gp
  br label %bb.ah

.lr.ph311:                                        ; preds = %.preheader35.i.preheader, %.preheader35.i
  %.sroa.04.0.us.i310 = phi i64 [ %i.gz, %.preheader35.i ], [ %.fr214, %.preheader35.i.preheader ] ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.do, i64 %.sroa.04.0.us.i310
  %i.hj = load i8, ptr %i.hi, align 1, !alias.scope !526, !noundef !5
  %i.hk = add i64 %.sroa.04.0.us.i310, %i.gs      ; 2 uses
  %i.hl = icmp ult i64 %i.hk, %i.dm
  tail call void @llvm.assume(i1 %i.hl)
  %i.hm = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.hk
  %i.hn = load i8, ptr %i.hm, align 1, !alias.scope !525, !noundef !5
  %.not21.us.i = icmp eq i8 %i.hj, %i.hn
  br i1 %.not21.us.i, label %.preheader35.i, label %bb.af

.preheader.i18:                                   ; preds = %.preheader.i18.preheader
  br i1 %.not34.i.us312, label %.split.us.i20, label %.split32.us.i19

.split32.us.i19:                                  ; preds = %.preheader.i18
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.gq, i64 noundef range(i64 0, -9223372036854775808) %i.dq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #23, !noalias !527
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
  store i64 %.sink.i17, ptr %i.dr, align 8, !alias.scope !524
  %i.hq = add i64 %.sink.i17, %i.ds               ; 2 uses
  %i.hr = icmp ult i64 %i.hq, %i.dm
  br i1 %i.hr, label %.lr.ph.split.us.i, label %._crit_edge.i12

._crit_edge.i12:                                  ; preds = %bb.ah, %bb.ae
  store i64 %i.dm, ptr %i.dr, align 8, !alias.scope !524
  br label %_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1hTjP0dFAwJ_12fontc_crater.exit

.split.us.i20:                                    ; preds = %.preheader.i18.us.preheader, %.preheader.i18.us, %.preheader.i18
  %i.hs = add i64 %i.gs, %i.dq                    ; 2 uses
  store i64 %i.hs, ptr %i.dr, align 8, !alias.scope !524
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.gs, ptr %i.ht, align 8, !alias.scope !528
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.hs, ptr %i.hu, align 8, !alias.scope !528
  br label %_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1hTjP0dFAwJ_12fontc_crater.exit
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path6parent(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path12strip_prefixRBw_ECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1hTjP0dFAwJ_12fontc_crater(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare void @_RNvXso_NtCsgCecv3eZDcN_5alloc6stringRNtB5_6StringNtNtNtCsf3Ta7LF998c_4core3str7pattern7Pattern13into_searcher(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(address) dereferenceable(104), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageNtNtCsoAydF1FF3_15crossbeam_epoch9collector11LocalHandleuE16get_or_init_slowNvNvNtB1i_7default6HANDLE27___rust_std_internal_init_fnECs1hTjP0dFAwJ_12fontc_crater(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable_or_null(16)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE9from_iterCs1hTjP0dFAwJ_12fontc_crater(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRhNtB6_5Debug3fmtCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs6_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @tidyCreate() unnamed_addr #5

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @tidySetErrorBuffer(ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsiHtoPb4bGwG_6tidier7options10reset_opts(ptr noundef, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @tidyParseString(ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_CsiHtoPb4bGwG_6tidierNtB4_3Doc11diagnostics(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterhENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXCsiHtoPb4bGwG_6tidierNtB2_3DocNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvXNtCslNgMNtvf3y7_6memchr3extPhNtB2_7Pointer8distanceCs1hTjP0dFAwJ_12fontc_crater(ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvXs6_NtCs2xcxdQoJA8F_10serde_json5errorNtB6_5ErrorNtNtCs7N5MyPZKytm_10serde_core2de5Error6customNtNtCsgCecv3eZDcN_5alloc6string6StringECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCs2xcxdQoJA8F_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer15deserialize_strNtNtB1j_5impls10StrVisitorECs1hTjP0dFAwJ_12fontc_crater(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYNtNtNtCs7N5MyPZKytm_10serde_core2de5impls10StrVisitorNtB7_7Visitor9visit_strNtNtCs2xcxdQoJA8F_10serde_json5error5ErrorECs1hTjP0dFAwJ_12fontc_crater(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvNtCsoAydF1FF3_15crossbeam_epoch7default9collector() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvMs1_NtCsoAydF1FF3_15crossbeam_epoch9collectorNtB5_9Collector8register(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #14

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path4joinRBw_ECs1hTjP0dFAwJ_12fontc_crater(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCs1hTjP0dFAwJ_12fontc_crater(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path4joinRNtB7_7PathBufECs1hTjP0dFAwJ_12fontc_crater(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path4joinNtB7_7PathBufECs1hTjP0dFAwJ_12fontc_crater(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsr_NtCs5Xr050g3D4S_3std4pathNtB6_7PathBuf4pushRBv_ECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMNtCsf3Ta7LF998c_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path12strip_prefixRNtB7_7PathBufECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1b_NtCs5Xr050g3D4S_3std4pathNtB6_7DisplayNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsf3Ta7LF998c_4core3fmt5Write9write_fmtCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCsgCecv3eZDcN_5alloc6stringNtB3_6String13replace_rangeINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef, i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path9file_stem(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsr_NtCs5Xr050g3D4S_3std4pathNtB6_7PathBuf4pushRNtNtNtB8_3ffi6os_str5OsStrECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path14with_extensionReECs1hTjP0dFAwJ_12fontc_crater(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsr_NtCs5Xr050g3D4S_3std4pathNtB6_7PathBuf4pushNtNtCsgCecv3eZDcN_5alloc6string6StringECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsr_NtCs5Xr050g3D4S_3std4pathNtB6_7PathBuf4pushReECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path9file_name(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsf3Ta7LF998c_4core3str8converts9from_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE8truncateCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #5

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #15

; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #16
end_hunk_0
begin_hunk_1_@llvm.experimental.noalias.scope.decl
!287 = !{!266, !264, !262, !260}
!288 = !{!268}
!289 = !{!266, !264, !268, !260}
!290 = !{!268, !260}
!291 = !{!270}
!292 = !{!272}
!293 = !{!274, !272}
!294 = !{!274}
!295 = distinct !{!295, i1 true, !"_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec5drain5DrainhENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBM_8for_each4callhINvNtBU_3mem4drophEE0E0B2i_ECs1hTjP0dFAwJ_12fontc_crater"}
!296 = distinct !{!296, !295, !"_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec5drain5DrainhENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBM_8for_each4callhINvNtBU_3mem4drophEE0E0B2i_ECs1hTjP0dFAwJ_12fontc_crater: argument 0"}
!297 = distinct !{!297, i1 true, !"_RNvXs3_NtNtCsgCecv3eZDcN_5alloc3vec5drainINtB5_5DrainhENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1hTjP0dFAwJ_12fontc_crater"}
!298 = distinct !{!298, !297, !"_RNvXs3_NtNtCsgCecv3eZDcN_5alloc3vec5drainINtB5_5DrainhENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1hTjP0dFAwJ_12fontc_crater: argument 0"}
!299 = distinct !{!299, i1 true, !"_RINvMs2_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCsf3Ta7LF998c_4core3str4iter5BytesECs1hTjP0dFAwJ_12fontc_crater"}
!300 = distinct !{!300, !299, !"_RINvMs2_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCsf3Ta7LF998c_4core3str4iter5BytesECs1hTjP0dFAwJ_12fontc_crater: argument 0"}
!301 = distinct !{!301, i1 true, !"_RNvXs7_NtNtCsf3Ta7LF998c_4core3str4iterNtB5_5BytesNtNtNtNtB9_4iter6traits8iterator8Iterator4next"}
!302 = distinct !{!302, !301, !"_RNvXs7_NtNtCsf3Ta7LF998c_4core3str4iterNtB5_5BytesNtNtNtNtB9_4iter6traits8iterator8Iterator4next: argument 0"}
!303 = distinct !{!303, i1 true, !"_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1hTjP0dFAwJ_12fontc_crater"}
!304 = distinct !{!304, !303, !"_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1hTjP0dFAwJ_12fontc_crater: argument 0"}
!305 = distinct !{!305, i1 true, !"_RNvMs2_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs1hTjP0dFAwJ_12fontc_crater"}
!306 = distinct !{!306, !305, !"_RNvMs2_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs1hTjP0dFAwJ_12fontc_crater: argument 0"}
!307 = distinct !{!307, i1 true, !"_RINvMs2_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCsf3Ta7LF998c_4core3str4iter5BytesECs1hTjP0dFAwJ_12fontc_crater"}
!308 = distinct !{!308, !307, !"_RINvMs2_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCsf3Ta7LF998c_4core3str4iter5BytesECs1hTjP0dFAwJ_12fontc_crater: argument 0"}
!309 = distinct !{!309, i1 true, !"_RNvXs7_NtNtCsf3Ta7LF998c_4core3str4iterNtB5_5BytesNtNtNtNtB9_4iter6traits8iterator8Iterator4next"}
!310 = distinct !{!310, !309, !"_RNvXs7_NtNtCsf3Ta7LF998c_4core3str4iterNtB5_5BytesNtNtNtNtB9_4iter6traits8iterator8Iterator4next: argument 0"}
!311 = distinct !{!311, i1 true, !"_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1hTjP0dFAwJ_12fontc_crater"}
!312 = distinct !{!312, !311, !"_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1hTjP0dFAwJ_12fontc_crater: argument 0"}
!313 = distinct !{!313, i1 true, !"_RNvMs2_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs1hTjP0dFAwJ_12fontc_crater"}
!314 = distinct !{!314, !313, !"_RNvMs2_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs1hTjP0dFAwJ_12fontc_crater: argument 0"}
!315 = distinct !{!315, i1 true, !"_RINvMs2_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECs1hTjP0dFAwJ_12fontc_crater"}
!316 = distinct !{!316, !315, !"_RINvMs2_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECs1hTjP0dFAwJ_12fontc_crater: argument 0"}
!317 = distinct !{!317, i1 true, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterhENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1hTjP0dFAwJ_12fontc_crater"}
!318 = distinct !{!318, !317, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterhENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1hTjP0dFAwJ_12fontc_crater: argument 0"}
!319 = !{!298, !296}
!320 = !{!300}
!321 = !{!304, !302, !300}
!322 = !{!302}
!323 = !{!302, !300}
!324 = !{!306}
!325 = !{!308}
!326 = !{!312, !310, !308}
!327 = !{!310}
!328 = !{!310, !308}
!329 = !{!314}
!330 = !{!316}
!331 = !{!318, !316}
!332 = !{!318}
!333 = distinct !{!333, i1 true, !"_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtB6_7Display3fmtBA_"}
!334 = distinct !{!334, !333, !"_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtB6_7Display3fmtBA_: argument 0"}
!335 = !{!334}
!336 = distinct !{!336, i1 true, !"_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRRNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtB6_7Display3fmtBB_"}
!337 = distinct !{!337, !336, !"_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRRNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtB6_7Display3fmtBB_: argument 0"}
!338 = distinct !{!338, i1 true, !"_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtB6_7Display3fmtBA_"}
!339 = distinct !{!339, !338, !"_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtB6_7Display3fmtBA_: argument 0"}
!340 = distinct !{!340, !336, !"_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRRNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtB6_7Display3fmtBB_: argument 1"}
!341 = !{!337}
!342 = !{!339}
!343 = !{!337, !340}
!344 = !{!339, !337}
!345 = distinct !{!345, i1 true, !"_RINvMNtCsf3Ta7LF998c_4core3stre11rsplit_oncecECs1hTjP0dFAwJ_12fontc_crater"}
!346 = distinct !{!346, !345, !"_RINvMNtCsf3Ta7LF998c_4core3stre11rsplit_oncecECs1hTjP0dFAwJ_12fontc_crater: argument 0"}
!347 = distinct !{!347, i1 true, !"_RNvXs0_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher15next_match_back"}
!348 = distinct !{!348, !347, !"_RNvXs0_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher15next_match_back: argument 1"}
!349 = distinct !{!349, !347, !"_RNvXs0_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher15next_match_back: argument 0"}
!350 = distinct !{!350, !345, !"_RINvMNtCsf3Ta7LF998c_4core3stre11rsplit_oncecECs1hTjP0dFAwJ_12fontc_crater: argument 1"}
!351 = distinct !{!351, i1 true, !"_RINvMNtCsf3Ta7LF998c_4core3stre10split_oncecECs1hTjP0dFAwJ_12fontc_crater"}
!352 = distinct !{!352, !351, !"_RINvMNtCsf3Ta7LF998c_4core3stre10split_oncecECs1hTjP0dFAwJ_12fontc_crater: argument 0"}
!353 = distinct !{!353, i1 true, !"_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match"}
!354 = distinct !{!354, !353, !"_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 1"}
!355 = distinct !{!355, !353, !"_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 0"}
!356 = distinct !{!356, !351, !"_RINvMNtCsf3Ta7LF998c_4core3stre10split_oncecECs1hTjP0dFAwJ_12fontc_crater: argument 1"}
!357 = distinct !{!357, i1 true, !"_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr"}
!358 = distinct !{!358, !357, !"_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr: argument 0"}
!359 = distinct !{!359, i1 true, !"_RNCNvXs2_NtCs1hTjP0dFAwJ_12fontc_crater6targetNtB7_6TargetNtNtNtCsf3Ta7LF998c_4core3str6traits7FromStr8from_str0B9_"}
!360 = distinct !{!360, !359, !"_RNCNvXs2_NtCs1hTjP0dFAwJ_12fontc_crater6targetNtB7_6TargetNtNtNtCsf3Ta7LF998c_4core3str6traits7FromStr8from_str0B9_: argument 0"}
!361 = distinct !{!361, i1 true, !"_RINvMNtCsf3Ta7LF998c_4core3stre10split_oncecECs1hTjP0dFAwJ_12fontc_crater"}
!362 = distinct !{!362, !361, !"_RINvMNtCsf3Ta7LF998c_4core3stre10split_oncecECs1hTjP0dFAwJ_12fontc_crater: argument 0"}
!363 = distinct !{!363, i1 true, !"_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match"}
!364 = distinct !{!364, !363, !"_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 1"}
!365 = distinct !{!365, !363, !"_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 0"}
!366 = distinct !{!366, !361, !"_RINvMNtCsf3Ta7LF998c_4core3stre10split_oncecECs1hTjP0dFAwJ_12fontc_crater: argument 1"}
!367 = distinct !{!367, i1 true, !"_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr"}
!368 = distinct !{!368, !367, !"_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr: argument 0"}
!369 = distinct !{!369, i1 true, !"_RNCNvXs2_NtCs1hTjP0dFAwJ_12fontc_crater6targetNtB7_6TargetNtNtNtCsf3Ta7LF998c_4core3str6traits7FromStr8from_strs_0B9_"}
!370 = distinct !{!370, !369, !"_RNCNvXs2_NtCs1hTjP0dFAwJ_12fontc_crater6targetNtB7_6TargetNtNtNtCsf3Ta7LF998c_4core3str6traits7FromStr8from_strs_0B9_: argument 0"}
!371 = distinct !{!371, i1 true, !"_RINvYINtNtNtCsf3Ta7LF998c_4core3str4iter12MatchIndicescENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvBS_10advance_byB3_NtB2j_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB1G_EECs1hTjP0dFAwJ_12fontc_crater"}
!372 = distinct !{!372, !371, !"_RINvYINtNtNtCsf3Ta7LF998c_4core3str4iter12MatchIndicescENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvBS_10advance_byB3_NtB2j_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB1G_EECs1hTjP0dFAwJ_12fontc_crater: argument 0"}
!373 = distinct !{!373, i1 true, !"_RNvXs1r_NtNtCsf3Ta7LF998c_4core3str4iterINtB6_12MatchIndicescENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1hTjP0dFAwJ_12fontc_crater"}
!374 = distinct !{!374, !373, !"_RNvXs1r_NtNtCsf3Ta7LF998c_4core3str4iterINtB6_12MatchIndicescENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1hTjP0dFAwJ_12fontc_crater: argument 1"}
!375 = distinct !{!375, !373, !"_RNvXs1r_NtNtCsf3Ta7LF998c_4core3str4iterINtB6_12MatchIndicescENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1hTjP0dFAwJ_12fontc_crater: argument 0"}
!376 = distinct !{!376, i1 true, !"_RNvMsp_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_20MatchIndicesInternalcE4nextCs1hTjP0dFAwJ_12fontc_crater"}
!377 = distinct !{!377, !376, !"_RNvMsp_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_20MatchIndicesInternalcE4nextCs1hTjP0dFAwJ_12fontc_crater: argument 1"}
!378 = distinct !{!378, !376, !"_RNvMsp_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_20MatchIndicesInternalcE4nextCs1hTjP0dFAwJ_12fontc_crater: argument 0"}
!379 = distinct !{!379, i1 true, !"_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match"}
!380 = distinct !{!380, !379, !"_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 1"}
!381 = distinct !{!381, !379, !"_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 0"}
!382 = distinct !{!382, i1 true, !"_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr"}
!383 = distinct !{!383, !382, !"_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr: argument 0"}
!384 = distinct !{!384, i1 true, !"_RNCNvXs2_NtCs1hTjP0dFAwJ_12fontc_crater6targetNtB7_6TargetNtNtNtCsf3Ta7LF998c_4core3str6traits7FromStr8from_strs0_0B9_"}
!385 = distinct !{!385, !384, !"_RNCNvXs2_NtCs1hTjP0dFAwJ_12fontc_crater6targetNtB7_6TargetNtNtNtCsf3Ta7LF998c_4core3str6traits7FromStr8from_strs0_0B9_: argument 0"}
!386 = distinct !{!386, i1 true, !"_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match"}
!387 = distinct !{!387, !386, !"_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 1"}
!388 = distinct !{!388, !386, !"_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 0"}
!389 = distinct !{!389, i1 true, !"_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr"}
!390 = distinct !{!390, !389, !"_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr: argument 0"}
!391 = distinct !{!391, i1 true, !"_RINvMNtCs1hTjP0dFAwJ_12fontc_crater6targetNtB3_6Target3newNtNtCsgCecv3eZDcN_5alloc6string6StringReB1w_B1w_EB5_"}
!392 = distinct !{!392, !391, !"_RINvMNtCs1hTjP0dFAwJ_12fontc_crater6targetNtB3_6Target3newNtNtCsgCecv3eZDcN_5alloc6string6StringReB1w_B1w_EB5_: argument 0"}
!393 = distinct !{!393, !391, !"_RINvMNtCs1hTjP0dFAwJ_12fontc_crater6targetNtB3_6Target3newNtNtCsgCecv3eZDcN_5alloc6string6StringReB1w_B1w_EB5_: argument 1"}
!394 = distinct !{!394, !391, !"_RINvMNtCs1hTjP0dFAwJ_12fontc_crater6targetNtB3_6Target3newNtNtCsgCecv3eZDcN_5alloc6string6StringReB1w_B1w_EB5_: argument 4"}
!395 = distinct !{!395, !391, !"_RINvMNtCs1hTjP0dFAwJ_12fontc_crater6targetNtB3_6Target3newNtNtCsgCecv3eZDcN_5alloc6string6StringReB1w_B1w_EB5_: argument 3"}
!396 = distinct !{!396, !391, !"_RINvMNtCs1hTjP0dFAwJ_12fontc_crater6targetNtB3_6Target3newNtNtCsgCecv3eZDcN_5alloc6string6StringReB1w_B1w_EB5_: argument 2"}
!397 = distinct !{!397, i1 true, !"_RNvXs1_NtCsf3Ta7LF998c_4core7convertReINtB5_4IntoNtNtCsgCecv3eZDcN_5alloc6string6StringE4intoCs1hTjP0dFAwJ_12fontc_crater"}
!398 = distinct !{!398, !397, !"_RNvXs1_NtCsf3Ta7LF998c_4core7convertReINtB5_4IntoNtNtCsgCecv3eZDcN_5alloc6string6StringE4intoCs1hTjP0dFAwJ_12fontc_crater: argument 0"}
!399 = distinct !{!399, i1 true, !"_RNvXsK_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringINtNtCsf3Ta7LF998c_4core7convert4FromReE4from"}
!400 = distinct !{!400, !399, !"_RNvXsK_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringINtNtCsf3Ta7LF998c_4core7convert4FromReE4from: argument 0"}
!401 = distinct !{!401, !397, !"_RNvXs1_NtCsf3Ta7LF998c_4core7convertReINtB5_4IntoNtNtCsgCecv3eZDcN_5alloc6string6StringE4intoCs1hTjP0dFAwJ_12fontc_crater: argument 1"}
!402 = distinct !{!402, !399, !"_RNvXsK_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringINtNtCsf3Ta7LF998c_4core7convert4FromReE4from: argument 1"}
!403 = distinct !{!403, i1 true, !"_RINvXs_NvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs1hTjP0dFAwJ_12fontc_crater"}
!404 = distinct !{!404, !403, !"_RINvXs_NvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs1hTjP0dFAwJ_12fontc_crater: argument 1"}
!405 = distinct !{!405, !403, !"_RINvXs_NvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs1hTjP0dFAwJ_12fontc_crater: argument 0"}
!406 = distinct !{!406, i1 true, !"_RNvXs1_NtCsf3Ta7LF998c_4core7convertReINtB5_4IntoNtNtCs5Xr050g3D4S_3std4path7PathBufE4intoCs1hTjP0dFAwJ_12fontc_crater"}
!407 = distinct !{!407, !406, !"_RNvXs1_NtCsf3Ta7LF998c_4core7convertReINtB5_4IntoNtNtCs5Xr050g3D4S_3std4path7PathBufE4intoCs1hTjP0dFAwJ_12fontc_crater: argument 0"}
!408 = distinct !{!408, i1 true, !"_RNvXsz_NtCs5Xr050g3D4S_3std4pathNtB5_7PathBufINtNtCsf3Ta7LF998c_4core7convert4FromReE4fromCs1hTjP0dFAwJ_12fontc_crater"}
!409 = distinct !{!409, !408, !"_RNvXsz_NtCs5Xr050g3D4S_3std4pathNtB5_7PathBufINtNtCsf3Ta7LF998c_4core7convert4FromReE4fromCs1hTjP0dFAwJ_12fontc_crater: argument 0"}
!410 = distinct !{!410, !406, !"_RNvXs1_NtCsf3Ta7LF998c_4core7convertReINtB5_4IntoNtNtCs5Xr050g3D4S_3std4path7PathBufE4intoCs1hTjP0dFAwJ_12fontc_crater: argument 1"}
!411 = distinct !{!411, !408, !"_RNvXsz_NtCs5Xr050g3D4S_3std4pathNtB5_7PathBufINtNtCsf3Ta7LF998c_4core7convert4FromReE4fromCs1hTjP0dFAwJ_12fontc_crater: argument 1"}
!412 = distinct !{!412, i1 true, !"_RINvXs_NvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs1hTjP0dFAwJ_12fontc_crater"}
!413 = distinct !{!413, !412, !"_RINvXs_NvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs1hTjP0dFAwJ_12fontc_crater: argument 1"}
!414 = distinct !{!414, !412, !"_RINvXs_NvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs1hTjP0dFAwJ_12fontc_crater: argument 0"}
!415 = distinct !{!415, i1 true, !"_RNvXs1_NtCsf3Ta7LF998c_4core7convertReINtB5_4IntoNtNtCs5Xr050g3D4S_3std4path7PathBufE4intoCs1hTjP0dFAwJ_12fontc_crater"}
!416 = distinct !{!416, !415, !"_RNvXs1_NtCsf3Ta7LF998c_4core7convertReINtB5_4IntoNtNtCs5Xr050g3D4S_3std4path7PathBufE4intoCs1hTjP0dFAwJ_12fontc_crater: argument 0"}
!417 = distinct !{!417, i1 true, !"_RNvXsz_NtCs5Xr050g3D4S_3std4pathNtB5_7PathBufINtNtCsf3Ta7LF998c_4core7convert4FromReE4fromCs1hTjP0dFAwJ_12fontc_crater"}
!418 = distinct !{!418, !417, !"_RNvXsz_NtCs5Xr050g3D4S_3std4pathNtB5_7PathBufINtNtCsf3Ta7LF998c_4core7convert4FromReE4fromCs1hTjP0dFAwJ_12fontc_crater: argument 0"}
!419 = distinct !{!419, !415, !"_RNvXs1_NtCsf3Ta7LF998c_4core7convertReINtB5_4IntoNtNtCs5Xr050g3D4S_3std4path7PathBufE4intoCs1hTjP0dFAwJ_12fontc_crater: argument 1"}
!420 = distinct !{!420, !417, !"_RNvXsz_NtCs5Xr050g3D4S_3std4pathNtB5_7PathBufINtNtCsf3Ta7LF998c_4core7convert4FromReE4fromCs1hTjP0dFAwJ_12fontc_crater: argument 1"}
!421 = distinct !{!421, i1 true, !"_RINvXs_NvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs1hTjP0dFAwJ_12fontc_crater"}
!422 = distinct !{!422, !421, !"_RINvXs_NvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs1hTjP0dFAwJ_12fontc_crater: argument 1"}
!423 = distinct !{!423, !421, !"_RINvXs_NvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs1hTjP0dFAwJ_12fontc_crater: argument 0"}
!424 = distinct !{!424, i1 true, !"_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String8truncate"}
!425 = distinct !{!425, !424, !"_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String8truncate: argument 0"}
!426 = distinct !{!426, i1 true, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs5Xr050g3D4S_3std4path7PathBufNtBJ_16StripPrefixErrorE9unwrap_orCs1hTjP0dFAwJ_12fontc_crater"}
!427 = distinct !{!427, !426, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs5Xr050g3D4S_3std4path7PathBufNtBJ_16StripPrefixErrorE9unwrap_orCs1hTjP0dFAwJ_12fontc_crater: argument 0"}
!428 = distinct !{!428, !426, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs5Xr050g3D4S_3std4path7PathBufNtBJ_16StripPrefixErrorE9unwrap_orCs1hTjP0dFAwJ_12fontc_crater: argument 2"}
!429 = distinct !{!429, !426, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs5Xr050g3D4S_3std4path7PathBufNtBJ_16StripPrefixErrorE9unwrap_orCs1hTjP0dFAwJ_12fontc_crater: argument 1"}
!430 = !{!349, !348, !346}
!431 = !{!350}
!432 = !{!355, !354, !352}
!433 = !{!358, !356}
!434 = !{!355, !354}
!435 = !{!356}
!436 = !{!360}
!437 = !{!365, !364, !362}
!438 = !{!368, !366}
!439 = !{!365, !364}
!440 = !{!366}
!441 = !{!370}
!442 = !{!381, !380, !378, !377, !375, !374, !372}
!443 = !{!383}
!444 = !{!385}
!445 = !{!388, !387}
!446 = !{!390}
!447 = !{!392}
!448 = !{!393}
!449 = !{!392, !393, !396, !395, !394}
!450 = !{!398}
!451 = !{!400}
!452 = !{!405, !404, !400, !402, !398, !401, !392, !393, !396, !395, !394}
!453 = !{!405, !400, !398, !392, !393, !395, !394}
!454 = !{!400, !398}
!455 = !{!407}
!456 = !{!409}
!457 = !{!414, !413, !409, !411, !407, !410, !392, !393, !396, !395, !394}
!458 = !{!414, !409, !407, !392, !393, !396, !394}
!459 = !{!409, !407}
!460 = !{!416}
!461 = !{!418}
!462 = !{!423, !422, !418, !420, !416, !419, !392, !393, !396, !395, !394}
!463 = !{!423, !418, !416, !392, !393, !396, !395}
!464 = !{!418, !416}
!465 = !{!425}
!466 = !{!425, !392, !393, !396, !395, !394}
!467 = !{!427}
!468 = !{!427, !428}
!469 = !{!427, !429, !392, !393, !396, !395, !394}
!470 = !{!392, !396, !395, !394}
!471 = !{!392, !393}
!472 = !{!393, !396, !395, !394}
!473 = distinct !{!473, i1 true, !"_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push"}
!474 = distinct !{!474, !473, !"_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push: argument 0"}
!475 = !{!474}
!476 = distinct !{!476, i1 true, !"_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String8push_str"}
!477 = distinct !{!477, !476, !"_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String8push_str: argument 1"}
!478 = distinct !{!478, !476, !"_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String8push_str: argument 0"}
!479 = distinct !{!479, i1 true, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCs1hTjP0dFAwJ_12fontc_crater"}
!480 = distinct !{!480, !479, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCs1hTjP0dFAwJ_12fontc_crater: argument 0"}
!481 = !{!477}
!482 = !{!480, !478}
!483 = distinct !{!483, i1 true, !"_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!484 = distinct !{!484, !483, !"_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1:Peel0"}
!485 = distinct !{!485, i1 true, !"_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!486 = distinct !{!486, !485, !"_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!487 = distinct !{!487, !483, !"_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 0:Peel0"}
!488 = distinct !{!488, i1 true, !"_RINvNtNtCsf3Ta7LF998c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs1hTjP0dFAwJ_12fontc_crater"}
!489 = distinct !{!489, !488, !"_RINvNtNtCsf3Ta7LF998c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs1hTjP0dFAwJ_12fontc_crater: argument 0"}
!490 = distinct !{!490, i1 true, !"_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!491 = distinct !{!491, !490, !"_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1"}
!492 = distinct !{!492, !490, !"_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 0"}
!493 = distinct !{!493, i1 true, !"_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr"}
!494 = distinct !{!494, !493, !"_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr: argument 0"}
!495 = distinct !{!495, i1 true, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1hTjP0dFAwJ_12fontc_crater"}
!496 = distinct !{!496, !495, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1hTjP0dFAwJ_12fontc_crater: argument 0"}
!497 = distinct !{!497, !495, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1hTjP0dFAwJ_12fontc_crater: argument 1"}
!498 = distinct !{!498, !495, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1hTjP0dFAwJ_12fontc_crater: argument 2"}
!499 = distinct !{!499, !495, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1hTjP0dFAwJ_12fontc_crater: argument 3"}
!500 = distinct !{!500, i1 true, !"_RNvXsy_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching"}
!501 = distinct !{!501, !500, !"_RNvXsy_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching: argument 0"}
!502 = distinct !{!502, i1 true, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1hTjP0dFAwJ_12fontc_crater"}
!503 = distinct !{!503, !502, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1hTjP0dFAwJ_12fontc_crater: argument 0"}
!504 = distinct !{!504, !502, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1hTjP0dFAwJ_12fontc_crater: argument 1"}
!505 = distinct !{!505, !502, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1hTjP0dFAwJ_12fontc_crater: argument 2"}
!506 = distinct !{!506, !502, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1hTjP0dFAwJ_12fontc_crater: argument 3"}
!507 = distinct !{!507, i1 true, !"_RNvXsy_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching"}
!508 = distinct !{!508, !507, !"_RNvXsy_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching: argument 0"}
!509 = !{!484}
!510 = !{!486}
!511 = !{!487, !484}
!512 = !{!489, !487, !484}
!513 = !{!491}
!514 = !{!492, !491}
!515 = !{!489, !492, !491}
!516 = !{!494}
!517 = !{!496}
!518 = !{!497}
!519 = !{!498}
!520 = !{!499}
!521 = !{!501, !496}
!522 = !{!496, !497, !498, !499}
!523 = !{!503}
!524 = !{!504}
!525 = !{!505}
!526 = !{!506}
!527 = !{!503, !504, !505, !506}
!528 = !{!508, !503}
end_hunk_1
