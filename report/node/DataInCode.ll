inline.NumInlined: 2354
inline.NumDeleted: 699
begin_hunk_0_@_ZN3fmt3v116detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE:bb.a
  %i.k = load i64, ptr %i.h, align 8              ; 2 uses
  %i.l = add i64 %i.k, 1                          ; 3 uses
  %i.m = load i64, ptr %i.i, align 8
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.d, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.j, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.l) #22, !inline_history !84
  %.pre.i.i.i = load i64, ptr %i.h, align 8       ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i:        ; preds = %bb.d, %bb.c
  %.pre-phi.i.i.i = phi i64 [ %i.l, %bb.c ], [ %.pre2.i.i.i, %bb.d ]
  %i.p = phi i64 [ %i.k, %bb.c ], [ %.pre.i.i.i, %bb.d ]
  %i.q = load ptr, ptr %0, align 8
  store i64 %.pre-phi.i.i.i, ptr %i.h, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  store i8 %i.g, ptr %i.r, align 1
  %i.s = add nuw i64 %.04.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.s, %1
  br i1 %exitcond.not.i, label %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit, label %bb.c, !llvm.loop !85

bb.e:                                             ; preds = %bb.a
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d ; 2 uses
  %.not24.i.i = icmp eq i32 %i.c, 0
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  br i1 %.not24.i.i, label %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit, label %.lr.ph27.i.i.preheader

.lr.ph27.i.i.preheader:                           ; preds = %.lr.ph
  %.pre.i.i.pre = load i64, ptr %i.v, align 8
  br label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %.lr.ph27.i.i.preheader, %_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit
  %.pre.i.i = phi i64 [ %i.bc, %_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit ], [ %.pre.i.i.pre, %.lr.ph27.i.i.preheader ]
  %.018 = phi i64 [ %i.bu, %_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit ], [ 0, %.lr.ph27.i.i.preheader ]
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.y = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.bc, %._crit_edge.i.i ] ; 2 uses
  %.01825.i.i = phi ptr [ %i.f, %.lr.ph27.i.i ], [ %i.bd, %._crit_edge.i.i ] ; 9 uses
  %i.z = ptrtoint ptr %.01825.i.i to i64          ; 2 uses
  %i.aa = sub i64 %i.u, %i.z                      ; 2 uses
  %i.ab = add i64 %i.aa, %i.y                     ; 2 uses
  %i.ac = load i64, ptr %i.w, align 8             ; 2 uses
  %i.ad = icmp ugt i64 %i.ab, %i.ac
  br i1 %i.ad, label %bb.g, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ae = load ptr, ptr %i.x, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ab) #22, !inline_history !57
  %.pre30.i.i = load i64, ptr %i.w, align 8
  %.pre31.i.i = load i64, ptr %i.v, align 8
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.g, %bb.f
  %i.af = phi i64 [ %i.y, %bb.f ], [ %.pre31.i.i, %bb.g ] ; 4 uses
  %i.ag = phi i64 [ %i.ac, %bb.f ], [ %.pre30.i.i, %bb.g ]
  %i.ah = sub i64 %i.ag, %i.af
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 %i.aa) ; 13 uses
  %i.ai = load ptr, ptr %0, align 8               ; 2 uses
  %i.aj = ptrtoaddr ptr %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.af ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.al = add i64 %i.af, %i.aj
  %i.am = sub i64 %i.al, %i.z
  %diff.check = icmp ult i64 %i.am, 32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check32 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check32, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %index ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %wide.load = load <16 x i8>, ptr %i.an, align 1
  %wide.load33 = load <16 x i8>, ptr %i.ao, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <16 x i8> %wide.load, ptr %i.ap, align 1
  store <16 x i8> %wide.load33, ptr %i.aq, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !86

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !46

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec35 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index36 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next38, %vec.epilog.vector.body ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %index36
  %wide.load37 = load <4 x i8>, ptr %i.as, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 %index36
  store <4 x i8> %wide.load37, ptr %i.at, align 1
  %index.next38 = add nuw i64 %index36, 4         ; 2 uses
  %i.au = icmp eq i64 %index.next38, %n.vec35
  br i1 %i.au, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !87

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n39 = icmp eq i64 %spec.select.i.i, %n.vec35
  br i1 %cmp.n39, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec35, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.ay, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.av = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %.023.i.i.prol
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.023.i.i.prol
  store i8 %i.aw, ptr %i.ax, align 1
  %i.ay = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !88

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ay, %.lr.ph.i.i.prol ]
  %i.az = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.ba = icmp ugt i64 %i.az, -4
  br i1 %i.ba, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.v, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.bb = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.af, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.bc = add i64 %i.bb, %spec.select.i.i         ; 3 uses
  store i64 %i.bc, ptr %i.v, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.bd, %i.t
  br i1 %.not.i.i, label %_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit, label %bb.f, !llvm.loop !50

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.bt, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %.023.i.i
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.023.i.i
  store i8 %i.bf, ptr %i.bg, align 1
  %i.bh = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bh
  store i8 %i.bj, ptr %i.bk, align 1
  %i.bl = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bl
  store i8 %i.bn, ptr %i.bo, align 1
  %i.bp = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bp
  store i8 %i.br, ptr %i.bs, align 1
  %i.bt = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.bt, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !89

_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit: ; preds = %._crit_edge.i.i
  %i.bu = add nuw i64 %.018, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bu, %1
  br i1 %exitcond.not, label %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit, label %.lr.ph27.i.i, !llvm.loop !90

_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit: ; preds = %_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i, %bb.e, %.lr.ph, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v116detail18write_escaped_charIcNS0_14basic_appenderIcEEEET0_S5_T_(ptr %0, i8 noundef signext %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 5 uses
  %2 = alloca %"struct.fmt::v11::detail::find_escape_result", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 %1, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = add i64 %i.c, 1                          ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.d) #22, !inline_history !41
  %.pre.i.i = load i64, ptr %i.b, align 8         ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit

_ZN3fmt3v1114basic_appenderIcEaSEc.exit:          ; preds = %bb.a, %bb.b
  %.pre-phi.i.i = phi i64 [ %i.d, %bb.a ], [ %.pre2.i.i, %bb.b ]
  %i.j = phi i64 [ %i.c, %bb.a ], [ %.pre.i.i, %bb.b ]
  %i.k = load ptr, ptr %0, align 8
  store i64 %.pre-phi.i.i, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  store i8 39, ptr %i.l, align 1
  %i.m = sext i8 %1 to i32                        ; 2 uses
  %i.n = icmp ult i8 %1, 32
  br i1 %i.n, label %_ZN3fmt3v116detail12needs_escapeEj.exit, label %switch.early.test.i

switch.early.test.i:                              ; preds = %_ZN3fmt3v1114basic_appenderIcEaSEc.exit
  switch i8 %1, label %bb.c [
    i8 127, label %_ZN3fmt3v116detail12needs_escapeEj.exit
    i8 92, label %_ZN3fmt3v116detail12needs_escapeEj.exit
    i8 34, label %_ZN3fmt3v116detail12needs_escapeEj.exit
  ]

bb.c:                                             ; preds = %switch.early.test.i
  %i.o = tail call noundef zeroext i1 @_ZN3fmt3v116detail12is_printableEj(i32 noundef %i.m)
  %i.p = xor i1 %i.o, true
  br label %_ZN3fmt3v116detail12needs_escapeEj.exit

_ZN3fmt3v116detail12needs_escapeEj.exit:          ; preds = %_ZN3fmt3v1114basic_appenderIcEaSEc.exit, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %bb.c
  %.0.i = phi i1 [ %i.p, %bb.c ], [ true, %switch.early.test.i ], [ true, %switch.early.test.i ], [ true, %switch.early.test.i ], [ true, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit ]
  %i.q = icmp ne i8 %1, 34
  %or.cond = and i1 %i.q, %.0.i
  %i.r = icmp eq i8 %1, 39
  %or.cond5 = or i1 %i.r, %or.cond
  br i1 %or.cond5, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN3fmt3v116detail12needs_escapeEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr %i.a, ptr %2, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store ptr %i.t, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.m, ptr %i.u, align 8
  %i.v = call ptr @_ZN3fmt3v116detail16write_escaped_cpINS0_14basic_appenderIcEEcEET_S5_RKNS1_18find_escape_resultIT0_EE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.g

bb.e:                                             ; preds = %_ZN3fmt3v116detail12needs_escapeEj.exit
  %i.w = load i64, ptr %i.b, align 8              ; 2 uses
  %i.x = add i64 %i.w, 1                          ; 3 uses
  %i.y = load i64, ptr %i.e, align 8
  %i.z = icmp ugt i64 %i.x, %i.y
  br i1 %i.z, label %bb.f, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit17

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.x) #22, !inline_history !41
  %.pre.i.i15 = load i64, ptr %i.b, align 8       ; 2 uses
  %.pre2.i.i16 = add i64 %.pre.i.i15, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit17

_ZN3fmt3v1114basic_appenderIcEaSEc.exit17:        ; preds = %bb.e, %bb.f
  %.pre-phi.i.i14 = phi i64 [ %i.x, %bb.e ], [ %.pre2.i.i16, %bb.f ]
  %i.ac = phi i64 [ %i.w, %bb.e ], [ %.pre.i.i15, %bb.f ]
  %i.ad = load ptr, ptr %0, align 8
  store i64 %.pre-phi.i.i14, ptr %i.b, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ac
  store i8 %1, ptr %i.ae, align 1
  br label %bb.g

bb.g:                                             ; preds = %_ZN3fmt3v1114basic_appenderIcEaSEc.exit17, %bb.d
  %.sroa.025.0 = phi ptr [ %i.v, %bb.d ], [ %0, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit17 ] ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.025.0, i64 8 ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8            ; 2 uses
  %i.ah = add i64 %i.ag, 1                        ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.025.0, i64 16
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = icmp ugt i64 %i.ah, %i.aj
  br i1 %i.ak, label %bb.h, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit22

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.025.0, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.025.0, i64 noundef %i.ah) #22, !inline_history !41
  %.pre.i.i20 = load i64, ptr %i.af, align 8      ; 2 uses
  %.pre2.i.i21 = add i64 %.pre.i.i20, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit22

_ZN3fmt3v1114basic_appenderIcEaSEc.exit22:        ; preds = %bb.g, %bb.h
  %.pre-phi.i.i19 = phi i64 [ %i.ah, %bb.g ], [ %.pre2.i.i21, %bb.h ]
  %i.an = phi i64 [ %i.ag, %bb.g ], [ %.pre.i.i20, %bb.h ]
  %i.ao = load ptr, ptr %.sroa.025.0, align 8
  store i64 %.pre-phi.i.i19, ptr %i.af, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  store i8 39, ptr %i.ap, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret ptr %.sroa.025.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v116detail16write_escaped_cpINS0_14basic_appenderIcEEcEET_S5_RKNS1_18find_escape_resultIT0_EE(ptr %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8              ; 8 uses
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
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = add i64 %i.d, 1                          ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp ugt i64 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.e) #22, !inline_history !41
  %.pre.i.i = load i64, ptr %i.c, align 8         ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit

_ZN3fmt3v1114basic_appenderIcEaSEc.exit:          ; preds = %bb.b, %bb.c
  %.pre-phi.i.i = phi i64 [ %i.e, %bb.b ], [ %.pre2.i.i, %bb.c ]
  %i.k = phi i64 [ %i.d, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.l = load ptr, ptr %0, align 8
  store i64 %.pre-phi.i.i, ptr %i.c, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.k
  store i8 92, ptr %i.m, align 1
  br label %bb.q

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = add i64 %i.o, 1                          ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8
  %i.s = icmp ugt i64 %i.p, %i.r
  br i1 %i.s, label %bb.e, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit30

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.p) #22, !inline_history !41
  %.pre.i.i28 = load i64, ptr %i.n, align 8       ; 2 uses
  %.pre2.i.i29 = add i64 %.pre.i.i28, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit30

_ZN3fmt3v1114basic_appenderIcEaSEc.exit30:        ; preds = %bb.d, %bb.e
  %.pre-phi.i.i27 = phi i64 [ %i.p, %bb.d ], [ %.pre2.i.i29, %bb.e ]
  %i.v = phi i64 [ %i.o, %bb.d ], [ %.pre.i.i28, %bb.e ]
  %i.w = load ptr, ptr %0, align 8
  store i64 %.pre-phi.i.i27, ptr %i.n, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v
  store i8 92, ptr %i.x, align 1
  br label %bb.q

bb.f:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %i.aa = add i64 %i.z, 1                         ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = icmp ugt i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.g, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit35

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
end_hunk_0
