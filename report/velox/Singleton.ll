inline.NumInlined: 3368
inline.NumDeleted: 1576
begin_hunk_0_@_ZN3fmt3v116detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE:bb.a
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.l), !inline_history !3605
  %.pre.i.i.i = load i64, ptr %i.h, align 8, !tbaa !3349 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i:        ; preds = %bb.d, %bb.c
  %.pre-phi.i.i.i = phi i64 [ %i.l, %bb.c ], [ %.pre2.i.i.i, %bb.d ]
  %i.p = phi i64 [ %i.k, %bb.c ], [ %.pre.i.i.i, %bb.d ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !3347
  store i64 %.pre-phi.i.i.i, ptr %i.h, align 8, !tbaa !3349
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  store i8 %i.g, ptr %i.r, align 1, !tbaa !18
  %i.s = add nuw i64 %.04.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.s, %1
  br i1 %exitcond.not.i, label %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit, label %bb.c, !llvm.loop !3606

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
  %.pre.i.i.pre = load i64, ptr %i.v, align 8, !tbaa !3349
  br label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %.lr.ph27.i.i.preheader, %_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit
  %.pre.i.i = phi i64 [ %i.bg, %_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit ], [ %.pre.i.i.pre, %.lr.ph27.i.i.preheader ]
  %.018 = phi i64 [ %i.by, %_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit ], [ 0, %.lr.ph27.i.i.preheader ]
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.y = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.bg, %._crit_edge.i.i ] ; 2 uses
  %.01825.i.i = phi ptr [ %i.f, %.lr.ph27.i.i ], [ %i.bh, %._crit_edge.i.i ] ; 9 uses
  %i.z = ptrtoint ptr %.01825.i.i to i64          ; 2 uses
  %i.aa = sub i64 %i.u, %i.z                      ; 2 uses
  %i.ab = add i64 %i.aa, %i.y                     ; 2 uses
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !3348 ; 2 uses
  %i.ad = icmp ugt i64 %i.ab, %i.ac
  br i1 %i.ad, label %bb.g, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ae = load ptr, ptr %i.x, align 8, !tbaa !3345
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ab), !inline_history !3513
  %.pre30.i.i = load i64, ptr %i.w, align 8, !tbaa !3348
  %.pre31.i.i = load i64, ptr %i.v, align 8, !tbaa !3349
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.g, %bb.f
  %i.af = phi i64 [ %i.y, %bb.f ], [ %.pre31.i.i, %bb.g ] ; 4 uses
  %i.ag = phi i64 [ %i.ac, %bb.f ], [ %.pre30.i.i, %bb.g ]
  %i.ah = sub i64 %i.ag, %i.af
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 %i.aa) ; 13 uses
  %i.ai = load ptr, ptr %0, align 8, !tbaa !3347  ; 2 uses
  %i.aj = ptrtoaddr ptr %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.af ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.al = add i64 %i.af, %i.aj
  %i.am = sub i64 %i.al, %i.z
  %diff.check = icmp ult i64 %i.am, 128
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check32 = icmp ult i64 %spec.select.i.i, 128
  br i1 %min.iters.check32, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %spec.select.i.i, 120
  %n.vec = and i64 %spec.select.i.i, -128         ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %index ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 96
  %wide.load = load <32 x i8>, ptr %i.an, align 1, !tbaa !18
  %wide.load33.a = load <32 x i8>, ptr %i.ao, align 1, !tbaa !18
  %wide.load34.a = load <32 x i8>, ptr %i.ap, align 1, !tbaa !18
  %wide.load35 = load <32 x i8>, ptr %i.aq, align 1, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 %index ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 96
  store <32 x i8> %wide.load, ptr %i.ar, align 1, !tbaa !18
  store <32 x i8> %wide.load33.a, ptr %i.as, align 1, !tbaa !18
  store <32 x i8> %wide.load34.a, ptr %i.at, align 1, !tbaa !18
  store <32 x i8> %wide.load35, ptr %i.au, align 1, !tbaa !18
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !3607

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !3352

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec37 = and i64 %spec.select.i.i, -8         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index38 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next40, %vec.epilog.vector.body ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %index38
  %wide.load39 = load <8 x i8>, ptr %i.aw, align 1, !tbaa !18
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ak, i64 %index38
  store <8 x i8> %wide.load39, ptr %i.ax, align 1, !tbaa !18
  %index.next40 = add nuw i64 %index38, 8         ; 2 uses
  %i.ay = icmp eq i64 %index.next40, %n.vec37
  br i1 %i.ay, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3608

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n41 = icmp eq i64 %spec.select.i.i, %n.vec37
  br i1 %cmp.n41, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec37, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.bc, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.az = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %.023.i.i.prol
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !18
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.023.i.i.prol
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !18
  %i.bc = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !3609

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bc, %.lr.ph.i.i.prol ]
  %i.bd = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.be = icmp ugt i64 %i.bd, -4
  br i1 %i.be, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.v, align 8, !tbaa !3349
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.bf = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.af, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.bg = add i64 %i.bf, %spec.select.i.i         ; 3 uses
  store i64 %i.bg, ptr %i.v, align 8, !tbaa !3349
  %i.bh = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.bh, %i.t
  br i1 %.not.i.i, label %_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit, label %bb.f, !llvm.loop !3354

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.bx, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %.023.i.i
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !18
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.023.i.i
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !18
  %i.bl = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !18
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bl
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !18
  %i.bp = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !18
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bp
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !18
  %i.bt = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !18
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bt
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !18
  %i.bx = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.bx, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !3610

_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit: ; preds = %._crit_edge.i.i
  %i.by = add nuw i64 %.018, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.by, %1
  br i1 %exitcond.not, label %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit, label %.lr.ph27.i.i, !llvm.loop !3611

_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit: ; preds = %_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i, %.lr.ph, %bb.e, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress noreturn uwtable
define void @_ZN5folly14SingletonVault17fireShutdownTimerEv(ptr noundef nonnull align 8 dereferenceable(425) %0) local_unnamed_addr #22 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::vector.83", align 8    ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i64 0, ptr %i.c, align 8, !tbaa !25
  store i8 0, ptr %i.b, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 376
  invoke void @_ZNK5folly12SynchronizedISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEE4copyEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.83") align 8 %2, ptr noundef nonnull align 8 dereferenceable(28) %i.d)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !3612   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !3612 ; 2 uses
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i70.lr.ph

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i70.lr.ph: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 15 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i70

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pre121 = load ptr, ptr %2, align 8, !tbaa !215 ; 3 uses
  %.pre122 = load ptr, ptr %i.f, align 8, !tbaa !216 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre121, %.pre122
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.p, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %.pre121, %._crit_edge ] ; 3 uses
  %i.k = load ptr, ptr %.05.i.i.i, align 8, !tbaa !22 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !18
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #49
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, %.pre122
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !217

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !215
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %._crit_edge
  %i.q = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %.pre121, %._crit_edge ], [ %i.e, %bb.b ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !218
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #49
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.x = load i64, ptr %i.w, align 8, !tbaa !30
  store i64 %i.x, ptr %i.a, align 8, !tbaa !30
  invoke void @_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA36_clA19_cS6_ETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameISA_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSD_EEEE5valueEiE4typeELi0EEESA_DpRKSC_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(36) @.str.103, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(19) @.str.104, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.ah unwind label %bb.ai

bb.d:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i70: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i70.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.081.0118 = phi ptr [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i70.lr.ph ], [ %i.dd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.z = load ptr, ptr %.sroa.081.0118, align 8, !tbaa !22, !noalias !3613 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.081.0118, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !25, !noalias !3613 ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3616)
  store ptr %i.i, ptr %3, align 8, !tbaa !19, !alias.scope !3616
  store i64 0, ptr %i.j, align 8, !tbaa !25, !alias.scope !3616
  store i8 0, ptr %i.i, align 8, !tbaa !18, !alias.scope !3616
  %i.ac = add i64 %i.ab, 1                        ; 3 uses
  %.not.i = icmp ugt i64 %i.ac, 15
  br i1 %.not.i, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i70
  %i.ad = icmp slt i64 %i.ac, 0
  br i1 %i.ad, label %.invoke.i.invoke, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.0.i72 = call i64 @llvm.umax.i64(i64 %i.ac, i64 30) ; 5 uses
  %i.ae = add nuw i64 %.0.i72, 1                  ; 2 uses
  %i.af = icmp slt i64 %i.ae, 0
  br i1 %i.af, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i73, !prof !21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i73: ; preds = %bb.f
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #43
          to label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread unwind label %.loopexit ; 5 uses

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i73
  store i8 0, ptr %i.ag, align 1, !tbaa !18
  store ptr %i.ag, ptr %3, align 8, !tbaa !22
  store i64 %.0.i72, ptr %i.i, align 8, !tbaa !18
  %.not.i.i.i3085 = icmp ugt i64 %i.ab, %.0.i72
  br i1 %.not.i.i.i3085, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i70
  %i.ah = icmp slt i64 %i.ab, 0
  br i1 %i.ah, label %.invoke.i.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread
  %i.ai = phi ptr [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit ] ; 5 uses
  switch i64 %i.ab, label %bb.h [
    i64 0, label %bb.l
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.aj = load i8, ptr %i.z, align 1, !tbaa !18, !noalias !3616
  store i8 %i.aj, ptr %i.ai, align 1, !tbaa !18
  br label %bb.l

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ai, ptr align 1 %i.z, i64 %i.ab, i1 false)
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i53: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread
  %i.ak = shl nuw i64 %.0.i72, 1                  ; 2 uses
  %i.al = icmp ult i64 %i.ab, %i.ak
  %spec.store.select.i.i65 = call i64 @llvm.umin.i64(i64 %i.ak, i64 9223372036854775807)
  %.0.i54 = select i1 %i.al, i64 %spec.store.select.i.i65, i64 %i.ab ; 2 uses
  %i.am = add nuw i64 %.0.i54, 1                  ; 2 uses
  %i.an = icmp slt i64 %i.am, 0
  br i1 %i.an, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i55, !prof !21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i55: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i53
  %i.ao = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #43
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i56 unwind label %.loopexit ; 4 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i55
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit69, label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i56
  %cond.i64 = icmp eq i64 %i.ab, 1
  br i1 %cond.i64, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ap = load i8, ptr %i.z, align 1, !tbaa !18
  store i8 %i.ap, ptr %i.ao, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit69

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ao, ptr nonnull align 1 %i.z, i64 %i.ab, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i56, %bb.j, %bb.k
  %i.aq = add nuw nsw i64 %.0.i72, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.aq) #49
  store ptr %i.ao, ptr %3, align 8, !tbaa !22
  store i64 %.0.i54, ptr %i.i, align 8, !tbaa !18
  br label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit69, %bb.h, %bb.g
  %i.ar = phi ptr [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit69 ], [ %i.ai, %bb.h ], [ %i.ai, %bb.g ], [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ]
  store i64 %i.ab, ptr %i.j, align 8, !tbaa !25, !alias.scope !3616
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ab
  store i8 0, ptr %i.as, align 1, !tbaa !18
  %i.at = load i64, ptr %i.j, align 8, !tbaa !25, !alias.scope !3616 ; 10 uses
  %i.au = icmp eq i64 %i.at, 9223372036854775807
  br i1 %i.au, label %.invoke.i.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i

.invoke.i.invoke:                                 ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i36, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit, %bb.l, %bb.e
  %i.av = phi ptr [ @.str.13, %bb.e ], [ @.str.54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit ], [ @.str.54, %bb.l ], [ @.str.13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i36 ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.av) #42
          to label %.invoke.i.cont unwind label %.loopexit.split-lp

.invoke.i.cont:                                   ; preds = %.invoke.i.invoke
  unreachable

end_hunk_0
