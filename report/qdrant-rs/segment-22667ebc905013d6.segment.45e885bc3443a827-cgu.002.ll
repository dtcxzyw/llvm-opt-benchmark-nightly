Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/segment-22667ebc905013d6.segment.45e885bc3443a827-cgu.002?download=true
inline.NumInlined: 8609
inline.NumDeleted: 4831
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 73
loop-unroll.NumUnrolled: 74
begin_hunk_0_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENCINvMs1_NtB1r_23compressed_posting_listNtB2F_24CompressedPostingBuilder5buildNtNtCseUPaKcRZYeZ_4half8binary163f16Es0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4s_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5F_3VecmE14extend_trustedBN_E0E0ECs607s0NAIaWN_7segment:bb.a
  %bound0 = icmp ult ptr %scevgep, %scevgep3
  %bound1 = icmp ult ptr %0, %scevgep2
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.k = and i64 %i.e, 7                          ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  %i.m = select i1 %i.l, i64 8, i64 %i.k
  %n.vec = sub nsw i64 %i.e, %i.m                 ; 3 uses
  %i.n = add i64 %.sroa.5.0.copyload, %n.vec
  %i.o = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %wide.vec = load <8 x i32>, ptr %i.p, align 4, !alias.scope !7911, !noalias !7912
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec4 = load <8 x i32>, ptr %i.r, align 4, !alias.scope !7911, !noalias !7912
  %strided.vec5 = shufflevector <8 x i32> %wide.vec4, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.s = getelementptr [4 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <4 x i32> %strided.vec, ptr %i.s, align 4, !alias.scope !7913, !noalias !7914
  store <4 x i32> %strided.vec5, ptr %i.t, align 4, !alias.scope !7913, !noalias !7914
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %scalar.ph.preheader, label %vector.body, !llvm.loop !7908

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.b
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.n, %vector.body ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %vector.body ] ; 4 uses
  %i.v = sub nsw i64 %i.e, %.sroa.01.0.i.ph
  %xtraiter = and i64 %i.v, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.w = phi i64 [ %i.z, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.aa, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.prol
  %.val15.i.prol = load i32, ptr %i.x, align 4, !noalias !7912, !noundef !5
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.w
  store i32 %.val15.i.prol, ptr %i.y, align 4, !noalias !7915
  %i.z = add i64 %i.w, 1                          ; 3 uses
  %i.aa = add nuw i64 %.sroa.01.0.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !7909

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %i.ab = sub nsw i64 %.sroa.01.0.i.ph, %i.e
  %i.ac = icmp ugt i64 %i.ab, -4
  br i1 %i.ac, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildNtNtCseUPaKcRZYeZ_4half8binary163f16Es0_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5S_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECs607s0NAIaWN_7segment.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ad = phi i64 [ %i.as, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.at, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val15.i = load i32, ptr %i.ae, align 4, !noalias !7912, !noundef !5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ad
  store i32 %.val15.i, ptr %i.af, align 4, !noalias !7915
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.val15.i.1 = load i32, ptr %i.ah, align 4, !noalias !7912, !noundef !5
  %i.ai = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ad
  %i.aj = getelementptr i8, ptr %i.ai, i64 4
  store i32 %.val15.i.1, ptr %i.aj, align 4, !noalias !7915
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.val15.i.2 = load i32, ptr %i.al, align 4, !noalias !7912, !noundef !5
  %i.am = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ad
  %i.an = getelementptr i8, ptr %i.am, i64 8
  store i32 %.val15.i.2, ptr %i.an, align 4, !noalias !7915
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %.val15.i.3 = load i32, ptr %i.ap, align 4, !noalias !7912, !noundef !5
  %i.aq = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ad
  %i.ar = getelementptr i8, ptr %i.aq, i64 12
  store i32 %.val15.i.3, ptr %i.ar, align 4, !noalias !7915
  %i.as = add i64 %i.ad, 4                        ; 2 uses
  %i.at = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.au = icmp eq i64 %i.at, %i.e
  br i1 %i.au, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildNtNtCseUPaKcRZYeZ_4half8binary163f16Es0_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5S_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECs607s0NAIaWN_7segment.exit, label %scalar.ph, !llvm.loop !7910

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildNtNtCseUPaKcRZYeZ_4half8binary163f16Es0_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5S_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECs607s0NAIaWN_7segment.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.as, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !7912
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENCINvMs1_NtB1r_23compressed_posting_listNtB2F_24CompressedPostingBuilder5buildNtNtCseUPaKcRZYeZ_4half8binary163f16Es1_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4s_8for_each4callB3M_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5I_3VecB3M_E14extend_trustedBN_E0E0ECs607s0NAIaWN_7segment(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_NtNtCseUPaKcRZYeZ_4half8binary163f16uNCINvMs1_NtBU_23compressed_posting_listNtB47_24CompressedPostingBuilder5buildB3n_Es1_0NCINvNvB1Z_8for_each4callB3n_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5Y_3VecB3n_E14extend_trustedINtB2P_3MapBF_B3Y_EE0E0E0ECs607s0NAIaWN_7segment.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  br label %bb.c

bb.c:                                             ; preds = %bb.p, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.bm, %bb.p ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.bn, %bb.p ] ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7927)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7928)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load float, ptr %i.j, align 4, !alias.scope !7929, !noalias !7930, !noundef !5 ; 2 uses
  %i.l = load atomic i64, ptr @_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache5CACHE monotonic, align 8, !noalias !7931 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %.split.i.i.i.i.i, label %_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache4test.exit.i.i.i.i.i, !prof !31

.split.i.i.i.i.i:                                 ; preds = %bb.c
  %i.n = invoke noundef i128 @_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache21detect_and_initialize()
          to label %.noexc.i unwind label %bb.q, !noalias !7932

.noexc.i:                                         ; preds = %.split.i.i.i.i.i
  %i.o = and i128 %i.n, 18014398509481984
  %.not1.i.i.i.i.i = icmp eq i128 %i.o, 0
  br i1 %.not1.i.i.i.i.i, label %bb.d, label %bb.o

_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache4test.exit.i.i.i.i.i: ; preds = %bb.c
  %i.p = and i64 %i.l, 18014398509481984
  %.not.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.o

bb.d:                                             ; preds = %_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache4test.exit.i.i.i.i.i, %.noexc.i
  %i.q = bitcast float %i.k to i32                ; 5 uses
  %i.r = and i32 %i.q, -2147483648                ; 2 uses
  %i.s = and i32 %i.q, 2139095040                 ; 6 uses
  %i.t = and i32 %i.q, 8388607                    ; 4 uses
  %i.u = icmp eq i32 %i.s, 2139095040
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = icmp eq i32 %i.t, 0
  %..i.i.i.i.i.i = select i1 %i.v, i32 0, i32 512
  %i.w = lshr exact i32 %i.r, 16
  %i.x = lshr i32 %i.t, 13
  %i.y = or disjoint i32 %i.x, %i.w
  %i.z = or i32 %i.y, %..i.i.i.i.i.i
  %i.aa = trunc nuw i32 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 31744
  br label %bb.p

bb.f:                                             ; preds = %bb.d
  %i.ac = lshr exact i32 %i.r, 16                 ; 4 uses
  %i.ad = lshr exact i32 %i.s, 23                 ; 2 uses
  %i.ae = icmp samesign ugt i32 %i.s, 1191182336
  br i1 %i.ae, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = icmp samesign ult i32 %i.s, 947912704
  br i1 %i.af, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ag = trunc nuw i32 %i.ac to i16
  %i.ah = or disjoint i16 %i.ag, 31744
  br label %bb.p

bb.i:                                             ; preds = %bb.g
  %i.ai = lshr exact i32 %i.s, 13
  %i.aj = add nuw nsw i32 %i.ai, 16384
  %i.ak = lshr i32 %i.t, 13
  %i.al = and i32 %i.q, 4096
  %i.am = icmp ne i32 %i.al, 0
  %i.an = and i32 %i.q, 12287
  %i.ao = icmp ne i32 %i.an, 0
  %or.cond.not.i.i.i.i.i.i = and i1 %i.am, %i.ao
  %i.ap = or disjoint i32 %i.aj, %i.ak
  %i.aq = or i32 %i.ap, %i.ac
  %i.ar = trunc i32 %i.aq to i16
  %i.as = zext i1 %or.cond.not.i.i.i.i.i.i to i16
  %spec.select7.i.i.i.i.i.i = add i16 %i.ar, %i.as
  br label %bb.p

bb.j:                                             ; preds = %bb.g
  %i.at = icmp samesign ult i32 %i.s, 855638016
  br i1 %i.at, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = sub nuw nsw i32 126, %i.ad
  %i.av = or disjoint i32 %i.t, 8388608           ; 3 uses
  %i.aw = lshr i32 %i.av, %i.au                   ; 2 uses
  %i.ax = sub nsw i32 29, %i.ad
  %i.ay = and i32 %i.ax, 31                       ; 2 uses
  %i.az = shl nuw i32 1, %i.ay
  %i.ba = and i32 %i.az, %i.av
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bc = trunc nuw i32 %i.ac to i16
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.bd = shl i32 3, %i.ay
  %i.be = add nuw i32 %i.bd, 16777215
  %i.bf = and i32 %i.be, %i.av
  %i.bg = icmp ne i32 %i.bf, 0
  %i.bh = zext i1 %i.bg to i32
  %spec.select.i.i.i.i.i.i = add nuw nsw i32 %i.aw, %i.bh
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %.sroa.03.0.i.i.i.i.i.i = phi i32 [ %i.aw, %bb.k ], [ %spec.select.i.i.i.i.i.i, %bb.m ]
  %i.bi = or i32 %.sroa.03.0.i.i.i.i.i.i, %i.ac
  %i.bj = trunc nuw i32 %i.bi to i16
  br label %bb.p

bb.o:                                             ; preds = %_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache4test.exit.i.i.i.i.i, %.noexc.i
  %i.bk = tail call fastcc noundef i16 @_RNvNtNtNtCseUPaKcRZYeZ_4half8binary164arch3x8619f32_to_f16_x86_f16c(float noundef %i.k) #40
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l, %bb.i, %bb.h, %bb.e
  %.sroa.0.0.i.i.i.i.i = phi i16 [ %i.bk, %bb.o ], [ %i.ab, %bb.e ], [ %i.ah, %bb.h ], [ %i.bc, %bb.l ], [ %i.bj, %bb.n ], [ %spec.select7.i.i.i.i.i.i, %bb.i ]
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  store i16 %.sroa.0.0.i.i.i.i.i, ptr %i.bl, align 2, !noalias !7933
  %i.bm = add i64 %.val10.i, 1                    ; 2 uses
  %i.bn = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.bo = icmp eq i64 %i.bn, %i.h
  br i1 %i.bo, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_NtNtCseUPaKcRZYeZ_4half8binary163f16uNCINvMs1_NtBU_23compressed_posting_listNtB47_24CompressedPostingBuilder5buildB3n_Es1_0NCINvNvB1Z_8for_each4callB3n_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5Y_3VecB3n_E14extend_trustedINtB2P_3MapBF_B3Y_EE0E0E0ECs607s0NAIaWN_7segment.exit, label %bb.c

bb.q:                                             ; preds = %.split.i.i.i.i.i
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !7932
  resume { ptr, i32 } %i.bp

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_NtNtCseUPaKcRZYeZ_4half8binary163f16uNCINvMs1_NtBU_23compressed_posting_listNtB47_24CompressedPostingBuilder5buildB3n_Es1_0NCINvNvB1Z_8for_each4callB3n_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5Y_3VecB3n_E14extend_trustedINtB2P_3MapBF_B3Y_EE0E0E0ECs607s0NAIaWN_7segment.exit: ; preds = %bb.p, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.bm, %bb.p ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !7932
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENCINvMs1_NtB1r_23compressed_posting_listNtB2F_24CompressedPostingBuilder5buildNtNtCseUPaKcRZYeZ_4half8binary163f16Es2_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4s_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5F_3VecmE14extend_trustedBN_E0E0ECs607s0NAIaWN_7segment(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildNtNtCseUPaKcRZYeZ_4half8binary163f16Es2_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5S_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECs607s0NAIaWN_7segment.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 4 uses
  %i.e = lshr i64 %i.d, 3                         ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 136
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 2           ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %i.g = lshr exact i64 %i.d, 1
  %i.h = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %scevgep2 = getelementptr i8, ptr %i.h, i64 %i.g
  %i.i = and i64 %i.d, -8
  %i.j = getelementptr i8, ptr %0, i64 %i.i
  %scevgep3 = getelementptr i8, ptr %i.j, i64 -4
  %bound0 = icmp ult ptr %scevgep, %scevgep3
  %bound1 = icmp ult ptr %0, %scevgep2
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.k = and i64 %i.e, 7                          ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  %i.m = select i1 %i.l, i64 8, i64 %i.k
  %n.vec = sub nsw i64 %i.e, %i.m                 ; 3 uses
  %i.n = add i64 %.sroa.5.0.copyload, %n.vec
  %i.o = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %wide.vec = load <8 x i32>, ptr %i.p, align 4, !alias.scope !7948, !noalias !7949
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec4 = load <8 x i32>, ptr %i.r, align 4, !alias.scope !7948, !noalias !7949
  %strided.vec5 = shufflevector <8 x i32> %wide.vec4, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.s = getelementptr [4 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <4 x i32> %strided.vec, ptr %i.s, align 4, !alias.scope !7950, !noalias !7951
  store <4 x i32> %strided.vec5, ptr %i.t, align 4, !alias.scope !7950, !noalias !7951
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %scalar.ph.preheader, label %vector.body, !llvm.loop !7945

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.b
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.n, %vector.body ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %vector.body ] ; 4 uses
  %i.v = sub nsw i64 %i.e, %.sroa.01.0.i.ph
  %xtraiter = and i64 %i.v, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.w = phi i64 [ %i.z, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.aa, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.prol
  %.val15.i.prol = load i32, ptr %i.x, align 4, !noalias !7949, !noundef !5
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.w
  store i32 %.val15.i.prol, ptr %i.y, align 4, !noalias !7952
  %i.z = add i64 %i.w, 1                          ; 3 uses
  %i.aa = add nuw i64 %.sroa.01.0.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !7946

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %i.ab = sub nsw i64 %.sroa.01.0.i.ph, %i.e
  %i.ac = icmp ugt i64 %i.ab, -4
  br i1 %i.ac, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildNtNtCseUPaKcRZYeZ_4half8binary163f16Es2_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5S_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECs607s0NAIaWN_7segment.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ad = phi i64 [ %i.as, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.at, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val15.i = load i32, ptr %i.ae, align 4, !noalias !7949, !noundef !5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ad
  store i32 %.val15.i, ptr %i.af, align 4, !noalias !7952
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.val15.i.1 = load i32, ptr %i.ah, align 4, !noalias !7949, !noundef !5
  %i.ai = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ad
  %i.aj = getelementptr i8, ptr %i.ai, i64 4
  store i32 %.val15.i.1, ptr %i.aj, align 4, !noalias !7952
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.val15.i.2 = load i32, ptr %i.al, align 4, !noalias !7949, !noundef !5
  %i.am = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ad
  %i.an = getelementptr i8, ptr %i.am, i64 8
  store i32 %.val15.i.2, ptr %i.an, align 4, !noalias !7952
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %.val15.i.3 = load i32, ptr %i.ap, align 4, !noalias !7949, !noundef !5
  %i.aq = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ad
  %i.ar = getelementptr i8, ptr %i.aq, i64 12
  store i32 %.val15.i.3, ptr %i.ar, align 4, !noalias !7952
  %i.as = add i64 %i.ad, 4                        ; 2 uses
  %i.at = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.au = icmp eq i64 %i.at, %i.e
  br i1 %i.au, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildNtNtCseUPaKcRZYeZ_4half8binary163f16Es2_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5S_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECs607s0NAIaWN_7segment.exit, label %scalar.ph, !llvm.loop !7947

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildNtNtCseUPaKcRZYeZ_4half8binary163f16Es2_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5S_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECs607s0NAIaWN_7segment.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.as, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !7949
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENCINvMs1_NtB1r_23compressed_posting_listNtB2F_24CompressedPostingBuilder5buildNtNtNtB1t_6common5types11QuantizedU8Es0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4s_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5F_3VecmE14extend_trustedBN_E0E0ECs607s0NAIaWN_7segment(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildNtNtNtBW_6common5types11QuantizedU8Es0_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5R_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECs607s0NAIaWN_7segment.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 4 uses
  %i.e = lshr i64 %i.d, 3                         ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 136
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterfENCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB1x_22PrimitiveVectorElement22from_float_multivector0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3e_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4r_3VechE14extend_trustedBN_E0E0EB1B_:bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB2n_22PrimitiveVectorElement22from_float_multivector0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4B_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 4 uses
  %i.e = lshr i64 %i.d, 2                         ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 32
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  %i.f = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  %scevgep2 = getelementptr i8, ptr %i.f, i64 %i.e
  %i.g = and i64 %i.d, -4
  %scevgep3 = getelementptr i8, ptr %0, i64 %i.g
  %bound0 = icmp ult ptr %scevgep, %scevgep3
  %bound1 = icmp ult ptr %0, %scevgep2
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 4611686018427387896      ; 4 uses
  %i.h = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.i = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %wide.load = load <4 x float>, ptr %i.j, align 4, !alias.scope !10227, !noalias !10228
  %wide.load4 = load <4 x float>, ptr %i.k, align 4, !alias.scope !10227, !noalias !10228
  %i.l = tail call <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float> %wide.load)
  %i.m = tail call <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float> %wide.load4)
  %i.n = getelementptr i8, ptr %i.i, i64 %index   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store <4 x i8> %i.l, ptr %i.n, align 1, !alias.scope !10229, !noalias !10230
  store <4 x i8> %i.m, ptr %i.o, align 1, !alias.scope !10229, !noalias !10230
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !10225

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB2n_22PrimitiveVectorElement22from_float_multivector0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4B_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.h, %middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.ph, 1
  %i.q = and i64 %i.d, 4
  %lcmp.mod.not = icmp eq i64 %i.q, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i.ph
  %.val15.i.prol = load float, ptr %i.r, align 4, !noalias !10228, !noundef !5
  %i.s = tail call noundef i8 @llvm.fptoui.sat.i8.f32(float %.val15.i.prol)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %.ph
  store i8 %i.s, ptr %i.t, align 1, !noalias !10231
  %i.u = add i64 %.ph, 1                          ; 2 uses
  %i.v = or disjoint i64 %.sroa.01.0.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.u, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.u, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.v, %scalar.ph.prol ]
  %i.w = icmp eq i64 %i.e, %.neg
  br i1 %i.w, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB2n_22PrimitiveVectorElement22from_float_multivector0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4B_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.x = phi i64 [ %i.ag, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.ah, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val15.i = load float, ptr %i.y, align 4, !noalias !10228, !noundef !5
  %i.z = tail call noundef i8 @llvm.fptoui.sat.i8.f32(float %.val15.i)
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.x
  store i8 %i.z, ptr %i.aa, align 1, !noalias !10231
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %.val15.i.1 = load float, ptr %i.ac, align 4, !noalias !10228, !noundef !5
  %i.ad = tail call noundef i8 @llvm.fptoui.sat.i8.f32(float %.val15.i.1)
  %i.ae = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.x
  %i.af = getelementptr i8, ptr %i.ae, i64 1
  store i8 %i.ad, ptr %i.af, align 1, !noalias !10231
  %i.ag = add i64 %i.x, 2                         ; 2 uses
  %i.ah = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %i.ai = icmp eq i64 %i.ah, %i.e
  br i1 %i.ai, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB2n_22PrimitiveVectorElement22from_float_multivector0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4B_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %scalar.ph, !llvm.loop !10226

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB2n_22PrimitiveVectorElement22from_float_multivector0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4B_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.h, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ag, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !10228
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterfENCNvXs_NtNtCs607s0NAIaWN_7segment10data_types9primitiveNtNtCseUPaKcRZYeZ_4half8binary163f16NtB1w_22PrimitiveVectorElement20slice_from_float_cow0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3K_8for_each4callB2i_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB50_3VecB2i_E14extend_trustedBN_E0E0EB1A_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfNtNtCseUPaKcRZYeZ_4half8binary163f16uNCNvXs_NtNtCs607s0NAIaWN_7segment10data_types9primitiveB2d_NtB2V_22PrimitiveVectorElement20slice_from_float_cow0NCINvNvBS_8for_each4callB2d_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5d_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2O_EE0E0E0EB2Z_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 2
  br label %bb.c

bb.c:                                             ; preds = %bb.p, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.bi, %bb.p ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.bj, %bb.p ] ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10244)
  %i.g = load float, ptr %i.f, align 4, !alias.scope !10245, !noalias !10246, !noundef !5 ; 2 uses
  %i.h = load atomic i64, ptr @_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache5CACHE monotonic, align 8, !noalias !10247 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %.split.i.i.i, label %_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache4test.exit.i.i.i, !prof !31

.split.i.i.i:                                     ; preds = %bb.c
  %i.j = invoke noundef i128 @_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache21detect_and_initialize()
          to label %.noexc.i unwind label %bb.q, !noalias !10248

.noexc.i:                                         ; preds = %.split.i.i.i
  %i.k = and i128 %i.j, 18014398509481984
  %.not1.i.i.i = icmp eq i128 %i.k, 0
  br i1 %.not1.i.i.i, label %bb.d, label %bb.o

_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache4test.exit.i.i.i: ; preds = %bb.c
  %i.l = and i64 %i.h, 18014398509481984
  %.not.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.o

bb.d:                                             ; preds = %_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache4test.exit.i.i.i, %.noexc.i
  %i.m = bitcast float %i.g to i32                ; 5 uses
  %i.n = and i32 %i.m, -2147483648                ; 2 uses
  %i.o = and i32 %i.m, 2139095040                 ; 6 uses
  %i.p = and i32 %i.m, 8388607                    ; 4 uses
  %i.q = icmp eq i32 %i.o, 2139095040
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = icmp eq i32 %i.p, 0
  %..i.i.i.i = select i1 %i.r, i32 0, i32 512
  %i.s = lshr exact i32 %i.n, 16
  %i.t = lshr i32 %i.p, 13
  %i.u = or disjoint i32 %i.t, %i.s
  %i.v = or i32 %i.u, %..i.i.i.i
  %i.w = trunc nuw i32 %i.v to i16
  %i.x = or disjoint i16 %i.w, 31744
  br label %bb.p

bb.f:                                             ; preds = %bb.d
  %i.y = lshr exact i32 %i.n, 16                  ; 4 uses
  %i.z = lshr exact i32 %i.o, 23                  ; 2 uses
  %i.aa = icmp samesign ugt i32 %i.o, 1191182336
  br i1 %i.aa, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = icmp samesign ult i32 %i.o, 947912704
  br i1 %i.ab, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ac = trunc nuw i32 %i.y to i16
  %i.ad = or disjoint i16 %i.ac, 31744
  br label %bb.p

bb.i:                                             ; preds = %bb.g
  %i.ae = lshr exact i32 %i.o, 13
  %i.af = add nuw nsw i32 %i.ae, 16384
  %i.ag = lshr i32 %i.p, 13
  %i.ah = and i32 %i.m, 4096
  %i.ai = icmp ne i32 %i.ah, 0
  %i.aj = and i32 %i.m, 12287
  %i.ak = icmp ne i32 %i.aj, 0
  %or.cond.not.i.i.i.i = and i1 %i.ai, %i.ak
  %i.al = or disjoint i32 %i.af, %i.ag
  %i.am = or i32 %i.al, %i.y
  %i.an = trunc i32 %i.am to i16
  %i.ao = zext i1 %or.cond.not.i.i.i.i to i16
  %spec.select7.i.i.i.i = add i16 %i.an, %i.ao
  br label %bb.p

bb.j:                                             ; preds = %bb.g
  %i.ap = icmp samesign ult i32 %i.o, 855638016
  br i1 %i.ap, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = sub nuw nsw i32 126, %i.z
  %i.ar = or disjoint i32 %i.p, 8388608           ; 3 uses
  %i.as = lshr i32 %i.ar, %i.aq                   ; 2 uses
  %i.at = sub nsw i32 29, %i.z
  %i.au = and i32 %i.at, 31                       ; 2 uses
  %i.av = shl nuw i32 1, %i.au
  %i.aw = and i32 %i.av, %i.ar
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ay = trunc nuw i32 %i.y to i16
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.az = shl i32 3, %i.au
  %i.ba = add nuw i32 %i.az, 16777215
  %i.bb = and i32 %i.ba, %i.ar
  %i.bc = icmp ne i32 %i.bb, 0
  %i.bd = zext i1 %i.bc to i32
  %spec.select.i.i.i.i = add nuw nsw i32 %i.as, %i.bd
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %.sroa.03.0.i.i.i.i = phi i32 [ %i.as, %bb.k ], [ %spec.select.i.i.i.i, %bb.m ]
  %i.be = or i32 %.sroa.03.0.i.i.i.i, %i.y
  %i.bf = trunc nuw i32 %i.be to i16
  br label %bb.p

bb.o:                                             ; preds = %_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache4test.exit.i.i.i, %.noexc.i
  %i.bg = tail call fastcc noundef i16 @_RNvNtNtNtCseUPaKcRZYeZ_4half8binary164arch3x8619f32_to_f16_x86_f16c(float noundef %i.g) #40
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l, %bb.i, %bb.h, %bb.e
  %.sroa.0.0.i.i.i = phi i16 [ %i.bg, %bb.o ], [ %i.x, %bb.e ], [ %i.ad, %bb.h ], [ %i.ay, %bb.l ], [ %i.bf, %bb.n ], [ %spec.select7.i.i.i.i, %bb.i ]
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  store i16 %.sroa.0.0.i.i.i, ptr %i.bh, align 2, !noalias !10249
  %i.bi = add i64 %.val10.i, 1                    ; 2 uses
  %i.bj = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.bk = icmp eq i64 %i.bj, %i.e
  br i1 %i.bk, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfNtNtCseUPaKcRZYeZ_4half8binary163f16uNCNvXs_NtNtCs607s0NAIaWN_7segment10data_types9primitiveB2d_NtB2V_22PrimitiveVectorElement20slice_from_float_cow0NCINvNvBS_8for_each4callB2d_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5d_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2O_EE0E0E0EB2Z_.exit, label %bb.c

bb.q:                                             ; preds = %.split.i.i.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !10248
  resume { ptr, i32 } %i.bl

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfNtNtCseUPaKcRZYeZ_4half8binary163f16uNCNvXs_NtNtCs607s0NAIaWN_7segment10data_types9primitiveB2d_NtB2V_22PrimitiveVectorElement20slice_from_float_cow0NCINvNvBS_8for_each4callB2d_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5d_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2O_EE0E0E0EB2Z_.exit: ; preds = %bb.p, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.bi, %bb.p ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !10248
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterfENCNvXs_NtNtCs607s0NAIaWN_7segment10data_types9primitiveNtNtCseUPaKcRZYeZ_4half8binary163f16NtB1w_22PrimitiveVectorElement22from_float_multivector0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3M_8for_each4callB2i_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB52_3VecB2i_E14extend_trustedBN_E0E0EB1A_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfNtNtCseUPaKcRZYeZ_4half8binary163f16uNCNvXs_NtNtCs607s0NAIaWN_7segment10data_types9primitiveB2d_NtB2V_22PrimitiveVectorElement22from_float_multivector0NCINvNvBS_8for_each4callB2d_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5f_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2O_EE0E0E0EB2Z_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 2
  br label %bb.c

bb.c:                                             ; preds = %bb.p, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.bi, %bb.p ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.bj, %bb.p ] ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10262)
  %i.g = load float, ptr %i.f, align 4, !alias.scope !10263, !noalias !10264, !noundef !5 ; 2 uses
  %i.h = load atomic i64, ptr @_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache5CACHE monotonic, align 8, !noalias !10265 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %.split.i.i.i, label %_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache4test.exit.i.i.i, !prof !31

.split.i.i.i:                                     ; preds = %bb.c
  %i.j = invoke noundef i128 @_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache21detect_and_initialize()
          to label %.noexc.i unwind label %bb.q, !noalias !10266

.noexc.i:                                         ; preds = %.split.i.i.i
  %i.k = and i128 %i.j, 18014398509481984
  %.not1.i.i.i = icmp eq i128 %i.k, 0
  br i1 %.not1.i.i.i, label %bb.d, label %bb.o

_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache4test.exit.i.i.i: ; preds = %bb.c
  %i.l = and i64 %i.h, 18014398509481984
  %.not.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.o

bb.d:                                             ; preds = %_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache4test.exit.i.i.i, %.noexc.i
  %i.m = bitcast float %i.g to i32                ; 5 uses
  %i.n = and i32 %i.m, -2147483648                ; 2 uses
  %i.o = and i32 %i.m, 2139095040                 ; 6 uses
  %i.p = and i32 %i.m, 8388607                    ; 4 uses
  %i.q = icmp eq i32 %i.o, 2139095040
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = icmp eq i32 %i.p, 0
  %..i.i.i.i = select i1 %i.r, i32 0, i32 512
  %i.s = lshr exact i32 %i.n, 16
  %i.t = lshr i32 %i.p, 13
  %i.u = or disjoint i32 %i.t, %i.s
  %i.v = or i32 %i.u, %..i.i.i.i
  %i.w = trunc nuw i32 %i.v to i16
  %i.x = or disjoint i16 %i.w, 31744
  br label %bb.p

bb.f:                                             ; preds = %bb.d
  %i.y = lshr exact i32 %i.n, 16                  ; 4 uses
  %i.z = lshr exact i32 %i.o, 23                  ; 2 uses
  %i.aa = icmp samesign ugt i32 %i.o, 1191182336
  br i1 %i.aa, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = icmp samesign ult i32 %i.o, 947912704
  br i1 %i.ab, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ac = trunc nuw i32 %i.y to i16
  %i.ad = or disjoint i16 %i.ac, 31744
  br label %bb.p

bb.i:                                             ; preds = %bb.g
  %i.ae = lshr exact i32 %i.o, 13
  %i.af = add nuw nsw i32 %i.ae, 16384
  %i.ag = lshr i32 %i.p, 13
  %i.ah = and i32 %i.m, 4096
  %i.ai = icmp ne i32 %i.ah, 0
  %i.aj = and i32 %i.m, 12287
  %i.ak = icmp ne i32 %i.aj, 0
  %or.cond.not.i.i.i.i = and i1 %i.ai, %i.ak
  %i.al = or disjoint i32 %i.af, %i.ag
  %i.am = or i32 %i.al, %i.y
  %i.an = trunc i32 %i.am to i16
  %i.ao = zext i1 %or.cond.not.i.i.i.i to i16
  %spec.select7.i.i.i.i = add i16 %i.an, %i.ao
  br label %bb.p

bb.j:                                             ; preds = %bb.g
  %i.ap = icmp samesign ult i32 %i.o, 855638016
  br i1 %i.ap, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = sub nuw nsw i32 126, %i.z
  %i.ar = or disjoint i32 %i.p, 8388608           ; 3 uses
  %i.as = lshr i32 %i.ar, %i.aq                   ; 2 uses
  %i.at = sub nsw i32 29, %i.z
  %i.au = and i32 %i.at, 31                       ; 2 uses
  %i.av = shl nuw i32 1, %i.au
  %i.aw = and i32 %i.av, %i.ar
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ay = trunc nuw i32 %i.y to i16
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.az = shl i32 3, %i.au
  %i.ba = add nuw i32 %i.az, 16777215
  %i.bb = and i32 %i.ba, %i.ar
  %i.bc = icmp ne i32 %i.bb, 0
  %i.bd = zext i1 %i.bc to i32
  %spec.select.i.i.i.i = add nuw nsw i32 %i.as, %i.bd
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %.sroa.03.0.i.i.i.i = phi i32 [ %i.as, %bb.k ], [ %spec.select.i.i.i.i, %bb.m ]
  %i.be = or i32 %.sroa.03.0.i.i.i.i, %i.y
  %i.bf = trunc nuw i32 %i.be to i16
  br label %bb.p

bb.o:                                             ; preds = %_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache4test.exit.i.i.i, %.noexc.i
  %i.bg = tail call fastcc noundef i16 @_RNvNtNtNtCseUPaKcRZYeZ_4half8binary164arch3x8619f32_to_f16_x86_f16c(float noundef %i.g) #40
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l, %bb.i, %bb.h, %bb.e
  %.sroa.0.0.i.i.i = phi i16 [ %i.bg, %bb.o ], [ %i.x, %bb.e ], [ %i.ad, %bb.h ], [ %i.ay, %bb.l ], [ %i.bf, %bb.n ], [ %spec.select7.i.i.i.i, %bb.i ]
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  store i16 %.sroa.0.0.i.i.i, ptr %i.bh, align 2, !noalias !10267
  %i.bi = add i64 %.val10.i, 1                    ; 2 uses
  %i.bj = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.bk = icmp eq i64 %i.bj, %i.e
  br i1 %i.bk, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfNtNtCseUPaKcRZYeZ_4half8binary163f16uNCNvXs_NtNtCs607s0NAIaWN_7segment10data_types9primitiveB2d_NtB2V_22PrimitiveVectorElement22from_float_multivector0NCINvNvBS_8for_each4callB2d_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5f_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2O_EE0E0E0EB2Z_.exit, label %bb.c

bb.q:                                             ; preds = %.split.i.i.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !10266
  resume { ptr, i32 } %i.bl

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfNtNtCseUPaKcRZYeZ_4half8binary163f16uNCNvXs_NtNtCs607s0NAIaWN_7segment10data_types9primitiveB2d_NtB2V_22PrimitiveVectorElement22from_float_multivector0NCINvNvBS_8for_each4callB2d_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5f_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2O_EE0E0E0EB2Z_.exit: ; preds = %bb.p, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.bi, %bb.p ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !10266
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB1x_22PrimitiveVectorElement18slice_to_float_cow0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3a_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4n_3VecfE14extend_trustedBN_E0E0EB1B_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhfuNCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB2n_22PrimitiveVectorElement18slice_to_float_cow0NCINvNvBS_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4x_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.d = sub nuw i64 %i.b, %i.c                   ; 4 uses
  %min.iters.check = icmp ult i64 %i.d, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.e = shl i64 %.sroa.5.0.copyload, 2
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.e
  %i.f = add i64 %.sroa.5.0.copyload, %i.b
  %i.g = sub i64 %i.f, %i.c
  %i.h = shl i64 %i.g, 2
  %scevgep2 = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.h
  %bound0 = icmp ult ptr %scevgep, %1
  %bound1 = icmp ult ptr %0, %scevgep2
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.d, -8                       ; 4 uses
  %i.i = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.j = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %wide.load = load <4 x i8>, ptr %i.k, align 1, !alias.scope !10282, !noalias !10283
  %wide.load4 = load <4 x i8>, ptr %i.l, align 1, !alias.scope !10282, !noalias !10283
  %i.m = uitofp <4 x i8> %wide.load to <4 x float>
  %i.n = uitofp <4 x i8> %wide.load4 to <4 x float>
  %i.o = getelementptr [4 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store <4 x float> %i.m, ptr %i.o, align 4, !alias.scope !10284, !noalias !10285
  store <4 x float> %i.n, ptr %i.p, align 4, !alias.scope !10284, !noalias !10285
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !10279

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhfuNCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB2n_22PrimitiveVectorElement18slice_to_float_cow0NCINvNvBS_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4x_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.i, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %i.r = sub i64 %i.b, %i.c
  %xtraiter = and i64 %i.r, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.s = phi i64 [ %i.w, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.x, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i.prol
  %.val15.i.prol = load i8, ptr %i.t, align 1, !noalias !10283, !noundef !5
  %i.u = uitofp i8 %.val15.i.prol to float
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.s
  store float %i.u, ptr %i.v, align 4, !noalias !10286
  %i.w = add i64 %i.s, 1                          ; 3 uses
  %i.x = add nuw i64 %.sroa.01.0.i.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !10280

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.w, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.w, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.x, %scalar.ph.prol ]
  %i.y = sub i64 %.sroa.01.0.i.ph, %i.b
  %i.z = add i64 %i.y, %i.c
  %i.aa = icmp ugt i64 %i.z, -4
  br i1 %i.aa, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhfuNCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB2n_22PrimitiveVectorElement18slice_to_float_cow0NCINvNvBS_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4x_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ab = phi i64 [ %i.au, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.av, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i
  %.val15.i = load i8, ptr %i.ac, align 1, !noalias !10283, !noundef !5
  %i.ad = uitofp i8 %.val15.i to float
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab
  store float %i.ad, ptr %i.ae, align 4, !noalias !10286
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %.val15.i.1 = load i8, ptr %i.ag, align 1, !noalias !10283, !noundef !5
  %i.ah = uitofp i8 %.val15.i.1 to float
  %i.ai = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab
  %i.aj = getelementptr i8, ptr %i.ai, i64 4
  store float %i.ah, ptr %i.aj, align 4, !noalias !10286
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  %.val15.i.2 = load i8, ptr %i.al, align 1, !noalias !10283, !noundef !5
  %i.am = uitofp i8 %.val15.i.2 to float
  %i.an = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab
  %i.ao = getelementptr i8, ptr %i.an, i64 8
  store float %i.am, ptr %i.ao, align 4, !noalias !10286
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 3
  %.val15.i.3 = load i8, ptr %i.aq, align 1, !noalias !10283, !noundef !5
  %i.ar = uitofp i8 %.val15.i.3 to float
  %i.as = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab
  %i.at = getelementptr i8, ptr %i.as, i64 12
  store float %i.ar, ptr %i.at, align 4, !noalias !10286
  %i.au = add i64 %i.ab, 4                        ; 2 uses
  %i.av = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.aw = icmp eq i64 %i.av, %i.d
  br i1 %i.aw, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhfuNCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB2n_22PrimitiveVectorElement18slice_to_float_cow0NCINvNvBS_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4x_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %scalar.ph, !llvm.loop !10281

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhfuNCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB2n_22PrimitiveVectorElement18slice_to_float_cow0NCINvNvBS_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4x_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.i, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.au, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !10283
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB1x_22PrimitiveVectorElement22into_float_multivector0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3e_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4r_3VecfE14extend_trustedBN_E0E0EB1B_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhfuNCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB2n_22PrimitiveVectorElement22into_float_multivector0NCINvNvBS_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4B_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64                   ; 4 uses
end_hunk_1
