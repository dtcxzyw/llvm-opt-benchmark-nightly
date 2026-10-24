Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.13?download=true
inline.NumInlined: 5550
inline.NumDeleted: 2375
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 14
begin_hunk_0_@"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$3run17h5782118c382379ddE":bb.a
  %i.bv = alloca [4 x i8], align 4                ; 4 uses
  %i.bw = alloca [40 x i8], align 8               ; 9 uses
  %i.bx = alloca [16 x i8], align 8               ; 5 uses
  %i.by = alloca [48 x i8], align 8               ; 8 uses
  %i.bz = alloca [24 x i8], align 8               ; 7 uses
  %i.ca = alloca [8 x i8], align 8                ; 5 uses
  %i.cb = alloca [24 x i8], align 8               ; 7 uses
  %i.cc = alloca [24 x i8], align 8               ; 11 uses
  %i.cd = alloca [24 x i8], align 8               ; 10 uses
  %i.ce = alloca [24 x i8], align 8               ; 11 uses
  %i.cf = alloca [24 x i8], align 8               ; 10 uses
  %i.cg = alloca [24 x i8], align 8               ; 11 uses
  %i.ch = alloca [24 x i8], align 8               ; 10 uses
  %i.ci = alloca [16 x i8], align 8               ; 5 uses
  %i.cj = alloca [48 x i8], align 8               ; 8 uses
  %i.ck = alloca [8 x i8], align 8                ; 5 uses
  %i.cl = alloca [72 x i8], align 8               ; 14 uses
  %i.cm = alloca [24 x i8], align 8               ; 7 uses
  %i.cn = alloca [16 x i8], align 8               ; 5 uses
  %i.co = alloca [24 x i8], align 8               ; 4 uses
  %i.cp = alloca [24 x i8], align 8               ; 9 uses
  %i.cq = alloca [16 x i8], align 8               ; 5 uses
  %i.cr = alloca [24 x i8], align 8               ; 4 uses
  %i.cs = alloca [24 x i8], align 8               ; 9 uses
  %i.ct = alloca [16 x i8], align 8               ; 7 uses
  %i.cu = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.10461.i = alloca [7 x i8], align 1       ; 5 uses
  %i.cv = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.8.sroa.0.i = alloca [23 x i8], align 1   ; 7 uses
  %i.cw = alloca [32 x i8], align 8               ; 10 uses
  %i.cx = alloca [24 x i8], align 8               ; 7 uses
  %i.cy = alloca [16 x i8], align 8               ; 5 uses
  %i.cz = alloca [48 x i8], align 8               ; 8 uses
  %i.da = alloca [24 x i8], align 8               ; 12 uses
  %i.db = alloca [24 x i8], align 8               ; 11 uses
  %i.dc = alloca [1 x i8], align 1                ; 5 uses
  %i.dd = alloca [40 x i8], align 8               ; 9 uses
  %i.de = alloca [4 x i8], align 4                ; 4 uses
  %i.df = alloca [16 x i8], align 8               ; 5 uses
  %i.dg = alloca [48 x i8], align 8               ; 8 uses
  %i.dh = alloca [24 x i8], align 8               ; 5 uses
  %i.di = alloca [8 x i8], align 8                ; 5 uses
  %i.dj = alloca [24 x i8], align 8               ; 8 uses
  %i.dk = alloca [24 x i8], align 8               ; 7 uses
  %i.dl = alloca [24 x i8], align 8               ; 7 uses
  %i.dm = alloca [24 x i8], align 8               ; 7 uses
  %i.dn = alloca [24 x i8], align 8               ; 7 uses
  %i.do = alloca [24 x i8], align 8               ; 8 uses
  %i.dp = alloca [80 x i8], align 8               ; 12 uses
  %.sink737.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 4 uses
  %.sink737.i.sroa.gep403 = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 2
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %.sroa.9.sroa.13.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %.sroa.9.sroa.14.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 32 ; 4 uses
  %.sroa.16.sroa.5.0..sroa.16.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 56
  %.sroa.16.sroa.6.0..sroa.16.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 57
  %.sroa.16.sroa.7.0..sroa.16.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 64
  %.sroa.16.sroa.8.0..sroa.16.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 72
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 92 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 79 uses
  %.sroa.9.sroa.13.5..sroa_idx366 = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %.sroa.9.sroa.14.5..sroa_idx378 = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %.sroa.4398.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 1
  %.sroa.5399.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 2 uses
  %.sroa.7401.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %.sroa.8402.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %.sroa.6383.0..sroa_idx384 = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %.sroa.6385.0..sroa_idx386 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %.sroa.9.sroa.13.5..sroa_idx364 = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.sroa.9.sroa.14.5..sroa_idx376 = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %.sroa.9.sroa.13.5..sroa_idx360 = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %.sroa.9.sroa.14.5..sroa_idx372 = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %.sroa.9.sroa.13.5..sroa_idx358 = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %.sroa.9.sroa.14.5..sroa_idx370 = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %.sroa.9.sroa.13.5..sroa_idx356 = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %.sroa.9.sroa.14.5..sroa_idx368 = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %.sroa.9.sroa.13.5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %.sroa.9.sroa.14.5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 665 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 666 ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 5 uses
  %.sroa.454.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %.sroa.20.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 4 uses
  %.sroa.23.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 3 uses
  %.sroa.23.8..sroa_idx269 = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 3 uses
  %.sroa.23.8..sroa_idx271 = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 5 uses
  %.sroa.20.8..sroa_idx265 = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %.sroa.23.8..sroa_idx277 = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %.sroa.20.8..sroa_idx267 = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %.sroa.23.8..sroa_idx279 = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %.sroa.4518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  %.sroa.6494.0..sroa_idx495.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  %.sroa.5519.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  %.sroa.7521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %.sroa.8522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %.sroa.6496.0..sroa_idx497.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %.sroa.4152.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.es = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.et = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %.sroa.4148.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.ew = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.ex = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %.sroa.10485.0..sroa_idx486.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %.sroa.12488.0..sroa_idx489.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %.sroa.4140.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %.sroa.5141.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %.sroa.5141.sroa.4.0..sroa.5141.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %.sroa.5141.sroa.5.0..sroa.5141.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %.sroa.5141.sroa.6.0..sroa.5141.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  %.sroa.5141.sroa.7.0..sroa.5141.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  %.sroa.5141.sroa.8.0..sroa.5141.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 52
  %.sroa.5141.sroa.9.0..sroa.5141.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 56
  %.sroa.6142.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 64
  %.sroa.7143.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 65
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %.sroa.4138.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %.sroa.4472.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.sroa.5473.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %.sroa.6474.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %.sroa.7475.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.ez = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %.sroa.4134.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %.sroa.6.0..sroa_idx468.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %.sroa.7.0..sroa_idx469.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.fb = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %.sroa.37.56..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 1
  %.sroa.37287.56..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %.sroa.43.56..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 16 ; 2 uses
  %.sroa.4130.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.ff = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.fg = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %.sroa.10446.0..sroa_idx447.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %.sroa.12.0..sroa_idx449.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.fh = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %.sroa.542.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 24 ; 2 uses
  %.sroa.8.0..sroa_idx454.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  %.sroa.10461.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 1
  %.sroa.10462.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %.sroa.12464.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.fj = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 3 uses
  br label %"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$9start_tag17hdb4ae77c6515205fE.exit.thread406"

"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$9start_tag17hdb4ae77c6515205fE.exit.thread406": ; preds = %"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$9start_tag17hdb4ae77c6515205fE.exit.thread406.backedge", %bb.a
  invoke fastcc void @"_ZN97_$LT$pulldown_cmark..parse..Parser$LT$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd27219abf4458b75E"(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.dp, ptr noalias noundef align 8 dereferenceable(576) %0)
          to label %bb.b unwind label %bb.ot

.body:                                            ; preds = %bb.dt, %bb.ds, %.body257.i, %bb.pj, %bb.pi, %bb.ot, %bb.on, %bb.om, %bb.oc, %bb.ob, %bb.ns, %bb.nr, %bb.ni, %bb.nh, %bb.my, %bb.mx, %bb.kh, %.thread530.i, %bb.kg, %.thread527.i, %bb.ee, %bb.ef, %bb.ej, %bb.ek, %bb.eo, %.loopexit.split-lp.loopexit.split-lp, %bb.es, %bb.fi, %bb.fj, %bb.gn, %bb.go, %.body.i
  %.pn = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.ot ], [ %i.st, %bb.kh ], [ %i.yl, %bb.my ], [ %i.yz, %bb.ni ], [ %i.zo, %bb.ns ], [ %i.aad, %bb.oc ], [ %i.aau, %bb.on ], [ %lpad.thr_comm, %bb.pj ], [ %.pn182.i, %bb.ds ], [ %.pn184529.i, %bb.kg ], [ %lpad.thr_comm610.i, %bb.gn ], [ %eh.lpad-body.i, %.body.i ], [ %.pn182.i, %.body257.i ], [ %i.ma, %bb.fj ], [ %i.ma, %bb.eo ], [ %lpad.loopexit.split-lp2791, %.loopexit.split-lp.loopexit.split-lp ], [ %i.ln, %bb.ee ], [ %i.lw, %bb.ej ], [ %i.lo, %bb.ef ], [ %lpad.loopexit.split-lp2791, %bb.es ], [ %i.lx, %bb.ek ], [ %i.ma, %bb.fi ], [ %lpad.thr_comm610.i, %bb.go ], [ %.pn184529.i, %.thread527.i ], [ %lpad.thr_comm, %bb.pi ], [ %i.st, %.thread530.i ], [ %i.zo, %bb.nr ], [ %i.yl, %bb.mx ], [ %i.aau, %bb.om ], [ %i.yz, %bb.nh ], [ %i.aad, %bb.ob ], [ %.pn182.i, %bb.dt ]
  invoke fastcc void @"_ZN4core3ptr166drop_in_place$LT$pulldown_cmark..html..HtmlWriter$LT$pulldown_cmark..parse..Parser$C$pulldown_cmark_escape..FmtWriter$LT$$RF$mut$u20$alloc..string..String$GT$$GT$$GT$17h5681e774f547870eE"(ptr noalias noundef align 8 dereferenceable(672) %0) #40
          to label %bb.ps unwind label %bb.ng

bb.b:                                             ; preds = %"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$9start_tag17hdb4ae77c6515205fE.exit.thread406"
  %i.fl = load i8, ptr %i.dp, align 8, !range !25, !noundef !12 ; 4 uses
  %.not.not.not.not.not.not.not = icmp ne i8 %i.fl, 35 ; 59 uses
  br i1 %.not.not.not.not.not.not.not, label %bb.c, label %"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$7end_tag17h2bf8d1fd71370908E.exit"

bb.c:                                             ; preds = %bb.b
  %.sroa.6.0.copyload = load i8, ptr %.sroa.6.0..sroa_idx, align 1 ; 5 uses
  %.sroa.8.0.copyload = load i8, ptr %.sroa.8.0..sroa_idx, align 2 ; 2 uses
  %.sroa.9.sroa.5.0.copyload = load i64, ptr %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx, align 8 ; 24 uses
  %.sroa.9.sroa.13.0.copyload = load i64, ptr %.sroa.9.sroa.13.0..sroa.9.0..sroa_idx.sroa_idx, align 8 ; 26 uses
  %.sroa.9.sroa.14.0.copyload = load i64, ptr %.sroa.9.sroa.14.0..sroa.9.0..sroa_idx.sroa_idx, align 8 ; 90 uses
  %.sroa.16.sroa.5.0.copyload = load i8, ptr %.sroa.16.sroa.5.0..sroa.16.0..sroa_idx.sroa_idx, align 8 ; 7 uses
  %.sroa.16.sroa.7.0.copyload = load ptr, ptr %.sroa.16.sroa.7.0..sroa.16.0..sroa_idx.sroa_idx, align 8 ; 13 uses
  %.sroa.16.sroa.8.0.copyload = load i64, ptr %.sroa.16.sroa.8.0..sroa.16.0..sroa_idx.sroa_idx, align 8 ; 13 uses
  %i.fm = icmp samesign ugt i8 %i.fl, 22
  %i.fn = zext nneg i8 %i.fl to i64
  %i.fo = add nsw i64 %i.fn, -22
  %i.fp = select i1 %i.fm, i64 %i.fo, i64 0
  switch i64 %i.fp, label %bb.d [
    i64 0, label %bb.e
    i64 1, label %bb.kj
    i64 2, label %bb.mg
    i64 3, label %bb.mh
    i64 4, label %bb.mj
    i64 5, label %bb.ml
    i64 6, label %bb.ol
    i64 7, label %bb.ol
    i64 8, label %bb.mn
    i64 9, label %bb.mp
    i64 10, label %bb.mq
    i64 11, label %bb.ms
    i64 12, label %bb.mt
  ]

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %.sroa.8.sroa.0.0.extract.trunc = trunc i64 %.sroa.9.sroa.5.0.copyload to i8 ; 44 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !631)
  call void @llvm.experimental.noalias.scope.decl(metadata !632)
  switch i8 %i.fl, label %default.unreachable703.i [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
    i8 4, label %"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$9start_tag17hdb4ae77c6515205fE.exit.thread406.backedge"
    i8 5, label %bb.j
    i8 6, label %bb.k
    i8 7, label %bb.l
    i8 8, label %bb.m
    i8 9, label %bb.n
    i8 10, label %bb.o
    i8 11, label %bb.p
    i8 12, label %bb.t
    i8 13, label %bb.v
    i8 14, label %bb.x
    i8 15, label %bb.y
    i8 16, label %bb.aa
    i8 17, label %bb.ac
    i8 18, label %bb.ae
    i8 19, label %bb.ag
    i8 20, label %bb.ai
    i8 21, label %bb.aj
    i8 22, label %bb.al
  ]

default.unreachable703.i:                         ; preds = %bb.h, %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.fq = load i8, ptr %i.dr, align 8, !range !26, !alias.scope !631, !noundef !12
  %i.fr = trunc nuw i8 %i.fq to i1
  br i1 %i.fr, label %bb.ao, label %bb.am

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc), !noalias !633
  store i8 %.sroa.6.0.copyload, ptr %i.dc, align 1, !noalias !633
  %i.fs = inttoptr i64 %.sroa.9.sroa.13.0.copyload to ptr ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db), !noalias !633
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.db, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da), !noalias !633
  store i8 %.sroa.16.sroa.5.0.copyload, ptr %i.da, align 8, !noalias !631
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.37.56..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.16.sroa.6.0..sroa.16.0..sroa_idx.sroa_idx, i64 7, i1 false)
  store ptr %.sroa.16.sroa.7.0.copyload, ptr %.sroa.37287.56..sroa_idx, align 8, !noalias !631
  store i64 %.sroa.16.sroa.8.0.copyload, ptr %.sroa.43.56..sroa_idx, align 8, !noalias !631
  %i.ft = load i8, ptr %i.dr, align 8, !range !26, !alias.scope !631, !noundef !12
  %i.fu = trunc nuw i8 %i.ft to i1
  br i1 %i.fu, label %bb.as, label %bb.aq

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct), !noalias !633
  switch i8 %.sroa.6.0.copyload, label %default.unreachable703.i [
    i8 5, label %bb.du
    i8 0, label %bb.dv
    i8 1, label %bb.dw
    i8 2, label %bb.dx
    i8 3, label %bb.dy
    i8 4, label %bb.dz
  ]

bb.i:                                             ; preds = %bb.e
  %i.fv = inttoptr i64 %.sroa.9.sroa.13.0.copyload to ptr ; 8 uses
  %i.fw = load i8, ptr %i.dr, align 8, !range !26, !alias.scope !631, !noundef !12
  %i.fx = trunc nuw i8 %i.fw to i1
  br i1 %i.fx, label %bb.en, label %bb.em

bb.j:                                             ; preds = %bb.e
  %i.fy = trunc nuw i64 %.sroa.9.sroa.5.0.copyload to i1
  br i1 %i.fy, label %bb.fk, label %bb.fl

bb.k:                                             ; preds = %bb.e
  %i.fz = load i8, ptr %i.dr, align 8, !range !26, !alias.scope !631, !noundef !12
  %i.ga = trunc nuw i8 %i.fz to i1
  br i1 %i.ga, label %bb.fx, label %bb.fv

bb.l:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !633
  store i64 %.sroa.9.sroa.5.0.copyload, ptr %i.cb, align 8, !noalias !631
  store i64 %.sroa.9.sroa.13.0.copyload, ptr %.sroa.20.8..sroa_idx265, align 8, !noalias !631
  store i64 %.sroa.9.sroa.14.0.copyload, ptr %.sroa.23.8..sroa_idx277, align 8, !noalias !631
  %i.gb = load i8, ptr %i.dr, align 8, !range !26, !alias.scope !631, !noundef !12
  %i.gc = trunc nuw i8 %i.gb to i1
  br i1 %i.gc, label %bb.gb, label %bb.fz

bb.m:                                             ; preds = %bb.e
  %i.gd = load i8, ptr %i.dr, align 8, !range !26, !alias.scope !631, !noundef !12
  %i.ge = trunc nuw i8 %i.gd to i1
  br i1 %i.ge, label %bb.gr, label %bb.gp

bb.n:                                             ; preds = %bb.e
  %i.gf = load i8, ptr %i.dr, align 8, !range !26, !alias.scope !631, !noundef !12
  %i.gg = trunc nuw i8 %i.gf to i1
  br i1 %i.gg, label %bb.gv, label %bb.gt

bb.o:                                             ; preds = %bb.e
  %i.gh = load i8, ptr %i.dr, align 8, !range !26, !alias.scope !631, !noundef !12
  %i.gi = trunc nuw i8 %i.gh to i1
  br i1 %i.gi, label %bb.gz, label %bb.gx

bb.p:                                             ; preds = %bb.e
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he9edc7212c814a5dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eo)
          to label %bb.r unwind label %bb.q, !noalias !632

bb.q:                                             ; preds = %bb.p
  %i.gj = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc39ce856da4e2bf9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eo)
          to label %.body.i unwind label %bb.s, !noalias !632

bb.r:                                             ; preds = %bb.p
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc39ce856da4e2bf9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eo)
          to label %"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$pulldown_cmark..Alignment$GT$$GT$17h6ab3e406c9b66c34E.exit.i" unwind label %bb.hb, !noalias !632

bb.s:                                             ; preds = %bb.q
  %i.gk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #41, !noalias !632
  unreachable

bb.t:                                             ; preds = %bb.e
  store i8 0, ptr %i.ea, align 2, !alias.scope !631
  store i64 0, ptr %i.eb, align 8, !alias.scope !631
  call void @llvm.experimental.noalias.scope.decl(metadata !634)
  %i.gl = invoke noundef zeroext i1 @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hefaba01f1ef569ffE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @124, i64 noundef 11)
          to label %.noexc.i unwind label %bb.ot, !noalias !632

.noexc.i:                                         ; preds = %bb.t
  br i1 %i.gl, label %"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$7end_tag17h2bf8d1fd71370908E.exit", label %bb.u

bb.u:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !635
  store i32 10, ptr %i.bv, align 4, !noalias !635
  %i.gm = invoke noundef zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17he1ce87ce5941813aE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @124, i64 noundef 11, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bv, i64 noundef 1)
          to label %.noexc186.i unwind label %bb.ot, !noalias !632

.noexc186.i:                                      ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !635
  %i.gn = zext i1 %i.gm to i8
  store i8 %i.gn, ptr %i.dr, align 8, !alias.scope !636
  br label %"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$9start_tag17hdb4ae77c6515205fE.exit.thread406.backedge"

bb.v:                                             ; preds = %bb.e
  store i64 0, ptr %i.eb, align 8, !alias.scope !631
  call void @llvm.experimental.noalias.scope.decl(metadata !637)
  %i.go = invoke noundef zeroext i1 @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hefaba01f1ef569ffE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @125, i64 noundef 4)
          to label %.noexc187.i unwind label %bb.ot, !noalias !632

.noexc187.i:                                      ; preds = %bb.v
  br i1 %i.go, label %"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$7end_tag17h2bf8d1fd71370908E.exit", label %bb.w

bb.w:                                             ; preds = %.noexc187.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !638
  store i32 10, ptr %i.bu, align 4, !noalias !638
  %i.gp = invoke noundef zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17he1ce87ce5941813aE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @125, i64 noundef 4, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bu, i64 noundef 1)
          to label %.noexc188.i unwind label %bb.ot, !noalias !632

.noexc188.i:                                      ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !638
  %i.gq = zext i1 %i.gp to i8
  store i8 %i.gq, ptr %i.dr, align 8, !alias.scope !639
  br label %"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$9start_tag17hdb4ae77c6515205fE.exit.thread406.backedge"

bb.x:                                             ; preds = %bb.e
  %i.gr = load i8, ptr %i.ea, align 2, !range !26, !alias.scope !631, !noundef !12
  %i.gs = trunc nuw i8 %i.gr to i1
  br i1 %i.gs, label %bb.hd, label %bb.hf

bb.y:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !640)
  %i.gt = invoke noundef zeroext i1 @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hefaba01f1ef569ffE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @131, i64 noundef 4)
end_hunk_0
begin_hunk_1_@"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$3run17h5782118c382379ddE":bb.a

bb.nl:                                            ; preds = %bb.nk
  br i1 %i.zg, label %"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$5write17h1e769eda8feefa56E.exit.thread", label %bb.nm

bb.nm:                                            ; preds = %bb.nl
  call void @llvm.experimental.noalias.scope.decl(metadata !859)
  %i.zh = invoke noundef zeroext i1 @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hefaba01f1ef569ffE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @37, i64 noundef 7)
          to label %.noexc157 unwind label %bb.nh

.noexc157:                                        ; preds = %bb.nm
  br i1 %i.zh, label %"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$5write17h1e769eda8feefa56E.exit.thread", label %bb.nn

bb.nn:                                            ; preds = %.noexc157
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !860
  store i32 10, ptr %i.l, align 4, !noalias !860
  %i.zi = invoke noundef zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17he1ce87ce5941813aE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @37, i64 noundef 7, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.l, i64 noundef 1)
          to label %bb.no unwind label %bb.nh

bb.no:                                            ; preds = %bb.nn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !860
  %i.zj = zext i1 %i.zi to i8
  store i8 %i.zj, ptr %i.dr, align 8, !alias.scope !859
  %i.zk = icmp ne i8 %i.xm, 0
  %i.zl = icmp eq i64 %.sroa.9.sroa.14.0.copyload, 0
  %or.cond441 = select i1 %i.zk, i1 true, i1 %i.zl
  br i1 %or.cond441, label %"_ZN4core3ptr52drop_in_place$LT$pulldown_cmark..strings..CowStr$GT$17hd41f98d1e7ed693aE.exit162", label %bb.np

bb.np:                                            ; preds = %bb.no
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.xn, i64 noundef range(i64 1, 0) %.sroa.9.sroa.14.0.copyload, i64 noundef 1) #34, !noalias !861
  br label %"_ZN4core3ptr52drop_in_place$LT$pulldown_cmark..strings..CowStr$GT$17hd41f98d1e7ed693aE.exit162"

"_ZN4core3ptr52drop_in_place$LT$pulldown_cmark..strings..CowStr$GT$17hd41f98d1e7ed693aE.exit162": ; preds = %bb.np, %bb.no
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  br label %"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$9start_tag17hdb4ae77c6515205fE.exit.thread406.backedge"

"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$5write17h1e769eda8feefa56E.exit.thread": ; preds = %.noexc157, %.noexc128, %bb.nl
  %i.zm = icmp ne i8 %i.xm, 0
  %i.zn = icmp eq i64 %.sroa.9.sroa.14.0.copyload, 0
  %or.cond442 = select i1 %i.zm, i1 true, i1 %i.zn
  br i1 %or.cond442, label %"_ZN4core3ptr52drop_in_place$LT$pulldown_cmark..strings..CowStr$GT$17hd41f98d1e7ed693aE.exit165", label %bb.nq

bb.nq:                                            ; preds = %"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$5write17h1e769eda8feefa56E.exit.thread"
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.xn, i64 noundef range(i64 1, 0) %.sroa.9.sroa.14.0.copyload, i64 noundef 1) #34, !noalias !862
  br label %"_ZN4core3ptr52drop_in_place$LT$pulldown_cmark..strings..CowStr$GT$17hd41f98d1e7ed693aE.exit165"

"_ZN4core3ptr52drop_in_place$LT$pulldown_cmark..strings..CowStr$GT$17hd41f98d1e7ed693aE.exit165": ; preds = %bb.nq, %"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$5write17h1e769eda8feefa56E.exit.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  br label %"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$7end_tag17h2bf8d1fd71370908E.exit"

bb.nr:                                            ; preds = %bb.nx, %bb.nw, %bb.mk, %bb.mj, %bb.nu, %bb.nt
  %i.zo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.zp = icmp ne i8 %i.xq, 0
  %i.zq = icmp eq i64 %.sroa.9.sroa.14.0.copyload, 0
  %or.cond443 = select i1 %i.zp, i1 true, i1 %i.zq
  br i1 %or.cond443, label %.body, label %bb.ns

bb.ns:                                            ; preds = %bb.nr
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.xr, i64 noundef range(i64 1, 0) %.sroa.9.sroa.14.0.copyload, i64 noundef 1) #34, !noalias !863
  br label %.body

bb.nt:                                            ; preds = %bb.mk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !848
  %i.zr = zext i1 %i.xt to i8
  store i8 %i.zr, ptr %i.dr, align 8, !alias.scope !847
  %i.zs = invoke { ptr, i64 } @"_ZN75_$LT$pulldown_cmark..strings..CowStr$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8bc51aacd5a6302aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dm)
          to label %bb.nu unwind label %bb.nr     ; 2 uses

bb.nu:                                            ; preds = %bb.nt
  %i.zt = extractvalue { ptr, i64 } %i.zs, 0
  %i.zu = extractvalue { ptr, i64 } %i.zs, 1
  %i.zv = invoke fastcc noundef zeroext i1 @_ZN21pulldown_cmark_escape18escape_html_scalar17h9933c27a34ba07ddE(ptr noalias noundef align 8 dereferenceable(8) %i.dq, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.zt, i64 noundef %i.zu, ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(256) @_ZN21pulldown_cmark_escape17HTML_ESCAPE_TABLE17h0d58bc7f1857a1fcE)
          to label %bb.nv unwind label %bb.nr

bb.nv:                                            ; preds = %bb.nu
  br i1 %i.zv, label %"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$5write17h1e769eda8feefa56E.exit133.thread", label %bb.nw

bb.nw:                                            ; preds = %bb.nv
  call void @llvm.experimental.noalias.scope.decl(metadata !864)
  %i.zw = invoke noundef zeroext i1 @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hefaba01f1ef569ffE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @39, i64 noundef 7)
          to label %.noexc170 unwind label %bb.nr

.noexc170:                                        ; preds = %bb.nw
  br i1 %i.zw, label %"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$5write17h1e769eda8feefa56E.exit133.thread", label %bb.nx

bb.nx:                                            ; preds = %.noexc170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !865
  store i32 10, ptr %i.k, align 4, !noalias !865
  %i.zx = invoke noundef zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17he1ce87ce5941813aE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @39, i64 noundef 7, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.k, i64 noundef 1)
          to label %bb.ny unwind label %bb.nr

bb.ny:                                            ; preds = %bb.nx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !865
  %i.zy = zext i1 %i.zx to i8
  store i8 %i.zy, ptr %i.dr, align 8, !alias.scope !864
  %i.zz = icmp ne i8 %i.xq, 0
  %i.aaa = icmp eq i64 %.sroa.9.sroa.14.0.copyload, 0
  %or.cond444 = select i1 %i.zz, i1 true, i1 %i.aaa
  br i1 %or.cond444, label %"_ZN4core3ptr52drop_in_place$LT$pulldown_cmark..strings..CowStr$GT$17hd41f98d1e7ed693aE.exit175", label %bb.nz

bb.nz:                                            ; preds = %bb.ny
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.xr, i64 noundef range(i64 1, 0) %.sroa.9.sroa.14.0.copyload, i64 noundef 1) #34, !noalias !866
  br label %"_ZN4core3ptr52drop_in_place$LT$pulldown_cmark..strings..CowStr$GT$17hd41f98d1e7ed693aE.exit175"

"_ZN4core3ptr52drop_in_place$LT$pulldown_cmark..strings..CowStr$GT$17hd41f98d1e7ed693aE.exit175": ; preds = %bb.nz, %bb.ny
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  br label %"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$9start_tag17hdb4ae77c6515205fE.exit.thread406.backedge"

"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$5write17h1e769eda8feefa56E.exit133.thread": ; preds = %.noexc170, %.noexc131, %bb.nv
  %i.aab = icmp ne i8 %i.xq, 0
  %i.aac = icmp eq i64 %.sroa.9.sroa.14.0.copyload, 0
  %or.cond445 = select i1 %i.aab, i1 true, i1 %i.aac
  br i1 %or.cond445, label %"_ZN4core3ptr52drop_in_place$LT$pulldown_cmark..strings..CowStr$GT$17hd41f98d1e7ed693aE.exit178", label %bb.oa

bb.oa:                                            ; preds = %"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$5write17h1e769eda8feefa56E.exit133.thread"
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.xr, i64 noundef range(i64 1, 0) %.sroa.9.sroa.14.0.copyload, i64 noundef 1) #34, !noalias !867
  br label %"_ZN4core3ptr52drop_in_place$LT$pulldown_cmark..strings..CowStr$GT$17hd41f98d1e7ed693aE.exit178"

"_ZN4core3ptr52drop_in_place$LT$pulldown_cmark..strings..CowStr$GT$17hd41f98d1e7ed693aE.exit178": ; preds = %bb.oa, %"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$5write17h1e769eda8feefa56E.exit133.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  br label %"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$7end_tag17h2bf8d1fd71370908E.exit"

bb.ob:                                            ; preds = %bb.oh, %bb.og, %bb.mm, %bb.ml, %bb.oe, %bb.od
  %i.aad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aae = icmp ne i8 %i.xu, 0
  %i.aaf = icmp eq i64 %.sroa.9.sroa.14.0.copyload, 0
  %or.cond446 = select i1 %i.aae, i1 true, i1 %i.aaf
  br i1 %or.cond446, label %.body, label %bb.oc

bb.oc:                                            ; preds = %bb.ob
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.xv, i64 noundef range(i64 1, 0) %.sroa.9.sroa.14.0.copyload, i64 noundef 1) #34, !noalias !868
  br label %.body

bb.od:                                            ; preds = %bb.mm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !850
  %i.aag = zext i1 %i.xx to i8
  store i8 %i.aag, ptr %i.dr, align 8, !alias.scope !849
  %i.aah = invoke { ptr, i64 } @"_ZN75_$LT$pulldown_cmark..strings..CowStr$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8bc51aacd5a6302aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dl)
          to label %bb.oe unwind label %bb.ob     ; 2 uses

bb.oe:                                            ; preds = %bb.od
  %i.aai = extractvalue { ptr, i64 } %i.aah, 0
  %i.aaj = extractvalue { ptr, i64 } %i.aah, 1
  %i.aak = invoke fastcc noundef zeroext i1 @_ZN21pulldown_cmark_escape18escape_html_scalar17h9933c27a34ba07ddE(ptr noalias noundef align 8 dereferenceable(8) %i.dq, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.aai, i64 noundef %i.aaj, ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(256) @_ZN21pulldown_cmark_escape17HTML_ESCAPE_TABLE17h0d58bc7f1857a1fcE)
          to label %bb.of unwind label %bb.ob

bb.of:                                            ; preds = %bb.oe
  br i1 %i.aak, label %"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$5write17h1e769eda8feefa56E.exit137.thread", label %bb.og

bb.og:                                            ; preds = %bb.of
  call void @llvm.experimental.noalias.scope.decl(metadata !869)
  %i.aal = invoke noundef zeroext i1 @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hefaba01f1ef569ffE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @39, i64 noundef 7)
          to label %.noexc183 unwind label %bb.ob

.noexc183:                                        ; preds = %bb.og
  br i1 %i.aal, label %"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$5write17h1e769eda8feefa56E.exit137.thread", label %bb.oh

bb.oh:                                            ; preds = %.noexc183
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !870
  store i32 10, ptr %i.j, align 4, !noalias !870
  %i.aam = invoke noundef zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17he1ce87ce5941813aE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @39, i64 noundef 7, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.j, i64 noundef 1)
          to label %bb.oi unwind label %bb.ob

bb.oi:                                            ; preds = %bb.oh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !870
  %i.aan = zext i1 %i.aam to i8
  store i8 %i.aan, ptr %i.dr, align 8, !alias.scope !869
  %i.aao = icmp ne i8 %i.xu, 0
  %i.aap = icmp eq i64 %.sroa.9.sroa.14.0.copyload, 0
  %or.cond447 = select i1 %i.aao, i1 true, i1 %i.aap
  br i1 %or.cond447, label %"_ZN4core3ptr52drop_in_place$LT$pulldown_cmark..strings..CowStr$GT$17hd41f98d1e7ed693aE.exit188", label %bb.oj

bb.oj:                                            ; preds = %bb.oi
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.xv, i64 noundef range(i64 1, 0) %.sroa.9.sroa.14.0.copyload, i64 noundef 1) #34, !noalias !871
  br label %"_ZN4core3ptr52drop_in_place$LT$pulldown_cmark..strings..CowStr$GT$17hd41f98d1e7ed693aE.exit188"

"_ZN4core3ptr52drop_in_place$LT$pulldown_cmark..strings..CowStr$GT$17hd41f98d1e7ed693aE.exit188": ; preds = %bb.oj, %bb.oi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  br label %"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$9start_tag17hdb4ae77c6515205fE.exit.thread406.backedge"

"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$5write17h1e769eda8feefa56E.exit137.thread": ; preds = %.noexc183, %.noexc135, %bb.of
  %i.aaq = icmp ne i8 %i.xu, 0
  %i.aar = icmp eq i64 %.sroa.9.sroa.14.0.copyload, 0
  %or.cond448 = select i1 %i.aaq, i1 true, i1 %i.aar
  br i1 %or.cond448, label %"_ZN4core3ptr52drop_in_place$LT$pulldown_cmark..strings..CowStr$GT$17hd41f98d1e7ed693aE.exit191", label %bb.ok

bb.ok:                                            ; preds = %"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$5write17h1e769eda8feefa56E.exit137.thread"
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.xv, i64 noundef range(i64 1, 0) %.sroa.9.sroa.14.0.copyload, i64 noundef 1) #34, !noalias !872
  br label %"_ZN4core3ptr52drop_in_place$LT$pulldown_cmark..strings..CowStr$GT$17hd41f98d1e7ed693aE.exit191"

"_ZN4core3ptr52drop_in_place$LT$pulldown_cmark..strings..CowStr$GT$17hd41f98d1e7ed693aE.exit191": ; preds = %bb.ok, %"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$5write17h1e769eda8feefa56E.exit137.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  br label %"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$7end_tag17h2bf8d1fd71370908E.exit"

bb.ol:                                            ; preds = %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk)
  store i64 %.sroa.9.sroa.5.0.copyload, ptr %i.dk, align 8
  store i64 %.sroa.9.sroa.13.0.copyload, ptr %.sroa.9.sroa.13.5..sroa_idx364, align 8
  store i64 %.sroa.9.sroa.14.0.copyload, ptr %.sroa.9.sroa.14.5..sroa_idx376, align 8
  %i.aas = trunc i64 %.sroa.9.sroa.5.0.copyload to i8 ; 3 uses
  %.val.i200 = inttoptr i64 %.sroa.9.sroa.13.0.copyload to ptr ; 3 uses
  %i.aat = invoke { ptr, i64 } @"_ZN75_$LT$pulldown_cmark..strings..CowStr$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8bc51aacd5a6302aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dk)
          to label %bb.oo unwind label %bb.om     ; 2 uses

bb.om:                                            ; preds = %bb.op, %bb.oo, %bb.ol
  %i.aau = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aav = icmp ne i8 %i.aas, 0
  %i.aaw = icmp eq i64 %.sroa.9.sroa.14.0.copyload, 0
  %or.cond449 = select i1 %i.aav, i1 true, i1 %i.aaw
  br i1 %or.cond449, label %.body, label %bb.on

bb.on:                                            ; preds = %bb.om
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i200, i64 noundef range(i64 1, 0) %.sroa.9.sroa.14.0.copyload, i64 noundef 1) #34, !noalias !873
  br label %.body

bb.oo:                                            ; preds = %bb.ol
  %i.aax = extractvalue { ptr, i64 } %i.aat, 0    ; 2 uses
  %i.aay = extractvalue { ptr, i64 } %i.aat, 1    ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !874)
  %i.aaz = invoke noundef zeroext i1 @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hefaba01f1ef569ffE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.aax, i64 noundef %i.aay)
          to label %.noexc196 unwind label %bb.om ; 2 uses

.noexc196:                                        ; preds = %bb.oo
  %i.aba = icmp eq i64 %i.aay, 0
  %or.cond.i195 = or i1 %i.aba, %i.aaz
  br i1 %or.cond.i195, label %"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$5write17h1e769eda8feefa56E.exit198", label %bb.op

bb.op:                                            ; preds = %.noexc196
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !875
  store i32 10, ptr %i.i, align 4, !noalias !875
  %i.abb = invoke noundef zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17he1ce87ce5941813aE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.aax, i64 noundef %i.aay, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.i, i64 noundef 1)
          to label %.noexc197 unwind label %bb.om

.noexc197:                                        ; preds = %bb.op
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !875
  %i.abc = zext i1 %i.abb to i8
  store i8 %i.abc, ptr %i.dr, align 8, !alias.scope !874
  br label %bb.or

"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$5write17h1e769eda8feefa56E.exit198": ; preds = %.noexc196
  br i1 %i.aaz, label %"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$5write17h1e769eda8feefa56E.exit198.a", label %bb.or

"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$5write17h1e769eda8feefa56E.exit198.a": ; preds = %"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$5write17h1e769eda8feefa56E.exit198"
  %i.abd = icmp ne i8 %i.aas, 0
  %i.abe = icmp eq i64 %.sroa.9.sroa.14.0.copyload, 0
  %or.cond450 = select i1 %i.abd, i1 true, i1 %i.abe
  br i1 %or.cond450, label %"_ZN4core3ptr52drop_in_place$LT$pulldown_cmark..strings..CowStr$GT$17hd41f98d1e7ed693aE.exit201", label %bb.oq

bb.oq:                                            ; preds = %"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$5write17h1e769eda8feefa56E.exit198.a"
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i200, i64 noundef range(i64 1, 0) %.sroa.9.sroa.14.0.copyload, i64 noundef 1) #34, !noalias !876
  br label %"_ZN4core3ptr52drop_in_place$LT$pulldown_cmark..strings..CowStr$GT$17hd41f98d1e7ed693aE.exit201"

bb.or:                                            ; preds = %.noexc197, %"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$5write17h1e769eda8feefa56E.exit198"
  %1 = icmp ne i8 %i.aas, 0
  %2 = icmp eq i64 %.sroa.9.sroa.14.0.copyload, 0
  %or.cond451 = select i1 %1, i1 true, i1 %2
  br i1 %or.cond451, label %"_ZN4core3ptr52drop_in_place$LT$pulldown_cmark..strings..CowStr$GT$17hd41f98d1e7ed693aE.exit204", label %bb.os

bb.os:                                            ; preds = %bb.or
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i200, i64 noundef range(i64 1, 0) %.sroa.9.sroa.14.0.copyload, i64 noundef 1) #34, !noalias !877
  br label %"_ZN4core3ptr52drop_in_place$LT$pulldown_cmark..strings..CowStr$GT$17hd41f98d1e7ed693aE.exit204"

"_ZN4core3ptr52drop_in_place$LT$pulldown_cmark..strings..CowStr$GT$17hd41f98d1e7ed693aE.exit204": ; preds = %bb.os, %bb.or
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  br label %"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$9start_tag17hdb4ae77c6515205fE.exit.thread406.backedge"

"_ZN4core3ptr52drop_in_place$LT$pulldown_cmark..strings..CowStr$GT$17hd41f98d1e7ed693aE.exit201": ; preds = %bb.oq, %"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$5write17h1e769eda8feefa56E.exit198.a"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  br label %"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$7end_tag17h2bf8d1fd71370908E.exit"

bb.ot:                                            ; preds = %bb.hi, %.invoke.i, %bb.hg, %bb.hf, %bb.he, %bb.hd, %bb.hc, %"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$pulldown_cmark..Alignment$GT$$GT$17h6ab3e406c9b66c34E.exit.i", %bb.ha, %bb.gz, %bb.gy, %bb.gx, %bb.gw, %bb.gv, %bb.gu, %bb.gt, %bb.gs, %bb.gr, %bb.gq, %bb.gp, %bb.fy, %bb.fx, %bb.fw, %bb.fv, %bb.ft, %bb.fr, %bb.fp, %bb.fo, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i282.i", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i.i", %bb.eb, %bb.ea, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.w, %bb.v, %bb.u, %bb.t, %"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$9start_tag17hdb4ae77c6515205fE.exit.thread406", %bb.er, %bb.gi, %.noexc321.i, %"_ZN93_$LT$pulldown_cmark_escape..FmtWriter$LT$W$GT$$u20$as$u20$pulldown_cmark_escape..StrWrite$GT$9write_fmt17h4efe09793ce1f6baE.exit323.i", %bb.gl, %bb.kk, %bb.kl, %bb.km, %bb.kn, %bb.ko, %bb.kp, %bb.kq, %bb.ks, %bb.kt, %bb.ku, %bb.kv, %bb.kw, %bb.kx, %bb.ky, %bb.kz, %bb.la, %bb.lb, %bb.lc, %bb.ld, %bb.le, %bb.lf, %bb.lg, %bb.li, %bb.lj, %bb.lk, %bb.ll, %bb.lm, %bb.ln, %bb.lo, %bb.lp, %bb.lq, %bb.lr, %bb.ls, %bb.lt, %bb.lv, %.noexc115, %bb.lw, %bb.ly, %bb.lz, %bb.ma, %bb.mb, %bb.mc, %bb.md, %"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$5write17h1e769eda8feefa56E.exit91.i", %bb.me, %"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$5write17h1e769eda8feefa56E.exit92.i", %bb.mp, %bb.mq, %bb.mr, %bb.pk, %bb.pl, %bb.pm, %bb.pn, %bb.po, %bb.pp, %bb.pq, %bb.pr, %bb.pg, %bb.pf, %bb.pe, %bb.pc, %bb.pa
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ou:                                            ; preds = %bb.mo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !852
  %i.abf = zext i1 %i.yb to i8
  store i8 %i.abf, ptr %i.dr, align 8, !alias.scope !851
  %i.abg = invoke { ptr, i64 } @"_ZN75_$LT$pulldown_cmark..strings..CowStr$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8bc51aacd5a6302aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dj)
          to label %bb.ow unwind label %bb.pi     ; 2 uses

"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$5write17h1e769eda8feefa56E.exit141.thread": ; preds = %.noexc209, %.noexc139, %bb.ox
  %i.abh = and i64 %.sroa.9.sroa.5.0.copyload, 255
  %i.abi = icmp ne i64 %i.abh, 0
  %i.abj = icmp eq i64 %.sroa.9.sroa.14.0.copyload, 0
  %or.cond452 = select i1 %i.abi, i1 true, i1 %i.abj
  br i1 %or.cond452, label %"_ZN4core3ptr52drop_in_place$LT$pulldown_cmark..strings..CowStr$GT$17hd41f98d1e7ed693aE.exit207", label %bb.ov

bb.ov:                                            ; preds = %"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$5write17h1e769eda8feefa56E.exit141.thread"
  %i.abk = inttoptr i64 %.sroa.9.sroa.13.0.copyload to ptr
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.abk, i64 noundef range(i64 1, 0) %.sroa.9.sroa.14.0.copyload, i64 noundef 1) #34, !noalias !878
  br label %"_ZN4core3ptr52drop_in_place$LT$pulldown_cmark..strings..CowStr$GT$17hd41f98d1e7ed693aE.exit207"

bb.ow:                                            ; preds = %bb.ou
  %i.abl = extractvalue { ptr, i64 } %i.abg, 0
  %i.abm = extractvalue { ptr, i64 } %i.abg, 1
  %i.abn = invoke fastcc noundef zeroext i1 @_ZN21pulldown_cmark_escape18escape_html_scalar17h9933c27a34ba07ddE(ptr noalias noundef align 8 dereferenceable(8) %i.dq, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.abl, i64 noundef %i.abm, ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(256) @_ZN21pulldown_cmark_escape17HTML_ESCAPE_TABLE17h0d58bc7f1857a1fcE)
          to label %bb.ox unwind label %bb.pi

bb.ox:                                            ; preds = %bb.ow
  br i1 %i.abn, label %"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$5write17h1e769eda8feefa56E.exit141.thread", label %bb.oy

bb.oy:                                            ; preds = %bb.ox
  call void @llvm.experimental.noalias.scope.decl(metadata !879)
  %i.abo = invoke noundef zeroext i1 @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hefaba01f1ef569ffE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @42, i64 noundef 2)
          to label %.noexc209 unwind label %bb.pi

.noexc209:                                        ; preds = %bb.oy
  br i1 %i.abo, label %"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$5write17h1e769eda8feefa56E.exit141.thread", label %bb.oz

bb.oz:                                            ; preds = %.noexc209
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !880
  store i32 10, ptr %i.h, align 4, !noalias !880
  %i.abp = invoke noundef zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17he1ce87ce5941813aE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @42, i64 noundef 2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.h, i64 noundef 1)
          to label %bb.pa unwind label %bb.pi

bb.pa:                                            ; preds = %bb.oz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !880
  %i.abq = zext i1 %i.abp to i8
  store i8 %i.abq, ptr %i.dr, align 8, !alias.scope !879
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dh, ptr noundef nonnull align 8 dereferenceable(24) %i.dj, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd)
  invoke void @"_ZN9hashbrown11rustc_entry62_$LT$impl$u20$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$GT$11rustc_entry17hb02e630a2713b5a5E"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.dd, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ds, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.dh)
          to label %bb.pb unwind label %bb.ot

bb.pb:                                            ; preds = %bb.pa
  %i.abr = load i8, ptr %i.dd, align 8, !range !28, !noundef !12 ; 2 uses
  %.not74 = icmp eq i8 %i.abr, 3
  br i1 %.not74, label %bb.pd, label %bb.pc

bb.pc:                                            ; preds = %bb.pb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !881
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6383.0..sroa_idx384, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4398.0..sroa_idx, i64 7, i1 false)
  %.sroa.7401.0.copyload = load ptr, ptr %.sroa.7401.0..sroa_idx, align 8, !nonnull !12, !noundef !12
  %.sroa.8402.0.copyload = load i64, ptr %.sroa.8402.0..sroa_idx, align 8
  %i.abs = load <2 x ptr>, ptr %.sroa.5399.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh)
  store i8 %i.abr, ptr %i.g, align 8
  store <2 x ptr> %i.abs, ptr %.sroa.6385.0..sroa_idx386, align 8
  store i64 %i.xz, ptr %i.du, align 8, !noalias !881
  %i.abt = invoke noundef nonnull ptr @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17h4fac145b7c2df4caE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.7401.0.copyload, i64 noundef %.sroa.8402.0.copyload, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %.noexc213 unwind label %bb.ot

.noexc213:                                        ; preds = %bb.pc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !881
  br label %bb.pe

bb.pd:                                            ; preds = %bb.pb
  %i.abu = load ptr, ptr %.sroa.5399.0..sroa_idx, align 8, !nonnull !12, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh)
  br label %bb.pe

bb.pe:                                            ; preds = %bb.pd, %.noexc213
  %.pn.i = phi ptr [ %i.abt, %.noexc213 ], [ %i.abu, %bb.pd ]
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -8
  %i.abv = load i64, ptr %.sroa.0.0.i, align 8, !noundef !12
  store i64 %i.abv, ptr %i.di, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df)
  store ptr %i.di, ptr %i.df, align 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17hb55abab394fd8017E", ptr %.sroa.471.0..sroa_idx, align 8
  store ptr @43, ptr %i.dg, align 8
  store i64 1, ptr %i.dv, align 8
  store ptr null, ptr %i.dw, align 8
  store ptr %i.df, ptr %i.dx, align 8
  store i64 1, ptr %i.dy, align 8
  %i.abw = invoke noundef zeroext i1 @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h0413418297d508bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.dg)
          to label %"_ZN93_$LT$pulldown_cmark_escape..FmtWriter$LT$W$GT$$u20$as$u20$pulldown_cmark_escape..StrWrite$GT$9write_fmt17h4efe09793ce1f6baE.exit" unwind label %bb.ot

"_ZN93_$LT$pulldown_cmark_escape..FmtWriter$LT$W$GT$$u20$as$u20$pulldown_cmark_escape..StrWrite$GT$9write_fmt17h4efe09793ce1f6baE.exit": ; preds = %bb.pe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df)
  br i1 %i.abw, label %.critedge, label %bb.pf

bb.pf:                                            ; preds = %"_ZN93_$LT$pulldown_cmark_escape..FmtWriter$LT$W$GT$$u20$as$u20$pulldown_cmark_escape..StrWrite$GT$9write_fmt17h4efe09793ce1f6baE.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !882)
  %i.abx = invoke noundef zeroext i1 @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hefaba01f1ef569ffE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @44, i64 noundef 10)
          to label %.noexc216 unwind label %bb.ot

.noexc216:                                        ; preds = %bb.pf
  br i1 %i.abx, label %.critedge, label %bb.pg

bb.pg:                                            ; preds = %.noexc216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !883
  store i32 10, ptr %i.f, align 4, !noalias !883
  %i.aby = invoke noundef zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17he1ce87ce5941813aE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @44, i64 noundef 10, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.f, i64 noundef 1)
          to label %bb.ph unwind label %bb.ot

bb.ph:                                            ; preds = %bb.pg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !883
  %i.abz = zext i1 %i.aby to i8
  store i8 %i.abz, ptr %i.dr, align 8, !alias.scope !882
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  br label %"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$9start_tag17hdb4ae77c6515205fE.exit.thread406.backedge"

.critedge:                                        ; preds = %.noexc216, %"_ZN93_$LT$pulldown_cmark_escape..FmtWriter$LT$W$GT$$u20$as$u20$pulldown_cmark_escape..StrWrite$GT$9write_fmt17h4efe09793ce1f6baE.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  br label %"_ZN4core3ptr52drop_in_place$LT$pulldown_cmark..strings..CowStr$GT$17hd41f98d1e7ed693aE.exit207"

"_ZN4core3ptr52drop_in_place$LT$pulldown_cmark..strings..CowStr$GT$17hd41f98d1e7ed693aE.exit207": ; preds = %bb.ov, %"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$5write17h1e769eda8feefa56E.exit141.thread", %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  br label %"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$7end_tag17h2bf8d1fd71370908E.exit"

bb.pi:                                            ; preds = %bb.oz, %bb.ow, %bb.ou, %bb.mo, %bb.mn, %bb.oy
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aca = and i64 %.sroa.9.sroa.5.0.copyload, 255
  %i.acb = icmp ne i64 %i.aca, 0
  %i.acc = icmp eq i64 %.sroa.9.sroa.14.0.copyload, 0
  %or.cond2271 = select i1 %i.acb, i1 true, i1 %i.acc
  br i1 %or.cond2271, label %.body, label %bb.pj

bb.pj:                                            ; preds = %bb.pi
  %i.acd = inttoptr i64 %.sroa.9.sroa.13.0.copyload to ptr
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.acd, i64 noundef range(i64 1, 0) %.sroa.9.sroa.14.0.copyload, i64 noundef 1) #34, !noalias !884
  br label %.body

"_ZN93_$LT$pulldown_cmark_escape..FmtWriter$LT$W$GT$$u20$as$u20$pulldown_cmark_escape..StrWrite$GT$9write_str17hc9e22e7059605077E.exit": ; preds = %bb.mp
  br i1 %i.yc, label %"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$7end_tag17h2bf8d1fd71370908E.exit", label %"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$9start_tag17hdb4ae77c6515205fE.exit.thread406.backedge"

"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$5write17h1e769eda8feefa56E.exit146": ; preds = %bb.mr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !854
  %i.ace = zext i1 %i.ye to i8
  store i8 %i.ace, ptr %i.dr, align 8, !alias.scope !853
  br label %"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$9start_tag17hdb4ae77c6515205fE.exit.thread406.backedge"

bb.pk:                                            ; preds = %bb.ms
  call void @llvm.experimental.noalias.scope.decl(metadata !885)
  %i.acf = invoke noundef zeroext i1 @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hefaba01f1ef569ffE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @47, i64 noundef 8)
          to label %.noexc223 unwind label %bb.ot

.noexc223:                                        ; preds = %bb.pk
  br i1 %i.acf, label %"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$7end_tag17h2bf8d1fd71370908E.exit", label %bb.pl

bb.pl:                                            ; preds = %.noexc223
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !886
  store i32 10, ptr %i.e, align 4, !noalias !886
  %i.acg = invoke noundef zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17he1ce87ce5941813aE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @47, i64 noundef 8, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.e, i64 noundef 1)
          to label %"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$5write17h1e769eda8feefa56E.exit225" unwind label %bb.ot

bb.pm:                                            ; preds = %bb.ms
  call void @llvm.experimental.noalias.scope.decl(metadata !887)
  %i.ach = invoke noundef zeroext i1 @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hefaba01f1ef569ffE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @48, i64 noundef 7)
          to label %.noexc227 unwind label %bb.ot

.noexc227:                                        ; preds = %bb.pm
  br i1 %i.ach, label %"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$7end_tag17h2bf8d1fd71370908E.exit", label %bb.pn

bb.pn:                                            ; preds = %.noexc227
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !888
  store i32 10, ptr %i.d, align 4, !noalias !888
  %i.aci = invoke noundef zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17he1ce87ce5941813aE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @48, i64 noundef 7, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.d, i64 noundef 1)
          to label %"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$5write17h1e769eda8feefa56E.exit229" unwind label %bb.ot

"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$5write17h1e769eda8feefa56E.exit225": ; preds = %bb.pl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !886
  %i.acj = zext i1 %i.acg to i8
  store i8 %i.acj, ptr %i.dr, align 8, !alias.scope !885
  br label %"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$9start_tag17hdb4ae77c6515205fE.exit.thread406.backedge"

"_ZN14pulldown_cmark4html23HtmlWriter$LT$I$C$W$GT$5write17h1e769eda8feefa56E.exit229": ; preds = %bb.pn
end_hunk_1
