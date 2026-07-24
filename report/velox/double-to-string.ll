inline.NumInlined: 75
inline.NumDeleted: 19
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS0_13StringBuilderE:bb.a
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 8, !tbaa !16
  %i.j = load ptr, ptr %2, align 8, !tbaa !19
  %i.k = sext i32 %i.h to i64
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 %i.k
  store i8 45, ptr %i.l, align 1, !tbaa !20
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !12
  br label %.sink.split

bb.e:                                             ; preds = %bb.a
  %i.m = fcmp ord double %1, 0.000000e+00
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  %or.cond = select i1 %i.m, i1 true, i1 %i.p
  br i1 %or.cond, label %bb.f, label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.c, %bb.d
  %.sink23 = phi ptr [ %i.d, %bb.c ], [ %.pre, %bb.d ], [ %i.o, %bb.e ] ; 2 uses
  %i.q = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sink23) #13 ; 2 uses
  %i.r = trunc i64 %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !16
  %i.u = load ptr, ptr %2, align 8, !tbaa !19
  %i.v = sext i32 %i.t to i64
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 %i.v
  %sext.i8 = shl i64 %i.q, 32
  %i.x = ashr exact i64 %sext.i8, 32
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %.sink23, i64 %i.x, i1 false)
  %i.y = load i32, ptr %i.s, align 8, !tbaa !16
  %i.z = add nsw i32 %i.y, %i.r
  store i32 %i.z, ptr %i.s, align 8, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.e, %bb.b
  %.0 = phi i1 [ true, %.sink.split ], [ false, %bb.e ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter31CreateExponentialRepresentationEPKciiPNS0_13StringBuilderE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca [6 x i8], align 1                 ; 9 uses
  %i.b = load i8, ptr %1, align 1, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 19 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !16   ; 2 uses
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 8, !tbaa !16
  %i.f = load ptr, ptr %4, align 8, !tbaa !19
  %i.g = sext i32 %i.d to i64
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 %i.g
  store i8 %i.b, ptr %i.h, align 1, !tbaa !20
  %i.i = icmp eq i32 %2, 1
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %0, align 8, !tbaa !8
  %i.k = and i32 %i.j, 32
  %.not = icmp eq i32 %i.k, 0
  %.pre48 = load i32, ptr %i.c, align 8, !tbaa !16 ; 3 uses
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = add nsw i32 %.pre48, 1
  store i32 %i.l, ptr %i.c, align 8, !tbaa !16
  %i.m = load ptr, ptr %4, align 8, !tbaa !19
  %i.n = sext i32 %.pre48 to i64
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 %i.n
  store i8 46, ptr %i.o, align 1, !tbaa !20
  %i.p = load i32, ptr %0, align 8, !tbaa !8
  %i.q = and i32 %i.p, 64
  %.not31 = icmp eq i32 %i.q, 0
  %.pre49 = load i32, ptr %i.c, align 8, !tbaa !16 ; 3 uses
  br i1 %.not31, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = add nsw i32 %.pre49, 1
  store i32 %i.r, ptr %i.c, align 8, !tbaa !16
  %i.s = load ptr, ptr %4, align 8, !tbaa !19
  %i.t = sext i32 %.pre49 to i64
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 %i.t
  store i8 48, ptr %i.u, align 1, !tbaa !20
  %.pre = load i32, ptr %i.c, align 8, !tbaa !16
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.v = load i32, ptr %i.c, align 8, !tbaa !16   ; 2 uses
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.c, align 8, !tbaa !16
  %i.x = load ptr, ptr %4, align 8, !tbaa !19
  %i.y = sext i32 %i.v to i64
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 %i.y
  store i8 46, ptr %i.z, align 1, !tbaa !20
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ab = add nsw i32 %2, -1                      ; 2 uses
  %i.ac = load i32, ptr %i.c, align 8, !tbaa !16
  %i.ad = load ptr, ptr %4, align 8, !tbaa !19
  %i.ae = sext i32 %i.ac to i64
  %i.af = getelementptr inbounds i8, ptr %i.ad, i64 %i.ae
  %i.ag = sext i32 %i.ab to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.af, ptr nonnull align 1 %i.aa, i64 %i.ag, i1 false)
  %i.ah = load i32, ptr %i.c, align 8, !tbaa !16
  %i.ai = add nsw i32 %i.ah, %i.ab
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.c, %bb.e
  %i.aj = phi i32 [ %.pre48, %bb.b ], [ %.pre, %bb.d ], [ %.pre49, %bb.c ], [ %i.ai, %bb.e ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !14
  %i.am = add nsw i32 %i.aj, 1
  store i32 %i.am, ptr %i.c, align 8, !tbaa !16
  %i.an = load ptr, ptr %4, align 8, !tbaa !19
  %i.ao = sext i32 %i.aj to i64
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 %i.ao
  store i8 %i.al, ptr %i.ap, align 1, !tbaa !20
  %i.aq = icmp slt i32 %3, 0
  br i1 %i.aq, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.f
  %i.ar = load i32, ptr %i.c, align 8, !tbaa !16  ; 2 uses
  %i.as = add nsw i32 %i.ar, 1
  store i32 %i.as, ptr %i.c, align 8, !tbaa !16
  %i.at = load ptr, ptr %4, align 8, !tbaa !19
  %i.au = sext i32 %i.ar to i64
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 %i.au
  store i8 45, ptr %i.av, align 1, !tbaa !20
  %i.aw = sub nsw i32 0, %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 0, ptr %i.ax, align 1, !tbaa !20
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.i, %.thread
  %.12634.ph = phi i32 [ %i.aw, %.thread ], [ %3, %bb.i ]
  br label %.lr.ph

bb.g:                                             ; preds = %bb.f
  %i.ay = load i32, ptr %0, align 8, !tbaa !8
  %i.az = and i32 %i.ay, 1
  %.not32 = icmp eq i32 %i.az, 0
  br i1 %.not32, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = load i32, ptr %i.c, align 8, !tbaa !16  ; 2 uses
  %i.bb = add nsw i32 %i.ba, 1
  store i32 %i.bb, ptr %i.c, align 8, !tbaa !16
  %i.bc = load ptr, ptr %4, align 8, !tbaa !19
  %i.bd = sext i32 %i.ba to i64
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 %i.bd
  store i8 43, ptr %i.be, align 1, !tbaa !20
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 0, ptr %i.bf, align 1, !tbaa !20
  %i.bg = icmp eq i32 %3, 0
  br i1 %i.bg, label %bb.j, label %.lr.ph.preheader

bb.j:                                             ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 48, ptr %i.bh, align 1, !tbaa !20
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 5, %.lr.ph.preheader ]
  %.12634 = phi i32 [ %i.bm, %.lr.ph ], [ %.12634.ph, %.lr.ph.preheader ] ; 3 uses
  %i.bi = urem i32 %.12634, 10
  %i.bj = trunc nuw nsw i32 %i.bi to i8
  %i.bk = or disjoint i8 %i.bj, 48
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.bl = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !20
  %i.bm = udiv i32 %.12634, 10
  %.not40 = icmp ult i32 %.12634, 10
  br i1 %.not40, label %.loopexit.loopexit, label %.lr.ph, !llvm.loop !21

.loopexit.loopexit:                               ; preds = %.lr.ph
  %i.bn = trunc nsw i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.j
  %.1 = phi i32 [ 4, %bb.j ], [ %i.bn, %.loopexit.loopexit ] ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !3
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.bp, i32 5) ; 3 uses
  %i.bq = sub nsw i32 5, %.1                      ; 2 uses
  %i.br = icmp slt i32 %i.bq, %.sroa.speculated
  br i1 %i.br, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.loopexit
  %i.bs = add i32 %.1, -1
  %i.bt = sext i32 %i.bs to i64
  %i.bu = add i32 %.1, %.sroa.speculated
  %i.bv = add i32 %i.bu, -6
  %i.bw = zext i32 %i.bv to i64                   ; 2 uses
  %i.bx = sub nsw i64 %i.bt, %i.bw
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.bx
  %i.by = add nuw nsw i64 %i.bw, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 48, i64 %i.by, i1 false), !tbaa !20
  %i.bz = sext i32 %.1 to i64                     ; 7 uses
  %i.ca = sext i32 %.sroa.speculated to i64       ; 2 uses
  %5 = sub nsw i64 6, %i.bz
  %smax = tail call i64 @llvm.smax.i64(i64 %i.ca, i64 %5)
  %6 = add i64 %smax, %i.bz
  %7 = add i64 %6, -5                             ; 7 uses
  %min.iters.check = icmp ult i64 %7, 4
  br i1 %min.iters.check, label %.lr.ph37.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check58 = icmp ult i64 %7, 32
  br i1 %min.iters.check58, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %7, 28
  %n.vec = and i64 %7, -32                        ; 4 uses
  %8 = sub i64 %i.bz, %n.vec                      ; 3 uses
  %9 = add nsw i64 %i.bz, -15
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %10 = phi i64 [ %9, %vector.ph ], [ %11, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %11 = add nsw i64 %10, -32
  %12 = icmp eq i64 %index.next, %n.vec
  br i1 %12, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  %13 = sub nsw i64 22, %10
  %cmp.n = icmp eq i64 %7, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph37.preheader, label %vec.epilog.ph, !prof !26

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %8, %vec.epilog.iter.check ], [ %i.bz, %vector.main.loop.iter.check ]
  %n.vec60 = and i64 %7, -4                       ; 3 uses
  %14 = sub i64 %i.bz, %n.vec60                   ; 2 uses
  %15 = add nsw i64 %bc.resume.val, -3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index63 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next65, %vec.epilog.vector.body ]
  %16 = phi i64 [ %15, %vec.epilog.ph ], [ %17, %vec.epilog.vector.body ] ; 2 uses
  %index.next65 = add nuw i64 %index63, 4         ; 2 uses
  %17 = add nsw i64 %16, -4
  %18 = icmp eq i64 %index.next65, %n.vec60
  br i1 %18, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !27

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %19 = sub nsw i64 6, %16
  %cmp.n67 = icmp eq i64 %7, %n.vec60
  br i1 %cmp.n67, label %._crit_edge.loopexit, label %.lr.ph37.preheader

.lr.ph37.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv45.ph = phi i64 [ %i.bz, %iter.check ], [ %8, %vec.epilog.iter.check ], [ %14, %vec.epilog.middle.block ]
  br label %.lr.ph37

.lr.ph37:                                         ; preds = %.lr.ph37.preheader, %.lr.ph37
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %.lr.ph37 ], [ %indvars.iv45.ph, %.lr.ph37.preheader ] ; 2 uses
  %indvars.iv.next46 = add nsw i64 %indvars.iv45, -1 ; 2 uses
  %i.cb = sub nsw i64 6, %indvars.iv45            ; 2 uses
  %i.cc = icmp slt i64 %i.cb, %i.ca
  br i1 %i.cc, label %.lr.ph37, label %._crit_edge.loopexit, !llvm.loop !28

._crit_edge.loopexit:                             ; preds = %.lr.ph37, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next46.lcssa = phi i64 [ %14, %vec.epilog.middle.block ], [ %8, %middle.block ], [ %indvars.iv.next46, %.lr.ph37 ]
  %.lcssa57 = phi i64 [ %19, %vec.epilog.middle.block ], [ %13, %middle.block ], [ %i.cb, %.lr.ph37 ]
  %i.cd = trunc nsw i64 %.lcssa57 to i32
  %i.ce = trunc nsw i64 %indvars.iv.next46.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.loopexit
  %.2.lcssa = phi i32 [ %.1, %.loopexit ], [ %i.ce, %._crit_edge.loopexit ]
  %.lcssa = phi i32 [ %i.bq, %.loopexit ], [ %i.cd, %._crit_edge.loopexit ] ; 2 uses
  %i.cf = sext i32 %.2.lcssa to i64
  %i.cg = getelementptr inbounds i8, ptr %i.a, i64 %i.cf
  %i.ch = load i32, ptr %i.c, align 8, !tbaa !16
  %i.ci = load ptr, ptr %4, align 8, !tbaa !19
  %i.cj = sext i32 %i.ch to i64
  %i.ck = getelementptr inbounds i8, ptr %i.ci, i64 %i.cj
  %i.cl = sext i32 %.lcssa to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ck, ptr nonnull align 1 %i.cg, i64 %i.cl, i1 false)
  %i.cm = load i32, ptr %i.c, align 8, !tbaa !16
  %i.cn = add nsw i32 %i.cm, %.lcssa
  store i32 %i.cn, ptr %i.c, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter27CreateDecimalRepresentationEPKciiiPNS0_13StringBuilderE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp slt i32 %3, 1
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 19 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.d = add nsw i32 %i.c, 1
  store i32 %i.d, ptr %i.b, align 8, !tbaa !16
  %i.e = load ptr, ptr %5, align 8, !tbaa !19
  %i.f = sext i32 %i.c to i64
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 %i.f
  store i8 48, ptr %i.g, align 1, !tbaa !20
  %i.h = icmp sgt i32 %4, 0
  br i1 %i.h, label %bb.c, label %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.b, align 8, !tbaa !16
  %i.k = load ptr, ptr %5, align 8, !tbaa !19
  %i.l = sext i32 %i.i to i64
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 %i.l
  store i8 46, ptr %i.m, align 1, !tbaa !20
  %i.n = sub i32 0, %3                            ; 3 uses
  %.not65 = icmp eq i32 %3, 0
  br i1 %.not65, label %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %xtraiter89 = and i32 %i.n, 1
  %i.o = icmp eq i32 %3, -1
  br i1 %i.o, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter92 = and i32 %i.n, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %niter93 = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter93.next.1, %.lr.ph.i ]
  %i.p = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.b, align 8, !tbaa !16
  %i.r = load ptr, ptr %5, align 8, !tbaa !19
  %i.s = sext i32 %i.p to i64
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %i.s
  store i8 48, ptr %i.t, align 1, !tbaa !20
  %i.u = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %i.b, align 8, !tbaa !16
  %i.w = load ptr, ptr %5, align 8, !tbaa !19
  %i.x = sext i32 %i.u to i64
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 %i.x
  store i8 48, ptr %i.y, align 1, !tbaa !20
  %niter93.next.1 = add i32 %niter93, 2           ; 2 uses
  %niter93.ncmp.1 = icmp eq i32 %niter93.next.1, %unroll_iter92
  br i1 %niter93.ncmp.1, label %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !29

_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod90.not = icmp eq i32 %xtraiter89, 0
  br i1 %lcmp.mod90.not, label %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %lcmp.mod91 = trunc i32 %i.n to i1
  tail call void @llvm.assume(i1 %lcmp.mod91)
  %i.z = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.b, align 8, !tbaa !16
  %i.ab = load ptr, ptr %5, align 8, !tbaa !19
  %i.ac = sext i32 %i.z to i64
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 %i.ac
  store i8 48, ptr %i.ad, align 1, !tbaa !20
  br label %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit

_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit: ; preds = %.lr.ph.i.epil.preheader, %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit.loopexit.unr-lcssa, %bb.c
  %i.ae = load i32, ptr %i.b, align 8, !tbaa !16
  %i.af = load ptr, ptr %5, align 8, !tbaa !19
  %i.ag = sext i32 %i.ae to i64
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 %i.ag
  %i.ai = sext i32 %2 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr align 1 %1, i64 %i.ai, i1 false)
  %i.aj = load i32, ptr %i.b, align 8, !tbaa !16
  %i.ak = add nsw i32 %i.aj, %2
  store i32 %i.ak, ptr %i.b, align 8, !tbaa !16
  %i.al = sub i32 %3, %2
  %i.am = add i32 %i.al, %4                       ; 4 uses
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.lr.ph.i49.preheader, label %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52.thread

.lr.ph.i49.preheader:                             ; preds = %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit
  %i.ao = add i32 %4, %3
  %.neg100 = add i32 %2, 1
  %xtraiter94 = and i32 %i.am, 1
  %i.ap = icmp eq i32 %i.ao, %.neg100
  br i1 %i.ap, label %.lr.ph.i49.epil.preheader, label %.lr.ph.i49.preheader.new

.lr.ph.i49.preheader.new:                         ; preds = %.lr.ph.i49.preheader
  %unroll_iter97 = and i32 %i.am, 2147483646
  br label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %.lr.ph.i49, %.lr.ph.i49.preheader.new
  %niter98 = phi i32 [ 0, %.lr.ph.i49.preheader.new ], [ %niter98.next.1, %.lr.ph.i49 ]
  %i.aq = load i32, ptr %i.b, align 8, !tbaa !16  ; 2 uses
  %i.ar = add nsw i32 %i.aq, 1
  store i32 %i.ar, ptr %i.b, align 8, !tbaa !16
  %i.as = load ptr, ptr %5, align 8, !tbaa !19
  %i.at = sext i32 %i.aq to i64
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 %i.at
  store i8 48, ptr %i.au, align 1, !tbaa !20
  %i.av = load i32, ptr %i.b, align 8, !tbaa !16  ; 2 uses
  %i.aw = add nsw i32 %i.av, 1
  store i32 %i.aw, ptr %i.b, align 8, !tbaa !16
  %i.ax = load ptr, ptr %5, align 8, !tbaa !19
  %i.ay = sext i32 %i.av to i64
  %i.az = getelementptr inbounds i8, ptr %i.ax, i64 %i.ay
  store i8 48, ptr %i.az, align 1, !tbaa !20
  %niter98.next.1 = add i32 %niter98, 2           ; 2 uses
  %niter98.ncmp.1 = icmp eq i32 %niter98.next.1, %unroll_iter97
  br i1 %niter98.ncmp.1, label %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52.thread.loopexit.unr-lcssa, label %.lr.ph.i49, !llvm.loop !29

bb.d:                                             ; preds = %bb.a
  %.not = icmp slt i32 %3, %2
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 28 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !16
  %i.bc = load ptr, ptr %5, align 8, !tbaa !19
  %i.bd = sext i32 %i.bb to i64
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 %i.bd ; 2 uses
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bf = sext i32 %2 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.be, ptr align 1 %1, i64 %i.bf, i1 false)
  %i.bg = load i32, ptr %i.ba, align 8, !tbaa !16
  %i.bh = add nsw i32 %i.bg, %2
  store i32 %i.bh, ptr %i.ba, align 8, !tbaa !16
  %i.bi = sub nsw i32 %3, %2                      ; 4 uses
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %.lr.ph.i53.preheader, label %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit56

.lr.ph.i53.preheader:                             ; preds = %bb.e
  %.neg = add i32 %2, 1
  %xtraiter = and i32 %i.bi, 1
  %i.bk = icmp eq i32 %3, %.neg
  br i1 %i.bk, label %.lr.ph.i53.epil.preheader, label %.lr.ph.i53.preheader.new

.lr.ph.i53.preheader.new:                         ; preds = %.lr.ph.i53.preheader
  %unroll_iter = and i32 %i.bi, 2147483646
  br label %.lr.ph.i53

.lr.ph.i53:                                       ; preds = %.lr.ph.i53, %.lr.ph.i53.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i53.preheader.new ], [ %niter.next.1, %.lr.ph.i53 ]
  %i.bl = load i32, ptr %i.ba, align 8, !tbaa !16 ; 2 uses
  %i.bm = add nsw i32 %i.bl, 1
  store i32 %i.bm, ptr %i.ba, align 8, !tbaa !16
  %i.bn = load ptr, ptr %5, align 8, !tbaa !19
  %i.bo = sext i32 %i.bl to i64
  %i.bp = getelementptr inbounds i8, ptr %i.bn, i64 %i.bo
  store i8 48, ptr %i.bp, align 1, !tbaa !20
  %i.bq = load i32, ptr %i.ba, align 8, !tbaa !16 ; 2 uses
  %i.br = add nsw i32 %i.bq, 1
  store i32 %i.br, ptr %i.ba, align 8, !tbaa !16
  %i.bs = load ptr, ptr %5, align 8, !tbaa !19
  %i.bt = sext i32 %i.bq to i64
  %i.bu = getelementptr inbounds i8, ptr %i.bs, i64 %i.bt
  store i8 48, ptr %i.bu, align 1, !tbaa !20
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit56.loopexit.unr-lcssa, label %.lr.ph.i53, !llvm.loop !29

_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit56.loopexit.unr-lcssa: ; preds = %.lr.ph.i53
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit56, label %.lr.ph.i53.epil.preheader

.lr.ph.i53.epil.preheader:                        ; preds = %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit56.loopexit.unr-lcssa, %.lr.ph.i53.preheader
  %lcmp.mod78 = trunc i32 %i.bi to i1
  tail call void @llvm.assume(i1 %lcmp.mod78)
  %i.bv = load i32, ptr %i.ba, align 8, !tbaa !16 ; 2 uses
  %i.bw = add nsw i32 %i.bv, 1
  store i32 %i.bw, ptr %i.ba, align 8, !tbaa !16
  %i.bx = load ptr, ptr %5, align 8, !tbaa !19
  %i.by = sext i32 %i.bv to i64
  %i.bz = getelementptr inbounds i8, ptr %i.bx, i64 %i.by
  store i8 48, ptr %i.bz, align 1, !tbaa !20
  br label %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit56

_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit56: ; preds = %.lr.ph.i53.epil.preheader, %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit56.loopexit.unr-lcssa, %bb.e
  %i.ca = icmp sgt i32 %4, 0
  br i1 %i.ca, label %.lr.ph.i57, label %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52

.lr.ph.i57:                                       ; preds = %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit56
  %i.cb = load i32, ptr %i.ba, align 8, !tbaa !16 ; 2 uses
  %i.cc = add nsw i32 %i.cb, 1
  store i32 %i.cc, ptr %i.ba, align 8, !tbaa !16
  %i.cd = load ptr, ptr %5, align 8, !tbaa !19
  %i.ce = sext i32 %i.cb to i64
  %i.cf = getelementptr inbounds i8, ptr %i.cd, i64 %i.ce
  store i8 46, ptr %i.cf, align 1, !tbaa !20
  %xtraiter79 = and i32 %4, 1
  %i.cg = icmp eq i32 %4, 1
  br i1 %i.cg, label %.epil.preheader, label %.lr.ph.i57.new

.lr.ph.i57.new:                                   ; preds = %.lr.ph.i57
  %unroll_iter82 = and i32 %4, 2147483646
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i57.new
  %niter83 = phi i32 [ 0, %.lr.ph.i57.new ], [ %niter83.next.1, %bb.f ]
  %i.ch = load i32, ptr %i.ba, align 8, !tbaa !16 ; 2 uses
  %i.ci = add nsw i32 %i.ch, 1
  store i32 %i.ci, ptr %i.ba, align 8, !tbaa !16
  %i.cj = load ptr, ptr %5, align 8, !tbaa !19
  %i.ck = sext i32 %i.ch to i64
  %i.cl = getelementptr inbounds i8, ptr %i.cj, i64 %i.ck
  store i8 48, ptr %i.cl, align 1, !tbaa !20
  %i.cm = load i32, ptr %i.ba, align 8, !tbaa !16 ; 2 uses
  %i.cn = add nsw i32 %i.cm, 1
  store i32 %i.cn, ptr %i.ba, align 8, !tbaa !16
  %i.co = load ptr, ptr %5, align 8, !tbaa !19
  %i.cp = sext i32 %i.cm to i64
  %i.cq = getelementptr inbounds i8, ptr %i.co, i64 %i.cp
  store i8 48, ptr %i.cq, align 1, !tbaa !20
  %niter83.next.1 = add nuw nsw i32 %niter83, 2   ; 2 uses
  %niter83.ncmp.1 = icmp eq i32 %niter83.next.1, %unroll_iter82
  br i1 %niter83.ncmp.1, label %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52.thread.loopexit77.unr-lcssa, label %bb.f, !llvm.loop !29

bb.g:                                             ; preds = %bb.d
  %i.cr = zext nneg i32 %3 to i64                 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.be, ptr align 1 %1, i64 %i.cr, i1 false)
  %i.cs = load i32, ptr %i.ba, align 8, !tbaa !16
  %i.ct = add nsw i32 %i.cs, %3                   ; 2 uses
  %i.cu = add nsw i32 %i.ct, 1
  store i32 %i.cu, ptr %i.ba, align 8, !tbaa !16
  %i.cv = load ptr, ptr %5, align 8, !tbaa !19
  %i.cw = sext i32 %i.ct to i64
  %i.cx = getelementptr inbounds i8, ptr %i.cv, i64 %i.cw
  store i8 46, ptr %i.cx, align 1, !tbaa !20
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 %i.cr
  %i.cz = sub nsw i32 %2, %3                      ; 3 uses
  %i.da = load i32, ptr %i.ba, align 8, !tbaa !16
  %i.db = load ptr, ptr %5, align 8, !tbaa !19
  %i.dc = sext i32 %i.da to i64
  %i.dd = getelementptr inbounds i8, ptr %i.db, i64 %i.dc
  %i.de = zext nneg i32 %i.cz to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dd, ptr nonnull align 1 %i.cy, i64 %i.de, i1 false)
  %i.df = load i32, ptr %i.ba, align 8, !tbaa !16
  %i.dg = add nsw i32 %i.df, %i.cz
  store i32 %i.dg, ptr %i.ba, align 8, !tbaa !16
  %i.dh = sub nsw i32 %4, %i.cz                   ; 4 uses
  %i.di = icmp sgt i32 %i.dh, 0
  br i1 %i.di, label %.lr.ph.i61.preheader, label %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52

.lr.ph.i61.preheader:                             ; preds = %bb.g
  %i.dj = add i32 %4, %3
  %.neg99 = add i32 %2, 1
  %xtraiter84 = and i32 %i.dh, 1
  %i.dk = icmp eq i32 %i.dj, %.neg99
  br i1 %i.dk, label %.lr.ph.i61.epil.preheader, label %.lr.ph.i61.preheader.new

.lr.ph.i61.preheader.new:                         ; preds = %.lr.ph.i61.preheader
  %unroll_iter87 = and i32 %i.dh, 2147483646
  br label %.lr.ph.i61

.lr.ph.i61:                                       ; preds = %.lr.ph.i61, %.lr.ph.i61.preheader.new
  %niter88 = phi i32 [ 0, %.lr.ph.i61.preheader.new ], [ %niter88.next.1, %.lr.ph.i61 ]
  %i.dl = load i32, ptr %i.ba, align 8, !tbaa !16 ; 2 uses
  %i.dm = add nsw i32 %i.dl, 1
  store i32 %i.dm, ptr %i.ba, align 8, !tbaa !16
  %i.dn = load ptr, ptr %5, align 8, !tbaa !19
  %i.do = sext i32 %i.dl to i64
  %i.dp = getelementptr inbounds i8, ptr %i.dn, i64 %i.do
  store i8 48, ptr %i.dp, align 1, !tbaa !20
  %i.dq = load i32, ptr %i.ba, align 8, !tbaa !16 ; 2 uses
  %i.dr = add nsw i32 %i.dq, 1
  store i32 %i.dr, ptr %i.ba, align 8, !tbaa !16
  %i.ds = load ptr, ptr %5, align 8, !tbaa !19
  %i.dt = sext i32 %i.dq to i64
  %i.du = getelementptr inbounds i8, ptr %i.ds, i64 %i.dt
  store i8 48, ptr %i.du, align 1, !tbaa !20
  %niter88.next.1 = add i32 %niter88, 2           ; 2 uses
  %niter88.ncmp.1 = icmp eq i32 %niter88.next.1, %unroll_iter87
  br i1 %niter88.ncmp.1, label %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52.loopexit.unr-lcssa, label %.lr.ph.i61, !llvm.loop !29

_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52.loopexit.unr-lcssa: ; preds = %.lr.ph.i61
  %lcmp.mod85.not = icmp eq i32 %xtraiter84, 0
  br i1 %lcmp.mod85.not, label %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52, label %.lr.ph.i61.epil.preheader

.lr.ph.i61.epil.preheader:                        ; preds = %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52.loopexit.unr-lcssa, %.lr.ph.i61.preheader
  %lcmp.mod86 = trunc i32 %i.dh to i1
  tail call void @llvm.assume(i1 %lcmp.mod86)
  %i.dv = load i32, ptr %i.ba, align 8, !tbaa !16 ; 2 uses
  %i.dw = add nsw i32 %i.dv, 1
  store i32 %i.dw, ptr %i.ba, align 8, !tbaa !16
  %i.dx = load ptr, ptr %5, align 8, !tbaa !19
  %i.dy = sext i32 %i.dv to i64
  %i.dz = getelementptr inbounds i8, ptr %i.dx, i64 %i.dy
  store i8 48, ptr %i.dz, align 1, !tbaa !20
  br label %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52

_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52: ; preds = %.lr.ph.i61.epil.preheader, %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52.loopexit.unr-lcssa, %bb.g, %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit56, %bb.b
  %i.ea = icmp eq i32 %4, 0
  br i1 %i.ea, label %bb.h, label %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52.thread

bb.h:                                             ; preds = %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52
  %i.eb = load i32, ptr %0, align 8, !tbaa !8     ; 2 uses
  %i.ec = and i32 %i.eb, 2
  %.not47 = icmp eq i32 %i.ec, 0
  br i1 %.not47, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ed = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !16 ; 2 uses
  %i.ef = add nsw i32 %i.ee, 1
  store i32 %i.ef, ptr %i.ed, align 8, !tbaa !16
  %i.eg = load ptr, ptr %5, align 8, !tbaa !19
  %i.eh = sext i32 %i.ee to i64
  %i.ei = getelementptr inbounds i8, ptr %i.eg, i64 %i.eh
  store i8 46, ptr %i.ei, align 1, !tbaa !20
  %.pre = load i32, ptr %0, align 8, !tbaa !8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ej = phi i32 [ %.pre, %bb.i ], [ %i.eb, %bb.h ]
  %i.ek = and i32 %i.ej, 4
  %.not48 = icmp eq i32 %i.ek, 0
  br i1 %.not48, label %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.el = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.em = load i32, ptr %i.el, align 8, !tbaa !16 ; 2 uses
  %i.en = add nsw i32 %i.em, 1
  store i32 %i.en, ptr %i.el, align 8, !tbaa !16
  %i.eo = load ptr, ptr %5, align 8, !tbaa !19
  %i.ep = sext i32 %i.em to i64
  %i.eq = getelementptr inbounds i8, ptr %i.eo, i64 %i.ep
  store i8 48, ptr %i.eq, align 1, !tbaa !20
  br label %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52.thread

_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52.thread.loopexit.unr-lcssa: ; preds = %.lr.ph.i49
  %lcmp.mod95.not = icmp eq i32 %xtraiter94, 0
  br i1 %lcmp.mod95.not, label %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52.thread, label %.lr.ph.i49.epil.preheader

.lr.ph.i49.epil.preheader:                        ; preds = %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52.thread.loopexit.unr-lcssa, %.lr.ph.i49.preheader
  %lcmp.mod96 = trunc i32 %i.am to i1
  tail call void @llvm.assume(i1 %lcmp.mod96)
  %i.er = load i32, ptr %i.b, align 8, !tbaa !16  ; 2 uses
  %i.es = add nsw i32 %i.er, 1
  store i32 %i.es, ptr %i.b, align 8, !tbaa !16
  %i.et = load ptr, ptr %5, align 8, !tbaa !19
  %i.eu = sext i32 %i.er to i64
  %i.ev = getelementptr inbounds i8, ptr %i.et, i64 %i.eu
  store i8 48, ptr %i.ev, align 1, !tbaa !20
  br label %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52.thread

_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52.thread.loopexit77.unr-lcssa: ; preds = %bb.f
  %lcmp.mod80.not = icmp eq i32 %xtraiter79, 0
  br i1 %lcmp.mod80.not, label %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52.thread, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52.thread.loopexit77.unr-lcssa, %.lr.ph.i57
  %lcmp.mod81 = trunc i32 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod81)
  %i.ew = load i32, ptr %i.ba, align 8, !tbaa !16 ; 2 uses
  %i.ex = add nsw i32 %i.ew, 1
  store i32 %i.ex, ptr %i.ba, align 8, !tbaa !16
  %i.ey = load ptr, ptr %5, align 8, !tbaa !19
  %i.ez = sext i32 %i.ew to i64
  %i.fa = getelementptr inbounds i8, ptr %i.ey, i64 %i.ez
  store i8 48, ptr %i.fa, align 1, !tbaa !20
  br label %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52.thread

_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52.thread: ; preds = %.epil.preheader, %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52.thread.loopexit77.unr-lcssa, %.lr.ph.i49.epil.preheader, %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52.thread.loopexit.unr-lcssa, %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit, %bb.j, %bb.k, %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter20ToShortestIeeeNumberEdPNS0_13StringBuilderENS1_8DtoaModeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, double noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca [18 x i8], align 16               ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = tail call double @llvm.fabs.f64(double %1) ; 2 uses
  %i.f = fcmp ueq double %i.e, +inf
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = fcmp oeq double %i.e, +inf
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !12   ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS0_13StringBuilderE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = fcmp olt double %1, 0.000000e+00
  br i1 %i.k, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !16   ; 2 uses
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 8, !tbaa !16
  %i.o = load ptr, ptr %2, align 8, !tbaa !19
  %i.p = sext i32 %i.m to i64
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 %i.p
  store i8 45, ptr %i.q, align 1, !tbaa !20
  %.pre.i = load ptr, ptr %i.h, align 8, !tbaa !12
  br label %.sink.split.i

bb.f:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS0_13StringBuilderE.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.f, %bb.e, %bb.d
  %.sink23.i = phi ptr [ %i.i, %bb.d ], [ %.pre.i, %bb.e ], [ %i.s, %bb.f ] ; 2 uses
  %i.u = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sink23.i) #13 ; 2 uses
  %i.v = trunc i64 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !16
  %i.y = load ptr, ptr %2, align 8, !tbaa !19
  %i.z = sext i32 %i.x to i64
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 %i.z
  %sext.i8.i = shl i64 %i.u, 32
  %i.ab = ashr exact i64 %sext.i8.i, 32
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr nonnull align 1 %.sink23.i, i64 %i.ab, i1 false)
  %i.ac = load i32, ptr %i.w, align 8, !tbaa !16
  %i.ad = add nsw i32 %i.ac, %i.v
  store i32 %i.ad, ptr %i.w, align 8, !tbaa !16
  br label %_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS0_13StringBuilderE.exit

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @_ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_(double noundef %1, i32 noundef %3, i32 noundef 0, ptr noundef nonnull %i.c, i32 noundef 18, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a)
  %i.ae = load i8, ptr %i.b, align 1, !tbaa !30, !range !32, !noundef !33
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ag = load i32, ptr %0, align 8, !tbaa !8
  %i.ah = and i32 %i.ag, 8
  %i.ai = icmp ne i32 %i.ah, 0
  %i.aj = fcmp oeq double %1, 0.000000e+00
  %or.cond = select i1 %i.aj, i1 %i.ai, i1 false
  br i1 %or.cond, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !16 ; 2 uses
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 8, !tbaa !16
  %i.an = load ptr, ptr %2, align 8, !tbaa !19
  %i.ao = sext i32 %i.al to i64
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 %i.ao
  store i8 45, ptr %i.ap, align 1, !tbaa !20
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %i.aq = load i32, ptr %i.a, align 4, !tbaa !3   ; 5 uses
  %i.ar = add nsw i32 %i.aq, -1
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.at = load i32, ptr %i.as, align 4, !tbaa !34
  %.not.not = icmp slt i32 %i.at, %i.aq
  br i1 %.not.not, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.av = load i32, ptr %i.au, align 8, !tbaa !35
  %.not = icmp sgt i32 %i.aq, %i.av
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = load i32, ptr %i.d, align 4, !tbaa !3   ; 2 uses
  %i.ax = sub nsw i32 %i.aw, %i.aq
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.ax, i32 0)
  call void @_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter27CreateDecimalRepresentationEPKciiiPNS0_13StringBuilderE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.c, i32 noundef %i.aw, i32 noundef %i.aq, i32 noundef %.sroa.speculated, ptr noundef %2)
  br label %bb.n

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.ay = load i32, ptr %i.d, align 4, !tbaa !3
  call void @_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter31CreateExponentialRepresentationEPKciiPNS0_13StringBuilderE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.c, i32 noundef %i.ay, i32 noundef %i.ar, ptr noundef %2)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS0_13StringBuilderE.exit

_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS0_13StringBuilderE.exit: ; preds = %.sink.split.i, %bb.f, %bb.c, %bb.n
  %.0 = phi i1 [ true, %bb.n ], [ true, %.sink.split.i ], [ false, %bb.f ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_(double noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = bitcast double %0 to i64
  %.lobit = lshr i64 %i.a, 63
  %.sink = trunc nuw nsw i64 %.lobit to i8
  %.0 = tail call double @llvm.fabs.f64(double %0) ; 5 uses
  store i8 %.sink, ptr %5, align 1, !tbaa !30
  %i.b = icmp eq i32 %1, 3
  %i.c = icmp eq i32 %2, 0
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %3, align 1, !tbaa !20
  store i32 0, ptr %6, align 4, !tbaa !3
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.d = fcmp oeq double %0, 0.000000e+00
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 48, ptr %3, align 1, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 0, ptr %i.e, align 1, !tbaa !20
  store i32 1, ptr %6, align 4, !tbaa !3
  store i32 1, ptr %7, align 4, !tbaa !3
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  switch i32 %1, label %bb.i [
    i32 0, label %bb.f
    i32 1, label %bb.j
    i32 2, label %bb.g
    i32 3, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.f = tail call noundef zeroext i1 @_ZN14arrow_vendored17double_conversion8FastDtoaEdNS0_12FastDtoaModeEiNS0_6VectorIcEEPiS4_(double noundef %.0, i32 noundef 0, i32 noundef 0, ptr %3, i32 %4, ptr noundef %6, ptr noundef %7)
  br i1 %i.f, label %bb.k, label %_ZN14arrow_vendored17double_conversionL20DtoaToBignumDtoaModeENS0_23DoubleToStringConverter8DtoaModeE.exit

bb.g:                                             ; preds = %bb.e
  %i.g = tail call noundef zeroext i1 @_ZN14arrow_vendored17double_conversion13FastFixedDtoaEdiNS0_6VectorIcEEPiS3_(double noundef %.0, i32 noundef %2, ptr %3, i32 %4, ptr noundef %6, ptr noundef %7)
  br i1 %i.g, label %bb.k, label %_ZN14arrow_vendored17double_conversionL20DtoaToBignumDtoaModeENS0_23DoubleToStringConverter8DtoaModeE.exit

bb.h:                                             ; preds = %bb.e
  %i.h = tail call noundef zeroext i1 @_ZN14arrow_vendored17double_conversion8FastDtoaEdNS0_12FastDtoaModeEiNS0_6VectorIcEEPiS4_(double noundef %.0, i32 noundef 2, i32 noundef %2, ptr %3, i32 %4, ptr noundef %6, ptr noundef %7)
  br i1 %i.h, label %bb.k, label %_ZN14arrow_vendored17double_conversionL20DtoaToBignumDtoaModeENS0_23DoubleToStringConverter8DtoaModeE.exit

bb.i:                                             ; preds = %bb.e
  tail call void @abort() #14
  unreachable

bb.j:                                             ; preds = %bb.e
  %i.i = tail call noundef zeroext i1 @_ZN14arrow_vendored17double_conversion8FastDtoaEdNS0_12FastDtoaModeEiNS0_6VectorIcEEPiS4_(double noundef %.0, i32 noundef 1, i32 noundef 0, ptr %3, i32 %4, ptr noundef %6, ptr noundef %7)
  br i1 %i.i, label %bb.k, label %_ZN14arrow_vendored17double_conversionL20DtoaToBignumDtoaModeENS0_23DoubleToStringConverter8DtoaModeE.exit

_ZN14arrow_vendored17double_conversionL20DtoaToBignumDtoaModeENS0_23DoubleToStringConverter8DtoaModeE.exit: ; preds = %bb.j, %bb.f, %bb.h, %bb.g
  tail call void @_ZN14arrow_vendored17double_conversion10BignumDtoaEdNS0_14BignumDtoaModeEiNS0_6VectorIcEEPiS4_(double noundef %.0, i32 noundef %1, i32 noundef %2, ptr %3, i32 %4, ptr noundef %6, ptr noundef %7)
  %i.j = load i32, ptr %6, align 4, !tbaa !3
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds i8, ptr %3, i64 %i.k
  store i8 0, ptr %i.l, align 1, !tbaa !20
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.h, %bb.f, %_ZN14arrow_vendored17double_conversionL20DtoaToBignumDtoaModeENS0_23DoubleToStringConverter8DtoaModeE.exit, %bb.j, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter7ToFixedEdiPNS0_13StringBuilderE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, double noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca [161 x i8], align 16              ; 8 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = bitcast double %1 to i64                 ; 2 uses
  %i.e = and i64 %i.d, 9218868437227405312
  %i.f = icmp eq i64 %i.e, 9218868437227405312
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = tail call double @llvm.fabs.f64(double %1)
  %i.h = fcmp oeq double %i.g, +inf
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !12   ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS0_13StringBuilderE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = fcmp olt double %1, 0.000000e+00
  br i1 %i.l, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !16   ; 2 uses
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 8, !tbaa !16
  %i.p = load ptr, ptr %3, align 8, !tbaa !19
  %i.q = sext i32 %i.n to i64
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 %i.q
  store i8 45, ptr %i.r, align 1, !tbaa !20
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !12
  br label %.sink.split.i

bb.f:                                             ; preds = %bb.b
  %i.s = fcmp ord double %1, 0.000000e+00
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  %or.cond.i = select i1 %i.s, i1 true, i1 %i.v
  br i1 %or.cond.i, label %_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS0_13StringBuilderE.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.f, %bb.e, %bb.d
  %.sink23.i = phi ptr [ %i.j, %bb.d ], [ %.pre.i, %bb.e ], [ %i.u, %bb.f ] ; 2 uses
  %i.w = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sink23.i) #13 ; 2 uses
  %i.x = trunc i64 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !16
  %i.aa = load ptr, ptr %3, align 8, !tbaa !19
  %i.ab = sext i32 %i.z to i64
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 %i.ab
  %sext.i8.i = shl i64 %i.w, 32
  %i.ad = ashr exact i64 %sext.i8.i, 32
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull align 1 %.sink23.i, i64 %i.ad, i1 false)
  %i.ae = load i32, ptr %i.y, align 8, !tbaa !16
  %i.af = add nsw i32 %i.ae, %i.x
  store i32 %i.af, ptr %i.y, align 8, !tbaa !16
  br label %_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS0_13StringBuilderE.exit

bb.g:                                             ; preds = %bb.a
  %i.ag = icmp slt i32 %2, 101
  %i.ah = tail call double @llvm.fabs.f64(double %1) ; 3 uses
  %or.cond = fcmp ult double %i.ah, f0x4C63E9E4E4C2F344
  %or.cond19 = and i1 %i.ag, %or.cond
  br i1 %or.cond19, label %bb.h, label %_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS0_13StringBuilderE.exit

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.ai = fcmp oeq double %1, 0.000000e+00        ; 2 uses
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 48, ptr %i.b, align 16, !tbaa !20
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 0, ptr %i.aj, align 1, !tbaa !20
  store i32 1, ptr %i.c, align 4, !tbaa !3
  store i32 1, ptr %i.a, align 4, !tbaa !3
  br label %_ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_.exit

bb.j:                                             ; preds = %bb.h
  %i.ak = call noundef zeroext i1 @_ZN14arrow_vendored17double_conversion13FastFixedDtoaEdiNS0_6VectorIcEEPiS3_(double noundef %i.ah, i32 noundef %2, ptr nonnull %i.b, i32 161, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a)
  br i1 %i.ak, label %_ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_.exit, label %_ZN14arrow_vendored17double_conversionL20DtoaToBignumDtoaModeENS0_23DoubleToStringConverter8DtoaModeE.exit.i

_ZN14arrow_vendored17double_conversionL20DtoaToBignumDtoaModeENS0_23DoubleToStringConverter8DtoaModeE.exit.i: ; preds = %bb.j
  call void @_ZN14arrow_vendored17double_conversion10BignumDtoaEdNS0_14BignumDtoaModeEiNS0_6VectorIcEEPiS4_(double noundef %i.ah, i32 noundef 2, i32 noundef %2, ptr nonnull %i.b, i32 161, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a)
  %i.al = load i32, ptr %i.c, align 4, !tbaa !3
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds i8, ptr %i.b, i64 %i.am
  store i8 0, ptr %i.an, align 1, !tbaa !20
  br label %_ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_.exit

_ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_.exit: ; preds = %bb.i, %bb.j, %_ZN14arrow_vendored17double_conversionL20DtoaToBignumDtoaModeENS0_23DoubleToStringConverter8DtoaModeE.exit.i
  %i.ao = icmp slt i64 %i.d, 0
  br i1 %i.ao, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_.exit
  %i.ap = load i32, ptr %0, align 8, !tbaa !8
  %i.aq = and i32 %i.ap, 8
  %i.ar = icmp ne i32 %i.aq, 0
  %or.cond3 = select i1 %i.ai, i1 %i.ar, i1 false
  br i1 %or.cond3, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !16 ; 2 uses
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr %i.as, align 8, !tbaa !16
  %i.av = load ptr, ptr %3, align 8, !tbaa !19
  %i.aw = sext i32 %i.at to i64
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 %i.aw
  store i8 45, ptr %i.ax, align 1, !tbaa !20
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %_ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_.exit
  %i.ay = load i32, ptr %i.c, align 4, !tbaa !3
  %i.az = load i32, ptr %i.a, align 4, !tbaa !3
  call void @_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter27CreateDecimalRepresentationEPKciiiPNS0_13StringBuilderE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b, i32 noundef %i.ay, i32 noundef %i.az, i32 noundef %2, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS0_13StringBuilderE.exit

_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS0_13StringBuilderE.exit: ; preds = %.sink.split.i, %bb.f, %bb.c, %bb.g, %bb.m
  %.0 = phi i1 [ false, %bb.g ], [ true, %bb.m ], [ true, %.sink.split.i ], [ false, %bb.f ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter13ToExponentialEdiPNS0_13StringBuilderE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, double noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = alloca [122 x i8], align 16              ; 14 uses
end_hunk_0
begin_hunk_1_@_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter13ToExponentialEdiPNS0_13StringBuilderE:bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 0, ptr %i.aq, align 1, !tbaa !20
  store i32 1, ptr %i.a, align 4, !tbaa !3
  br label %_ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_.exit31

bb.n:                                             ; preds = %bb.l
  %i.ar = call noundef zeroext i1 @_ZN14arrow_vendored17double_conversion8FastDtoaEdNS0_12FastDtoaModeEiNS0_6VectorIcEEPiS4_(double noundef %.0.i28, i32 noundef 2, i32 noundef %i.ao, ptr nonnull %i.b, i32 122, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a)
  br i1 %i.ar, label %._ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_.exit31_crit_edge, label %_ZN14arrow_vendored17double_conversionL20DtoaToBignumDtoaModeENS0_23DoubleToStringConverter8DtoaModeE.exit.i30

._ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_.exit31_crit_edge: ; preds = %bb.n
  %.pre = load i32, ptr %i.c, align 4, !tbaa !3
  br label %_ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_.exit31

_ZN14arrow_vendored17double_conversionL20DtoaToBignumDtoaModeENS0_23DoubleToStringConverter8DtoaModeE.exit.i30: ; preds = %bb.n
  call void @_ZN14arrow_vendored17double_conversion10BignumDtoaEdNS0_14BignumDtoaModeEiNS0_6VectorIcEEPiS4_(double noundef %.0.i28, i32 noundef 3, i32 noundef %i.ao, ptr nonnull %i.b, i32 122, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a)
  %i.as = load i32, ptr %i.c, align 4, !tbaa !3   ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds i8, ptr %i.b, i64 %i.at
  store i8 0, ptr %i.au, align 1, !tbaa !20
  br label %_ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_.exit31

_ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_.exit31: ; preds = %._ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_.exit31_crit_edge, %bb.m, %_ZN14arrow_vendored17double_conversionL20DtoaToBignumDtoaModeENS0_23DoubleToStringConverter8DtoaModeE.exit.i30
  %i.av = phi i32 [ %.pre, %._ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_.exit31_crit_edge ], [ 1, %bb.m ], [ %i.as, %_ZN14arrow_vendored17double_conversionL20DtoaToBignumDtoaModeENS0_23DoubleToStringConverter8DtoaModeE.exit.i30 ] ; 3 uses
  %.not33 = icmp sgt i32 %i.av, %2
  br i1 %.not33, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_.exit31
  %i.aw = sext i32 %i.av to i64
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.aw
  %i.ax = sub i32 %2, %i.av
  %i.ay = zext i32 %i.ax to i64
  %i.az = add nuw nsw i64 %i.ay, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 48, i64 %i.az, i1 false), !tbaa !20
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %_ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_.exit31
  store i32 %i.ao, ptr %i.c, align 4, !tbaa !3
  br label %_ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_.exit

_ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_.exit: ; preds = %_ZN14arrow_vendored17double_conversionL20DtoaToBignumDtoaModeENS0_23DoubleToStringConverter8DtoaModeE.exit.i, %bb.k, %bb.j, %._crit_edge
  %i.ba = icmp slt i64 %i.d, 0
  br i1 %i.ba, label %bb.o, label %bb.q

bb.o:                                             ; preds = %_ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_.exit
  %i.bb = load i32, ptr %0, align 8, !tbaa !8
  %i.bc = and i32 %i.bb, 8
  %i.bd = icmp ne i32 %i.bc, 0
  %i.be = fcmp oeq double %1, 0.000000e+00
  %or.cond = select i1 %i.be, i1 %i.bd, i1 false
  br i1 %or.cond, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !16 ; 2 uses
  %i.bh = add nsw i32 %i.bg, 1
  store i32 %i.bh, ptr %i.bf, align 8, !tbaa !16
  %i.bi = load ptr, ptr %3, align 8, !tbaa !19
  %i.bj = sext i32 %i.bg to i64
  %i.bk = getelementptr inbounds i8, ptr %i.bi, i64 %i.bj
  store i8 45, ptr %i.bk, align 1, !tbaa !20
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %_ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_.exit
  %i.bl = load i32, ptr %i.a, align 4, !tbaa !3
  %i.bm = add nsw i32 %i.bl, -1
  %i.bn = load i32, ptr %i.c, align 4, !tbaa !3
  call void @_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter31CreateExponentialRepresentationEPKciiPNS0_13StringBuilderE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b, i32 noundef %i.bn, i32 noundef %i.bm, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS0_13StringBuilderE.exit

_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS0_13StringBuilderE.exit: ; preds = %.sink.split.i, %bb.f, %bb.c, %bb.g, %bb.q
  %.0 = phi i1 [ false, %bb.g ], [ true, %bb.q ], [ true, %.sink.split.i ], [ false, %bb.f ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter11ToPrecisionEdiPNS0_13StringBuilderE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, double noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca [121 x i8], align 16              ; 12 uses
  %i.c = alloca i32, align 4                      ; 11 uses
  %i.d = bitcast double %1 to i64                 ; 2 uses
  %i.e = and i64 %i.d, 9218868437227405312
  %i.f = icmp eq i64 %i.e, 9218868437227405312
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = tail call double @llvm.fabs.f64(double %1)
  %i.h = fcmp oeq double %i.g, +inf
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !12   ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS0_13StringBuilderE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = fcmp olt double %1, 0.000000e+00
  br i1 %i.l, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !16   ; 2 uses
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 8, !tbaa !16
  %i.p = load ptr, ptr %3, align 8, !tbaa !19
  %i.q = sext i32 %i.n to i64
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 %i.q
  store i8 45, ptr %i.r, align 1, !tbaa !20
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !12
  br label %.sink.split.i

bb.f:                                             ; preds = %bb.b
  %i.s = fcmp ord double %1, 0.000000e+00
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  %or.cond.i = select i1 %i.s, i1 true, i1 %i.v
  br i1 %or.cond.i, label %_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS0_13StringBuilderE.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.f, %bb.e, %bb.d
  %.sink23.i = phi ptr [ %i.j, %bb.d ], [ %.pre.i, %bb.e ], [ %i.u, %bb.f ] ; 2 uses
  %i.w = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sink23.i) #13 ; 2 uses
  %i.x = trunc i64 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !16
  %i.aa = load ptr, ptr %3, align 8, !tbaa !19
  %i.ab = sext i32 %i.z to i64
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 %i.ab
  %sext.i8.i = shl i64 %i.w, 32
  %i.ad = ashr exact i64 %sext.i8.i, 32
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull align 1 %.sink23.i, i64 %i.ad, i1 false)
  %i.ae = load i32, ptr %i.y, align 8, !tbaa !16
  %i.af = add nsw i32 %i.ae, %i.x
  store i32 %i.af, ptr %i.y, align 8, !tbaa !16
  br label %_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS0_13StringBuilderE.exit

bb.g:                                             ; preds = %bb.a
  %i.ag = add i32 %2, -121
  %or.cond = icmp ult i32 %i.ag, -120
  br i1 %or.cond, label %_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS0_13StringBuilderE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %.0.i24 = tail call double @llvm.fabs.f64(double %1) ; 2 uses
  %i.ah = fcmp oeq double %1, 0.000000e+00        ; 2 uses
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 48, ptr %i.b, align 16, !tbaa !20
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 0, ptr %i.ai, align 1, !tbaa !20
  store i32 1, ptr %i.c, align 4, !tbaa !3
  store i32 1, ptr %i.a, align 4, !tbaa !3
  br label %_ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_.exit

bb.j:                                             ; preds = %bb.h
  %i.aj = call noundef zeroext i1 @_ZN14arrow_vendored17double_conversion8FastDtoaEdNS0_12FastDtoaModeEiNS0_6VectorIcEEPiS4_(double noundef %.0.i24, i32 noundef 2, i32 noundef %2, ptr nonnull %i.b, i32 121, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a)
  br i1 %i.aj, label %_ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_.exit, label %_ZN14arrow_vendored17double_conversionL20DtoaToBignumDtoaModeENS0_23DoubleToStringConverter8DtoaModeE.exit.i

_ZN14arrow_vendored17double_conversionL20DtoaToBignumDtoaModeENS0_23DoubleToStringConverter8DtoaModeE.exit.i: ; preds = %bb.j
  call void @_ZN14arrow_vendored17double_conversion10BignumDtoaEdNS0_14BignumDtoaModeEiNS0_6VectorIcEEPiS4_(double noundef %.0.i24, i32 noundef 3, i32 noundef %2, ptr nonnull %i.b, i32 121, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a)
  %i.ak = load i32, ptr %i.c, align 4, !tbaa !3
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds i8, ptr %i.b, i64 %i.al
  store i8 0, ptr %i.am, align 1, !tbaa !20
  br label %_ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_.exit

_ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_.exit: ; preds = %bb.i, %bb.j, %_ZN14arrow_vendored17double_conversionL20DtoaToBignumDtoaModeENS0_23DoubleToStringConverter8DtoaModeE.exit.i
  %i.an = icmp slt i64 %i.d, 0
  br i1 %i.an, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_.exit
  %i.ao = load i32, ptr %0, align 8, !tbaa !8
  %i.ap = and i32 %i.ao, 8
  %i.aq = icmp ne i32 %i.ap, 0
  %or.cond3 = select i1 %i.ah, i1 %i.aq, i1 false
  br i1 %or.cond3, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !16 ; 2 uses
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !16
  %i.au = load ptr, ptr %3, align 8, !tbaa !19
  %i.av = sext i32 %i.as to i64
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 %i.av
  store i8 45, ptr %i.aw, align 1, !tbaa !20
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %_ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_.exit
  %i.ax = load i32, ptr %i.a, align 4, !tbaa !3   ; 6 uses
  %i.ay = add nsw i32 %i.ax, -1
  %i.az = sub i32 1, %i.ax
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !36
  %i.bc = icmp sgt i32 %i.az, %i.bb
  %i.bd = load i32, ptr %0, align 8, !tbaa !8     ; 3 uses
  br i1 %i.bc, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = lshr i32 %i.bd, 2
  %.lobit = and i32 %i.be, 1
  %i.bf = sub i32 %i.ax, %2
  %i.bg = add nsw i32 %i.bf, %.lobit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !37
  %i.bj = icmp sgt i32 %i.bg, %i.bi               ; 2 uses
  %i.bk = and i32 %i.bd, 16
  %.not = icmp eq i32 %i.bk, 0
  br i1 %.not, label %bb.q, label %bb.o

.thread:                                          ; preds = %bb.m
  %i.bl = and i32 %i.bd, 16
  %.not50 = icmp eq i32 %i.bl, 0
  br i1 %.not50, label %.thread..thread52_crit_edge, label %.thread51

.thread..thread52_crit_edge:                      ; preds = %.thread
  %.pre65 = load i32, ptr %i.c, align 4, !tbaa !3
  br label %.thread52

bb.o:                                             ; preds = %bb.n
  br i1 %i.bj, label %.thread51, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.sroa.speculated31 = call i32 @llvm.smax.i32(i32 %i.ax, i32 1)
  br label %.thread51

.thread51:                                        ; preds = %.thread, %bb.o, %bb.p
  %i.bm = phi i1 [ false, %bb.p ], [ true, %bb.o ], [ true, %.thread ]
  %i.bn = phi i32 [ %.sroa.speculated31, %bb.p ], [ 1, %bb.o ], [ 1, %.thread ] ; 3 uses
  %.promoted = load i32, ptr %i.c, align 4, !tbaa !3 ; 6 uses
  %i.bo = icmp sgt i32 %.promoted, %i.bn
  br i1 %i.bo, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.thread51
  %i.bp = zext nneg i32 %.promoted to i64         ; 2 uses
  %i.bq = zext nneg i32 %i.bn to i64
  %i.br = getelementptr i8, ptr %i.b, i64 %i.bp
  %i.bs = getelementptr i8, ptr %i.br, i64 -1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !20
  %i.bu = icmp eq i8 %i.bt, 48
  br i1 %i.bu, label %.lr.ph78, label %.critedge

.lr.ph:                                           ; preds = %.lr.ph78
  %i.bv = getelementptr i8, ptr %i.b, i64 %indvars.iv.next
  %i.bw = getelementptr i8, ptr %i.bv, i64 -1
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !20
  %i.by = icmp eq i8 %i.bx, 48
  br i1 %i.by, label %.lr.ph78, label %.lr.ph..critedge.loopexit.split.loop.exit70_crit_edge, !llvm.loop !38

.lr.ph78:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv77 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %i.bp, %.lr.ph.preheader ]
  %indvars.iv.next = add nsw i64 %indvars.iv77, -1 ; 5 uses
  %i.bz = trunc nuw nsw i64 %indvars.iv.next to i32 ; 4 uses
  %i.ca = icmp sgt i64 %indvars.iv.next, %i.bq
  br i1 %i.ca, label %.lr.ph, label %.critedge.loopexit, !llvm.loop !38

.lr.ph..critedge.loopexit.split.loop.exit70_crit_edge: ; preds = %.lr.ph
  store i32 %i.bz, ptr %i.c, align 4, !tbaa !3
  %i.cb = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.critedge

.critedge.loopexit:                               ; preds = %.lr.ph78
  store i32 %i.bz, ptr %i.c, align 4, !tbaa !3
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.lr.ph.preheader, %.lr.ph..critedge.loopexit.split.loop.exit70_crit_edge, %.thread51
  %i.cc = phi i32 [ %.promoted, %.thread51 ], [ %.promoted, %.lr.ph.preheader ], [ %i.bz, %.lr.ph..critedge.loopexit.split.loop.exit70_crit_edge ], [ %i.bz, %.critedge.loopexit ] ; 2 uses
  %.lcssa = phi i32 [ %.promoted, %.thread51 ], [ %.promoted, %.lr.ph.preheader ], [ %i.cb, %.lr.ph..critedge.loopexit.split.loop.exit70_crit_edge ], [ %i.bn, %.critedge.loopexit ]
  %.sroa.speculated41 = call i32 @llvm.smin.i32(i32 %.lcssa, i32 %2) ; 2 uses
  br i1 %i.bm, label %.thread52, label %._crit_edge64

bb.q:                                             ; preds = %bb.n
  %.pre66 = load i32, ptr %i.c, align 4, !tbaa !3 ; 2 uses
  br i1 %i.bj, label %.thread52, label %._crit_edge64

.thread52:                                        ; preds = %.thread..thread52_crit_edge, %.critedge, %bb.q
  %i.cd = phi i32 [ %i.cc, %.critedge ], [ %.pre66, %bb.q ], [ %.pre65, %.thread..thread52_crit_edge ] ; 3 uses
  %.04954 = phi i32 [ %.sroa.speculated41, %.critedge ], [ %2, %bb.q ], [ %2, %.thread..thread52_crit_edge ] ; 3 uses
  %i.ce = icmp slt i32 %i.cd, %.04954
  br i1 %i.ce, label %.lr.ph59.preheader, label %._crit_edge

.lr.ph59.preheader:                               ; preds = %.thread52
  %i.cf = sext i32 %i.cd to i64
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.cf
  %i.cg = xor i32 %i.cd, -1
  %i.ch = add i32 %.04954, %i.cg
  %i.ci = zext i32 %i.ch to i64
  %i.cj = add nuw nsw i64 %i.ci, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 48, i64 %i.cj, i1 false), !tbaa !20
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph59.preheader, %.thread52
  call void @_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter31CreateExponentialRepresentationEPKciiPNS0_13StringBuilderE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b, i32 noundef %.04954, i32 noundef %i.ay, ptr noundef %3)
  br label %bb.r

._crit_edge64:                                    ; preds = %bb.q, %.critedge
  %i.ck = phi i32 [ %i.cc, %.critedge ], [ %.pre66, %bb.q ]
  %.04955 = phi i32 [ %.sroa.speculated41, %.critedge ], [ %2, %bb.q ]
  %i.cl = sub nsw i32 %.04955, %i.ax
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.cl, i32 0)
  call void @_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter27CreateDecimalRepresentationEPKciiiPNS0_13StringBuilderE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b, i32 noundef %i.ck, i32 noundef %i.ax, i32 noundef %.sroa.speculated, ptr noundef %3)
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge64, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS0_13StringBuilderE.exit

_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS0_13StringBuilderE.exit: ; preds = %.sink.split.i, %bb.f, %bb.c, %bb.g, %bb.r
  %.021 = phi i1 [ false, %bb.g ], [ true, %bb.r ], [ true, %.sink.split.i ], [ false, %bb.f ], [ false, %bb.c ]
  ret i1 %.021
}

declare noundef zeroext i1 @_ZN14arrow_vendored17double_conversion8FastDtoaEdNS0_12FastDtoaModeEiNS0_6VectorIcEEPiS4_(double noundef, i32 noundef, i32 noundef, ptr, i32, ptr noundef, ptr noundef) local_unnamed_addr #6

declare noundef zeroext i1 @_ZN14arrow_vendored17double_conversion13FastFixedDtoaEdiNS0_6VectorIcEEPiS3_(double noundef, i32 noundef, ptr, i32, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #7

declare void @_ZN14arrow_vendored17double_conversion10BignumDtoaEdNS0_14BignumDtoaModeEiNS0_6VectorIcEEPiS4_(double noundef, i32 noundef, i32 noundef, ptr, i32, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"branch_weights", i32 1, i32 1048575}
!8 = !{!9, !4, i64 0}
!9 = !{!"_ZTSN14arrow_vendored17double_conversion23DoubleToStringConverterE", !4, i64 0, !10, i64 8, !10, i64 16, !5, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!9, !10, i64 8}
!13 = !{!9, !10, i64 16}
!14 = !{!9, !5, i64 24}
!15 = !{!9, !4, i64 44}
!16 = !{!17, !4, i64 16}
!17 = !{!"_ZTSN14arrow_vendored17double_conversion13StringBuilderE", !18, i64 0, !4, i64 16}
!18 = !{!"_ZTSN14arrow_vendored17double_conversion6VectorIcEE", !10, i64 0, !4, i64 8}
!19 = !{!18, !10, i64 0}
!20 = !{!5, !5, i64 0}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = distinct !{!23, !22, !24, !25}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = !{!"branch_weights", i32 4, i32 28}
!27 = distinct !{!27, !22, !24, !25}
!28 = distinct !{!28, !22, !25, !24}
!29 = distinct !{!29, !22}
!30 = !{!31, !31, i64 0}
!31 = !{!"bool", !5, i64 0}
!32 = !{i8 0, i8 2}
!33 = !{}
!34 = !{!9, !4, i64 28}
!35 = !{!9, !4, i64 32}
!36 = !{!9, !4, i64 36}
!37 = !{!9, !4, i64 40}
!38 = distinct !{!38, !22}
end_hunk_1
