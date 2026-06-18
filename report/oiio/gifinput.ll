inline.NumInlined: 3034
inline.NumDeleted: 916
begin_hunk_0_@_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE:bb.a
  %i.l = add i64 %i.k, 1                          ; 3 uses
  %i.m = load i64, ptr %i.i, align 8, !tbaa !168
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.d, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !165
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.l), !inline_history !295
  %.pre.i.i.i = load i64, ptr %i.h, align 8, !tbaa !172 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.d, %bb.c
  %.pre-phi.i.i.i = phi i64 [ %i.l, %bb.c ], [ %.pre2.i.i.i, %bb.d ]
  %i.p = phi i64 [ %i.k, %bb.c ], [ %.pre.i.i.i, %bb.d ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !167
  store i64 %.pre-phi.i.i.i, ptr %i.h, align 8, !tbaa !172
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  store i8 %i.g, ptr %i.r, align 1, !tbaa !16
  %i.s = add nuw i64 %.04.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.s, %1
  br i1 %exitcond.not.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit, label %bb.c, !llvm.loop !296

bb.e:                                             ; preds = %bb.a
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d ; 2 uses
  %.not31.i.i = icmp eq i32 %i.c, 0
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  br i1 %.not31.i.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit, label %.lr.ph34.i.i.preheader

.lr.ph34.i.i.preheader:                           ; preds = %.lr.ph
  %.pre.i.i.pre = load i64, ptr %i.u, align 8, !tbaa !172
  br label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %.lr.ph34.i.i.preheader, %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit
  %.pre.i.i = phi i64 [ %i.be, %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit ], [ %.pre.i.i.pre, %.lr.ph34.i.i.preheader ]
  %.018 = phi i64 [ %i.bw, %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit ], [ 0, %.lr.ph34.i.i.preheader ]
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.y = phi i64 [ %.pre.i.i, %.lr.ph34.i.i ], [ %i.be, %._crit_edge.i.i ] ; 3 uses
  %.02532.i.i = phi ptr [ %i.f, %.lr.ph34.i.i ], [ %i.bf, %._crit_edge.i.i ] ; 9 uses
  %i.z = load i64, ptr %i.v, align 8, !tbaa !168
  %i.aa = sub i64 %i.z, %i.y
  %i.ab = ptrtoint ptr %.02532.i.i to i64         ; 2 uses
  %i.ac = sub i64 %i.w, %i.ab                     ; 4 uses
  %i.ad = icmp ult i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = load ptr, ptr %i.x, align 8, !tbaa !165
  %i.af = add i64 %i.ac, %i.y
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.af), !inline_history !248
  %i.ag = load i64, ptr %i.u, align 8, !tbaa !172 ; 2 uses
  %i.ah = load i64, ptr %i.v, align 8, !tbaa !168
  %i.ai = sub i64 %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 %i.ai)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.027.i.i = phi i64 [ %i.ag, %bb.g ], [ %i.y, %bb.f ] ; 3 uses
  %.026.i.i = phi i64 [ %i.aj, %bb.g ], [ %i.ac, %bb.f ] ; 13 uses
  %i.ak = load ptr, ptr %0, align 8, !tbaa !167   ; 2 uses
  %i.al = ptrtoaddr ptr %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.027.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.026.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.h
  %min.iters.check = icmp ult i64 %.026.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.an = add i64 %.027.i.i, %i.al
  %i.ao = sub i64 %i.an, %i.ab
  %diff.check = icmp ult i64 %i.ao, 32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check31 = icmp ult i64 %.026.i.i, 32
  br i1 %min.iters.check31, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %.026.i.i, 28
  %n.vec = and i64 %.026.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %wide.load = load <16 x i8>, ptr %i.ap, align 1, !tbaa !16
  %wide.load32 = load <16 x i8>, ptr %i.aq, align 1, !tbaa !16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 %index ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store <16 x i8> %wide.load, ptr %i.ar, align 1, !tbaa !16
  store <16 x i8> %wide.load32, ptr %i.as, align 1, !tbaa !16
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !297

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.026.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !222

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec34 = and i64 %.026.i.i, -4                ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index35 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next37, %vec.epilog.vector.body ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %index35
  %wide.load36 = load <4 x i8>, ptr %i.au, align 1, !tbaa !16
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 %index35
  store <4 x i8> %wide.load36, ptr %i.av, align 1, !tbaa !16
  %index.next37 = add nuw i64 %index35, 4         ; 2 uses
  %i.aw = icmp eq i64 %index.next37, %n.vec34
  br i1 %i.aw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !298

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n38 = icmp eq i64 %.026.i.i, %n.vec34
  br i1 %cmp.n38, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec34, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.026.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.ba, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %.030.i.i.prol
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !16
  %i.az = getelementptr inbounds nuw i8, ptr %i.am, i64 %.030.i.i.prol
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !16
  %i.ba = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !299

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ba, %.lr.ph.i.i.prol ]
  %i.bb = sub i64 %.030.i.i.ph, %.026.i.i
  %i.bc = icmp ugt i64 %i.bb, -4
  br i1 %i.bc, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i = load i64, ptr %i.u, align 8, !tbaa !172
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.h
  %i.bd = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.027.i.i, %bb.h ]
  %i.be = add i64 %i.bd, %.026.i.i                ; 3 uses
  store i64 %i.be, ptr %i.u, align 8, !tbaa !172
  %i.bf = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %.026.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.bf, %i.t
  br i1 %.not.i.i, label %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit, label %bb.f, !llvm.loop !226

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.bv, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %.030.i.i
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.am, i64 %.030.i.i
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !16
  %i.bj = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.bj
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !16
  %i.bn = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.bn
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !16
  %i.br = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.br
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !16
  %i.bv = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.bv, %.026.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !300

_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit: ; preds = %._crit_edge.i.i
  %i.bw = add nuw i64 %.018, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bw, %1
  br i1 %exitcond.not, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit, label %.lr.ph34.i.i, !llvm.loop !301

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit: ; preds = %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %.lr.ph, %bb.e, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail18write_escaped_charIcNS0_14basic_appenderIcEEEET0_S5_T_(ptr %0, i8 noundef signext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 5 uses
  %2 = alloca %"struct.fmt::v12::detail::find_escape_result", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i8 %1, ptr %i.a, align 1, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !172  ; 2 uses
  %i.d = add i64 %i.c, 1                          ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !168
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !165
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.d), !inline_history !219
  %.pre.i.i = load i64, ptr %i.b, align 8, !tbaa !172 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.a, %bb.b
  %.pre-phi.i.i = phi i64 [ %i.d, %bb.a ], [ %.pre2.i.i, %bb.b ]
  %i.j = phi i64 [ %i.c, %bb.a ], [ %.pre.i.i, %bb.b ]
  %i.k = load ptr, ptr %0, align 8, !tbaa !167
  store i64 %.pre-phi.i.i, ptr %i.b, align 8, !tbaa !172
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  store i8 39, ptr %i.l, align 1, !tbaa !16
  %i.m = sext i8 %1 to i32                        ; 2 uses
  %i.n = icmp ult i8 %1, 32
  br i1 %i.n, label %_ZN3fmt3v126detail12needs_escapeEj.exit, label %switch.early.test.i

switch.early.test.i:                              ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  switch i8 %1, label %bb.c [
    i8 127, label %_ZN3fmt3v126detail12needs_escapeEj.exit
    i8 92, label %_ZN3fmt3v126detail12needs_escapeEj.exit
    i8 34, label %_ZN3fmt3v126detail12needs_escapeEj.exit
  ]

bb.c:                                             ; preds = %switch.early.test.i
  %i.o = tail call noundef zeroext i1 @_ZN3fmt3v126detail12is_printableEj(i32 noundef %i.m)
  %i.p = xor i1 %i.o, true
  br label %_ZN3fmt3v126detail12needs_escapeEj.exit

_ZN3fmt3v126detail12needs_escapeEj.exit:          ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %bb.c
  %.0.i = phi i1 [ %i.p, %bb.c ], [ true, %switch.early.test.i ], [ true, %switch.early.test.i ], [ true, %switch.early.test.i ], [ true, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit ]
  %i.q = icmp ne i8 %1, 34
  %or.cond = and i1 %i.q, %.0.i
  %i.r = icmp eq i8 %1, 39
  %or.cond5 = or i1 %i.r, %or.cond
  br i1 %or.cond5, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN3fmt3v126detail12needs_escapeEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store ptr %i.a, ptr %2, align 8, !tbaa !302
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store ptr %i.t, ptr %i.s, align 8, !tbaa !304
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.m, ptr %i.u, align 8, !tbaa !305
  %i.v = call ptr @_ZN3fmt3v126detail16write_escaped_cpINS0_14basic_appenderIcEEcEET_S5_RKNS1_18find_escape_resultIT0_EE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.g

bb.e:                                             ; preds = %_ZN3fmt3v126detail12needs_escapeEj.exit
  %i.w = load i64, ptr %i.b, align 8, !tbaa !172  ; 2 uses
  %i.x = add i64 %i.w, 1                          ; 3 uses
  %i.y = load i64, ptr %i.e, align 8, !tbaa !168
  %i.z = icmp ugt i64 %i.x, %i.y
  br i1 %i.z, label %bb.f, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit17

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !165
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.x), !inline_history !219
  %.pre.i.i15 = load i64, ptr %i.b, align 8, !tbaa !172 ; 2 uses
  %.pre2.i.i16 = add i64 %.pre.i.i15, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit17

_ZN3fmt3v1214basic_appenderIcEaSEc.exit17:        ; preds = %bb.e, %bb.f
  %.pre-phi.i.i14 = phi i64 [ %i.x, %bb.e ], [ %.pre2.i.i16, %bb.f ]
  %i.ac = phi i64 [ %i.w, %bb.e ], [ %.pre.i.i15, %bb.f ]
  %i.ad = load ptr, ptr %0, align 8, !tbaa !167
  store i64 %.pre-phi.i.i14, ptr %i.b, align 8, !tbaa !172
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ac
  store i8 %1, ptr %i.ae, align 1, !tbaa !16
  br label %bb.g

bb.g:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit17, %bb.d
  %.sroa.025.0 = phi ptr [ %i.v, %bb.d ], [ %0, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit17 ] ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.025.0, i64 8 ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !172 ; 2 uses
  %i.ah = add i64 %i.ag, 1                        ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.025.0, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !168
  %i.ak = icmp ugt i64 %i.ah, %i.aj
  br i1 %i.ak, label %bb.h, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit22

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.025.0, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !165
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.025.0, i64 noundef %i.ah), !inline_history !219
  %.pre.i.i20 = load i64, ptr %i.af, align 8, !tbaa !172 ; 2 uses
  %.pre2.i.i21 = add i64 %.pre.i.i20, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit22

_ZN3fmt3v1214basic_appenderIcEaSEc.exit22:        ; preds = %bb.g, %bb.h
  %.pre-phi.i.i19 = phi i64 [ %i.ah, %bb.g ], [ %.pre2.i.i21, %bb.h ]
  %i.an = phi i64 [ %i.ag, %bb.g ], [ %.pre.i.i20, %bb.h ]
  %i.ao = load ptr, ptr %.sroa.025.0, align 8, !tbaa !167
  store i64 %.pre-phi.i.i19, ptr %i.af, align 8, !tbaa !172
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  store i8 39, ptr %i.ap, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret ptr %.sroa.025.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail16write_escaped_cpINS0_14basic_appenderIcEEcEET_S5_RKNS1_18find_escape_resultIT0_EE(ptr %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !305  ; 8 uses
  switch i32 %i.b, label %bb.j [
    i32 10, label %bb.b
    i32 13, label %bb.d
    i32 9, label %bb.f
    i32 34, label %bb.h
    i32 39, label %bb.h
    i32 92, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !172  ; 2 uses
  %i.e = add i64 %i.d, 1                          ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !168
  %i.h = icmp ugt i64 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !165
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.e), !inline_history !219
  %.pre.i.i = load i64, ptr %i.c, align 8, !tbaa !172 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.b, %bb.c
  %.pre-phi.i.i = phi i64 [ %i.e, %bb.b ], [ %.pre2.i.i, %bb.c ]
  %i.k = phi i64 [ %i.d, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.l = load ptr, ptr %0, align 8, !tbaa !167
  store i64 %.pre-phi.i.i, ptr %i.c, align 8, !tbaa !172
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.k
  store i8 92, ptr %i.m, align 1, !tbaa !16
  br label %bb.q

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !172  ; 2 uses
  %i.p = add i64 %i.o, 1                          ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !168
  %i.s = icmp ugt i64 %i.p, %i.r
  br i1 %i.s, label %bb.e, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit30

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !165
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.p), !inline_history !219
  %.pre.i.i28 = load i64, ptr %i.n, align 8, !tbaa !172 ; 2 uses
  %.pre2.i.i29 = add i64 %.pre.i.i28, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit30

_ZN3fmt3v1214basic_appenderIcEaSEc.exit30:        ; preds = %bb.d, %bb.e
  %.pre-phi.i.i27 = phi i64 [ %i.p, %bb.d ], [ %.pre2.i.i29, %bb.e ]
  %i.v = phi i64 [ %i.o, %bb.d ], [ %.pre.i.i28, %bb.e ]
  %i.w = load ptr, ptr %0, align 8, !tbaa !167
  store i64 %.pre-phi.i.i27, ptr %i.n, align 8, !tbaa !172
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v
  store i8 92, ptr %i.x, align 1, !tbaa !16
  br label %bb.q

bb.f:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !172  ; 2 uses
  %i.aa = add i64 %i.z, 1                         ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !168
  %i.ad = icmp ugt i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.g, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit35

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !165
end_hunk_0
