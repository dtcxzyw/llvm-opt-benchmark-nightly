Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonISelDAGToDAGHVX?download=true
inline.NumInlined: 4949
inline.NumDeleted: 1897
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh:bb.a
_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !996
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %2
  store ptr %i.s, ptr %i.c, align 8, !tbaa !996
  %i.t = sub i64 %i.n, %i.i                       ; 4 uses
  %i.u = icmp sgt i64 %i.t, 1
  br i1 %i.u, label %bb.h, label %bb.i, !prof !14

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds i8, ptr %i.d, i64 %i.v
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %1, i64 %i.t, i1 false)
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.x = icmp eq i64 %i.t, 1
  br i1 %i.x, label %bb.j, label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds i8, ptr %i.d, i64 -1
  %i.z = load i8, ptr %1, align 1, !tbaa !306
  store i8 %i.z, ptr %i.y, align 1, !tbaa !306
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit:       ; preds = %bb.j, %bb.i, %bb.h
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %i.h, i64 %2, i1 false)
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

bb.k:                                             ; preds = %bb.c
  %i.aa = icmp eq i64 %2, %i.j
  br i1 %i.aa, label %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = sub nuw i64 %2, %i.j                    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ab
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.d, i8 %i.h, i64 %i.ab, i1 false)
  br label %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit

_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %bb.k, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.k ], [ %i.ac, %bb.l ] ; 3 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !996
  %i.ad = icmp sgt i64 %i.j, 1
  br i1 %i.ad, label %bb.m, label %bb.n, !prof !14

bb.m:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0.i.i.i.i.i, ptr align 1 %1, i64 %i.j, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit
  %i.ae = icmp eq i64 %i.j, 1
  br i1 %i.ae, label %bb.o, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50

bb.o:                                             ; preds = %bb.n
  %i.af = load i8, ptr %1, align 1, !tbaa !306
  store i8 %i.af, ptr %.0.i.i.i.i.i, align 1, !tbaa !306
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50: ; preds = %bb.m, %bb.n, %bb.o
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !996
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.j
  store ptr %i.ah, ptr %i.c, align 8, !tbaa !996
  %.not.i.i.i51 = icmp eq ptr %i.d, %1
  br i1 %.not.i.i.i51, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit, label %bb.p

bb.p:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %i.h, i64 %i.j, i1 false)
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

bb.q:                                             ; preds = %bb.b
  %i.ai = load ptr, ptr %0, align 8, !tbaa !858   ; 5 uses
  %i.aj = ptrtoint ptr %i.ai to i64               ; 3 uses
  %i.ak = sub i64 %i.f, %i.aj                     ; 4 uses
  %i.al = sub i64 9223372036854775807, %i.ak
  %i.am = icmp ult i64 %i.al, %2
  br i1 %i.am, label %bb.r, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #26
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit:    ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ak, i64 %2)
  %i.an = add i64 %.sroa.speculated.i, %i.ak      ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.ak
  %i.ap = tail call i64 @llvm.umin.i64(i64 %i.an, i64 9223372036854775807)
  %i.aq = select i1 %i.ao, i64 9223372036854775807, i64 %i.ap ; 3 uses
  %i.ar = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.as = sub i64 %i.ar, %i.aj                    ; 4 uses
  %.not.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i, label %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit54, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.at = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #25
  br label %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit54

_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit54: ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit, %bb.s
  %i.au = phi ptr [ %i.at, %bb.s ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %i.as ; 2 uses
  %i.aw = load i8, ptr %3, align 1, !tbaa !306
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.av, i8 %i.aw, i64 %2, i1 false)
  %i.ax = icmp sgt i64 %i.as, 1
  br i1 %i.ax, label %bb.t, label %bb.u, !prof !14

bb.t:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit54
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %i.ai, i64 %i.as, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit54
  %i.ay = icmp eq i64 %i.as, 1
  br i1 %i.ay, label %bb.v, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %bb.u
  %i.az = load i8, ptr %i.ai, align 1, !tbaa !306
  store i8 %i.az, ptr %i.au, align 1, !tbaa !306
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.t, %bb.u, %bb.v
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 %2 ; 3 uses
  %i.bb = sub i64 %i.f, %i.ar                     ; 4 uses
  %i.bc = icmp sgt i64 %i.bb, 1
  br i1 %i.bc, label %bb.w, label %bb.x, !prof !14

bb.w:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ba, ptr align 1 %1, i64 %i.bb, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.bd = icmp eq i64 %i.bb, 1
  br i1 %i.bd, label %bb.y, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55

bb.y:                                             ; preds = %bb.x
  %i.be = load i8, ptr %1, align 1, !tbaa !306
  store i8 %i.be, ptr %i.ba, align 1, !tbaa !306
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55

_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55: ; preds = %bb.w, %bb.x, %bb.y
  %i.bf = getelementptr inbounds i8, ptr %i.ba, i64 %i.bb
  %.not.i56 = icmp eq ptr %i.ai, null
  br i1 %.not.i56, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, label %bb.z

bb.z:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !876
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.bi) #27
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55, %bb.z
  store ptr %i.au, ptr %0, align 8, !tbaa !858
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !996
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aq
  store ptr %i.bj, ptr %i.a, align 8, !tbaa !876
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

_ZSt4fillIPhhEvT_S1_RKT0_.exit:                   ; preds = %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit, %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50, %bb.p, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119ForwardDeltaNetwork5routeEPiPSt6vectorIhSaIhEEjj(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #16 align 2 {
bb.a:
  %.not101 = icmp eq i32 %3, 0
  br i1 %.not101, label %.thread130, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = sdiv i32 %3, 2                           ; 5 uses
  %i.b = zext i32 %4 to i64
  %i.c = zext i32 %3 to i64                       ; 3 uses
  %i.d = sext i32 %i.a to i64
  br label %bb.b

.lr.ph108:                                        ; preds = %bb.i
  %i.e = sdiv i32 %3, 2                           ; 11 uses
  %i.f = zext i32 %3 to i64
  %min.iters.check = icmp ult i32 %3, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph108
  %n.vec = and i64 %i.c, 4294967288               ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.e, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue146, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue146 ] ; 9 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load = load <4 x i32>, ptr %i.g, align 4, !tbaa !13 ; 6 uses
  %wide.load132 = load <4 x i32>, ptr %i.h, align 4, !tbaa !13 ; 6 uses
  %i.i = icmp ne <4 x i32> %wide.load, splat (i32 -1)
  %i.j = icmp ne <4 x i32> %wide.load132, splat (i32 -1)
  %i.k = icmp sge <4 x i32> %wide.load, %broadcast.splat
  %i.l = icmp sge <4 x i32> %wide.load132, %broadcast.splat
  %.not149 = and <4 x i1> %i.i, %i.k              ; 4 uses
  %.not152 = and <4 x i1> %i.j, %i.l              ; 4 uses
  %i.m = extractelement <4 x i1> %.not149, i64 0
  br i1 %i.m, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.n = extractelement <4 x i32> %wide.load, i64 0
  %i.o = sub nsw i32 %i.n, %i.e
  store i32 %i.o, ptr %i.g, align 4, !tbaa !13
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.p = extractelement <4 x i1> %.not149, i64 1
  br i1 %i.p, label %pred.store.if133, label %pred.store.continue134

pred.store.if133:                                 ; preds = %pred.store.continue
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = extractelement <4 x i32> %wide.load, i64 1
  %i.t = sub nsw i32 %i.s, %i.e
  store i32 %i.t, ptr %i.r, align 4, !tbaa !13
  br label %pred.store.continue134

pred.store.continue134:                           ; preds = %pred.store.if133, %pred.store.continue
  %i.u = extractelement <4 x i1> %.not149, i64 2
  br i1 %i.u, label %pred.store.if135, label %pred.store.continue136

pred.store.if135:                                 ; preds = %pred.store.continue134
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = extractelement <4 x i32> %wide.load, i64 2
  %i.y = sub nsw i32 %i.x, %i.e
  store i32 %i.y, ptr %i.w, align 4, !tbaa !13
  br label %pred.store.continue136

pred.store.continue136:                           ; preds = %pred.store.if135, %pred.store.continue134
  %i.z = extractelement <4 x i1> %.not149, i64 3
  br i1 %i.z, label %pred.store.if137, label %pred.store.continue138

pred.store.if137:                                 ; preds = %pred.store.continue136
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.ac = extractelement <4 x i32> %wide.load, i64 3
  %i.ad = sub nsw i32 %i.ac, %i.e
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !13
  br label %pred.store.continue138

pred.store.continue138:                           ; preds = %pred.store.if137, %pred.store.continue136
  %i.ae = extractelement <4 x i1> %.not152, i64 0
  br i1 %i.ae, label %pred.store.if139, label %pred.store.continue140

pred.store.if139:                                 ; preds = %pred.store.continue138
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = extractelement <4 x i32> %wide.load132, i64 0
  %i.ai = sub nsw i32 %i.ah, %i.e
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !13
  br label %pred.store.continue140

pred.store.continue140:                           ; preds = %pred.store.if139, %pred.store.continue138
  %i.aj = extractelement <4 x i1> %.not152, i64 1
  br i1 %i.aj, label %pred.store.if141, label %pred.store.continue142

pred.store.if141:                                 ; preds = %pred.store.continue140
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  %i.am = extractelement <4 x i32> %wide.load132, i64 1
  %i.an = sub nsw i32 %i.am, %i.e
  store i32 %i.an, ptr %i.al, align 4, !tbaa !13
  br label %pred.store.continue142

pred.store.continue142:                           ; preds = %pred.store.if141, %pred.store.continue140
  %i.ao = extractelement <4 x i1> %.not152, i64 2
  br i1 %i.ao, label %pred.store.if143, label %pred.store.continue144

pred.store.if143:                                 ; preds = %pred.store.continue142
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = extractelement <4 x i32> %wide.load132, i64 2
  %i.as = sub nsw i32 %i.ar, %i.e
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !13
  br label %pred.store.continue144

pred.store.continue144:                           ; preds = %pred.store.if143, %pred.store.continue142
  %i.at = extractelement <4 x i1> %.not152, i64 3
  br i1 %i.at, label %pred.store.if145, label %pred.store.continue146

pred.store.if145:                                 ; preds = %pred.store.continue144
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 28
  %i.aw = extractelement <4 x i32> %wide.load132, i64 3
  %i.ax = sub nsw i32 %i.aw, %i.e
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !13
  br label %pred.store.continue146

pred.store.continue146:                           ; preds = %pred.store.if145, %pred.store.continue144
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !1004

middle.block:                                     ; preds = %pred.store.continue146
  %cmp.n = icmp eq i64 %n.vec, %i.c
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph108, %middle.block
  %indvars.iv110.ph = phi i64 [ 0, %.lr.ph108 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %.064103 = phi i1 [ false, %.lr.ph ], [ %.266.ph, %bb.i ] ; 2 uses
  %.067102 = phi i1 [ false, %.lr.ph ], [ %.269.ph, %bb.i ] ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !13 ; 5 uses
  %i.bb = icmp eq i32 %i.ba, -1
  br i1 %i.bb, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bc = icmp slt i32 %i.ba, %i.a                ; 2 uses
  %i.bd = icmp slt i64 %indvars.iv, %i.d
  %i.be = xor i1 %i.bd, %i.bc                     ; 2 uses
  %.061 = select i1 %i.be, i8 2, i8 1             ; 2 uses
  br i1 %i.be, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  br i1 %i.bc, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bf = add nsw i32 %i.ba, %i.a
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.bg = sub nsw i32 %i.ba, %i.a
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.f
  %i.bh = phi i32 [ %i.bg, %bb.f ], [ %i.bf, %bb.e ], [ %i.ba, %bb.c ] ; 2 uses
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [24 x i8], ptr %2, i64 %i.bi
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !858
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.b ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !306 ; 2 uses
  %i.bn = and i8 %i.bm, %.061
  %or.cond = icmp eq i8 %i.bn, %i.bm
  br i1 %or.cond, label %bb.h, label %.thread96

bb.h:                                             ; preds = %bb.g
  %i.bo = icmp slt i32 %i.bh, %i.a                ; 2 uses
  %not. = xor i1 %i.bo, true
  %.064. = select i1 %not., i1 true, i1 %.064103
  %..067 = select i1 %i.bo, i1 true, i1 %.067102
  store i8 %.061, ptr %i.bl, align 1, !tbaa !306
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.h
  %.269.ph = phi i1 [ %..067, %bb.h ], [ %.067102, %bb.b ] ; 2 uses
  %.266.ph = phi i1 [ %.064., %bb.h ], [ %.064103, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.c
  br i1 %.not, label %.lr.ph108, label %bb.b, !llvm.loop !1005

._crit_edge:                                      ; preds = %bb.k, %middle.block
  %i.bp = add i32 %4, 1                           ; 3 uses
  %i.bq = load i32, ptr %0, align 8, !tbaa !850
  %i.br = icmp ult i32 %i.bp, %i.bq
  br i1 %i.br, label %bb.l, label %.thread130

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.k
  %indvars.iv110 = phi i64 [ %indvars.iv.next111, %bb.k ], [ %indvars.iv110.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv110 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !13 ; 3 uses
  %.not89 = icmp eq i32 %i.bt, -1
  %.not90 = icmp slt i32 %i.bt, %i.e
  %or.cond109 = or i1 %.not89, %.not90
  br i1 %or.cond109, label %bb.k, label %bb.j

bb.j:                                             ; preds = %scalar.ph
  %i.bu = sub nsw i32 %i.bt, %i.e
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !13
  br label %bb.k

bb.k:                                             ; preds = %scalar.ph, %bb.j
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %.not88 = icmp eq i64 %indvars.iv.next111, %i.f
  br i1 %.not88, label %._crit_edge, label %scalar.ph, !llvm.loop !1006

bb.l:                                             ; preds = %._crit_edge
  br i1 %.269.ph, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bv = lshr i32 %3, 1
  %i.bw = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119ForwardDeltaNetwork5routeEPiPSt6vectorIhSaIhEEjj(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %i.bv, i32 noundef %i.bp)
  br i1 %i.bw, label %bb.n, label %.thread96

bb.n:                                             ; preds = %bb.m, %bb.l
  br i1 %.266.ph, label %bb.o, label %.thread130

bb.o:                                             ; preds = %bb.n
  %i.bx = lshr i32 %3, 1                          ; 2 uses
  %i.by = zext nneg i32 %i.bx to i64              ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.by
  %i.ca = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.by
  %i.cb = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119ForwardDeltaNetwork5routeEPiPSt6vectorIhSaIhEEjj(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %i.bz, ptr noundef %i.ca, i32 noundef %i.bx, i32 noundef %i.bp)
  br i1 %i.cb, label %.thread130, label %.thread96

.thread130:                                       ; preds = %bb.a, %bb.n, %bb.o, %._crit_edge
  br label %.thread96

.thread96:                                        ; preds = %bb.g, %bb.o, %bb.m, %.thread130
  %.4 = phi i1 [ true, %.thread130 ], [ false, %bb.m ], [ false, %bb.o ], [ false, %bb.g ]
  ret i1 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119ReverseDeltaNetwork5routeEPiPSt6vectorIhSaIhEEjj(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #1 align 2 {
bb.a:
  %5 = alloca %"struct.(anonymous namespace)::Coloring", align 8 ; 11 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !850
  %i.b = xor i32 %4, -1
  %i.c = add i32 %i.a, %i.b                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.d = zext i32 %3 to i64                       ; 5 uses
  call fastcc void @_ZN12_GLOBAL__N_18ColoringC2EN4llvm8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(160) %5, ptr %1, i64 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 56
  %.val = load i64, ptr %i.e, align 8, !tbaa !189
  %i.f = icmp eq i64 %.val, 0
  br i1 %i.f, label %.loopexit, label %.preheader143

.preheader143:                                    ; preds = %bb.a
  %.not150 = icmp eq i32 %3, 0
  br i1 %.not150, label %.thread195, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader143
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.i = sdiv i32 %3, 2                           ; 2 uses
  %i.j = zext i32 %i.c to i64
  %i.k = sext i32 %i.i to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 4 uses
  %.088153 = phi i32 [ 0, %.lr.ph ], [ %.3.ph, %bb.g ] ; 4 uses
  %.093152 = phi i1 [ false, %.lr.ph ], [ %.4.ph, %bb.g ] ; 3 uses
  %.097151 = phi i1 [ false, %.lr.ph ], [ %.4101.ph, %bb.g ] ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.m = load i32, ptr %i.l, align 4, !tbaa !13   ; 4 uses
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !186 ; 2 uses
  %.not2.i.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not2.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.04.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.val.i.i.i, %bb.c ] ; 5 uses
  %.083.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.h, %bb.c ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i, i64 32
  %i.p = load i32, ptr %i.o, align 4, !tbaa !13
  %i.q = icmp slt i32 %i.p, %i.m                  ; 4 uses
  %.19.i.i.i.i = select i1 %i.q, ptr %.083.i.i.i.i, ptr %.04.i.i.i.i ; 2 uses
  %.1.in.v.i.i.i.i = select i1 %i.q, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr i8, ptr %.04.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !214 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt3mapIiN12_GLOBAL__N_19ColorKindESt4lessIiESaISt4pairIKiS1_EEE11lower_boundERS5_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !1007

_ZNKSt3mapIiN12_GLOBAL__N_19ColorKindESt4lessIiESaISt4pairIKiS1_EEE11lower_boundERS5_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.r = icmp eq ptr %.19.i.i.i.i, %i.h
  br i1 %i.r, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %_ZNKSt3mapIiN12_GLOBAL__N_19ColorKindESt4lessIiESaISt4pairIKiS1_EEE11lower_boundERS5_.exit.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.q, ptr %.083.i.i.i.i, ptr %.04.i.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.s = load i32, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !13
  %i.t = icmp slt i32 %i.m, %i.s
  br i1 %i.t, label %.critedge.i, label %_ZNKSt3mapIiN12_GLOBAL__N_19ColorKindESt4lessIiESaISt4pairIKiS1_EEE2atERS5_.exit

.critedge.i:                                      ; preds = %bb.d, %_ZNKSt3mapIiN12_GLOBAL__N_19ColorKindESt4lessIiESaISt4pairIKiS1_EEE11lower_boundERS5_.exit.i, %bb.c
  call void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.8) #26
  unreachable

_ZNKSt3mapIiN12_GLOBAL__N_19ColorKindESt4lessIiESaISt4pairIKiS1_EEE2atERS5_.exit: ; preds = %bb.d
  %.19.i.i.i.i.sroa.sel129.v.sroa.sel.v.sroa.sel.v = select i1 %i.q, ptr %.083.i.i.i.i, ptr %.04.i.i.i.i
  %.19.i.i.i.i.sroa.sel129.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel129.v.sroa.sel.v.sroa.sel.v, i64 36
  %i.u = load i32, ptr %.19.i.i.i.i.sroa.sel129.v.sroa.sel.v.sroa.sel, align 4, !tbaa !306 ; 4 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNKSt3mapIiN12_GLOBAL__N_19ColorKindESt4lessIiESaISt4pairIKiS1_EEE2atERS5_.exit
  %i.w = icmp slt i32 %i.m, %i.i                  ; 5 uses
  %.not142 = icmp eq i32 %.088153, 0
  %i.x = icmp eq i32 %i.u, 1
  %i.y = select i1 %i.x, i32 2, i32 1
  %.088.mux = select i1 %i.w, i32 %i.u, i32 %i.y
  %.1 = select i1 %.not142, i32 %.088.mux, i32 %.088153 ; 2 uses
  %i.z = icmp ne i32 %i.u, %.1
  %.not119 = xor i1 %i.w, %i.z
  br i1 %.not119, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.aa = icmp slt i64 %indvars.iv, %i.k
  %.198 = select i1 %i.w, i1 true, i1 %.097151
  %not. = xor i1 %i.w, true
  %.194 = select i1 %not., i1 true, i1 %.093152
  %i.ab = xor i1 %i.aa, %i.w
  %.086 = select i1 %i.ab, i8 2, i8 1
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %indvars.iv
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !858
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.j
  store i8 %.086, ptr %i.ae, align 1, !tbaa !306
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %_ZNKSt3mapIiN12_GLOBAL__N_19ColorKindESt4lessIiESaISt4pairIKiS1_EEE2atERS5_.exit, %bb.f
  %.4101.ph = phi i1 [ %.198, %bb.f ], [ %.097151, %_ZNKSt3mapIiN12_GLOBAL__N_19ColorKindESt4lessIiESaISt4pairIKiS1_EEE2atERS5_.exit ], [ %.097151, %bb.b ] ; 2 uses
  %.4.ph = phi i1 [ %.194, %bb.f ], [ %.093152, %_ZNKSt3mapIiN12_GLOBAL__N_19ColorKindESt4lessIiESaISt4pairIKiS1_EEE2atERS5_.exit ], [ %.093152, %bb.b ] ; 2 uses
  %.3.ph = phi i32 [ %.1, %bb.f ], [ %.088153, %_ZNKSt3mapIiN12_GLOBAL__N_19ColorKindESt4lessIiESaISt4pairIKiS1_EEE2atERS5_.exit ], [ %.088153, %bb.b ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !1008

._crit_edge:                                      ; preds = %bb.g
  %i.af = lshr i32 %3, 1                          ; 3 uses
  %.not120156 = icmp eq i32 %i.af, 0
  br i1 %.not120156, label %.lr.ph162, label %.lr.ph159

.lr.ph159:                                        ; preds = %._crit_edge
  %i.ag = zext i32 %i.c to i64                    ; 2 uses
  %i.ah = zext nneg i32 %i.af to i64              ; 2 uses
  br label %bb.h

.lr.ph162:                                        ; preds = %bb.h, %._crit_edge
  %i.ai = phi i32 [ 0, %._crit_edge ], [ %i.af, %bb.h ] ; 3 uses
  %i.aj = sdiv i32 %3, 2                          ; 11 uses
  %min.iters.check = icmp ult i32 %3, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph162
  %n.vec = and i64 %i.d, 4294967288               ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.aj, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue213, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue213 ] ; 9 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load = load <4 x i32>, ptr %i.ak, align 4, !tbaa !13 ; 6 uses
  %wide.load199 = load <4 x i32>, ptr %i.al, align 4, !tbaa !13 ; 6 uses
  %i.am = icmp ne <4 x i32> %wide.load, splat (i32 -1)
  %i.an = icmp ne <4 x i32> %wide.load199, splat (i32 -1)
  %i.ao = icmp sge <4 x i32> %wide.load, %broadcast.splat
  %i.ap = icmp sge <4 x i32> %wide.load199, %broadcast.splat
  %.not216 = and <4 x i1> %i.am, %i.ao            ; 4 uses
  %.not219 = and <4 x i1> %i.an, %i.ap            ; 4 uses
  %i.aq = extractelement <4 x i1> %.not216, i64 0
  br i1 %i.aq, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.ar = extractelement <4 x i32> %wide.load, i64 0
  %i.as = sub nsw i32 %i.ar, %i.aj
  store i32 %i.as, ptr %i.ak, align 4, !tbaa !13
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.at = extractelement <4 x i1> %.not216, i64 1
  br i1 %i.at, label %pred.store.if200, label %pred.store.continue201

pred.store.if200:                                 ; preds = %pred.store.continue
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.aw = extractelement <4 x i32> %wide.load, i64 1
  %i.ax = sub nsw i32 %i.aw, %i.aj
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !13
  br label %pred.store.continue201

pred.store.continue201:                           ; preds = %pred.store.if200, %pred.store.continue
  %i.ay = extractelement <4 x i1> %.not216, i64 2
  br i1 %i.ay, label %pred.store.if202, label %pred.store.continue203

pred.store.if202:                                 ; preds = %pred.store.continue201
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = extractelement <4 x i32> %wide.load, i64 2
  %i.bc = sub nsw i32 %i.bb, %i.aj
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !13
  br label %pred.store.continue203

pred.store.continue203:                           ; preds = %pred.store.if202, %pred.store.continue201
  %i.bd = extractelement <4 x i1> %.not216, i64 3
  br i1 %i.bd, label %pred.store.if204, label %pred.store.continue205

pred.store.if204:                                 ; preds = %pred.store.continue203
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.bg = extractelement <4 x i32> %wide.load, i64 3
  %i.bh = sub nsw i32 %i.bg, %i.aj
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !13
  br label %pred.store.continue205

pred.store.continue205:                           ; preds = %pred.store.if204, %pred.store.continue203
  %i.bi = extractelement <4 x i1> %.not219, i64 0
  br i1 %i.bi, label %pred.store.if206, label %pred.store.continue207

pred.store.if206:                                 ; preds = %pred.store.continue205
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = extractelement <4 x i32> %wide.load199, i64 0
  %i.bm = sub nsw i32 %i.bl, %i.aj
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !13
  br label %pred.store.continue207

pred.store.continue207:                           ; preds = %pred.store.if206, %pred.store.continue205
  %i.bn = extractelement <4 x i1> %.not219, i64 1
  br i1 %i.bn, label %pred.store.if208, label %pred.store.continue209

pred.store.if208:                                 ; preds = %pred.store.continue207
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 20
  %i.bq = extractelement <4 x i32> %wide.load199, i64 1
  %i.br = sub nsw i32 %i.bq, %i.aj
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !13
  br label %pred.store.continue209

pred.store.continue209:                           ; preds = %pred.store.if208, %pred.store.continue207
  %i.bs = extractelement <4 x i1> %.not219, i64 2
  br i1 %i.bs, label %pred.store.if210, label %pred.store.continue211

pred.store.if210:                                 ; preds = %pred.store.continue209
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = extractelement <4 x i32> %wide.load199, i64 2
  %i.bw = sub nsw i32 %i.bv, %i.aj
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !13
  br label %pred.store.continue211

pred.store.continue211:                           ; preds = %pred.store.if210, %pred.store.continue209
  %i.bx = extractelement <4 x i1> %.not219, i64 3
  br i1 %i.bx, label %pred.store.if212, label %pred.store.continue213

pred.store.if212:                                 ; preds = %pred.store.continue211
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 28
  %i.ca = extractelement <4 x i32> %wide.load199, i64 3
  %i.cb = sub nsw i32 %i.ca, %i.aj
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !13
  br label %pred.store.continue213

pred.store.continue213:                           ; preds = %pred.store.if212, %pred.store.continue211
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !1009

middle.block:                                     ; preds = %pred.store.continue213
  %cmp.n = icmp eq i64 %n.vec, %i.d
  br i1 %cmp.n, label %._crit_edge163, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph162, %middle.block
  %indvars.iv167.ph = phi i64 [ 0, %.lr.ph162 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

bb.h:                                             ; preds = %.lr.ph159, %bb.h
  %indvars.iv164 = phi i64 [ 0, %.lr.ph159 ], [ %indvars.iv.next165, %bb.h ] ; 4 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv164 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !13 ; 2 uses
  %i.cf = add nuw nsw i64 %indvars.iv164, %i.ah   ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cf ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !13 ; 2 uses
  %i.ci = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %indvars.iv164
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !858
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ag
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !306
  %i.cm = icmp eq i8 %i.cl, 2
  %spec.select = select i1 %i.cm, i32 %i.ce, i32 %i.ch
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.cf
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !858
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.ag
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !306
  %i.cr = icmp eq i8 %i.cq, 2
  %.084 = select i1 %i.cr, i32 %i.ch, i32 %i.ce
  store i32 %.084, ptr %i.cd, align 4, !tbaa !13
  store i32 %spec.select, ptr %i.cg, align 4, !tbaa !13
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1 ; 2 uses
  %.not120 = icmp eq i64 %indvars.iv.next165, %i.ah
  br i1 %.not120, label %.lr.ph162, label %bb.h, !llvm.loop !1010

._crit_edge163:                                   ; preds = %bb.j, %middle.block
  %i.cs = add i32 %4, 1                           ; 3 uses
  %i.ct = load i32, ptr %0, align 8, !tbaa !850
  %i.cu = icmp ult i32 %i.cs, %i.ct
  br i1 %i.cu, label %bb.k, label %.thread195

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.j
  %indvars.iv167 = phi i64 [ %indvars.iv.next168, %bb.j ], [ %indvars.iv167.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv167 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !13 ; 3 uses
  %.not122 = icmp eq i32 %i.cw, -1
  %.not123 = icmp slt i32 %i.cw, %i.aj
  %or.cond = or i1 %.not122, %.not123
  br i1 %or.cond, label %bb.j, label %bb.i

bb.i:                                             ; preds = %scalar.ph
  %i.cx = sub nsw i32 %i.cw, %i.aj
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !13
  br label %bb.j

bb.j:                                             ; preds = %scalar.ph, %bb.i
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1 ; 2 uses
  %.not121 = icmp eq i64 %indvars.iv.next168, %i.d
  br i1 %.not121, label %._crit_edge163, label %scalar.ph, !llvm.loop !1011

bb.k:                                             ; preds = %._crit_edge163
  br i1 %.4101.ph, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cy = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119ReverseDeltaNetwork5routeEPiPSt6vectorIhSaIhEEjj(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %i.ai, i32 noundef %i.cs)
  br i1 %i.cy, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l, %bb.k
  br i1 %.4.ph, label %bb.n, label %.thread195

bb.n:                                             ; preds = %bb.m
  %i.cz = zext nneg i32 %i.ai to i64              ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cz
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.cz
  %i.dc = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119ReverseDeltaNetwork5routeEPiPSt6vectorIhSaIhEEjj(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %i.da, ptr noundef %i.db, i32 noundef %i.ai, i32 noundef %i.cs)
  br i1 %i.dc, label %.thread195, label %.loopexit

.thread195:                                       ; preds = %.preheader143, %bb.m, %bb.n, %._crit_edge163
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.thread195, %bb.l, %bb.n, %bb.a
  %.6 = phi i1 [ false, %bb.a ], [ true, %.thread195 ], [ false, %bb.l ], [ false, %bb.n ], [ false, %bb.e ]
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !186
  call void @_ZNSt8_Rb_treeIiSt4pairIKiSt3setIiSt4lessIiESaIiEEESt10_Select1stIS7_ES4_SaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %i.dd, ptr noundef %i.df)
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !186
  call void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(ptr noundef nonnull align 8 dereferenceable(48) %i.dg, ptr noundef %i.di)
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.val.i = load ptr, ptr %i.dj, align 8, !tbaa !186
  call fastcc void @_ZNSt8_Rb_treeIiSt4pairIKiN12_GLOBAL__N_19ColorKindEESt10_Select1stIS4_ESt4lessIiESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef %.val.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret i1 %.6
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_18ColoringC2EN4llvm8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(160) initializes((0, 16), (24, 28), (32, 40)) %0, ptr %1, i64 %2) unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Alloc_node", align 8 ; 4 uses
  %4 = alloca %"class.std::tuple.334", align 8    ; 4 uses
  %5 = alloca %"class.std::tuple.337", align 1    ; 3 uses
  %6 = alloca %"class.std::tuple.334", align 8    ; 4 uses
  %7 = alloca %"class.std::tuple.337", align 1    ; 3 uses
  %8 = alloca %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Alloc_node", align 8 ; 4 uses
  %9 = alloca %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Alloc_node", align 8 ; 4 uses
  %10 = alloca %"class.std::tuple.334", align 8   ; 4 uses
  %11 = alloca %"class.std::tuple.337", align 1   ; 3 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %12 = alloca %"class.llvm::SetVector.345", align 8 ; 15 uses
  %13 = alloca %"class.llvm::SetVector.345", align 8 ; 15 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %14 = alloca %"struct.std::pair.331", align 8   ; 11 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %15 = alloca %"struct.std::pair.331", align 8   ; 10 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 9 uses
  %16 = alloca %"class.std::set.305", align 8     ; 10 uses
  %17 = alloca %"class.std::tuple.342", align 8   ; 4 uses
  %18 = alloca %"class.std::tuple.337", align 1   ; 3 uses
  %19 = alloca %"class.std::tuple.334", align 8   ; 4 uses
  %20 = alloca %"class.std::tuple.337", align 1   ; 3 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  store ptr %1, ptr %0, align 8, !tbaa !401
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  store i64 %2, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !352
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 24 uses
  store i32 0, ptr %i.i, align 8, !tbaa !181
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 11 uses
  store ptr null, ptr %i.j, align 8, !tbaa !186
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.i, ptr %i.k, align 8, !tbaa !187
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.i, ptr %i.l, align 8, !tbaa !188
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store i64 0, ptr %i.m, align 8, !tbaa !189
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 14 uses
  store i32 0, ptr %i.n, align 8, !tbaa !181
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  store ptr null, ptr %i.o, align 8, !tbaa !186
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store ptr %i.n, ptr %i.p, align 8, !tbaa !187
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.n, ptr %i.q, align 8, !tbaa !188
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  store i64 0, ptr %i.r, align 8, !tbaa !189
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 37 uses
  store i32 0, ptr %i.t, align 8, !tbaa !181
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 9 uses
  store ptr null, ptr %i.u, align 8, !tbaa !186
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  store ptr %i.t, ptr %i.v, align 8, !tbaa !187
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.t, ptr %i.w, align 8, !tbaa !188
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 7 uses
  store i64 0, ptr %i.x, align 8, !tbaa !189
  %.not121.i = icmp eq i64 %2, 0
  br i1 %.not121.i, label %_ZN12_GLOBAL__N_18Coloring5buildEv.exit, label %.lr.ph.i

.preheader.i:                                     ; preds = %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit47.i
  %.not17123.i = icmp eq i32 %i.ck, 0
  br i1 %.not17123.i, label %_ZN12_GLOBAL__N_18Coloring5buildEv.exit, label %.lr.ph127.i

.lr.ph127.i:                                      ; preds = %.preheader.i
  %i.y = load ptr, ptr %i.o, align 8, !tbaa !186  ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZN12_GLOBAL__N_18Coloring5buildEv.exit, label %.lr.ph127.split.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit47.i
  %.val23135.i = phi i64 [ %i.cm, %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit47.i ], [ %2, %bb.a ]
  %i.aa = phi i64 [ %i.cl, %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit47.i ], [ 0, %bb.a ]
  %.0122.i = phi i32 [ %i.ck, %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit47.i ], [ 0, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  %i.ab = load ptr, ptr %0, align 8, !tbaa !654   ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.aa
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !13 ; 6 uses
  store i32 %i.ad, ptr %i.f, align 4, !tbaa !13
  %.not20.i = icmp eq i32 %i.ad, -1
  br i1 %.not20.i, label %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit47.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %.02022.i.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !214 ; 2 uses
  %.not23.i.i.i.i = icmp eq ptr %.02022.i.i.i.i, null
  br i1 %.not23.i.i.i.i, label %._crit_edge.thread.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.02024.i.i.i.i = phi ptr [ %.020.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.02022.i.i.i.i, %bb.b ] ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i, i64 32
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !13 ; 2 uses
  %i.ag = icmp slt i32 %i.ad, %i.af               ; 2 uses
  %.in.v.i.i.i.i = select i1 %i.ag, i64 16, i64 24
  %.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i, i64 %.in.v.i.i.i.i
  %.020.i.i.i.i = load ptr, ptr %.in.i.i.i.i, align 8, !tbaa !214 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.020.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1012

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i
  br i1 %i.ag, label %._crit_edge.thread.i.i.i.i, label %bb.d

._crit_edge.thread.i.i.i.i:                       ; preds = %._crit_edge.i.i.i.i, %bb.b
  %.019.lcssa29.i.i.i.i = phi ptr [ %.02024.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.n, %bb.b ] ; 4 uses
  %i.ah = load ptr, ptr %i.p, align 8, !tbaa !187
  %i.ai = icmp eq ptr %.019.lcssa29.i.i.i.i, %i.ah
  br i1 %i.ai, label %select.unfold.i.i.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread.i.i.i.i
  %i.aj = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i.i) #24
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %.pre.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %i.ak = phi i32 [ %.pre.i.i.i, %bb.c ], [ %i.af, %._crit_edge.i.i.i.i ]
  %.019.lcssa28.i.i.i.i = phi ptr [ %.019.lcssa29.i.i.i.i, %bb.c ], [ %.02024.i.i.i.i, %._crit_edge.i.i.i.i ]
  %i.al = icmp slt i32 %i.ak, %i.ad
  br i1 %i.al, label %select.unfold.i.i.i, label %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit.i

select.unfold.i.i.i:                              ; preds = %bb.d, %._crit_edge.thread.i.i.i.i
  %.sroa.4.0.i.ph.i.i.i = phi ptr [ %.019.lcssa29.i.i.i.i, %._crit_edge.thread.i.i.i.i ], [ %.019.lcssa28.i.i.i.i, %bb.d ] ; 3 uses
  %i.am = icmp eq ptr %.sroa.4.0.i.ph.i.i.i, %i.n
  br i1 %i.am, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %select.unfold.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i.i, i64 32
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !13
  %i.ap = icmp slt i32 %i.ad, %i.ao
  br label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i: ; preds = %bb.e, %select.unfold.i.i.i
  %i.aq = phi i1 [ %i.ap, %bb.e ], [ true, %select.unfold.i.i.i ]
  %i.ar = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = load i32, ptr %i.f, align 4, !tbaa !13
  store i32 %i.at, ptr %i.as, align 4, !tbaa !13
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.aq, ptr noundef nonnull %i.ar, ptr noundef nonnull %.sroa.4.0.i.ph.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.n) #23
  %i.au = load i64, ptr %i.r, align 8, !tbaa !189
  %i.av = add i64 %i.au, 1
  store i64 %i.av, ptr %i.r, align 8, !tbaa !189
  %.val23.pre.i = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !495
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !654
  %.pre136.i = load i32, ptr %i.f, align 4
  br label %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit.i

_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit.i:    ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i, %bb.d
  %i.aw = phi i32 [ %i.ad, %bb.d ], [ %.pre136.i, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i ] ; 3 uses
  %i.ax = phi ptr [ %i.ab, %bb.d ], [ %.pre.i, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i ]
  %.val23.i = phi i64 [ %.val23135.i, %bb.d ], [ %.val23.pre.i, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i ]
  %i.ay = trunc i64 %.val23.i to i32
end_hunk_0
