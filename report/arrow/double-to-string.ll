inline.NumInlined: 75
inline.NumDeleted: 19
begin_hunk_0_@_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS0_13StringBuilderE:bb.a
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
  %i.cb = sub nsw i64 6, %i.bz
  %smax = tail call i64 @llvm.smax.i64(i64 %i.ca, i64 %i.cb)
  %i.cc = add i64 %smax, %i.bz
  %i.cd = add i64 %i.cc, -5                       ; 7 uses
  %min.iters.check = icmp ult i64 %i.cd, 4
  br i1 %min.iters.check, label %.lr.ph37.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check58 = icmp ult i64 %i.cd, 32
  br i1 %min.iters.check58, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.cd, 28
  %n.vec = and i64 %i.cd, -32                     ; 4 uses
  %i.ce = sub i64 %i.bz, %n.vec                   ; 3 uses
  %i.cf = add nsw i64 %i.bz, -15
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.cg = phi i64 [ %i.cf, %vector.ph ], [ %i.ch, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ch = add nsw i64 %i.cg, -32
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  %i.cj = sub nsw i64 22, %i.cg
  %cmp.n = icmp eq i64 %i.cd, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph37.preheader, label %vec.epilog.ph, !prof !26

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %i.ce, %vec.epilog.iter.check ], [ %i.bz, %vector.main.loop.iter.check ]
  %n.vec60 = and i64 %i.cd, -4                    ; 3 uses
  %i.ck = sub i64 %i.bz, %n.vec60                 ; 2 uses
  %i.cl = add nsw i64 %bc.resume.val, -3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index63 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next65, %vec.epilog.vector.body ]
  %i.cm = phi i64 [ %i.cl, %vec.epilog.ph ], [ %i.cn, %vec.epilog.vector.body ] ; 2 uses
  %index.next65 = add nuw i64 %index63, 4         ; 2 uses
  %i.cn = add nsw i64 %i.cm, -4
  %i.co = icmp eq i64 %index.next65, %n.vec60
  br i1 %i.co, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !27

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.cp = sub nsw i64 6, %i.cm
  %cmp.n66 = icmp eq i64 %i.cd, %n.vec60
  br i1 %cmp.n66, label %._crit_edge.loopexit, label %.lr.ph37.preheader

.lr.ph37.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv45.ph = phi i64 [ %i.bz, %iter.check ], [ %i.ce, %vec.epilog.iter.check ], [ %i.ck, %vec.epilog.middle.block ]
  br label %.lr.ph37

.lr.ph37:                                         ; preds = %.lr.ph37.preheader, %.lr.ph37
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %.lr.ph37 ], [ %indvars.iv45.ph, %.lr.ph37.preheader ] ; 2 uses
  %indvars.iv.next46 = add nsw i64 %indvars.iv45, -1 ; 2 uses
  %i.cq = sub nsw i64 6, %indvars.iv45            ; 2 uses
  %i.cr = icmp slt i64 %i.cq, %i.ca
  br i1 %i.cr, label %.lr.ph37, label %._crit_edge.loopexit, !llvm.loop !28

._crit_edge.loopexit:                             ; preds = %.lr.ph37, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next46.lcssa = phi i64 [ %i.ck, %vec.epilog.middle.block ], [ %i.ce, %middle.block ], [ %indvars.iv.next46, %.lr.ph37 ]
  %.lcssa57 = phi i64 [ %i.cp, %vec.epilog.middle.block ], [ %i.cj, %middle.block ], [ %i.cq, %.lr.ph37 ]
  %i.cs = trunc nsw i64 %.lcssa57 to i32
  %i.ct = trunc nsw i64 %indvars.iv.next46.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.loopexit
  %.2.lcssa = phi i32 [ %.1, %.loopexit ], [ %i.ct, %._crit_edge.loopexit ]
  %.lcssa = phi i32 [ %i.bq, %.loopexit ], [ %i.cs, %._crit_edge.loopexit ] ; 2 uses
  %i.cu = sext i32 %.2.lcssa to i64
  %i.cv = getelementptr inbounds i8, ptr %i.a, i64 %i.cu
  %i.cw = load i32, ptr %i.c, align 8, !tbaa !16
  %i.cx = load ptr, ptr %4, align 8, !tbaa !19
  %i.cy = sext i32 %i.cw to i64
  %i.cz = getelementptr inbounds i8, ptr %i.cx, i64 %i.cy
  %i.da = sext i32 %.lcssa to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cz, ptr nonnull align 1 %i.cv, i64 %i.da, i1 false)
  %i.db = load i32, ptr %i.c, align 8, !tbaa !16
  %i.dc = add nsw i32 %i.db, %.lcssa
  store i32 %i.dc, ptr %i.c, align 8, !tbaa !16
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
end_hunk_0
