Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaIf?download=true
inline.NumInlined: 1199
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 57
loop-unroll.NumUnrolled: 85
begin_hunk_0_@Gia_ManFromIfGetConfig2:bb.a
  %lcmp.mod619.not = icmp eq i64 %xtraiter618, 0
  br i1 %lcmp.mod619.not, label %._crit_edge.us.12.i.preheader, label %._crit_edge.us.11.i.epil.preheader

._crit_edge.us.11.i.epil.preheader:               ; preds = %._crit_edge.us.12.i.preheader.unr-lcssa, %._crit_edge.us.11.i.preheader
  %indvars.iv.12.i.epil.init = phi i64 [ 0, %._crit_edge.us.11.i.preheader ], [ %indvars.iv.next.12.i.1, %._crit_edge.us.12.i.preheader.unr-lcssa ] ; 2 uses
  %.01620.us.12.i.epil.init = phi i32 [ 0, %._crit_edge.us.11.i.preheader ], [ %i.lj, %._crit_edge.us.12.i.preheader.unr-lcssa ]
  %lcmp.mod621 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod621)
  %i.lk = shl nuw nsw i64 %indvars.iv.12.i.epil.init, 1
  %i.ll = lshr i64 %i.d, %i.lk
  %i.lm = trunc i64 %i.ll to i32
  %i.ln = and i32 %i.lm, 3
  %i.lo = trunc nuw nsw i64 %indvars.iv.12.i.epil.init to i32
  %i.lp = lshr i32 12, %i.lo
  %i.lq = and i32 %i.lp, 1
  %i.lr = shl nuw nsw i32 %i.lq, %i.ln
  %i.ls = or i32 %i.lr, %.01620.us.12.i.epil.init
  br label %._crit_edge.us.12.i.preheader

._crit_edge.us.12.i.preheader:                    ; preds = %._crit_edge.us.12.i.preheader.unr-lcssa, %._crit_edge.us.11.i.epil.preheader
  %.lcssa543.a = phi i32 [ %i.lj, %._crit_edge.us.12.i.preheader.unr-lcssa ], [ %i.ls, %._crit_edge.us.11.i.epil.preheader ]
  %xtraiter624 = and i64 %wide.trip.count.i, 1
  %i.lt = icmp eq i64 %i.bv, 0
  br i1 %i.lt, label %._crit_edge.us.12.i.epil.preheader, label %._crit_edge.us.12.i.preheader.new

._crit_edge.us.12.i.preheader.new:                ; preds = %._crit_edge.us.12.i.preheader
  %unroll_iter628 = and i64 %wide.trip.count.i, 2147483646
  br label %._crit_edge.us.12.i

._crit_edge.us.12.i:                              ; preds = %._crit_edge.us.12.i, %._crit_edge.us.12.i.preheader.new
  %indvars.iv.13.i = phi i64 [ 0, %._crit_edge.us.12.i.preheader.new ], [ %indvars.iv.next.13.i.1, %._crit_edge.us.12.i ] ; 4 uses
  %.01620.us.13.i = phi i32 [ 0, %._crit_edge.us.12.i.preheader.new ], [ %i.ml, %._crit_edge.us.12.i ]
  %niter629 = phi i64 [ 0, %._crit_edge.us.12.i.preheader.new ], [ %niter629.next.1, %._crit_edge.us.12.i ]
  %i.lu = shl nuw nsw i64 %indvars.iv.13.i, 1
  %i.lv = lshr i64 %i.d, %i.lu
  %i.lw = trunc i64 %i.lv to i32
  %i.lx = and i32 %i.lw, 3
  %i.ly = trunc nuw nsw i64 %indvars.iv.13.i to i32
  %i.lz = lshr i32 13, %i.ly
  %i.ma = and i32 %i.lz, 1
  %i.mb = shl nuw nsw i32 %i.ma, %i.lx
  %i.mc = or i32 %i.mb, %.01620.us.13.i
  %indvars.iv.next.13.i = or disjoint i64 %indvars.iv.13.i, 1 ; 2 uses
  %i.md = shl nuw nsw i64 %indvars.iv.next.13.i, 1
  %i.me = lshr i64 %i.d, %i.md
  %i.mf = trunc i64 %i.me to i32
  %i.mg = and i32 %i.mf, 3
  %i.mh = trunc nuw nsw i64 %indvars.iv.next.13.i to i32
  %i.mi = lshr i32 13, %i.mh
  %i.mj = and i32 %i.mi, 1
  %i.mk = shl nuw nsw i32 %i.mj, %i.mg
  %i.ml = or i32 %i.mk, %i.mc                     ; 3 uses
  %indvars.iv.next.13.i.1 = add nuw nsw i64 %indvars.iv.13.i, 2 ; 2 uses
  %niter629.next.1 = add i64 %niter629, 2         ; 2 uses
  %niter629.ncmp.1 = icmp eq i64 %niter629.next.1, %unroll_iter628
  br i1 %niter629.ncmp.1, label %._crit_edge.us.13.i.preheader.unr-lcssa, label %._crit_edge.us.12.i, !llvm.loop !302

._crit_edge.us.13.i.preheader.unr-lcssa:          ; preds = %._crit_edge.us.12.i
  %lcmp.mod625.not = icmp eq i64 %xtraiter624, 0
  br i1 %lcmp.mod625.not, label %._crit_edge.us.13.i.preheader, label %._crit_edge.us.12.i.epil.preheader

._crit_edge.us.12.i.epil.preheader:               ; preds = %._crit_edge.us.13.i.preheader.unr-lcssa, %._crit_edge.us.12.i.preheader
  %indvars.iv.13.i.epil.init = phi i64 [ 0, %._crit_edge.us.12.i.preheader ], [ %indvars.iv.next.13.i.1, %._crit_edge.us.13.i.preheader.unr-lcssa ] ; 2 uses
  %.01620.us.13.i.epil.init = phi i32 [ 0, %._crit_edge.us.12.i.preheader ], [ %i.ml, %._crit_edge.us.13.i.preheader.unr-lcssa ]
  %lcmp.mod627 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod627)
  %i.mm = shl nuw nsw i64 %indvars.iv.13.i.epil.init, 1
  %i.mn = lshr i64 %i.d, %i.mm
  %i.mo = trunc i64 %i.mn to i32
  %i.mp = and i32 %i.mo, 3
  %i.mq = trunc nuw nsw i64 %indvars.iv.13.i.epil.init to i32
  %i.mr = lshr i32 13, %i.mq
  %i.ms = and i32 %i.mr, 1
  %i.mt = shl nuw nsw i32 %i.ms, %i.mp
  %i.mu = or i32 %i.mt, %.01620.us.13.i.epil.init
  br label %._crit_edge.us.13.i.preheader

._crit_edge.us.13.i.preheader:                    ; preds = %._crit_edge.us.13.i.preheader.unr-lcssa, %._crit_edge.us.12.i.epil.preheader
  %.lcssa542.a = phi i32 [ %i.ml, %._crit_edge.us.13.i.preheader.unr-lcssa ], [ %i.mu, %._crit_edge.us.12.i.epil.preheader ]
  %xtraiter630 = and i64 %wide.trip.count.i, 1
  %i.mv = icmp eq i64 %i.bv, 0
  br i1 %i.mv, label %._crit_edge.us.13.i.epil.preheader, label %._crit_edge.us.13.i.preheader.new

._crit_edge.us.13.i.preheader.new:                ; preds = %._crit_edge.us.13.i.preheader
  %unroll_iter634 = and i64 %wide.trip.count.i, 2147483646
  br label %._crit_edge.us.13.i

._crit_edge.us.13.i:                              ; preds = %._crit_edge.us.13.i, %._crit_edge.us.13.i.preheader.new
  %indvars.iv.14.i = phi i64 [ 0, %._crit_edge.us.13.i.preheader.new ], [ %indvars.iv.next.14.i.1, %._crit_edge.us.13.i ] ; 4 uses
  %.01620.us.14.i = phi i32 [ 0, %._crit_edge.us.13.i.preheader.new ], [ %i.nn, %._crit_edge.us.13.i ]
  %niter635 = phi i64 [ 0, %._crit_edge.us.13.i.preheader.new ], [ %niter635.next.1, %._crit_edge.us.13.i ]
  %i.mw = shl nuw nsw i64 %indvars.iv.14.i, 1
  %i.mx = lshr i64 %i.d, %i.mw
  %i.my = trunc i64 %i.mx to i32
  %i.mz = and i32 %i.my, 3
  %i.na = trunc nuw nsw i64 %indvars.iv.14.i to i32
  %i.nb = lshr i32 14, %i.na
  %i.nc = and i32 %i.nb, 1
  %i.nd = shl nuw nsw i32 %i.nc, %i.mz
  %i.ne = or i32 %i.nd, %.01620.us.14.i
  %indvars.iv.next.14.i = or disjoint i64 %indvars.iv.14.i, 1 ; 2 uses
  %i.nf = shl nuw nsw i64 %indvars.iv.next.14.i, 1
  %i.ng = lshr i64 %i.d, %i.nf
  %i.nh = trunc i64 %i.ng to i32
  %i.ni = and i32 %i.nh, 3
  %i.nj = trunc nuw nsw i64 %indvars.iv.next.14.i to i32
  %i.nk = lshr i32 14, %i.nj
  %i.nl = and i32 %i.nk, 1
  %i.nm = shl nuw nsw i32 %i.nl, %i.ni
  %i.nn = or i32 %i.nm, %i.ne                     ; 3 uses
  %indvars.iv.next.14.i.1 = add nuw nsw i64 %indvars.iv.14.i, 2 ; 2 uses
  %niter635.next.1 = add i64 %niter635, 2         ; 2 uses
  %niter635.ncmp.1 = icmp eq i64 %niter635.next.1, %unroll_iter634
  br i1 %niter635.ncmp.1, label %._crit_edge.us.14.i.preheader.unr-lcssa, label %._crit_edge.us.13.i, !llvm.loop !302

._crit_edge.us.14.i.preheader.unr-lcssa:          ; preds = %._crit_edge.us.13.i
  %lcmp.mod631.not = icmp eq i64 %xtraiter630, 0
  br i1 %lcmp.mod631.not, label %._crit_edge.us.14.i.preheader, label %._crit_edge.us.13.i.epil.preheader

._crit_edge.us.13.i.epil.preheader:               ; preds = %._crit_edge.us.14.i.preheader.unr-lcssa, %._crit_edge.us.13.i.preheader
  %indvars.iv.14.i.epil.init = phi i64 [ 0, %._crit_edge.us.13.i.preheader ], [ %indvars.iv.next.14.i.1, %._crit_edge.us.14.i.preheader.unr-lcssa ] ; 2 uses
  %.01620.us.14.i.epil.init = phi i32 [ 0, %._crit_edge.us.13.i.preheader ], [ %i.nn, %._crit_edge.us.14.i.preheader.unr-lcssa ]
  %lcmp.mod633 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod633)
  %i.no = shl nuw nsw i64 %indvars.iv.14.i.epil.init, 1
  %i.np = lshr i64 %i.d, %i.no
  %i.nq = trunc i64 %i.np to i32
  %i.nr = and i32 %i.nq, 3
  %i.ns = trunc nuw nsw i64 %indvars.iv.14.i.epil.init to i32
  %i.nt = lshr i32 14, %i.ns
  %i.nu = and i32 %i.nt, 1
  %i.nv = shl nuw nsw i32 %i.nu, %i.nr
  %i.nw = or i32 %i.nv, %.01620.us.14.i.epil.init
  br label %._crit_edge.us.14.i.preheader

._crit_edge.us.14.i.preheader:                    ; preds = %._crit_edge.us.14.i.preheader.unr-lcssa, %._crit_edge.us.13.i.epil.preheader
  %.lcssa541 = phi i32 [ %i.nn, %._crit_edge.us.14.i.preheader.unr-lcssa ], [ %i.nw, %._crit_edge.us.13.i.epil.preheader ]
  %xtraiter636 = and i64 %wide.trip.count.i, 1
  %i.nx = icmp eq i64 %i.bv, 0
  br i1 %i.nx, label %._crit_edge.us.14.i.epil.preheader, label %._crit_edge.us.14.i.preheader.new

._crit_edge.us.14.i.preheader.new:                ; preds = %._crit_edge.us.14.i.preheader
  %unroll_iter640 = and i64 %wide.trip.count.i, 2147483646
  br label %._crit_edge.us.14.i

._crit_edge.us.14.i:                              ; preds = %._crit_edge.us.14.i, %._crit_edge.us.14.i.preheader.new
  %indvars.iv.15.i = phi i64 [ 0, %._crit_edge.us.14.i.preheader.new ], [ %indvars.iv.next.15.i.1, %._crit_edge.us.14.i ] ; 4 uses
  %.01620.us.15.i = phi i32 [ 0, %._crit_edge.us.14.i.preheader.new ], [ %i.op, %._crit_edge.us.14.i ]
  %niter641 = phi i64 [ 0, %._crit_edge.us.14.i.preheader.new ], [ %niter641.next.1, %._crit_edge.us.14.i ]
  %i.ny = shl nuw nsw i64 %indvars.iv.15.i, 1
  %i.nz = lshr i64 %i.d, %i.ny
  %i.oa = trunc i64 %i.nz to i32
  %i.ob = and i32 %i.oa, 3
  %i.oc = trunc nuw nsw i64 %indvars.iv.15.i to i32
  %i.od = lshr i32 15, %i.oc
  %i.oe = and i32 %i.od, 1
  %i.of = shl nuw nsw i32 %i.oe, %i.ob
  %i.og = or i32 %i.of, %.01620.us.15.i
  %indvars.iv.next.15.i = or disjoint i64 %indvars.iv.15.i, 1 ; 2 uses
  %i.oh = shl nuw nsw i64 %indvars.iv.next.15.i, 1
  %i.oi = lshr i64 %i.d, %i.oh
  %i.oj = trunc i64 %i.oi to i32
  %i.ok = and i32 %i.oj, 3
  %i.ol = trunc nuw nsw i64 %indvars.iv.next.15.i to i32
  %i.om = lshr i32 15, %i.ol
  %i.on = and i32 %i.om, 1
  %i.oo = shl nuw nsw i32 %i.on, %i.ok
  %i.op = or i32 %i.oo, %i.og                     ; 3 uses
  %indvars.iv.next.15.i.1 = add nuw nsw i64 %indvars.iv.15.i, 2 ; 2 uses
  %niter641.next.1 = add i64 %niter641, 2         ; 2 uses
  %niter641.ncmp.1 = icmp eq i64 %niter641.next.1, %unroll_iter640
  br i1 %niter641.ncmp.1, label %._crit_edge.us.15.i.unr-lcssa, label %._crit_edge.us.14.i, !llvm.loop !302

._crit_edge.us.15.i.unr-lcssa:                    ; preds = %._crit_edge.us.14.i
  %lcmp.mod637.not = icmp eq i64 %xtraiter636, 0
  br i1 %lcmp.mod637.not, label %._crit_edge.us.15.i, label %._crit_edge.us.14.i.epil.preheader

._crit_edge.us.14.i.epil.preheader:               ; preds = %._crit_edge.us.15.i.unr-lcssa, %._crit_edge.us.14.i.preheader
  %indvars.iv.15.i.epil.init = phi i64 [ 0, %._crit_edge.us.14.i.preheader ], [ %indvars.iv.next.15.i.1, %._crit_edge.us.15.i.unr-lcssa ] ; 2 uses
  %.01620.us.15.i.epil.init = phi i32 [ 0, %._crit_edge.us.14.i.preheader ], [ %i.op, %._crit_edge.us.15.i.unr-lcssa ]
  %lcmp.mod639 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod639)
  %i.oq = shl nuw nsw i64 %indvars.iv.15.i.epil.init, 1
  %i.or = lshr i64 %i.d, %i.oq
  %i.os = trunc i64 %i.or to i32
  %i.ot = and i32 %i.os, 3
  %i.ou = trunc nuw nsw i64 %indvars.iv.15.i.epil.init to i32
  %i.ov = lshr i32 15, %i.ou
  %i.ow = and i32 %i.ov, 1
  %i.ox = shl nuw nsw i32 %i.ow, %i.ot
  %i.oy = or i32 %i.ox, %.01620.us.15.i.epil.init
  br label %._crit_edge.us.15.i

._crit_edge.us.15.i:                              ; preds = %._crit_edge.us.15.i.unr-lcssa, %._crit_edge.us.14.i.epil.preheader
  %.lcssa = phi i32 [ %i.op, %._crit_edge.us.15.i.unr-lcssa ], [ %i.oy, %._crit_edge.us.14.i.epil.preheader ]
  %i.oz = and i64 %i.f, 1
  %i.pa = zext nneg i32 %.lcssa554.a to i64
  %i.pb = lshr i64 %i.f, %i.pa
  %i.pc = shl i64 %i.pb, 1
  %i.pd = and i64 %i.pc, 2
  %i.pe = zext nneg i32 %.lcssa553.a to i64
  %i.pf = zext nneg i32 %.lcssa552.a to i64
  %i.pg = zext nneg i32 %.lcssa551.a to i64
  %i.ph = zext nneg i32 %.lcssa550.a to i64
  %i.pi = zext nneg i32 %.lcssa549.a to i64
  %5 = zext nneg i32 %.lcssa548.a to i64
  %6 = zext nneg i32 %.lcssa547.a to i64
  %7 = zext nneg i32 %.lcssa546.a to i64
  %i.pj = zext nneg i32 %.lcssa545.a to i64
  %8 = zext nneg i32 %.lcssa544.a to i64
  %9 = zext nneg i32 %.lcssa543.a to i64
  %10 = zext nneg i32 %.lcssa542.a to i64
  %11 = zext nneg i32 %.lcssa541 to i64
  %i.pk = zext nneg i32 %.lcssa to i64
  %i.pl = lshr i64 %i.f, %i.pk
  %12 = lshr i64 %i.f, %11
  %13 = lshr i64 %i.f, %10
  %i.pm = lshr i64 %i.f, %9
  %14 = lshr i64 %i.f, %8
  %15 = lshr i64 %i.f, %i.pj
  %16 = lshr i64 %i.f, %7
  %17 = lshr i64 %i.f, %6
  %i.pn = lshr i64 %i.f, %5
  %18 = lshr i64 %i.f, %i.pi
  %19 = lshr i64 %i.f, %i.ph
  %20 = lshr i64 %i.f, %i.pg
  %21 = lshr i64 %i.f, %i.pf
  %i.po = lshr i64 %i.f, %i.pe
  %22 = insertelement <14 x i64> poison, i64 %i.po, i64 0
  %23 = insertelement <14 x i64> %22, i64 %21, i64 1
  %24 = insertelement <14 x i64> %23, i64 %20, i64 2
  %25 = insertelement <14 x i64> %24, i64 %19, i64 3
  %26 = insertelement <14 x i64> %25, i64 %18, i64 4
  %27 = insertelement <14 x i64> %26, i64 %i.pn, i64 5
  %28 = insertelement <14 x i64> %27, i64 %17, i64 6
  %29 = insertelement <14 x i64> %28, i64 %16, i64 7
  %30 = insertelement <14 x i64> %29, i64 %15, i64 8
  %31 = insertelement <14 x i64> %30, i64 %14, i64 9
  %32 = insertelement <14 x i64> %31, i64 %i.pm, i64 10
  %33 = insertelement <14 x i64> %32, i64 %13, i64 11
  %34 = insertelement <14 x i64> %33, i64 %12, i64 12
  %35 = insertelement <14 x i64> %34, i64 %i.pl, i64 13
  %36 = trunc <14 x i64> %35 to <14 x i16>
  %37 = shl <14 x i16> %36, <i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15>
  %38 = and <14 x i16> %37, <i16 4, i16 8, i16 16, i16 32, i16 64, i16 128, i16 256, i16 512, i16 1024, i16 2048, i16 4096, i16 8192, i16 16384, i16 -32768>
  %39 = tail call i16 @llvm.vector.reduce.or.v14i16(<14 x i16> %38)
  %i.pp = zext i16 %39 to i64
  %op.rdx = or disjoint i64 %i.pd, %i.pp
  %i.pq = or disjoint i64 %op.rdx, %i.oz
  br label %Gia_ManFromIfPermuteTruth4.exit

.split.i:                                         ; preds = %bb.ab
  %i.pr = trunc i64 %i.f to i16
  %i.ps = and i16 %i.pr, 1
  %i.pt = insertelement <3 x i16> poison, i16 %i.ps, i64 0
  %i.pu = shufflevector <3 x i16> %i.pt, <3 x i16> poison, <6 x i32> zeroinitializer
  %i.pv = mul nuw <6 x i16> %i.pu, <i16 8192, i16 4096, i16 16384, i16 -32768, i16 126, i16 3969>
  %i.pw = tail call i16 @llvm.vector.reduce.or.v6i16(<6 x i16> %i.pv)
  %i.px = zext i16 %i.pw to i64
  br label %Gia_ManFromIfPermuteTruth4.exit

Gia_ManFromIfPermuteTruth4.exit:                  ; preds = %.split.i, %._crit_edge.us.15.i, %._crit_edge327
  %.0110 = phi i64 [ %i.f, %._crit_edge327 ], [ %i.pq, %._crit_edge.us.15.i ], [ %i.px, %.split.i ] ; 2 uses
  %i.py = lshr i64 %.0110, 8
  %i.pz = trunc i64 %i.py to i8
  %i.qa = load i32, ptr %i.b, align 4, !tbaa !67  ; 7 uses
  %i.qb = load i32, ptr %0, align 8, !tbaa !66
  %i.qc = icmp eq i32 %i.qa, %i.qb
  br i1 %i.qc, label %bb.ad, label %Gia_ManFromIfPermuteTruth4.exit.Vec_StrPush.exit145_crit_edge

Gia_ManFromIfPermuteTruth4.exit.Vec_StrPush.exit145_crit_edge: ; preds = %Gia_ManFromIfPermuteTruth4.exit
  %.pre413 = load ptr, ptr %i.y, align 8, !tbaa !62
  br label %Vec_StrPush.exit145

bb.ad:                                            ; preds = %Gia_ManFromIfPermuteTruth4.exit
  %i.qd = icmp slt i32 %i.qa, 16
  br i1 %i.qd, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.qe = load ptr, ptr %i.y, align 8, !tbaa !62  ; 2 uses
  %.not9.i.i143 = icmp eq ptr %i.qe, null
  br i1 %.not9.i.i143, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.qf = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.qe, i64 noundef 16) #30
  br label %Vec_StrGrow.exit11.sink.split.i141

bb.ag:                                            ; preds = %bb.ae
  %i.qg = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  br label %Vec_StrGrow.exit11.sink.split.i141

bb.ah:                                            ; preds = %bb.ad
  %i.qh = icmp samesign ult i32 %i.qa, 1073741823
  %i.qi = shl nuw nsw i32 %i.qa, 1
  %spec.select.i138 = select i1 %i.qh, i32 %i.qi, i32 2147483647 ; 4 uses
  %.not.i9.i139 = icmp samesign ult i32 %i.qa, %spec.select.i138
  %.pre414 = load ptr, ptr %i.y, align 8, !tbaa !62 ; 3 uses
  br i1 %.not.i9.i139, label %bb.ai, label %Vec_StrPush.exit145

bb.ai:                                            ; preds = %bb.ah
  %.not9.i10.i140 = icmp eq ptr %.pre414, null
  %i.qj = zext nneg i32 %spec.select.i138 to i64  ; 2 uses
  br i1 %.not9.i10.i140, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.qk = tail call ptr @realloc(ptr noundef nonnull %.pre414, i64 noundef %i.qj) #30
  br label %Vec_StrGrow.exit11.sink.split.i141

bb.ak:                                            ; preds = %bb.ai
  %i.ql = tail call noalias ptr @malloc(i64 noundef %i.qj) #31
  br label %Vec_StrGrow.exit11.sink.split.i141

Vec_StrGrow.exit11.sink.split.i141:               ; preds = %bb.aj, %bb.ak, %bb.af, %bb.ag
  %storemerge295 = phi ptr [ %i.qg, %bb.ag ], [ %i.qf, %bb.af ], [ %i.qk, %bb.aj ], [ %i.ql, %bb.ak ] ; 2 uses
  %spec.select.sink.i142 = phi i32 [ 16, %bb.ag ], [ 16, %bb.af ], [ %spec.select.i138, %bb.aj ], [ %spec.select.i138, %bb.ak ]
  store ptr %storemerge295, ptr %i.y, align 8, !tbaa !62
  store i32 %spec.select.sink.i142, ptr %0, align 8, !tbaa !66
  %.pre415 = load i32, ptr %i.b, align 4, !tbaa !67
  br label %Vec_StrPush.exit145

Vec_StrPush.exit145:                              ; preds = %Gia_ManFromIfPermuteTruth4.exit.Vec_StrPush.exit145_crit_edge, %bb.ah, %Vec_StrGrow.exit11.sink.split.i141
  %i.qm = phi i32 [ %i.qa, %Gia_ManFromIfPermuteTruth4.exit.Vec_StrPush.exit145_crit_edge ], [ %i.qa, %bb.ah ], [ %.pre415, %Vec_StrGrow.exit11.sink.split.i141 ] ; 2 uses
  %i.qn = phi ptr [ %.pre413, %Gia_ManFromIfPermuteTruth4.exit.Vec_StrPush.exit145_crit_edge ], [ %.pre414, %bb.ah ], [ %storemerge295, %Vec_StrGrow.exit11.sink.split.i141 ]
  %i.qo = add nsw i32 %i.qm, 1
  store i32 %i.qo, ptr %i.b, align 4, !tbaa !67
  %i.qp = sext i32 %i.qm to i64
  %i.qq = getelementptr inbounds i8, ptr %i.qn, i64 %i.qp
  store i8 %i.pz, ptr %i.qq, align 1, !tbaa !63
  %i.qr = trunc i64 %.0110 to i8
  %i.qs = load i32, ptr %i.b, align 4, !tbaa !67  ; 7 uses
  %i.qt = load i32, ptr %0, align 8, !tbaa !66
  %i.qu = icmp eq i32 %i.qs, %i.qt
  br i1 %i.qu, label %bb.al, label %Vec_StrPush.exit145.Vec_StrPush.exit153_crit_edge

Vec_StrPush.exit145.Vec_StrPush.exit153_crit_edge: ; preds = %Vec_StrPush.exit145
  %.pre416 = load ptr, ptr %i.y, align 8, !tbaa !62
  br label %Vec_StrPush.exit153

bb.al:                                            ; preds = %Vec_StrPush.exit145
  %i.qv = icmp slt i32 %i.qs, 16
  br i1 %i.qv, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.qw = load ptr, ptr %i.y, align 8, !tbaa !62  ; 2 uses
  %.not9.i.i151 = icmp eq ptr %i.qw, null
  br i1 %.not9.i.i151, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.qx = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.qw, i64 noundef 16) #30
  br label %Vec_StrGrow.exit11.sink.split.i149

bb.ao:                                            ; preds = %bb.am
  %i.qy = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  br label %Vec_StrGrow.exit11.sink.split.i149

bb.ap:                                            ; preds = %bb.al
  %i.qz = icmp samesign ult i32 %i.qs, 1073741823
  %i.ra = shl nuw nsw i32 %i.qs, 1
  %spec.select.i146 = select i1 %i.qz, i32 %i.ra, i32 2147483647 ; 4 uses
  %.not.i9.i147 = icmp samesign ult i32 %i.qs, %spec.select.i146
  %.pre417 = load ptr, ptr %i.y, align 8, !tbaa !62 ; 3 uses
  br i1 %.not.i9.i147, label %bb.aq, label %Vec_StrPush.exit153

bb.aq:                                            ; preds = %bb.ap
  %.not9.i10.i148 = icmp eq ptr %.pre417, null
  %i.rb = zext nneg i32 %spec.select.i146 to i64  ; 2 uses
  br i1 %.not9.i10.i148, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.rc = tail call ptr @realloc(ptr noundef nonnull %.pre417, i64 noundef %i.rb) #30
  br label %Vec_StrGrow.exit11.sink.split.i149

bb.as:                                            ; preds = %bb.aq
  %i.rd = tail call noalias ptr @malloc(i64 noundef %i.rb) #31
  br label %Vec_StrGrow.exit11.sink.split.i149

Vec_StrGrow.exit11.sink.split.i149:               ; preds = %bb.ar, %bb.as, %bb.an, %bb.ao
  %storemerge296 = phi ptr [ %i.qy, %bb.ao ], [ %i.qx, %bb.an ], [ %i.rc, %bb.ar ], [ %i.rd, %bb.as ] ; 2 uses
  %spec.select.sink.i150 = phi i32 [ 16, %bb.ao ], [ 16, %bb.an ], [ %spec.select.i146, %bb.ar ], [ %spec.select.i146, %bb.as ]
  store ptr %storemerge296, ptr %i.y, align 8, !tbaa !62
  store i32 %spec.select.sink.i150, ptr %0, align 8, !tbaa !66
  %.pre418 = load i32, ptr %i.b, align 4, !tbaa !67
  br label %Vec_StrPush.exit153

Vec_StrPush.exit153:                              ; preds = %Vec_StrPush.exit145.Vec_StrPush.exit153_crit_edge, %bb.ap, %Vec_StrGrow.exit11.sink.split.i149
  %i.re = phi i32 [ %i.qs, %Vec_StrPush.exit145.Vec_StrPush.exit153_crit_edge ], [ %i.qs, %bb.ap ], [ %.pre418, %Vec_StrGrow.exit11.sink.split.i149 ] ; 2 uses
  %i.rf = phi ptr [ %.pre416, %Vec_StrPush.exit145.Vec_StrPush.exit153_crit_edge ], [ %.pre417, %bb.ap ], [ %storemerge296, %Vec_StrGrow.exit11.sink.split.i149 ]
  %i.rg = add nsw i32 %i.re, 1
  store i32 %i.rg, ptr %i.b, align 4, !tbaa !67
  %i.rh = sext i32 %i.re to i64
  %i.ri = getelementptr inbounds i8, ptr %i.rf, i64 %i.rh
  store i8 %i.qr, ptr %i.ri, align 1, !tbaa !63
  br label %bb.gi

bb.at:                                            ; preds = %bb.a
  %i.rj = icmp sgt i64 %i.d, -1
  br i1 %i.rj, label %bb.au, label %bb.dy

bb.au:                                            ; preds = %bb.at
  %i.rk = load i32, ptr %i.b, align 4, !tbaa !67  ; 7 uses
  %i.rl = load i32, ptr %0, align 8, !tbaa !66
  %i.rm = icmp eq i32 %i.rk, %i.rl
  br i1 %i.rm, label %bb.av, label %Vec_StrPush.exit161

bb.av:                                            ; preds = %bb.au
  %i.rn = icmp slt i32 %i.rk, 16
  br i1 %i.rn, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  %i.ro = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !62 ; 2 uses
  %.not9.i.i159 = icmp eq ptr %i.rp, null
  br i1 %.not9.i.i159, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.rq = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.rp, i64 noundef 16) #30
  br label %Vec_StrGrow.exit.i160

bb.ay:                                            ; preds = %bb.aw
  %i.rr = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  br label %Vec_StrGrow.exit.i160

Vec_StrGrow.exit.i160:                            ; preds = %bb.ay, %bb.ax
  %i.rs = phi ptr [ %i.rq, %bb.ax ], [ %i.rr, %bb.ay ]
  store ptr %i.rs, ptr %i.ro, align 8, !tbaa !62
  br label %Vec_StrGrow.exit11.sink.split.i157

bb.az:                                            ; preds = %bb.av
  %i.rt = icmp samesign ult i32 %i.rk, 1073741823
  %i.ru = shl nuw nsw i32 %i.rk, 1
  %spec.select.i154 = select i1 %i.rt, i32 %i.ru, i32 2147483647 ; 3 uses
  %.not.i9.i155 = icmp samesign ult i32 %i.rk, %spec.select.i154
  br i1 %.not.i9.i155, label %bb.ba, label %Vec_StrPush.exit161

bb.ba:                                            ; preds = %bb.az
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !62 ; 2 uses
  %.not9.i10.i156 = icmp eq ptr %i.rw, null
  %i.rx = zext nneg i32 %spec.select.i154 to i64  ; 2 uses
  br i1 %.not9.i10.i156, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ry = tail call ptr @realloc(ptr noundef nonnull %i.rw, i64 noundef %i.rx) #30
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.rz = tail call noalias ptr @malloc(i64 noundef %i.rx) #31
  br label %bb.bd

end_hunk_0
begin_hunk_1_@Abc_TtDeriveBiDecOne:bb.a
  %gep.i.us.us.us.us.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us.us.us.us.i, i64 %indvars.iv.next.i.us.us.us.us.i ; 2 uses
  %i.ga = load i64, ptr %gep.i.us.us.us.us.i.1, align 8, !tbaa !110
  %gep81.i.us.us.us.us.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us.us.us.us.i, i64 %indvars.iv.next.i.us.us.us.us.i ; 2 uses
  %i.gb = load i64, ptr %gep81.i.us.us.us.us.i.1, align 8, !tbaa !110
  store i64 %i.gb, ptr %gep.i.us.us.us.us.i.1, align 8, !tbaa !110
  store i64 %i.ga, ptr %gep81.i.us.us.us.us.i.1, align 8, !tbaa !110
  %indvars.iv.next.i.us.us.us.us.i.1 = add nuw nsw i64 %indvars.iv.i.us.us.us.us.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.us.us.us.us.i.loopexit.unr-lcssa, label %scalar.ph130, !llvm.loop !500

._crit_edge.us.i.us.us.us.us.i.loopexit.unr-lcssa: ; preds = %scalar.ph130
  br i1 %lcmp.mod.not, label %._crit_edge.us.i.us.us.us.us.i, label %scalar.ph130.epil.preheader

scalar.ph130.epil.preheader:                      ; preds = %._crit_edge.us.i.us.us.us.us.i.loopexit.unr-lcssa, %scalar.ph130.preheader
  %indvars.iv.i.us.us.us.us.i.epil.init = phi i64 [ 0, %scalar.ph130.preheader ], [ %indvars.iv.next.i.us.us.us.us.i.1, %._crit_edge.us.i.us.us.us.us.i.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod150)
  %gep.i.us.us.us.us.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us.us.us.us.i, i64 %indvars.iv.i.us.us.us.us.i.epil.init ; 2 uses
  %i.gc = load i64, ptr %gep.i.us.us.us.us.i.epil, align 8, !tbaa !110
  %gep81.i.us.us.us.us.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us.us.us.us.i, i64 %indvars.iv.i.us.us.us.us.i.epil.init ; 2 uses
  %i.gd = load i64, ptr %gep81.i.us.us.us.us.i.epil, align 8, !tbaa !110
  store i64 %i.gd, ptr %gep.i.us.us.us.us.i.epil, align 8, !tbaa !110
  store i64 %i.gc, ptr %gep81.i.us.us.us.us.i.epil, align 8, !tbaa !110
  br label %._crit_edge.us.i.us.us.us.us.i

._crit_edge.us.i.us.us.us.us.i:                   ; preds = %vector.body134, %scalar.ph130.epil.preheader, %._crit_edge.us.i.us.us.us.us.i.loopexit.unr-lcssa
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i.us.us.us.us.i, i64 %i.ex ; 2 uses
  %i.gf = icmp ult ptr %i.ge, %i.ej
  br i1 %i.gf, label %.preheader.us.i.us.us.us.us.i, label %Abc_TtSwapAdjacent.exit.us.us.us.us.i, !llvm.loop !501

.lr.ph.i.us.us.us.us.i:                           ; preds = %bb.g, %.lr.ph.i.us.us.us.us.i
  %.05462.i.us.us.us.us.i = phi ptr [ %i.gj, %.lr.ph.i.us.us.us.us.i ], [ %i.c, %bb.g ] ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.05462.i.us.us.us.us.i, i64 4 ; 2 uses
  %i.gh = load <2 x i32>, ptr %i.gg, align 4, !tbaa !19
  %i.gi = shufflevector <2 x i32> %i.gh, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.gi, ptr %i.gg, align 4, !tbaa !19
  %i.gj = getelementptr inbounds nuw i8, ptr %.05462.i.us.us.us.us.i, i64 16 ; 2 uses
  %i.gk = icmp ult ptr %i.gj, %i.ej
  br i1 %i.gk, label %.lr.ph.i.us.us.us.us.i, label %Abc_TtSwapAdjacent.exit.us.us.us.us.i, !llvm.loop !502

.lr.ph64.i.us.us.us.us.i:                         ; preds = %.lr.ph.us.us.i
  %i.gl = trunc nsw i64 %indvars.iv.next104.i to i32
  %i.gm = shl nuw nsw i32 1, %i.gl
  %i.gn = getelementptr inbounds [24 x i8], ptr @s_PMasks, i64 %indvars.iv.next104.i ; 3 uses
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !110 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !110 ; 2 uses
  %i.gr = zext nneg i32 %i.gm to i64              ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !110 ; 2 uses
  br i1 %min.iters.check105, label %scalar.ph104.preheader, label %vector.ph106

vector.ph106:                                     ; preds = %.lr.ph64.i.us.us.us.us.i
  %broadcast.splatinsert108 = insertelement <2 x i64> poison, i64 %i.go, i64 0
  %broadcast.splat109 = shufflevector <2 x i64> %broadcast.splatinsert108, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert110 = insertelement <2 x i64> poison, i64 %i.gq, i64 0
  %broadcast.splat111 = shufflevector <2 x i64> %broadcast.splatinsert110, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert112 = insertelement <2 x i64> poison, i64 %i.gr, i64 0
  %broadcast.splat113 = shufflevector <2 x i64> %broadcast.splatinsert112, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert114 = insertelement <2 x i64> poison, i64 %i.gt, i64 0
  %broadcast.splat115 = shufflevector <2 x i64> %broadcast.splatinsert114, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body116

vector.body116:                                   ; preds = %vector.body116, %vector.ph106
  %index117 = phi i64 [ 0, %vector.ph106 ], [ %index.next120, %vector.body116 ] ; 2 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index117 ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16 ; 2 uses
  %wide.load118 = load <2 x i64>, ptr %i.gu, align 16, !tbaa !110 ; 3 uses
  %wide.load119 = load <2 x i64>, ptr %i.gv, align 16, !tbaa !110 ; 3 uses
  %i.gw = and <2 x i64> %wide.load118, %broadcast.splat109
  %i.gx = and <2 x i64> %wide.load119, %broadcast.splat109
  %i.gy = and <2 x i64> %wide.load118, %broadcast.splat111
  %i.gz = and <2 x i64> %wide.load119, %broadcast.splat111
  %i.ha = shl <2 x i64> %i.gy, %broadcast.splat113
  %i.hb = shl <2 x i64> %i.gz, %broadcast.splat113
  %i.hc = or <2 x i64> %i.ha, %i.gw
  %i.hd = or <2 x i64> %i.hb, %i.gx
  %i.he = and <2 x i64> %wide.load118, %broadcast.splat115
  %i.hf = and <2 x i64> %wide.load119, %broadcast.splat115
  %i.hg = lshr <2 x i64> %i.he, %broadcast.splat113
  %i.hh = lshr <2 x i64> %i.hf, %broadcast.splat113
  %i.hi = or <2 x i64> %i.hc, %i.hg
  %i.hj = or <2 x i64> %i.hd, %i.hh
  store <2 x i64> %i.hi, ptr %i.gu, align 16, !tbaa !110
  store <2 x i64> %i.hj, ptr %i.gv, align 16, !tbaa !110
  %index.next120 = add nuw i64 %index117, 4       ; 2 uses
  %i.hk = icmp eq i64 %index.next120, %n.vec107
  br i1 %i.hk, label %middle.block121, label %vector.body116, !llvm.loop !503

middle.block121:                                  ; preds = %vector.body116
  br i1 %cmp.n122, label %Abc_TtSwapAdjacent.exit.us.us.us.us.i, label %scalar.ph104.preheader

scalar.ph104.preheader:                           ; preds = %.lr.ph64.i.us.us.us.us.i, %middle.block121
  %indvars.iv70.i.us.us.us.us.i.ph = phi i64 [ 0, %.lr.ph64.i.us.us.us.us.i ], [ %n.vec107, %middle.block121 ]
  br label %scalar.ph104

scalar.ph104:                                     ; preds = %scalar.ph104.preheader, %scalar.ph104
  %indvars.iv70.i.us.us.us.us.i = phi i64 [ %indvars.iv.next71.i.us.us.us.us.i, %scalar.ph104 ], [ %indvars.iv70.i.us.us.us.us.i.ph, %scalar.ph104.preheader ] ; 2 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv70.i.us.us.us.us.i ; 2 uses
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !110 ; 3 uses
  %i.hn = and i64 %i.hm, %i.go
  %i.ho = and i64 %i.hm, %i.gq
  %i.hp = shl i64 %i.ho, %i.gr
  %i.hq = or i64 %i.hp, %i.hn
  %i.hr = and i64 %i.hm, %i.gt
  %i.hs = lshr i64 %i.hr, %i.gr
  %i.ht = or i64 %i.hq, %i.hs
  store i64 %i.ht, ptr %i.hl, align 8, !tbaa !110
  %indvars.iv.next71.i.us.us.us.us.i = add nuw nsw i64 %indvars.iv70.i.us.us.us.us.i, 1 ; 2 uses
  %exitcond74.not.i.us.us.us.us.i = icmp eq i64 %indvars.iv.next71.i.us.us.us.us.i, %wide.trip.count73.i.i
  br i1 %exitcond74.not.i.us.us.us.us.i, label %Abc_TtSwapAdjacent.exit.us.us.us.us.i, label %scalar.ph104, !llvm.loop !504

Abc_TtSwapAdjacent.exit.us.us.us.us.i:            ; preds = %._crit_edge.us.i.us.us.us.us.i, %.lr.ph.i.us.us.us.us.i, %scalar.ph104, %middle.block121, %.preheader.lr.ph.i.us.us.us.us.i
  %.not15.not.us.us.us.us.i = icmp sgt i64 %indvars.iv.next104.i, %i.en
  br i1 %.not15.not.us.us.us.us.i, label %.lr.ph.us.us.i, label %._crit_edge.split.us.us.split.us.us.i, !llvm.loop !505

._crit_edge.split.us.us.split.us.us.i:            ; preds = %Abc_TtSwapAdjacent.exit.us.us.us.us.i, %.preheader.us.us.i
  %i.hu = add nsw i32 %.056.us.us.i, 1
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.split.us.us.split.us.us.i, %.lr.ph61.split.us.split.us.i
  %.1.us.us.i = phi i32 [ %i.hu, %._crit_edge.split.us.us.split.us.us.i ], [ %.056.us.us.i, %.lr.ph61.split.us.split.us.i ]
  %indvars.iv.next102.i = add nuw nsw i64 %indvars.iv101.i, 1 ; 2 uses
  %exitcond108.not.i = icmp eq i64 %indvars.iv.next102.i, %wide.trip.count107.i
  br i1 %exitcond108.not.i, label %Abc_TtShrink.exit, label %.lr.ph61.split.us.split.us.i, !llvm.loop !506

Abc_TtShrink.exit:                                ; preds = %bb.h, %Abc_TtCopy.exit, %.lr.ph61.i
  %i.hv = call range(i32 0, 17) i32 @llvm.ctpop.i32(i32 range(i32 0, 65536) %2) ; 5 uses
  %i.hw = load i64, ptr %i.c, align 16, !tbaa !110 ; 7 uses
  %i.hx = icmp eq i32 %2, 0
  %i.hy = trunc i64 %i.hw to i1
  %i.hz = select i1 %i.hy, i64 3, i64 0
  %i.ia = icmp samesign ult i32 %i.hv, 2
  %i.ib = and i64 %i.hw, 3
  %i.ic = select i1 %i.hx, i64 %i.hz, i64 %i.ib
  %i.id = mul nuw nsw i64 %i.ic, 5
  %.126.i = select i1 %i.ia, i64 %i.id, i64 %i.hw
  %i.ie = icmp samesign ult i32 %i.hv, 3
  %i.if = and i64 %.126.i, 15
  %i.ig = mul nuw nsw i64 %i.if, 17
  %.227.i = select i1 %i.ie, i64 %i.ig, i64 %i.hw
  %i.ih = icmp samesign ult i32 %i.hv, 4
  %i.ii = and i64 %.227.i, 255
  %i.ij = mul nuw nsw i64 %i.ii, 257
  %.328.i = select i1 %i.ih, i64 %i.ij, i64 %i.hw
  %i.ik = icmp samesign ult i32 %i.hv, 5
  %i.il = and i64 %.328.i, 65535
  %i.im = mul nuw nsw i64 %i.il, 65537
  %.429.i = select i1 %i.ik, i64 %i.im, i64 %i.hw
  %i.in = icmp samesign ult i32 %i.hv, 6
  %i.io = and i64 %.429.i, 4294967295
  %i.ip = mul nuw i64 %i.io, 4294967297
  %.5.i = select i1 %i.in, i64 %i.ip, i64 %i.hw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  ret i64 %.5.i
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #24

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #24

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #24

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v2i64(<2 x i64>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.or.v14i16(<14 x i16>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.or.v6i16(<6 x i16>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #24

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn }
attributes #20 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nofree nounwind }
attributes #26 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { nounwind allocsize(0,1) }
attributes #29 = { nounwind }
attributes #30 = { nounwind allocsize(1) }
attributes #31 = { nounwind allocsize(0) }
attributes #32 = { nounwind willreturn memory(read) }
attributes #33 = { cold noreturn nounwind }

!llvm.module.flags = !{!11, !12}
!llvm.ident = !{!13}
!llvm.errno.tbaa = !{!18}

!0 = distinct !{!0, !52}
!1 = distinct !{!1, !52}
!2 = distinct !{!2, !52}
!3 = distinct !{!3, !52}
!4 = distinct !{!4, !52}
!5 = distinct !{!5, !52}
!6 = distinct !{!6, !52}
!7 = distinct !{!7, !52}
!8 = distinct !{!8, !52}
!9 = distinct !{!9, !52}
!10 = distinct !{!10, !52}
!11 = !{i32 8, !"PIC Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 2}
!13 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!14 = !{!"Simple C/C++ TBAA"}
!15 = !{!"omnipotent char", !14, i64 0}
!16 = !{!"int", !15, i64 0}
!17 = !{!"__libc_errno", !16, i64 0}
!18 = !{!17, !16, i64 0}
!19 = !{!16, !16, i64 0}
!20 = !{!"float", !15, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"any pointer", !15, i64 0}
!23 = !{!"p1 omnipotent char", !22, i64 0}
!24 = !{!"p1 _ZTS12If_LibLut_t_", !22, i64 0}
!25 = !{!"p1 _ZTS13If_LibCell_t_", !22, i64 0}
!26 = !{!"p1 float", !22, i64 0}
!27 = !{!"If_Par_t_", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20, !20, i64 24, !20, i64 28, !16, i64 32, !16, i64 36, !16, i64 40, !16, i64 44, !16, i64 48, !16, i64 52, !16, i64 56, !16, i64 60, !16, i64 64, !16, i64 68, !16, i64 72, !16, i64 76, !16, i64 80, !16, i64 84, !16, i64 88, !16, i64 92, !16, i64 96, !16, i64 100, !16, i64 104, !16, i64 108, !16, i64 112, !16, i64 116, !16, i64 120, !16, i64 124, !16, i64 128, !16, i64 132, !16, i64 136, !16, i64 140, !16, i64 144, !16, i64 148, !16, i64 152, !16, i64 156, !16, i64 160, !16, i64 164, !16, i64 168, !16, i64 172, !16, i64 176, !16, i64 180, !16, i64 184, !16, i64 188, !16, i64 192, !16, i64 196, !16, i64 200, !16, i64 204, !23, i64 208, !16, i64 216, !20, i64 220, !16, i64 224, !16, i64 228, !16, i64 232, !16, i64 236, !16, i64 240, !16, i64 244, !16, i64 248, !16, i64 252, !16, i64 256, !16, i64 260, !16, i64 264, !16, i64 268, !16, i64 272, !16, i64 276, !20, i64 280, !20, i64 284, !20, i64 288, !24, i64 296, !25, i64 304, !26, i64 312, !26, i64 320, !22, i64 328, !22, i64 336, !22, i64 344, !22, i64 352, !22, i64 360, !22, i64 368}
!28 = !{!27, !16, i64 64}
!29 = !{!27, !16, i64 84}
!30 = !{!27, !23, i64 208}
!31 = !{!"p1 _ZTS10Gia_Obj_t_", !22, i64 0}
!32 = !{!"p1 int", !22, i64 0}
!33 = !{!"p1 _ZTS10Vec_Int_t_", !22, i64 0}
!34 = !{!"Vec_Int_t_", !16, i64 0, !16, i64 4, !32, i64 8}
!35 = !{!"p1 _ZTS10Gia_Rpr_t_", !22, i64 0}
!36 = !{!"p1 _ZTS10Vec_Wec_t_", !22, i64 0}
!37 = !{!"p1 _ZTS10Vec_Str_t_", !22, i64 0}
!38 = !{!"p1 _ZTS10Abc_Cex_t_", !22, i64 0}
!39 = !{!"p1 _ZTS10Vec_Ptr_t_", !22, i64 0}
!40 = !{!"p1 _ZTS10Gia_Plc_t_", !22, i64 0}
!41 = !{!"p1 _ZTS10Gia_Man_t_", !22, i64 0}
!42 = !{!"p1 _ZTS10Vec_Flt_t_", !22, i64 0}
!43 = !{!"p1 _ZTS10Vec_Vec_t_", !22, i64 0}
!44 = !{!"long", !15, i64 0}
!45 = !{!"p1 _ZTS10Vec_Wrd_t_", !22, i64 0}
!46 = !{!"p1 _ZTS10Vec_Bit_t_", !22, i64 0}
!47 = !{!"p1 _ZTS10Gia_Dat_t_", !22, i64 0}
!48 = !{!"Gia_Man_t_", !23, i64 0, !23, i64 8, !16, i64 16, !16, i64 20, !16, i64 24, !16, i64 28, !31, i64 32, !32, i64 40, !16, i64 48, !16, i64 52, !16, i64 56, !33, i64 64, !33, i64 72, !34, i64 80, !34, i64 96, !16, i64 112, !16, i64 116, !16, i64 120, !34, i64 128, !32, i64 144, !32, i64 152, !33, i64 160, !16, i64 168, !16, i64 172, !16, i64 176, !16, i64 180, !32, i64 184, !35, i64 192, !32, i64 200, !32, i64 208, !32, i64 216, !16, i64 224, !16, i64 228, !32, i64 232, !16, i64 240, !33, i64 248, !33, i64 256, !33, i64 264, !36, i64 272, !36, i64 280, !33, i64 288, !22, i64 296, !33, i64 304, !33, i64 312, !37, i64 320, !23, i64 328, !33, i64 336, !33, i64 344, !33, i64 352, !33, i64 360, !33, i64 368, !38, i64 376, !38, i64 384, !39, i64 392, !34, i64 400, !34, i64 416, !33, i64 432, !33, i64 440, !33, i64 448, !33, i64 456, !33, i64 464, !33, i64 472, !33, i64 480, !33, i64 488, !33, i64 496, !33, i64 504, !33, i64 512, !23, i64 520, !40, i64 528, !41, i64 536, !42, i64 544, !42, i64 552, !33, i64 560, !33, i64 568, !33, i64 576, !33, i64 584, !33, i64 592, !16, i64 600, !20, i64 604, !20, i64 608, !33, i64 616, !32, i64 624, !16, i64 632, !39, i64 640, !39, i64 648, !39, i64 656, !33, i64 664, !33, i64 672, !33, i64 680, !33, i64 688, !33, i64 696, !33, i64 704, !33, i64 712, !33, i64 720, !33, i64 728, !43, i64 736, !42, i64 744, !22, i64 752, !22, i64 760, !22, i64 768, !44, i64 776, !44, i64 784, !22, i64 792, !32, i64 800, !16, i64 808, !16, i64 812, !16, i64 816, !16, i64 820, !16, i64 824, !16, i64 828, !16, i64 832, !16, i64 836, !16, i64 840, !16, i64 844, !16, i64 848, !16, i64 852, !45, i64 856, !45, i64 864, !45, i64 872, !45, i64 880, !33, i64 888, !33, i64 896, !33, i64 904, !46, i64 912, !16, i64 920, !16, i64 924, !16, i64 928, !33, i64 936, !16, i64 944, !16, i64 948, !33, i64 952, !33, i64 960, !39, i64 968, !45, i64 976, !33, i64 984, !33, i64 992, !16, i64 1000, !16, i64 1004, !45, i64 1008, !34, i64 1016, !34, i64 1032, !34, i64 1048, !47, i64 1064, !37, i64 1072, !37, i64 1080, !16, i64 1088, !16, i64 1092, !16, i64 1096, !16, i64 1100, !37, i64 1104, !33, i64 1112, !33, i64 1120, !33, i64 1128, !39, i64 1136}
!49 = !{!48, !16, i64 24}
!50 = !{!48, !33, i64 264}
!51 = !{!34, !32, i64 8}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.isvectorized", i32 1}
!54 = !{!"llvm.loop.unroll.runtime.disable"}
!55 = !{!48, !33, i64 72}
!56 = !{!34, !16, i64 4}
!57 = !{!48, !31, i64 32}
!58 = !{!"llvm.loop.unroll.disable"}
!59 = !{!48, !22, i64 752}
!60 = !{!31, !31, i64 0}
!61 = !{!"Vec_Str_t_", !16, i64 0, !16, i64 4, !23, i64 8}
!62 = !{!61, !23, i64 8}
!63 = !{!15, !15, i64 0}
!64 = !{!34, !16, i64 0}
!65 = !{!48, !33, i64 64}
!66 = !{!61, !16, i64 0}
!67 = !{!61, !16, i64 4}
!68 = !{!48, !16, i64 176}
!69 = !{!48, !32, i64 624}
!70 = !{!48, !23, i64 0}
!71 = !{!48, !16, i64 16}
!72 = !{!"p1 _ZTS8_IO_FILE", !22, i64 0}
!73 = !{!72, !72, i64 0}
!74 = !{!48, !33, i64 304}
!75 = !{!48, !33, i64 160}
!76 = !{!48, !32, i64 208}
!77 = !{!"p1 _ZTS9If_Obj_t_", !22, i64 0}
!78 = !{!"p1 _ZTS9If_Set_t_", !22, i64 0}
!79 = !{!"If_Cut_t_", !20, i64 0, !20, i64 4, !20, i64 8, !20, i64 12, !44, i64 16, !16, i64 24, !16, i64 28, !16, i64 32, !16, i64 36, !16, i64 37, !16, i64 37, !16, i64 37, !16, i64 37, !16, i64 38, !16, i64 39, !16, i64 40, !15, i64 44}
!80 = !{!"If_Obj_t_", !16, i64 0, !16, i64 0, !16, i64 0, !16, i64 0, !16, i64 0, !16, i64 1, !16, i64 1, !16, i64 1, !16, i64 1, !16, i64 1, !16, i64 1, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20, !77, i64 24, !77, i64 32, !77, i64 40, !20, i64 48, !20, i64 52, !20, i64 56, !15, i64 64, !78, i64 72, !79, i64 80}
!81 = !{!80, !77, i64 24}
!82 = !{!80, !77, i64 32}
!83 = !{!80, !77, i64 40}
!84 = !{!"p1 _ZTS9If_Par_t_", !22, i64 0}
!85 = !{!"p1 long", !22, i64 0}
!86 = !{!"p1 _ZTS12Mem_Fixed_t_", !22, i64 0}
!87 = !{!"p1 _ZTS12If_DsdMan_t_", !22, i64 0}
!88 = !{!"p1 _ZTS14Hash_IntMan_t_", !22, i64 0}
!89 = !{!"p1 _ZTS10Vec_Mem_t_", !22, i64 0}
!90 = !{!"p1 _ZTS9If_Cut_t_", !22, i64 0}
!91 = !{!"p1 _ZTS10Tim_Man_t_", !22, i64 0}
!92 = !{!"If_Man_t_", !23, i64 0, !84, i64 8, !77, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !15, i64 64, !16, i64 84, !20, i64 88, !20, i64 92, !20, i64 96, !20, i64 100, !16, i64 104, !20, i64 108, !16, i64 112, !16, i64 116, !15, i64 120, !85, i64 152, !16, i64 160, !16, i64 164, !16, i64 168, !33, i64 176, !15, i64 184, !16, i64 568, !16, i64 572, !16, i64 576, !33, i64 584, !33, i64 592, !45, i64 600, !45, i64 608, !45, i64 616, !39, i64 624, !33, i64 632, !16, i64 640, !16, i64 644, !16, i64 648, !15, i64 652, !16, i64 716, !16, i64 720, !16, i64 724, !16, i64 728, !86, i64 736, !86, i64 744, !78, i64 752, !78, i64 760, !78, i64 768, !16, i64 776, !16, i64 780, !15, i64 784, !15, i64 912, !16, i64 1040, !16, i64 1044, !16, i64 1048, !16, i64 1052, !87, i64 1056, !15, i64 1064, !15, i64 1192, !15, i64 1320, !15, i64 1448, !15, i64 1576, !15, i64 1704, !15, i64 1832, !88, i64 1960, !33, i64 1968, !37, i64 1976, !89, i64 1984, !15, i64 1992, !16, i64 2024, !16, i64 2028, !16, i64 2032, !15, i64 2040, !15, i64 2088, !15, i64 2096, !33, i64 2104, !15, i64 2112, !39, i64 2176, !22, i64 2184, !33, i64 2192, !15, i64 2200, !37, i64 2264, !33, i64 2272, !33, i64 2280, !33, i64 2288, !77, i64 2296, !90, i64 2304, !16, i64 2312, !15, i64 2316, !15, i64 2444, !20, i64 2572, !16, i64 2576, !91, i64 2584, !33, i64 2592, !15, i64 2600, !15, i64 2608, !15, i64 2616, !86, i64 2632}
!93 = !{!92, !39, i64 40}
!94 = !{!"any p2 pointer", !22, i64 0}
!95 = !{!"Vec_Ptr_t_", !16, i64 0, !16, i64 4, !94, i64 8}
!96 = !{!95, !16, i64 4}
!97 = !{!92, !39, i64 32}
!98 = !{!95, !94, i64 8}
!99 = !{!22, !22, i64 0}
!100 = !{!92, !23, i64 0}
!101 = !{!80, !16, i64 4}
!102 = !{!"Gia_Obj_t_", !16, i64 0, !16, i64 3, !16, i64 3, !16, i64 3, !16, i64 4, !16, i64 7, !16, i64 7, !16, i64 7, !16, i64 8}
!103 = !{!102, !16, i64 8}
!104 = !{!48, !32, i64 232}
!105 = !{!80, !16, i64 12}
!106 = !{!92, !84, i64 8}
!107 = !{!27, !16, i64 88}
!108 = !{!27, !16, i64 100}
!109 = !{!27, !16, i64 104}
!110 = !{!44, !44, i64 0}
!111 = !{!85, !85, i64 0}
!112 = !{!92, !85, i64 152}
!113 = !{!89, !89, i64 0}
!114 = !{!79, !16, i64 24}
!115 = !{!"p2 long", !94, i64 0}
!116 = !{!"Vec_Mem_t_", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20, !115, i64 24, !33, i64 32, !33, i64 40}
!117 = !{!116, !115, i64 24}
!118 = !{!116, !16, i64 8}
!119 = !{!116, !16, i64 0}
!120 = !{!116, !16, i64 12}
!121 = !{!27, !16, i64 48}
!122 = !{!27, !16, i64 92}
!123 = !{!79, !16, i64 28}
!124 = !{!92, !87, i64 1056}
!125 = !{!33, !33, i64 0}
!126 = !{!37, !37, i64 0}
!127 = !{!27, !16, i64 204}
!128 = !{!27, !16, i64 176}
!129 = !{!27, !16, i64 128}
!130 = !{!27, !16, i64 164}
!131 = !{!27, !16, i64 108}
!132 = !{!27, !16, i64 148}
!133 = !{!27, !16, i64 0}
!134 = !{!27, !16, i64 232}
!135 = !{!27, !22, i64 352}
!136 = !{!79, !20, i64 12}
!137 = !{!48, !33, i64 312}
!138 = !{!48, !23, i64 328}
!139 = !{!48, !37, i64 320}
!140 = !{!48, !33, i64 560}
!141 = !{!48, !33, i64 568}
!142 = !{!48, !33, i64 576}
!143 = !{!48, !33, i64 584}
!144 = !{!48, !16, i64 600}
!145 = !{!48, !23, i64 8}
!146 = !{!27, !16, i64 4}
!147 = !{!27, !16, i64 32}
!148 = !{!27, !16, i64 200}
!149 = !{!27, !16, i64 52}
!150 = !{!27, !16, i64 60}
!151 = !{!27, !16, i64 76}
!152 = !{!27, !16, i64 256}
end_hunk_1
