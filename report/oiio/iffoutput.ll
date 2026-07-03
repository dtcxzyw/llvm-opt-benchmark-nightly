inline.NumInlined: 3235
inline.NumDeleted: 854
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEiTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_:bb.a
  br label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread
  %i.bj = tail call ptr @_ZN3fmt3v126detail14format_decimalIcjNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr nonnull %0, i32 noundef %spec.select, i32 noundef %i.k)
  br label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit

_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit: ; preds = %bb.e, %bb.f, %bb.i
  %.sroa.018.1 = phi ptr [ %i.bj, %bb.i ], [ %0, %bb.f ], [ %0, %bb.e ]
  ret ptr %.sroa.018.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail14format_decimalIcjNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 7 uses
  %i.b = zext i32 %2 to i64                       ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !148  ; 2 uses
  %i.e = add i64 %i.d, %i.b                       ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !134
  %i.h = icmp ugt i64 %i.e, %i.g
  br i1 %i.h, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !131
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.e), !inline_history !288
  %.pre.i = load i64, ptr %i.c, align 8, !tbaa !148 ; 2 uses
  %.pre14.i = load i64, ptr %i.f, align 8, !tbaa !134
  %.pre15.i = add i64 %.pre.i, %i.b               ; 2 uses
  %i.k = icmp ult i64 %.pre14.i, %.pre15.i
  br i1 %i.k, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit: ; preds = %bb.a, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i
  %i.l = phi i64 [ %.pre.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i ], [ %i.d, %bb.a ]
  %.pre-phi19.i = phi i64 [ %.pre15.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i ], [ %i.e, %bb.a ]
  store i64 %.pre-phi19.i, ptr %i.c, align 8, !tbaa !148
  %i.m = load ptr, ptr %0, align 8, !tbaa !133    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.l ; 3 uses
  %.not.not = icmp eq ptr %i.m, null
  br i1 %.not.not, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit
  %i.o = icmp ugt i32 %1, 99
  br i1 %i.o, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.020.i = phi i32 [ %i.p, %.lr.ph.i ], [ %2, %bb.b ]
  %.01819.i = phi i32 [ %i.x, %.lr.ph.i ], [ %1, %bb.b ] ; 3 uses
  %i.p = add i32 %.020.i, -2                      ; 3 uses
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  %i.s = urem i32 %.01819.i, 100
  %i.t = shl nuw nsw i32 %i.s, 1
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.u
  %i.w = load i16, ptr %i.v, align 2
  store i16 %i.w, ptr %i.r, align 1
  %i.x = udiv i32 %.01819.i, 100                  ; 2 uses
  %i.y = icmp ugt i32 %.01819.i, 9999
  br i1 %i.y, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !262

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.018.lcssa.i = phi i32 [ %1, %bb.b ], [ %i.x, %.lr.ph.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ %2, %bb.b ], [ %i.p, %.lr.ph.i ] ; 2 uses
  %i.z = icmp samesign ugt i32 %.018.lcssa.i, 9
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i
  %i.aa = add i32 %.0.lcssa.i, -2
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ab
  %i.ad = shl nuw nsw i32 %.018.lcssa.i, 1
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2
  store i16 %i.ag, ptr %i.ac, align 1
  br label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit

bb.d:                                             ; preds = %._crit_edge.i
  %i.ah = trunc nuw nsw i32 %.018.lcssa.i to i8
  %i.ai = or disjoint i8 %i.ah, 48
  %i.aj = add i32 %.0.lcssa.i, -1
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ak
  store i8 %i.ai, ptr %i.al, align 1, !tbaa !16
  br label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread: ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.am = icmp ugt i32 %1, 99
  br i1 %i.am, label %.lr.ph.i16, label %._crit_edge.i12

.lr.ph.i16:                                       ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread, %.lr.ph.i16
  %.020.i17 = phi i32 [ %i.an, %.lr.ph.i16 ], [ %2, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread ]
  %.01819.i18 = phi i32 [ %i.av, %.lr.ph.i16 ], [ %1, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread ] ; 3 uses
  %i.an = add i32 %.020.i17, -2                   ; 3 uses
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ao
  %i.aq = urem i32 %.01819.i18, 100
  %i.ar = shl nuw nsw i32 %i.aq, 1
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.as
  %i.au = load i16, ptr %i.at, align 2
  store i16 %i.au, ptr %i.ap, align 1
  %i.av = udiv i32 %.01819.i18, 100               ; 2 uses
  %i.aw = icmp ugt i32 %.01819.i18, 9999
  br i1 %i.aw, label %.lr.ph.i16, label %._crit_edge.i12, !llvm.loop !262

._crit_edge.i12:                                  ; preds = %.lr.ph.i16, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread
  %.018.lcssa.i13 = phi i32 [ %1, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread ], [ %i.av, %.lr.ph.i16 ] ; 3 uses
  %.0.lcssa.i14 = phi i32 [ %2, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread ], [ %i.an, %.lr.ph.i16 ] ; 2 uses
  %i.ax = icmp samesign ugt i32 %.018.lcssa.i13, 9
  br i1 %i.ax, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i12
  %i.ay = add i32 %.0.lcssa.i14, -2
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.az
  %i.bb = shl nuw nsw i32 %.018.lcssa.i13, 1
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.bc
  %i.be = load i16, ptr %i.bd, align 2
  store i16 %i.be, ptr %i.ba, align 1
  br label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit19

bb.f:                                             ; preds = %._crit_edge.i12
  %i.bf = trunc nuw nsw i32 %.018.lcssa.i13 to i8
  %i.bg = or disjoint i8 %i.bf, 48
  %i.bh = add i32 %.0.lcssa.i14, -1
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bi
  store i8 %i.bg, ptr %i.bj, align 1, !tbaa !16
  br label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit19

_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit19: ; preds = %bb.e, %bb.f
  %i.bk = sext i32 %2 to i64
  %i.bl = getelementptr inbounds i8, ptr %i.a, i64 %i.bk
  %i.bm = call ptr @_ZN3fmt3v126detail13copy_noinlineIcPcNS0_14basic_appenderIcEEEET1_T0_S7_S6_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.bl, ptr nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit

_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit: ; preds = %bb.c, %bb.d, %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit19
  %.sroa.010.1 = phi ptr [ %i.bm, %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit19 ], [ %0, %bb.d ], [ %0, %bb.c ]
  ret ptr %.sroa.010.1
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #22

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail13copy_noinlineIcPcNS0_14basic_appenderIcEEEET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #23 {
bb.a:
  %.not31.i.i = icmp eq ptr %0, %1
  br i1 %.not31.i.i, label %_ZN3fmt3v126detail4copyIcPcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS7_T0_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit, label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.c = ptrtoint ptr %1 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.pre.i.i = load i64, ptr %i.a, align 8, !tbaa !148
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.e = phi i64 [ %.pre.i.i, %.lr.ph34.i.i ], [ %i.ak, %._crit_edge.i.i ] ; 3 uses
  %.02532.i.i = phi ptr [ %0, %.lr.ph34.i.i ], [ %i.al, %._crit_edge.i.i ] ; 9 uses
  %i.f = load i64, ptr %i.b, align 8, !tbaa !134
  %i.g = sub i64 %i.f, %i.e
  %i.h = ptrtoint ptr %.02532.i.i to i64          ; 2 uses
  %i.i = sub i64 %i.c, %i.h                       ; 4 uses
  %i.j = icmp ult i64 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !131
  %i.l = add i64 %i.i, %i.e
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.l), !inline_history !290
  %i.m = load i64, ptr %i.a, align 8, !tbaa !148  ; 2 uses
  %i.n = load i64, ptr %i.b, align 8, !tbaa !134
  %i.o = sub i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.o)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.027.i.i = phi i64 [ %i.m, %bb.c ], [ %i.e, %bb.b ] ; 3 uses
  %.026.i.i = phi i64 [ %i.p, %bb.c ], [ %i.i, %bb.b ] ; 13 uses
  %i.q = load ptr, ptr %2, align 8, !tbaa !133    ; 2 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %.027.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.026.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.d
  %min.iters.check = icmp ult i64 %.026.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.t = add i64 %.027.i.i, %i.r
  %i.u = sub i64 %i.h, %i.t
  %diff.check = icmp ugt i64 %i.u, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check7 = icmp ult i64 %.026.i.i, 32
  br i1 %min.iters.check7, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %.026.i.i, 28
  %n.vec = and i64 %.026.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load = load <16 x i8>, ptr %i.v, align 1, !tbaa !16
  %wide.load8 = load <16 x i8>, ptr %i.w, align 1, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <16 x i8> %wide.load, ptr %i.x, align 1, !tbaa !16
  store <16 x i8> %wide.load8, ptr %i.y, align 1, !tbaa !16
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !291

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.026.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !292

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec10 = and i64 %.026.i.i, -4                ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next13, %vec.epilog.vector.body ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %index11
  %wide.load12 = load <4 x i8>, ptr %i.aa, align 1, !tbaa !16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 %index11
  store <4 x i8> %wide.load12, ptr %i.ab, align 1, !tbaa !16
  %index.next13 = add nuw i64 %index11, 4         ; 2 uses
  %i.ac = icmp eq i64 %index.next13, %n.vec10
  br i1 %i.ac, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !293

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n14 = icmp eq i64 %.026.i.i, %n.vec10
  br i1 %cmp.n14, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec10, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.026.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.ag, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %.030.i.i.prol
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !16
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 %.030.i.i.prol
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !16
  %i.ag = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !294

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ag, %.lr.ph.i.i.prol ]
  %i.ah = sub i64 %.030.i.i.ph, %.026.i.i
  %i.ai = icmp ugt i64 %i.ah, -4
  br i1 %i.ai, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i = load i64, ptr %i.a, align 8, !tbaa !148
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.d
  %i.aj = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.027.i.i, %bb.d ]
  %i.ak = add i64 %i.aj, %.026.i.i                ; 2 uses
  store i64 %i.ak, ptr %i.a, align 8, !tbaa !148
  %i.al = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %.026.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.al, %1
  br i1 %.not.i.i, label %_ZN3fmt3v126detail4copyIcPcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS7_T0_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit, label %bb.b, !llvm.loop !296

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.bb, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %.030.i.i
  %i.an = load i8, ptr %i.am, align 1, !tbaa !16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.s, i64 %.030.i.i
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !16
  %i.ap = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !16
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ap
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !16
  %i.at = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.at
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !16
  %i.ax = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ax
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !16
  %i.bb = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.bb, %.026.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !297

_ZN3fmt3v126detail4copyIcPcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS7_T0_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit: ; preds = %._crit_edge.i.i, %bb.a
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEExTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_(ptr %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i64 %1, 0                       ; 2 uses
  %spec.select = tail call i64 @llvm.abs.i64(i64 %1, i1 false) ; 6 uses
  %i.b = or i64 %spec.select, 1
  %i.c = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.b, i1 true)
  %i.d = xor i64 %i.c, 63
  %i.e = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !16    ; 2 uses
  %i.g = zext i8 %i.f to i32
  %i.h = zext i8 %i.f to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !136
  %i.k = icmp ult i64 %spec.select, %i.j
  %.neg.i.i = sext i1 %i.k to i32
  %i.l = add nsw i32 %.neg.i.i, %i.g              ; 4 uses
  %.lobit = lshr i64 %1, 63
  %i.m = sext i32 %i.l to i64
  %i.n = add nsw i64 %.lobit, %i.m                ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !148  ; 2 uses
  %i.q = add i64 %i.n, %i.p                       ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !134  ; 2 uses
  %i.t = icmp ugt i64 %i.q, %i.s
  br i1 %i.t, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i: ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !131
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.q), !inline_history !288
  %.pre.i = load i64, ptr %i.o, align 8, !tbaa !148 ; 3 uses
  %.pre14.i = load i64, ptr %i.r, align 8, !tbaa !134 ; 3 uses
  %.pre15.i = add i64 %.pre.i, %i.n               ; 2 uses
  %i.w = icmp ult i64 %.pre14.i, %.pre15.i
  br i1 %i.w, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit: ; preds = %bb.a, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i
  %i.x = phi i64 [ %.pre14.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i ], [ %i.s, %bb.a ]
  %i.y = phi i64 [ %.pre.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i ], [ %i.p, %bb.a ]
  %.pre-phi19.i = phi i64 [ %.pre15.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i ], [ %i.q, %bb.a ] ; 2 uses
  store i64 %.pre-phi19.i, ptr %i.o, align 8, !tbaa !148
  %i.z = load ptr, ptr %0, align 8, !tbaa !133    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y ; 3 uses
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit
  br i1 %i.a, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  store i8 45, ptr %i.aa, align 1, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.020 = phi ptr [ %i.ab, %bb.c ], [ %i.aa, %bb.b ] ; 3 uses
  %i.ac = icmp ugt i64 %spec.select, 99
  br i1 %i.ac, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.020.i = phi i32 [ %i.ad, %.lr.ph.i ], [ %i.l, %bb.d ]
  %.01819.i = phi i64 [ %i.ak, %.lr.ph.i ], [ %spec.select, %bb.d ] ; 3 uses
  %i.ad = add i32 %.020.i, -2                     ; 3 uses
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %.020, i64 %i.ae
  %i.ag = urem i64 %.01819.i, 100
  %i.ah = shl nuw nsw i64 %i.ag, 1
  %i.ai = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2
  store i16 %i.aj, ptr %i.af, align 1
  %i.ak = udiv i64 %.01819.i, 100                 ; 2 uses
  %i.al = icmp ugt i64 %.01819.i, 9999
  br i1 %i.al, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !264

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.d
  %.018.lcssa.i = phi i64 [ %spec.select, %bb.d ], [ %i.ak, %.lr.ph.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ %i.l, %bb.d ], [ %i.ad, %.lr.ph.i ] ; 2 uses
  %i.am = icmp samesign ugt i64 %.018.lcssa.i, 9
  br i1 %i.am, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
end_hunk_0
begin_hunk_1_@_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_10write_charIcS5_EET0_S7_T_RKNS0_12format_specsEEUlS5_E_EET1_SE_SB_mmOT2_
define linkonce_odr hidden ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_10write_charIcS5_EET0_S7_T_RKNS0_12format_specsEEUlS5_E_EET1_SE_SB_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 1 dereferenceable(2) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !316
  %i.c = zext i32 %i.b to i64
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 %3) ; 4 uses
  %i.e = load i32, ptr %1, align 4, !tbaa !265    ; 2 uses
  %i.f = lshr i32 %i.e, 3
  %i.g = and i32 %i.f, 7
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @.str.41, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !16
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
  %i.r = mul nuw nsw i64 %i.d, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !148
  %i.u = add i64 %i.t, %2
  %i.v = add i64 %i.u, %i.r                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !134
  %i.y = icmp ugt i64 %i.v, %i.x
  br i1 %i.y, label %bb.b, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !131
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.v), !inline_history !317
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.a, %bb.b
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.ab = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %0, i64 noundef %i.m, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %.sroa.09.0 = phi ptr [ %i.ab, %bb.c ], [ %0, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit ] ; 7 uses
  %i.ac = load i8, ptr %4, align 1, !tbaa !313, !range !365, !noundef !341
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !315 ; 2 uses
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ag = tail call ptr @_ZN3fmt3v126detail18write_escaped_charIcNS0_14basic_appenderIcEEEET0_S5_T_(ptr %.sroa.09.0, i8 noundef signext %i.af)
  br label %_ZZN3fmt3v126detail10write_charIcNS0_14basic_appenderIcEEEET0_S5_T_RKNS0_12format_specsEENKUlS4_E_clES4_.exit

bb.f:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 8 ; 3 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !148 ; 2 uses
  %i.aj = add i64 %i.ai, 1                        ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !134
  %i.am = icmp ugt i64 %i.aj, %i.al
  br i1 %i.am, label %bb.g, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !131
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0, i64 noundef %i.aj), !inline_history !366
  %.pre.i.i.i = load i64, ptr %i.ah, align 8, !tbaa !148 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.g, %bb.f
  %.pre-phi.i.i.i = phi i64 [ %i.aj, %bb.f ], [ %.pre2.i.i.i, %bb.g ]
  %i.ap = phi i64 [ %i.ai, %bb.f ], [ %.pre.i.i.i, %bb.g ]
  %i.aq = load ptr, ptr %.sroa.09.0, align 8, !tbaa !133
  store i64 %.pre-phi.i.i.i, ptr %i.ah, align 8, !tbaa !148
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  store i8 %i.af, ptr %i.ar, align 1, !tbaa !16
  br label %_ZZN3fmt3v126detail10write_charIcNS0_14basic_appenderIcEEEET0_S5_T_RKNS0_12format_specsEENKUlS4_E_clES4_.exit

_ZZN3fmt3v126detail10write_charIcNS0_14basic_appenderIcEEEET0_S5_T_RKNS0_12format_specsEENKUlS4_E_clES4_.exit: ; preds = %bb.e, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i
  %.sroa.01.0.i = phi ptr [ %i.ag, %bb.e ], [ %.sroa.09.0, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i ] ; 2 uses
  %.not31 = icmp eq i64 %i.d, %i.m
  br i1 %.not31, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZZN3fmt3v126detail10write_charIcNS0_14basic_appenderIcEEEET0_S5_T_RKNS0_12format_specsEENKUlS4_E_clES4_.exit
  %i.as = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr %.sroa.01.0.i, i64 noundef %i.n, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZZN3fmt3v126detail10write_charIcNS0_14basic_appenderIcEEEET0_S5_T_RKNS0_12format_specsEENKUlS4_E_clES4_.exit
  %.sroa.09.1 = phi ptr [ %i.as, %bb.h ], [ %.sroa.01.0.i, %_ZZN3fmt3v126detail10write_charIcNS0_14basic_appenderIcEEEET0_S5_T_RKNS0_12format_specsEENKUlS4_E_clES4_.exit ]
  ret ptr %.sroa.09.1
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(8) %2) local_unnamed_addr #23 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !265
  %i.b = lshr i32 %i.a, 15
  %i.c = and i32 %i.b, 7                          ; 3 uses
  %i.d = zext nneg i32 %i.c to i64
  %i.e = icmp eq i32 %i.c, 1
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = load i8, ptr %i.f, align 4, !tbaa !16
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %.lr.ph.i
  %.04.i = phi i64 [ 0, %.lr.ph.i ], [ %i.s, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i ]
  %i.k = load i64, ptr %i.h, align 8, !tbaa !148  ; 2 uses
  %i.l = add i64 %i.k, 1                          ; 3 uses
  %i.m = load i64, ptr %i.i, align 8, !tbaa !134
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.d, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !131
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.l), !inline_history !367
  %.pre.i.i.i = load i64, ptr %i.h, align 8, !tbaa !148 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.d, %bb.c
  %.pre-phi.i.i.i = phi i64 [ %i.l, %bb.c ], [ %.pre2.i.i.i, %bb.d ]
  %i.p = phi i64 [ %i.k, %bb.c ], [ %.pre.i.i.i, %bb.d ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !133
  store i64 %.pre-phi.i.i.i, ptr %i.h, align 8, !tbaa !148
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  store i8 %i.g, ptr %i.r, align 1, !tbaa !16
  %i.s = add nuw i64 %.04.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.s, %1
  br i1 %exitcond.not.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit, label %bb.c, !llvm.loop !368

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
  %.pre.i.i.pre = load i64, ptr %i.u, align 8, !tbaa !148
  br label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %.lr.ph34.i.i.preheader, %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit
  %.pre.i.i = phi i64 [ %i.be, %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit ], [ %.pre.i.i.pre, %.lr.ph34.i.i.preheader ]
  %.018 = phi i64 [ %i.bw, %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit ], [ 0, %.lr.ph34.i.i.preheader ]
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.y = phi i64 [ %.pre.i.i, %.lr.ph34.i.i ], [ %i.be, %._crit_edge.i.i ] ; 3 uses
  %.02532.i.i = phi ptr [ %i.f, %.lr.ph34.i.i ], [ %i.bf, %._crit_edge.i.i ] ; 9 uses
  %i.z = load i64, ptr %i.v, align 8, !tbaa !134
  %i.aa = sub i64 %i.z, %i.y
  %i.ab = ptrtoint ptr %.02532.i.i to i64         ; 2 uses
  %i.ac = sub i64 %i.w, %i.ab                     ; 4 uses
  %i.ad = icmp ult i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = load ptr, ptr %i.x, align 8, !tbaa !131
  %i.af = add i64 %i.ac, %i.y
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.af), !inline_history !318
  %i.ag = load i64, ptr %i.u, align 8, !tbaa !148 ; 2 uses
  %i.ah = load i64, ptr %i.v, align 8, !tbaa !134
  %i.ai = sub i64 %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 %i.ai)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.027.i.i = phi i64 [ %i.ag, %bb.g ], [ %i.y, %bb.f ] ; 3 uses
  %.026.i.i = phi i64 [ %i.aj, %bb.g ], [ %i.ac, %bb.f ] ; 13 uses
  %i.ak = load ptr, ptr %0, align 8, !tbaa !133   ; 2 uses
  %i.al = ptrtoaddr ptr %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.027.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.026.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.h
  %min.iters.check = icmp ult i64 %.026.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.an = add i64 %.027.i.i, %i.al
  %i.ao = sub i64 %i.ab, %i.an
  %diff.check = icmp ugt i64 %i.ao, -32
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
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !369

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.026.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !292

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
  br i1 %i.aw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !370

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
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !371

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ba, %.lr.ph.i.i.prol ]
  %i.bb = sub i64 %.030.i.i.ph, %.026.i.i
  %i.bc = icmp ugt i64 %i.bb, -4
  br i1 %i.bc, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i = load i64, ptr %i.u, align 8, !tbaa !148
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.h
  %i.bd = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.027.i.i, %bb.h ]
  %i.be = add i64 %i.bd, %.026.i.i                ; 3 uses
  store i64 %i.be, ptr %i.u, align 8, !tbaa !148
  %i.bf = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %.026.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.bf, %i.t
  br i1 %.not.i.i, label %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit, label %bb.f, !llvm.loop !296

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
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !372

_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit: ; preds = %._crit_edge.i.i
  %i.bw = add nuw i64 %.018, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bw, %1
  br i1 %exitcond.not, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit, label %.lr.ph34.i.i, !llvm.loop !373

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit: ; preds = %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %bb.e, %.lr.ph, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail18write_escaped_charIcNS0_14basic_appenderIcEEEET0_S5_T_(ptr %0, i8 noundef signext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 5 uses
  %2 = alloca %"struct.fmt::v12::detail::find_escape_result", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i8 %1, ptr %i.a, align 1, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !148  ; 2 uses
  %i.d = add i64 %i.c, 1                          ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !134
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !131
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.d), !inline_history !289
  %.pre.i.i = load i64, ptr %i.b, align 8, !tbaa !148 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.a, %bb.b
  %.pre-phi.i.i = phi i64 [ %i.d, %bb.a ], [ %.pre2.i.i, %bb.b ]
  %i.j = phi i64 [ %i.c, %bb.a ], [ %.pre.i.i, %bb.b ]
  %i.k = load ptr, ptr %0, align 8, !tbaa !133
  store i64 %.pre-phi.i.i, ptr %i.b, align 8, !tbaa !148
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  store ptr %i.a, ptr %2, align 8, !tbaa !374
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store ptr %i.t, ptr %i.s, align 8, !tbaa !376
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.m, ptr %i.u, align 8, !tbaa !377
  %i.v = call ptr @_ZN3fmt3v126detail16write_escaped_cpINS0_14basic_appenderIcEEcEET_S5_RKNS1_18find_escape_resultIT0_EE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.g

bb.e:                                             ; preds = %_ZN3fmt3v126detail12needs_escapeEj.exit
  %i.w = load i64, ptr %i.b, align 8, !tbaa !148  ; 2 uses
  %i.x = add i64 %i.w, 1                          ; 3 uses
  %i.y = load i64, ptr %i.e, align 8, !tbaa !134
  %i.z = icmp ugt i64 %i.x, %i.y
  br i1 %i.z, label %bb.f, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit17

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !131
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.x), !inline_history !289
  %.pre.i.i15 = load i64, ptr %i.b, align 8, !tbaa !148 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN3fmt3v126detail15write_codepointILm8EcNS0_14basic_appenderIcEEEET1_S5_cj:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNK3fmt3v126detail14digit_groupingIcE5applyINS0_14basic_appenderIcEEcEET_S7_NS0_17basic_string_viewIT0_EE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %1, ptr %2, i64 %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.fmt::v12::basic_memory_buffer.29", align 8 ; 13 uses
  %i.a = trunc i64 %3 to i32                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr @_ZN3fmt3v1219basic_memory_bufferIiLm500ENS0_6detail9allocatorIiEEE4growERNS2_6bufferIiEEm, ptr %i.c, align 8, !tbaa !381
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 6 uses
  store ptr %i.e, ptr %4, align 8, !tbaa !383
  store i64 500, ptr %i.b, align 8, !tbaa !384
  store i64 1, ptr %i.d, align 8, !tbaa !385
  store i32 0, ptr %i.e, align 8, !tbaa !3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !13   ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %i.k = phi i64 [ %i.g, %.lr.ph ], [ %i.ac, %bb.i ]
  %i.l = phi ptr [ %i.e, %.lr.ph ], [ %i.ad, %bb.i ] ; 3 uses
  %i.m = phi i64 [ 1, %.lr.ph ], [ %.pre-phi.i28, %bb.i ] ; 4 uses
  %.sroa.6.056 = phi i32 [ 0, %.lr.ph ], [ %i.w, %bb.i ]
  %.sroa.039.055 = phi ptr [ %i.i, %.lr.ph ], [ %.sroa.039.1, %bb.i ] ; 4 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !17
  %i.o = load i64, ptr %i.j, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o ; 2 uses
  %i.q = icmp eq ptr %.sroa.039.055, %i.p
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %i.p, i64 -1
  %.sink.i.pre = load i8, ptr %i.r, align 1, !tbaa !16
  br label %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit

bb.d:                                             ; preds = %bb.b
  %i.s = load i8, ptr %.sroa.039.055, align 1, !tbaa !16 ; 2 uses
  %i.t = add i8 %i.s, -127
  %or.cond.i = icmp ult i8 %i.t, -126
  br i1 %or.cond.i, label %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.thread.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.039.055, i64 1
  br label %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit

_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit: ; preds = %bb.c, %bb.e
  %.sink.i = phi i8 [ %.sink.i.pre, %bb.c ], [ %i.s, %bb.e ]
  %.sroa.039.1 = phi ptr [ %.sroa.039.055, %bb.c ], [ %i.u, %bb.e ]
  %i.v = sext i8 %.sink.i to i32
  %i.w = add nsw i32 %.sroa.6.056, %i.v           ; 4 uses
  %.not = icmp ne i32 %i.w, 0
  %.not24 = icmp slt i32 %i.w, %i.a
  %or.cond = and i1 %.not, %.not24
  br i1 %or.cond, label %bb.g, label %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.thread.loopexit

bb.f:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.g:                                             ; preds = %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit
  %i.y = add i64 %i.m, 1                          ; 3 uses
  %i.z = load i64, ptr %i.b, align 8, !tbaa !384
  %i.aa = icmp ugt i64 %i.y, %i.z
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !381
  invoke void %i.ab(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.y)
          to label %.noexc31 unwind label %bb.f, !inline_history !386

.noexc31:                                         ; preds = %bb.h
  %.pre.i29 = load i64, ptr %i.d, align 8, !tbaa !385 ; 2 uses
  %.pre2.i30 = add i64 %.pre.i29, 1
  %.pre = load ptr, ptr %4, align 8, !tbaa !383
  %.pre63 = load i64, ptr %i.f, align 8, !tbaa !13
  br label %bb.i

bb.i:                                             ; preds = %.noexc31, %bb.g
  %i.ac = phi i64 [ %i.k, %bb.g ], [ %.pre63, %.noexc31 ] ; 2 uses
  %i.ad = phi ptr [ %i.l, %bb.g ], [ %.pre, %.noexc31 ] ; 3 uses
  %.pre-phi.i28 = phi i64 [ %i.y, %bb.g ], [ %.pre2.i30, %.noexc31 ] ; 3 uses
  %i.ae = phi i64 [ %i.m, %bb.g ], [ %.pre.i29, %.noexc31 ]
  store i64 %.pre-phi.i28, ptr %i.d, align 8, !tbaa !385
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ae
  store i32 %i.w, ptr %i.af, align 4, !tbaa !3
  %i.ag = icmp eq i64 %i.ac, 0
  br i1 %i.ag, label %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.thread.loopexit, label %bb.b

_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.thread.loopexit: ; preds = %bb.d, %bb.i, %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit
  %i.ah = phi ptr [ %i.l, %bb.d ], [ %i.ad, %bb.i ], [ %i.l, %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit ]
  %i.ai = phi i64 [ %i.m, %bb.d ], [ %.pre-phi.i28, %bb.i ], [ %i.m, %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit ]
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = add i32 %i.aj, -1
  br label %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.thread

_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.thread: ; preds = %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.thread.loopexit, %bb.a
  %i.al = phi ptr [ %i.ah, %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.thread.loopexit ], [ %i.e, %bb.a ]
  %i.am = phi i32 [ %i.ak, %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.thread.loopexit ], [ 0, %bb.a ]
  %i.an = icmp sgt i32 %i.a, 0
  br i1 %i.an, label %.lr.ph60, label %._crit_edge

.lr.ph60:                                         ; preds = %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.thread
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %wide.trip.count = and i64 %3, 2147483647
  br label %bb.k

._crit_edge.loopexit:                             ; preds = %bb.s
  %.pre64 = load ptr, ptr %4, align 8, !tbaa !383
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.thread
  %i.as = phi ptr [ %.pre64, %._crit_edge.loopexit ], [ %i.al, %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.thread ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.as, %i.e
  br i1 %.not.i.i, label %_ZN3fmt3v1219basic_memory_bufferIiLm500ENS0_6detail9allocatorIiEEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.as) #29
  br label %_ZN3fmt3v1219basic_memory_bufferIiLm500ENS0_6detail9allocatorIiEEED2Ev.exit

_ZN3fmt3v1219basic_memory_bufferIiLm500ENS0_6detail9allocatorIiEEED2Ev.exit: ; preds = %._crit_edge, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret ptr %1

bb.k:                                             ; preds = %.lr.ph60, %bb.s
  %indvars.iv = phi i64 [ 0, %.lr.ph60 ], [ %indvars.iv.next, %bb.s ] ; 3 uses
  %.01859 = phi i32 [ %i.am, %.lr.ph60 ], [ %.119, %bb.s ] ; 3 uses
  %i.at = sub i64 %3, %indvars.iv
  %i.au = load ptr, ptr %4, align 8, !tbaa !383
  %i.av = sext i32 %.01859 to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !3
  %i.ay = trunc i64 %i.at to i32
  %i.az = icmp eq i32 %i.ax, %i.ay
  br i1 %i.az, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.ba = load ptr, ptr %i.ao, align 8, !tbaa !17 ; 2 uses
  %i.bb = load i64, ptr %i.f, align 8, !tbaa !13  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bb ; 2 uses
  %.not31.i.i = icmp samesign eq i64 %i.bb, 0
  br i1 %.not31.i.i, label %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit, label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %bb.l
  %i.bd = ptrtoint ptr %i.bc to i64
  %.pre.i.i = load i64, ptr %i.ap, align 8, !tbaa !148
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.be = phi i64 [ %.pre.i.i, %.lr.ph34.i.i ], [ %i.ck, %._crit_edge.i.i ] ; 3 uses
  %.02532.i.i = phi ptr [ %i.ba, %.lr.ph34.i.i ], [ %i.cl, %._crit_edge.i.i ] ; 9 uses
  %i.bf = load i64, ptr %i.aq, align 8, !tbaa !134
  %i.bg = sub i64 %i.bf, %i.be
  %i.bh = ptrtoint ptr %.02532.i.i to i64         ; 2 uses
  %i.bi = sub i64 %i.bd, %i.bh                    ; 4 uses
  %i.bj = icmp ult i64 %i.bg, %i.bi
  br i1 %i.bj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bk = load ptr, ptr %i.ar, align 8, !tbaa !131
  %i.bl = add i64 %i.bi, %i.be
  invoke void %i.bk(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.bl)
          to label %.noexc34 unwind label %bb.p, !inline_history !387

.noexc34:                                         ; preds = %bb.n
  %i.bm = load i64, ptr %i.ap, align 8, !tbaa !148 ; 2 uses
  %i.bn = load i64, ptr %i.aq, align 8, !tbaa !134
  %i.bo = sub i64 %i.bn, %i.bm
  %i.bp = call i64 @llvm.umin.i64(i64 %i.bi, i64 %i.bo)
  br label %bb.o

bb.o:                                             ; preds = %.noexc34, %bb.m
  %.027.i.i = phi i64 [ %i.bm, %.noexc34 ], [ %i.be, %bb.m ] ; 3 uses
  %.026.i.i = phi i64 [ %i.bp, %.noexc34 ], [ %i.bi, %bb.m ] ; 13 uses
  %i.bq = load ptr, ptr %1, align 8, !tbaa !133   ; 2 uses
  %i.br = ptrtoaddr ptr %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.027.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.026.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.o
  %min.iters.check = icmp ult i64 %.026.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bt = add i64 %.027.i.i, %i.br
  %i.bu = sub i64 %i.bh, %i.bt
  %diff.check = icmp ugt i64 %i.bu, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check77 = icmp ult i64 %.026.i.i, 32
  br i1 %min.iters.check77, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %.026.i.i, 28
  %n.vec = and i64 %.026.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %index ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %wide.load = load <16 x i8>, ptr %i.bv, align 1, !tbaa !16
  %wide.load78 = load <16 x i8>, ptr %i.bw, align 1, !tbaa !16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 %index ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store <16 x i8> %wide.load, ptr %i.bx, align 1, !tbaa !16
  store <16 x i8> %wide.load78, ptr %i.by, align 1, !tbaa !16
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !388

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.026.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !292

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec80 = and i64 %.026.i.i, -4                ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index81 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next83, %vec.epilog.vector.body ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %index81
  %wide.load82 = load <4 x i8>, ptr %i.ca, align 1, !tbaa !16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 %index81
  store <4 x i8> %wide.load82, ptr %i.cb, align 1, !tbaa !16
  %index.next83 = add nuw i64 %index81, 4         ; 2 uses
  %i.cc = icmp eq i64 %index.next83, %n.vec80
  br i1 %i.cc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !389

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n84 = icmp eq i64 %.026.i.i, %n.vec80
  br i1 %cmp.n84, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec80, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.026.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.cg, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %.030.i.i.prol
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.030.i.i.prol
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !16
  %i.cg = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !390

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.cg, %.lr.ph.i.i.prol ]
  %i.ch = sub i64 %.030.i.i.ph, %.026.i.i
  %i.ci = icmp ugt i64 %i.ch, -4
  br i1 %i.ci, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i = load i64, ptr %i.ap, align 8, !tbaa !148
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.o
  %i.cj = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.027.i.i, %bb.o ]
  %i.ck = add i64 %i.cj, %.026.i.i                ; 2 uses
  store i64 %i.ck, ptr %i.ap, align 8, !tbaa !148
  %i.cl = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %.026.i.i ; 2 uses
  %.not.i.i33 = icmp eq ptr %i.cl, %i.bc
  br i1 %.not.i.i33, label %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit, label %bb.m, !llvm.loop !296

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.db, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %.030.i.i
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !16
  %i.co = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.030.i.i
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !16
  %i.cp = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !16
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.cp
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !16
  %i.ct = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !16
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.ct
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !16
  %i.cx = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !16
  %i.da = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.cx
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !16
  %i.db = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.db, %.026.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !391

_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit: ; preds = %._crit_edge.i.i, %bb.l
  %i.dc = add nsw i32 %.01859, -1
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.q:                                             ; preds = %bb.k, %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit
  %.119 = phi i32 [ %i.dc, %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit ], [ %.01859, %bb.k ]
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.df = load i8, ptr %i.de, align 1, !tbaa !16
  %i.dg = load i64, ptr %i.ap, align 8, !tbaa !148 ; 2 uses
  %i.dh = add i64 %i.dg, 1                        ; 3 uses
  %i.di = load i64, ptr %i.aq, align 8, !tbaa !134
  %i.dj = icmp ugt i64 %i.dh, %i.di
  br i1 %i.dj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dk = load ptr, ptr %i.ar, align 8, !tbaa !131
  invoke void %i.dk(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.dh)
          to label %.noexc36 unwind label %bb.t, !inline_history !392

.noexc36:                                         ; preds = %bb.r
  %.pre.i.i35 = load i64, ptr %i.ap, align 8, !tbaa !148 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i35, 1
  br label %bb.s

bb.s:                                             ; preds = %.noexc36, %bb.q
  %.pre-phi.i.i = phi i64 [ %i.dh, %bb.q ], [ %.pre2.i.i, %.noexc36 ]
  %i.dl = phi i64 [ %i.dg, %bb.q ], [ %.pre.i.i35, %.noexc36 ]
  %i.dm = load ptr, ptr %1, align 8, !tbaa !133
  store i64 %.pre-phi.i.i, ptr %i.ap, align 8, !tbaa !148
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dl
  store i8 %i.df, ptr %i.dn, align 1, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.k, !llvm.loop !393

bb.t:                                             ; preds = %bb.r
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %bb.f, %bb.t, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %i.x, %bb.f ], [ %i.do, %bb.t ], [ %i.dd, %bb.p ]
  %i.dp = load ptr, ptr %4, align 8, !tbaa !383   ; 2 uses
  %.not.i.i37 = icmp eq ptr %i.dp, %i.e
  br i1 %.not.i.i37, label %_ZN3fmt3v1219basic_memory_bufferIiLm500ENS0_6detail9allocatorIiEEED2Ev.exit38, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef %i.dp) #29
  br label %_ZN3fmt3v1219basic_memory_bufferIiLm500ENS0_6detail9allocatorIiEEED2Ev.exit38

_ZN3fmt3v1219basic_memory_bufferIiLm500ENS0_6detail9allocatorIiEEED2Ev.exit38: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v1219basic_memory_bufferIiLm500ENS0_6detail9allocatorIiEEE4growERNS2_6bufferIiEEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !384  ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = add i64 %i.c, %i.b                       ; 3 uses
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ugt i64 %i.d, 4611686018427387903
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef i64 @llvm.umax.i64(i64 %1, i64 4611686018427387903)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i64 [ %i.d, %bb.b ], [ %i.g, %bb.c ], [ %1, %bb.a ] ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !383    ; 3 uses
  %i.i = shl i64 %.0, 2
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #34 ; 3 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.e, label %_ZN3fmt3v126detail9allocatorIiE8allocateEm.exit

bb.e:                                             ; preds = %bb.d
end_hunk_2
begin_hunk_3_@_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEEZNS1_9write_intIS5_ocEET_S7_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEEUlS5_E_EESD_SD_SB_mmOT2_:bb.a
  %i.b = load i32, ptr %i.a, align 4, !tbaa !316
  %i.c = zext i32 %i.b to i64
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 %3) ; 4 uses
  %i.e = load i32, ptr %1, align 4, !tbaa !265    ; 2 uses
  %i.f = lshr i32 %i.e, 3
  %i.g = and i32 %i.f, 7
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @.str.42, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !16
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
  %i.r = mul nuw nsw i64 %i.d, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !148
  %i.u = add i64 %i.t, %2
  %i.v = add i64 %i.u, %i.r                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !134
  %i.y = icmp ugt i64 %i.v, %i.x
  br i1 %i.y, label %bb.b, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !131
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.v), !inline_history !317
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.a, %bb.b
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.ab = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %0, i64 noundef %i.m, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %.sroa.09.0 = phi ptr [ %i.ab, %bb.c ], [ %0, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit ] ; 6 uses
  %i.ac = load ptr, ptr %4, align 8, !tbaa !398, !nonnull !341, !align !342
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !3
  %i.ae = and i32 %i.ad, 16777215                 ; 2 uses
  %.not6.i = icmp eq i32 %i.ae, 0
  br i1 %.not6.i, label %_ZZN3fmt3v126detail9write_intINS0_14basic_appenderIcEEocEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEENKUlS4_E_clES4_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 8 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 24
  br label %bb.e

bb.e:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %.lr.ph.i
  %.07.i = phi i32 [ %i.ae, %.lr.ph.i ], [ %i.ar, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i ] ; 2 uses
  %i.ai = trunc i32 %.07.i to i8
  %i.aj = load i64, ptr %i.af, align 8, !tbaa !148 ; 2 uses
  %i.ak = add i64 %i.aj, 1                        ; 3 uses
  %i.al = load i64, ptr %i.ag, align 8, !tbaa !134
  %i.am = icmp ugt i64 %i.ak, %i.al
  br i1 %i.am, label %bb.f, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.f:                                             ; preds = %bb.e
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !131
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0, i64 noundef %i.ak), !inline_history !400
  %.pre.i.i.i = load i64, ptr %i.af, align 8, !tbaa !148 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.f, %bb.e
  %.pre-phi.i.i.i = phi i64 [ %i.ak, %bb.e ], [ %.pre2.i.i.i, %bb.f ]
  %i.ao = phi i64 [ %i.aj, %bb.e ], [ %.pre.i.i.i, %bb.f ]
  %i.ap = load ptr, ptr %.sroa.09.0, align 8, !tbaa !133
  store i64 %.pre-phi.i.i.i, ptr %i.af, align 8, !tbaa !148
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  store i8 %i.ai, ptr %i.aq, align 1, !tbaa !16
  %i.ar = lshr i32 %.07.i, 8                      ; 2 uses
  %.not.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i, label %_ZZN3fmt3v126detail9write_intINS0_14basic_appenderIcEEocEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEENKUlS4_E_clES4_.exit, label %bb.e, !llvm.loop !401

_ZZN3fmt3v126detail9write_intINS0_14basic_appenderIcEEocEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEENKUlS4_E_clES4_.exit: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !402, !nonnull !341, !align !363
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !403, !nonnull !341, !align !363 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !133
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !148
  %i.az = tail call ptr @_ZNK3fmt3v126detail14digit_groupingIcE5applyINS0_14basic_appenderIcEEcEET_S7_NS0_17basic_string_viewIT0_EE(ptr noundef nonnull align 8 dereferenceable(64) %i.at, ptr %.sroa.09.0, ptr %i.aw, i64 %i.ay) ; 2 uses
  %.not31 = icmp eq i64 %i.d, %i.m
  br i1 %.not31, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZZN3fmt3v126detail9write_intINS0_14basic_appenderIcEEocEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEENKUlS4_E_clES4_.exit
  %i.ba = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr %i.az, i64 noundef %i.n, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZZN3fmt3v126detail9write_intINS0_14basic_appenderIcEEocEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEENKUlS4_E_clES4_.exit
  %.sroa.09.1 = phi ptr [ %i.ba, %bb.g ], [ %i.az, %_ZZN3fmt3v126detail9write_intINS0_14basic_appenderIcEEocEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEENKUlS4_E_clES4_.exit ]
  ret ptr %.sroa.09.1
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_11write_bytesIcLS3_1ES5_EET1_S7_NS0_17basic_string_viewIcEERKNS0_12format_specsEEUlS5_E_EES7_S7_SC_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !316
  %i.c = zext i32 %i.b to i64
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 %3) ; 4 uses
  %i.e = load i32, ptr %1, align 4, !tbaa !265    ; 2 uses
  %i.f = lshr i32 %i.e, 3
  %i.g = and i32 %i.f, 7
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @.str.41, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !16
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
  %i.r = mul nuw nsw i64 %i.d, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !148
  %i.u = add i64 %i.t, %2
  %i.v = add i64 %i.u, %i.r                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !134
  %i.y = icmp ugt i64 %i.v, %i.x
  br i1 %i.y, label %bb.b, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !131
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.v), !inline_history !317
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.a, %bb.b
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.ab = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %0, i64 noundef %i.m, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %.sroa.09.0 = phi ptr [ %i.ab, %bb.c ], [ %0, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit ] ; 7 uses
  %i.ac = load ptr, ptr %4, align 8, !tbaa !404   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !405 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ae ; 2 uses
  %.not31.i.i.i = icmp samesign eq i64 %i.ae, 0
  br i1 %.not31.i.i.i, label %_ZZN3fmt3v126detail11write_bytesIcLNS0_5alignE1ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS5_E_clES5_.exit, label %.lr.ph34.i.i.i

.lr.ph34.i.i.i:                                   ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 8 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 16 ; 2 uses
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 24
  %.pre.i.i.i = load i64, ptr %i.ag, align 8, !tbaa !148
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.i, %.lr.ph34.i.i.i
  %i.ak = phi i64 [ %.pre.i.i.i, %.lr.ph34.i.i.i ], [ %i.bq, %._crit_edge.i.i.i ] ; 3 uses
  %.02532.i.i.i = phi ptr [ %i.ac, %.lr.ph34.i.i.i ], [ %i.br, %._crit_edge.i.i.i ] ; 9 uses
  %i.al = load i64, ptr %i.ah, align 8, !tbaa !134
  %i.am = sub i64 %i.al, %i.ak
  %i.an = ptrtoint ptr %.02532.i.i.i to i64       ; 2 uses
  %i.ao = sub i64 %i.ai, %i.an                    ; 4 uses
  %i.ap = icmp ult i64 %i.am, %i.ao
  br i1 %i.ap, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aq = load ptr, ptr %i.aj, align 8, !tbaa !131
  %i.ar = add i64 %i.ao, %i.ak
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0, i64 noundef %i.ar), !inline_history !406
  %i.as = load i64, ptr %i.ag, align 8, !tbaa !148 ; 2 uses
  %i.at = load i64, ptr %i.ah, align 8, !tbaa !134
  %i.au = sub i64 %i.at, %i.as
  %i.av = tail call i64 @llvm.umin.i64(i64 %i.ao, i64 %i.au)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.027.i.i.i = phi i64 [ %i.as, %bb.f ], [ %i.ak, %bb.e ] ; 3 uses
  %.026.i.i.i = phi i64 [ %i.av, %bb.f ], [ %i.ao, %bb.e ] ; 13 uses
  %i.aw = load ptr, ptr %.sroa.09.0, align 8, !tbaa !133 ; 2 uses
  %i.ax = ptrtoaddr ptr %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.027.i.i.i ; 7 uses
  %.not36.i.i.i = icmp eq i64 %.026.i.i.i, 0
  br i1 %.not36.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.g
  %min.iters.check = icmp ult i64 %.026.i.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.az = add i64 %.027.i.i.i, %i.ax
  %i.ba = sub i64 %i.an, %i.az
  %diff.check = icmp ugt i64 %i.ba, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check35 = icmp ult i64 %.026.i.i.i, 32
  br i1 %min.iters.check35, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %.026.i.i.i, 28
  %n.vec = and i64 %.026.i.i.i, -32               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %index ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %wide.load = load <16 x i8>, ptr %i.bb, align 1, !tbaa !16
  %wide.load36 = load <16 x i8>, ptr %i.bc, align 1, !tbaa !16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 %index ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store <16 x i8> %wide.load, ptr %i.bd, align 1, !tbaa !16
  store <16 x i8> %wide.load36, ptr %i.be, align 1, !tbaa !16
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !407

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.026.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !292

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec38 = and i64 %.026.i.i.i, -4              ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index39 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next41, %vec.epilog.vector.body ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %index39
  %wide.load40 = load <4 x i8>, ptr %i.bg, align 1, !tbaa !16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 %index39
  store <4 x i8> %wide.load40, ptr %i.bh, align 1, !tbaa !16
  %index.next41 = add nuw i64 %index39, 4         ; 2 uses
  %i.bi = icmp eq i64 %index.next41, %n.vec38
  br i1 %i.bi, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !408

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n42 = icmp eq i64 %.026.i.i.i, %n.vec38
  br i1 %cmp.n42, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec38, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.026.i.i.i, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.030.i.i.i.prol = phi i64 [ %i.bm, %.lr.ph.i.i.i.prol ], [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %.030.i.i.i.prol
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.030.i.i.i.prol
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !16
  %i.bm = add nuw i64 %.030.i.i.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !409

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.030.i.i.i.unr = phi i64 [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.bm, %.lr.ph.i.i.i.prol ]
  %i.bn = sub i64 %.030.i.i.i.ph, %.026.i.i.i
  %i.bo = icmp ugt i64 %i.bn, -4
  br i1 %i.bo, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i.i = load i64, ptr %i.ag, align 8, !tbaa !148
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.g
  %i.bp = phi i64 [ %.pre37.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.027.i.i.i, %bb.g ]
  %i.bq = add i64 %i.bp, %.026.i.i.i              ; 2 uses
  store i64 %i.bq, ptr %i.ag, align 8, !tbaa !148
  %i.br = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %.026.i.i.i ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.br, %i.af
  br i1 %.not.i.i.i, label %_ZZN3fmt3v126detail11write_bytesIcLNS0_5alignE1ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS5_E_clES5_.exit, label %bb.e, !llvm.loop !296

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.030.i.i.i = phi i64 [ %i.ch, %.lr.ph.i.i.i ], [ %.030.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %.030.i.i.i
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.030.i.i.i
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !16
  %i.bv = add nuw i64 %.030.i.i.i, 1              ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !16
  %i.by = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bv
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !16
  %i.bz = add nuw i64 %.030.i.i.i, 2              ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bz
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !16
  %i.cd = add nuw i64 %.030.i.i.i, 3              ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.cd
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !16
  %i.ch = add nuw i64 %.030.i.i.i, 4              ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.ch, %.026.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !410

_ZZN3fmt3v126detail11write_bytesIcLNS0_5alignE1ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS5_E_clES5_.exit: ; preds = %._crit_edge.i.i.i, %bb.d
  %.not31 = icmp eq i64 %i.d, %i.m
  br i1 %.not31, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZZN3fmt3v126detail11write_bytesIcLNS0_5alignE1ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS5_E_clES5_.exit
  %i.ci = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr %.sroa.09.0, i64 noundef %i.n, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZZN3fmt3v126detail11write_bytesIcLNS0_5alignE1ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS5_E_clES5_.exit
  %.sroa.09.1 = phi ptr [ %i.ci, %bb.h ], [ %.sroa.09.0, %_ZZN3fmt3v126detail11write_bytesIcLNS0_5alignE1ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS5_E_clES5_.exit ]
  ret ptr %.sroa.09.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEfTnNSt9enable_ifIXsr13is_fast_floatIT1_EE5valueEiE4typeELi0EEET0_S9_S6_(ptr %0, float noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [11 x i8], align 1                ; 8 uses
  %2 = alloca %"struct.fmt::v12::format_specs", align 8 ; 5 uses
  %3 = alloca %class.anon.44, align 8             ; 5 uses
  %4 = alloca %"struct.fmt::v12::detail::dragonbox::decimal_fp", align 8 ; 4 uses
  %5 = alloca %"struct.fmt::v12::format_specs", align 4 ; 7 uses
  %i.b = bitcast float %1 to i32                  ; 3 uses
  %i.c = icmp slt i32 %i.b, 0                     ; 2 uses
  %.lobit = lshr i32 %i.b, 31                     ; 3 uses
  %i.d = tail call float @llvm.fabs.f32(float %1)
  %i.e = fcmp ueq float %i.d, +inf
  br i1 %i.e, label %_ZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit, label %bb.b

_ZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit: ; preds = %bb.a
  %i.f = fcmp uno float %1, 0.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 137438986240, ptr %2, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 -4294967296, ptr %i.g, align 8
  %i.h = select i1 %i.f, ptr @.str.46, ptr @.str.48
  %.not.not.i = icmp sgt i32 %i.b, -1
  %i.i = select i1 %.not.not.i, i64 3, i64 4      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store i32 %.lobit, ptr %3, align 8, !tbaa !411
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.h, ptr %i.j, align 8, !tbaa !414
  %i.k = call ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_15write_nonfiniteIcS5_EET0_S7_bNS0_12format_specsENS0_4signEEUlS5_E_EET1_SC_RKS8_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 noundef %i.i, i64 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.ab

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.l = tail call i64 @_ZN3fmt3v126detail9dragonbox10to_decimalIfEENS2_10decimal_fpIT_EES5_(float noundef %1) #29 ; 5 uses
  store i64 %i.l, ptr %4, align 8
  %i.m = trunc i64 %i.l to i32                    ; 9 uses
  %i.n = or i32 %i.m, 1
  %i.o = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.n, i1 true)
  %i.p = xor i32 %i.o, 31
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEjE5table, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !136
  %i.t = and i64 %i.l, 4294967295
  %i.u = add i64 %i.s, %i.t                       ; 2 uses
  %i.v = lshr i64 %i.u, 32                        ; 2 uses
  %i.w = trunc nuw i64 %i.v to i32                ; 6 uses
  %i.x = lshr i64 %i.l, 32
  %i.y = trunc nuw i64 %i.x to i32
  %i.z = add nsw i32 %i.y, %i.w                   ; 4 uses
  %i.aa = add nsw i32 %i.z, -1                    ; 2 uses
  %i.ab = add i32 %i.z, 3
  %i.ac = icmp ult i32 %i.ab, 11
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store i32 32768, ptr %5, align 4, !tbaa !265
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i8 32, ptr %i.ad, align 4, !tbaa !16
  %scevgep.i.i68 = getelementptr inbounds nuw i8, ptr %5, i64 5
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i68, i8 0, i64 7, i1 false)
  store i32 -1, ptr %i.ae, align 4, !tbaa !267
  %i.af = call ptr @_ZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE(ptr %0, ptr noundef nonnull align 4 dereferenceable(8) %4, i32 noundef %i.w, i8 noundef signext 46, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef %.lobit, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.aa

bb.d:                                             ; preds = %bb.b
  %i.ag = icmp slt i32 %i.z, 1                    ; 2 uses
  %i.ah = sub nsw i32 1, %i.z
  %spec.select = select i1 %i.ag, i32 %i.ah, i32 %i.aa ; 4 uses
  %.not = icmp ne i64 %i.v, 1                     ; 3 uses
end_hunk_3
begin_hunk_4_@_ZN3fmt3v126detail14write_exponentIcNS0_14basic_appenderIcEEEET0_iS5_:bb.a
  %i.as = icmp ugt i64 %i.ap, %i.ar
  br i1 %i.as, label %bb.k, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit29

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !131
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ap), !inline_history !289
  %.pre.i.i27 = load i64, ptr %i.an, align 8, !tbaa !148 ; 2 uses
  %.pre2.i.i28 = add i64 %.pre.i.i27, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit29

_ZN3fmt3v1214basic_appenderIcEaSEc.exit29:        ; preds = %bb.j, %bb.k
  %.pre-phi.i.i26 = phi i64 [ %i.ap, %bb.j ], [ %.pre2.i.i28, %bb.k ]
  %i.av = phi i64 [ %i.ao, %bb.j ], [ %.pre.i.i27, %bb.k ]
  %i.aw = load ptr, ptr %1, align 8, !tbaa !133
  store i64 %.pre-phi.i.i26, ptr %i.an, align 8, !tbaa !148
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.av
  store i8 %i.am, ptr %i.ax, align 1, !tbaa !16
  br label %bb.l

bb.l:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit29, %bb.f
  %.013 = phi i32 [ %i.u, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit29 ], [ %.0, %bb.f ]
  %i.ay = shl nuw nsw i32 %.013, 1
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.az ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 2, !tbaa !16
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !148 ; 2 uses
  %i.be = add i64 %i.bd, 1                        ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !134
  %i.bh = icmp ugt i64 %i.be, %i.bg
  br i1 %i.bh, label %bb.m, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit34

bb.m:                                             ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !131
  tail call void %i.bj(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.be), !inline_history !289
  %.pre.i.i32 = load i64, ptr %i.bc, align 8, !tbaa !148 ; 2 uses
  %.pre2.i.i33 = add i64 %.pre.i.i32, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit34

_ZN3fmt3v1214basic_appenderIcEaSEc.exit34:        ; preds = %bb.l, %bb.m
  %.pre-phi.i.i31 = phi i64 [ %i.be, %bb.l ], [ %.pre2.i.i33, %bb.m ]
  %i.bk = phi i64 [ %i.bd, %bb.l ], [ %.pre.i.i32, %bb.m ]
  %i.bl = load ptr, ptr %1, align 8, !tbaa !133
  store i64 %.pre-phi.i.i31, ptr %i.bc, align 8, !tbaa !148
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bk
  store i8 %i.bb, ptr %i.bm, align 1, !tbaa !16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !16
  %i.bp = load i64, ptr %i.bc, align 8, !tbaa !148 ; 2 uses
  %i.bq = add i64 %i.bp, 1                        ; 3 uses
  %i.br = load i64, ptr %i.bf, align 8, !tbaa !134
  %i.bs = icmp ugt i64 %i.bq, %i.br
  br i1 %i.bs, label %bb.n, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit39

bb.n:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit34
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !131
  tail call void %i.bu(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.bq), !inline_history !289
  %.pre.i.i37 = load i64, ptr %i.bc, align 8, !tbaa !148 ; 2 uses
  %.pre2.i.i38 = add i64 %.pre.i.i37, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit39

_ZN3fmt3v1214basic_appenderIcEaSEc.exit39:        ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit34, %bb.n
  %.pre-phi.i.i36 = phi i64 [ %i.bq, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit34 ], [ %.pre2.i.i38, %bb.n ]
  %i.bv = phi i64 [ %i.bp, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit34 ], [ %.pre.i.i37, %bb.n ]
  %i.bw = load ptr, ptr %1, align 8, !tbaa !133
  store i64 %.pre-phi.i.i36, ptr %i.bc, align 8, !tbaa !148
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bv
  store i8 %i.bo, ptr %i.bx, align 1, !tbaa !16
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_15write_nonfiniteIcS5_EET0_S7_bNS0_12format_specsENS0_4signEEUlS5_E_EET1_SC_RKS8_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !316
  %i.c = zext i32 %i.b to i64
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 %3) ; 4 uses
  %i.e = load i32, ptr %1, align 4, !tbaa !265    ; 2 uses
  %i.f = lshr i32 %i.e, 3
  %i.g = and i32 %i.f, 7
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @.str.41, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !16
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
  %i.r = mul nuw nsw i64 %i.d, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !148
  %i.u = add i64 %i.t, %2
  %i.v = add i64 %i.u, %i.r                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !134
  %i.y = icmp ugt i64 %i.v, %i.x
  br i1 %i.y, label %bb.b, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !131
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.v), !inline_history !317
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.a, %bb.b
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.ab = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %0, i64 noundef %i.m, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %.sroa.09.0 = phi ptr [ %i.ab, %bb.c ], [ %0, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit ] ; 12 uses
  %i.ac = load i32, ptr %4, align 8, !tbaa !411   ; 2 uses
  %.not.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = shl nsw i32 %i.ac, 3
  %i.ae = lshr i32 539700480, %i.ad
  %i.af = trunc i32 %i.ae to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 8 ; 3 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !148 ; 2 uses
  %i.ai = add i64 %i.ah, 1                        ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !134
  %i.al = icmp ugt i64 %i.ai, %i.ak
  br i1 %i.al, label %bb.f, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !131
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0, i64 noundef %i.ai), !inline_history !428
  %.pre.i.i.i = load i64, ptr %i.ag, align 8, !tbaa !148 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.f, %bb.e
  %.pre-phi.i.i.i = phi i64 [ %i.ai, %bb.e ], [ %.pre2.i.i.i, %bb.f ]
  %i.ao = phi i64 [ %i.ah, %bb.e ], [ %.pre.i.i.i, %bb.f ]
  %i.ap = load ptr, ptr %.sroa.09.0, align 8, !tbaa !133
  store i64 %.pre-phi.i.i.i, ptr %i.ag, align 8, !tbaa !148
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  store i8 %i.af, ptr %i.aq, align 1, !tbaa !16
  br label %bb.g

bb.g:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !414 ; 2 uses
  %i.at = ptrtoaddr ptr %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 8 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 16 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 24
  %.pre.i.i2.i = load i64, ptr %i.au, align 8, !tbaa !148
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i.i, %bb.g
  %i.ax = phi i64 [ %.pre.i.i2.i, %bb.g ], [ %i.cc, %._crit_edge.i.i.i ] ; 3 uses
  %.02532.i.i.idx.i = phi i64 [ 0, %bb.g ], [ %.02532.i.i.add.i, %._crit_edge.i.i.i ] ; 4 uses
  %.02532.i.i.ptr.i = getelementptr inbounds nuw i8, ptr %i.as, i64 %.02532.i.i.idx.i ; 7 uses
  %i.ay = load i64, ptr %i.av, align 8, !tbaa !134
  %i.az = sub i64 %i.ay, %i.ax
  %gepdiff.i = sub nsw i64 3, %.02532.i.i.idx.i   ; 4 uses
  %i.ba = icmp ult i64 %i.az, %gepdiff.i
  br i1 %i.ba, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bb = load ptr, ptr %i.aw, align 8, !tbaa !131
  %i.bc = add i64 %gepdiff.i, %i.ax
  tail call void %i.bb(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0, i64 noundef %i.bc), !inline_history !429
  %i.bd = load i64, ptr %i.au, align 8, !tbaa !148 ; 2 uses
  %i.be = load i64, ptr %i.av, align 8, !tbaa !134
  %i.bf = sub i64 %i.be, %i.bd
  %i.bg = tail call i64 @llvm.umin.i64(i64 %gepdiff.i, i64 %i.bf)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.027.i.i.i = phi i64 [ %i.bd, %bb.i ], [ %i.ax, %bb.h ] ; 3 uses
  %.026.i.i.i = phi i64 [ %i.bg, %bb.i ], [ %gepdiff.i, %bb.h ] ; 13 uses
  %i.bh = load ptr, ptr %.sroa.09.0, align 8, !tbaa !133 ; 2 uses
  %i.bi = ptrtoaddr ptr %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.027.i.i.i ; 7 uses
  %.not36.i.i.i = icmp eq i64 %.026.i.i.i, 0
  br i1 %.not36.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.j
  %min.iters.check = icmp ult i64 %.026.i.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bk = add i64 %.027.i.i.i, %i.bi
  %i.bl = add i64 %.02532.i.i.idx.i, %i.at
  %i.bm = sub i64 %i.bl, %i.bk
  %diff.check = icmp ugt i64 %i.bm, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check35 = icmp ult i64 %.026.i.i.i, 32
  br i1 %min.iters.check35, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %.026.i.i.i, 28
  %n.vec = and i64 %.026.i.i.i, -32               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.02532.i.i.ptr.i, i64 %index ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %wide.load = load <16 x i8>, ptr %i.bn, align 1, !tbaa !16
  %wide.load36 = load <16 x i8>, ptr %i.bo, align 1, !tbaa !16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 %index ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store <16 x i8> %wide.load, ptr %i.bp, align 1, !tbaa !16
  store <16 x i8> %wide.load36, ptr %i.bq, align 1, !tbaa !16
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !430

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.026.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !292

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec38 = and i64 %.026.i.i.i, -4              ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index39 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next41, %vec.epilog.vector.body ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.02532.i.i.ptr.i, i64 %index39
  %wide.load40 = load <4 x i8>, ptr %i.bs, align 1, !tbaa !16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 %index39
  store <4 x i8> %wide.load40, ptr %i.bt, align 1, !tbaa !16
  %index.next41 = add nuw i64 %index39, 4         ; 2 uses
  %i.bu = icmp eq i64 %index.next41, %n.vec38
  br i1 %i.bu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !431

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n42 = icmp eq i64 %.026.i.i.i, %n.vec38
  br i1 %cmp.n42, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec38, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.026.i.i.i, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.030.i.i.i.prol = phi i64 [ %i.by, %.lr.ph.i.i.i.prol ], [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.02532.i.i.ptr.i, i64 %.030.i.i.i.prol
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.030.i.i.i.prol
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !16
  %i.by = add nuw i64 %.030.i.i.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !432

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.030.i.i.i.unr = phi i64 [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.by, %.lr.ph.i.i.i.prol ]
  %i.bz = sub i64 %.030.i.i.i.ph, %.026.i.i.i
  %i.ca = icmp ugt i64 %i.bz, -4
  br i1 %i.ca, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i.i = load i64, ptr %i.au, align 8, !tbaa !148
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.j
  %i.cb = phi i64 [ %.pre37.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.027.i.i.i, %bb.j ]
  %i.cc = add i64 %i.cb, %.026.i.i.i              ; 2 uses
  store i64 %i.cc, ptr %i.au, align 8, !tbaa !148
  %.02532.i.i.add.i = add nuw nsw i64 %.026.i.i.i, %.02532.i.i.idx.i ; 2 uses
  %.not.i.i.i = icmp eq i64 %.02532.i.i.add.i, 3
  br i1 %.not.i.i.i, label %_ZZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signEENKUlS4_E_clES4_.exit, label %bb.h, !llvm.loop !296

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.030.i.i.i = phi i64 [ %i.cs, %.lr.ph.i.i.i ], [ %.030.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.02532.i.i.ptr.i, i64 %.030.i.i.i
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.030.i.i.i
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !16
  %i.cg = add nuw i64 %.030.i.i.i, 1              ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.02532.i.i.ptr.i, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cg
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !16
  %i.ck = add nuw i64 %.030.i.i.i, 2              ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.02532.i.i.ptr.i, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !16
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.ck
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !16
  %i.co = add nuw i64 %.030.i.i.i, 3              ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.02532.i.i.ptr.i, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !16
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.co
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !16
  %i.cs = add nuw i64 %.030.i.i.i, 4              ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.cs, %.026.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !433

_ZZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signEENKUlS4_E_clES4_.exit: ; preds = %._crit_edge.i.i.i
  %.not31 = icmp eq i64 %i.d, %i.m
  br i1 %.not31, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signEENKUlS4_E_clES4_.exit
  %i.ct = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %.sroa.09.0, i64 noundef %i.n, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signEENKUlS4_E_clES4_.exit
  %.sroa.09.1 = phi ptr [ %i.ct, %bb.k ], [ %.sroa.09.0, %_ZZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signEENKUlS4_E_clES4_.exit ]
  ret ptr %.sroa.09.1
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden ptr @_ZZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEENKUlS6_E_clES6_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !434, !nonnull !341, !align !342
  %i.b = load i32, ptr %i.a, align 4, !tbaa !416  ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = shl nsw i32 %i.b, 3
  %i.d = lshr i32 539700480, %i.c
  %i.e = trunc i32 %i.d to i8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !148  ; 2 uses
  %i.h = add i64 %i.g, 1                          ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !134
  %i.k = icmp ugt i64 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !131
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.h), !inline_history !289
  %.pre.i.i = load i64, ptr %i.f, align 8, !tbaa !148 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.b, %bb.c
  %.pre-phi.i.i = phi i64 [ %i.h, %bb.b ], [ %.pre2.i.i, %bb.c ]
  %i.n = phi i64 [ %i.g, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.o = load ptr, ptr %1, align 8, !tbaa !133
  store i64 %.pre-phi.i.i, ptr %i.f, align 8, !tbaa !148
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n
  store i8 %i.e, ptr %i.p, align 1, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !436, !nonnull !341, !align !342 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !437
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !438, !nonnull !341, !align !342
  %i.v = load i32, ptr %i.u, align 4, !tbaa !3
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !417  ; 2 uses
  %i.y = tail call ptr @_ZN3fmt3v126detail14format_decimalIcjNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %1, i32 noundef %i.s, i32 noundef %i.v) ; 14 uses
  %i.z = icmp sgt i32 %i.x, 0
  br i1 %i.z, label %.lr.ph.i.i, label %_ZN3fmt3v126detail17write_significandIcNS0_14basic_appenderIcEEjNS1_23fallback_digit_groupingIcEEEET0_S7_T1_iiRKT2_.exit

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  br label %bb.e

bb.e:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i, %.lr.ph.i.i
  %.04.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.al, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i ]
  %i.ad = load i64, ptr %i.aa, align 8, !tbaa !148 ; 2 uses
  %i.ae = add i64 %i.ad, 1                        ; 3 uses
  %i.af = load i64, ptr %i.ab, align 8, !tbaa !134
  %i.ag = icmp ugt i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.f, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !131
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 noundef %i.ae), !inline_history !439
  %.pre.i.i.i.i = load i64, ptr %i.aa, align 8, !tbaa !148 ; 2 uses
  %.pre2.i.i.i.i = add i64 %.pre.i.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i:      ; preds = %bb.f, %bb.e
  %.pre-phi.i.i.i.i = phi i64 [ %i.ae, %bb.e ], [ %.pre2.i.i.i.i, %bb.f ]
  %i.ai = phi i64 [ %i.ad, %bb.e ], [ %.pre.i.i.i.i, %bb.f ]
end_hunk_4
begin_hunk_5_@_ZN3fmt3v126detail15format_hexfloatIeTnNSt9enable_ifIXntsr16is_double_doubleIT_EE5valueEiE4typeELi0EEEvS4_NS0_12format_specsERNS1_6bufferIcEE:bb.a
  %.sroa.074.0 = phi i128 [ %i.c, %bb.b ], [ %i.y, %bb.c ] ; 3 uses
  %i.z = and i128 %.sroa.074.0, 18446744073709551616
  %.not35 = icmp eq i128 %i.z, 0
  br i1 %.not35, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = lshr i128 %.sroa.074.0, 4
  %i.ab = add nsw i32 %.sroa.9.0, 4
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a
  %.sroa.074.2 = phi i128 [ %i.c, %bb.a ], [ %.sroa.074.0, %bb.d ], [ %i.aa, %bb.e ]
  %.sroa.9.2 = phi i32 [ %.sroa.9.0, %bb.a ], [ %.sroa.9.0, %bb.d ], [ %i.ab, %bb.e ] ; 3 uses
  %.0 = phi i32 [ 15, %bb.a ], [ %.sroa.6.8.extract.trunc, %bb.d ], [ %.sroa.6.8.extract.trunc, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 48, i64 32, i1 false)
  %i.ac = and i32 %.sroa.083.0.extract.trunc, 4096
  %.not90 = icmp eq i32 %i.ac, 0                  ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.str.39..str.40.i.i = select i1 %.not90, ptr @.str.40, ptr @.str.39
  br label %.split.i.i

.split.i.i:                                       ; preds = %.split.i.i, %bb.f
  %.012.i.i = phi i128 [ %i.aj, %.split.i.i ], [ %.sroa.074.2, %bb.f ] ; 2 uses
  %.0.i.i = phi ptr [ %i.ai, %.split.i.i ], [ %i.ad, %bb.f ]
  %i.ae = trunc i128 %.012.i.i to i64
  %i.af = and i64 %i.ae, 15
  %i.ag = getelementptr inbounds nuw i8, ptr %.str.39..str.40.i.i, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !16
  %i.ai = getelementptr inbounds i8, ptr %.0.i.i, i64 -1 ; 2 uses
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !16
  %i.aj = lshr i128 %.012.i.i, 4                  ; 2 uses
  %.not.i.i = icmp eq i128 %i.aj, 0
  br i1 %.not.i.i, label %_ZN3fmt3v126detail13format_base2eIcoEEPT_iS4_T0_ib.exit.preheader, label %.split.i.i, !llvm.loop !395

_ZN3fmt3v126detail13format_base2eIcoEEPT_iS4_T0_ib.exit.preheader: ; preds = %.split.i.i
  %.not9192 = icmp eq i32 %.0, 0
  br i1 %.not9192, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3fmt3v126detail13format_base2eIcoEEPT_iS4_T0_ib.exit.preheader, %_ZN3fmt3v126detail13format_base2eIcoEEPT_iS4_T0_ib.exit
  %.193 = phi i32 [ %i.ao, %_ZN3fmt3v126detail13format_base2eIcoEEPT_iS4_T0_ib.exit ], [ %.0, %_ZN3fmt3v126detail13format_base2eIcoEEPT_iS4_T0_ib.exit.preheader ] ; 3 uses
  %i.ak = zext nneg i32 %.193 to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !16
  %i.an = icmp eq i8 %i.am, 48
  br i1 %i.an, label %_ZN3fmt3v126detail13format_base2eIcoEEPT_iS4_T0_ib.exit, label %.critedge

_ZN3fmt3v126detail13format_base2eIcoEEPT_iS4_T0_ib.exit: ; preds = %.lr.ph
  %i.ao = add nsw i32 %.193, -1                   ; 2 uses
  %.not91 = icmp eq i32 %i.ao, 0
  br i1 %.not91, label %.critedge, label %.lr.ph, !llvm.loop !499

.critedge:                                        ; preds = %.lr.ph, %_ZN3fmt3v126detail13format_base2eIcoEEPT_iS4_T0_ib.exit, %_ZN3fmt3v126detail13format_base2eIcoEEPT_iS4_T0_ib.exit.preheader
  %.1.lcssa = phi i32 [ 0, %_ZN3fmt3v126detail13format_base2eIcoEEPT_iS4_T0_ib.exit.preheader ], [ 0, %_ZN3fmt3v126detail13format_base2eIcoEEPT_iS4_T0_ib.exit ], [ %.193, %.lr.ph ] ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 27 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !148 ; 2 uses
  %i.ar = add i64 %i.aq, 1                        ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !134
  %i.au = icmp ugt i64 %i.ar, %i.at
  br i1 %i.au, label %bb.g, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit

bb.g:                                             ; preds = %.critedge
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !131
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ar), !inline_history !500
  %.pre.i = load i64, ptr %i.ap, align 8, !tbaa !148 ; 2 uses
  %.pre2.i = add i64 %.pre.i, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit:  ; preds = %.critedge, %bb.g
  %.pre-phi.i = phi i64 [ %i.ar, %.critedge ], [ %.pre2.i, %bb.g ]
  %i.ax = phi i64 [ %i.aq, %.critedge ], [ %.pre.i, %bb.g ]
  %i.ay = load ptr, ptr %3, align 8, !tbaa !133
  store i64 %.pre-phi.i, ptr %i.ap, align 8, !tbaa !148
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ax
  store i8 48, ptr %i.az, align 1, !tbaa !16
  %i.ba = select i1 %.not90, i8 120, i8 88
  %i.bb = load i64, ptr %i.ap, align 8, !tbaa !148 ; 2 uses
  %i.bc = add i64 %i.bb, 1                        ; 3 uses
  %i.bd = load i64, ptr %i.as, align 8, !tbaa !134
  %i.be = icmp ugt i64 %i.bc, %i.bd
  br i1 %i.be, label %bb.h, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit42

bb.h:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !131
  tail call void %i.bg(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.bc), !inline_history !500
  %.pre.i40 = load i64, ptr %i.ap, align 8, !tbaa !148 ; 2 uses
  %.pre2.i41 = add i64 %.pre.i40, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit42

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit42: ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit, %bb.h
  %.pre-phi.i39 = phi i64 [ %i.bc, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit ], [ %.pre2.i41, %bb.h ]
  %i.bh = phi i64 [ %i.bb, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit ], [ %.pre.i40, %bb.h ]
  %i.bi = load ptr, ptr %3, align 8, !tbaa !133
  store i64 %.pre-phi.i39, ptr %i.ap, align 8, !tbaa !148
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bh
  store i8 %i.ba, ptr %i.bj, align 1, !tbaa !16
  %i.bk = load i64, ptr %i.ap, align 8, !tbaa !148 ; 2 uses
  %i.bl = add i64 %i.bk, 1                        ; 3 uses
  %i.bm = load i64, ptr %i.as, align 8, !tbaa !134
  %i.bn = icmp ugt i64 %i.bl, %i.bm
  br i1 %i.bn, label %bb.i, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit46

bb.i:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit42
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !131
  tail call void %i.bp(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.bl), !inline_history !500
  %.pre.i44 = load i64, ptr %i.ap, align 8, !tbaa !148 ; 2 uses
  %.pre2.i45 = add i64 %.pre.i44, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit46

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit46: ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit42, %bb.i
  %.pre-phi.i43 = phi i64 [ %i.bl, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit42 ], [ %.pre2.i45, %bb.i ]
  %i.bq = phi i64 [ %i.bk, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit42 ], [ %.pre.i44, %bb.i ]
  %i.br = load i8, ptr %i.a, align 16, !tbaa !16
  %i.bs = load ptr, ptr %3, align 8, !tbaa !133
  store i64 %.pre-phi.i43, ptr %i.ap, align 8, !tbaa !148
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bq
  store i8 %i.br, ptr %i.bt, align 1, !tbaa !16
  %i.bu = and i32 %.sroa.083.0.extract.trunc, 8192
  %i.bv = or i32 %.1.lcssa, %i.bu
  %or.cond = icmp ne i32 %i.bv, 0
  %i.bw = icmp slt i32 %.1.lcssa, %.sroa.6.8.extract.trunc ; 2 uses
  %or.cond38 = or i1 %i.bw, %or.cond
  br i1 %or.cond38, label %bb.j, label %bb.l

bb.j:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit46
  %i.bx = load i64, ptr %i.ap, align 8, !tbaa !148 ; 2 uses
  %i.by = add i64 %i.bx, 1                        ; 3 uses
  %i.bz = load i64, ptr %i.as, align 8, !tbaa !134
  %i.ca = icmp ugt i64 %i.by, %i.bz
  br i1 %i.ca, label %bb.k, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit50

bb.k:                                             ; preds = %bb.j
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !131
  tail call void %i.cc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.by), !inline_history !500
  %.pre.i48 = load i64, ptr %i.ap, align 8, !tbaa !148 ; 2 uses
  %.pre2.i49 = add i64 %.pre.i48, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit50

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit50: ; preds = %bb.j, %bb.k
  %.pre-phi.i47 = phi i64 [ %i.by, %bb.j ], [ %.pre2.i49, %bb.k ]
  %i.cd = phi i64 [ %i.bx, %bb.j ], [ %.pre.i48, %bb.k ]
  %i.ce = load ptr, ptr %3, align 8, !tbaa !133
  store i64 %.pre-phi.i47, ptr %i.ap, align 8, !tbaa !148
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cd
  store i8 46, ptr %i.cf, align 1, !tbaa !16
  br label %bb.l

bb.l:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit46, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit50
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.ch = zext nneg i32 %.1.lcssa to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ch ; 2 uses
  %.not31.i = icmp eq i32 %.1.lcssa, 0
  br i1 %.not31.i, label %_ZN3fmt3v126detail6bufferIcE6appendIcEEvPKT_S7_.exit, label %.lr.ph34.i

.lr.ph34.i:                                       ; preds = %bb.l
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i51 = load i64, ptr %i.ap, align 8, !tbaa !148
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i, %.lr.ph34.i
  %i.cl = phi i64 [ %.pre.i51, %.lr.ph34.i ], [ %i.dr, %._crit_edge.i ] ; 3 uses
  %.02532.i = phi ptr [ %i.cg, %.lr.ph34.i ], [ %i.ds, %._crit_edge.i ] ; 9 uses
  %i.cm = load i64, ptr %i.as, align 8, !tbaa !134
  %i.cn = sub i64 %i.cm, %i.cl
  %i.co = ptrtoint ptr %.02532.i to i64           ; 2 uses
  %i.cp = sub i64 %i.cj, %i.co                    ; 4 uses
  %i.cq = icmp ult i64 %i.cn, %i.cp
  br i1 %i.cq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cr = load ptr, ptr %i.ck, align 8, !tbaa !131
  %i.cs = add i64 %i.cp, %i.cl
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.cs), !inline_history !501
  %i.ct = load i64, ptr %i.ap, align 8, !tbaa !148 ; 2 uses
  %i.cu = load i64, ptr %i.as, align 8, !tbaa !134
  %i.cv = sub i64 %i.cu, %i.ct
  %i.cw = call i64 @llvm.umin.i64(i64 %i.cp, i64 %i.cv)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.027.i = phi i64 [ %i.ct, %bb.n ], [ %i.cl, %bb.m ] ; 3 uses
  %.026.i = phi i64 [ %i.cw, %bb.n ], [ %i.cp, %bb.m ] ; 13 uses
  %i.cx = load ptr, ptr %3, align 8, !tbaa !133   ; 2 uses
  %i.cy = ptrtoaddr ptr %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.027.i ; 7 uses
  %.not36.i = icmp eq i64 %.026.i, 0
  br i1 %.not36.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %bb.o
  %min.iters.check = icmp ult i64 %.026.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.da = add i64 %.027.i, %i.cy
  %i.db = sub i64 %i.co, %i.da
  %diff.check = icmp ugt i64 %i.db, -32
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check117 = icmp ult i64 %.026.i, 32
  br i1 %min.iters.check117, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %.026.i, 28
  %n.vec = and i64 %.026.i, -32                   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.02532.i, i64 %index ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %wide.load = load <16 x i8>, ptr %i.dc, align 1, !tbaa !16
  %wide.load118 = load <16 x i8>, ptr %i.dd, align 1, !tbaa !16
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 %index ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store <16 x i8> %wide.load, ptr %i.de, align 1, !tbaa !16
  store <16 x i8> %wide.load118, ptr %i.df, align 1, !tbaa !16
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dg = icmp eq i64 %index.next, %n.vec
  br i1 %i.dg, label %middle.block, label %vector.body, !llvm.loop !502

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.026.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !292

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec120 = and i64 %.026.i, -4                 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index121 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next123, %vec.epilog.vector.body ] ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.02532.i, i64 %index121
  %wide.load122 = load <4 x i8>, ptr %i.dh, align 1, !tbaa !16
  %i.di = getelementptr inbounds nuw i8, ptr %i.cz, i64 %index121
  store <4 x i8> %wide.load122, ptr %i.di, align 1, !tbaa !16
  %index.next123 = add nuw i64 %index121, 4       ; 2 uses
  %i.dj = icmp eq i64 %index.next123, %n.vec120
  br i1 %i.dj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !503

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n124 = icmp eq i64 %.026.i, %n.vec120
  br i1 %cmp.n124, label %._crit_edge.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec120, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.026.i, 3                  ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.030.i.prol = phi i64 [ %i.dn, %.lr.ph.i.prol ], [ %.030.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.02532.i, i64 %.030.i.prol
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !16
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.030.i.prol
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !16
  %i.dn = add nuw i64 %.030.i.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !504

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.030.i.unr = phi i64 [ %.030.i.ph, %.lr.ph.i.preheader ], [ %i.dn, %.lr.ph.i.prol ]
  %i.do = sub i64 %.030.i.ph, %.026.i
  %i.dp = icmp ugt i64 %i.do, -4
  br i1 %i.dp, label %._crit_edge.loopexit.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i = load i64, ptr %i.ap, align 8, !tbaa !148
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.o
  %i.dq = phi i64 [ %.pre37.i, %._crit_edge.loopexit.i ], [ %.027.i, %bb.o ]
  %i.dr = add i64 %i.dq, %.026.i                  ; 2 uses
  store i64 %i.dr, ptr %i.ap, align 8, !tbaa !148
  %i.ds = getelementptr inbounds nuw i8, ptr %.02532.i, i64 %.026.i ; 2 uses
  %.not.i = icmp eq ptr %i.ds, %i.ci
  br i1 %.not.i, label %_ZN3fmt3v126detail6bufferIcE6appendIcEEvPKT_S7_.exit, label %bb.m, !llvm.loop !296

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.030.i = phi i64 [ %i.ei, %.lr.ph.i ], [ %.030.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.02532.i, i64 %.030.i
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !16
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.030.i
  store i8 %i.du, ptr %i.dv, align 1, !tbaa !16
  %i.dw = add nuw i64 %.030.i, 1                  ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.02532.i, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !16
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.dw
  store i8 %i.dy, ptr %i.dz, align 1, !tbaa !16
  %i.ea = add nuw i64 %.030.i, 2                  ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.02532.i, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !16
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.ea
  store i8 %i.ec, ptr %i.ed, align 1, !tbaa !16
  %i.ee = add nuw i64 %.030.i, 3                  ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.02532.i, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !16
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.ee
  store i8 %i.eg, ptr %i.eh, align 1, !tbaa !16
  %i.ei = add nuw i64 %.030.i, 4                  ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.ei, %.026.i
  br i1 %exitcond.not.i.3, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !505

_ZN3fmt3v126detail6bufferIcE6appendIcEEvPKT_S7_.exit: ; preds = %._crit_edge.i, %bb.l
  br i1 %i.bw, label %.lr.ph96, label %._crit_edge

.lr.ph96:                                         ; preds = %_ZN3fmt3v126detail6bufferIcE6appendIcEEvPKT_S7_.exit
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph96, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit55
  %.295 = phi i32 [ %.1.lcssa, %.lr.ph96 ], [ %i.es, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit55 ]
  %i.ek = load i64, ptr %i.ap, align 8, !tbaa !148 ; 2 uses
  %i.el = add i64 %i.ek, 1                        ; 3 uses
  %i.em = load i64, ptr %i.as, align 8, !tbaa !134
  %i.en = icmp ugt i64 %i.el, %i.em
  br i1 %i.en, label %bb.q, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit55

bb.q:                                             ; preds = %bb.p
  %i.eo = load ptr, ptr %i.ej, align 8, !tbaa !131
  call void %i.eo(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.el), !inline_history !500
  %.pre.i53 = load i64, ptr %i.ap, align 8, !tbaa !148 ; 2 uses
  %.pre2.i54 = add i64 %.pre.i53, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit55

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit55: ; preds = %bb.p, %bb.q
  %.pre-phi.i52 = phi i64 [ %i.el, %bb.p ], [ %.pre2.i54, %bb.q ]
  %i.ep = phi i64 [ %i.ek, %bb.p ], [ %.pre.i53, %bb.q ]
  %i.eq = load ptr, ptr %3, align 8, !tbaa !133
  store i64 %.pre-phi.i52, ptr %i.ap, align 8, !tbaa !148
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.ep
  store i8 48, ptr %i.er, align 1, !tbaa !16
  %i.es = add i32 %.295, 1                        ; 2 uses
  %exitcond.not = icmp eq i32 %i.es, %.sroa.6.8.extract.trunc
  br i1 %exitcond.not, label %._crit_edge, label %bb.p, !llvm.loop !506

._crit_edge:                                      ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit55, %_ZN3fmt3v126detail6bufferIcE6appendIcEEvPKT_S7_.exit
  %i.et = select i1 %.not90, i8 112, i8 80
  %i.eu = load i64, ptr %i.ap, align 8, !tbaa !148 ; 2 uses
  %i.ev = add i64 %i.eu, 1                        ; 3 uses
  %i.ew = load i64, ptr %i.as, align 8, !tbaa !134
  %i.ex = icmp ugt i64 %i.ev, %i.ew
  br i1 %i.ex, label %bb.r, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit59

bb.r:                                             ; preds = %._crit_edge
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !131
  call void %i.ez(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ev), !inline_history !500
  %.pre.i57 = load i64, ptr %i.ap, align 8, !tbaa !148 ; 2 uses
  %.pre2.i58 = add i64 %.pre.i57, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit59

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit59: ; preds = %._crit_edge, %bb.r
  %.pre-phi.i56 = phi i64 [ %i.ev, %._crit_edge ], [ %.pre2.i58, %bb.r ]
  %i.fa = phi i64 [ %i.eu, %._crit_edge ], [ %.pre.i57, %bb.r ]
  %i.fb = load ptr, ptr %3, align 8, !tbaa !133
  store i64 %.pre-phi.i56, ptr %i.ap, align 8, !tbaa !148
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fa
  store i8 %i.et, ptr %i.fc, align 1, !tbaa !16
  %i.fd = icmp slt i32 %.sroa.9.2, 0
  %i.fe = load i64, ptr %i.ap, align 8, !tbaa !148 ; 3 uses
  %i.ff = add i64 %i.fe, 1                        ; 5 uses
  %i.fg = load i64, ptr %i.as, align 8, !tbaa !134
  %i.fh = icmp ugt i64 %i.ff, %i.fg               ; 2 uses
  br i1 %i.fd, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit59
  br i1 %i.fh, label %bb.t, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit63

bb.t:                                             ; preds = %bb.s
  %i.fi = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !131
  call void %i.fj(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ff), !inline_history !500
  %.pre.i61 = load i64, ptr %i.ap, align 8, !tbaa !148 ; 2 uses
  %.pre2.i62 = add i64 %.pre.i61, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit63

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit63: ; preds = %bb.s, %bb.t
  %.pre-phi.i60 = phi i64 [ %i.ff, %bb.s ], [ %.pre2.i62, %bb.t ]
  %i.fk = phi i64 [ %i.fe, %bb.s ], [ %.pre.i61, %bb.t ]
  %i.fl = load ptr, ptr %3, align 8, !tbaa !133
  store i64 %.pre-phi.i60, ptr %i.ap, align 8, !tbaa !148
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fk
  store i8 45, ptr %i.fm, align 1, !tbaa !16
  %i.fn = sub nsw i32 0, %.sroa.9.2
  br label %bb.w

bb.u:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit59
  br i1 %i.fh, label %bb.v, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit67

end_hunk_5
begin_hunk_6_@_ZN3fmt3v126detail12format_floatIeEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE:bb.a
  %i.as = fptrunc x86_fp80 %0 to float
  %i.at = bitcast float %i.as to i32              ; 2 uses
  %i.au = and i32 %i.at, 8388607                  ; 2 uses
  %i.av = zext nneg i32 %i.au to i128             ; 2 uses
  %i.aw = and i32 %i.at, 2139095040               ; 3 uses
  %i.ax = icmp eq i32 %i.aw, 0                    ; 2 uses
  %i.ay = lshr exact i32 %i.aw, 23
  %i.az = or disjoint i128 %i.av, 8388608
  %i.ba = add nsw i32 %i.ay, -150
  %storemerge.i = select i1 %i.ax, i128 %i.av, i128 %i.az
  %.0.i = select i1 %i.ax, i32 -149, i32 %i.ba
  %i.bb = icmp eq i32 %i.au, 0
  %i.bc = icmp samesign ugt i32 %i.aw, 16777215
  %i.bd = and i1 %i.bb, %i.bc
  br label %bb.i

bb.h:                                             ; preds = %_ZN3fmt3v126detail12count_digitsILi1EoEEiT0_.exit
  %i.be = add nsw i32 %spec.store.select.i.i, -16446
  %i.bf = icmp eq i128 %i.ad, 0
  %i.bg = icmp samesign ugt i32 %i.aj, 1
  %i.bh = and i1 %i.bf, %i.bg
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.0.0 = phi i128 [ %storemerge.i, %bb.g ], [ %i.ad, %bb.h ]
  %.sroa.6.0 = phi i32 [ %.0.i, %bb.g ], [ %i.be, %bb.h ]
  %i.bi = phi i1 [ %i.bd, %bb.g ], [ %i.bh, %bb.h ]
  %spec.select = select i1 %i.bi, i32 3, i32 2    ; 2 uses
  %i.bj = or disjoint i32 %spec.select, 4
  %.1 = select i1 %i.d, i32 %i.bj, i32 %spec.select
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %1, i32 767)
  store i128 %.sroa.0.0, ptr %5, align 16, !tbaa !508
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !3
  call void @_ZN3fmt3v126detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi(ptr noundef nonnull byval(%"struct.fmt::v12::detail::basic_fp") align 16 %5, i32 noundef %.1, i32 noundef %spec.store.select, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br i1 %i.d, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bk = load i32, ptr %2, align 4, !tbaa !265
  %i.bl = and i32 %i.bk, 8192
  %.not45 = icmp eq i32 %i.bl, 0
  br i1 %.not45, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !148 ; 2 uses
  %.not46 = icmp eq i64 %i.bn, 0
  br i1 %.not46, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %.promoted = load i32, ptr %i.a, align 4
  %i.bo = load ptr, ptr %4, align 8, !tbaa !133
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.m
  %.047 = phi i64 [ %i.bn, %.lr.ph ], [ %i.bq, %bb.m ] ; 5 uses
  %i.bp = phi i32 [ %.promoted, %.lr.ph ], [ %i.bu, %bb.m ]
  %i.bq = add i64 %.047, -1                       ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !16
  %i.bt = icmp eq i8 %i.bs, 48
  br i1 %i.bt, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.bu = add nsw i32 %i.bp, 1                    ; 2 uses
  store i32 %i.bu, ptr %i.a, align 4, !tbaa !3
  %.not = icmp eq i64 %i.bq, 0
  br i1 %.not, label %.critedge.thread, label %bb.l, !llvm.loop !510

.critedge.thread:                                 ; preds = %bb.m, %bb.k
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !134
  br label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit42

.critedge:                                        ; preds = %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !134 ; 2 uses
  %i.bz = icmp ugt i64 %.047, %i.by
  br i1 %i.bz, label %bb.n, label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit42

bb.n:                                             ; preds = %.critedge
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !131
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %.047), !inline_history !507
  %.pre.i41 = load i64, ptr %i.bx, align 8, !tbaa !134
  br label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit42

_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit42: ; preds = %.critedge.thread, %.critedge, %bb.n
  %.0.lcssa59 = phi i64 [ %.047, %.critedge ], [ %.047, %bb.n ], [ 0, %.critedge.thread ]
  %i.cc = phi i64 [ %i.by, %.critedge ], [ %.pre.i41, %bb.n ], [ %i.bw, %.critedge.thread ]
  %i.cd = call noundef i64 @llvm.umin.i64(i64 %.0.lcssa59, i64 %i.cc)
  store i64 %i.cd, ptr %i.bm, align 8, !tbaa !148
  br label %bb.o

bb.o:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit42, %bb.j, %bb.i
  %i.ce = load i32, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit
  %.036 = phi i32 [ %i.ab, %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit ], [ 0, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit ], [ %i.ce, %bb.o ]
  ret i32 %.036
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_11write_bytesIcLS3_2ES5_EET1_S7_NS0_17basic_string_viewIcEERKNS0_12format_specsEEUlS5_E_EES7_S7_SC_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !316
  %i.c = zext i32 %i.b to i64
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 %3) ; 4 uses
  %i.e = load i32, ptr %1, align 4, !tbaa !265    ; 2 uses
  %i.f = lshr i32 %i.e, 3
  %i.g = and i32 %i.f, 7
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @.str.42, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !16
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
  %i.r = mul nuw nsw i64 %i.d, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !148
  %i.u = add i64 %i.t, %2
  %i.v = add i64 %i.u, %i.r                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !134
  %i.y = icmp ugt i64 %i.v, %i.x
  br i1 %i.y, label %bb.b, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !131
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.v), !inline_history !317
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.a, %bb.b
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.ab = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %0, i64 noundef %i.m, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %.sroa.09.0 = phi ptr [ %i.ab, %bb.c ], [ %0, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit ] ; 7 uses
  %i.ac = load ptr, ptr %4, align 8, !tbaa !404   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !405 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ae ; 2 uses
  %.not31.i.i.i = icmp samesign eq i64 %i.ae, 0
  br i1 %.not31.i.i.i, label %_ZZN3fmt3v126detail11write_bytesIcLNS0_5alignE2ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS5_E_clES5_.exit, label %.lr.ph34.i.i.i

.lr.ph34.i.i.i:                                   ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 8 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 16 ; 2 uses
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 24
  %.pre.i.i.i = load i64, ptr %i.ag, align 8, !tbaa !148
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.i, %.lr.ph34.i.i.i
  %i.ak = phi i64 [ %.pre.i.i.i, %.lr.ph34.i.i.i ], [ %i.bq, %._crit_edge.i.i.i ] ; 3 uses
  %.02532.i.i.i = phi ptr [ %i.ac, %.lr.ph34.i.i.i ], [ %i.br, %._crit_edge.i.i.i ] ; 9 uses
  %i.al = load i64, ptr %i.ah, align 8, !tbaa !134
  %i.am = sub i64 %i.al, %i.ak
  %i.an = ptrtoint ptr %.02532.i.i.i to i64       ; 2 uses
  %i.ao = sub i64 %i.ai, %i.an                    ; 4 uses
  %i.ap = icmp ult i64 %i.am, %i.ao
  br i1 %i.ap, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aq = load ptr, ptr %i.aj, align 8, !tbaa !131
  %i.ar = add i64 %i.ao, %i.ak
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0, i64 noundef %i.ar), !inline_history !511
  %i.as = load i64, ptr %i.ag, align 8, !tbaa !148 ; 2 uses
  %i.at = load i64, ptr %i.ah, align 8, !tbaa !134
  %i.au = sub i64 %i.at, %i.as
  %i.av = tail call i64 @llvm.umin.i64(i64 %i.ao, i64 %i.au)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.027.i.i.i = phi i64 [ %i.as, %bb.f ], [ %i.ak, %bb.e ] ; 3 uses
  %.026.i.i.i = phi i64 [ %i.av, %bb.f ], [ %i.ao, %bb.e ] ; 13 uses
  %i.aw = load ptr, ptr %.sroa.09.0, align 8, !tbaa !133 ; 2 uses
  %i.ax = ptrtoaddr ptr %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.027.i.i.i ; 7 uses
  %.not36.i.i.i = icmp eq i64 %.026.i.i.i, 0
  br i1 %.not36.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.g
  %min.iters.check = icmp ult i64 %.026.i.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.az = add i64 %.027.i.i.i, %i.ax
  %i.ba = sub i64 %i.an, %i.az
  %diff.check = icmp ugt i64 %i.ba, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check35 = icmp ult i64 %.026.i.i.i, 32
  br i1 %min.iters.check35, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %.026.i.i.i, 28
  %n.vec = and i64 %.026.i.i.i, -32               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %index ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %wide.load = load <16 x i8>, ptr %i.bb, align 1, !tbaa !16
  %wide.load36 = load <16 x i8>, ptr %i.bc, align 1, !tbaa !16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 %index ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store <16 x i8> %wide.load, ptr %i.bd, align 1, !tbaa !16
  store <16 x i8> %wide.load36, ptr %i.be, align 1, !tbaa !16
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !512

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.026.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !292

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec38 = and i64 %.026.i.i.i, -4              ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index39 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next41, %vec.epilog.vector.body ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %index39
  %wide.load40 = load <4 x i8>, ptr %i.bg, align 1, !tbaa !16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 %index39
  store <4 x i8> %wide.load40, ptr %i.bh, align 1, !tbaa !16
  %index.next41 = add nuw i64 %index39, 4         ; 2 uses
  %i.bi = icmp eq i64 %index.next41, %n.vec38
  br i1 %i.bi, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !513

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n42 = icmp eq i64 %.026.i.i.i, %n.vec38
  br i1 %cmp.n42, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec38, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.026.i.i.i, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.030.i.i.i.prol = phi i64 [ %i.bm, %.lr.ph.i.i.i.prol ], [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %.030.i.i.i.prol
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.030.i.i.i.prol
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !16
  %i.bm = add nuw i64 %.030.i.i.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !514

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.030.i.i.i.unr = phi i64 [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.bm, %.lr.ph.i.i.i.prol ]
  %i.bn = sub i64 %.030.i.i.i.ph, %.026.i.i.i
  %i.bo = icmp ugt i64 %i.bn, -4
  br i1 %i.bo, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i.i = load i64, ptr %i.ag, align 8, !tbaa !148
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.g
  %i.bp = phi i64 [ %.pre37.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.027.i.i.i, %bb.g ]
  %i.bq = add i64 %i.bp, %.026.i.i.i              ; 2 uses
  store i64 %i.bq, ptr %i.ag, align 8, !tbaa !148
  %i.br = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %.026.i.i.i ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.br, %i.af
  br i1 %.not.i.i.i, label %_ZZN3fmt3v126detail11write_bytesIcLNS0_5alignE2ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS5_E_clES5_.exit, label %bb.e, !llvm.loop !296

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.030.i.i.i = phi i64 [ %i.ch, %.lr.ph.i.i.i ], [ %.030.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %.030.i.i.i
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.030.i.i.i
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !16
  %i.bv = add nuw i64 %.030.i.i.i, 1              ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !16
  %i.by = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bv
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !16
  %i.bz = add nuw i64 %.030.i.i.i, 2              ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bz
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !16
  %i.cd = add nuw i64 %.030.i.i.i, 3              ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.cd
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !16
  %i.ch = add nuw i64 %.030.i.i.i, 4              ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.ch, %.026.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !515

_ZZN3fmt3v126detail11write_bytesIcLNS0_5alignE2ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS5_E_clES5_.exit: ; preds = %._crit_edge.i.i.i, %bb.d
  %.not31 = icmp eq i64 %i.d, %i.m
  br i1 %.not31, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZZN3fmt3v126detail11write_bytesIcLNS0_5alignE2ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS5_E_clES5_.exit
  %i.ci = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr %.sroa.09.0, i64 noundef %i.n, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZZN3fmt3v126detail11write_bytesIcLNS0_5alignE2ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS5_E_clES5_.exit
  %.sroa.09.1 = phi ptr [ %i.ci, %bb.h ], [ %.sroa.09.0, %_ZZN3fmt3v126detail11write_bytesIcLNS0_5alignE2ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS5_E_clES5_.exit ]
  ret ptr %.sroa.09.1
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3fmt3v1212format_errorE, i64 16), ptr %0, align 8, !tbaa !7
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

declare void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v1212format_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #30
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #14

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi(ptr noundef byval(%"struct.fmt::v12::detail::basic_fp") align 16 %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.fmt::v12::detail::bigint", align 8 ; 44 uses
  %6 = alloca %"class.fmt::v12::detail::bigint", align 8 ; 35 uses
  %7 = alloca %"class.fmt::v12::detail::bigint", align 8 ; 23 uses
  %8 = alloca %"class.fmt::v12::detail::bigint", align 8 ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 28 uses
  store i64 0, ptr %i.c, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE4growERNS2_6bufferIjEEm, ptr %i.b, align 8, !tbaa !516
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 9 uses
  store ptr %i.d, ptr %5, align 8, !tbaa !518
  store i64 32, ptr %i.a, align 8, !tbaa !519
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 168 ; 10 uses
  store i32 0, ptr %i.e, align 8, !tbaa !520
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 17 uses
  store i64 0, ptr %i.h, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE4growERNS2_6bufferIjEEm, ptr %i.g, align 8, !tbaa !516
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  store ptr %i.i, ptr %6, align 8, !tbaa !518
  store i64 32, ptr %i.f, align 8, !tbaa !519
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 168 ; 9 uses
  store i32 0, ptr %i.j, align 8, !tbaa !520
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 14 uses
  store i64 0, ptr %i.m, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE4growERNS2_6bufferIjEEm, ptr %i.l, align 8, !tbaa !516
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 5 uses
  store ptr %i.n, ptr %7, align 8, !tbaa !518
  store i64 32, ptr %i.k, align 8, !tbaa !519
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 168 ; 7 uses
  store i32 0, ptr %i.o, align 8, !tbaa !520
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 7 uses
  store i64 0, ptr %i.r, align 8
end_hunk_6
begin_hunk_7_@_ZN3fmt3v126detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi:bb.a
_ZN3fmt3v126detail6bigintlSEi.exit:               ; preds = %bb.i, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i
  %.pre2.i.i.pre-phi = phi i64 [ %.pre1266, %bb.i ], [ %i.be, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i ]
  %.pre681 = phi ptr [ %.pre681.pre, %bb.i ], [ %i.bj, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i ]
  %.pre.i.i = phi i64 [ %.pre.i.i.pre, %bb.i ], [ %i.ah, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i ]
  store i64 %.pre2.i.i.pre-phi, ptr %i.c, align 8, !tbaa !528
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.pre681, i64 %.pre.i.i
  store i32 %.lcssa1475, ptr %i.bl, align 4, !tbaa !3
  br label %_ZN3fmt3v126detail6bigintlSEi.exit.thread

_ZN3fmt3v126detail6bigintlSEi.exit.thread:        ; preds = %bb.f, %._crit_edge.i, %_ZN3fmt3v126detail6bigintlSEi.exit, %_ZN3fmt3v126detail6bigintlSEi.exit.thread1117
  store i32 1, ptr %i.n, align 8, !tbaa !3
  store i64 1, ptr %i.m, align 8, !tbaa !528
  %i.bm = lshr i32 %i.x, 5
  store i32 %i.bm, ptr %i.o, align 8, !tbaa !520
  %i.bn = and i32 %i.x, 31                        ; 2 uses
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %_ZN3fmt3v126detail6bigintlSEi.exit135, label %.lr.ph.i124

.lr.ph.i124:                                      ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit.thread
  %i.bp = shl nuw i32 1, %i.bn
  store i32 %i.bp, ptr %i.n, align 8, !tbaa !3
  br label %_ZN3fmt3v126detail6bigintlSEi.exit135

_ZN3fmt3v126detail6bigintlSEi.exit135:            ; preds = %.lr.ph.i124, %_ZN3fmt3v126detail6bigintlSEi.exit.thread
  br i1 %.not, label %_ZN3fmt3v126detail6bigintlSEi.exit155, label %bb.j

bb.j:                                             ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit135
  store i32 1, ptr %i.s, align 8, !tbaa !3
  store i64 1, ptr %i.r, align 8, !tbaa !528
  %i.bq = add nuw nsw i32 %i.x, 1                 ; 2 uses
  %i.br = lshr i32 %i.bq, 5
  store i32 %i.br, ptr %i.t, align 8, !tbaa !520
  %i.bs = and i32 %i.bq, 31                       ; 2 uses
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %_ZN3fmt3v126detail6bigintlSEi.exit155, label %.lr.ph.i144

.lr.ph.i144:                                      ; preds = %bb.j
  %i.bu = shl nuw i32 1, %i.bs
  store i32 %i.bu, ptr %i.s, align 8, !tbaa !3
  br label %_ZN3fmt3v126detail6bigintlSEi.exit155

.loopexit569:                                     ; preds = %bb.u
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %.invoke1440, %_ZN3fmt3v126detail6bigintlSEi.exit155, %bb.o, %_ZN3fmt3v126detail6bigintlSEi.exit253, %bb.m, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i179, %bb.s, %bb.w, %bb.x, %bb.aa, %bb.am, %bb.an, %bb.aq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN3fmt3v126detail6bigintlSEi.exit155:            ; preds = %.lr.ph.i144, %bb.j, %_ZN3fmt3v126detail6bigintlSEi.exit135
  %.087 = phi ptr [ null, %_ZN3fmt3v126detail6bigintlSEi.exit135 ], [ %8, %bb.j ], [ %8, %.lr.ph.i144 ] ; 3 uses
  %i.bv = load i32, ptr %4, align 4, !tbaa !3
  invoke void @_ZN3fmt3v126detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(172) %6, i32 noundef %i.bv)
          to label %bb.k unwind label %.loopexit.split-lp

bb.k:                                             ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit155
  %i.bw = load i64, ptr %i.h, align 8, !tbaa !528 ; 7 uses
  %.not19.i156 = icmp eq i64 %i.bw, 0
  %extract.t816 = trunc i128 %i.z to i32          ; 3 uses
  br i1 %.not19.i156, label %_ZN3fmt3v126detail6bigintlSEi.exit168, label %.lr.ph.i157

.lr.ph.i157:                                      ; preds = %bb.k
  %i.bx = load ptr, ptr %6, align 8, !tbaa !518   ; 3 uses
  %i.by = xor i32 %i.u, 31                        ; 2 uses
  %min.iters.check1604 = icmp ult i64 %i.bw, 8
  br i1 %min.iters.check1604, label %scalar.ph1603.preheader, label %vector.ph1605

vector.ph1605:                                    ; preds = %.lr.ph.i157
  %n.vec1607 = and i64 %i.bw, -8                  ; 3 uses
  %broadcast.splatinsert1608 = insertelement <4 x i32> poison, i32 %i.by, i64 0
  %broadcast.splat1609 = shufflevector <4 x i32> %broadcast.splatinsert1608, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1610 = insertelement <4 x i32> poison, i32 %i.v, i64 0
  %broadcast.splat1611 = shufflevector <4 x i32> %broadcast.splatinsert1610, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1612

vector.body1612:                                  ; preds = %vector.body1612, %vector.ph1605
  %index1613 = phi i64 [ 0, %vector.ph1605 ], [ %index.next1617, %vector.body1612 ] ; 2 uses
  %vector.recur1614 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph1605 ], [ %i.cc, %vector.body1612 ]
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %index1613 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 2 uses
  %wide.load1615 = load <4 x i32>, ptr %i.bz, align 4, !tbaa !3 ; 2 uses
  %wide.load1616 = load <4 x i32>, ptr %i.ca, align 4, !tbaa !3 ; 2 uses
  %i.cb = lshr <4 x i32> %wide.load1615, %broadcast.splat1609 ; 2 uses
  %i.cc = lshr <4 x i32> %wide.load1616, %broadcast.splat1609 ; 3 uses
  %i.cd = shufflevector <4 x i32> %vector.recur1614, <4 x i32> %i.cb, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ce = shufflevector <4 x i32> %i.cb, <4 x i32> %i.cc, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.cf = shl <4 x i32> %wide.load1615, %broadcast.splat1611
  %i.cg = shl <4 x i32> %wide.load1616, %broadcast.splat1611
  %i.ch = add <4 x i32> %i.cf, %i.cd
  %i.ci = add <4 x i32> %i.cg, %i.ce
  store <4 x i32> %i.ch, ptr %i.bz, align 4, !tbaa !3
  store <4 x i32> %i.ci, ptr %i.ca, align 4, !tbaa !3
  %index.next1617 = add nuw i64 %index1613, 8     ; 2 uses
  %i.cj = icmp eq i64 %index.next1617, %n.vec1607
  br i1 %i.cj, label %middle.block1618, label %vector.body1612, !llvm.loop !531

middle.block1618:                                 ; preds = %vector.body1612
  %vector.recur.extract1619 = extractelement <4 x i32> %i.cc, i64 3 ; 2 uses
  %cmp.n1620 = icmp eq i64 %i.bw, %n.vec1607
  br i1 %cmp.n1620, label %._crit_edge.i161, label %scalar.ph1603.preheader

scalar.ph1603.preheader:                          ; preds = %.lr.ph.i157, %middle.block1618
  %.01418.i158.ph = phi i64 [ 0, %.lr.ph.i157 ], [ %n.vec1607, %middle.block1618 ]
  %.017.i159.ph = phi i32 [ 0, %.lr.ph.i157 ], [ %vector.recur.extract1619, %middle.block1618 ]
  br label %scalar.ph1603

._crit_edge.i161:                                 ; preds = %scalar.ph1603, %middle.block1618
  %.lcssa1474 = phi i32 [ %vector.recur.extract1619, %middle.block1618 ], [ %i.cm, %scalar.ph1603 ] ; 2 uses
  %.not.i162 = icmp eq i32 %.lcssa1474, 0
  br i1 %.not.i162, label %_ZN3fmt3v126detail6bigintlSEi.exit168, label %bb.l

scalar.ph1603:                                    ; preds = %scalar.ph1603.preheader, %scalar.ph1603
  %.01418.i158 = phi i64 [ %i.cp, %scalar.ph1603 ], [ %.01418.i158.ph, %scalar.ph1603.preheader ] ; 2 uses
  %.017.i159 = phi i32 [ %i.cm, %scalar.ph1603 ], [ %.017.i159.ph, %scalar.ph1603.preheader ]
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %.01418.i158 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !3  ; 2 uses
  %i.cm = lshr i32 %i.cl, %i.by                   ; 2 uses
  %i.cn = shl i32 %i.cl, %i.v
  %i.co = add i32 %i.cn, %.017.i159
  store i32 %i.co, ptr %i.ck, align 4, !tbaa !3
  %i.cp = add nuw i64 %.01418.i158, 1             ; 2 uses
  %exitcond.not.i160 = icmp eq i64 %i.cp, %i.bw
  br i1 %exitcond.not.i160, label %._crit_edge.i161, label %scalar.ph1603, !llvm.loop !532

bb.l:                                             ; preds = %._crit_edge.i161
  %i.cq = add i64 %i.bw, 1                        ; 3 uses
  %i.cr = load i64, ptr %i.f, align 8, !tbaa !519
  %i.cs = icmp ugt i64 %i.cq, %i.cr
  br i1 %i.cs, label %bb.m, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i163

bb.m:                                             ; preds = %bb.l
  %i.ct = load ptr, ptr %i.g, align 8, !tbaa !516
  invoke void %i.ct(ptr noundef nonnull align 8 dereferenceable(172) %6, i64 noundef %i.cq)
          to label %.noexc167 unwind label %.loopexit.split-lp, !inline_history !533

.noexc167:                                        ; preds = %bb.m
  %.pre.i.i165 = load i64, ptr %i.h, align 8, !tbaa !528 ; 2 uses
  %.pre2.i.i166 = add i64 %.pre.i.i165, 1
  %.pre684 = load ptr, ptr %6, align 8, !tbaa !518
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i163

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i163: ; preds = %.noexc167, %bb.l
  %i.cu = phi ptr [ %i.bx, %bb.l ], [ %.pre684, %.noexc167 ]
  %.pre-phi.i.i164 = phi i64 [ %i.cq, %bb.l ], [ %.pre2.i.i166, %.noexc167 ]
  %i.cv = phi i64 [ %i.bw, %bb.l ], [ %.pre.i.i165, %.noexc167 ]
  store i64 %.pre-phi.i.i164, ptr %i.h, align 8, !tbaa !528
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.cv
  store i32 %.lcssa1474, ptr %i.cw, align 4, !tbaa !3
  br label %_ZN3fmt3v126detail6bigintlSEi.exit168

bb.n:                                             ; preds = %bb.a
  %i.cx = load i32, ptr %4, align 4, !tbaa !3     ; 2 uses
  %i.cy = icmp slt i32 %i.cx, 0
  br i1 %i.cy, label %bb.o, label %bb.ab

bb.o:                                             ; preds = %bb.n
  %i.cz = sub nsw i32 0, %i.cx
  invoke void @_ZN3fmt3v126detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(172) %5, i32 noundef %i.cz)
          to label %bb.p unwind label %.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  %i.da = load i64, ptr %i.c, align 8, !tbaa !528 ; 7 uses
  %i.db = load i64, ptr %i.k, align 8, !tbaa !519
  %i.dc = icmp ugt i64 %i.da, %i.db
  br i1 %i.dc, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i: ; preds = %bb.p
  %i.dd = load ptr, ptr %i.l, align 8, !tbaa !516
  invoke void %i.dd(ptr noundef nonnull align 8 dereferenceable(172) %7, i64 noundef %i.da)
          to label %.noexc170 unwind label %.loopexit.split-lp, !inline_history !534

.noexc170:                                        ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i
  %.pre.i.i.i = load i64, ptr %i.k, align 8, !tbaa !519
  %i.de = call noundef i64 @llvm.umin.i64(i64 %i.da, i64 %.pre.i.i.i)
  store i64 %i.de, ptr %i.m, align 8, !tbaa !528
  %i.df = load ptr, ptr %5, align 8, !tbaa !518   ; 2 uses
  %.idx8.i = shl nuw nsw i64 %i.da, 2
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %.idx8.i
  br label %.lr.ph.i.preheader.i

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i: ; preds = %bb.p
  store i64 %i.da, ptr %i.m, align 8, !tbaa !528
  %i.dh = load ptr, ptr %5, align 8, !tbaa !518   ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.da, 2
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.idx.i
  %.not6.i.i = icmp eq i64 %i.da, 0
  br i1 %.not6.i.i, label %.loopexit570, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i, %.noexc170
  %i.dj = phi ptr [ %i.dg, %.noexc170 ], [ %i.di, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i ] ; 2 uses
  %i.dk = phi ptr [ %i.df, %.noexc170 ], [ %i.dh, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i ] ; 7 uses
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = load ptr, ptr %7, align 8, !tbaa !518   ; 4 uses
  %i.do = add i64 %i.dl, -4
  %i.dp = sub i64 %i.do, %i.dm                    ; 2 uses
  %i.dq = lshr i64 %i.dp, 2
  %i.dr = add nuw nsw i64 %i.dq, 1                ; 2 uses
  %min.iters.check1515 = icmp ult i64 %i.dp, 44
  %i.ds = ptrtoaddr ptr %i.dn to i64
  %i.dt = ptrtoaddr ptr %i.dk to i64
  %i.du = sub i64 %i.dt, %i.ds
  %diff.check = icmp ugt i64 %i.du, -32
  %or.cond1626 = select i1 %min.iters.check1515, i1 true, i1 %diff.check
  br i1 %or.cond1626, label %.lr.ph.i.i.preheader, label %vector.ph1516

vector.ph1516:                                    ; preds = %.lr.ph.i.preheader.i
  %n.vec1518 = and i64 %i.dr, 9223372036854775800 ; 3 uses
  %i.dv = shl i64 %n.vec1518, 2                   ; 2 uses
  %i.dw = getelementptr i8, ptr %i.dn, i64 %i.dv
  %i.dx = getelementptr i8, ptr %i.dk, i64 %i.dv
  br label %vector.body1519

vector.body1519:                                  ; preds = %vector.body1519, %vector.ph1516
  %index1520 = phi i64 [ 0, %vector.ph1516 ], [ %index.next1524, %vector.body1519 ] ; 2 uses
  %i.dy = shl i64 %index1520, 2                   ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dn, i64 %i.dy ; 2 uses
  %next.gep1521 = getelementptr i8, ptr %i.dk, i64 %i.dy ; 2 uses
  %i.dz = getelementptr i8, ptr %next.gep1521, i64 16
  %wide.load1522 = load <4 x i32>, ptr %next.gep1521, align 4, !tbaa !3
  %wide.load1523 = load <4 x i32>, ptr %i.dz, align 4, !tbaa !3
  %i.ea = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load1522, ptr %next.gep, align 4, !tbaa !3
  store <4 x i32> %wide.load1523, ptr %i.ea, align 4, !tbaa !3
  %index.next1524 = add nuw i64 %index1520, 8     ; 2 uses
  %i.eb = icmp eq i64 %index.next1524, %n.vec1518
  br i1 %i.eb, label %middle.block1525, label %vector.body1519, !llvm.loop !535

middle.block1525:                                 ; preds = %vector.body1519
  %cmp.n1526 = icmp eq i64 %i.dr, %n.vec1518
  br i1 %cmp.n1526, label %.loopexit570, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %middle.block1525
  %.08.i.i.ph = phi ptr [ %i.dn, %.lr.ph.i.preheader.i ], [ %i.dw, %middle.block1525 ]
  %.057.i.i.ph = phi ptr [ %i.dk, %.lr.ph.i.preheader.i ], [ %i.dx, %middle.block1525 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.ee, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.057.i.i = phi ptr [ %i.ec, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 4 ; 2 uses
  %i.ed = load i32, ptr %.057.i.i, align 4, !tbaa !3
  %i.ee = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4
  store i32 %i.ed, ptr %.08.i.i, align 4, !tbaa !3
  %.not.i.i169 = icmp eq ptr %i.ec, %i.dj
  br i1 %.not.i.i169, label %.loopexit570, label %.lr.ph.i.i, !llvm.loop !536

.loopexit570:                                     ; preds = %.lr.ph.i.i, %middle.block1525, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i
  %i.ef = phi ptr [ %i.dh, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i ], [ %i.dk, %middle.block1525 ], [ %i.dk, %.lr.ph.i.i ] ; 2 uses
  %i.eg = load i32, ptr %i.e, align 8, !tbaa !520 ; 2 uses
  store i32 %i.eg, ptr %i.o, align 8, !tbaa !520
  br i1 %.not, label %_ZN3fmt3v126detail6bigintlSEi.exit196, label %bb.q

bb.q:                                             ; preds = %.loopexit570
  %i.eh = load i64, ptr %i.c, align 8, !tbaa !528 ; 8 uses
  %i.ei = load i64, ptr %i.p, align 8, !tbaa !519 ; 2 uses
  %i.ej = icmp ugt i64 %i.eh, %i.ei
  br i1 %i.ej, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i179, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i179: ; preds = %bb.q
  %i.ek = load ptr, ptr %i.q, align 8, !tbaa !516
  invoke void %i.ek(ptr noundef nonnull align 8 dereferenceable(172) %8, i64 noundef %i.eh)
          to label %.noexc182 unwind label %.loopexit.split-lp, !inline_history !534

.noexc182:                                        ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i179
  %.pre.i.i.i180 = load i64, ptr %i.p, align 8, !tbaa !519 ; 2 uses
  %i.el = call noundef i64 @llvm.umin.i64(i64 %i.eh, i64 %.pre.i.i.i180) ; 2 uses
  store i64 %i.el, ptr %i.r, align 8, !tbaa !528
  %i.em = load ptr, ptr %5, align 8, !tbaa !518   ; 2 uses
  %.idx8.i181 = shl nuw nsw i64 %i.eh, 2
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %.idx8.i181
  br label %.lr.ph.i.preheader.i174

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171: ; preds = %bb.q
  store i64 %i.eh, ptr %i.r, align 8, !tbaa !528
  %.idx.i172 = shl nuw nsw i64 %i.eh, 2
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ef, i64 %.idx.i172
  %.not6.i.i173 = icmp eq i64 %i.eh, 0
  br i1 %.not6.i.i173, label %.thread, label %.lr.ph.i.preheader.i174

.thread:                                          ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171
  store i32 %i.eg, ptr %i.t, align 8, !tbaa !520
  br label %_ZN3fmt3v126detail6bigintlSEi.exit196

.lr.ph.i.preheader.i174:                          ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171, %.noexc182
  %i.ep = phi i64 [ %.pre.i.i.i180, %.noexc182 ], [ %i.ei, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171 ]
  %.pr = phi i64 [ %i.el, %.noexc182 ], [ %i.eh, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171 ] ; 7 uses
  %i.eq = phi ptr [ %i.en, %.noexc182 ], [ %i.eo, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171 ] ; 2 uses
  %i.er = phi ptr [ %i.em, %.noexc182 ], [ %i.ef, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171 ] ; 5 uses
  %i.es = ptrtoint ptr %i.eq to i64
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = load ptr, ptr %8, align 8, !tbaa !518   ; 7 uses
  %i.ev = add i64 %i.es, -4
  %i.ew = sub i64 %i.ev, %i.et                    ; 2 uses
  %i.ex = lshr i64 %i.ew, 2
  %i.ey = add nuw nsw i64 %i.ex, 1                ; 2 uses
  %min.iters.check1532 = icmp ult i64 %i.ew, 44
  %i.ez = ptrtoaddr ptr %i.eu to i64
  %i.fa = ptrtoaddr ptr %i.er to i64
  %i.fb = sub i64 %i.fa, %i.ez
  %diff.check1530 = icmp ugt i64 %i.fb, -32
  %or.cond1629 = select i1 %min.iters.check1532, i1 true, i1 %diff.check1530
  br i1 %or.cond1629, label %.lr.ph.i.i175.preheader, label %vector.ph1533

vector.ph1533:                                    ; preds = %.lr.ph.i.preheader.i174
  %n.vec1535 = and i64 %i.ey, 9223372036854775800 ; 3 uses
  %i.fc = shl i64 %n.vec1535, 2                   ; 2 uses
  %i.fd = getelementptr i8, ptr %i.eu, i64 %i.fc
  %i.fe = getelementptr i8, ptr %i.er, i64 %i.fc
  br label %vector.body1536

vector.body1536:                                  ; preds = %vector.body1536, %vector.ph1533
  %index1537 = phi i64 [ 0, %vector.ph1533 ], [ %index.next1542, %vector.body1536 ] ; 2 uses
  %i.ff = shl i64 %index1537, 2                   ; 2 uses
  %next.gep1538 = getelementptr i8, ptr %i.eu, i64 %i.ff ; 2 uses
  %next.gep1539 = getelementptr i8, ptr %i.er, i64 %i.ff ; 2 uses
  %i.fg = getelementptr i8, ptr %next.gep1539, i64 16
  %wide.load1540 = load <4 x i32>, ptr %next.gep1539, align 4, !tbaa !3
  %wide.load1541 = load <4 x i32>, ptr %i.fg, align 4, !tbaa !3
  %i.fh = getelementptr i8, ptr %next.gep1538, i64 16
  store <4 x i32> %wide.load1540, ptr %next.gep1538, align 4, !tbaa !3
  store <4 x i32> %wide.load1541, ptr %i.fh, align 4, !tbaa !3
  %index.next1542 = add nuw i64 %index1537, 8     ; 2 uses
  %i.fi = icmp eq i64 %index.next1542, %n.vec1535
  br i1 %i.fi, label %middle.block1543, label %vector.body1536, !llvm.loop !537

middle.block1543:                                 ; preds = %vector.body1536
  %cmp.n1544 = icmp eq i64 %i.ey, %n.vec1535
  br i1 %cmp.n1544, label %.loopexit1623, label %.lr.ph.i.i175.preheader

.lr.ph.i.i175.preheader:                          ; preds = %.lr.ph.i.preheader.i174, %middle.block1543
  %.08.i.i176.ph = phi ptr [ %i.eu, %.lr.ph.i.preheader.i174 ], [ %i.fd, %middle.block1543 ]
  %.057.i.i177.ph = phi ptr [ %i.er, %.lr.ph.i.preheader.i174 ], [ %i.fe, %middle.block1543 ]
  br label %.lr.ph.i.i175

.lr.ph.i.i175:                                    ; preds = %.lr.ph.i.i175.preheader, %.lr.ph.i.i175
  %.08.i.i176 = phi ptr [ %i.fl, %.lr.ph.i.i175 ], [ %.08.i.i176.ph, %.lr.ph.i.i175.preheader ] ; 2 uses
  %.057.i.i177 = phi ptr [ %i.fj, %.lr.ph.i.i175 ], [ %.057.i.i177.ph, %.lr.ph.i.i175.preheader ] ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.057.i.i177, i64 4 ; 2 uses
  %i.fk = load i32, ptr %.057.i.i177, align 4, !tbaa !3
  %i.fl = getelementptr inbounds nuw i8, ptr %.08.i.i176, i64 4
  store i32 %i.fk, ptr %.08.i.i176, align 4, !tbaa !3
  %.not.i.i178 = icmp eq ptr %i.fj, %i.eq
  br i1 %.not.i.i178, label %.loopexit1623, label %.lr.ph.i.i175, !llvm.loop !538

.loopexit1623:                                    ; preds = %.lr.ph.i.i175, %middle.block1543
  %i.fm = load i32, ptr %i.e, align 8, !tbaa !520
  store i32 %i.fm, ptr %i.t, align 8, !tbaa !520
  %.not19.i184 = icmp eq i64 %.pr, 0
  br i1 %.not19.i184, label %_ZN3fmt3v126detail6bigintlSEi.exit196, label %.lr.ph.i185.preheader

.lr.ph.i185.preheader:                            ; preds = %.loopexit1623
  %min.iters.check1548 = icmp ult i64 %.pr, 8
  br i1 %min.iters.check1548, label %.lr.ph.i185.preheader1673, label %vector.ph1549

vector.ph1549:                                    ; preds = %.lr.ph.i185.preheader
  %n.vec1551 = and i64 %.pr, -8                   ; 3 uses
  br label %vector.body1552

vector.body1552:                                  ; preds = %vector.body1552, %vector.ph1549
  %index1553 = phi i64 [ 0, %vector.ph1549 ], [ %index.next1557, %vector.body1552 ] ; 2 uses
  %vector.recur1554 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph1549 ], [ %i.fq, %vector.body1552 ]
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %index1553 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16 ; 2 uses
  %wide.load1555 = load <4 x i32>, ptr %i.fn, align 4, !tbaa !3 ; 2 uses
  %wide.load1556 = load <4 x i32>, ptr %i.fo, align 4, !tbaa !3 ; 3 uses
  %i.fp = lshr <4 x i32> %wide.load1555, splat (i32 31) ; 2 uses
  %i.fq = lshr <4 x i32> %wide.load1556, splat (i32 31) ; 3 uses
  %i.fr = shufflevector <4 x i32> %vector.recur1554, <4 x i32> %i.fp, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.fs = shufflevector <4 x i32> %i.fp, <4 x i32> %i.fq, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ft = shl <4 x i32> %wide.load1555, splat (i32 1)
  %i.fu = shl <4 x i32> %wide.load1556, splat (i32 1)
  %i.fv = or disjoint <4 x i32> %i.ft, %i.fr
  %i.fw = or disjoint <4 x i32> %i.fu, %i.fs
  store <4 x i32> %i.fv, ptr %i.fn, align 4, !tbaa !3
  store <4 x i32> %i.fw, ptr %i.fo, align 4, !tbaa !3
  %index.next1557 = add nuw i64 %index1553, 8     ; 2 uses
  %i.fx = icmp eq i64 %index.next1557, %n.vec1551
  br i1 %i.fx, label %middle.block1558, label %vector.body1552, !llvm.loop !539

middle.block1558:                                 ; preds = %vector.body1552
  %vector.recur.extract1559 = extractelement <4 x i32> %i.fq, i64 3 ; 2 uses
  %i.fy = extractelement <4 x i32> %wide.load1556, i64 3
  %cmp.n1560 = icmp eq i64 %.pr, %n.vec1551
  br i1 %cmp.n1560, label %._crit_edge.i189, label %.lr.ph.i185.preheader1673

.lr.ph.i185.preheader1673:                        ; preds = %.lr.ph.i185.preheader, %middle.block1558
  %.01418.i186.ph = phi i64 [ 0, %.lr.ph.i185.preheader ], [ %n.vec1551, %middle.block1558 ]
  %.017.i187.ph = phi i32 [ 0, %.lr.ph.i185.preheader ], [ %vector.recur.extract1559, %middle.block1558 ]
  br label %.lr.ph.i185

._crit_edge.i189:                                 ; preds = %.lr.ph.i185, %middle.block1558
  %.lcssa1481 = phi i32 [ %i.fy, %middle.block1558 ], [ %i.ga, %.lr.ph.i185 ]
  %.lcssa1480 = phi i32 [ %vector.recur.extract1559, %middle.block1558 ], [ %i.gb, %.lr.ph.i185 ]
  %.not.i190 = icmp sgt i32 %.lcssa1481, -1
  br i1 %.not.i190, label %_ZN3fmt3v126detail6bigintlSEi.exit196, label %bb.r

.lr.ph.i185:                                      ; preds = %.lr.ph.i185.preheader1673, %.lr.ph.i185
  %.01418.i186 = phi i64 [ %i.ge, %.lr.ph.i185 ], [ %.01418.i186.ph, %.lr.ph.i185.preheader1673 ] ; 2 uses
  %.017.i187 = phi i32 [ %i.gb, %.lr.ph.i185 ], [ %.017.i187.ph, %.lr.ph.i185.preheader1673 ]
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %.01418.i186 ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !3  ; 3 uses
  %i.gb = lshr i32 %i.ga, 31                      ; 2 uses
  %i.gc = shl i32 %i.ga, 1
  %i.gd = or disjoint i32 %i.gc, %.017.i187
  store i32 %i.gd, ptr %i.fz, align 4, !tbaa !3
  %i.ge = add nuw i64 %.01418.i186, 1             ; 2 uses
  %exitcond.not.i188 = icmp eq i64 %i.ge, %.pr
  br i1 %exitcond.not.i188, label %._crit_edge.i189, label %.lr.ph.i185, !llvm.loop !540

bb.r:                                             ; preds = %._crit_edge.i189
  %i.gf = add i64 %.pr, 1                         ; 3 uses
  %i.gg = icmp ugt i64 %i.gf, %i.ep
  br i1 %i.gg, label %bb.s, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191

bb.s:                                             ; preds = %bb.r
  %i.gh = load ptr, ptr %i.q, align 8, !tbaa !516
  invoke void %i.gh(ptr noundef nonnull align 8 dereferenceable(172) %8, i64 noundef %i.gf)
          to label %.noexc195 unwind label %.loopexit.split-lp, !inline_history !533

.noexc195:                                        ; preds = %bb.s
  %.pre.i.i193 = load i64, ptr %i.r, align 8, !tbaa !528 ; 2 uses
  %.pre2.i.i194 = add i64 %.pre.i.i193, 1
  %.pre678 = load ptr, ptr %8, align 8, !tbaa !518
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191: ; preds = %.noexc195, %bb.r
  %i.gi = phi ptr [ %i.eu, %bb.r ], [ %.pre678, %.noexc195 ]
  %.pre-phi.i.i192 = phi i64 [ %i.gf, %bb.r ], [ %.pre2.i.i194, %.noexc195 ]
  %i.gj = phi i64 [ %.pr, %bb.r ], [ %.pre.i.i193, %.noexc195 ]
  store i64 %.pre-phi.i.i192, ptr %i.r, align 8, !tbaa !528
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %i.gj
  store i32 %.lcssa1480, ptr %i.gk, align 4, !tbaa !3
  br label %_ZN3fmt3v126detail6bigintlSEi.exit196

_ZN3fmt3v126detail6bigintlSEi.exit196:            ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191, %._crit_edge.i189, %.loopexit1623, %.thread, %.loopexit570
  %.188 = phi ptr [ null, %.loopexit570 ], [ %8, %.thread ], [ %8, %.loopexit1623 ], [ %8, %._crit_edge.i189 ], [ %8, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191 ] ; 3 uses
  %i.gl = load i128, ptr %0, align 16, !tbaa !526 ; 3 uses
  %i.gm = and i128 %i.gl, 18446744073709551615
  %i.gn = load i64, ptr %i.c, align 8, !tbaa !528 ; 4 uses
  %.not23.i.i = icmp eq i64 %i.gn, 0
  br i1 %.not23.i.i, label %_ZN3fmt3v126detail6bigintlSEi.exit213, label %.lr.ph.i.i197

.lr.ph.i.i197:                                    ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit196
  %i.go = load ptr, ptr %5, align 8, !tbaa !518   ; 3 uses
  %i.gp = lshr i128 %i.gl, 32
  %i.gq = and i128 %i.gp, 79228162514264337589248983040
  br label %bb.t

.preheader.i.i:                                   ; preds = %bb.t
  %.not20.i.i = icmp eq i128 %i.hb, 0
  br i1 %.not20.i.i, label %.lr.ph.i202, label %.lr.ph22.i.i

bb.t:                                             ; preds = %bb.t, %.lr.ph.i.i197
  %.019.i.i = phi i128 [ 0, %.lr.ph.i.i197 ], [ %i.hb, %bb.t ] ; 2 uses
  %.01718.i.i = phi i64 [ 0, %.lr.ph.i.i197 ], [ %i.hd, %bb.t ] ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %.01718.i.i ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !3
  %i.gt = zext i32 %i.gs to i128                  ; 2 uses
  %i.gu = mul nuw nsw i128 %i.gm, %i.gt
  %i.gv = and i128 %.019.i.i, 4294967295
  %i.gw = add nuw nsw i128 %i.gu, %i.gv           ; 2 uses
  %i.gx = mul nuw i128 %i.gq, %i.gt
  %i.gy = lshr i128 %i.gw, 32
  %i.gz = lshr i128 %.019.i.i, 32
  %i.ha = add nuw i128 %i.gx, %i.gz
  %i.hb = add nuw i128 %i.ha, %i.gy               ; 3 uses
  %i.hc = trunc i128 %i.gw to i32
  store i32 %i.hc, ptr %i.gr, align 4, !tbaa !3
  %i.hd = add nuw i64 %.01718.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.hd, %i.gn
  br i1 %exitcond.not.i.i, label %.preheader.i.i, label %bb.t, !llvm.loop !541

.lr.ph22.i.i:                                     ; preds = %.preheader.i.i, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i
  %i.he = phi ptr [ %i.hl, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i ], [ %i.go, %.preheader.i.i ]
  %i.hf = phi i64 [ %.pre-phi.i.i.i, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i ], [ %i.gn, %.preheader.i.i ] ; 2 uses
  %.121.i.i = phi i128 [ %i.ho, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i ], [ %i.hb, %.preheader.i.i ] ; 2 uses
  %i.hg = trunc i128 %.121.i.i to i32
  %i.hh = add i64 %i.hf, 1                        ; 3 uses
  %i.hi = load i64, ptr %i.a, align 8, !tbaa !519
  %i.hj = icmp ugt i64 %i.hh, %i.hi
  br i1 %i.hj, label %bb.u, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i

bb.u:                                             ; preds = %.lr.ph22.i.i
  %i.hk = load ptr, ptr %i.b, align 8, !tbaa !516
  invoke void %i.hk(ptr noundef nonnull align 8 dereferenceable(172) %5, i64 noundef %i.hh)
          to label %.noexc200 unwind label %.loopexit569, !inline_history !542

.noexc200:                                        ; preds = %bb.u
  %.pre.i.i.i199 = load i64, ptr %i.c, align 8, !tbaa !528 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i199, 1
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !518
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i: ; preds = %.noexc200, %.lr.ph22.i.i
  %i.hl = phi ptr [ %i.he, %.lr.ph22.i.i ], [ %.pre.i, %.noexc200 ] ; 3 uses
  %.pre-phi.i.i.i = phi i64 [ %i.hh, %.lr.ph22.i.i ], [ %.pre2.i.i.i, %.noexc200 ] ; 4 uses
  %i.hm = phi i64 [ %i.hf, %.lr.ph22.i.i ], [ %.pre.i.i.i199, %.noexc200 ]
  store i64 %.pre-phi.i.i.i, ptr %i.c, align 8, !tbaa !528
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.hm
  store i32 %i.hg, ptr %i.hn, align 4, !tbaa !3
end_hunk_7
begin_hunk_8_@_ZN3fmt3v126detail6bigint12assign_pow10Ei:bb.a
._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit16
  %i.bh = phi i32 [ %.pre, %._crit_edge.loopexit ], [ 0, %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit16 ]
  %i.bi = sdiv i32 %1, 32
  %i.bj = add nsw i32 %i.bh, %i.bi
  store i32 %i.bj, ptr %i.w, align 8, !tbaa !520
  %i.bk = srem i32 %1, 32                         ; 4 uses
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %_ZN3fmt3v126detail6bigintlSEi.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.bm = load i64, ptr %i.v, align 8, !tbaa !528 ; 7 uses
  %.not19.i = icmp eq i64 %i.bm, 0
  br i1 %.not19.i, label %_ZN3fmt3v126detail6bigintlSEi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.bn = load ptr, ptr %0, align 8, !tbaa !518   ; 3 uses
  %i.bo = sub nsw i32 32, %i.bk                   ; 2 uses
  %min.iters.check = icmp ult i64 %i.bm, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.bm, -8                      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bo, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert34 = insertelement <4 x i32> poison, i32 %i.bk, i64 0
  %broadcast.splat35 = shufflevector <4 x i32> %broadcast.splatinsert34, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph ], [ %i.bs, %vector.body ]
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %index ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.bp, align 4, !tbaa !3 ; 2 uses
  %wide.load36 = load <4 x i32>, ptr %i.bq, align 4, !tbaa !3 ; 2 uses
  %i.br = lshr <4 x i32> %wide.load, %broadcast.splat ; 2 uses
  %i.bs = lshr <4 x i32> %wide.load36, %broadcast.splat ; 3 uses
  %i.bt = shufflevector <4 x i32> %vector.recur, <4 x i32> %i.br, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bu = shufflevector <4 x i32> %i.br, <4 x i32> %i.bs, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bv = shl <4 x i32> %wide.load, %broadcast.splat35
  %i.bw = shl <4 x i32> %wide.load36, %broadcast.splat35
  %i.bx = add <4 x i32> %i.bv, %i.bt
  %i.by = add <4 x i32> %i.bw, %i.bu
  store <4 x i32> %i.bx, ptr %i.bp, align 4, !tbaa !3
  store <4 x i32> %i.by, ptr %i.bq, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !564

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %i.bs, i64 3 ; 2 uses
  %cmp.n = icmp eq i64 %i.bm, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.01418.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  %.017.i.ph = phi i32 [ 0, %.lr.ph.i ], [ %vector.recur.extract, %middle.block ]
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %vector.recur.extract, %middle.block ], [ %i.cc, %scalar.ph ] ; 2 uses
  %.not.i = icmp eq i32 %.lcssa, 0
  br i1 %.not.i, label %_ZN3fmt3v126detail6bigintlSEi.exit, label %bb.l

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.01418.i = phi i64 [ %i.cf, %scalar.ph ], [ %.01418.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.017.i = phi i32 [ %i.cc, %scalar.ph ], [ %.017.i.ph, %scalar.ph.preheader ]
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.01418.i ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !3  ; 2 uses
  %i.cc = lshr i32 %i.cb, %i.bo                   ; 2 uses
  %i.cd = shl i32 %i.cb, %i.bk
  %i.ce = add i32 %i.cd, %.017.i
  store i32 %i.ce, ptr %i.ca, align 4, !tbaa !3
  %i.cf = add nuw i64 %.01418.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cf, %i.bm
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !565

bb.l:                                             ; preds = %._crit_edge.i
  %i.cg = add i64 %i.bm, 1                        ; 3 uses
  %i.ch = load i64, ptr %i.o, align 8, !tbaa !519
  %i.ci = icmp ugt i64 %i.cg, %i.ch
  br i1 %i.ci, label %bb.m, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i

bb.m:                                             ; preds = %bb.l
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !516
  tail call void %i.ck(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef %i.cg), !inline_history !566
  %.pre.i.i = load i64, ptr %i.v, align 8, !tbaa !528 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  %.pre23 = load ptr, ptr %0, align 8, !tbaa !518
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i: ; preds = %bb.m, %bb.l
  %i.cl = phi ptr [ %i.bn, %bb.l ], [ %.pre23, %bb.m ]
  %.pre-phi.i.i = phi i64 [ %i.cg, %bb.l ], [ %.pre2.i.i, %bb.m ]
  %i.cm = phi i64 [ %i.bm, %bb.l ], [ %.pre.i.i, %bb.m ]
  store i64 %.pre-phi.i.i, ptr %i.v, align 8, !tbaa !528
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cm
  store i32 %.lcssa, ptr %i.cn, align 4, !tbaa !3
  br label %_ZN3fmt3v126detail6bigintlSEi.exit

_ZN3fmt3v126detail6bigintlSEi.exit:               ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i, %._crit_edge.i, %bb.k, %._crit_edge, %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN3fmt3v126detail6bigint13divmod_assignERKS2_(ptr noundef nonnull align 8 dereferenceable(172) %0, ptr noundef nonnull align 8 dereferenceable(172) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !528  ; 5 uses
  %i.c = trunc i64 %i.b to i32                    ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !520  ; 4 uses
  %i.f = add nsw i32 %i.e, %i.c                   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !528  ; 3 uses
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !520  ; 3 uses
  %i.l = add nsw i32 %i.k, %i.i                   ; 2 uses
  %.not.i = icmp eq i32 %i.f, %i.l
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = icmp sgt i32 %i.f, %i.l
  br i1 %i.m, label %select.unfold, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit

bb.c:                                             ; preds = %bb.a
  %i.n = sub nsw i32 %i.c, %i.i
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %i.n, i32 0)
  %i.o = load ptr, ptr %0, align 8
  %i.p = load ptr, ptr %1, align 8
  %sext.i = shl i64 %i.b, 32
  %i.q = ashr exact i64 %sext.i, 32               ; 3 uses
  %i.r = zext nneg i32 %spec.store.select.i to i64 ; 3 uses
  %sext55.i = shl i64 %i.h, 32
  %i.s = ashr exact i64 %sext55.i, 32             ; 2 uses
  %smin = tail call i64 @llvm.smin.i64(i64 %i.q, i64 %i.r)
  %.not35.not.i92 = icmp sgt i64 %i.q, %i.r
  br i1 %.not35.not.i92, label %.lr.ph, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph
  %.not35.not.i = icmp sgt i64 %indvars.iv.next.i, %i.r
  br i1 %.not35.not.i, label %.lr.ph, label %._crit_edge, !llvm.loop !555

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %indvars.iv.i94 = phi i64 [ %indvars.iv.next.i, %bb.d ], [ %i.q, %bb.c ]
  %indvars.iv45.i93 = phi i64 [ %indvars.iv.next46.i, %bb.d ], [ %i.s, %bb.c ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i94, -1 ; 3 uses
  %indvars.iv.next46.i = add nsw i64 %indvars.iv45.i93, -1 ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next.i
  %i.u = load i32, ptr %i.t, align 4, !tbaa !3    ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv.next46.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3    ; 2 uses
  %.not37.i = icmp eq i32 %i.u, %i.w
  br i1 %.not37.i, label %bb.d, label %.loopexit.i, !llvm.loop !555

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %indvars.iv45.i.lcssa = phi i64 [ %i.s, %bb.c ], [ %indvars.iv.next46.i, %bb.d ]
  %or.cond.not = icmp slt i64 %smin, %indvars.iv45.i.lcssa
  br i1 %or.cond.not, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit, label %select.unfold

.loopexit.i:                                      ; preds = %.lr.ph
  %i.x = icmp ugt i32 %i.u, %i.w
  br i1 %i.x, label %select.unfold, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit

select.unfold:                                    ; preds = %.loopexit.i, %bb.b, %._crit_edge
  %i.y = sub nsw i32 %i.e, %i.k                   ; 4 uses
  %i.z = icmp slt i32 %i.y, 1
  br i1 %i.z, label %_ZN3fmt3v126detail6bigint5alignERKS2_.exit, label %bb.e

bb.e:                                             ; preds = %select.unfold
  %i.aa = add nsw i32 %i.y, %i.c
  %i.ab = zext i32 %i.aa to i64                   ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !519 ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ab
  br i1 %i.ae, label %bb.f, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !516
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef %i.ab), !inline_history !567
  %.pre.i.i.i = load i64, ptr %i.ac, align 8, !tbaa !519
  br label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i: ; preds = %bb.f, %bb.e
  %i.ah = phi i64 [ %i.ad, %bb.e ], [ %.pre.i.i.i, %bb.f ]
  %i.ai = tail call noundef i64 @llvm.umin.i64(i64 %i.ab, i64 %i.ah) ; 2 uses
  store i64 %i.ai, ptr %i.a, align 8, !tbaa !528
  %i.aj = icmp sgt i32 %i.c, 0
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !518 ; 13 uses
  br i1 %i.aj, label %.lr.ph.i, label %.lr.ph.preheader.i.i

.lr.ph.i:                                         ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i
  %i.ak = add nsw i32 %i.c, -1                    ; 2 uses
  %i.al = add i32 %i.y, %i.ak
  %i.am = sext i32 %i.al to i64                   ; 5 uses
  %i.an = zext i32 %i.ak to i64                   ; 5 uses
  %i.ao = and i64 %i.b, 2147483647                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ao, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.ap = sub nsw i64 %i.an, %i.am
  %2 = shl nsw i64 %i.ap, 2
  %3 = add nsw i64 %2, -1
  %diff.check = icmp ult i64 %3, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.b, 2147483640               ; 4 uses
  %i.aq = sub nsw i64 %i.an, %n.vec
  %i.ar = sub nsw i64 %i.am, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.as = sub i64 %i.an, %index
  %i.at = sub i64 %i.am, %index
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.as ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -12
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 -28
  %wide.load = load <4 x i32>, ptr %i.av, align 4, !tbaa !3
  %wide.load107 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !3
  %i.ax = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %i.at ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -12
  %i.az = getelementptr inbounds i8, ptr %i.ax, i64 -28
  store <4 x i32> %wide.load, ptr %i.ay, align 4, !tbaa !3
  store <4 x i32> %wide.load107, ptr %i.az, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !568

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv18.i.ph = phi i64 [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.i ], [ %i.aq, %middle.block ] ; 4 uses
  %indvars.iv.i11.ph = phi i64 [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph.i ], [ %i.ar, %middle.block ] ; 2 uses
  %i.bb = add nsw i64 %indvars.iv18.i.ph, 1
  %xtraiter = and i64 %i.bb, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv18.i.prol = phi i64 [ %indvars.iv.next19.i.prol, %scalar.ph.prol ], [ %indvars.iv18.i.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv.i11.prol = phi i64 [ %indvars.iv.next.i12.prol, %scalar.ph.prol ], [ %indvars.iv.i11.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i.prol
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3
  %i.be = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11.prol
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !3
  %indvars.iv.next19.i.prol = add nsw i64 %indvars.iv18.i.prol, -1 ; 2 uses
  %indvars.iv.next.i12.prol = add nsw i64 %indvars.iv.i11.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !569

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv18.i.unr = phi i64 [ %indvars.iv18.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next19.i.prol, %scalar.ph.prol ]
  %indvars.iv.i11.unr = phi i64 [ %indvars.iv.i11.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i12.prol, %scalar.ph.prol ]
  %i.bf = icmp ult i64 %indvars.iv18.i.ph, 3
  br i1 %i.bf, label %.lr.ph.preheader.i.i, label %scalar.ph

.lr.ph.preheader.i.i:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i
  %i.bg = xor i32 %i.k, -1
  %i.bh = add i32 %i.e, %i.bg
  %i.bi = zext i32 %i.bh to i64
  %i.bj = shl nuw nsw i64 %i.bi, 2
  %i.bk = add nuw nsw i64 %i.bj, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.pre.i, i8 0, i64 %i.bk, i1 false), !tbaa !3
  %i.bl = load i32, ptr %i.d, align 8, !tbaa !520
  %i.bm = sub nsw i32 %i.bl, %i.y                 ; 2 uses
  store i32 %i.bm, ptr %i.d, align 8, !tbaa !520
  %.pre.pre = load i64, ptr %i.g, align 8, !tbaa !528
  br label %_ZN3fmt3v126detail6bigint5alignERKS2_.exit

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i.3, %scalar.ph ], [ %indvars.iv18.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv.i11 = phi i64 [ %indvars.iv.next.i12.3, %scalar.ph ], [ %indvars.iv.i11.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3
  %i.bp = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !3
  %i.bq = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i
  %i.br = getelementptr i8, ptr %i.bq, i64 -4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !3
  %i.bt = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  %i.bu = getelementptr i8, ptr %i.bt, i64 -4
  store i32 %i.bs, ptr %i.bu, align 4, !tbaa !3
  %i.bv = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i
  %i.bw = getelementptr i8, ptr %i.bv, i64 -8
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3
  %i.by = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  %i.bz = getelementptr i8, ptr %i.by, i64 -8
  store i32 %i.bx, ptr %i.bz, align 4, !tbaa !3
  %indvars.iv.next19.i.2 = add nsw i64 %indvars.iv18.i, -3 ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv.next19.i.2
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !3
  %i.cc = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  %i.cd = getelementptr i8, ptr %i.cc, i64 -12
  store i32 %i.cb, ptr %i.cd, align 4, !tbaa !3
  %indvars.iv.next19.i.3 = add nsw i64 %indvars.iv18.i, -4
  %indvars.iv.next.i12.3 = add nsw i64 %indvars.iv.i11, -4
  %.not.i13.3 = icmp eq i64 %indvars.iv.next19.i.2, 0
  br i1 %.not.i13.3, label %.lr.ph.preheader.i.i, label %scalar.ph, !llvm.loop !570

_ZN3fmt3v126detail6bigint5alignERKS2_.exit:       ; preds = %select.unfold, %.lr.ph.preheader.i.i
  %.pre = phi i64 [ %i.h, %select.unfold ], [ %.pre.pre, %.lr.ph.preheader.i.i ]
  %i.ce = phi i32 [ %i.e, %select.unfold ], [ %i.bm, %.lr.ph.preheader.i.i ]
  %i.cf = phi i64 [ %i.b, %select.unfold ], [ %i.ai, %.lr.ph.preheader.i.i ]
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit32

_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit32: ; preds = %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit32.backedge, %_ZN3fmt3v126detail6bigint5alignERKS2_.exit
  %i.ci = phi i32 [ %i.ce, %_ZN3fmt3v126detail6bigint5alignERKS2_.exit ], [ %i.ew, %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit32.backedge ]
  %i.cj = phi i64 [ %.pre, %_ZN3fmt3v126detail6bigint5alignERKS2_.exit ], [ %i.ey, %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit32.backedge ] ; 5 uses
  %i.ck = phi i64 [ %i.cf, %_ZN3fmt3v126detail6bigint5alignERKS2_.exit ], [ %i.et, %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit32.backedge ] ; 3 uses
  %.0 = phi i32 [ 0, %_ZN3fmt3v126detail6bigint5alignERKS2_.exit ], [ %i.eu, %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit32.backedge ]
  %i.cl = trunc i64 %i.ck to i32
  %.not21.i = icmp eq i64 %i.cj, 0
  br i1 %.not21.i, label %._crit_edge.thread.i, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit32
  %i.cm = load i32, ptr %i.j, align 8, !tbaa !520
  %i.cn = sub i32 %i.cm, %i.ci
  %i.co = load ptr, ptr %1, align 8, !tbaa !518   ; 3 uses
  %i.cp = load ptr, ptr %0, align 8, !tbaa !518   ; 4 uses
  %i.cq = sext i32 %i.cn to i64                   ; 2 uses
  %xtraiter122 = and i64 %i.cj, 1
  %i.cr = icmp eq i64 %i.cj, 1
  br i1 %i.cr, label %.epil.preheader, label %.lr.ph.i14.new

.lr.ph.i14.new:                                   ; preds = %.lr.ph.i14
  %unroll_iter = and i64 %i.cj, -2
  br label %bb.g

._crit_edge.i.unr-lcssa:                          ; preds = %bb.g
  %lcmp.mod123.not = icmp eq i64 %xtraiter122, 0
  br i1 %lcmp.mod123.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i14
  %indvars.iv.i15.epil.init = phi i64 [ %i.cq, %.lr.ph.i14 ], [ %indvars.iv.next.i16.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.01223.i.epil.init = phi i64 [ 0, %.lr.ph.i14 ], [ %i.dy, %._crit_edge.i.unr-lcssa ]
  %.01822.i.epil.init = phi i64 [ 0, %.lr.ph.i14 ], [ %i.dx, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod126 = trunc i64 %i.cj to i1
  tail call void @llvm.assume(i1 %lcmp.mod126)
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.01223.i.epil.init
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !3
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %indvars.iv.i15.epil.init ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !3
  %i.cw = zext i32 %i.cv to i64
  %i.cx = zext i32 %i.ct to i64
  %i.cy = add nuw nsw i64 %.01822.i.epil.init, %i.cx
  %i.cz = sub nsw i64 %i.cw, %i.cy                ; 2 uses
  %i.da = trunc i64 %i.cz to i32
  store i32 %i.da, ptr %i.cu, align 4, !tbaa !3
  %indvars.iv.next.i16.epil = add nsw i64 %indvars.iv.i15.epil.init, 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.dv, %._crit_edge.i.unr-lcssa ], [ %i.cz, %.epil.preheader ]
  %indvars.iv.next.i16.lcssa = phi i64 [ %indvars.iv.next.i16.1, %._crit_edge.i.unr-lcssa ], [ %indvars.iv.next.i16.epil, %.epil.preheader ]
  %i.db = icmp sgt i64 %.lcssa, -1
  br i1 %i.db, label %._crit_edge.thread.i, label %bb.h

bb.g:                                             ; preds = %bb.g, %.lr.ph.i14.new
  %indvars.iv.i15 = phi i64 [ %i.cq, %.lr.ph.i14.new ], [ %indvars.iv.next.i16.1, %bb.g ] ; 3 uses
  %.01223.i = phi i64 [ 0, %.lr.ph.i14.new ], [ %i.dy, %bb.g ] ; 3 uses
  %.01822.i = phi i64 [ 0, %.lr.ph.i14.new ], [ %i.dx, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph.i14.new ], [ %niter.next.1, %bb.g ]
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.01223.i
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !3
  %i.de = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %indvars.iv.i15 ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !3
  %i.dg = zext i32 %i.df to i64
  %i.dh = zext i32 %i.dd to i64
  %i.di = add nuw nsw i64 %.01822.i, %i.dh
  %i.dj = sub nsw i64 %i.dg, %i.di                ; 2 uses
  %i.dk = trunc i64 %i.dj to i32
  store i32 %i.dk, ptr %i.de, align 4, !tbaa !3
  %i.dl = lshr i64 %i.dj, 63
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.01223.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !3
  %i.dp = getelementptr [4 x i8], ptr %i.cp, i64 %indvars.iv.i15
  %i.dq = getelementptr i8, ptr %i.dp, i64 4      ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !3
  %i.ds = zext i32 %i.dr to i64
  %i.dt = zext i32 %i.do to i64
  %i.du = add nuw nsw i64 %i.dl, %i.dt
  %i.dv = sub nsw i64 %i.ds, %i.du                ; 3 uses
  %i.dw = trunc i64 %i.dv to i32
  store i32 %i.dw, ptr %i.dq, align 4, !tbaa !3
  %i.dx = lshr i64 %i.dv, 63                      ; 2 uses
  %indvars.iv.next.i16.1 = add nsw i64 %indvars.iv.i15, 2 ; 3 uses
  %i.dy = add nuw i64 %.01223.i, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.g, !llvm.loop !571

bb.h:                                             ; preds = %._crit_edge.i
  %sext.i18 = shl i64 %indvars.iv.next.i16.lcssa, 32
  %i.dz = ashr exact i64 %sext.i18, 30
  %i.ea = getelementptr inbounds i8, ptr %i.cp, i64 %i.dz ; 2 uses
end_hunk_8
begin_hunk_9_@_ZN3fmt3v126detail14digit_groupingIcEC2ENS0_10locale_refEb:bb.a
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body
  %i.aw = load i64, ptr %i.e, align 8, !tbaa !16
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ay = load ptr, ptr %0, align 8, !tbaa !17    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.b
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ba = load i64, ptr %i.b, align 8, !tbaa !16
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18thousands_sep_implIcEENS1_20thousands_sep_resultIT_EENS0_10locale_refE(ptr dead_on_unwind noalias writable sret(%"struct.fmt::v12::detail::thousands_sep_result") align 8 %0, ptr %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::locale", align 8       ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %1) #29
  br label %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #29
  br label %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit

_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit: ; preds = %bb.b, %bb.c
  %i.a = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt7__cxx118numpunctIcE2idE) #29
  %i.b = load ptr, ptr %2, align 8, !tbaa !300
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !308
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !309  ; 5 uses
  %.not.not.i = icmp eq ptr %i.f, null
  br i1 %.not.not.i, label %bb.d, label %_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit

bb.d:                                             ; preds = %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit
  invoke void @_ZSt16__throw_bad_castv() #32
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  unreachable

_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit: ; preds = %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !7, !noalias !603
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !noalias !603
  call void %i.i(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.f), !inline_history !331
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !13
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_ZNKSt7__cxx118numpunctIcE13thousands_sepEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = invoke noundef signext i8 %i.o(ptr noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_ZNKSt7__cxx118numpunctIcE13thousands_sepEv.exit unwind label %bb.h, !inline_history !332

_ZNKSt7__cxx118numpunctIcE13thousands_sepEv.exit: ; preds = %bb.e, %_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit
  %i.q = phi i8 [ 0, %_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit ], [ %i.p, %bb.e ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !9
  %i.s = load ptr, ptr %3, align 8, !tbaa !17     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.f:                                             ; preds = %_ZNKSt7__cxx118numpunctIcE13thousands_sepEv.exit
  %i.v = load i64, ptr %i.j, align 8, !tbaa !13   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.x, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx118numpunctIcE13thousands_sepEv.exit
  store ptr %i.s, ptr %0, align 8, !tbaa !17
  %i.y = load i64, ptr %i.t, align 8, !tbaa !16
  store i64 %i.y, ptr %i.r, align 8, !tbaa !16
  %.pre = load i64, ptr %i.j, align 8, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.z = phi i64 [ %i.v, %bb.f ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.q, ptr %i.ab, align 8, !tbaa !601
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret void

bb.g:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %3, align 8, !tbaa !17    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.h
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !16
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9 ], [ %i.ac, %bb.g ]
  resume { ptr, i32 } %.pn
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail17write_significandIcNS0_14basic_appenderIcEEPKcNS1_14digit_groupingIcEEEET0_S9_T1_iiRKT2_(ptr %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(64) %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %2 to i64
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c ; 2 uses
  %.not31.i.i.i = icmp eq i32 %2, 0
  br i1 %.not31.i.i.i, label %_ZN3fmt3v126detail17write_significandIcNS0_14basic_appenderIcEEEET0_S5_PKci.exit, label %.lr.ph34.i.i.i

.lr.ph34.i.i.i:                                   ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre.i.i.i = load i64, ptr %i.e, align 8, !tbaa !148
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i.i, %.lr.ph34.i.i.i
  %i.i = phi i64 [ %.pre.i.i.i, %.lr.ph34.i.i.i ], [ %i.ao, %._crit_edge.i.i.i ] ; 3 uses
  %.02532.i.i.i = phi ptr [ %1, %.lr.ph34.i.i.i ], [ %i.ap, %._crit_edge.i.i.i ] ; 9 uses
  %i.j = load i64, ptr %i.f, align 8, !tbaa !134
  %i.k = sub i64 %i.j, %i.i
  %i.l = ptrtoint ptr %.02532.i.i.i to i64        ; 2 uses
  %i.m = sub i64 %i.g, %i.l                       ; 4 uses
  %i.n = icmp ult i64 %i.k, %i.m
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !131
  %i.p = add i64 %i.m, %i.i
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.p), !inline_history !606
  %i.q = load i64, ptr %i.e, align 8, !tbaa !148  ; 2 uses
  %i.r = load i64, ptr %i.f, align 8, !tbaa !134
  %i.s = sub i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.s)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.027.i.i.i = phi i64 [ %i.q, %bb.d ], [ %i.i, %bb.c ] ; 3 uses
  %.026.i.i.i = phi i64 [ %i.t, %bb.d ], [ %i.m, %bb.c ] ; 13 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !133    ; 2 uses
  %i.v = ptrtoaddr ptr %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %.027.i.i.i ; 7 uses
  %.not36.i.i.i = icmp eq i64 %.026.i.i.i, 0
  br i1 %.not36.i.i.i, label %._crit_edge.i.i.i, label %iter.check87

iter.check87:                                     ; preds = %bb.e
  %min.iters.check73 = icmp ult i64 %.026.i.i.i, 4
  br i1 %min.iters.check73, label %.lr.ph.i.i.i.preheader, label %vector.memcheck71

vector.memcheck71:                                ; preds = %iter.check87
  %i.x = add i64 %.027.i.i.i, %i.v
  %i.y = sub i64 %i.l, %i.x
  %diff.check72 = icmp ugt i64 %i.y, -32
  br i1 %diff.check72, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check74

vector.main.loop.iter.check74:                    ; preds = %vector.memcheck71
  %min.iters.check75 = icmp ult i64 %.026.i.i.i, 32
  br i1 %min.iters.check75, label %vec.epilog.ph91, label %vector.ph76

vector.ph76:                                      ; preds = %vector.main.loop.iter.check74
  %n.mod.vf77 = and i64 %.026.i.i.i, 28
  %n.vec78 = and i64 %.026.i.i.i, -32             ; 4 uses
  br label %vector.body79

vector.body79:                                    ; preds = %vector.body79, %vector.ph76
  %index80 = phi i64 [ 0, %vector.ph76 ], [ %index.next83, %vector.body79 ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %index80 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load81 = load <16 x i8>, ptr %i.z, align 1, !tbaa !16
  %wide.load82 = load <16 x i8>, ptr %i.aa, align 1, !tbaa !16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %index80 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <16 x i8> %wide.load81, ptr %i.ab, align 1, !tbaa !16
  store <16 x i8> %wide.load82, ptr %i.ac, align 1, !tbaa !16
  %index.next83 = add nuw i64 %index80, 32        ; 2 uses
  %i.ad = icmp eq i64 %index.next83, %n.vec78
  br i1 %i.ad, label %middle.block84, label %vector.body79, !llvm.loop !607

middle.block84:                                   ; preds = %vector.body79
  %cmp.n85 = icmp eq i64 %.026.i.i.i, %n.vec78
  br i1 %cmp.n85, label %._crit_edge.loopexit.i.i.i, label %vec.epilog.iter.check89

vec.epilog.iter.check89:                          ; preds = %middle.block84
  %min.epilog.iters.check90 = icmp eq i64 %n.mod.vf77, 0
  br i1 %min.epilog.iters.check90, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph91, !prof !292

vec.epilog.ph91:                                  ; preds = %vector.main.loop.iter.check74, %vec.epilog.iter.check89
  %vec.epilog.resume.val86 = phi i64 [ %n.vec78, %vec.epilog.iter.check89 ], [ 0, %vector.main.loop.iter.check74 ]
  %n.vec93 = and i64 %.026.i.i.i, -4              ; 3 uses
  br label %vec.epilog.vector.body94

vec.epilog.vector.body94:                         ; preds = %vec.epilog.vector.body94, %vec.epilog.ph91
  %index95 = phi i64 [ %vec.epilog.resume.val86, %vec.epilog.ph91 ], [ %index.next97, %vec.epilog.vector.body94 ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %index95
  %wide.load96 = load <4 x i8>, ptr %i.ae, align 1, !tbaa !16
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 %index95
  store <4 x i8> %wide.load96, ptr %i.af, align 1, !tbaa !16
  %index.next97 = add nuw i64 %index95, 4         ; 2 uses
  %i.ag = icmp eq i64 %index.next97, %n.vec93
  br i1 %i.ag, label %vec.epilog.middle.block98, label %vec.epilog.vector.body94, !llvm.loop !608

vec.epilog.middle.block98:                        ; preds = %vec.epilog.vector.body94
  %cmp.n99 = icmp eq i64 %.026.i.i.i, %n.vec93
  br i1 %cmp.n99, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %vector.memcheck71, %iter.check87, %vec.epilog.iter.check89, %vec.epilog.middle.block98
  %.030.i.i.i.ph = phi i64 [ 0, %iter.check87 ], [ 0, %vector.memcheck71 ], [ %n.vec78, %vec.epilog.iter.check89 ], [ %n.vec93, %vec.epilog.middle.block98 ] ; 3 uses
  %xtraiter101 = and i64 %.026.i.i.i, 3           ; 2 uses
  %lcmp.mod102.not = icmp eq i64 %xtraiter101, 0
  br i1 %lcmp.mod102.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.030.i.i.i.prol = phi i64 [ %i.ak, %.lr.ph.i.i.i.prol ], [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter103 = phi i64 [ %prol.iter103.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %.030.i.i.i.prol
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 %.030.i.i.i.prol
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !16
  %i.ak = add nuw i64 %.030.i.i.i.prol, 1         ; 2 uses
  %prol.iter103.next = add i64 %prol.iter103, 1   ; 2 uses
  %prol.iter103.cmp.not = icmp eq i64 %prol.iter103.next, %xtraiter101
  br i1 %prol.iter103.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !609

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.030.i.i.i.unr = phi i64 [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.ak, %.lr.ph.i.i.i.prol ]
  %i.al = sub i64 %.030.i.i.i.ph, %.026.i.i.i
  %i.am = icmp ugt i64 %i.al, -4
  br i1 %i.am, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block98, %middle.block84
  %.pre37.i.i.i = load i64, ptr %i.e, align 8, !tbaa !148
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.e
  %i.an = phi i64 [ %.pre37.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.027.i.i.i, %bb.e ]
  %i.ao = add i64 %i.an, %.026.i.i.i              ; 2 uses
  store i64 %i.ao, ptr %i.e, align 8, !tbaa !148
  %i.ap = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %.026.i.i.i ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %i.d
  br i1 %.not.i.i.i, label %_ZN3fmt3v126detail17write_significandIcNS0_14basic_appenderIcEEEET0_S5_PKci.exit, label %bb.c, !llvm.loop !296

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.030.i.i.i = phi i64 [ %i.bf, %.lr.ph.i.i.i ], [ %.030.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %.030.i.i.i
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !16
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 %.030.i.i.i
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !16
  %i.at = add nuw i64 %.030.i.i.i, 1              ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.at
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !16
  %i.ax = add nuw i64 %.030.i.i.i, 2              ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ax
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !16
  %i.bb = add nuw i64 %.030.i.i.i, 3              ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !16
  %i.be = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.bb
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !16
  %i.bf = add nuw i64 %.030.i.i.i, 4              ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.bf, %.026.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !610

_ZN3fmt3v126detail17write_significandIcNS0_14basic_appenderIcEEEET0_S5_PKci.exit: ; preds = %._crit_edge.i.i.i, %bb.b
  %i.bg = icmp sgt i32 %3, 0
  br i1 %i.bg, label %.lr.ph.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit

.lr.ph.i:                                         ; preds = %_ZN3fmt3v126detail17write_significandIcNS0_14basic_appenderIcEEEET0_S5_PKci.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.f

bb.f:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %.lr.ph.i
  %.04.i = phi i32 [ 0, %.lr.ph.i ], [ %i.bs, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i ]
  %i.bk = load i64, ptr %i.bh, align 8, !tbaa !148 ; 2 uses
  %i.bl = add i64 %i.bk, 1                        ; 3 uses
  %i.bm = load i64, ptr %i.bi, align 8, !tbaa !134
  %i.bn = icmp ugt i64 %i.bl, %i.bm
  br i1 %i.bn, label %bb.g, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.g:                                             ; preds = %bb.f
  %i.bo = load ptr, ptr %i.bj, align 8, !tbaa !131
  tail call void %i.bo(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bl), !inline_history !444
  %.pre.i.i.i18 = load i64, ptr %i.bh, align 8, !tbaa !148 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i18, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.g, %bb.f
  %.pre-phi.i.i.i = phi i64 [ %i.bl, %bb.f ], [ %.pre2.i.i.i, %bb.g ]
  %i.bp = phi i64 [ %i.bk, %bb.f ], [ %.pre.i.i.i18, %bb.g ]
  %i.bq = load ptr, ptr %0, align 8, !tbaa !133
  store i64 %.pre-phi.i.i.i, ptr %i.bh, align 8, !tbaa !148
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bp
  store i8 48, ptr %i.br, align 1, !tbaa !16
  %i.bs = add nuw nsw i32 %.04.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bs, %3
  br i1 %exitcond.not.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, label %bb.f, !llvm.loop !440

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 8 uses
  store i64 0, ptr %i.bv, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.bu, align 8, !tbaa !131
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  store ptr %i.bw, ptr %5, align 8, !tbaa !133
  store i64 500, ptr %i.bt, align 8, !tbaa !134
  %i.bx = sext i32 %2 to i64
  %i.by = getelementptr inbounds i8, ptr %1, i64 %i.bx ; 2 uses
  %.not31.i.i.i19 = icmp eq i32 %2, 0
  br i1 %.not31.i.i.i19, label %_ZN3fmt3v126detail17write_significandIcNS0_14basic_appenderIcEEEET0_S5_PKci.exit33, label %.lr.ph34.i.i.i20

.lr.ph34.i.i.i20:                                 ; preds = %bb.h
  %i.bz = ptrtoint ptr %i.by to i64
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.i.i.i31, %.lr.ph34.i.i.i20
  %i.ca = phi i64 [ 0, %.lr.ph34.i.i.i20 ], [ %i.dg, %._crit_edge.i.i.i31 ] ; 3 uses
  %.02532.i.i.i22 = phi ptr [ %1, %.lr.ph34.i.i.i20 ], [ %i.dh, %._crit_edge.i.i.i31 ] ; 9 uses
  %i.cb = load i64, ptr %i.bt, align 8, !tbaa !134
  %i.cc = sub i64 %i.cb, %i.ca
  %i.cd = ptrtoint ptr %.02532.i.i.i22 to i64     ; 2 uses
  %i.ce = sub i64 %i.bz, %i.cd                    ; 4 uses
  %i.cf = icmp ult i64 %i.cc, %i.ce
  br i1 %i.cf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cg = load ptr, ptr %i.bu, align 8, !tbaa !131
  %i.ch = add i64 %i.ce, %i.ca
  invoke void %i.cg(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.ch)
          to label %.noexc unwind label %.loopexit, !inline_history !611

.noexc:                                           ; preds = %bb.j
  %i.ci = load i64, ptr %i.bv, align 8, !tbaa !148 ; 2 uses
  %i.cj = load i64, ptr %i.bt, align 8, !tbaa !134
  %i.ck = sub i64 %i.cj, %i.ci
  %i.cl = call i64 @llvm.umin.i64(i64 %i.ce, i64 %i.ck)
  br label %bb.k

bb.k:                                             ; preds = %.noexc, %bb.i
  %.027.i.i.i23 = phi i64 [ %i.ci, %.noexc ], [ %i.ca, %bb.i ] ; 3 uses
  %.026.i.i.i24 = phi i64 [ %i.cl, %.noexc ], [ %i.ce, %bb.i ] ; 13 uses
  %i.cm = load ptr, ptr %5, align 8, !tbaa !133   ; 2 uses
  %i.cn = ptrtoaddr ptr %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.027.i.i.i23 ; 7 uses
  %.not36.i.i.i25 = icmp eq i64 %.026.i.i.i24, 0
  br i1 %.not36.i.i.i25, label %._crit_edge.i.i.i31, label %iter.check

iter.check:                                       ; preds = %bb.k
  %min.iters.check = icmp ult i64 %.026.i.i.i24, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i26.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cp = add i64 %.027.i.i.i23, %i.cn
  %i.cq = sub i64 %i.cd, %i.cp
  %diff.check = icmp ugt i64 %i.cq, -32
  br i1 %diff.check, label %.lr.ph.i.i.i26.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check63 = icmp ult i64 %.026.i.i.i24, 32
  br i1 %min.iters.check63, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %.026.i.i.i24, 28
  %n.vec = and i64 %.026.i.i.i24, -32             ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.02532.i.i.i22, i64 %index ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %wide.load = load <16 x i8>, ptr %i.cr, align 1, !tbaa !16
  %wide.load64 = load <16 x i8>, ptr %i.cs, align 1, !tbaa !16
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 %index ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store <16 x i8> %wide.load, ptr %i.ct, align 1, !tbaa !16
  store <16 x i8> %wide.load64, ptr %i.cu, align 1, !tbaa !16
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cv = icmp eq i64 %index.next, %n.vec
  br i1 %i.cv, label %middle.block, label %vector.body, !llvm.loop !612

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.026.i.i.i24, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i.i29, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i26.preheader, label %vec.epilog.ph, !prof !292

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec66 = and i64 %.026.i.i.i24, -4            ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index67 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next69, %vec.epilog.vector.body ] ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.02532.i.i.i22, i64 %index67
  %wide.load68 = load <4 x i8>, ptr %i.cw, align 1, !tbaa !16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.co, i64 %index67
  store <4 x i8> %wide.load68, ptr %i.cx, align 1, !tbaa !16
  %index.next69 = add nuw i64 %index67, 4         ; 2 uses
  %i.cy = icmp eq i64 %index.next69, %n.vec66
  br i1 %i.cy, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !613

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n70 = icmp eq i64 %.026.i.i.i24, %n.vec66
  br i1 %cmp.n70, label %._crit_edge.loopexit.i.i.i29, label %.lr.ph.i.i.i26.preheader

.lr.ph.i.i.i26.preheader:                         ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.i27.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec66, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.026.i.i.i24, 3            ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i26.prol.loopexit, label %.lr.ph.i.i.i26.prol

.lr.ph.i.i.i26.prol:                              ; preds = %.lr.ph.i.i.i26.preheader, %.lr.ph.i.i.i26.prol
  %.030.i.i.i27.prol = phi i64 [ %i.dc, %.lr.ph.i.i.i26.prol ], [ %.030.i.i.i27.ph, %.lr.ph.i.i.i26.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i26.prol ], [ 0, %.lr.ph.i.i.i26.preheader ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.02532.i.i.i22, i64 %.030.i.i.i27.prol
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !16
  %i.db = getelementptr inbounds nuw i8, ptr %i.co, i64 %.030.i.i.i27.prol
  store i8 %i.da, ptr %i.db, align 1, !tbaa !16
  %i.dc = add nuw i64 %.030.i.i.i27.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i26.prol.loopexit, label %.lr.ph.i.i.i26.prol, !llvm.loop !614

.lr.ph.i.i.i26.prol.loopexit:                     ; preds = %.lr.ph.i.i.i26.prol, %.lr.ph.i.i.i26.preheader
  %.030.i.i.i27.unr = phi i64 [ %.030.i.i.i27.ph, %.lr.ph.i.i.i26.preheader ], [ %i.dc, %.lr.ph.i.i.i26.prol ]
  %i.dd = sub i64 %.030.i.i.i27.ph, %.026.i.i.i24
  %i.de = icmp ugt i64 %i.dd, -4
  br i1 %i.de, label %._crit_edge.loopexit.i.i.i29, label %.lr.ph.i.i.i26

._crit_edge.loopexit.i.i.i29:                     ; preds = %.lr.ph.i.i.i26.prol.loopexit, %.lr.ph.i.i.i26, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i.i30 = load i64, ptr %i.bv, align 8, !tbaa !148
  br label %._crit_edge.i.i.i31

._crit_edge.i.i.i31:                              ; preds = %._crit_edge.loopexit.i.i.i29, %bb.k
  %i.df = phi i64 [ %.pre37.i.i.i30, %._crit_edge.loopexit.i.i.i29 ], [ %.027.i.i.i23, %bb.k ]
  %i.dg = add i64 %i.df, %.026.i.i.i24            ; 3 uses
  store i64 %i.dg, ptr %i.bv, align 8, !tbaa !148
  %i.dh = getelementptr inbounds nuw i8, ptr %.02532.i.i.i22, i64 %.026.i.i.i24 ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %i.dh, %i.by
  br i1 %.not.i.i.i32, label %_ZN3fmt3v126detail17write_significandIcNS0_14basic_appenderIcEEEET0_S5_PKci.exit33, label %bb.i, !llvm.loop !296

.lr.ph.i.i.i26:                                   ; preds = %.lr.ph.i.i.i26.prol.loopexit, %.lr.ph.i.i.i26
  %.030.i.i.i27 = phi i64 [ %i.dx, %.lr.ph.i.i.i26 ], [ %.030.i.i.i27.unr, %.lr.ph.i.i.i26.prol.loopexit ] ; 6 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.02532.i.i.i22, i64 %.030.i.i.i27
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.co, i64 %.030.i.i.i27
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !16
  %i.dl = add nuw i64 %.030.i.i.i27, 1            ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.02532.i.i.i22, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !16
  %i.do = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.dl
  store i8 %i.dn, ptr %i.do, align 1, !tbaa !16
  %i.dp = add nuw i64 %.030.i.i.i27, 2            ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.02532.i.i.i22, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !16
  %i.ds = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.dp
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !16
  %i.dt = add nuw i64 %.030.i.i.i27, 3            ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.02532.i.i.i22, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !16
  %i.dw = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.dt
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !16
  %i.dx = add nuw i64 %.030.i.i.i27, 4            ; 2 uses
  %exitcond.not.i.i.i28.3 = icmp eq i64 %i.dx, %.026.i.i.i24
  br i1 %exitcond.not.i.i.i28.3, label %._crit_edge.loopexit.i.i.i29, label %.lr.ph.i.i.i26, !llvm.loop !615

_ZN3fmt3v126detail17write_significandIcNS0_14basic_appenderIcEEEET0_S5_PKci.exit33: ; preds = %._crit_edge.i.i.i31, %bb.h
  %i.dy = phi i64 [ 0, %bb.h ], [ %i.dg, %._crit_edge.i.i.i31 ]
  %i.dz = icmp sgt i32 %3, 0
  br i1 %i.dz, label %.lr.ph.i34, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit42

.lr.ph.i34:                                       ; preds = %_ZN3fmt3v126detail17write_significandIcNS0_14basic_appenderIcEEEET0_S5_PKci.exit33, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i36
  %.04.i35 = phi i32 [ %i.ei, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i36 ], [ 0, %_ZN3fmt3v126detail17write_significandIcNS0_14basic_appenderIcEEEET0_S5_PKci.exit33 ]
  %i.ea = load i64, ptr %i.bv, align 8, !tbaa !148 ; 2 uses
  %i.eb = add i64 %i.ea, 1                        ; 3 uses
  %i.ec = load i64, ptr %i.bt, align 8, !tbaa !134
  %i.ed = icmp ugt i64 %i.eb, %i.ec
  br i1 %i.ed, label %bb.l, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i36

bb.l:                                             ; preds = %.lr.ph.i34
  %i.ee = load ptr, ptr %i.bu, align 8, !tbaa !131
  invoke void %i.ee(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.eb)
          to label %.noexc41 unwind label %bb.o, !inline_history !616

.noexc41:                                         ; preds = %bb.l
  %.pre.i.i.i39 = load i64, ptr %i.bv, align 8, !tbaa !148 ; 2 uses
  %.pre2.i.i.i40 = add i64 %.pre.i.i.i39, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i36

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i36:      ; preds = %.noexc41, %.lr.ph.i34
  %.pre-phi.i.i.i37 = phi i64 [ %i.eb, %.lr.ph.i34 ], [ %.pre2.i.i.i40, %.noexc41 ]
  %i.ef = phi i64 [ %i.ea, %.lr.ph.i34 ], [ %.pre.i.i.i39, %.noexc41 ]
  %i.eg = load ptr, ptr %5, align 8, !tbaa !133
  store i64 %.pre-phi.i.i.i37, ptr %i.bv, align 8, !tbaa !148
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ef
  store i8 48, ptr %i.eh, align 1, !tbaa !16
  %i.ei = add nuw nsw i32 %.04.i35, 1             ; 2 uses
  %exitcond.not.i38 = icmp eq i32 %i.ei, %3
  br i1 %exitcond.not.i38, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit42.loopexit, label %.lr.ph.i34, !llvm.loop !440

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit42.loopexit: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i36
  %.pre = load i64, ptr %i.bv, align 8, !tbaa !148
  br label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit42

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit42: ; preds = %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit42.loopexit, %_ZN3fmt3v126detail17write_significandIcNS0_14basic_appenderIcEEEET0_S5_PKci.exit33
  %i.ej = phi i64 [ %.pre, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit42.loopexit ], [ %i.dy, %_ZN3fmt3v126detail17write_significandIcNS0_14basic_appenderIcEEEET0_S5_PKci.exit33 ]
  %i.ek = load ptr, ptr %5, align 8, !tbaa !133
  %i.el = invoke ptr @_ZNK3fmt3v126detail14digit_groupingIcE5applyINS0_14basic_appenderIcEEcEET_S7_NS0_17basic_string_viewIT0_EE(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr %0, ptr %i.ek, i64 %i.ej)
          to label %bb.m unwind label %.loopexit.split-lp

bb.m:                                             ; preds = %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit42
  %i.em = load ptr, ptr %5, align 8, !tbaa !133   ; 2 uses
  %.not.i.i = icmp eq ptr %i.em, %i.bw
  br i1 %.not.i.i, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @free(ptr noundef %i.em) #29
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit

.loopexit:                                        ; preds = %bb.j
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit42
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.l
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.o
  %.pn = phi { ptr, i32 } [ %i.en, %bb.o ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.eo = load ptr, ptr %5, align 8, !tbaa !133   ; 2 uses
  %.not.i.i43 = icmp eq ptr %i.eo, %i.bw
  br i1 %.not.i.i43, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit44, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @free(ptr noundef %i.eo) #29
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit44

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit44: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  resume { ptr, i32 } %.pn

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %_ZN3fmt3v126detail17write_significandIcNS0_14basic_appenderIcEEEET0_S5_PKci.exit, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit
end_hunk_9
begin_hunk_10_@_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_11write_fixedIcNS1_14digit_groupingIcEES5_NS1_14big_decimal_fpEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS5_E0_EESA_SA_SH_mmOSB_:bb.a
  %i.bx = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr %i.bg, i64 noundef %i.n, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEENKUlS6_E0_clES6_.exit
  %.sroa.09.1 = phi ptr [ %i.bx, %bb.j ], [ %i.bg, %_ZZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEENKUlS6_E0_clES6_.exit ]
  ret ptr %.sroa.09.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEcPKcNS1_14digit_groupingIcEEEET_S9_T1_iiT0_RKT2_(ptr %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef signext %4, ptr noundef nonnull align 8 dereferenceable(64) %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %3 to i64
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c ; 2 uses
  %i.e = tail call ptr @_ZN3fmt3v126detail13copy_noinlineIcPKcNS0_14basic_appenderIcEEEET1_T0_S8_S7_(ptr noundef %1, ptr noundef %i.d, ptr %0) ; 7 uses
  %.not.i = icmp eq i8 %4, 0
  br i1 %.not.i, label %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEcEET_S5_PKciiT0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !148  ; 2 uses
  %i.h = add i64 %i.g, 1                          ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !134
  %i.k = icmp ugt i64 %i.h, %i.j
  br i1 %i.k, label %bb.d, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !131
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef %i.h), !inline_history !597
  %.pre.i.i.i = load i64, ptr %i.f, align 8, !tbaa !148 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.d, %bb.c
  %.pre-phi.i.i.i = phi i64 [ %i.h, %bb.c ], [ %.pre2.i.i.i, %bb.d ]
  %i.n = phi i64 [ %i.g, %bb.c ], [ %.pre.i.i.i, %bb.d ]
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !133
  store i64 %.pre-phi.i.i.i, ptr %i.f, align 8, !tbaa !148
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n
  store i8 %4, ptr %i.p, align 1, !tbaa !16
  %i.q = sext i32 %2 to i64
  %i.r = getelementptr inbounds i8, ptr %1, i64 %i.q
  %i.s = tail call ptr @_ZN3fmt3v126detail13copy_noinlineIcPKcNS0_14basic_appenderIcEEEET1_T0_S8_S7_(ptr noundef %i.d, ptr noundef %i.r, ptr nonnull %i.e)
  br label %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEcEET_S5_PKciiT0_.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.v, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.u, align 8, !tbaa !131
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  store ptr %i.w, ptr %6, align 8, !tbaa !133
  store i64 500, ptr %i.t, align 8, !tbaa !134
  %i.x = sext i32 %3 to i64                       ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %1, i64 %i.x ; 2 uses
  %i.z = invoke ptr @_ZN3fmt3v126detail13copy_noinlineIcPKcNS0_14basic_appenderIcEEEET1_T0_S8_S7_(ptr noundef %1, ptr noundef %i.y, ptr nonnull %6)
          to label %.noexc unwind label %bb.l     ; 6 uses

.noexc:                                           ; preds = %bb.e
  %.not.i19 = icmp eq i8 %4, 0
  br i1 %.not.i19, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !148 ; 2 uses
  %i.ac = add i64 %i.ab, 1                        ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !134
  %i.af = icmp ugt i64 %i.ac, %i.ae
  br i1 %i.af, label %bb.g, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i20

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !131
  invoke void %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %i.z, i64 noundef %i.ac)
          to label %.noexc25 unwind label %bb.l, !inline_history !627

.noexc25:                                         ; preds = %bb.g
  %.pre.i.i.i23 = load i64, ptr %i.aa, align 8, !tbaa !148 ; 2 uses
  %.pre2.i.i.i24 = add i64 %.pre.i.i.i23, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i20

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i20:      ; preds = %.noexc25, %bb.f
  %.pre-phi.i.i.i21 = phi i64 [ %i.ac, %bb.f ], [ %.pre2.i.i.i24, %.noexc25 ]
  %i.ai = phi i64 [ %i.ab, %bb.f ], [ %.pre.i.i.i23, %.noexc25 ]
  %i.aj = load ptr, ptr %i.z, align 8, !tbaa !133
  store i64 %.pre-phi.i.i.i21, ptr %i.aa, align 8, !tbaa !148
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ai
  store i8 %4, ptr %i.ak, align 1, !tbaa !16
  %i.al = sext i32 %2 to i64
  %i.am = getelementptr inbounds i8, ptr %1, i64 %i.al
  %i.an = invoke ptr @_ZN3fmt3v126detail13copy_noinlineIcPKcNS0_14basic_appenderIcEEEET1_T0_S8_S7_(ptr noundef %i.y, ptr noundef %i.am, ptr nonnull %i.z)
          to label %bb.h unwind label %bb.l       ; 0 uses

bb.h:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i20, %.noexc
  %i.ao = load ptr, ptr %6, align 8, !tbaa !133
  %i.ap = zext i32 %3 to i64
  %i.aq = invoke ptr @_ZNK3fmt3v126detail14digit_groupingIcE5applyINS0_14basic_appenderIcEEcEET_S7_NS0_17basic_string_viewIT0_EE(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr %0, ptr %i.ao, i64 %i.ap)
          to label %bb.i unwind label %bb.l       ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.ar = load ptr, ptr %6, align 8, !tbaa !133   ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %i.x
  %i.at = load i64, ptr %i.v, align 8, !tbaa !148
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.at
  %i.av = invoke ptr @_ZN3fmt3v126detail13copy_noinlineIcPcNS0_14basic_appenderIcEEEET1_T0_S7_S6_(ptr noundef %i.as, ptr noundef %i.au, ptr %0)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.aw = load ptr, ptr %6, align 8, !tbaa !133   ; 2 uses
  %.not.i.i = icmp eq ptr %i.aw, %i.w
  br i1 %.not.i.i, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @free(ptr noundef %i.aw) #29
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEcEET_S5_PKciiT0_.exit

bb.l:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i20, %bb.g, %bb.e, %bb.i, %bb.h
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %i.ay = load ptr, ptr %6, align 8, !tbaa !133   ; 2 uses
  %.not.i.i28 = icmp eq ptr %i.ay, %i.w
  br i1 %.not.i.i28, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit29, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @free(ptr noundef %i.ay) #29
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit29

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit29: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  resume { ptr, i32 } %i.ax

_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEcEET_S5_PKciiT0_.exit: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %bb.b, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit
  %.sroa.018.0 = phi ptr [ %i.av, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit ], [ %i.s, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i ], [ %i.e, %bb.b ]
  ret ptr %.sroa.018.0
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail13copy_noinlineIcPKcNS0_14basic_appenderIcEEEET1_T0_S8_S7_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #23 {
bb.a:
  %.not31.i.i = icmp eq ptr %0, %1
  br i1 %.not31.i.i, label %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit, label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.c = ptrtoint ptr %1 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.pre.i.i = load i64, ptr %i.a, align 8, !tbaa !148
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.e = phi i64 [ %.pre.i.i, %.lr.ph34.i.i ], [ %i.ak, %._crit_edge.i.i ] ; 3 uses
  %.02532.i.i = phi ptr [ %0, %.lr.ph34.i.i ], [ %i.al, %._crit_edge.i.i ] ; 9 uses
  %i.f = load i64, ptr %i.b, align 8, !tbaa !134
  %i.g = sub i64 %i.f, %i.e
  %i.h = ptrtoint ptr %.02532.i.i to i64          ; 2 uses
  %i.i = sub i64 %i.c, %i.h                       ; 4 uses
  %i.j = icmp ult i64 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !131
  %i.l = add i64 %i.i, %i.e
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.l), !inline_history !318
  %i.m = load i64, ptr %i.a, align 8, !tbaa !148  ; 2 uses
  %i.n = load i64, ptr %i.b, align 8, !tbaa !134
  %i.o = sub i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.o)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.027.i.i = phi i64 [ %i.m, %bb.c ], [ %i.e, %bb.b ] ; 3 uses
  %.026.i.i = phi i64 [ %i.p, %bb.c ], [ %i.i, %bb.b ] ; 13 uses
  %i.q = load ptr, ptr %2, align 8, !tbaa !133    ; 2 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %.027.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.026.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.d
  %min.iters.check = icmp ult i64 %.026.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.t = add i64 %.027.i.i, %i.r
  %i.u = sub i64 %i.h, %i.t
  %diff.check = icmp ugt i64 %i.u, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check7 = icmp ult i64 %.026.i.i, 32
  br i1 %min.iters.check7, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %.026.i.i, 28
  %n.vec = and i64 %.026.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load = load <16 x i8>, ptr %i.v, align 1, !tbaa !16
  %wide.load8 = load <16 x i8>, ptr %i.w, align 1, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <16 x i8> %wide.load, ptr %i.x, align 1, !tbaa !16
  store <16 x i8> %wide.load8, ptr %i.y, align 1, !tbaa !16
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !628

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.026.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !292

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec10 = and i64 %.026.i.i, -4                ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next13, %vec.epilog.vector.body ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %index11
  %wide.load12 = load <4 x i8>, ptr %i.aa, align 1, !tbaa !16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 %index11
  store <4 x i8> %wide.load12, ptr %i.ab, align 1, !tbaa !16
  %index.next13 = add nuw i64 %index11, 4         ; 2 uses
  %i.ac = icmp eq i64 %index.next13, %n.vec10
  br i1 %i.ac, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !629

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n14 = icmp eq i64 %.026.i.i, %n.vec10
  br i1 %cmp.n14, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec10, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.026.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.ag, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %.030.i.i.prol
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !16
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 %.030.i.i.prol
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !16
  %i.ag = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !630

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ag, %.lr.ph.i.i.prol ]
  %i.ah = sub i64 %.030.i.i.ph, %.026.i.i
  %i.ai = icmp ugt i64 %i.ah, -4
  br i1 %i.ai, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i = load i64, ptr %i.a, align 8, !tbaa !148
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.d
  %i.aj = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.027.i.i, %bb.d ]
  %i.ak = add i64 %i.aj, %.026.i.i                ; 2 uses
  store i64 %i.ak, ptr %i.a, align 8, !tbaa !148
  %i.al = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %.026.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.al, %1
  br i1 %.not.i.i, label %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit, label %bb.b, !llvm.loop !296

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.bb, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %.030.i.i
  %i.an = load i8, ptr %i.am, align 1, !tbaa !16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.s, i64 %.030.i.i
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !16
  %i.ap = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !16
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ap
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !16
  %i.at = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.at
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !16
  %i.ax = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ax
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !16
  %i.bb = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.bb, %.026.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !631

_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit: ; preds = %._crit_edge.i.i, %bb.a
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden ptr @_ZZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEENKUlS6_E1_clES6_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !632, !nonnull !341, !align !342
  %i.b = load i32, ptr %i.a, align 4, !tbaa !416  ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = shl nsw i32 %i.b, 3
  %i.d = lshr i32 539700480, %i.c
  %i.e = trunc i32 %i.d to i8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !148  ; 2 uses
  %i.h = add i64 %i.g, 1                          ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !134
  %i.k = icmp ugt i64 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !131
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.h), !inline_history !289
  %.pre.i.i = load i64, ptr %i.f, align 8, !tbaa !148 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.b, %bb.c
  %.pre-phi.i.i = phi i64 [ %i.h, %bb.b ], [ %.pre2.i.i, %bb.c ]
  %i.n = phi i64 [ %i.g, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.o = load ptr, ptr %1, align 8, !tbaa !133
  store i64 %.pre-phi.i.i, ptr %i.f, align 8, !tbaa !148
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n
  store i8 %i.e, ptr %i.p, align 1, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 13 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !148  ; 2 uses
  %i.s = add i64 %i.r, 1                          ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !134
  %i.v = icmp ugt i64 %i.s, %i.u
  br i1 %i.v, label %bb.e, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit8

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !131
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.s), !inline_history !289
  %.pre.i.i6 = load i64, ptr %i.q, align 8, !tbaa !148 ; 2 uses
  %.pre2.i.i7 = add i64 %.pre.i.i6, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit8

_ZN3fmt3v1214basic_appenderIcEaSEc.exit8:         ; preds = %bb.d, %bb.e
  %.pre-phi.i.i5 = phi i64 [ %i.s, %bb.d ], [ %.pre2.i.i7, %bb.e ]
  %i.y = phi i64 [ %i.r, %bb.d ], [ %.pre.i.i6, %bb.e ]
  %i.z = load ptr, ptr %1, align 8, !tbaa !133
  store i64 %.pre-phi.i.i5, ptr %i.q, align 8, !tbaa !148
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  store i8 48, ptr %i.aa, align 1, !tbaa !16
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !634, !nonnull !341
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !424, !range !365, !noundef !341
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.f, label %_ZN3fmt3v126detail17write_significandIcNS0_14basic_appenderIcEEEET0_S5_PKci.exit

bb.f:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !635, !nonnull !341
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !16
  %i.ai = load i64, ptr %i.q, align 8, !tbaa !148 ; 2 uses
  %i.aj = add i64 %i.ai, 1                        ; 3 uses
  %i.ak = load i64, ptr %i.t, align 8, !tbaa !134
  %i.al = icmp ugt i64 %i.aj, %i.ak
  br i1 %i.al, label %bb.g, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit13

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !131
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.aj), !inline_history !289
  %.pre.i.i11 = load i64, ptr %i.q, align 8, !tbaa !148 ; 2 uses
  %.pre2.i.i12 = add i64 %.pre.i.i11, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit13

_ZN3fmt3v1214basic_appenderIcEaSEc.exit13:        ; preds = %bb.f, %bb.g
  %.pre-phi.i.i10 = phi i64 [ %i.aj, %bb.f ], [ %.pre2.i.i12, %bb.g ]
  %i.ao = phi i64 [ %i.ai, %bb.f ], [ %.pre.i.i11, %bb.g ]
  %i.ap = load ptr, ptr %1, align 8, !tbaa !133
  store i64 %.pre-phi.i.i10, ptr %i.q, align 8, !tbaa !148
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  store i8 %i.ah, ptr %i.aq, align 1, !tbaa !16
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !636, !nonnull !341, !align !342
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3  ; 2 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit

.lr.ph.i:                                         ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit13
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.h

bb.h:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %.lr.ph.i
  %.04.i = phi i32 [ 0, %.lr.ph.i ], [ %i.be, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i ]
  %i.aw = load i64, ptr %i.q, align 8, !tbaa !148 ; 2 uses
  %i.ax = add i64 %i.aw, 1                        ; 3 uses
  %i.ay = load i64, ptr %i.t, align 8, !tbaa !134
  %i.az = icmp ugt i64 %i.ax, %i.ay
  br i1 %i.az, label %bb.i, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.i:                                             ; preds = %bb.h
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !131
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ax), !inline_history !444
  %.pre.i.i.i = load i64, ptr %i.q, align 8, !tbaa !148 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.i, %bb.h
  %.pre-phi.i.i.i = phi i64 [ %i.ax, %bb.h ], [ %.pre2.i.i.i, %bb.i ]
  %i.bb = phi i64 [ %i.aw, %bb.h ], [ %.pre.i.i.i, %bb.i ]
  %i.bc = load ptr, ptr %1, align 8, !tbaa !133
  store i64 %.pre-phi.i.i.i, ptr %i.q, align 8, !tbaa !148
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bb
  store i8 48, ptr %i.bd, align 1, !tbaa !16
  %i.be = add nuw nsw i32 %.04.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.be, %i.at
  br i1 %exitcond.not.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, label %bb.h, !llvm.loop !440

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit13
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !637, !nonnull !341, !align !363
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !495 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !638, !nonnull !341, !align !342
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !3  ; 2 uses
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds i8, ptr %i.bh, i64 %i.bl ; 2 uses
  %.not31.i.i.i = icmp eq i32 %i.bk, 0
  br i1 %.not31.i.i.i, label %_ZN3fmt3v126detail17write_significandIcNS0_14basic_appenderIcEEEET0_S5_PKci.exit, label %.lr.ph34.i.i.i

.lr.ph34.i.i.i:                                   ; preds = %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre.i.i.i14 = load i64, ptr %i.q, align 8, !tbaa !148
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge.i.i.i, %.lr.ph34.i.i.i
  %i.bp = phi i64 [ %.pre.i.i.i14, %.lr.ph34.i.i.i ], [ %i.cv, %._crit_edge.i.i.i ] ; 3 uses
  %.02532.i.i.i = phi ptr [ %i.bh, %.lr.ph34.i.i.i ], [ %i.cw, %._crit_edge.i.i.i ] ; 9 uses
  %i.bq = load i64, ptr %i.t, align 8, !tbaa !134
  %i.br = sub i64 %i.bq, %i.bp
  %i.bs = ptrtoint ptr %.02532.i.i.i to i64       ; 2 uses
  %i.bt = sub i64 %i.bn, %i.bs                    ; 4 uses
  %i.bu = icmp ult i64 %i.br, %i.bt
  br i1 %i.bu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bv = load ptr, ptr %i.bo, align 8, !tbaa !131
  %i.bw = add i64 %i.bt, %i.bp
  tail call void %i.bv(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.bw), !inline_history !606
  %i.bx = load i64, ptr %i.q, align 8, !tbaa !148 ; 2 uses
  %i.by = load i64, ptr %i.t, align 8, !tbaa !134
  %i.bz = sub i64 %i.by, %i.bx
  %i.ca = tail call i64 @llvm.umin.i64(i64 %i.bt, i64 %i.bz)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.027.i.i.i = phi i64 [ %i.bx, %bb.k ], [ %i.bp, %bb.j ] ; 3 uses
  %.026.i.i.i = phi i64 [ %i.ca, %bb.k ], [ %i.bt, %bb.j ] ; 13 uses
  %i.cb = load ptr, ptr %1, align 8, !tbaa !133   ; 2 uses
  %i.cc = ptrtoaddr ptr %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.027.i.i.i ; 7 uses
  %.not36.i.i.i = icmp eq i64 %.026.i.i.i, 0
  br i1 %.not36.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.l
  %min.iters.check = icmp ult i64 %.026.i.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ce = add i64 %.027.i.i.i, %i.cc
  %i.cf = sub i64 %i.bs, %i.ce
  %diff.check = icmp ugt i64 %i.cf, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check30 = icmp ult i64 %.026.i.i.i, 32
  br i1 %min.iters.check30, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %.026.i.i.i, 28
  %n.vec = and i64 %.026.i.i.i, -32               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %index ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %wide.load = load <16 x i8>, ptr %i.cg, align 1, !tbaa !16
  %wide.load31 = load <16 x i8>, ptr %i.ch, align 1, !tbaa !16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 %index ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store <16 x i8> %wide.load, ptr %i.ci, align 1, !tbaa !16
  store <16 x i8> %wide.load31, ptr %i.cj, align 1, !tbaa !16
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !639

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.026.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !292

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec33 = and i64 %.026.i.i.i, -4              ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index34 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next36, %vec.epilog.vector.body ] ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %index34
  %wide.load35 = load <4 x i8>, ptr %i.cl, align 1, !tbaa !16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cd, i64 %index34
  store <4 x i8> %wide.load35, ptr %i.cm, align 1, !tbaa !16
  %index.next36 = add nuw i64 %index34, 4         ; 2 uses
  %i.cn = icmp eq i64 %index.next36, %n.vec33
  br i1 %i.cn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !640

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n37 = icmp eq i64 %.026.i.i.i, %n.vec33
  br i1 %cmp.n37, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec33, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.026.i.i.i, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.030.i.i.i.prol = phi i64 [ %i.cr, %.lr.ph.i.i.i.prol ], [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.co = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %.030.i.i.i.prol
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !16
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.030.i.i.i.prol
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !16
  %i.cr = add nuw i64 %.030.i.i.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !641

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.030.i.i.i.unr = phi i64 [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.cr, %.lr.ph.i.i.i.prol ]
  %i.cs = sub i64 %.030.i.i.i.ph, %.026.i.i.i
  %i.ct = icmp ugt i64 %i.cs, -4
  br i1 %i.ct, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i.i = load i64, ptr %i.q, align 8, !tbaa !148
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.l
  %i.cu = phi i64 [ %.pre37.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.027.i.i.i, %bb.l ]
  %i.cv = add i64 %i.cu, %.026.i.i.i              ; 2 uses
  store i64 %i.cv, ptr %i.q, align 8, !tbaa !148
  %i.cw = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %.026.i.i.i ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cw, %i.bm
  br i1 %.not.i.i.i, label %_ZN3fmt3v126detail17write_significandIcNS0_14basic_appenderIcEEEET0_S5_PKci.exit, label %bb.j, !llvm.loop !296

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.030.i.i.i = phi i64 [ %i.dm, %.lr.ph.i.i.i ], [ %.030.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %.030.i.i.i
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.030.i.i.i
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !16
  %i.da = add nuw i64 %.030.i.i.i, 1              ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.da
  store i8 %i.dc, ptr %i.dd, align 1, !tbaa !16
  %i.de = add nuw i64 %.030.i.i.i, 2              ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !16
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.de
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !16
  %i.di = add nuw i64 %.030.i.i.i, 3              ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.di
  store i8 %i.dk, ptr %i.dl, align 1, !tbaa !16
  %i.dm = add nuw i64 %.030.i.i.i, 4              ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.dm, %.026.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !642

_ZN3fmt3v126detail17write_significandIcNS0_14basic_appenderIcEEEET0_S5_PKci.exit: ; preds = %._crit_edge.i.i.i, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit8
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_9write_ptrIcS5_mEET0_S7_T1_PKNS0_12format_specsEEUlS5_E_EES8_S8_RSA_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(12) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !316
  %i.d = zext i32 %i.c to i64
  %i.e = tail call i64 @llvm.usub.sat.i64(i64 %i.d, i64 %3) ; 4 uses
  %i.f = load i32, ptr %1, align 4, !tbaa !265    ; 2 uses
  %i.g = lshr i32 %i.f, 3
  %i.h = and i32 %i.g, 7
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr @.str.42, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !16
  %i.l = sext i8 %i.k to i64
  %i.m = and i64 %i.l, 4294967295
  %i.n = lshr i64 %i.e, %i.m                      ; 4 uses
  %i.o = sub nsw i64 %i.e, %i.n
  %i.p = lshr i32 %i.f, 15
  %i.q = and i32 %i.p, 7
  %i.r = zext nneg i32 %i.q to i64
  %i.s = mul nuw nsw i64 %i.e, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !148
  %i.v = add i64 %i.u, %2
  %i.w = add i64 %i.v, %i.s                       ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !134
  %i.z = icmp ugt i64 %i.w, %i.y
  br i1 %i.z, label %bb.b, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.b:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !131
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.w), !inline_history !317
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.a, %bb.b
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.ac = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %0, i64 noundef %i.n, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %.sroa.09.0 = phi ptr [ %i.ac, %bb.c ], [ %0, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit ] ; 13 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 8 ; 9 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !148 ; 2 uses
  %i.af = add i64 %i.ae, 1                        ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 16 ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !134
  %i.ai = icmp ugt i64 %i.af, %i.ah
  br i1 %i.ai, label %bb.e, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !131
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0, i64 noundef %i.af), !inline_history !643
  %.pre.i.i.i = load i64, ptr %i.ad, align 8, !tbaa !148 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.e, %bb.d
  %.pre-phi.i.i.i = phi i64 [ %i.af, %bb.d ], [ %.pre2.i.i.i, %bb.e ]
  %i.al = phi i64 [ %i.ae, %bb.d ], [ %.pre.i.i.i, %bb.e ]
  %i.am = load ptr, ptr %.sroa.09.0, align 8, !tbaa !133
  store i64 %.pre-phi.i.i.i, ptr %i.ad, align 8, !tbaa !148
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al
  store i8 48, ptr %i.an, align 1, !tbaa !16
  %i.ao = load i64, ptr %i.ad, align 8, !tbaa !148 ; 2 uses
  %i.ap = add i64 %i.ao, 1                        ; 3 uses
  %i.aq = load i64, ptr %i.ag, align 8, !tbaa !134
  %i.ar = icmp ugt i64 %i.ap, %i.aq
  br i1 %i.ar, label %bb.f, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit6.i

bb.f:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !131
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0, i64 noundef %i.ap), !inline_history !643
  %.pre.i.i4.i = load i64, ptr %i.ad, align 8, !tbaa !148 ; 2 uses
  %.pre2.i.i5.i = add i64 %.pre.i.i4.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit6.i
end_hunk_10
begin_hunk_11_@_ZN3fmt3v126detail15format_hexfloatIdTnNSt9enable_ifIXntsr16is_double_doubleIT_EE5valueEiE4typeELi0EEEvS4_NS0_12format_specsERNS1_6bufferIcEE:bb.a
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = sub nuw nsw i32 52, %i.m
  %i.s = zext nneg i32 %i.r to i64
  %i.t = shl nuw nsw i64 1, %i.s                  ; 2 uses
  %i.u = add nuw nsw i64 %i.t, %storemerge.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = and i64 %i.u, %i.v
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.sroa.074.1 = phi i64 [ %storemerge.i.i, %bb.a ], [ %storemerge.i.i, %bb.b ], [ %i.w, %bb.c ]
  %.0 = phi i32 [ 13, %bb.a ], [ %.sroa.6.8.extract.trunc, %bb.b ], [ %.sroa.6.8.extract.trunc, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 48, i64 16, i1 false)
  %i.x = and i32 %.sroa.081.0.extract.trunc, 4096
  %.not88 = icmp eq i32 %i.x, 0                   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %.str.39..str.40.i.i = select i1 %.not88, ptr @.str.40, ptr @.str.39
  br label %.split.i.i

.split.i.i:                                       ; preds = %.split.i.i, %bb.d
  %.012.i.i = phi i64 [ %i.ad, %.split.i.i ], [ %.sroa.074.1, %bb.d ] ; 2 uses
  %.0.i.i38 = phi ptr [ %i.ac, %.split.i.i ], [ %i.y, %bb.d ]
  %i.z = and i64 %.012.i.i, 15
  %i.aa = getelementptr inbounds nuw i8, ptr %.str.39..str.40.i.i, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !16
  %i.ac = getelementptr inbounds i8, ptr %.0.i.i38, i64 -1 ; 2 uses
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !16
  %i.ad = lshr i64 %.012.i.i, 4                   ; 2 uses
  %.not.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i, label %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit.preheader, label %.split.i.i, !llvm.loop !349

_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit.preheader: ; preds = %.split.i.i
  %.not8990 = icmp eq i32 %.0, 0
  br i1 %.not8990, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit.preheader, %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit
  %.191 = phi i32 [ %i.ai, %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit ], [ %.0, %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit.preheader ] ; 3 uses
  %i.ae = zext nneg i32 %.191 to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !16
  %i.ah = icmp eq i8 %i.ag, 48
  br i1 %i.ah, label %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit, label %.critedge

_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit: ; preds = %.lr.ph
  %i.ai = add nsw i32 %.191, -1                   ; 2 uses
  %.not89 = icmp eq i32 %i.ai, 0
  br i1 %.not89, label %.critedge, label %.lr.ph, !llvm.loop !705

.critedge:                                        ; preds = %.lr.ph, %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit, %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit.preheader
  %.1.lcssa = phi i32 [ 0, %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit.preheader ], [ 0, %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit ], [ %.191, %.lr.ph ] ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 27 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !148 ; 2 uses
  %i.al = add i64 %i.ak, 1                        ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !134
  %i.ao = icmp ugt i64 %i.al, %i.an
  br i1 %i.ao, label %bb.e, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit

bb.e:                                             ; preds = %.critedge
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !131
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.al), !inline_history !500
  %.pre.i = load i64, ptr %i.aj, align 8, !tbaa !148 ; 2 uses
  %.pre2.i = add i64 %.pre.i, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit:  ; preds = %.critedge, %bb.e
  %.pre-phi.i = phi i64 [ %i.al, %.critedge ], [ %.pre2.i, %bb.e ]
  %i.ar = phi i64 [ %i.ak, %.critedge ], [ %.pre.i, %bb.e ]
  %i.as = load ptr, ptr %3, align 8, !tbaa !133
  store i64 %.pre-phi.i, ptr %i.aj, align 8, !tbaa !148
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ar
  store i8 48, ptr %i.at, align 1, !tbaa !16
  %i.au = select i1 %.not88, i8 120, i8 88
  %i.av = load i64, ptr %i.aj, align 8, !tbaa !148 ; 2 uses
  %i.aw = add i64 %i.av, 1                        ; 3 uses
  %i.ax = load i64, ptr %i.am, align 8, !tbaa !134
  %i.ay = icmp ugt i64 %i.aw, %i.ax
  br i1 %i.ay, label %bb.f, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit42

bb.f:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !131
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.aw), !inline_history !500
  %.pre.i40 = load i64, ptr %i.aj, align 8, !tbaa !148 ; 2 uses
  %.pre2.i41 = add i64 %.pre.i40, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit42

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit42: ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit, %bb.f
  %.pre-phi.i39 = phi i64 [ %i.aw, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit ], [ %.pre2.i41, %bb.f ]
  %i.bb = phi i64 [ %i.av, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit ], [ %.pre.i40, %bb.f ]
  %i.bc = load ptr, ptr %3, align 8, !tbaa !133
  store i64 %.pre-phi.i39, ptr %i.aj, align 8, !tbaa !148
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bb
  store i8 %i.au, ptr %i.bd, align 1, !tbaa !16
  %i.be = load i64, ptr %i.aj, align 8, !tbaa !148 ; 2 uses
  %i.bf = add i64 %i.be, 1                        ; 3 uses
  %i.bg = load i64, ptr %i.am, align 8, !tbaa !134
  %i.bh = icmp ugt i64 %i.bf, %i.bg
  br i1 %i.bh, label %bb.g, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit46

bb.g:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit42
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !131
  tail call void %i.bj(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.bf), !inline_history !500
  %.pre.i44 = load i64, ptr %i.aj, align 8, !tbaa !148 ; 2 uses
  %.pre2.i45 = add i64 %.pre.i44, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit46

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit46: ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit42, %bb.g
  %.pre-phi.i43 = phi i64 [ %i.bf, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit42 ], [ %.pre2.i45, %bb.g ]
  %i.bk = phi i64 [ %i.be, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit42 ], [ %.pre.i44, %bb.g ]
  %i.bl = load i8, ptr %i.a, align 16, !tbaa !16
  %i.bm = load ptr, ptr %3, align 8, !tbaa !133
  store i64 %.pre-phi.i43, ptr %i.aj, align 8, !tbaa !148
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bk
  store i8 %i.bl, ptr %i.bn, align 1, !tbaa !16
  %i.bo = and i32 %.sroa.081.0.extract.trunc, 8192
  %i.bp = or i32 %.1.lcssa, %i.bo
  %or.cond = icmp ne i32 %i.bp, 0
  %i.bq = icmp slt i32 %.1.lcssa, %.sroa.6.8.extract.trunc ; 2 uses
  %or.cond37 = or i1 %i.bq, %or.cond
  br i1 %or.cond37, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit46
  %i.br = load i64, ptr %i.aj, align 8, !tbaa !148 ; 2 uses
  %i.bs = add i64 %i.br, 1                        ; 3 uses
  %i.bt = load i64, ptr %i.am, align 8, !tbaa !134
  %i.bu = icmp ugt i64 %i.bs, %i.bt
  br i1 %i.bu, label %bb.i, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit50

bb.i:                                             ; preds = %bb.h
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !131
  tail call void %i.bw(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.bs), !inline_history !500
  %.pre.i48 = load i64, ptr %i.aj, align 8, !tbaa !148 ; 2 uses
  %.pre2.i49 = add i64 %.pre.i48, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit50

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit50: ; preds = %bb.h, %bb.i
  %.pre-phi.i47 = phi i64 [ %i.bs, %bb.h ], [ %.pre2.i49, %bb.i ]
  %i.bx = phi i64 [ %i.br, %bb.h ], [ %.pre.i48, %bb.i ]
  %i.by = load ptr, ptr %3, align 8, !tbaa !133
  store i64 %.pre-phi.i47, ptr %i.aj, align 8, !tbaa !148
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bx
  store i8 46, ptr %i.bz, align 1, !tbaa !16
  br label %bb.j

bb.j:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit46, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit50
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.cb = zext nneg i32 %.1.lcssa to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cb ; 2 uses
  %.not31.i = icmp eq i32 %.1.lcssa, 0
  br i1 %.not31.i, label %_ZN3fmt3v126detail6bufferIcE6appendIcEEvPKT_S7_.exit, label %.lr.ph34.i

.lr.ph34.i:                                       ; preds = %bb.j
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i51 = load i64, ptr %i.aj, align 8, !tbaa !148
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i, %.lr.ph34.i
  %i.cf = phi i64 [ %.pre.i51, %.lr.ph34.i ], [ %i.dl, %._crit_edge.i ] ; 3 uses
  %.02532.i = phi ptr [ %i.ca, %.lr.ph34.i ], [ %i.dm, %._crit_edge.i ] ; 9 uses
  %i.cg = load i64, ptr %i.am, align 8, !tbaa !134
  %i.ch = sub i64 %i.cg, %i.cf
  %i.ci = ptrtoint ptr %.02532.i to i64           ; 2 uses
  %i.cj = sub i64 %i.cd, %i.ci                    ; 4 uses
  %i.ck = icmp ult i64 %i.ch, %i.cj
  br i1 %i.ck, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cl = load ptr, ptr %i.ce, align 8, !tbaa !131
  %i.cm = add i64 %i.cj, %i.cf
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.cm), !inline_history !501
  %i.cn = load i64, ptr %i.aj, align 8, !tbaa !148 ; 2 uses
  %i.co = load i64, ptr %i.am, align 8, !tbaa !134
  %i.cp = sub i64 %i.co, %i.cn
  %i.cq = call i64 @llvm.umin.i64(i64 %i.cj, i64 %i.cp)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.027.i = phi i64 [ %i.cn, %bb.l ], [ %i.cf, %bb.k ] ; 3 uses
  %.026.i = phi i64 [ %i.cq, %bb.l ], [ %i.cj, %bb.k ] ; 13 uses
  %i.cr = load ptr, ptr %3, align 8, !tbaa !133   ; 2 uses
  %i.cs = ptrtoaddr ptr %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.027.i ; 7 uses
  %.not36.i = icmp eq i64 %.026.i, 0
  br i1 %.not36.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %bb.m
  %min.iters.check = icmp ult i64 %.026.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cu = add i64 %.027.i, %i.cs
  %i.cv = sub i64 %i.ci, %i.cu
  %diff.check = icmp ugt i64 %i.cv, -32
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check117 = icmp ult i64 %.026.i, 32
  br i1 %min.iters.check117, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %.026.i, 28
  %n.vec = and i64 %.026.i, -32                   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.02532.i, i64 %index ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %wide.load = load <16 x i8>, ptr %i.cw, align 1, !tbaa !16
  %wide.load118 = load <16 x i8>, ptr %i.cx, align 1, !tbaa !16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 %index ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store <16 x i8> %wide.load, ptr %i.cy, align 1, !tbaa !16
  store <16 x i8> %wide.load118, ptr %i.cz, align 1, !tbaa !16
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.da = icmp eq i64 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !706

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.026.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !292

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec120 = and i64 %.026.i, -4                 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index121 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next123, %vec.epilog.vector.body ] ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.02532.i, i64 %index121
  %wide.load122 = load <4 x i8>, ptr %i.db, align 1, !tbaa !16
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ct, i64 %index121
  store <4 x i8> %wide.load122, ptr %i.dc, align 1, !tbaa !16
  %index.next123 = add nuw i64 %index121, 4       ; 2 uses
  %i.dd = icmp eq i64 %index.next123, %n.vec120
  br i1 %i.dd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !707

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n124 = icmp eq i64 %.026.i, %n.vec120
  br i1 %cmp.n124, label %._crit_edge.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec120, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.026.i, 3                  ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.030.i.prol = phi i64 [ %i.dh, %.lr.ph.i.prol ], [ %.030.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.de = getelementptr inbounds nuw i8, ptr %.02532.i, i64 %.030.i.prol
  %i.df = load i8, ptr %i.de, align 1, !tbaa !16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.030.i.prol
  store i8 %i.df, ptr %i.dg, align 1, !tbaa !16
  %i.dh = add nuw i64 %.030.i.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !708

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.030.i.unr = phi i64 [ %.030.i.ph, %.lr.ph.i.preheader ], [ %i.dh, %.lr.ph.i.prol ]
  %i.di = sub i64 %.030.i.ph, %.026.i
  %i.dj = icmp ugt i64 %i.di, -4
  br i1 %i.dj, label %._crit_edge.loopexit.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i = load i64, ptr %i.aj, align 8, !tbaa !148
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.m
  %i.dk = phi i64 [ %.pre37.i, %._crit_edge.loopexit.i ], [ %.027.i, %bb.m ]
  %i.dl = add i64 %i.dk, %.026.i                  ; 2 uses
  store i64 %i.dl, ptr %i.aj, align 8, !tbaa !148
  %i.dm = getelementptr inbounds nuw i8, ptr %.02532.i, i64 %.026.i ; 2 uses
  %.not.i = icmp eq ptr %i.dm, %i.cc
  br i1 %.not.i, label %_ZN3fmt3v126detail6bufferIcE6appendIcEEvPKT_S7_.exit, label %bb.k, !llvm.loop !296

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.030.i = phi i64 [ %i.ec, %.lr.ph.i ], [ %.030.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.02532.i, i64 %.030.i
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !16
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.030.i
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !16
  %i.dq = add nuw i64 %.030.i, 1                  ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.02532.i, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !16
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.dq
  store i8 %i.ds, ptr %i.dt, align 1, !tbaa !16
  %i.du = add nuw i64 %.030.i, 2                  ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.02532.i, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !16
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.du
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !16
  %i.dy = add nuw i64 %.030.i, 3                  ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.02532.i, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !16
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.dy
  store i8 %i.ea, ptr %i.eb, align 1, !tbaa !16
  %i.ec = add nuw i64 %.030.i, 4                  ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.ec, %.026.i
  br i1 %exitcond.not.i.3, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !709

_ZN3fmt3v126detail6bufferIcE6appendIcEEvPKT_S7_.exit: ; preds = %._crit_edge.i, %bb.j
  br i1 %i.bq, label %.lr.ph94, label %._crit_edge

.lr.ph94:                                         ; preds = %_ZN3fmt3v126detail6bufferIcE6appendIcEEvPKT_S7_.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph94, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit55
  %.293 = phi i32 [ %.1.lcssa, %.lr.ph94 ], [ %i.em, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit55 ]
  %i.ee = load i64, ptr %i.aj, align 8, !tbaa !148 ; 2 uses
  %i.ef = add i64 %i.ee, 1                        ; 3 uses
  %i.eg = load i64, ptr %i.am, align 8, !tbaa !134
  %i.eh = icmp ugt i64 %i.ef, %i.eg
  br i1 %i.eh, label %bb.o, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit55

bb.o:                                             ; preds = %bb.n
  %i.ei = load ptr, ptr %i.ed, align 8, !tbaa !131
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ef), !inline_history !500
  %.pre.i53 = load i64, ptr %i.aj, align 8, !tbaa !148 ; 2 uses
  %.pre2.i54 = add i64 %.pre.i53, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit55

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit55: ; preds = %bb.n, %bb.o
  %.pre-phi.i52 = phi i64 [ %i.ef, %bb.n ], [ %.pre2.i54, %bb.o ]
  %i.ej = phi i64 [ %i.ee, %bb.n ], [ %.pre.i53, %bb.o ]
  %i.ek = load ptr, ptr %3, align 8, !tbaa !133
  store i64 %.pre-phi.i52, ptr %i.aj, align 8, !tbaa !148
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ej
  store i8 48, ptr %i.el, align 1, !tbaa !16
  %i.em = add i32 %.293, 1                        ; 2 uses
  %exitcond.not = icmp eq i32 %i.em, %.sroa.6.8.extract.trunc
  br i1 %exitcond.not, label %._crit_edge, label %bb.n, !llvm.loop !710

._crit_edge:                                      ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit55, %_ZN3fmt3v126detail6bufferIcE6appendIcEEvPKT_S7_.exit
  %i.en = select i1 %.not88, i8 112, i8 80
  %i.eo = load i64, ptr %i.aj, align 8, !tbaa !148 ; 2 uses
  %i.ep = add i64 %i.eo, 1                        ; 3 uses
  %i.eq = load i64, ptr %i.am, align 8, !tbaa !134
  %i.er = icmp ugt i64 %i.ep, %i.eq
  br i1 %i.er, label %bb.p, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit59

bb.p:                                             ; preds = %._crit_edge
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !131
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ep), !inline_history !500
  %.pre.i57 = load i64, ptr %i.aj, align 8, !tbaa !148 ; 2 uses
  %.pre2.i58 = add i64 %.pre.i57, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit59

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit59: ; preds = %._crit_edge, %bb.p
  %.pre-phi.i56 = phi i64 [ %i.ep, %._crit_edge ], [ %.pre2.i58, %bb.p ]
  %i.eu = phi i64 [ %i.eo, %._crit_edge ], [ %.pre.i57, %bb.p ]
  %i.ev = load ptr, ptr %3, align 8, !tbaa !133
  store i64 %.pre-phi.i56, ptr %i.aj, align 8, !tbaa !148
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.eu
  store i8 %i.en, ptr %i.ew, align 1, !tbaa !16
  %i.ex = icmp slt i32 %i.j, 0
  %i.ey = load i64, ptr %i.aj, align 8, !tbaa !148 ; 3 uses
  %i.ez = add i64 %i.ey, 1                        ; 5 uses
  %i.fa = load i64, ptr %i.am, align 8, !tbaa !134
  %i.fb = icmp ugt i64 %i.ez, %i.fa               ; 2 uses
  br i1 %i.ex, label %bb.q, label %bb.s

bb.q:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit59
  br i1 %i.fb, label %bb.r, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit63

bb.r:                                             ; preds = %bb.q
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !131
  call void %i.fd(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ez), !inline_history !500
  %.pre.i61 = load i64, ptr %i.aj, align 8, !tbaa !148 ; 2 uses
  %.pre2.i62 = add i64 %.pre.i61, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit63

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit63: ; preds = %bb.q, %bb.r
  %.pre-phi.i60 = phi i64 [ %i.ez, %bb.q ], [ %.pre2.i62, %bb.r ]
  %i.fe = phi i64 [ %i.ey, %bb.q ], [ %.pre.i61, %bb.r ]
  %i.ff = load ptr, ptr %3, align 8, !tbaa !133
  store i64 %.pre-phi.i60, ptr %i.aj, align 8, !tbaa !148
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fe
  store i8 45, ptr %i.fg, align 1, !tbaa !16
  %i.fh = sub nsw i32 0, %i.j
  br label %bb.u

bb.s:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit59
  br i1 %i.fb, label %bb.t, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit67

end_hunk_11
begin_hunk_12_@_ZZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEENKUlS6_E1_clES6_:bb.a

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !131
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.s), !inline_history !289
  %.pre.i.i6 = load i64, ptr %i.q, align 8, !tbaa !148 ; 2 uses
  %.pre2.i.i7 = add i64 %.pre.i.i6, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit8

_ZN3fmt3v1214basic_appenderIcEaSEc.exit8:         ; preds = %bb.d, %bb.e
  %.pre-phi.i.i5 = phi i64 [ %i.s, %bb.d ], [ %.pre2.i.i7, %bb.e ]
  %i.y = phi i64 [ %i.r, %bb.d ], [ %.pre.i.i6, %bb.e ]
  %i.z = load ptr, ptr %1, align 8, !tbaa !133
  store i64 %.pre-phi.i.i5, ptr %i.q, align 8, !tbaa !148
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  store i8 48, ptr %i.aa, align 1, !tbaa !16
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !770, !nonnull !341
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !424, !range !365, !noundef !341
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !771, !nonnull !341
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !16
  %i.ai = load i64, ptr %i.q, align 8, !tbaa !148 ; 2 uses
  %i.aj = add i64 %i.ai, 1                        ; 3 uses
  %i.ak = load i64, ptr %i.t, align 8, !tbaa !134
  %i.al = icmp ugt i64 %i.aj, %i.ak
  br i1 %i.al, label %bb.g, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit13

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !131
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.aj), !inline_history !289
  %.pre.i.i11 = load i64, ptr %i.q, align 8, !tbaa !148 ; 2 uses
  %.pre2.i.i12 = add i64 %.pre.i.i11, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit13

_ZN3fmt3v1214basic_appenderIcEaSEc.exit13:        ; preds = %bb.f, %bb.g
  %.pre-phi.i.i10 = phi i64 [ %i.aj, %bb.f ], [ %.pre2.i.i12, %bb.g ]
  %i.ao = phi i64 [ %i.ai, %bb.f ], [ %.pre.i.i11, %bb.g ]
  %i.ap = load ptr, ptr %1, align 8, !tbaa !133
  store i64 %.pre-phi.i.i10, ptr %i.q, align 8, !tbaa !148
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  store i8 %i.ah, ptr %i.aq, align 1, !tbaa !16
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !772, !nonnull !341, !align !342
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3  ; 2 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit

.lr.ph.i:                                         ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit13
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.h

bb.h:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %.lr.ph.i
  %.04.i = phi i32 [ 0, %.lr.ph.i ], [ %i.be, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i ]
  %i.aw = load i64, ptr %i.q, align 8, !tbaa !148 ; 2 uses
  %i.ax = add i64 %i.aw, 1                        ; 3 uses
  %i.ay = load i64, ptr %i.t, align 8, !tbaa !134
  %i.az = icmp ugt i64 %i.ax, %i.ay
  br i1 %i.az, label %bb.i, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.i:                                             ; preds = %bb.h
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !131
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ax), !inline_history !444
  %.pre.i.i.i = load i64, ptr %i.q, align 8, !tbaa !148 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.i, %bb.h
  %.pre-phi.i.i.i = phi i64 [ %i.ax, %bb.h ], [ %.pre2.i.i.i, %bb.i ]
  %i.bb = phi i64 [ %i.aw, %bb.h ], [ %.pre.i.i.i, %bb.i ]
  %i.bc = load ptr, ptr %1, align 8, !tbaa !133
  store i64 %.pre-phi.i.i.i, ptr %i.q, align 8, !tbaa !148
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bb
  store i8 48, ptr %i.bd, align 1, !tbaa !16
  %i.be = add nuw nsw i32 %.04.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.be, %i.at
  br i1 %exitcond.not.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, label %bb.h, !llvm.loop !440

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit13
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !773, !nonnull !341, !align !363
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !472
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !774, !nonnull !341, !align !342
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !3
  %i.bl = tail call ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr nonnull %1, i64 noundef %i.bh, i32 noundef %i.bk)
  br label %bb.j

bb.j:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit8, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit
  %.sroa.03.0 = phi ptr [ %i.bl, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit ], [ %1, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit8 ]
  ret ptr %.sroa.03.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsE(ptr %0, ptr %1, i64 %2, ptr noundef nonnull align 4 dereferenceable(16) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.fmt::v12::basic_string_view", align 8 ; 4 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %5 = alloca %class.anon.83, align 8             ; 6 uses
  %6 = alloca %class.anon.84, align 8             ; 6 uses
  store ptr %1, ptr %4, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %2, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.f = load i32, ptr %3, align 4, !tbaa !265
  %i.g = and i32 %i.f, 7
  %i.h = icmp eq i32 %i.g, 1                      ; 3 uses
  %i.i = zext i1 %i.h to i8
  store i8 %i.i, ptr %i.a, align 1, !tbaa !424
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !267  ; 3 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !316
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  br label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !148
  %i.r = add i64 %i.q, %2                         ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !134
  %i.u = icmp ugt i64 %i.r, %i.t
  br i1 %i.u, label %bb.d, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !131
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.r), !inline_history !317
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.c, %bb.d
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.x = tail call ptr @_ZN3fmt3v126detail20write_escaped_stringIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EE(ptr nonnull %0, ptr %1, i64 %2)
  br label %_ZN3fmt3v126detail4copyIccNS0_14basic_appenderIcEEEET1_NS0_17basic_string_viewIT0_EES5_.exit

bb.f:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  %.not31.i.i.i = icmp samesign eq i64 %2, 0
  br i1 %.not31.i.i.i, label %_ZN3fmt3v126detail4copyIccNS0_14basic_appenderIcEEEET1_NS0_17basic_string_viewIT0_EES5_.exit, label %.lr.ph34.i.i.i

.lr.ph34.i.i.i:                                   ; preds = %bb.f
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre.i.i.i = load i64, ptr %i.p, align 8, !tbaa !148
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.i, %.lr.ph34.i.i.i
  %i.ab = phi i64 [ %.pre.i.i.i, %.lr.ph34.i.i.i ], [ %i.bh, %._crit_edge.i.i.i ] ; 3 uses
  %.02532.i.i.i = phi ptr [ %1, %.lr.ph34.i.i.i ], [ %i.bi, %._crit_edge.i.i.i ] ; 9 uses
  %i.ac = load i64, ptr %i.s, align 8, !tbaa !134
  %i.ad = sub i64 %i.ac, %i.ab
  %i.ae = ptrtoint ptr %.02532.i.i.i to i64       ; 2 uses
  %i.af = sub i64 %i.z, %i.ae                     ; 4 uses
  %i.ag = icmp ult i64 %i.ad, %i.af
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !131
  %i.ai = add i64 %i.af, %i.ab
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ai), !inline_history !775
  %i.aj = load i64, ptr %i.p, align 8, !tbaa !148 ; 2 uses
  %i.ak = load i64, ptr %i.s, align 8, !tbaa !134
  %i.al = sub i64 %i.ak, %i.aj
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.af, i64 %i.al)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.027.i.i.i = phi i64 [ %i.aj, %bb.h ], [ %i.ab, %bb.g ] ; 3 uses
  %.026.i.i.i = phi i64 [ %i.am, %bb.h ], [ %i.af, %bb.g ] ; 13 uses
  %i.an = load ptr, ptr %0, align 8, !tbaa !133   ; 2 uses
  %i.ao = ptrtoaddr ptr %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %.027.i.i.i ; 7 uses
  %.not36.i.i.i = icmp eq i64 %.026.i.i.i, 0
  br i1 %.not36.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.i
  %min.iters.check = icmp ult i64 %.026.i.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.aq = add i64 %.027.i.i.i, %i.ao
  %i.ar = sub i64 %i.ae, %i.aq
  %diff.check = icmp ugt i64 %i.ar, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check26 = icmp ult i64 %.026.i.i.i, 32
  br i1 %min.iters.check26, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %.026.i.i.i, 28
  %n.vec = and i64 %.026.i.i.i, -32               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %index ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %wide.load = load <16 x i8>, ptr %i.as, align 1, !tbaa !16
  %wide.load27 = load <16 x i8>, ptr %i.at, align 1, !tbaa !16
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store <16 x i8> %wide.load, ptr %i.au, align 1, !tbaa !16
  store <16 x i8> %wide.load27, ptr %i.av, align 1, !tbaa !16
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !776

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.026.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !292

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec29 = and i64 %.026.i.i.i, -4              ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index30 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next32, %vec.epilog.vector.body ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %index30
  %wide.load31 = load <4 x i8>, ptr %i.ax, align 1, !tbaa !16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 %index30
  store <4 x i8> %wide.load31, ptr %i.ay, align 1, !tbaa !16
  %index.next32 = add nuw i64 %index30, 4         ; 2 uses
  %i.az = icmp eq i64 %index.next32, %n.vec29
  br i1 %i.az, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !777

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n33 = icmp eq i64 %.026.i.i.i, %n.vec29
  br i1 %cmp.n33, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec29, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.026.i.i.i, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.030.i.i.i.prol = phi i64 [ %i.bd, %.lr.ph.i.i.i.prol ], [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %.030.i.i.i.prol
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.030.i.i.i.prol
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !16
  %i.bd = add nuw i64 %.030.i.i.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !778

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.030.i.i.i.unr = phi i64 [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.bd, %.lr.ph.i.i.i.prol ]
  %i.be = sub i64 %.030.i.i.i.ph, %.026.i.i.i
  %i.bf = icmp ugt i64 %i.be, -4
  br i1 %i.bf, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i.i = load i64, ptr %i.p, align 8, !tbaa !148
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.i
  %i.bg = phi i64 [ %.pre37.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.027.i.i.i, %bb.i ]
  %i.bh = add i64 %i.bg, %.026.i.i.i              ; 2 uses
  store i64 %i.bh, ptr %i.p, align 8, !tbaa !148
  %i.bi = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %.026.i.i.i ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bi, %i.y
  br i1 %.not.i.i.i, label %_ZN3fmt3v126detail4copyIccNS0_14basic_appenderIcEEEET1_NS0_17basic_string_viewIT0_EES5_.exit, label %bb.g, !llvm.loop !296

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.030.i.i.i = phi i64 [ %i.by, %.lr.ph.i.i.i ], [ %.030.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %.030.i.i.i
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.030.i.i.i
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !16
  %i.bm = add nuw i64 %.030.i.i.i, 1              ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bm
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !16
  %i.bq = add nuw i64 %.030.i.i.i, 2              ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bq
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !16
  %i.bu = add nuw i64 %.030.i.i.i, 3              ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bu
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !16
  %i.by = add nuw i64 %.030.i.i.i, 4              ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.by, %.026.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !779

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.bz = zext nneg i32 %i.k to i64
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.j
  %i.ca = phi i64 [ %i.bz, %bb.j ], [ -1, %.thread ]
  store i64 %i.ca, ptr %i.b, align 8, !tbaa !136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  %i.cb = icmp ne i32 %i.k, 0
  %narrow = and i1 %i.h, %i.cb
  %.sink = zext i1 %narrow to i64                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  store i64 %.sink, ptr %i.c, align 8, !tbaa !136
  store i64 %.sink, ptr %i.d, align 8, !tbaa !136
  store ptr %i.a, ptr %5, align 8, !tbaa !425
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.c, ptr %i.cc, align 8, !tbaa !780
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.b, ptr %i.cd, align 8, !tbaa !780
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.d, ptr %i.ce, align 8, !tbaa !780
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %4, ptr %i.cf, align 8, !tbaa !782
  call void @_ZN3fmt3v126detail18for_each_codepointIZNS1_5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEEUljNSB_IcEEE_EEvSG_S7_(ptr %1, i64 %2, ptr noundef nonnull byval(%class.anon.83) align 8 %5)
  %i.cg = load i64, ptr %i.d, align 8, !tbaa !136 ; 2 uses
  %i.ch = load i64, ptr %i.c, align 8, !tbaa !136
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.ci = load i8, ptr %i.a, align 1, !tbaa !424, !range !365, !noundef !341
  store i8 %i.ci, ptr %6, align 8, !tbaa !784
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.cg, ptr %i.cj, align 8, !tbaa !786
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !787
  %i.cl = call ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEEZNS1_5writeIcS5_TnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEEUlS5_E_EET1_SI_SG_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 noundef %i.cg, i64 noundef %i.ch, ptr noundef nonnull align 8 dereferenceable(32) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  br label %_ZN3fmt3v126detail4copyIccNS0_14basic_appenderIcEEEET1_NS0_17basic_string_viewIT0_EES5_.exit

_ZN3fmt3v126detail4copyIccNS0_14basic_appenderIcEEEET1_NS0_17basic_string_viewIT0_EES5_.exit: ; preds = %._crit_edge.i.i.i, %bb.f, %bb.e, %bb.k
  %.sroa.019.1 = phi ptr [ %i.cl, %bb.k ], [ %i.x, %bb.e ], [ %0, %bb.f ], [ %0, %._crit_edge.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret ptr %.sroa.019.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail20write_escaped_stringIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EE(ptr %0, ptr %1, i64 %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::find_escape_result", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !148  ; 2 uses
  %i.c = add i64 %i.b, 1                          ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !134
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !131
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.c), !inline_history !289
  %.pre.i.i = load i64, ptr %i.a, align 8, !tbaa !148 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.a, %bb.b
  %.pre-phi.i.i = phi i64 [ %i.c, %bb.a ], [ %.pre2.i.i, %bb.b ]
  %i.i = phi i64 [ %i.b, %bb.a ], [ %.pre.i.i, %bb.b ]
  %i.j = load ptr, ptr %0, align 8, !tbaa !133
  store i64 %.pre-phi.i.i, ptr %i.a, align 8, !tbaa !148
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.i
  store i8 34, ptr %i.k, align 1, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = ptrtoint ptr %i.l to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  %.sroa.022.0 = phi ptr [ %0, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit ], [ %i.bv, %bb.g ] ; 7 uses
  %.0 = phi ptr [ %1, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit ], [ %i.bu, %bb.g ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store ptr %i.l, ptr %3, align 8, !tbaa !374, !alias.scope !788
  store ptr null, ptr %i.m, align 8, !tbaa !376, !alias.scope !788
  store i32 0, ptr %i.n, align 8, !tbaa !377, !alias.scope !788
  %i.p = ptrtoint ptr %.0 to i64
  %i.q = sub i64 %i.o, %i.p
  call void @_ZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_(ptr %.0, i64 %i.q, ptr nonnull align 8 %3)
  %i.r = load ptr, ptr %3, align 8, !tbaa !374    ; 3 uses
  %.not31.i.i = icmp eq ptr %.0, %i.r
  br i1 %.not31.i.i, label %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit, label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.022.0, i64 8 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.022.0, i64 16 ; 2 uses
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.022.0, i64 24
  %.pre.i.i13 = load i64, ptr %i.s, align 8, !tbaa !148
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.w = phi i64 [ %.pre.i.i13, %.lr.ph34.i.i ], [ %i.bc, %._crit_edge.i.i ] ; 3 uses
  %.02532.i.i = phi ptr [ %.0, %.lr.ph34.i.i ], [ %i.bd, %._crit_edge.i.i ] ; 9 uses
  %i.x = load i64, ptr %i.t, align 8, !tbaa !134
  %i.y = sub i64 %i.x, %i.w
  %i.z = ptrtoint ptr %.02532.i.i to i64          ; 2 uses
  %i.aa = sub i64 %i.u, %i.z                      ; 4 uses
  %i.ab = icmp ult i64 %i.y, %i.aa
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !131
  %i.ad = add i64 %i.aa, %i.w
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.022.0, i64 noundef %i.ad), !inline_history !318
  %i.ae = load i64, ptr %i.s, align 8, !tbaa !148 ; 2 uses
  %i.af = load i64, ptr %i.t, align 8, !tbaa !134
  %i.ag = sub i64 %i.af, %i.ae
  %i.ah = call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.ag)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.027.i.i = phi i64 [ %i.ae, %bb.e ], [ %i.w, %bb.d ] ; 3 uses
  %.026.i.i = phi i64 [ %i.ah, %bb.e ], [ %i.aa, %bb.d ] ; 13 uses
  %i.ai = load ptr, ptr %.sroa.022.0, align 8, !tbaa !133 ; 2 uses
  %i.aj = ptrtoaddr ptr %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.027.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.026.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.f
  %min.iters.check = icmp ult i64 %.026.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.al = add i64 %.027.i.i, %i.aj
  %i.am = sub i64 %i.z, %i.al
  %diff.check = icmp ugt i64 %i.am, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check40 = icmp ult i64 %.026.i.i, 32
  br i1 %min.iters.check40, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %.026.i.i, 28
  %n.vec = and i64 %.026.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %index ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %wide.load = load <16 x i8>, ptr %i.an, align 1, !tbaa !16
  %wide.load41 = load <16 x i8>, ptr %i.ao, align 1, !tbaa !16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <16 x i8> %wide.load, ptr %i.ap, align 1, !tbaa !16
  store <16 x i8> %wide.load41, ptr %i.aq, align 1, !tbaa !16
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !791

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.026.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !292

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec43 = and i64 %.026.i.i, -4                ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index44 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next46, %vec.epilog.vector.body ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %index44
  %wide.load45 = load <4 x i8>, ptr %i.as, align 1, !tbaa !16
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 %index44
  store <4 x i8> %wide.load45, ptr %i.at, align 1, !tbaa !16
  %index.next46 = add nuw i64 %index44, 4         ; 2 uses
  %i.au = icmp eq i64 %index.next46, %n.vec43
  br i1 %i.au, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !792

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n47 = icmp eq i64 %.026.i.i, %n.vec43
  br i1 %cmp.n47, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec43, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.026.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.ay, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.av = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %.030.i.i.prol
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.030.i.i.prol
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !16
  %i.ay = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !793

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ay, %.lr.ph.i.i.prol ]
  %i.az = sub i64 %.030.i.i.ph, %.026.i.i
  %i.ba = icmp ugt i64 %i.az, -4
  br i1 %i.ba, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i = load i64, ptr %i.s, align 8, !tbaa !148
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.f
  %i.bb = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.027.i.i, %bb.f ]
  %i.bc = add i64 %i.bb, %.026.i.i                ; 2 uses
  store i64 %i.bc, ptr %i.s, align 8, !tbaa !148
  %i.bd = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %.026.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.bd, %i.r
  br i1 %.not.i.i, label %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit, label %bb.d, !llvm.loop !296

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.bt, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %.030.i.i
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.030.i.i
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !16
  %i.bh = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bh
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !16
  %i.bl = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bl
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !16
  %i.bp = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bp
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !16
  %i.bt = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.bt, %.026.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !794

_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit: ; preds = %._crit_edge.i.i, %bb.c
  %i.bu = load ptr, ptr %i.m, align 8, !tbaa !376 ; 3 uses
  %.not = icmp eq ptr %i.bu, null
  br i1 %.not, label %.thread, label %bb.g

.thread:                                          ; preds = %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %.loopexit

bb.g:                                             ; preds = %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit
  %i.bv = call ptr @_ZN3fmt3v126detail16write_escaped_cpINS0_14basic_appenderIcEEcEET_S5_RKNS1_18find_escape_resultIT0_EE(ptr %.sroa.022.0, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %.not12 = icmp eq ptr %i.bu, %i.l
  br i1 %.not12, label %.loopexit, label %bb.c, !llvm.loop !795

.loopexit:                                        ; preds = %bb.g, %.thread
  %.sroa.022.127 = phi ptr [ %.sroa.022.0, %.thread ], [ %i.bv, %bb.g ] ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.022.127, i64 8 ; 3 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !148 ; 2 uses
  %i.by = add i64 %i.bx, 1                        ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.022.127, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !134
  %i.cb = icmp ugt i64 %i.by, %i.ca
  br i1 %i.cb, label %bb.h, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit18

bb.h:                                             ; preds = %.loopexit
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.022.127, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !131
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.022.127, i64 noundef %i.by), !inline_history !289
  %.pre.i.i16 = load i64, ptr %i.bw, align 8, !tbaa !148 ; 2 uses
  %.pre2.i.i17 = add i64 %.pre.i.i16, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit18

_ZN3fmt3v1214basic_appenderIcEaSEc.exit18:        ; preds = %.loopexit, %bb.h
  %.pre-phi.i.i15 = phi i64 [ %i.by, %.loopexit ], [ %.pre2.i.i17, %bb.h ]
  %i.ce = phi i64 [ %i.bx, %.loopexit ], [ %.pre.i.i16, %bb.h ]
  %i.cf = load ptr, ptr %.sroa.022.127, align 8, !tbaa !133
  store i64 %.pre-phi.i.i15, ptr %i.bw, align 8, !tbaa !148
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ce
  store i8 34, ptr %i.cg, align 1, !tbaa !16
  ret ptr %.sroa.022.127
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18for_each_codepointIZNS1_5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEEUljNSB_IcEEE_EEvSG_S7_(ptr %0, i64 %1, ptr noundef byval(%class.anon.83) align 8 %2) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %3 = alloca %class.anon.87, align 8             ; 5 uses
  %i.b = alloca [7 x i8], align 1                 ; 11 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !796
  %i.d = icmp ugt i64 %1, 3
  br i1 %i.d, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -3
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.0 = phi ptr [ %0, %bb.b ], [ %i.bq, %bb.d ]   ; 8 uses
  %.not30 = icmp ult ptr %.0, %i.f
  br i1 %.not30, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.g = load i8, ptr %.0, align 1, !tbaa !16
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = lshr i32 %i.h, 3                         ; 2 uses
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr @.str.74, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !16
  %i.m = sext i8 %i.l to i64                      ; 6 uses
  %i.n = getelementptr inbounds i8, ptr %.0, i64 %i.m
  %.not.i.i = lshr i32 -2130771968, %i.i
  %i.o = and i32 %.not.i.i, 1
  %i.p = zext nneg i32 %i.o to i64                ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p
  %i.r = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks, i64 %i.m
  %i.s = load i32, ptr %i.r, align 4, !tbaa !3
  %i.t = and i32 %i.s, %i.h
  %i.u = shl nuw nsw i32 %i.t, 18
  %i.v = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !16    ; 2 uses
  %i.x = and i8 %i.w, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 12
  %i.aa = or disjoint i32 %i.z, %i.u
  %i.ab = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !16  ; 2 uses
  %i.ad = and i8 %i.ac, 63
  %i.ae = zext nneg i8 %i.ad to i32
  %i.af = shl nuw nsw i32 %i.ae, 6
  %i.ag = or disjoint i32 %i.af, %i.aa
  %i.ah = getelementptr inbounds nuw i8, ptr %.0, i64 3
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !16  ; 2 uses
  %i.aj = and i8 %i.ai, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ag, %i.ak
  %i.am = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.m
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = lshr i32 %i.al, %i.an                   ; 4 uses
  %i.ap = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins, i64 %i.m
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !3
  %i.ar = icmp ult i32 %i.ao, %i.aq
  %i.as = select i1 %i.ar, i32 64, i32 0
  %.mask.i.i = and i32 %i.ao, 2147481600
  %i.at = icmp eq i32 %.mask.i.i, 55296
  %i.au = select i1 %i.at, i32 128, i32 0
  %i.av = icmp samesign ugt i32 %i.ao, 1114111
  %i.aw = select i1 %i.av, i32 256, i32 0
  %i.ax = lshr i8 %i.w, 2
  %i.ay = and i8 %i.ax, 48
  %i.az = lshr i8 %i.ac, 4
  %i.ba = and i8 %i.az, 12
  %i.bb = lshr i8 %i.ai, 6
  %i.bc = or disjoint i8 %i.ba, %i.ay
  %i.bd = or disjoint i8 %i.bc, %i.bb
  %i.be = zext nneg i8 %i.bd to i32
  %i.bf = or disjoint i32 %i.as, %i.be
  %i.bg = or disjoint i32 %i.bf, %i.aw
  %i.bh = or disjoint i32 %i.bg, %i.au
  %i.bi = xor i32 %i.bh, 42
  %i.bj = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte, i64 %i.m
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !3
  %i.bl = lshr i32 %i.bi, %i.bk
  %.not.i = icmp eq i32 %i.bl, 0                  ; 3 uses
  %i.bm = select i1 %.not.i, i32 %i.ao, i32 -1
  %i.bn = add nsw i64 %i.p, %i.m
  %i.bo = select i1 %.not.i, i64 %i.bn, i64 1
  %i.bp = call noundef zeroext i1 @_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUljNSA_IcEEE_clEjSF_(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.bm, ptr nonnull %.0, i64 %i.bo)
  %i.bq = select i1 %.not.i, ptr %i.q, ptr %i.v
  br i1 %i.bp, label %bb.c, label %.thread, !llvm.loop !797

.loopexit:                                        ; preds = %bb.c, %bb.a
  %.2 = phi ptr [ %0, %bb.a ], [ %.0, %bb.c ]     ; 8 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %.2 to i64                 ; 2 uses
  %i.bu = sub i64 %i.bs, %i.bt                    ; 8 uses
  %i.bv = icmp eq ptr %i.br, %.2
  br i1 %i.bv, label %.thread, label %iter.check

iter.check:                                       ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.b, i8 0, i64 7, i1 false)
  %min.iters.check = icmp ult i64 %i.bu, 4
  %i.bw = sub i64 %i.bt, %i.c
  %diff.check = icmp ugt i64 %i.bw, -32
  %or.cond62 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond62, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check48 = icmp ult i64 %i.bu, 32
  br i1 %min.iters.check48, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.bu, 28
  %n.vec = and i64 %i.bu, -32                     ; 5 uses
  %i.bx = getelementptr i8, ptr %i.b, i64 %n.vec
  %i.by = getelementptr i8, ptr %.2, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %index ; 2 uses
  %next.gep49 = getelementptr i8, ptr %.2, i64 %index ; 2 uses
  %i.bz = getelementptr i8, ptr %next.gep49, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep49, align 1, !tbaa !16
  %wide.load50 = load <16 x i8>, ptr %i.bz, align 1, !tbaa !16
  %i.ca = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !16
  store <16 x i8> %wide.load50, ptr %i.ca, align 1, !tbaa !16
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !798

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bu, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !292

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec53 = and i64 %i.bu, -4                    ; 4 uses
  %i.cc = getelementptr i8, ptr %i.b, i64 %n.vec53
  %i.cd = getelementptr i8, ptr %.2, i64 %n.vec53
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index54 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next58, %vec.epilog.vector.body ] ; 3 uses
  %next.gep55 = getelementptr i8, ptr %i.b, i64 %index54
  %next.gep56 = getelementptr i8, ptr %.2, i64 %index54
  %wide.load57 = load <4 x i8>, ptr %next.gep56, align 1, !tbaa !16
  store <4 x i8> %wide.load57, ptr %next.gep55, align 1, !tbaa !16
  %index.next58 = add nuw i64 %index54, 4         ; 2 uses
  %i.ce = icmp eq i64 %index.next58, %n.vec53
  br i1 %i.ce, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !799

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n59 = icmp eq i64 %i.bu, %n.vec53
  br i1 %cmp.n59, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.ph = phi ptr [ %i.b, %iter.check ], [ %i.bx, %vec.epilog.iter.check ], [ %i.cc, %vec.epilog.middle.block ] ; 2 uses
  %.057.i.ph = phi ptr [ %.2, %iter.check ], [ %i.by, %vec.epilog.iter.check ], [ %i.cd, %vec.epilog.middle.block ] ; 3 uses
  %i.cf = add i64 %1, %i.a                        ; 2 uses
  %.057.i.ph64 = ptrtoint ptr %.057.i.ph to i64   ; 2 uses
  %i.cg = sub i64 %i.cf, %.057.i.ph64
  %xtraiter = and i64 %i.cg, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.08.i.prol = phi ptr [ %i.cj, %.lr.ph.i.prol ], [ %.08.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.057.i.prol = phi ptr [ %i.ch, %.lr.ph.i.prol ], [ %.057.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.057.i.prol, i64 1 ; 2 uses
  %i.ci = load i8, ptr %.057.i.prol, align 1, !tbaa !16
  %i.cj = getelementptr inbounds nuw i8, ptr %.08.i.prol, i64 1 ; 2 uses
  store i8 %i.ci, ptr %.08.i.prol, align 1, !tbaa !16
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !800

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.08.i.unr = phi ptr [ %.08.i.ph, %.lr.ph.i.preheader ], [ %i.cj, %.lr.ph.i.prol ]
  %.057.i.unr = phi ptr [ %.057.i.ph, %.lr.ph.i.preheader ], [ %i.ch, %.lr.ph.i.prol ]
  %i.ck = sub i64 %.057.i.ph64, %i.cf
  %i.cl = icmp ugt i64 %i.ck, -8
  br i1 %i.cl, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.08.i = phi ptr [ %i.dj, %.lr.ph.i ], [ %.08.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.057.i = phi ptr [ %i.dh, %.lr.ph.i ], [ %.057.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.057.i, i64 1
  %i.cn = load i8, ptr %.057.i, align 1, !tbaa !16
  %i.co = getelementptr inbounds nuw i8, ptr %.08.i, i64 1
  store i8 %i.cn, ptr %.08.i, align 1, !tbaa !16
  %i.cp = getelementptr inbounds nuw i8, ptr %.057.i, i64 2
  %i.cq = load i8, ptr %i.cm, align 1, !tbaa !16
  %i.cr = getelementptr inbounds nuw i8, ptr %.08.i, i64 2
  store i8 %i.cq, ptr %i.co, align 1, !tbaa !16
  %i.cs = getelementptr inbounds nuw i8, ptr %.057.i, i64 3
  %i.ct = load i8, ptr %i.cp, align 1, !tbaa !16
  %i.cu = getelementptr inbounds nuw i8, ptr %.08.i, i64 3
  store i8 %i.ct, ptr %i.cr, align 1, !tbaa !16
  %i.cv = getelementptr inbounds nuw i8, ptr %.057.i, i64 4
  %i.cw = load i8, ptr %i.cs, align 1, !tbaa !16
  %i.cx = getelementptr inbounds nuw i8, ptr %.08.i, i64 4
  store i8 %i.cw, ptr %i.cu, align 1, !tbaa !16
  %i.cy = getelementptr inbounds nuw i8, ptr %.057.i, i64 5
  %i.cz = load i8, ptr %i.cv, align 1, !tbaa !16
  %i.da = getelementptr inbounds nuw i8, ptr %.08.i, i64 5
  store i8 %i.cz, ptr %i.cx, align 1, !tbaa !16
  %i.db = getelementptr inbounds nuw i8, ptr %.057.i, i64 6
  %i.dc = load i8, ptr %i.cy, align 1, !tbaa !16
  %i.dd = getelementptr inbounds nuw i8, ptr %.08.i, i64 6
  store i8 %i.dc, ptr %i.da, align 1, !tbaa !16
  %i.de = getelementptr inbounds nuw i8, ptr %.057.i, i64 7
  %i.df = load i8, ptr %i.db, align 1, !tbaa !16
  %i.dg = getelementptr inbounds nuw i8, ptr %.08.i, i64 7
  store i8 %i.df, ptr %i.dd, align 1, !tbaa !16
  %i.dh = getelementptr inbounds nuw i8, ptr %.057.i, i64 8 ; 2 uses
  %i.di = load i8, ptr %i.de, align 1, !tbaa !16
  %i.dj = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  store i8 %i.di, ptr %i.dg, align 1, !tbaa !16
  %.not.i33.7 = icmp eq ptr %i.dh, %i.br
  br i1 %.not.i33.7, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, label %.lr.ph.i, !llvm.loop !801

_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bu
  br label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit

_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit: ; preds = %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit
  %.022 = phi ptr [ %.123, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit ], [ %i.b, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader ] ; 7 uses
  %.3 = phi ptr [ %.4, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit ], [ %.2, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader ] ; 2 uses
  %i.dl = load i8, ptr %.022, align 1, !tbaa !16
  %i.dm = zext i8 %i.dl to i32                    ; 2 uses
  %i.dn = lshr i32 %i.dm, 3                       ; 2 uses
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr @.str.74, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !16
  %i.dr = sext i8 %i.dq to i64                    ; 6 uses
  %i.ds = getelementptr inbounds i8, ptr %.022, i64 %i.dr
  %.not.i.i34 = lshr i32 -2130771968, %i.dn
  %i.dt = and i32 %.not.i.i34, 1
  %i.du = zext nneg i32 %i.dt to i64              ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.du
  %i.dw = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks, i64 %i.dr
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !3
  %i.dy = and i32 %i.dx, %i.dm
  %i.dz = shl nuw nsw i32 %i.dy, 18
  %i.ea = getelementptr inbounds nuw i8, ptr %.022, i64 1 ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !16  ; 2 uses
  %i.ec = and i8 %i.eb, 63
  %i.ed = zext nneg i8 %i.ec to i32
  %i.ee = shl nuw nsw i32 %i.ed, 12
  %i.ef = or disjoint i32 %i.ee, %i.dz
  %i.eg = getelementptr inbounds nuw i8, ptr %.022, i64 2
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !16  ; 2 uses
  %i.ei = and i8 %i.eh, 63
  %i.ej = zext nneg i8 %i.ei to i32
  %i.ek = shl nuw nsw i32 %i.ej, 6
  %i.el = or disjoint i32 %i.ek, %i.ef
  %i.em = getelementptr inbounds nuw i8, ptr %.022, i64 3
  %i.en = load i8, ptr %i.em, align 1, !tbaa !16  ; 2 uses
  %i.eo = and i8 %i.en, 63
  %i.ep = zext nneg i8 %i.eo to i32
  %i.eq = or disjoint i32 %i.el, %i.ep
  %i.er = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.dr
  %i.es = load i32, ptr %i.er, align 4, !tbaa !3
  %i.et = lshr i32 %i.eq, %i.es                   ; 4 uses
  %i.eu = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins, i64 %i.dr
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !3
  %i.ew = icmp ult i32 %i.et, %i.ev
  %i.ex = select i1 %i.ew, i32 64, i32 0
  %.mask.i.i35 = and i32 %i.et, 2147481600
  %i.ey = icmp eq i32 %.mask.i.i35, 55296
  %i.ez = select i1 %i.ey, i32 128, i32 0
  %i.fa = icmp samesign ugt i32 %i.et, 1114111
  %i.fb = select i1 %i.fa, i32 256, i32 0
  %i.fc = lshr i8 %i.eb, 2
  %i.fd = and i8 %i.fc, 48
  %i.fe = lshr i8 %i.eh, 4
  %i.ff = and i8 %i.fe, 12
  %i.fg = lshr i8 %i.en, 6
  %i.fh = or disjoint i8 %i.ff, %i.fd
  %i.fi = or disjoint i8 %i.fh, %i.fg
  %i.fj = zext nneg i8 %i.fi to i32
  %i.fk = or disjoint i32 %i.ex, %i.fj
  %i.fl = or disjoint i32 %i.fk, %i.fb
  %i.fm = or disjoint i32 %i.fl, %i.ez
  %i.fn = xor i32 %i.fm, 42
  %i.fo = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte, i64 %i.dr
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !3
  %i.fq = lshr i32 %i.fn, %i.fp
  %.not.i36 = icmp eq i32 %i.fq, 0                ; 3 uses
  %i.fr = select i1 %.not.i36, i32 %i.et, i32 -1
  %i.fs = add nsw i64 %i.du, %i.dr
  %i.ft = select i1 %.not.i36, i64 %i.fs, i64 1
  %i.fu = call noundef zeroext i1 @_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUljNSA_IcEEE_clEjSF_(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.fr, ptr %.3, i64 %i.ft) ; 3 uses
  %i.fv = select i1 %.not.i36, ptr %i.dv, ptr %i.ea ; 2 uses
  %i.fw = ptrtoint ptr %i.fv to i64
  %i.fx = ptrtoint ptr %.022 to i64
  %i.fy = sub i64 %i.fw, %i.fx
  %.123 = select i1 %i.fu, ptr %i.fv, ptr %.022   ; 2 uses
  %.4.idx = select i1 %i.fu, i64 %i.fy, i64 0
  %.4 = getelementptr inbounds i8, ptr %.3, i64 %.4.idx
  %i.fz = icmp ult ptr %.123, %i.dk
  %or.cond = select i1 %i.fu, i1 %i.fz, i1 false
  br i1 %or.cond, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit, label %bb.e, !llvm.loop !802

bb.e:                                             ; preds = %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.e, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEEZNS1_5writeIcS5_TnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEEUlS5_E_EET1_SI_SG_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !316
  %i.c = zext i32 %i.b to i64
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 %3) ; 4 uses
  %i.e = load i32, ptr %1, align 4, !tbaa !265    ; 2 uses
  %i.f = lshr i32 %i.e, 3
  %i.g = and i32 %i.f, 7
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @.str.41, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !16
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
  %i.r = mul nuw nsw i64 %i.d, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !148
  %i.u = add i64 %i.t, %2
  %i.v = add i64 %i.u, %i.r                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !134
  %i.y = icmp ugt i64 %i.v, %i.x
  br i1 %i.y, label %bb.b, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !131
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.v), !inline_history !317
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.a, %bb.b
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.ab = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %0, i64 noundef %i.m, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %.sroa.09.0 = phi ptr [ %i.ab, %bb.c ], [ %0, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit ] ; 8 uses
  %i.ac = load i8, ptr %4, align 8, !tbaa !784, !range !365, !noundef !341
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !786
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.01.0.copyload.i = load ptr, ptr %i.ag, align 8, !tbaa !135
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !136
  %i.ah = tail call { ptr, i64 } @_ZN3fmt3v126detail20write_escaped_stringIcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEE23bounded_output_iteratorEESA_SA_SC_(ptr %.sroa.09.0, i64 %i.af, ptr %.sroa.01.0.copyload.i, i64 %.sroa.2.0.copyload.i)
  %i.ai = extractvalue { ptr, i64 } %i.ah, 0
  br label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit

bb.f:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !404 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !786 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.am ; 2 uses
  %.not31.i.i.i = icmp samesign eq i64 %i.am, 0
  br i1 %.not31.i.i.i, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit, label %.lr.ph34.i.i.i

.lr.ph34.i.i.i:                                   ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 8 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 16 ; 2 uses
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 24
  %.pre.i.i.i = load i64, ptr %i.ao, align 8, !tbaa !148
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.i, %.lr.ph34.i.i.i
  %i.as = phi i64 [ %.pre.i.i.i, %.lr.ph34.i.i.i ], [ %i.by, %._crit_edge.i.i.i ] ; 3 uses
  %.02532.i.i.i = phi ptr [ %i.ak, %.lr.ph34.i.i.i ], [ %i.bz, %._crit_edge.i.i.i ] ; 9 uses
  %i.at = load i64, ptr %i.ap, align 8, !tbaa !134
  %i.au = sub i64 %i.at, %i.as
  %i.av = ptrtoint ptr %.02532.i.i.i to i64       ; 2 uses
  %i.aw = sub i64 %i.aq, %i.av                    ; 4 uses
  %i.ax = icmp ult i64 %i.au, %i.aw
  br i1 %i.ax, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ay = load ptr, ptr %i.ar, align 8, !tbaa !131
  %i.az = add i64 %i.aw, %i.as
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0, i64 noundef %i.az), !inline_history !803
  %i.ba = load i64, ptr %i.ao, align 8, !tbaa !148 ; 2 uses
  %i.bb = load i64, ptr %i.ap, align 8, !tbaa !134
  %i.bc = sub i64 %i.bb, %i.ba
  %i.bd = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 %i.bc)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.027.i.i.i = phi i64 [ %i.ba, %bb.h ], [ %i.as, %bb.g ] ; 3 uses
  %.026.i.i.i = phi i64 [ %i.bd, %bb.h ], [ %i.aw, %bb.g ] ; 13 uses
  %i.be = load ptr, ptr %.sroa.09.0, align 8, !tbaa !133 ; 2 uses
  %i.bf = ptrtoaddr ptr %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %.027.i.i.i ; 7 uses
  %.not36.i.i.i = icmp eq i64 %.026.i.i.i, 0
  br i1 %.not36.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.i
  %min.iters.check = icmp ult i64 %.026.i.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bh = add i64 %.027.i.i.i, %i.bf
  %i.bi = sub i64 %i.av, %i.bh
  %diff.check = icmp ugt i64 %i.bi, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check35 = icmp ult i64 %.026.i.i.i, 32
  br i1 %min.iters.check35, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %.026.i.i.i, 28
  %n.vec = and i64 %.026.i.i.i, -32               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %index ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %wide.load = load <16 x i8>, ptr %i.bj, align 1, !tbaa !16
  %wide.load36 = load <16 x i8>, ptr %i.bk, align 1, !tbaa !16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 %index ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store <16 x i8> %wide.load, ptr %i.bl, align 1, !tbaa !16
  store <16 x i8> %wide.load36, ptr %i.bm, align 1, !tbaa !16
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !804

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.026.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !292

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec38 = and i64 %.026.i.i.i, -4              ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index39 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next41, %vec.epilog.vector.body ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %index39
  %wide.load40 = load <4 x i8>, ptr %i.bo, align 1, !tbaa !16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 %index39
  store <4 x i8> %wide.load40, ptr %i.bp, align 1, !tbaa !16
  %index.next41 = add nuw i64 %index39, 4         ; 2 uses
  %i.bq = icmp eq i64 %index.next41, %n.vec38
  br i1 %i.bq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !805

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n42 = icmp eq i64 %.026.i.i.i, %n.vec38
  br i1 %cmp.n42, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec38, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.026.i.i.i, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.030.i.i.i.prol = phi i64 [ %i.bu, %.lr.ph.i.i.i.prol ], [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.br = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %.030.i.i.i.prol
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.030.i.i.i.prol
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !16
  %i.bu = add nuw i64 %.030.i.i.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !806

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.030.i.i.i.unr = phi i64 [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.bu, %.lr.ph.i.i.i.prol ]
  %i.bv = sub i64 %.030.i.i.i.ph, %.026.i.i.i
  %i.bw = icmp ugt i64 %i.bv, -4
  br i1 %i.bw, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i.i = load i64, ptr %i.ao, align 8, !tbaa !148
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.i
  %i.bx = phi i64 [ %.pre37.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.027.i.i.i, %bb.i ]
  %i.by = add i64 %i.bx, %.026.i.i.i              ; 2 uses
  store i64 %i.by, ptr %i.ao, align 8, !tbaa !148
  %i.bz = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %.026.i.i.i ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bz, %i.an
  br i1 %.not.i.i.i, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit, label %bb.g, !llvm.loop !296

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.030.i.i.i = phi i64 [ %i.cp, %.lr.ph.i.i.i ], [ %.030.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %.030.i.i.i
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.030.i.i.i
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !16
  %i.cd = add nuw i64 %.030.i.i.i, 1              ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.cd
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !16
  %i.ch = add nuw i64 %.030.i.i.i, 2              ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !16
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ch
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !16
  %i.cl = add nuw i64 %.030.i.i.i, 3              ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !16
  %i.co = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.cl
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !16
  %i.cp = add nuw i64 %.030.i.i.i, 4              ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.cp, %.026.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !807

_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %.sroa.06.0.i = phi ptr [ %i.ai, %bb.e ], [ %.sroa.09.0, %bb.f ], [ %.sroa.09.0, %._crit_edge.i.i.i ] ; 2 uses
  %.not31 = icmp eq i64 %i.d, %i.m
  br i1 %.not31, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit
  %i.cq = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr %.sroa.06.0.i, i64 noundef %i.n, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit
  %.sroa.09.1 = phi ptr [ %i.cq, %bb.j ], [ %.sroa.06.0.i, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit ]
  ret ptr %.sroa.09.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_(ptr %0, i64 %1, ptr %2) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = alloca [7 x i8], align 1                 ; 11 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %i.d = icmp ugt i64 %1, 3
  br i1 %i.d, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 %1
  %i.f = getelementptr i8, ptr %i.e, i64 -3
  %.not3054 = icmp sgt i64 %1, 3
  br i1 %.not3054, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit
  %.055 = phi ptr [ %i.bs, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit ], [ %0, %bb.b ] ; 7 uses
  %i.g = load i8, ptr %.055, align 1, !tbaa !16
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = lshr i32 %i.h, 3                         ; 2 uses
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr @.str.74, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !16
  %i.m = sext i8 %i.l to i64                      ; 6 uses
  %i.n = getelementptr inbounds i8, ptr %.055, i64 %i.m
  %.not.i.i = lshr i32 -2130771968, %i.i
  %i.o = and i32 %.not.i.i, 1
  %i.p = zext nneg i32 %i.o to i64                ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p
  %i.r = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks, i64 %i.m
  %i.s = load i32, ptr %i.r, align 4, !tbaa !3
  %i.t = and i32 %i.s, %i.h
  %i.u = shl nuw nsw i32 %i.t, 18
  %i.v = getelementptr inbounds nuw i8, ptr %.055, i64 1 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !16    ; 2 uses
  %i.x = and i8 %i.w, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 12
  %i.aa = or disjoint i32 %i.z, %i.u
  %i.ab = getelementptr inbounds nuw i8, ptr %.055, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !16  ; 2 uses
  %i.ad = and i8 %i.ac, 63
  %i.ae = zext nneg i8 %i.ad to i32
  %i.af = shl nuw nsw i32 %i.ae, 6
  %i.ag = or disjoint i32 %i.af, %i.aa
  %i.ah = getelementptr inbounds nuw i8, ptr %.055, i64 3
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !16  ; 2 uses
  %i.aj = and i8 %i.ai, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ag, %i.ak
  %i.am = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.m
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = lshr i32 %i.al, %i.an                   ; 4 uses
  %i.ap = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins, i64 %i.m
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !3
  %i.ar = icmp ult i32 %i.ao, %i.aq
  %i.as = select i1 %i.ar, i32 64, i32 0
  %.mask.i.i = and i32 %i.ao, 2147481600
  %i.at = icmp eq i32 %.mask.i.i, 55296
  %i.au = select i1 %i.at, i32 128, i32 0
  %i.av = icmp samesign ugt i32 %i.ao, 1114111
  %i.aw = select i1 %i.av, i32 256, i32 0
  %i.ax = lshr i8 %i.w, 2
  %i.ay = and i8 %i.ax, 48
  %i.az = lshr i8 %i.ac, 4
  %i.ba = and i8 %i.az, 12
  %i.bb = lshr i8 %i.ai, 6
  %i.bc = or disjoint i8 %i.ba, %i.ay
  %i.bd = or disjoint i8 %i.bc, %i.bb
  %i.be = zext nneg i8 %i.bd to i32
  %i.bf = or disjoint i32 %i.as, %i.be
  %i.bg = or disjoint i32 %i.bf, %i.aw
  %i.bh = or disjoint i32 %i.bg, %i.au
  %i.bi = xor i32 %i.bh, 42
  %i.bj = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte, i64 %i.m
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !3
  %i.bl = lshr i32 %i.bi, %i.bk
  %.not.i = icmp eq i32 %i.bl, 0                  ; 3 uses
  %i.bm = select i1 %.not.i, i32 %i.ao, i32 -1    ; 4 uses
  %i.bn = icmp ult i32 %i.bm, 32
  br i1 %i.bn, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread, label %switch.early.test.i.i.i

switch.early.test.i.i.i:                          ; preds = %.lr.ph
  switch i32 %i.bm, label %_ZN3fmt3v126detail12needs_escapeEj.exit.i.i [
    i32 127, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread
    i32 92, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread
    i32 34, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread
  ]

_ZN3fmt3v126detail12needs_escapeEj.exit.i.i:      ; preds = %switch.early.test.i.i.i
  %i.bo = tail call noundef zeroext i1 @_ZN3fmt3v126detail12is_printableEj(i32 noundef %i.bm)
  br i1 %i.bo, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread

_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread: ; preds = %.lr.ph, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %_ZN3fmt3v126detail12needs_escapeEj.exit.i.i
  %i.bp = add nsw i64 %i.p, %i.m
  %i.bq = select i1 %.not.i, i64 %i.bp, i64 1
  %i.br = getelementptr inbounds nuw i8, ptr %.055, i64 %i.bq
  store ptr %.055, ptr %2, align 8, !tbaa !135
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.br, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !135
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.bm, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !3
  br label %.thread

_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit: ; preds = %_ZN3fmt3v126detail12needs_escapeEj.exit.i.i
  %i.bs = select i1 %.not.i, ptr %i.q, ptr %i.v   ; 3 uses
  %.not30 = icmp ult ptr %i.bs, %i.f
  br i1 %.not30, label %.lr.ph, label %.loopexit, !llvm.loop !808

.loopexit:                                        ; preds = %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit, %bb.b, %bb.a
  %.2 = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %i.bs, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit ] ; 8 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %.2 to i64                 ; 2 uses
  %i.bw = sub i64 %i.bu, %i.bv                    ; 8 uses
  %i.bx = icmp eq ptr %i.bt, %.2
  br i1 %i.bx, label %.thread, label %iter.check

iter.check:                                       ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.b, i8 0, i64 7, i1 false)
  %min.iters.check = icmp ult i64 %i.bw, 4
  %i.by = sub i64 %i.bv, %i.c
  %diff.check = icmp ugt i64 %i.by, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check105 = icmp ult i64 %i.bw, 32
  br i1 %min.iters.check105, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.bw, 28
  %n.vec = and i64 %i.bw, -32                     ; 5 uses
  %i.bz = getelementptr i8, ptr %i.b, i64 %n.vec
  %i.ca = getelementptr i8, ptr %.2, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %index ; 2 uses
  %next.gep106 = getelementptr i8, ptr %.2, i64 %index ; 2 uses
  %i.cb = getelementptr i8, ptr %next.gep106, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep106, align 1, !tbaa !16
  %wide.load107 = load <16 x i8>, ptr %i.cb, align 1, !tbaa !16
  %i.cc = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !16
  store <16 x i8> %wide.load107, ptr %i.cc, align 1, !tbaa !16
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !809

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bw, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !292

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec110 = and i64 %i.bw, -4                   ; 4 uses
  %i.ce = getelementptr i8, ptr %i.b, i64 %n.vec110
  %i.cf = getelementptr i8, ptr %.2, i64 %n.vec110
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index111 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next115, %vec.epilog.vector.body ] ; 3 uses
  %next.gep112 = getelementptr i8, ptr %i.b, i64 %index111
  %next.gep113 = getelementptr i8, ptr %.2, i64 %index111
  %wide.load114 = load <4 x i8>, ptr %next.gep113, align 1, !tbaa !16
  store <4 x i8> %wide.load114, ptr %next.gep112, align 1, !tbaa !16
  %index.next115 = add nuw i64 %index111, 4       ; 2 uses
  %i.cg = icmp eq i64 %index.next115, %n.vec110
  br i1 %i.cg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !810

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n116 = icmp eq i64 %i.bw, %n.vec110
  br i1 %cmp.n116, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.ph = phi ptr [ %i.b, %iter.check ], [ %i.bz, %vec.epilog.iter.check ], [ %i.ce, %vec.epilog.middle.block ] ; 2 uses
  %.057.i.ph = phi ptr [ %.2, %iter.check ], [ %i.ca, %vec.epilog.iter.check ], [ %i.cf, %vec.epilog.middle.block ] ; 3 uses
  %i.ch = add i64 %1, %i.a                        ; 2 uses
  %.057.i.ph135 = ptrtoint ptr %.057.i.ph to i64  ; 2 uses
  %i.ci = sub i64 %i.ch, %.057.i.ph135
  %xtraiter = and i64 %i.ci, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.08.i.prol = phi ptr [ %i.cl, %.lr.ph.i.prol ], [ %.08.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.057.i.prol = phi ptr [ %i.cj, %.lr.ph.i.prol ], [ %.057.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.057.i.prol, i64 1 ; 2 uses
  %i.ck = load i8, ptr %.057.i.prol, align 1, !tbaa !16
  %i.cl = getelementptr inbounds nuw i8, ptr %.08.i.prol, i64 1 ; 2 uses
  store i8 %i.ck, ptr %.08.i.prol, align 1, !tbaa !16
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !811

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.08.i.unr = phi ptr [ %.08.i.ph, %.lr.ph.i.preheader ], [ %i.cl, %.lr.ph.i.prol ]
  %.057.i.unr = phi ptr [ %.057.i.ph, %.lr.ph.i.preheader ], [ %i.cj, %.lr.ph.i.prol ]
  %i.cm = sub i64 %.057.i.ph135, %i.ch
  %i.cn = icmp ugt i64 %i.cm, -8
  br i1 %i.cn, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.08.i = phi ptr [ %i.dl, %.lr.ph.i ], [ %.08.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.057.i = phi ptr [ %i.dj, %.lr.ph.i ], [ %.057.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.057.i, i64 1
  %i.cp = load i8, ptr %.057.i, align 1, !tbaa !16
  %i.cq = getelementptr inbounds nuw i8, ptr %.08.i, i64 1
  store i8 %i.cp, ptr %.08.i, align 1, !tbaa !16
  %i.cr = getelementptr inbounds nuw i8, ptr %.057.i, i64 2
  %i.cs = load i8, ptr %i.co, align 1, !tbaa !16
  %i.ct = getelementptr inbounds nuw i8, ptr %.08.i, i64 2
  store i8 %i.cs, ptr %i.cq, align 1, !tbaa !16
  %i.cu = getelementptr inbounds nuw i8, ptr %.057.i, i64 3
  %i.cv = load i8, ptr %i.cr, align 1, !tbaa !16
  %i.cw = getelementptr inbounds nuw i8, ptr %.08.i, i64 3
  store i8 %i.cv, ptr %i.ct, align 1, !tbaa !16
  %i.cx = getelementptr inbounds nuw i8, ptr %.057.i, i64 4
  %i.cy = load i8, ptr %i.cu, align 1, !tbaa !16
  %i.cz = getelementptr inbounds nuw i8, ptr %.08.i, i64 4
  store i8 %i.cy, ptr %i.cw, align 1, !tbaa !16
  %i.da = getelementptr inbounds nuw i8, ptr %.057.i, i64 5
  %i.db = load i8, ptr %i.cx, align 1, !tbaa !16
  %i.dc = getelementptr inbounds nuw i8, ptr %.08.i, i64 5
  store i8 %i.db, ptr %i.cz, align 1, !tbaa !16
  %i.dd = getelementptr inbounds nuw i8, ptr %.057.i, i64 6
  %i.de = load i8, ptr %i.da, align 1, !tbaa !16
  %i.df = getelementptr inbounds nuw i8, ptr %.08.i, i64 6
  store i8 %i.de, ptr %i.dc, align 1, !tbaa !16
  %i.dg = getelementptr inbounds nuw i8, ptr %.057.i, i64 7
  %i.dh = load i8, ptr %i.dd, align 1, !tbaa !16
  %i.di = getelementptr inbounds nuw i8, ptr %.08.i, i64 7
  store i8 %i.dh, ptr %i.df, align 1, !tbaa !16
  %i.dj = getelementptr inbounds nuw i8, ptr %.057.i, i64 8 ; 2 uses
  %i.dk = load i8, ptr %i.dg, align 1, !tbaa !16
  %i.dl = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  store i8 %i.dk, ptr %i.di, align 1, !tbaa !16
  %.not.i33.7 = icmp eq ptr %i.dj, %i.bt
  br i1 %.not.i33.7, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, label %.lr.ph.i, !llvm.loop !812

_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %.sroa.4.0..sroa_idx.i.i39 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0..sroa_idx.i.i40 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bw
  br label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit

_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit: ; preds = %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42
  %.022 = phi ptr [ %i.fz, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42 ], [ %i.b, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader ] ; 6 uses
  %.3 = phi ptr [ %.4, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42 ], [ %.2, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader ] ; 3 uses
  %i.dn = load i8, ptr %.022, align 1, !tbaa !16
  %i.do = zext i8 %i.dn to i32                    ; 2 uses
  %i.dp = lshr i32 %i.do, 3                       ; 2 uses
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr @.str.74, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !16
  %i.dt = sext i8 %i.ds to i64                    ; 6 uses
  %i.du = getelementptr inbounds i8, ptr %.022, i64 %i.dt
  %.not.i.i34 = lshr i32 -2130771968, %i.dp
  %i.dv = and i32 %.not.i.i34, 1
  %i.dw = zext nneg i32 %i.dv to i64              ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dw
  %i.dy = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks, i64 %i.dt
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !3
  %i.ea = and i32 %i.dz, %i.do
  %i.eb = shl nuw nsw i32 %i.ea, 18
  %i.ec = getelementptr inbounds nuw i8, ptr %.022, i64 1 ; 2 uses
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !16  ; 2 uses
  %i.ee = and i8 %i.ed, 63
  %i.ef = zext nneg i8 %i.ee to i32
  %i.eg = shl nuw nsw i32 %i.ef, 12
  %i.eh = or disjoint i32 %i.eg, %i.eb
  %i.ei = getelementptr inbounds nuw i8, ptr %.022, i64 2
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !16  ; 2 uses
  %i.ek = and i8 %i.ej, 63
  %i.el = zext nneg i8 %i.ek to i32
  %i.em = shl nuw nsw i32 %i.el, 6
  %i.en = or disjoint i32 %i.em, %i.eh
  %i.eo = getelementptr inbounds nuw i8, ptr %.022, i64 3
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !16  ; 2 uses
  %i.eq = and i8 %i.ep, 63
  %i.er = zext nneg i8 %i.eq to i32
  %i.es = or disjoint i32 %i.en, %i.er
  %i.et = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.dt
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !3
  %i.ev = lshr i32 %i.es, %i.eu                   ; 4 uses
  %i.ew = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins, i64 %i.dt
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !3
  %i.ey = icmp ult i32 %i.ev, %i.ex
  %i.ez = select i1 %i.ey, i32 64, i32 0
  %.mask.i.i35 = and i32 %i.ev, 2147481600
  %i.fa = icmp eq i32 %.mask.i.i35, 55296
  %i.fb = select i1 %i.fa, i32 128, i32 0
  %i.fc = icmp samesign ugt i32 %i.ev, 1114111
  %i.fd = select i1 %i.fc, i32 256, i32 0
  %i.fe = lshr i8 %i.ed, 2
  %i.ff = and i8 %i.fe, 48
  %i.fg = lshr i8 %i.ej, 4
  %i.fh = and i8 %i.fg, 12
  %i.fi = lshr i8 %i.ep, 6
  %i.fj = or disjoint i8 %i.fh, %i.ff
  %i.fk = or disjoint i8 %i.fj, %i.fi
  %i.fl = zext nneg i8 %i.fk to i32
  %i.fm = or disjoint i32 %i.ez, %i.fl
  %i.fn = or disjoint i32 %i.fm, %i.fd
  %i.fo = or disjoint i32 %i.fn, %i.fb
  %i.fp = xor i32 %i.fo, 42
  %i.fq = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte, i64 %i.dt
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !3
  %i.fs = lshr i32 %i.fp, %i.fr
  %.not.i36 = icmp eq i32 %i.fs, 0                ; 3 uses
  %i.ft = select i1 %.not.i36, i32 %i.ev, i32 -1  ; 4 uses
  %i.fu = icmp ult i32 %i.ft, 32
  br i1 %i.fu, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42.thread, label %switch.early.test.i.i.i37

switch.early.test.i.i.i37:                        ; preds = %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit
  switch i32 %i.ft, label %_ZN3fmt3v126detail12needs_escapeEj.exit.i.i41 [
end_hunk_12
begin_hunk_13_@_ZNK3fmt3v1223basic_ostream_formatterIcE6formatIN11OpenImageIO4v3_18TypeDescENS0_7contextEEEDTcldtfp0_3outEERKT_RT0_:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 28
  store i32 5, ptr %i.ai, align 4, !tbaa !847
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !846
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ah, i32 noundef %i.ak)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit unwind label %bb.j

_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit: ; preds = %_ZN11OpenImageIO4v3_1lsERSoRKNS0_8TypeDescE.exit
  %i.al = load ptr, ptr %4, align 8, !tbaa !133   ; 2 uses
  %i.am = load i64, ptr %i.c, align 8, !tbaa !148 ; 2 uses
  %i.an = load i32, ptr %0, align 8, !tbaa !265
  %i.ao = and i32 %i.an, 960
  %.not.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit
  %.sroa.0.0.copyload.i.i = load ptr, ptr %2, align 8, !tbaa !140
  %i.ap = invoke ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i.i, ptr %i.al, i64 %i.am, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %_ZNK3fmt3v126detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE6formatINS0_7contextEEEDTcldtfp0_3outEERKS4_RT_.exit unwind label %bb.k

bb.h:                                             ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 16, i1 false)
  %i.aq = load i32, ptr %3, align 4, !tbaa !265
  %i.ar = lshr i32 %i.aq, 6
  %i.as = and i32 %i.ar, 3
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_(i32 noundef %i.as, ptr noundef nonnull align 4 dereferenceable(4) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc18 unwind label %bb.k

.noexc18:                                         ; preds = %bb.h
  %i.av = load i32, ptr %3, align 4, !tbaa !265
  %i.aw = lshr i32 %i.av, 8
  %i.ax = and i32 %i.aw, 3
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_(i32 noundef %i.ax, ptr noundef nonnull align 4 dereferenceable(4) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc19 unwind label %bb.k

.noexc19:                                         ; preds = %.noexc18
  %.sroa.0.0.copyload.i17.i = load ptr, ptr %2, align 8, !tbaa !140
  %i.ba = invoke ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i17.i, ptr %i.al, i64 %i.am, ptr noundef nonnull align 4 dereferenceable(16) %3)
          to label %.noexc20 unwind label %bb.k

.noexc20:                                         ; preds = %.noexc19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %_ZNK3fmt3v126detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE6formatINS0_7contextEEEDTcldtfp0_3outEERKS4_RT_.exit

_ZNK3fmt3v126detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE6formatINS0_7contextEEEDTcldtfp0_3outEERKS4_RT_.exit: ; preds = %.noexc20, %bb.g
  %.sroa.015.0.i = phi ptr [ %i.ba, %.noexc20 ], [ %i.ap, %bb.g ]
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.h) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %5, align 8, !tbaa !7
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.f) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.bb = load ptr, ptr %4, align 8, !tbaa !133   ; 2 uses
  %.not.i.i21 = icmp eq ptr %i.bb, %i.d
  br i1 %.not.i.i21, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNK3fmt3v126detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE6formatINS0_7contextEEEDTcldtfp0_3outEERKS4_RT_.exit
  call void @free(ptr noundef %i.bb) #29
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit: ; preds = %_ZNK3fmt3v126detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE6formatINS0_7contextEEEDTcldtfp0_3outEERKS4_RT_.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret ptr %.sroa.015.0.i

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_1lsERSoRKNS0_8TypeDescE.exit, %bb.f, %bb.e, %bb.d, %bb.c, %_ZNSoC1EPSt15basic_streambufIcSt11char_traitsIcEE.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %.noexc19, %.noexc18, %bb.h, %bb.g
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.k ], [ %i.bc, %bb.j ]
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.h) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %.body

.body:                                            ; preds = %bb.b, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.l ], [ %i.o, %bb.b ]
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %5, align 8, !tbaa !7
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.f) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.be = load ptr, ptr %4, align 8, !tbaa !133   ; 2 uses
  %.not.i.i22 = icmp eq ptr %i.be, %i.d
  br i1 %.not.i.i22, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit23, label %bb.m

bb.m:                                             ; preds = %.body
  call void @free(ptr noundef %i.be) #29
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit23

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit23: ; preds = %.body, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale(ptr dead_on_unwind writable sret(%"class.std::locale") align 8, ptr noundef nonnull align 8 dereferenceable(264), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv() local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt15basic_streambufIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #7 align 2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail9formatbufISt15basic_streambufIcSt11char_traitsIcEEED0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #9 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt15basic_streambufIcSt11char_traitsIcEE5imbueERKSt6locale(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #7 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef ptr @_ZNSt15basic_streambufIcSt11char_traitsIcEE6setbufEPcl(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i64 noundef) unnamed_addr #7 align 2

; Function Attrs: mustprogress uwtable
declare { i64, i64 } @_ZNSt15basic_streambufIcSt11char_traitsIcEE7seekoffElSt12_Ios_SeekdirSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef, i32 noundef, i32 noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
declare { i64, i64 } @_ZNSt15basic_streambufIcSt11char_traitsIcEE7seekposESt4fposI11__mbstate_tESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(64), i64, i64, i32 noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE4syncEv(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #7 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef i64 @_ZNSt15basic_streambufIcSt11char_traitsIcEE9showmanycEv(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #7 align 2

declare noundef i64 @_ZNSt15basic_streambufIcSt11char_traitsIcEE6xsgetnEPcl(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
declare noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE9underflowEv(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #7 align 2

; Function Attrs: mustprogress uwtable
declare noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5uflowEv(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE9pbackfailEi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) unnamed_addr #7 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN3fmt3v126detail9formatbufISt15basic_streambufIcSt11char_traitsIcEEE6xsputnEPKcl(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !848, !nonnull !341, !align !363 ; 5 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %2 ; 2 uses
  %.not31.i = icmp eq i64 %2, 0
  br i1 %.not31.i, label %_ZN3fmt3v126detail6bufferIcE6appendIcEEvPKT_S7_.exit, label %.lr.ph34.i

.lr.ph34.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !148
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i, %.lr.ph34.i
  %i.h = phi i64 [ %.pre.i, %.lr.ph34.i ], [ %i.an, %._crit_edge.i ] ; 3 uses
  %.02532.i = phi ptr [ %1, %.lr.ph34.i ], [ %i.ao, %._crit_edge.i ] ; 9 uses
  %i.i = load i64, ptr %i.e, align 8, !tbaa !134
  %i.j = sub i64 %i.i, %i.h
  %i.k = ptrtoint ptr %.02532.i to i64            ; 2 uses
  %i.l = sub i64 %i.f, %i.k                       ; 4 uses
  %i.m = icmp ult i64 %i.j, %i.l
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !131
  %i.o = add i64 %i.l, %i.h
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef %i.o), !inline_history !501
  %i.p = load i64, ptr %i.d, align 8, !tbaa !148  ; 2 uses
  %i.q = load i64, ptr %i.e, align 8, !tbaa !134
  %i.r = sub i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.r)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.027.i = phi i64 [ %i.p, %bb.c ], [ %i.h, %bb.b ] ; 3 uses
  %.026.i = phi i64 [ %i.s, %bb.c ], [ %i.l, %bb.b ] ; 13 uses
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !133  ; 2 uses
  %i.u = ptrtoaddr ptr %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %.027.i ; 7 uses
  %.not36.i = icmp eq i64 %.026.i, 0
  br i1 %.not36.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %bb.d
  %min.iters.check = icmp ult i64 %.026.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.w = add i64 %.027.i, %i.u
  %i.x = sub i64 %i.k, %i.w
  %diff.check = icmp ugt i64 %i.x, -32
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check5 = icmp ult i64 %.026.i, 32
  br i1 %min.iters.check5, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %.026.i, 28
  %n.vec = and i64 %.026.i, -32                   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.02532.i, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %wide.load = load <16 x i8>, ptr %i.y, align 1, !tbaa !16
  %wide.load6 = load <16 x i8>, ptr %i.z, align 1, !tbaa !16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <16 x i8> %wide.load, ptr %i.aa, align 1, !tbaa !16
  store <16 x i8> %wide.load6, ptr %i.ab, align 1, !tbaa !16
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !851

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.026.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !292

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec8 = and i64 %.026.i, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index9 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next11, %vec.epilog.vector.body ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.02532.i, i64 %index9
  %wide.load10 = load <4 x i8>, ptr %i.ad, align 1, !tbaa !16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 %index9
  store <4 x i8> %wide.load10, ptr %i.ae, align 1, !tbaa !16
  %index.next11 = add nuw i64 %index9, 4          ; 2 uses
  %i.af = icmp eq i64 %index.next11, %n.vec8
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !852

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n12 = icmp eq i64 %.026.i, %n.vec8
  br i1 %cmp.n12, label %._crit_edge.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec8, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.026.i, 3                  ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.030.i.prol = phi i64 [ %i.aj, %.lr.ph.i.prol ], [ %.030.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.02532.i, i64 %.030.i.prol
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 %.030.i.prol
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !16
  %i.aj = add nuw i64 %.030.i.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !853

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.030.i.unr = phi i64 [ %.030.i.ph, %.lr.ph.i.preheader ], [ %i.aj, %.lr.ph.i.prol ]
  %i.ak = sub i64 %.030.i.ph, %.026.i
  %i.al = icmp ugt i64 %i.ak, -4
  br i1 %i.al, label %._crit_edge.loopexit.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i = load i64, ptr %i.d, align 8, !tbaa !148
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.d
  %i.am = phi i64 [ %.pre37.i, %._crit_edge.loopexit.i ], [ %.027.i, %bb.d ]
  %i.an = add i64 %i.am, %.026.i                  ; 2 uses
  store i64 %i.an, ptr %i.d, align 8, !tbaa !148
  %i.ao = getelementptr inbounds nuw i8, ptr %.02532.i, i64 %.026.i ; 2 uses
  %.not.i = icmp eq ptr %i.ao, %i.c
  br i1 %.not.i, label %_ZN3fmt3v126detail6bufferIcE6appendIcEEvPKT_S7_.exit, label %bb.b, !llvm.loop !296

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.030.i = phi i64 [ %i.be, %.lr.ph.i ], [ %.030.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.02532.i, i64 %.030.i
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.v, i64 %.030.i
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !16
  %i.as = add nuw i64 %.030.i, 1                  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.02532.i, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !16
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.as
  store i8 %i.au, ptr %i.av, align 1, !tbaa !16
  %i.aw = add nuw i64 %.030.i, 2                  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.02532.i, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !16
  %i.az = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.aw
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !16
  %i.ba = add nuw i64 %.030.i, 3                  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.02532.i, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ba
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !16
  %i.be = add nuw i64 %.030.i, 4                  ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.be, %.026.i
  br i1 %exitcond.not.i.3, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !854

_ZN3fmt3v126detail6bufferIcE6appendIcEEvPKT_S7_.exit: ; preds = %._crit_edge.i, %bb.a
  ret i64 %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN3fmt3v126detail9formatbufISt15basic_streambufIcSt11char_traitsIcEEE8overflowEi(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, -1
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !848, !nonnull !341, !align !363 ; 5 uses
  %i.d = trunc i32 %1 to i8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !148  ; 2 uses
  %i.g = add i64 %i.f, 1                          ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !134
  %i.j = icmp ugt i64 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !131
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %i.g), !inline_history !500
  %.pre.i = load i64, ptr %i.e, align 8, !tbaa !148 ; 2 uses
  %.pre2.i = add i64 %.pre.i, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit:  ; preds = %bb.b, %bb.c
  %.pre-phi.i = phi i64 [ %i.g, %bb.b ], [ %.pre2.i, %bb.c ]
  %i.m = phi i64 [ %i.f, %bb.b ], [ %.pre.i, %bb.c ]
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !133
  store i64 %.pre-phi.i, ptr %i.e, align 8, !tbaa !148
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m
  store i8 %i.d, ptr %i.o, align 1, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit, %bb.a
  ret i32 %1
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #2

declare noundef ptr @_ZNK11OpenImageIO4v3_18TypeDesc5c_strEv(ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE14_M_fill_assignEmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !855
  %i.c = load ptr, ptr %0, align 8, !tbaa !56     ; 17 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.i, label %bb.c, label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EEC2EmRKS3_.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #32
  unreachable

_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EEC2EmRKS3_.exit.i: ; preds = %bb.b
  %i.j = shl nuw nsw i64 %1, 3
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #31 ; 5 uses
  %i.l = load i64, ptr %2, align 4                ; 2 uses
  %min.iters.check81 = icmp ult i64 %1, 4
  br i1 %min.iters.check81, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.ph82

vector.ph82:                                      ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EEC2EmRKS3_.exit.i
  %n.vec84 = and i64 %1, 1152921504606846972      ; 3 uses
end_hunk_13
