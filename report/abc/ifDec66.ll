Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ifDec66?download=true
inline.NumInlined: 49
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 15
begin_hunk_0_@If_CluCheckXXExt:bb.a
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv92
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 7
  store i8 %i.dg, ptr %i.di, align 1, !tbaa !20
  %.2.5 = getelementptr inbounds nuw i8, ptr %.273, i64 6
  %i.dj = load i8, ptr %.2.5, align 1, !tbaa !20
  %i.dk = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv92
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store i8 %i.dj, ptr %i.dl, align 1, !tbaa !20
  %.2.6 = getelementptr inbounds nuw i8, ptr %.273, i64 7
  %i.dm = load i8, ptr %.2.6, align 1, !tbaa !20
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv92
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 9
  store i8 %i.dm, ptr %i.do, align 1, !tbaa !20
  %indvars.iv.next93.7 = add nuw nsw i64 %indvars.iv92, 8 ; 2 uses
  %.2.7 = getelementptr inbounds nuw i8, ptr %.273, i64 8 ; 2 uses
  %exitcond96.not.7 = icmp eq i64 %indvars.iv.next93.7, %wide.trip.count95
  br i1 %exitcond96.not.7, label %._crit_edge76, label %.lr.ph75, !llvm.loop !77

._crit_edge76:                                    ; preds = %.lr.ph75.prol.loopexit, %.lr.ph75, %vec.epilog.middle.block, %middle.block
  %.2.lcssa = phi ptr [ %i.ch, %vec.epilog.middle.block ], [ %i.bf, %middle.block ], [ %.2.lcssa122.unr, %.lr.ph75.prol.loopexit ], [ %.2.7, %.lr.ph75 ]
  %i.dp = icmp ult i8 %i.ba, 4                    ; 3 uses
  %i.dq = add nsw i32 %i.bb, -3
  %i.dr = shl nuw i32 1, %i.dq
  %i.ds = select i1 %i.dp, i32 1, i32 %i.dr       ; 2 uses
  store i64 0, ptr %7, align 8, !tbaa !45
  %i.dt = icmp sgt i32 %i.ds, 0
  br i1 %i.dt, label %.lr.ph81, label %._crit_edge82

.lr.ph81:                                         ; preds = %._crit_edge69, %._crit_edge76
  %i.du = phi i32 [ %i.ds, %._crit_edge76 ], [ 1, %._crit_edge69 ] ; 2 uses
  %i.dv = phi i1 [ %i.dp, %._crit_edge76 ], [ true, %._crit_edge69 ] ; 2 uses
  %.2.lcssa108 = phi ptr [ %.2.lcssa, %._crit_edge76 ], [ %.271, %._crit_edge69 ] ; 2 uses
  %wide.trip.count100 = zext nneg i32 %i.du to i64 ; 2 uses
  %xtraiter130 = and i64 %wide.trip.count100, 3   ; 3 uses
  %i.dw = icmp samesign ult i32 %i.du, 4
  br i1 %i.dw, label %.epil.preheader129, label %.lr.ph81.new

.lr.ph81.new:                                     ; preds = %.lr.ph81
  %unroll_iter136 = and i64 %wide.trip.count100, 2147483644
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph81.new
  %indvars.iv97 = phi i64 [ 0, %.lr.ph81.new ], [ %indvars.iv.next98.3, %bb.e ] ; 5 uses
  %i.dx = phi i64 [ 0, %.lr.ph81.new ], [ %i.ev, %bb.e ]
  %.379 = phi ptr [ %.2.lcssa108, %.lr.ph81.new ], [ %i.eq, %bb.e ] ; 5 uses
  %niter137 = phi i64 [ 0, %.lr.ph81.new ], [ %niter137.next.3, %bb.e ]
  %i.dy = getelementptr inbounds nuw i8, ptr %.379, i64 1
  %i.dz = load i8, ptr %.379, align 1, !tbaa !20
  %i.ea = zext i8 %i.dz to i64
  %i.eb = shl nuw nsw i64 %indvars.iv97, 3
  %i.ec = shl i64 %i.ea, %i.eb
  %i.ed = or i64 %i.ec, %i.dx                     ; 2 uses
  store i64 %i.ed, ptr %7, align 8, !tbaa !45
  %i.ee = getelementptr inbounds nuw i8, ptr %.379, i64 2
  %i.ef = load i8, ptr %i.dy, align 1, !tbaa !20
  %i.eg = zext i8 %i.ef to i64
  %indvars.iv.next98 = shl i64 %indvars.iv97, 3
  %i.eh = or disjoint i64 %indvars.iv.next98, 8
  %i.ei = shl i64 %i.eg, %i.eh
  %i.ej = or i64 %i.ei, %i.ed                     ; 2 uses
  store i64 %i.ej, ptr %7, align 8, !tbaa !45
  %i.ek = getelementptr inbounds nuw i8, ptr %.379, i64 3
  %i.el = load i8, ptr %i.ee, align 1, !tbaa !20
  %i.em = zext i8 %i.el to i64
  %indvars.iv.next98.1 = shl i64 %indvars.iv97, 3
  %i.en = or disjoint i64 %indvars.iv.next98.1, 16
  %i.eo = shl i64 %i.em, %i.en
  %i.ep = or i64 %i.eo, %i.ej                     ; 2 uses
  store i64 %i.ep, ptr %7, align 8, !tbaa !45
  %i.eq = getelementptr inbounds nuw i8, ptr %.379, i64 4 ; 2 uses
  %i.er = load i8, ptr %i.ek, align 1, !tbaa !20
  %i.es = zext i8 %i.er to i64
  %indvars.iv.next98.2 = shl i64 %indvars.iv97, 3
  %i.et = or disjoint i64 %indvars.iv.next98.2, 24
  %i.eu = shl i64 %i.es, %i.et
  %i.ev = or i64 %i.eu, %i.ep                     ; 3 uses
  store i64 %i.ev, ptr %7, align 8, !tbaa !45
  %indvars.iv.next98.3 = add nuw nsw i64 %indvars.iv97, 4 ; 2 uses
  %niter137.next.3 = add i64 %niter137, 4         ; 2 uses
  %niter137.ncmp.3 = icmp eq i64 %niter137.next.3, %unroll_iter136
  br i1 %niter137.ncmp.3, label %._crit_edge82.loopexit.unr-lcssa, label %bb.e, !llvm.loop !78

._crit_edge82.loopexit.unr-lcssa:                 ; preds = %bb.e
  %lcmp.mod134.not = icmp eq i64 %xtraiter130, 0
  br i1 %lcmp.mod134.not, label %._crit_edge82, label %.epil.preheader129

.epil.preheader129:                               ; preds = %._crit_edge82.loopexit.unr-lcssa, %.lr.ph81
  %indvars.iv97.epil.init = phi i64 [ 0, %.lr.ph81 ], [ %indvars.iv.next98.3, %._crit_edge82.loopexit.unr-lcssa ]
  %.epil.init133 = phi i64 [ 0, %.lr.ph81 ], [ %i.ev, %._crit_edge82.loopexit.unr-lcssa ]
  %.379.epil.init = phi ptr [ %.2.lcssa108, %.lr.ph81 ], [ %i.eq, %._crit_edge82.loopexit.unr-lcssa ]
  %lcmp.mod135 = icmp ne i64 %xtraiter130, 0
  call void @llvm.assume(i1 %lcmp.mod135)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader129
  %indvars.iv97.epil = phi i64 [ %indvars.iv97.epil.init, %.epil.preheader129 ], [ %indvars.iv.next98.epil, %bb.f ] ; 2 uses
  %i.ew = phi i64 [ %.epil.init133, %.epil.preheader129 ], [ %i.fc, %bb.f ]
  %.379.epil = phi ptr [ %.379.epil.init, %.epil.preheader129 ], [ %i.ex, %bb.f ] ; 2 uses
  %epil.iter131 = phi i64 [ 0, %.epil.preheader129 ], [ %epil.iter131.next, %bb.f ]
  %i.ex = getelementptr inbounds nuw i8, ptr %.379.epil, i64 1
  %i.ey = load i8, ptr %.379.epil, align 1, !tbaa !20
  %i.ez = zext i8 %i.ey to i64
  %i.fa = shl nuw nsw i64 %indvars.iv97.epil, 3
  %i.fb = shl i64 %i.ez, %i.fa
  %i.fc = or i64 %i.fb, %i.ew                     ; 2 uses
  store i64 %i.fc, ptr %7, align 8, !tbaa !45
  %indvars.iv.next98.epil = add nuw nsw i64 %indvars.iv97.epil, 1
  %epil.iter131.next = add i64 %epil.iter131, 1   ; 2 uses
  %epil.iter131.cmp.not = icmp eq i64 %epil.iter131.next, %xtraiter130
  br i1 %epil.iter131.cmp.not, label %._crit_edge82, label %bb.f, !llvm.loop !79

._crit_edge82:                                    ; preds = %._crit_edge82.loopexit.unr-lcssa, %bb.f, %._crit_edge76
  %i.fd = phi i1 [ %i.dp, %._crit_edge76 ], [ %i.dv, %bb.f ], [ %i.dv, %._crit_edge82.loopexit.unr-lcssa ]
  %i.fe = load i64, ptr %8, align 8, !tbaa !45    ; 2 uses
  %i.ff = icmp eq i8 %i.f, 6
  br i1 %i.ff, label %If_CluAdjust2.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge82
  %i.fg = shl nuw i32 1, %i.g
  %i.fh = zext i32 %i.fg to i64                   ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.fh
  %i.fi = xor i64 %notmask.i, -1
  %i.fj = and i64 %i.fe, %i.fi                    ; 2 uses
  %i.fk = shl nuw nsw i64 %i.fj, %i.fh
  %i.fl = select i1 %.not84, i64 %i.fk, i64 0
  %.030.i = or i64 %i.fl, %i.fj                   ; 2 uses
  %i.fm = icmp ult i8 %i.f, 2
  %i.fn = shl i64 %.030.i, 2
  %i.fo = select i1 %i.fm, i64 %i.fn, i64 0
  %.131.i = or i64 %i.fo, %.030.i                 ; 2 uses
  %i.fp = icmp ult i8 %i.f, 3
  %i.fq = shl i64 %.131.i, 4
  %i.fr = select i1 %i.fp, i64 %i.fq, i64 0
  %.232.i = or i64 %i.fr, %.131.i                 ; 2 uses
  %i.fs = shl i64 %.232.i, 8
  %i.ft = select i1 %i.az, i64 %i.fs, i64 0
  %.333.i = or i64 %i.ft, %.232.i                 ; 2 uses
  %i.fu = icmp ult i8 %i.f, 5
  %i.fv = shl i64 %.333.i, 16
  %i.fw = select i1 %i.fu, i64 %i.fv, i64 0
  %.434.i = or i64 %i.fw, %.333.i                 ; 2 uses
  %i.fx = icmp ult i8 %i.f, 6
  %i.fy = shl i64 %.434.i, 32
  %i.fz = select i1 %i.fx, i64 %i.fy, i64 0
  %.5.i = or i64 %i.fz, %.434.i
  br label %If_CluAdjust2.exit

If_CluAdjust2.exit:                               ; preds = %._crit_edge82, %bb.g
  %.035.i = phi i64 [ %.5.i, %bb.g ], [ %i.fe, %._crit_edge82 ]
  store i64 %.035.i, ptr %8, align 8, !tbaa !45
  %i.ga = load i64, ptr %7, align 8, !tbaa !45    ; 2 uses
  %i.gb = icmp eq i8 %i.ba, 6
  br i1 %i.gb, label %If_CluAdjust2.exit62, label %bb.h

bb.h:                                             ; preds = %If_CluAdjust2.exit
  %i.gc = shl nuw i32 1, %i.bb
  %i.gd = zext i32 %i.gc to i64                   ; 2 uses
  %notmask.i54 = shl nsw i64 -1, %i.gd
  %i.ge = xor i64 %notmask.i54, -1
  %i.gf = and i64 %i.ga, %i.ge                    ; 2 uses
  %i.gg = shl nuw nsw i64 %i.gf, %i.gd
  %i.gh = select i1 %.not85, i64 %i.gg, i64 0
  %.030.i55 = or i64 %i.gh, %i.gf                 ; 2 uses
  %i.gi = icmp ult i8 %i.ba, 2
  %i.gj = shl i64 %.030.i55, 2
  %i.gk = select i1 %i.gi, i64 %i.gj, i64 0
  %.131.i56 = or i64 %i.gk, %.030.i55             ; 2 uses
  %i.gl = icmp ult i8 %i.ba, 3
  %i.gm = shl i64 %.131.i56, 4
  %i.gn = select i1 %i.gl, i64 %i.gm, i64 0
  %.232.i57 = or i64 %i.gn, %.131.i56             ; 2 uses
  %i.go = shl i64 %.232.i57, 8
  %i.gp = select i1 %i.fd, i64 %i.go, i64 0
  %.333.i58 = or i64 %i.gp, %.232.i57             ; 2 uses
  %i.gq = icmp ult i8 %i.ba, 5
  %i.gr = shl i64 %.333.i58, 16
  %i.gs = select i1 %i.gq, i64 %i.gr, i64 0
  %.434.i59 = or i64 %i.gs, %.333.i58             ; 2 uses
  %i.gt = icmp ult i8 %i.ba, 6
  %i.gu = shl i64 %.434.i59, 32
  %i.gv = select i1 %i.gt, i64 %i.gu, i64 0
  %.5.i60 = or i64 %i.gv, %.434.i59
  br label %If_CluAdjust2.exit62

If_CluAdjust2.exit62:                             ; preds = %If_CluAdjust2.exit, %bb.h
  %.035.i61 = phi i64 [ %.5.i60, %bb.h ], [ %i.ga, %If_CluAdjust2.exit ]
  store i64 %.035.i61, ptr %7, align 8, !tbaa !45
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %If_CluAdjust2.exit62
  %.051 = phi i32 [ 1, %If_CluAdjust2.exit62 ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  ret i32 %.051
}

declare i32 @acdXX_decompose(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define range(i32 -128, 128) i32 @If_CutPerformCheckXX(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [1024 x i32], align 16            ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = icmp slt i32 %2, 7                       ; 2 uses
  %i.c = add nsw i32 %2, -6                       ; 3 uses
  %i.d = shl nuw i32 1, %i.c                      ; 5 uses
  %i.e = select i1 %i.b, i32 1, i32 %i.d
  %i.f = sext i32 %i.e to i64
  %i.g = shl nsw i64 %i.f, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull align 4 dereferenceable(1) %1, i64 %i.g, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !38   ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !43   ; 3 uses
  %i.k = icmp eq i32 %3, %i.j
  br i1 %i.k, label %Abc_TtStretch6.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = icmp slt i32 %3, 7                       ; 2 uses
  %i.m = add nsw i32 %3, -6                       ; 2 uses
  %i.n = shl nuw i32 1, %i.m
  %i.o = select i1 %i.l, i32 1, i32 %i.n          ; 5 uses
  %i.p = icmp slt i32 %i.j, 7
  %i.q = add nsw i32 %i.j, -6
  %i.r = shl nuw i32 1, %i.q
  %i.s = select i1 %i.p, i32 1, i32 %i.r          ; 3 uses
  %i.t = icmp ne i32 %i.o, %i.s
  %i.u = icmp sgt i32 %i.s, 0
  %or.cond.i = and i1 %i.t, %i.u
  %i.v = icmp sgt i32 %i.o, 0
  %or.cond25.i = and i1 %i.v, %or.cond.i
  br i1 %or.cond25.i, label %.preheader.preheader.i, label %Abc_TtStretch6.exit

.preheader.preheader.i:                           ; preds = %bb.b
  %i.w = zext nneg i32 %i.o to i64                ; 4 uses
  %min.iters.check = icmp ult i32 %i.o, 4
  %i.x = select i1 %i.l, i32 0, i32 %i.m
  %i.y = zext i32 %i.x to i64
  %i.z = add nuw nsw i64 %i.y, 3
  %n.vec = and i64 %i.w, 2147483644
  %xtraiter = and i64 %i.w, 3                     ; 3 uses
  %i.aa = icmp ult i32 %i.o, 4
  %unroll_iter = and i64 %i.w, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod138 = icmp ne i64 %xtraiter, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge.i ], [ 0, %.preheader.preheader.i ] ; 2 uses
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i, %._crit_edge.i ], [ 0, %.preheader.preheader.i ] ; 2 uses
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv27.i ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.i
  br i1 %i.aa, label %scalar.ph.epil.preheader, label %scalar.ph

vector.memcheck:                                  ; preds = %.preheader.i
  %i.ab = shl i64 %indvar, %i.z
  %i.ac = add i64 %i.ab, -1
  %diff.check = icmp ult i64 %i.ac, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %wide.load = load <2 x i64>, ptr %i.ad, align 16, !tbaa !45
  %wide.load65 = load <2 x i64>, ptr %i.ae, align 16, !tbaa !45
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store <2 x i64> %wide.load, ptr %i.af, align 8, !tbaa !45
  store <2 x i64> %wide.load65, ptr %i.ag, align 8, !tbaa !45
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %._crit_edge.i, label %vector.body, !llvm.loop !81

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph ], [ 0, %scalar.ph.preheader ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %scalar.ph ], [ 0, %scalar.ph.preheader ]
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.aj = load i64, ptr %i.ai, align 16, !tbaa !45
  %gep.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  store i64 %i.aj, ptr %gep.i, align 8, !tbaa !45
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !45
  %gep.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  store i64 %i.al, ptr %gep.i.1, align 8, !tbaa !45
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i.1
  %i.an = load i64, ptr %i.am, align 16, !tbaa !45
  %gep.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.1
  store i64 %i.an, ptr %gep.i.2, align 8, !tbaa !45
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i.2
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !45
  %gep.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.2
  store i64 %i.ap, ptr %gep.i.3, align 8, !tbaa !45
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %scalar.ph, !llvm.loop !82

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %scalar.ph
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %scalar.ph.epil.preheader

scalar.ph.epil.preheader:                         ; preds = %._crit_edge.i.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %scalar.ph.preheader ], [ %indvars.iv.next.i.3, %._crit_edge.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod138)
  br label %scalar.ph.epil

scalar.ph.epil:                                   ; preds = %scalar.ph.epil, %scalar.ph.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %scalar.ph.epil ], [ %indvars.iv.i.epil.init, %scalar.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %scalar.ph.epil ], [ 0, %scalar.ph.epil.preheader ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.epil
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !45
  %gep.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.epil
  store i64 %i.ar, ptr %gep.i.epil, align 8, !tbaa !45
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %scalar.ph.epil, !llvm.loop !83

._crit_edge.i:                                    ; preds = %vector.body, %._crit_edge.i.loopexit.unr-lcssa, %scalar.ph.epil
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, %i.w ; 2 uses
  %i.as = trunc nuw i64 %indvars.iv.next28.i to i32
  %i.at = icmp sgt i32 %i.s, %i.as
  %indvar.next = add i64 %indvar, 1
  br i1 %i.at, label %.preheader.i, label %Abc_TtStretch6.exit, !llvm.loop !84

Abc_TtStretch6.exit:                              ; preds = %._crit_edge.i, %bb.a, %bb.b
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 84
  %i.av = load i32, ptr %i.au, align 4, !tbaa !103
  %.not = icmp eq i32 %i.av, 0
  br i1 %.not, label %bb.c, label %Abc_TtMinBase.exit

bb.c:                                             ; preds = %Abc_TtStretch6.exit
  %i.aw = icmp sgt i32 %3, 0
  br i1 %i.aw, label %.lr.ph.i, label %Abc_TtMinBase.exit

.lr.ph.i:                                         ; preds = %bb.c
  %i.ax = sext i32 %i.d to i64
  %.idx.i.i = shl nsw i64 %i.ax, 3
  %i.ay = getelementptr inbounds i8, ptr %i.a, i64 %.idx.i.i ; 3 uses
  %.not.i.i = icmp eq i32 %i.c, 31                ; 5 uses
  %smax56.i.i = tail call i32 @llvm.smax.i32(i32 %i.d, i32 1)
  %wide.trip.count57.i.i = zext nneg i32 %smax56.i.i to i64 ; 2 uses
  br i1 %i.b, label %.lr.ph.split.us.i, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %3 to i64
  %min.iters.check67 = icmp slt i32 %i.d, 4
  %n.vec69 = and i64 %wide.trip.count57.i.i, 2147483644
  %exitcond160.not.i.i = icmp slt i32 %i.d, 2
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %exitcond160.not.i.i.1 = icmp eq i32 %i.c, 1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %.promoted.i = load i64, ptr %i.a, align 16, !tbaa !45 ; 2 uses
  %wide.trip.count29.i = zext nneg i32 %3 to i64
  br label %Abc_TtHasVar.exit.us.i

Abc_TtHasVar.exit.us.i:                           ; preds = %Abc_TtHasVar.exit.thread.us.i, %.lr.ph.split.us.i
  %i.bb = phi i64 [ %i.cg, %Abc_TtHasVar.exit.thread.us.i ], [ %.promoted.i, %.lr.ph.split.us.i ] ; 2 uses
  %indvars.iv26.i = phi i64 [ %indvars.iv.next27.i, %Abc_TtHasVar.exit.thread.us.i ], [ 0, %.lr.ph.split.us.i ] ; 5 uses
  %i.bc = phi i64 [ %i.ch, %Abc_TtHasVar.exit.thread.us.i ], [ %.promoted.i, %.lr.ph.split.us.i ] ; 7 uses
  %.019.us.i = phi i32 [ %.1.us.i, %Abc_TtHasVar.exit.thread.us.i ], [ 0, %.lr.ph.split.us.i ] ; 4 uses
  %i.bd = trunc nuw nsw i64 %indvars.iv26.i to i32
  %i.be = shl nuw i32 1, %i.bd                    ; 2 uses
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = lshr i64 %i.bc, %i.bf
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv26.i
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !45
  %i.bj = xor i64 %i.bg, %i.bc
  %i.bk = and i64 %i.bj, %i.bi
  %.not12.us.i = icmp eq i64 %i.bk, 0
  br i1 %.not12.us.i, label %Abc_TtHasVar.exit.thread.us.i, label %.thread.us.i

.thread.us.i:                                     ; preds = %Abc_TtHasVar.exit.us.i
  %i.bl = sext i32 %.019.us.i to i64              ; 2 uses
  %i.bm = icmp sgt i64 %indvars.iv26.i, %i.bl
  br i1 %i.bm, label %.thread7.us.i, label %Abc_TtSwapVars.exit.us.i

.thread7.us.i:                                    ; preds = %.thread.us.i
  %i.bn = getelementptr inbounds [144 x i8], ptr @s_PPMasks, i64 %i.bl
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %indvars.iv26.i ; 3 uses
  %.neg.i.i.us.i = shl nsw i32 -1, %.019.us.i
  %i.bp = add i32 %.neg.i.i.us.i, %i.be
  %i.bq = load i64, ptr %i.bo, align 8, !tbaa !45
  %i.br = and i64 %i.bq, %i.bc
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !45
  %i.bu = and i64 %i.bt, %i.bc
  %i.bv = zext i32 %i.bp to i64                   ; 2 uses
  %i.bw = shl i64 %i.bu, %i.bv
  %i.bx = or i64 %i.bw, %i.br
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !45
  %i.ca = and i64 %i.bz, %i.bc
  %i.cb = lshr i64 %i.ca, %i.bv
  %i.cc = or i64 %i.bx, %i.cb                     ; 2 uses
  br label %Abc_TtSwapVars.exit.us.i

Abc_TtSwapVars.exit.us.i:                         ; preds = %.thread7.us.i, %.thread.us.i
  %i.cd = phi i64 [ %i.cc, %.thread7.us.i ], [ %i.bb, %.thread.us.i ]
  %i.ce = phi i64 [ %i.cc, %.thread7.us.i ], [ %i.bc, %.thread.us.i ]
  %i.cf = add nsw i32 %.019.us.i, 1
  br label %Abc_TtHasVar.exit.thread.us.i

Abc_TtHasVar.exit.thread.us.i:                    ; preds = %Abc_TtSwapVars.exit.us.i, %Abc_TtHasVar.exit.us.i
  %i.cg = phi i64 [ %i.cd, %Abc_TtSwapVars.exit.us.i ], [ %i.bb, %Abc_TtHasVar.exit.us.i ] ; 2 uses
  %i.ch = phi i64 [ %i.ce, %Abc_TtSwapVars.exit.us.i ], [ %i.bc, %Abc_TtHasVar.exit.us.i ]
  %.1.us.i = phi i32 [ %i.cf, %Abc_TtSwapVars.exit.us.i ], [ %.019.us.i, %Abc_TtHasVar.exit.us.i ] ; 2 uses
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, 1 ; 2 uses
  %exitcond30.not.i = icmp eq i64 %indvars.iv.next27.i, %wide.trip.count29.i
  br i1 %exitcond30.not.i, label %Abc_TtMinBase.exit.loopexit, label %Abc_TtHasVar.exit.us.i, !llvm.loop !85

.lr.ph.split.i:                                   ; preds = %Abc_TtHasVar.exit.thread.i, %.lr.ph.split.preheader.i
  %indvars.iv.i30 = phi i64 [ 0, %.lr.ph.split.preheader.i ], [ %indvars.iv.next.i31, %Abc_TtHasVar.exit.thread.i ] ; 10 uses
  %.019.i = phi i32 [ 0, %.lr.ph.split.preheader.i ], [ %.1.i, %Abc_TtHasVar.exit.thread.i ] ; 11 uses
  %i.ci = icmp samesign ult i64 %indvars.iv.i30, 6 ; 2 uses
  br i1 %i.ci, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.lr.ph.split.i
  br i1 %.not.i.i, label %Abc_TtHasVar.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.cj = trunc nuw nsw i64 %indvars.iv.i30 to i32
  %i.ck = shl nuw nsw i32 1, %i.cj
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv.i30
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !45
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next54.i.i = add nuw nsw i64 %indvars.iv53.i.i, 1 ; 2 uses
  %exitcond58.not.i.i = icmp eq i64 %indvars.iv.next54.i.i, %wide.trip.count57.i.i
  br i1 %exitcond58.not.i.i, label %Abc_TtHasVar.exit.thread.i, label %bb.f, !llvm.loop !86

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.i
  %indvars.iv53.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next54.i.i, %bb.e ] ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv53.i.i
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !45 ; 2 uses
  %i.cq = lshr i64 %i.cp, %i.cl
  %i.cr = xor i64 %i.cq, %i.cp
  %i.cs = and i64 %i.cr, %i.cn
  %.not39.i.i = icmp eq i64 %i.cs, 0
  br i1 %.not39.i.i, label %bb.e, label %Abc_TtHasVar.exit.thread4.i

bb.g:                                             ; preds = %.lr.ph.split.i
  %i.ct = add nsw i64 %indvars.iv.i30, -6         ; 2 uses
  %i.cu = trunc nsw i64 %i.ct to i32              ; 2 uses
  %i.cv = shl nuw i32 1, %i.cu                    ; 2 uses
  br i1 %.not.i.i, label %Abc_TtHasVar.exit.thread.i, label %.preheader.lr.ph.i.i

.preheader.lr.ph.i.i:                             ; preds = %bb.g
  %i.cw = icmp eq i64 %i.ct, 31
  %i.cx = shl i32 2, %i.cu
  %i.cy = sext i32 %i.cx to i64
  br i1 %i.cw, label %Abc_TtHasVar.exit.thread.i, label %.preheader.us.preheader.i.i

.preheader.us.preheader.i.i:                      ; preds = %.preheader.lr.ph.i.i
  %5 = sext i32 %i.cv to i64
  %smax.i.i = call i32 @llvm.smax.i32(i32 %i.cv, i32 1)
  %wide.trip.count.i.i = zext nneg i32 %smax.i.i to i64
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %._crit_edge.us.i.i, %.preheader.us.preheader.i.i
  %.03343.us.i.i = phi ptr [ %i.dc, %._crit_edge.us.i.i ], [ %i.a, %.preheader.us.preheader.i.i ] ; 3 uses
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %.03343.us.i.i, i64 %5
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.us.i.i, label %bb.i, !llvm.loop !87

bb.i:                                             ; preds = %bb.h, %.preheader.us.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.us.i.i ], [ %indvars.iv.next.i.i, %bb.h ] ; 3 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.03343.us.i.i, i64 %indvars.iv.i.i
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !45
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  %i.db = load i64, ptr %gep.i.i, align 8, !tbaa !45
  %.not.us.i.i = icmp eq i64 %i.da, %i.db
  br i1 %.not.us.i.i, label %bb.h, label %Abc_TtHasVar.exit.thread4.i

._crit_edge.us.i.i:                               ; preds = %bb.h
  %i.dc = getelementptr inbounds [8 x i8], ptr %.03343.us.i.i, i64 %i.cy ; 2 uses
  %i.dd = icmp ult ptr %i.dc, %i.ay
  br i1 %i.dd, label %.preheader.us.i.i, label %Abc_TtHasVar.exit.thread.i, !llvm.loop !88

Abc_TtHasVar.exit.thread4.i:                      ; preds = %bb.f, %bb.i
  %i.de = sext i32 %.019.i to i64                 ; 3 uses
  %i.df = icmp sgt i64 %indvars.iv.i30, %i.de
  br i1 %i.df, label %bb.j, label %Abc_TtSwapVars.exit.i

bb.j:                                             ; preds = %Abc_TtHasVar.exit.thread4.i
  br i1 %i.ci, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  br i1 %.not.i.i, label %Abc_TtSwapVars.exit.i, label %.lr.ph.i37.i

.lr.ph.i37.i:                                     ; preds = %bb.k
  %.neg.i.i = shl nsw i32 -1, %.019.i
  %i.dg = trunc nuw nsw i64 %indvars.iv.i30 to i32
  %i.dh = shl nuw nsw i32 1, %i.dg
  %i.di = add nsw i32 %.neg.i.i, %i.dh
  %i.dj = getelementptr inbounds [144 x i8], ptr @s_PPMasks, i64 %i.de
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %i.dj, i64 %indvars.iv.i30 ; 3 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !45 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !45 ; 4 uses
  %i.do = zext i32 %i.di to i64                   ; 7 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !45 ; 4 uses
  br i1 %min.iters.check67, label %scalar.ph66, label %vector.ph68

vector.ph68:                                      ; preds = %.lr.ph.i37.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.dl, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert70 = insertelement <2 x i64> poison, i64 %i.dn, i64 0
  %broadcast.splat71 = shufflevector <2 x i64> %broadcast.splatinsert70, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert72 = insertelement <2 x i64> poison, i64 %i.do, i64 0
  %broadcast.splat73 = shufflevector <2 x i64> %broadcast.splatinsert72, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert74 = insertelement <2 x i64> poison, i64 %i.dq, i64 0
  %broadcast.splat75 = shufflevector <2 x i64> %broadcast.splatinsert74, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body76

vector.body76:                                    ; preds = %vector.body76, %vector.ph68
  %index77 = phi i64 [ 0, %vector.ph68 ], [ %index.next80, %vector.body76 ] ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index77 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16 ; 2 uses
  %wide.load78 = load <2 x i64>, ptr %i.dr, align 16, !tbaa !45 ; 3 uses
  %wide.load79 = load <2 x i64>, ptr %i.ds, align 16, !tbaa !45 ; 3 uses
  %i.dt = and <2 x i64> %wide.load78, %broadcast.splat
  %i.du = and <2 x i64> %wide.load79, %broadcast.splat
  %i.dv = and <2 x i64> %wide.load78, %broadcast.splat71
  %i.dw = and <2 x i64> %wide.load79, %broadcast.splat71
  %i.dx = shl <2 x i64> %i.dv, %broadcast.splat73
  %i.dy = shl <2 x i64> %i.dw, %broadcast.splat73
  %i.dz = or <2 x i64> %i.dx, %i.dt
  %i.ea = or <2 x i64> %i.dy, %i.du
  %i.eb = and <2 x i64> %wide.load78, %broadcast.splat75
  %i.ec = and <2 x i64> %wide.load79, %broadcast.splat75
  %i.ed = lshr <2 x i64> %i.eb, %broadcast.splat73
  %i.ee = lshr <2 x i64> %i.ec, %broadcast.splat73
  %i.ef = or <2 x i64> %i.dz, %i.ed
  %i.eg = or <2 x i64> %i.ea, %i.ee
  store <2 x i64> %i.ef, ptr %i.dr, align 16, !tbaa !45
  store <2 x i64> %i.eg, ptr %i.ds, align 16, !tbaa !45
  %index.next80 = add nuw i64 %index77, 4         ; 2 uses
  %i.eh = icmp eq i64 %index.next80, %n.vec69
  br i1 %i.eh, label %Abc_TtSwapVars.exit.i, label %vector.body76, !llvm.loop !89

scalar.ph66:                                      ; preds = %.lr.ph.i37.i
  %i.ei = load i64, ptr %i.a, align 16, !tbaa !45 ; 3 uses
  %i.ej = and i64 %i.ei, %i.dl
  %i.ek = and i64 %i.ei, %i.dn
  %i.el = shl i64 %i.ek, %i.do
  %i.em = or i64 %i.el, %i.ej
  %i.en = and i64 %i.ei, %i.dq
  %i.eo = lshr i64 %i.en, %i.do
  %i.ep = or i64 %i.em, %i.eo
  store i64 %i.ep, ptr %i.a, align 16, !tbaa !45
  br i1 %exitcond160.not.i.i, label %Abc_TtSwapVars.exit.i, label %scalar.ph66.1

scalar.ph66.1:                                    ; preds = %scalar.ph66
  %i.eq = load i64, ptr %i.az, align 8, !tbaa !45 ; 3 uses
  %i.er = and i64 %i.eq, %i.dl
  %i.es = and i64 %i.eq, %i.dn
  %i.et = shl i64 %i.es, %i.do
  %i.eu = or i64 %i.et, %i.er
  %i.ev = and i64 %i.eq, %i.dq
  %i.ew = lshr i64 %i.ev, %i.do
  %i.ex = or i64 %i.eu, %i.ew
  store i64 %i.ex, ptr %i.az, align 8, !tbaa !45
  br i1 %exitcond160.not.i.i.1, label %Abc_TtSwapVars.exit.i, label %scalar.ph66.2

scalar.ph66.2:                                    ; preds = %scalar.ph66.1
  %i.ey = load i64, ptr %i.ba, align 16, !tbaa !45 ; 3 uses
  %i.ez = and i64 %i.ey, %i.dl
  %i.fa = and i64 %i.ey, %i.dn
  %i.fb = shl i64 %i.fa, %i.do
  %i.fc = or i64 %i.fb, %i.ez
  %i.fd = and i64 %i.ey, %i.dq
  %i.fe = lshr i64 %i.fd, %i.do
  %i.ff = or i64 %i.fc, %i.fe
  store i64 %i.ff, ptr %i.ba, align 16, !tbaa !45
  br label %Abc_TtSwapVars.exit.i

bb.l:                                             ; preds = %bb.j
  %i.fg = icmp slt i32 %.019.i, 6
  br i1 %i.fg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.fh = add nsw i64 %indvars.iv.i30, -6         ; 2 uses
  %i.fi = trunc nsw i64 %i.fh to i32              ; 2 uses
  %i.fj = shl nuw i32 1, %i.fi                    ; 3 uses
  br i1 %.not.i.i, label %Abc_TtSwapVars.exit.i, label %.preheader.lr.ph.i34.i

.preheader.lr.ph.i34.i:                           ; preds = %bb.m
  %i.fk = shl nuw nsw i32 1, %.019.i
  %i.fl = icmp eq i64 %i.fh, 31
  %i.fm = zext nneg i32 %i.fk to i64              ; 3 uses
  %i.fn = shl i32 2, %i.fi
  %i.fo = sext i32 %i.fn to i64                   ; 2 uses
  br i1 %i.fl, label %Abc_TtSwapVars.exit.i, label %.preheader.lr.ph.split.us.i.i

.preheader.lr.ph.split.us.i.i:                    ; preds = %.preheader.lr.ph.i34.i
  %i.fp = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.de
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !45 ; 5 uses
  %i.fr = xor i64 %i.fq, -1                       ; 2 uses
  %6 = sext i32 %i.fj to i64                      ; 2 uses
  %smax152.i.i = call i32 @llvm.smax.i32(i32 %i.fj, i32 1)
  %wide.trip.count153.i.i.a = zext nneg i32 %smax152.i.i to i64 ; 4 uses
  %7 = shl nuw nsw i64 %wide.trip.count153.i.i.a, 3
  %8 = shl nsw i64 %i.fo, 3
  %9 = add nsw i64 %6, %wide.trip.count153.i.i.a
  %10 = shl nsw i64 %9, 3
  %min.iters.check89 = icmp slt i32 %i.fj, 2
  %11 = getelementptr i8, ptr %i.a, i64 %10
  %12 = getelementptr i8, ptr %i.a, i64 %7
  %n.vec91 = and i64 %wide.trip.count153.i.i.a, 2147483646
  %broadcast.splatinsert92.a = insertelement <2 x i64> poison, i64 %i.fq, i64 0
  %broadcast.splat93.a = shufflevector <2 x i64> %broadcast.splatinsert92.a, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert94 = insertelement <2 x i64> poison, i64 %i.fm, i64 0
  %broadcast.splat95 = shufflevector <2 x i64> %broadcast.splatinsert94, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert96 = insertelement <2 x i64> poison, i64 %i.fr, i64 0
  %broadcast.splat97 = shufflevector <2 x i64> %broadcast.splatinsert96, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %.preheader.us.i35.i

.preheader.us.i35.i:                              ; preds = %._crit_edge.us.i36.i, %.preheader.lr.ph.split.us.i.i
  %indvar85 = phi i64 [ %indvar.next86, %._crit_edge.us.i36.i ], [ 0, %.preheader.lr.ph.split.us.i.i ] ; 2 uses
  %.0128.us.i.i = phi ptr [ %i.go, %._crit_edge.us.i36.i ], [ %i.a, %.preheader.lr.ph.split.us.i.i ] ; 5 uses
  %invariant.gep169.i.i = getelementptr [8 x i8], ptr %.0128.us.i.i, i64 %6 ; 3 uses
  br i1 %min.iters.check89, label %scalar.ph88.preheader, label %vector.memcheck84

scalar.ph88.preheader:                            ; preds = %vector.memcheck84, %.preheader.us.i35.i
  br label %scalar.ph88

vector.memcheck84:                                ; preds = %.preheader.us.i35.i
  %13 = mul i64 %8, %indvar85                     ; 2 uses
  %scevgep87 = getelementptr i8, ptr %11, i64 %13
  %scevgep = getelementptr i8, ptr %12, i64 %13
  %bound0 = icmp ult ptr %.0128.us.i.i, %scevgep87
  %bound1 = icmp ult ptr %invariant.gep169.i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph88.preheader, label %vector.body98

vector.body98:                                    ; preds = %vector.memcheck84, %vector.body98
  %index99 = phi i64 [ %index.next102, %vector.body98 ], [ 0, %vector.memcheck84 ] ; 3 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %.0128.us.i.i, i64 %index99 ; 2 uses
  %wide.load100 = load <2 x i64>, ptr %i.fs, align 8, !tbaa !45, !alias.scope !104, !noalias !105 ; 2 uses
  %i.ft = and <2 x i64> %wide.load100, %broadcast.splat93.a
  %i.fu = lshr <2 x i64> %i.ft, %broadcast.splat95
  %i.fv = getelementptr [8 x i8], ptr %invariant.gep169.i.i, i64 %index99 ; 2 uses
  %wide.load101 = load <2 x i64>, ptr %i.fv, align 8, !tbaa !45, !alias.scope !105 ; 2 uses
  %i.fw = shl <2 x i64> %wide.load101, %broadcast.splat95
  %i.fx = and <2 x i64> %i.fw, %broadcast.splat93.a
  %i.fy = and <2 x i64> %wide.load100, %broadcast.splat97
  %i.fz = or <2 x i64> %i.fx, %i.fy
  store <2 x i64> %i.fz, ptr %i.fs, align 8, !tbaa !45, !alias.scope !104, !noalias !105
  %i.ga = and <2 x i64> %wide.load101, %broadcast.splat93.a
  %i.gb = or <2 x i64> %i.ga, %i.fu
  store <2 x i64> %i.gb, ptr %i.fv, align 8, !tbaa !45, !alias.scope !105
  %index.next102 = add nuw i64 %index99, 2        ; 2 uses
  %i.gc = icmp eq i64 %index.next102, %n.vec91
  br i1 %i.gc, label %._crit_edge.us.i36.i, label %vector.body98, !llvm.loop !93

scalar.ph88:                                      ; preds = %scalar.ph88.preheader, %scalar.ph88
  %indvars.iv149.i.i = phi i64 [ %indvars.iv.next150.i.i, %scalar.ph88 ], [ 0, %scalar.ph88.preheader ] ; 3 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %.0128.us.i.i, i64 %indvars.iv149.i.i ; 2 uses
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !45 ; 2 uses
  %i.gf = and i64 %i.ge, %i.fq
  %i.gg = lshr i64 %i.gf, %i.fm
  %gep170.i.i = getelementptr [8 x i8], ptr %invariant.gep169.i.i, i64 %indvars.iv149.i.i ; 2 uses
  %i.gh = load i64, ptr %gep170.i.i, align 8, !tbaa !45 ; 2 uses
  %i.gi = shl i64 %i.gh, %i.fm
  %i.gj = and i64 %i.gi, %i.fq
  %i.gk = and i64 %i.ge, %i.fr
  %i.gl = or i64 %i.gj, %i.gk
  store i64 %i.gl, ptr %i.gd, align 8, !tbaa !45
  %i.gm = and i64 %i.gh, %i.fq
  %i.gn = or i64 %i.gm, %i.gg
  store i64 %i.gn, ptr %gep170.i.i, align 8, !tbaa !45
  %indvars.iv.next150.i.i = add nuw nsw i64 %indvars.iv149.i.i, 1 ; 2 uses
  %exitcond154.not.i.i = icmp eq i64 %indvars.iv.next150.i.i, %wide.trip.count153.i.i.a
  br i1 %exitcond154.not.i.i, label %._crit_edge.us.i36.i, label %scalar.ph88, !llvm.loop !94

._crit_edge.us.i36.i:                             ; preds = %vector.body98, %scalar.ph88
  %i.go = getelementptr inbounds [8 x i8], ptr %.0128.us.i.i, i64 %i.fo ; 2 uses
  %i.gp = icmp ult ptr %i.go, %i.ay
  %indvar.next86 = add i64 %indvar85, 1
  br i1 %i.gp, label %.preheader.us.i35.i, label %Abc_TtSwapVars.exit.i, !llvm.loop !95

bb.n:                                             ; preds = %bb.l
  %i.gq = add nsw i32 %.019.i, -6                 ; 3 uses
  %i.gr = shl nuw i32 1, %i.gq                    ; 4 uses
  %i.gs = add nsw i64 %indvars.iv.i30, -6         ; 2 uses
  %i.gt = trunc nsw i64 %i.gs to i32              ; 2 uses
  %i.gu = shl nuw i32 1, %i.gt                    ; 2 uses
  br i1 %.not.i.i, label %Abc_TtSwapVars.exit.i, label %.preheader120.lr.ph.i.i

.preheader120.lr.ph.i.i:                          ; preds = %bb.n
  %i.gv = icmp eq i64 %i.gs, 31
  %i.gw = shl i32 2, %i.gt
  %i.gx = sext i32 %i.gw to i64                   ; 2 uses
  %.not131.i.i = icmp eq i32 %i.gq, 31
  %or.cond.i.i = select i1 %i.gv, i1 true, i1 %.not131.i.i
  br i1 %or.cond.i.i, label %Abc_TtSwapVars.exit.i, label %.preheader120.us.us.preheader.i.i

.preheader120.us.us.preheader.i.i:                ; preds = %.preheader120.lr.ph.i.i
  %i.gy = shl i32 2, %i.gq                        ; 3 uses
  %smax.i27.i = call i32 @llvm.smax.i32(i32 %i.gr, i32 1) ; 2 uses
  %i.gz = sext i32 %i.gy to i64                   ; 5 uses
  %i.ha = sext i32 %i.gr to i64                   ; 2 uses
  %14 = sext i32 %i.gu to i64                     ; 4 uses
  %wide.trip.count.i28.i = zext nneg i32 %smax.i27.i to i64 ; 4 uses
  %smax = call i64 @llvm.smax.i64(i64 %i.gz, i64 %14)
  %i.hb = icmp slt i32 %i.gy, %i.gu
  %umin = zext i1 %i.hb to i64                    ; 2 uses
  %i.hc = or disjoint i64 %umin, %i.gz
  %i.hd = sub i64 %smax, %i.hc
  %umax = call i64 @llvm.umax.i64(i64 %i.gz, i64 1)
  %i.he = udiv i64 %i.hd, %umax
  %i.hf = add i64 %i.he, %umin
  %i.hg = shl i64 %i.hf, 3
  %i.hh = mul i64 %i.hg, %i.gz                    ; 2 uses
  %i.hi = shl nsw i64 %i.ha, 3
  %i.hj = shl nuw nsw i64 %wide.trip.count.i28.i, 3 ; 2 uses
  %i.hk = shl nsw i64 %i.gx, 3
  %i.hl = shl nsw i64 %14, 3
  %i.hm = getelementptr i8, ptr %i.a, i64 %i.hh
  %i.hn = getelementptr i8, ptr %i.hm, i64 %i.hi
  %i.ho = getelementptr i8, ptr %i.hn, i64 %i.hj
  %i.hp = getelementptr i8, ptr %i.a, i64 %i.hh
  %i.hq = getelementptr i8, ptr %i.hp, i64 %i.hl
  %i.hr = getelementptr i8, ptr %i.hq, i64 %i.hj
  %min.iters.check116 = icmp slt i32 %i.gr, 6
  %stride.check = icmp slt i32 %i.gy, 0
  %n.vec118 = and i64 %wide.trip.count.i28.i, 2147483644
  %xtraiter139 = and i64 %wide.trip.count.i28.i, 1
  %i.hs = icmp slt i32 %i.gr, 2
  %unroll_iter143 = and i64 %wide.trip.count.i28.i, 2147483646
  %lcmp.mod141.not = icmp eq i64 %xtraiter139, 0
  %lcmp.mod142 = trunc i32 %smax.i27.i to i1
  br label %.preheader120.us.us.i.i

.preheader120.us.us.i.i:                          ; preds = %._crit_edge124.us.us.i.i, %.preheader120.us.us.preheader.i.i
  %indvar107 = phi i64 [ %indvar.next108, %._crit_edge124.us.us.i.i ], [ 0, %.preheader120.us.us.preheader.i.i ] ; 2 uses
  %.1125.us.us.i.i = phi ptr [ %i.in, %._crit_edge124.us.us.i.i ], [ %i.a, %.preheader120.us.us.preheader.i.i ] ; 3 uses
  %i.ht = mul i64 %i.hk, %indvar107               ; 2 uses
  %invariant.gep.i29.i = getelementptr [8 x i8], ptr %.1125.us.us.i.i, i64 %i.ha ; 2 uses
  %invariant.gep167.i.i = getelementptr [8 x i8], ptr %.1125.us.us.i.i, i64 %14 ; 2 uses
  %scevgep109 = getelementptr i8, ptr %i.ho, i64 %i.ht
  %scevgep110 = getelementptr i8, ptr %i.hr, i64 %i.ht
  %bound0111 = icmp ult ptr %invariant.gep.i29.i, %scevgep110
  %bound1112 = icmp ult ptr %invariant.gep167.i.i, %scevgep109
  %found.conflict113 = and i1 %bound0111, %bound1112
  %i.hu = or i1 %found.conflict113, %stride.check
  br label %.preheader119.us.us.i.i

.preheader119.us.us.i.i:                          ; preds = %._crit_edge.us.us.i.i, %.preheader120.us.us.i.i
  %indvars.iv146.i.i = phi i64 [ %indvars.iv.next147.i.i, %._crit_edge.us.us.i.i ], [ 0, %.preheader120.us.us.i.i ] ; 3 uses
  %gep.i30.i = getelementptr [8 x i8], ptr %invariant.gep.i29.i, i64 %indvars.iv146.i.i ; 4 uses
  %gep168.i.i = getelementptr [8 x i8], ptr %invariant.gep167.i.i, i64 %indvars.iv146.i.i ; 4 uses
  %brmerge = select i1 %min.iters.check116, i1 true, i1 %i.hu
  br i1 %brmerge, label %scalar.ph115.preheader, label %vector.body119

scalar.ph115.preheader:                           ; preds = %.preheader119.us.us.i.i
  br i1 %i.hs, label %scalar.ph115.epil.preheader, label %scalar.ph115

vector.body119:                                   ; preds = %.preheader119.us.us.i.i, %vector.body119
  %index120 = phi i64 [ %index.next125, %vector.body119 ], [ 0, %.preheader119.us.us.i.i ] ; 3 uses
  %i.hv = getelementptr [8 x i8], ptr %gep.i30.i, i64 %index120 ; 3 uses
  %i.hw = getelementptr i8, ptr %i.hv, i64 16     ; 2 uses
  %wide.load121 = load <2 x i64>, ptr %i.hv, align 8, !tbaa !45, !alias.scope !106, !noalias !107
  %wide.load122 = load <2 x i64>, ptr %i.hw, align 8, !tbaa !45, !alias.scope !106, !noalias !107
  %i.hx = getelementptr [8 x i8], ptr %gep168.i.i, i64 %index120 ; 3 uses
  %i.hy = getelementptr i8, ptr %i.hx, i64 16     ; 2 uses
  %wide.load123 = load <2 x i64>, ptr %i.hx, align 8, !tbaa !45, !alias.scope !107
  %wide.load124 = load <2 x i64>, ptr %i.hy, align 8, !tbaa !45, !alias.scope !107
  store <2 x i64> %wide.load123, ptr %i.hv, align 8, !tbaa !45, !alias.scope !106, !noalias !107
  store <2 x i64> %wide.load124, ptr %i.hw, align 8, !tbaa !45, !alias.scope !106, !noalias !107
  store <2 x i64> %wide.load121, ptr %i.hx, align 8, !tbaa !45, !alias.scope !107
  store <2 x i64> %wide.load122, ptr %i.hy, align 8, !tbaa !45, !alias.scope !107
  %index.next125 = add nuw i64 %index120, 4       ; 2 uses
  %i.hz = icmp eq i64 %index.next125, %n.vec118
  br i1 %i.hz, label %._crit_edge.us.us.i.i, label %vector.body119, !llvm.loop !99

scalar.ph115:                                     ; preds = %scalar.ph115.preheader, %scalar.ph115
  %indvars.iv.i31.i = phi i64 [ %indvars.iv.next.i32.i.1, %scalar.ph115 ], [ 0, %scalar.ph115.preheader ] ; 4 uses
  %niter144 = phi i64 [ %niter144.next.1, %scalar.ph115 ], [ 0, %scalar.ph115.preheader ]
  %i.ia = getelementptr [8 x i8], ptr %gep.i30.i, i64 %indvars.iv.i31.i ; 2 uses
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !45
  %i.ic = getelementptr [8 x i8], ptr %gep168.i.i, i64 %indvars.iv.i31.i ; 2 uses
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !45
  store i64 %i.id, ptr %i.ia, align 8, !tbaa !45
  store i64 %i.ib, ptr %i.ic, align 8, !tbaa !45
  %indvars.iv.next.i32.i = or disjoint i64 %indvars.iv.i31.i, 1 ; 2 uses
  %i.ie = getelementptr [8 x i8], ptr %gep.i30.i, i64 %indvars.iv.next.i32.i ; 2 uses
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !45
  %i.ig = getelementptr [8 x i8], ptr %gep168.i.i, i64 %indvars.iv.next.i32.i ; 2 uses
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !45
  store i64 %i.ih, ptr %i.ie, align 8, !tbaa !45
  store i64 %i.if, ptr %i.ig, align 8, !tbaa !45
  %indvars.iv.next.i32.i.1 = add nuw nsw i64 %indvars.iv.i31.i, 2 ; 2 uses
  %niter144.next.1 = add i64 %niter144, 2         ; 2 uses
  %niter144.ncmp.1 = icmp eq i64 %niter144.next.1, %unroll_iter143
  br i1 %niter144.ncmp.1, label %._crit_edge.us.us.i.i.loopexit.unr-lcssa, label %scalar.ph115, !llvm.loop !100

._crit_edge.us.us.i.i.loopexit.unr-lcssa:         ; preds = %scalar.ph115
  br i1 %lcmp.mod141.not, label %._crit_edge.us.us.i.i, label %scalar.ph115.epil.preheader

scalar.ph115.epil.preheader:                      ; preds = %._crit_edge.us.us.i.i.loopexit.unr-lcssa, %scalar.ph115.preheader
  %indvars.iv.i31.i.epil.init = phi i64 [ 0, %scalar.ph115.preheader ], [ %indvars.iv.next.i32.i.1, %._crit_edge.us.us.i.i.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod142)
  %i.ii = getelementptr [8 x i8], ptr %gep.i30.i, i64 %indvars.iv.i31.i.epil.init ; 2 uses
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !45
  %i.ik = getelementptr [8 x i8], ptr %gep168.i.i, i64 %indvars.iv.i31.i.epil.init ; 2 uses
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !45
  store i64 %i.il, ptr %i.ii, align 8, !tbaa !45
  store i64 %i.ij, ptr %i.ik, align 8, !tbaa !45
  br label %._crit_edge.us.us.i.i

._crit_edge.us.us.i.i:                            ; preds = %vector.body119, %scalar.ph115.epil.preheader, %._crit_edge.us.us.i.i.loopexit.unr-lcssa
  %indvars.iv.next147.i.i = add nsw i64 %indvars.iv146.i.i, %i.gz ; 2 uses
  %i.im = icmp slt i64 %indvars.iv.next147.i.i, %14
  br i1 %i.im, label %.preheader119.us.us.i.i, label %._crit_edge124.us.us.i.i, !llvm.loop !101

._crit_edge124.us.us.i.i:                         ; preds = %._crit_edge.us.us.i.i
  %i.in = getelementptr inbounds [8 x i8], ptr %.1125.us.us.i.i, i64 %i.gx ; 2 uses
  %i.io = icmp ult ptr %i.in, %i.ay
  %indvar.next108 = add i64 %indvar107, 1
  br i1 %i.io, label %.preheader120.us.us.i.i, label %Abc_TtSwapVars.exit.i, !llvm.loop !102

Abc_TtSwapVars.exit.i:                            ; preds = %._crit_edge124.us.us.i.i, %._crit_edge.us.i36.i, %vector.body76, %scalar.ph66, %scalar.ph66.1, %scalar.ph66.2, %.preheader120.lr.ph.i.i, %bb.n, %.preheader.lr.ph.i34.i, %bb.m, %bb.k, %Abc_TtHasVar.exit.thread4.i
  %i.ip = add nsw i32 %.019.i, 1
  br label %Abc_TtHasVar.exit.thread.i

Abc_TtHasVar.exit.thread.i:                       ; preds = %._crit_edge.us.i.i, %bb.e, %Abc_TtSwapVars.exit.i, %.preheader.lr.ph.i.i, %bb.g, %bb.d
  %.1.i = phi i32 [ %i.ip, %Abc_TtSwapVars.exit.i ], [ %.019.i, %bb.e ], [ %.019.i, %.preheader.lr.ph.i.i ], [ %.019.i, %bb.g ], [ %.019.i, %bb.d ], [ %.019.i, %._crit_edge.us.i.i ] ; 2 uses
  %indvars.iv.next.i31 = add nuw nsw i64 %indvars.iv.i30, 1 ; 2 uses
  %exitcond.not.i32 = icmp eq i64 %indvars.iv.next.i31, %wide.trip.count.i
  br i1 %exitcond.not.i32, label %Abc_TtMinBase.exit, label %.lr.ph.split.i, !llvm.loop !85

Abc_TtMinBase.exit.loopexit:                      ; preds = %Abc_TtHasVar.exit.thread.us.i
  store i64 %i.cg, ptr %i.a, align 16
  br label %Abc_TtMinBase.exit

Abc_TtMinBase.exit:                               ; preds = %Abc_TtHasVar.exit.thread.i, %Abc_TtMinBase.exit.loopexit, %bb.c, %Abc_TtStretch6.exit
  %.024 = phi i32 [ %3, %Abc_TtStretch6.exit ], [ 0, %bb.c ], [ %.1.us.i, %Abc_TtMinBase.exit.loopexit ], [ %.1.i, %Abc_TtHasVar.exit.thread.i ] ; 3 uses
  %i.iq = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #20
  %i.ir = and i64 %i.iq, 4294967295
  %.not26 = icmp eq i64 %i.ir, 2
  br i1 %.not26, label %bb.p, label %bb.o

bb.o:                                             ; preds = %Abc_TtMinBase.exit
  %i.is = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %4) ; 0 uses
  br label %bb.v

bb.p:                                             ; preds = %Abc_TtMinBase.exit
  %i.it = load i8, ptr %4, align 1, !tbaa !20     ; 2 uses
  %i.iu = sext i8 %i.it to i32
  %i.iv = add nsw i32 %i.iu, -48                  ; 4 uses
  %i.iw = add i8 %i.it, -55
  %or.cond = icmp ult i8 %i.iw, -4
  br i1 %or.cond, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ix = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.iv) ; 0 uses
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.iy = shl nuw nsw i32 %i.iv, 1
  %.not27 = icmp slt i32 %.024, %i.iy
  br i1 %.not27, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.iz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %.024, ptr noundef nonnull %4) ; 0 uses
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %.not28 = icmp sgt i32 %.024, %i.iv
  br i1 %.not28, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ja = call i32 @If_CluCheckXX(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.iv, i32 noundef %2, i32 noundef 1)
  br label %bb.v

bb.v:                                             ; preds = %bb.q, %bb.s, %bb.u, %bb.t, %bb.o
  %.1 = phi i32 [ 0, %bb.o ], [ 0, %bb.q ], [ 0, %bb.s ], [ %i.ja, %bb.u ], [ 1, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

attributes #0 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind allocsize(1) }
attributes #18 = { nounwind }
attributes #19 = { nounwind allocsize(0,1) }
attributes #20 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !11}
!1 = distinct !{!1, !11}
!2 = distinct !{!2, !11}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!8, !8, i64 0}
!14 = !{!"any p2 pointer", !12, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"p1 _ZTS9If_Hte_t_", !12, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"If_Hte_t_", !16, i64 0, !8, i64 8, !8, i64 12, !7, i64 16}
!19 = !{!18, !8, i64 12}
!20 = !{!7, !7, i64 0}
!21 = !{!"p1 omnipotent char", !12, i64 0}
!22 = !{!"p1 _ZTS9If_Par_t_", !12, i64 0}
!23 = !{!"p1 _ZTS9If_Obj_t_", !12, i64 0}
!24 = !{!"p1 _ZTS10Vec_Ptr_t_", !12, i64 0}
!25 = !{!"float", !7, i64 0}
!26 = !{!"p1 long", !12, i64 0}
!27 = !{!"p1 _ZTS10Vec_Int_t_", !12, i64 0}
!28 = !{!"p1 _ZTS10Vec_Wrd_t_", !12, i64 0}
!29 = !{!"p1 _ZTS12Mem_Fixed_t_", !12, i64 0}
!30 = !{!"p1 _ZTS9If_Set_t_", !12, i64 0}
!31 = !{!"p1 _ZTS12If_DsdMan_t_", !12, i64 0}
!32 = !{!"p1 _ZTS14Hash_IntMan_t_", !12, i64 0}
!33 = !{!"p1 _ZTS10Vec_Str_t_", !12, i64 0}
!34 = !{!"p1 _ZTS10Vec_Mem_t_", !12, i64 0}
!35 = !{!"p1 _ZTS9If_Cut_t_", !12, i64 0}
!36 = !{!"p1 _ZTS10Tim_Man_t_", !12, i64 0}
!37 = !{!"If_Man_t_", !21, i64 0, !22, i64 8, !23, i64 16, !24, i64 24, !24, i64 32, !24, i64 40, !24, i64 48, !24, i64 56, !7, i64 64, !8, i64 84, !25, i64 88, !25, i64 92, !25, i64 96, !25, i64 100, !8, i64 104, !25, i64 108, !8, i64 112, !8, i64 116, !7, i64 120, !26, i64 152, !8, i64 160, !8, i64 164, !8, i64 168, !27, i64 176, !7, i64 184, !8, i64 568, !8, i64 572, !8, i64 576, !27, i64 584, !27, i64 592, !28, i64 600, !28, i64 608, !28, i64 616, !24, i64 624, !27, i64 632, !8, i64 640, !8, i64 644, !8, i64 648, !7, i64 652, !8, i64 716, !8, i64 720, !8, i64 724, !8, i64 728, !29, i64 736, !29, i64 744, !30, i64 752, !30, i64 760, !30, i64 768, !8, i64 776, !8, i64 780, !7, i64 784, !7, i64 912, !8, i64 1040, !8, i64 1044, !8, i64 1048, !8, i64 1052, !31, i64 1056, !7, i64 1064, !7, i64 1192, !7, i64 1320, !7, i64 1448, !7, i64 1576, !7, i64 1704, !7, i64 1832, !32, i64 1960, !27, i64 1968, !33, i64 1976, !34, i64 1984, !7, i64 1992, !8, i64 2024, !8, i64 2028, !8, i64 2032, !7, i64 2040, !7, i64 2088, !7, i64 2096, !27, i64 2104, !7, i64 2112, !24, i64 2176, !12, i64 2184, !27, i64 2192, !7, i64 2200, !33, i64 2264, !27, i64 2272, !27, i64 2280, !27, i64 2288, !23, i64 2296, !35, i64 2304, !8, i64 2312, !7, i64 2316, !7, i64 2444, !25, i64 2572, !8, i64 2576, !36, i64 2584, !27, i64 2592, !7, i64 2600, !7, i64 2608, !7, i64 2616, !29, i64 2632}
!38 = !{!37, !22, i64 8}
!39 = !{!"p1 _ZTS12If_LibLut_t_", !12, i64 0}
!40 = !{!"p1 _ZTS13If_LibCell_t_", !12, i64 0}
!41 = !{!"p1 float", !12, i64 0}
!42 = !{!"If_Par_t_", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !25, i64 24, !25, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !8, i64 184, !8, i64 188, !8, i64 192, !8, i64 196, !8, i64 200, !8, i64 204, !21, i64 208, !8, i64 216, !25, i64 220, !8, i64 224, !8, i64 228, !8, i64 232, !8, i64 236, !8, i64 240, !8, i64 244, !8, i64 248, !8, i64 252, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !25, i64 280, !25, i64 284, !25, i64 288, !39, i64 296, !40, i64 304, !41, i64 312, !41, i64 320, !12, i64 328, !12, i64 336, !12, i64 344, !12, i64 352, !12, i64 360, !12, i64 368}
!43 = !{!42, !8, i64 0}
!44 = !{!"long", !7, i64 0}
!45 = !{!44, !44, i64 0}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = !{!"llvm.loop.isvectorized", i32 1}
!48 = !{!"llvm.loop.unroll.runtime.disable"}
!49 = distinct !{!49, !11}
!50 = distinct !{!50, !11}
!51 = distinct !{!51, !11}
!52 = !{!"p1 int", !12, i64 0}
!53 = !{!"Vec_Int_t_", !8, i64 0, !8, i64 4, !52, i64 8}
!54 = !{!53, !8, i64 0}
!55 = !{!53, !52, i64 8}
!56 = !{!53, !8, i64 4}
!57 = distinct !{!57, !11}
!58 = distinct !{!58, !11}
!59 = distinct !{!59, !11}
!60 = distinct !{!60, !11}
!61 = distinct !{!61, !11}
!62 = distinct !{!62, !11}
!63 = !{!37, !29, i64 2632}
!64 = !{!37, !24, i64 40}
!65 = !{!"Vec_Ptr_t_", !8, i64 0, !8, i64 4, !14, i64 8}
!66 = !{!65, !8, i64 4}
!67 = !{!42, !8, i64 4}
!68 = !{!65, !8, i64 0}
!69 = !{!65, !14, i64 8}
!70 = !{!12, !12, i64 0}
!71 = !{!18, !16, i64 0}
!72 = !{!18, !8, i64 8}
!73 = distinct !{!73, !11}
!74 = distinct !{!74, !46}
!75 = distinct !{!75, !11, !47, !48}
!76 = distinct !{!76, !46}
!77 = distinct !{!77, !11, !47}
!78 = distinct !{!78, !11}
!79 = distinct !{!79, !46}
!80 = !{!"branch_weights", i32 4, i32 28}
!81 = distinct !{!81, !11, !47, !48}
!82 = distinct !{!82, !11, !47}
!83 = distinct !{!83, !46}
!84 = distinct !{!84, !11}
!85 = distinct !{!85, !11}
!86 = distinct !{!86, !11}
!87 = distinct !{!87, !11}
!88 = distinct !{!88, !11}
!89 = distinct !{!89, !11, !47, !48}
!90 = distinct !{!90, !"LVerDomain"}
!91 = distinct !{!91, !90}
!92 = distinct !{!92, !90}
!93 = distinct !{!93, !11, !47, !48}
!94 = distinct !{!94, !11, !47}
!95 = distinct !{!95, !11}
!96 = distinct !{!96, !"LVerDomain"}
!97 = distinct !{!97, !96}
!98 = distinct !{!98, !96}
!99 = distinct !{!99, !11, !47, !48}
!100 = distinct !{!100, !11, !47}
!101 = distinct !{!101, !11}
!102 = distinct !{!102, !11}
!103 = !{!42, !8, i64 84}
!104 = !{!91}
!105 = !{!92}
!106 = !{!97}
!107 = !{!98}
end_hunk_0
