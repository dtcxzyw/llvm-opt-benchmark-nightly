Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/autoit?download=true
inline.NumInlined: 33
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 18
begin_hunk_0_@LAME_decrypt:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.aj = tail call i32 @llvm.fshl.i32(i32 %i.c, i32 %i.c, i32 9)
  %i.ak = tail call i32 @llvm.fshl.i32(i32 %i.v, i32 %i.v, i32 13)
  %i.al = add i32 %i.ak, %i.aj
  store i32 %i.al, ptr %i.b, align 4, !tbaa !11
  %i.am = tail call i32 @llvm.fshl.i32(i32 %i.ah, i32 %i.ah, i32 9)
  %i.an = tail call i32 @llvm.fshl.i32(i32 %i.t, i32 %i.t, i32 13)
  %i.ao = add i32 %i.am, %i.an
  store i32 %i.ao, ptr %i.ai, align 4, !tbaa !11
  %i.ap = tail call i32 @llvm.fshl.i32(i32 %i.af, i32 %i.af, i32 9)
  %i.aq = tail call i32 @llvm.fshl.i32(i32 %i.r, i32 %i.r, i32 13)
  %i.ar = add i32 %i.ap, %i.aq
  store i32 %i.ar, ptr %i.ag, align 4, !tbaa !11
  %i.as = tail call i32 @llvm.fshl.i32(i32 %i.ad, i32 %i.ad, i32 9)
  %i.at = tail call i32 @llvm.fshl.i32(i32 %i.p, i32 %i.p, i32 13)
  %i.au = add i32 %i.as, %i.at
  store i32 %i.au, ptr %i.ae, align 4, !tbaa !11
  %i.av = tail call i32 @llvm.fshl.i32(i32 %i.ab, i32 %i.ab, i32 9)
  %i.aw = tail call i32 @llvm.fshl.i32(i32 %i.n, i32 %i.n, i32 13)
  %i.ax = add i32 %i.av, %i.aw
  store i32 %i.ax, ptr %i.ac, align 4, !tbaa !11
  %i.ay = tail call i32 @llvm.fshl.i32(i32 %i.z, i32 %i.z, i32 9)
  %i.az = tail call i32 @llvm.fshl.i32(i32 %i.l, i32 %i.l, i32 13)
  %i.ba = add i32 %i.ay, %i.az
  store i32 %i.ba, ptr %i.aa, align 4, !tbaa !11
  %i.bb = tail call i32 @llvm.fshl.i32(i32 %i.x, i32 %i.x, i32 9)
  %i.bc = tail call i32 @llvm.fshl.i32(i32 %i.j, i32 %i.j, i32 13)
  %i.bd = add i32 %i.bb, %i.bc
  store i32 %i.bd, ptr %i.y, align 4, !tbaa !11
  %i.be = tail call i32 @llvm.fshl.i32(i32 %i.v, i32 %i.v, i32 9)
  %i.bf = tail call i32 @llvm.fshl.i32(i32 %i.h, i32 %i.h, i32 13)
  %i.bg = add i32 %i.be, %i.bf
  store i32 %i.bg, ptr %i.w, align 4, !tbaa !11
  %i.bh = tail call i32 @llvm.fshl.i32(i32 %i.t, i32 %i.t, i32 9)
  %i.bi = tail call i32 @llvm.fshl.i32(i32 %i.f, i32 %i.f, i32 13)
  %i.bj = add i32 %i.bh, %i.bi
  store i32 %i.bj, ptr %i.u, align 4, !tbaa !11
  %.not5 = icmp eq i32 %1, 0
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.bk = load i32, ptr @fpu_words, align 4, !tbaa !11
  %i.bl = icmp eq i32 %i.bk, 2
  br i1 %i.bl, label %LAME_getnext.exit.us, label %LAME_getnext.exit

LAME_getnext.exit.us:                             ; preds = %.lr.ph, %LAME_getnext.exit.us
  %.08.us = phi ptr [ %i.cs, %LAME_getnext.exit.us ], [ %0, %.lr.ph ] ; 3 uses
  %.027.us = phi i32 [ %i.bn, %LAME_getnext.exit.us ], [ %1, %.lr.ph ]
  %spec.select.i5.i36.us = phi i32 [ %spec.select.i5.i.us, %LAME_getnext.exit.us ], [ 8, %.lr.ph ] ; 3 uses
  %i.bm = phi i32 [ %storemerge28.i7.i.us, %LAME_getnext.exit.us ], [ 1, %.lr.ph ] ; 3 uses
  %i.bn = add i32 %.027.us, -1                    ; 2 uses
  %i.bo = zext i32 %spec.select.i5.i36.us to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bo ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !11 ; 2 uses
  %i.br = tail call i32 @llvm.fshl.i32(i32 %i.bq, i32 %i.bq, i32 9)
  %i.bs = zext i32 %i.bm to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !11 ; 2 uses
  %i.bv = tail call i32 @llvm.fshl.i32(i32 %i.bu, i32 %i.bu, i32 13)
  %i.bw = add i32 %i.bv, %i.br
  store i32 %i.bw, ptr %i.bp, align 4, !tbaa !11
  %i.bx = add i32 %spec.select.i5.i36.us, -1
  %.not.i.i.us = icmp eq i32 %spec.select.i5.i36.us, 0
  %spec.select.i.i.us = select i1 %.not.i.i.us, i32 16, i32 %i.bx ; 3 uses
  %i.by = add i32 %i.bm, -1
  %.not27.i.i.us = icmp eq i32 %i.bm, 0
  %storemerge28.i.i.us = select i1 %.not27.i.i.us, i32 16, i32 %i.by ; 3 uses
  %i.bz = zext i32 %spec.select.i.i.us to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bz ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !11 ; 2 uses
  %i.cc = tail call i32 @llvm.fshl.i32(i32 %i.cb, i32 %i.cb, i32 9)
  %i.cd = zext i32 %storemerge28.i.i.us to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !11 ; 2 uses
  %i.cg = tail call i32 @llvm.fshl.i32(i32 %i.cf, i32 %i.cf, i32 13)
  %i.ch = add i32 %i.cg, %i.cc                    ; 3 uses
  store i32 %i.ch, ptr %i.ca, align 4, !tbaa !11
  %i.ci = add i32 %spec.select.i.i.us, -1
  %.not.i4.i.us = icmp eq i32 %spec.select.i.i.us, 0
  %spec.select.i5.i.us = select i1 %.not.i4.i.us, i32 16, i32 %i.ci
  %i.cj = add i32 %storemerge28.i.i.us, -1
  %.not27.i6.i.us = icmp eq i32 %storemerge28.i.i.us, 0
  %storemerge28.i7.i.us = select i1 %.not27.i6.i.us, i32 16, i32 %i.cj
  %i.ck = shl i32 %i.ch, 20
  %.sroa.0.0.insert.ext.i8.i.us = zext i32 %i.ck to i64
  %i.cl = lshr i32 %i.ch, 12
  %i.cm = or disjoint i32 %i.cl, 1072693248
  %.sroa.0.4.insert.ext.i14.i.us = zext nneg i32 %i.cm to i64
  %.sroa.0.4.insert.shift.i15.i.us = shl nuw nsw i64 %.sroa.0.4.insert.ext.i14.i.us, 32
  %.sroa.0.4.insert.insert.i16.i.us = or disjoint i64 %.sroa.0.4.insert.shift.i15.i.us, %.sroa.0.0.insert.ext.i8.i.us
  %.sroa.0.0.i13.i.us = bitcast i64 %.sroa.0.4.insert.insert.i16.i.us to double
  %i.cn = fadd double %.sroa.0.0.i13.i.us, -1.000000e+00
  %i.co = fmul double %i.cn, 2.560000e+02         ; 2 uses
  %i.cp = fptosi double %i.co to i32
  %i.cq = icmp slt i32 %i.cp, 256
  %i.cr = fptoui double %i.co to i8
  %.0.i.us = select i1 %i.cq, i8 %i.cr, i8 -1
  %i.cs = getelementptr inbounds nuw i8, ptr %.08.us, i64 1
  %i.ct = load i8, ptr %.08.us, align 1, !tbaa !10
  %i.cu = xor i8 %.0.i.us, %i.ct
  store i8 %i.cu, ptr %.08.us, align 1, !tbaa !10
  %.not.us = icmp eq i32 %i.bn, 0
  br i1 %.not.us, label %._crit_edge, label %LAME_getnext.exit.us

LAME_getnext.exit:                                ; preds = %.lr.ph, %LAME_getnext.exit
  %.08 = phi ptr [ %i.eb, %LAME_getnext.exit ], [ %0, %.lr.ph ] ; 3 uses
  %.027 = phi i32 [ %i.cw, %LAME_getnext.exit ], [ %1, %.lr.ph ]
  %spec.select.i5.i36 = phi i32 [ %spec.select.i5.i, %LAME_getnext.exit ], [ 8, %.lr.ph ] ; 3 uses
  %i.cv = phi i32 [ %storemerge28.i7.i, %LAME_getnext.exit ], [ 1, %.lr.ph ] ; 3 uses
  %i.cw = add i32 %.027, -1                       ; 2 uses
  %i.cx = zext i32 %spec.select.i5.i36 to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.cx ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !11 ; 2 uses
  %i.da = tail call i32 @llvm.fshl.i32(i32 %i.cz, i32 %i.cz, i32 9)
  %i.db = zext i32 %i.cv to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !11 ; 2 uses
  %i.de = tail call i32 @llvm.fshl.i32(i32 %i.dd, i32 %i.dd, i32 13)
  %i.df = add i32 %i.de, %i.da
  store i32 %i.df, ptr %i.cy, align 4, !tbaa !11
  %i.dg = add i32 %spec.select.i5.i36, -1
  %.not.i.i = icmp eq i32 %spec.select.i5.i36, 0
  %spec.select.i.i = select i1 %.not.i.i, i32 16, i32 %i.dg ; 3 uses
  %i.dh = add i32 %i.cv, -1
  %.not27.i.i = icmp eq i32 %i.cv, 0
  %storemerge28.i.i = select i1 %.not27.i.i, i32 16, i32 %i.dh ; 3 uses
  %i.di = zext i32 %spec.select.i.i to i64
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.di ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !11 ; 2 uses
  %i.dl = tail call i32 @llvm.fshl.i32(i32 %i.dk, i32 %i.dk, i32 9)
  %i.dm = zext i32 %storemerge28.i.i to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !11 ; 2 uses
  %i.dp = tail call i32 @llvm.fshl.i32(i32 %i.do, i32 %i.do, i32 13)
  %i.dq = add i32 %i.dp, %i.dl                    ; 3 uses
  store i32 %i.dq, ptr %i.dj, align 4, !tbaa !11
  %i.dr = add i32 %spec.select.i.i, -1
  %.not.i4.i = icmp eq i32 %spec.select.i.i, 0
  %spec.select.i5.i = select i1 %.not.i4.i, i32 16, i32 %i.dr
  %i.ds = add i32 %storemerge28.i.i, -1
  %.not27.i6.i = icmp eq i32 %storemerge28.i.i, 0
  %storemerge28.i7.i = select i1 %.not27.i6.i, i32 16, i32 %i.ds
  %i.dt = shl i32 %i.dq, 20
  %.sroa.0.0.insert.ext.i8.i = zext i32 %i.dt to i64
  %.sroa.0.4.insert.shift11.i9.i = shl nuw i64 %.sroa.0.0.insert.ext.i8.i, 32
  %i.du = lshr i32 %i.dq, 12
  %i.dv = or disjoint i32 %i.du, 1072693248
  %.sroa.0.0.insert.ext6.i10.i = zext nneg i32 %i.dv to i64
  %.sroa.0.0.insert.insert8.i11.i = or disjoint i64 %.sroa.0.4.insert.shift11.i9.i, %.sroa.0.0.insert.ext6.i10.i
  %.sroa.0.0.i13.i = bitcast i64 %.sroa.0.0.insert.insert8.i11.i to double
  %i.dw = fadd double %.sroa.0.0.i13.i, -1.000000e+00
  %i.dx = fmul double %i.dw, 2.560000e+02         ; 2 uses
  %i.dy = fptosi double %i.dx to i32
  %i.dz = icmp slt i32 %i.dy, 256
  %i.ea = fptoui double %i.dx to i8
  %.0.i = select i1 %i.dz, i8 %i.ea, i8 -1
  %i.eb = getelementptr inbounds nuw i8, ptr %.08, i64 1
  %i.ec = load i8, ptr %.08, align 1, !tbaa !10
  %i.ed = xor i8 %.0.i, %i.ec
  store i8 %i.ed, ptr %.08, align 1, !tbaa !10
  %.not = icmp eq i32 %i.cw, 0
  br i1 %.not, label %._crit_edge, label %LAME_getnext.exit

._crit_edge:                                      ; preds = %LAME_getnext.exit, %LAME_getnext.exit.us, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @u2a(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #6 {
bb.a:
  %i.a = icmp ult i32 %1, 2
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i32 %1, 4
  br i1 %i.b, label %bb.c, label %.lr.ph.preheader

bb.c:                                             ; preds = %bb.b
  %i.c = load i8, ptr %0, align 1, !tbaa !10
  %i.d = icmp eq i8 %i.c, -1
  br i1 %i.d, label %bb.d, label %.lr.ph.preheader

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !10
  %i.g = icmp eq i8 %i.f, -2
  br i1 %i.g, label %bb.e, label %.lr.ph.preheader

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !10
  %.not = icmp eq i8 %i.i, 0
  br i1 %.not, label %.lr.ph.preheader, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = add i32 %1, -2
  br label %.lr.ph49.preheader

.lr.ph.preheader:                                 ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %i.k = tail call i32 @llvm.umin.i32(i32 %1, i32 20) ; 2 uses
  %i.l = and i32 %i.k, 30
  %i.m = zext nneg i32 %i.k to i64
  %2 = add nsw i64 %i.m, -2                       ; 2 uses
  %3 = lshr i64 %2, 1                             ; 2 uses
  %4 = add nuw i64 %3, 1                          ; 2 uses
  %5 = icmp eq i64 %3, 0
  br i1 %5, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %4, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %bb.h ] ; 4 uses
  %.045 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.v, %bb.h ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.a, %bb.h ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.o = load i8, ptr %i.n, align 1, !tbaa !10
  %.not43 = icmp eq i8 %i.o, 0
  br i1 %.not43, label %.lr.ph.1, label %6

6:                                                ; preds = %.lr.ph
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !10
  %10 = icmp eq i8 %9, 0
  %11 = zext i1 %10 to i32
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %6, %.lr.ph
  %12 = phi i32 [ 0, %.lr.ph ], [ %11, %6 ]
  %13 = add i32 %12, %.045
  %indvars.iv.next = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next
  %15 = load i8, ptr %14, align 1, !tbaa !10
  %.not43.1 = icmp eq i8 %15, 0
  br i1 %.not43.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !10
  %i.s = icmp eq i8 %i.r, 0
  %i.t = zext i1 %i.s to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.1
  %i.u = phi i32 [ 0, %.lr.ph.1 ], [ %i.t, %bb.g ]
  %i.v = add i32 %i.u, %13                        ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %indvars.iv.next.a = add nuw nsw i64 %niter, 2  ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %indvars.iv.next.a, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.unr-lcssa, label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %bb.h
  %16 = and i64 %2, 2
  %lcmp.mod.not.not = icmp eq i64 %16, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.epil.preheader, label %._crit_edge

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.045.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.v, %._crit_edge.unr-lcssa ]
  %lcmp.mod2 = trunc i64 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod2)
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.epil.init
  %18 = load i8, ptr %17, align 1, !tbaa !10
  %.not43.epil = icmp eq i8 %18, 0
  br i1 %.not43.epil, label %._crit_edge.epilog-lcssa, label %19

19:                                               ; preds = %.lr.ph.epil.preheader
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.epil.init
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 1
  %22 = load i8, ptr %21, align 1, !tbaa !10
  %23 = icmp eq i8 %22, 0
  %24 = zext i1 %23 to i32
  br label %._crit_edge.epilog-lcssa

._crit_edge.epilog-lcssa:                         ; preds = %19, %.lr.ph.epil.preheader
  %25 = phi i32 [ 0, %.lr.ph.epil.preheader ], [ %24, %19 ]
  %26 = add i32 %25, %.045.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %._crit_edge.epilog-lcssa
  %.lcssa = phi i32 [ %i.v, %._crit_edge.unr-lcssa ], [ %26, %._crit_edge.epilog-lcssa ]
  %i.w = shl i32 %.lcssa, 2
  %.not42 = icmp ult i32 %i.w, %i.l
  br i1 %.not42, label %.loopexit, label %.lr.ph49.preheader

.lr.ph49.preheader:                               ; preds = %bb.f, %._crit_edge
  %.035 = phi i32 [ %i.j, %bb.f ], [ %1, %._crit_edge ]
  %.034 = phi ptr [ %i.h, %bb.f ], [ %0, %._crit_edge ]
  br label %.lr.ph49

.lr.ph49:                                         ; preds = %.lr.ph49.preheader, %.lr.ph49
  %.147 = phi i32 [ %i.ab, %.lr.ph49 ], [ 0, %.lr.ph49.preheader ] ; 2 uses
  %.03646 = phi ptr [ %i.aa, %.lr.ph49 ], [ %0, %.lr.ph49.preheader ] ; 2 uses
  %i.x = zext i32 %.147 to i64
  %i.y = getelementptr inbounds nuw i8, ptr %.034, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !10
  %i.aa = getelementptr inbounds nuw i8, ptr %.03646, i64 1
  store i8 %i.z, ptr %.03646, align 1, !tbaa !10
  %i.ab = add i32 %.147, 2                        ; 2 uses
  %i.ac = icmp ult i32 %i.ab, %.035
  br i1 %i.ac, label %.lr.ph49, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph49, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

declare ptr @cli_max_realloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!4, !4, i64 0}
!11 = !{!5, !5, i64 0}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = !{!"UNP", !9, i64 0, !9, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !4, i64 36, !5, i64 40}
!15 = !{!14, !5, i64 28}
!16 = !{!14, !9, i64 8}
!17 = !{!14, !5, i64 20}
!18 = !{!14, !5, i64 32}
!19 = !{!14, !5, i64 40}
!20 = distinct !{null}
!21 = distinct !{null, null}
!22 = distinct !{!22, !12, !13}
!23 = distinct !{!23, !12, !13}
!24 = distinct !{!24, !71}
!25 = distinct !{!25, !12}
!26 = distinct !{null, null}
!27 = distinct !{!27, !71}
!28 = distinct !{!28, !71}
!29 = !{!"p1 long", !8, i64 0}
!30 = !{!"p1 _ZTS11cli_matcher", !8, i64 0}
!31 = !{!"p1 _ZTS9cl_engine", !8, i64 0}
!32 = !{!"long", !4, i64 0}
!33 = !{!"p1 _ZTS15cl_scan_options", !8, i64 0}
!34 = !{!"p1 _ZTS14cli_scan_layer", !8, i64 0}
!35 = !{!"p1 _ZTS7cl_fmap", !8, i64 0}
!36 = !{!"p1 _ZTS9cli_dconf", !8, i64 0}
!37 = !{!"p1 _ZTS10bitset_tag", !8, i64 0}
!38 = !{!"p1 _ZTS10cli_events", !8, i64 0}
!39 = !{!"p1 _ZTS11json_object", !8, i64 0}
!40 = !{!"timeval", !32, i64 0, !32, i64 8}
!41 = !{!"_Bool", !4, i64 0}
!42 = !{!"cli_ctx_tag", !9, i64 0, !9, i64 8, !29, i64 16, !30, i64 24, !31, i64 32, !32, i64 40, !33, i64 48, !5, i64 56, !5, i64 60, !34, i64 64, !5, i64 72, !5, i64 76, !8, i64 80, !35, i64 88, !32, i64 96, !36, i64 104, !37, i64 112, !8, i64 120, !38, i64 128, !39, i64 136, !39, i64 144, !40, i64 152, !41, i64 168, !41, i64 169}
!43 = !{!42, !35, i64 88}
!44 = !{!"cl_fmap", !8, i64 0, !8, i64 8, !8, i64 16, !32, i64 24, !32, i64 32, !32, i64 40, !32, i64 48, !41, i64 56, !41, i64 57, !41, i64 58, !32, i64 64, !32, i64 72, !32, i64 80, !32, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !4, i64 152, !4, i64 155, !4, i64 158, !29, i64 256, !9, i64 264, !9, i64 272}
!45 = !{!44, !8, i64 104}
!46 = !{!42, !9, i64 8}
!47 = !{!42, !31, i64 32}
!48 = !{!"any p2 pointer", !8, i64 0}
!49 = !{!"p2 _ZTS11cli_matcher", !48, i64 0}
!50 = !{!"p1 _ZTS7cli_cdb", !8, i64 0}
!51 = !{!"p1 _ZTS13regex_matcher", !8, i64 0}
!52 = !{!"p1 _ZTS10phishcheck", !8, i64 0}
!53 = !{!"p1 _ZTS9cli_ftype", !8, i64 0}
!54 = !{!"p2 _ZTS8cli_pwdb", !48, i64 0}
!55 = !{!"p1 _ZTS12icon_matcher", !8, i64 0}
!56 = !{!"p1 _ZTS5CACHE", !8, i64 0}
!57 = !{!"p1 _ZTS10cli_dbinfo", !8, i64 0}
!58 = !{!"p1 _ZTS2MP", !8, i64 0}
!59 = !{!"p1 _ZTS9cli_crt_t", !8, i64 0}
!60 = !{!"", !59, i64 0, !5, i64 8}
!61 = !{!"p1 _ZTS6cli_bc", !8, i64 0}
!62 = !{!"p1 _ZTS12cli_bcengine", !8, i64 0}
!63 = !{!"cli_environment", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !4, i64 28, !4, i64 93, !4, i64 158, !4, i64 223, !4, i64 288, !4, i64 353, !4, i64 418, !4, i64 483, !4, i64 484, !4, i64 485, !4, i64 486, !4, i64 487, !4, i64 488, !4, i64 489, !4, i64 490, !4, i64 491}
!64 = !{!"cli_all_bc", !61, i64 0, !5, i64 8, !62, i64 16, !63, i64 24, !5, i64 516}
!65 = !{!"p1 _ZTS12_yara_global", !8, i64 0}
!66 = !{!"cl_engine", !5, i64 0, !5, i64 4, !5, i64 8, !4, i64 12, !5, i64 20, !5, i64 24, !5, i64 28, !9, i64 32, !9, i64 40, !5, i64 48, !32, i64 56, !5, i64 64, !5, i64 68, !32, i64 72, !32, i64 80, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !49, i64 104, !30, i64 112, !30, i64 120, !30, i64 128, !30, i64 136, !50, i64 144, !51, i64 152, !51, i64 160, !52, i64 168, !36, i64 176, !53, i64 184, !53, i64 192, !54, i64 200, !30, i64 208, !30, i64 216, !9, i64 224, !55, i64 232, !56, i64 240, !57, i64 248, !32, i64 256, !58, i64 264, !60, i64 272, !8, i64 288, !8, i64 296, !8, i64 304, !8, i64 312, !8, i64 320, !8, i64 328, !8, i64 336, !8, i64 344, !8, i64 352, !8, i64 360, !8, i64 368, !8, i64 376, !8, i64 384, !8, i64 392, !8, i64 400, !8, i64 408, !8, i64 416, !8, i64 424, !8, i64 432, !8, i64 440, !8, i64 448, !8, i64 456, !64, i64 464, !4, i64 984, !4, i64 1040, !5, i64 1068, !5, i64 1072, !5, i64 1076, !5, i64 1080, !32, i64 1088, !32, i64 1096, !32, i64 1104, !32, i64 1112, !32, i64 1120, !8, i64 1128, !8, i64 1136, !8, i64 1144, !8, i64 1152, !8, i64 1160, !8, i64 1168, !8, i64 1176, !8, i64 1184, !8, i64 1192, !5, i64 1200, !5, i64 1204, !5, i64 1208, !32, i64 1216, !32, i64 1224, !32, i64 1232, !65, i64 1240}
!67 = !{!66, !5, i64 48}
!68 = !{!44, !8, i64 16}
!69 = !{!44, !32, i64 72}
!70 = !{!"branch_weights", i32 4, i32 28}
!71 = !{!"llvm.loop.unroll.disable"}
!72 = !{!14, !5, i64 24}
!73 = !{!14, !9, i64 0}
!74 = !{!14, !5, i64 16}
!75 = !{!9, !9, i64 0}
!76 = !{!"double", !4, i64 0}
!77 = !{!76, !76, i64 0}
!78 = distinct !{!78, !12, !13}
!79 = distinct !{!79, !12, !13}
!80 = !{!"p1 int", !8, i64 0}
!81 = !{!"MT", !80, i64 0, !5, i64 8, !4, i64 12}
!82 = !{!81, !5, i64 8}
end_hunk_0
