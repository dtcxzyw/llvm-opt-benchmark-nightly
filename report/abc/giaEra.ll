Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaEra?download=true
inline.NumInlined: 125
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@Gia_ManCollectReachable:bb.a
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !52
  %i.bw = sext i32 %i.bs to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.bw
  store i32 %i.bt, ptr %i.bx, align 4, !tbaa !56
  %i.by = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 4 uses
  %i.ca = load i32, ptr %i.by, align 8, !tbaa !117 ; 3 uses
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !49 ; 3 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 4
  %.val70105 = load i32, ptr %i.cc, align 4, !tbaa !53 ; 2 uses
  %i.cd = add nsw i32 %.val70105, -1
  %i.ce = icmp slt i32 %i.ca, %i.cd
  br i1 %i.ce, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %Gia_ManEraStateHash.exit
  %i.cf = getelementptr i8, ptr %i.i, i64 8
  %i.cg = getelementptr i8, ptr %i.i, i64 16
  %i.ch = icmp ne i32 %2, 0
  %.not62 = icmp eq i32 %4, 0
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.backedge
  %i.cj = phi ptr [ %i.cb, %.lr.ph ], [ %i.gb, %.backedge ] ; 3 uses
  %.val70106 = phi i32 [ %.val70105, %.lr.ph ], [ %.val70, %.backedge ]
  %i.ck = phi i32 [ %i.ca, %.lr.ph ], [ %i.gc, %.backedge ] ; 3 uses
  %.not = icmp slt i32 %.val70106, %1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %1) ; 0 uses
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.cm = add nsw i32 %i.ck, 1                    ; 3 uses
  store i32 %i.cm, ptr %i.by, align 8, !tbaa !117
  %i.cn = getelementptr i8, ptr %i.cj, i64 8
  %.val71.val = load ptr, ptr %i.cn, align 8, !tbaa !48
  %i.co = sext i32 %i.cm to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr %.val71.val, i64 %i.co
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !54 ; 3 uses
  %i.cr = icmp sgt i32 %i.ck, 0
  br i1 %i.cr, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !65
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %.backedge, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.cv = load ptr, ptr %i.i, align 8, !tbaa !20  ; 3 uses
  %i.cw = getelementptr i8, ptr %i.cv, i64 16     ; 2 uses
  %.val1723.i = load i32, ptr %i.cw, align 8, !tbaa !37 ; 2 uses
  %i.cx = icmp sgt i32 %.val1723.i, 0
  br i1 %i.cx, label %.lr.ph.i74, label %Gia_ManInsertState.exit

.lr.ph.i74:                                       ; preds = %bb.g
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cz = getelementptr i8, ptr %i.cv, i64 32
  %i.da = getelementptr i8, ptr %i.cv, i64 64
  br label %bb.h

bb.h:                                             ; preds = %bb.l, %.lr.ph.i74
  %.val1725.i = phi i32 [ %.val1723.i, %.lr.ph.i74 ], [ %.val17.i, %bb.l ]
  %.024.i = phi i32 [ 0, %.lr.ph.i74 ], [ %i.du, %bb.l ] ; 4 uses
  %.val18.i = load ptr, ptr %i.cz, align 8, !tbaa !67
  %.not.i = icmp eq ptr %.val18.i, null
  br i1 %.not.i, label %Gia_ManInsertState.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val16.i = load ptr, ptr %i.da, align 8, !tbaa !38 ; 2 uses
  %i.db = getelementptr i8, ptr %.val16.i, i64 8
  %.val19.val.i = load ptr, ptr %i.db, align 8, !tbaa !59
  %i.dc = getelementptr i8, ptr %.val16.i, i64 4
  %.val16.val.i = load i32, ptr %i.dc, align 4, !tbaa !39
  %i.dd = sub i32 %.024.i, %.val1725.i
  %i.de = add i32 %i.dd, %.val16.val.i
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds [4 x i8], ptr %.val19.val.i, i64 %i.df
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !56
  %.val21.i = load i32, ptr %i.cf, align 8, !tbaa !40 ; 2 uses
  %.val22.i = load ptr, ptr %i.cg, align 8, !tbaa !43
  %i.di = mul nsw i32 %.val21.i, %i.dh
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds [4 x i8], ptr %.val22.i, i64 %i.dj ; 2 uses
  %i.dl = lshr i32 %.024.i, 5
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !56
  %i.dp = and i32 %.024.i, 31
  %i.dq = shl nuw i32 1, %i.dp
  %i.dr = and i32 %i.do, %i.dq
  %.not15.i = icmp eq i32 %i.dr, 0
  %i.ds = sext i32 %.val21.i to i64
  %i.dt = shl nsw i64 %i.ds, 2                    ; 2 uses
  br i1 %.not15.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.memset.p0.i64(ptr align 4 %i.dk, i8 -1, i64 %i.dt, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.memset.p0.i64(ptr align 4 %i.dk, i8 0, i64 %i.dt, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.du = add nuw nsw i32 %.024.i, 1              ; 2 uses
  %.val17.i = load i32, ptr %i.cw, align 8, !tbaa !37 ; 2 uses
  %i.dv = icmp slt i32 %i.du, %.val17.i
  br i1 %i.dv, label %bb.h, label %Gia_ManInsertState.exit, !llvm.loop !2

Gia_ManInsertState.exit:                          ; preds = %bb.h, %bb.l, %bb.g
  call void @Gia_ManPerformOneIter(ptr noundef nonnull %i.i)
  %i.dw = call i32 @Gia_ManAnalyzeResult(ptr noundef nonnull %i.i, ptr noundef %i.cq, i32 noundef %2, i32 noundef %3)
  %i.dx = icmp ne i32 %i.dw, 0
  %or.cond = and i1 %i.ch, %i.dx
  %i.dy = load i32, ptr %i.by, align 8, !tbaa !117 ; 8 uses
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %Gia_ManInsertState.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !62
  %i.eb = getelementptr i8, ptr %i.ea, i64 4
  %.val = load i32, ptr %i.eb, align 4, !tbaa !39
  %i.ec = add nsw i32 %.val, -1
  %i.ed = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.dy, i32 noundef %i.ec) ; 0 uses
  %.pre112 = load ptr, ptr %i.bz, align 8, !tbaa !49
  br label %.loopexit

bb.n:                                             ; preds = %Gia_ManInsertState.exit
  br i1 %.not62, label %..backedge_crit_edge, label %bb.o

..backedge_crit_edge:                             ; preds = %bb.n
  %.pre110 = load ptr, ptr %i.bz, align 8, !tbaa !49
  br label %.backedge

bb.o:                                             ; preds = %bb.n
  %i.ee = srem i32 %i.dy, 5000
  %i.ef = icmp eq i32 %i.ee, 0
  %.pre111 = load ptr, ptr %i.bz, align 8, !tbaa !49 ; 5 uses
  br i1 %i.ef, label %bb.p, label %.backedge

bb.p:                                             ; preds = %bb.o
  %i.eg = getelementptr i8, ptr %.pre111, i64 4
  %.val68 = load i32, ptr %i.eg, align 4, !tbaa !53 ; 5 uses
  %i.eh = sitofp i32 %i.dy to double
  %i.ei = sitofp i32 %.val68 to double            ; 2 uses
  %i.ej = fdiv double %i.eh, %i.ei
  %i.ek = getelementptr i8, ptr %.pre111, i64 8
  %.val17.i76 = load ptr, ptr %i.ek, align 8, !tbaa !48 ; 3 uses
  %i.el = sext i32 %.val68 to i64
  %i.em = getelementptr [8 x i8], ptr %.val17.i76, i64 %i.el
  %i.en = getelementptr i8, ptr %i.em, i64 -8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !54 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !65
  %i.er = icmp eq i32 %i.eq, 0
  %i.es = icmp sgt i32 %.val68, 3
  %or.cond.i = and i1 %i.es, %i.er
  br i1 %or.cond.i, label %bb.q, label %.lr.ph.i78.preheader

bb.q:                                             ; preds = %bb.p
  %i.et = zext nneg i32 %.val68 to i64
  %i.eu = getelementptr [8 x i8], ptr %.val17.i76, i64 %i.et
  %i.ev = getelementptr i8, ptr %i.eu, i64 -16
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !54 ; 2 uses
  %.not18.i = icmp eq ptr %i.ew, null
  br i1 %.not18.i, label %Gia_ManCountDepth.exit, label %.lr.ph.i78.preheader

.lr.ph.i78.preheader:                             ; preds = %bb.q, %bb.p
  %.119.i.ph = phi ptr [ %i.eo, %bb.p ], [ %i.ew, %bb.q ]
  br label %.lr.ph.i78

.lr.ph.i78:                                       ; preds = %.lr.ph.i78.preheader, %bb.r
  %.020.i = phi i32 [ %i.ex, %bb.r ], [ 0, %.lr.ph.i78.preheader ]
  %.119.i = phi ptr [ %i.fc, %bb.r ], [ %.119.i.ph, %.lr.ph.i78.preheader ]
  %i.ex = add nuw nsw i32 %.020.i, 1              ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.119.i, i64 8
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !65 ; 2 uses
  %.not12.i = icmp eq i32 %i.ez, 0
  br i1 %.not12.i, label %Gia_ManCountDepth.exit, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i78
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds [8 x i8], ptr %.val17.i76, i64 %i.fa
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !54 ; 2 uses
  %.not.i79 = icmp eq ptr %i.fc, null
  br i1 %.not.i79, label %Gia_ManCountDepth.exit, label %.lr.ph.i78, !llvm.loop !3

Gia_ManCountDepth.exit:                           ; preds = %.lr.ph.i78, %bb.r, %bb.q
  %.0.lcssa.i = phi i32 [ 0, %bb.q ], [ %i.ex, %bb.r ], [ %i.ex, %.lr.ph.i78 ]
  %i.fd = load i32, ptr %i.o, align 4, !tbaa !41
  %i.fe = sext i32 %i.fd to i64
  %i.ff = shl nsw i64 %i.fe, 2
  %i.fg = add nsw i64 %i.ff, 16
  %i.fh = uitofp i64 %i.fg to double
  %i.fi = load i32, ptr %i.s, align 8, !tbaa !51
  %i.fj = sitofp i32 %i.fi to double
  %i.fk = fmul nnan double %i.fj, 4.000000e+00
  %i.fl = call nnan double @llvm.fmuladd.f64(double %i.ei, double %i.fh, double %i.fk)
  %i.fm = load i32, ptr %.pre111, align 8, !tbaa !47
  %i.fn = sitofp i32 %i.fm to double
  %i.fo = call nnan double @llvm.fmuladd.f64(double %i.fn, double 8.000000e+00, double %i.fl)
  %i.fp = fmul nnan double %i.fo, f0x3EB0000000000000
  %i.fq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.dy, i32 noundef %.val68, double noundef %i.ej, i32 noundef %.0.lcssa.i, double noundef %i.fp) ; 0 uses
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.fr = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %6) #22
  %i.fs = icmp slt i32 %i.fr, 0
  br i1 %i.fs, label %Abc_Clock.exit81, label %bb.s

bb.s:                                             ; preds = %Gia_ManCountDepth.exit
  %i.ft = load i64, ptr %6, align 8, !tbaa !115
  %i.fu = mul nsw i64 %i.ft, 1000000
  %i.fv = load i64, ptr %i.ci, align 8, !tbaa !116
  %i.fw = sdiv i64 %i.fv, 1000
  %i.fx = add nsw i64 %i.fw, %i.fu
  br label %Abc_Clock.exit81

Abc_Clock.exit81:                                 ; preds = %Gia_ManCountDepth.exit, %bb.s
  %.0.i80 = phi i64 [ %i.fx, %bb.s ], [ -1, %Gia_ManCountDepth.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.fy = sub nsw i64 %.0.i80, %.0.i
  %i.fz = sitofp i64 %i.fy to double
  %i.ga = fdiv double %i.fz, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.5, double noundef %i.ga)
  br label %.backedge

.backedge:                                        ; preds = %..backedge_crit_edge, %bb.o, %Abc_Clock.exit81, %bb.f
  %i.gb = phi ptr [ %.pre110, %..backedge_crit_edge ], [ %.pre111, %bb.o ], [ %.pre111, %Abc_Clock.exit81 ], [ %i.cj, %bb.f ] ; 3 uses
  %i.gc = phi i32 [ %i.dy, %..backedge_crit_edge ], [ %i.dy, %bb.o ], [ %i.dy, %Abc_Clock.exit81 ], [ %i.cm, %bb.f ] ; 3 uses
  %i.gd = getelementptr i8, ptr %i.gb, i64 4
  %.val70 = load i32, ptr %i.gd, align 4, !tbaa !53 ; 2 uses
  %i.ge = add nsw i32 %.val70, -1
  %i.gf = icmp slt i32 %i.gc, %i.ge
  br i1 %i.gf, label %bb.c, label %.loopexit, !llvm.loop !113

.loopexit:                                        ; preds = %.backedge, %Gia_ManEraStateHash.exit, %bb.m, %bb.d
  %i.gg = phi ptr [ %i.cj, %bb.d ], [ %.pre112, %bb.m ], [ %i.cb, %Gia_ManEraStateHash.exit ], [ %i.gb, %.backedge ] ; 2 uses
  %i.gh = phi i32 [ %i.ck, %bb.d ], [ %i.dy, %bb.m ], [ %i.ca, %Gia_ManEraStateHash.exit ], [ %i.gc, %.backedge ]
  %.0 = phi i32 [ -1, %bb.d ], [ 0, %bb.m ], [ 1, %Gia_ManEraStateHash.exit ], [ 1, %.backedge ]
  %i.gi = add nsw i32 %i.gh, -1                   ; 2 uses
  %i.gj = getelementptr i8, ptr %i.gg, i64 4
  %.val16.i82 = load i32, ptr %i.gj, align 4, !tbaa !53 ; 3 uses
  %i.gk = getelementptr i8, ptr %i.gg, i64 8
  %.val17.i83 = load ptr, ptr %i.gk, align 8, !tbaa !48 ; 3 uses
  %i.gl = sext i32 %.val16.i82 to i64
  %i.gm = getelementptr [8 x i8], ptr %.val17.i83, i64 %i.gl
  %i.gn = getelementptr i8, ptr %i.gm, i64 -8
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !54 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !65
  %i.gr = icmp eq i32 %i.gq, 0
  %i.gs = icmp sgt i32 %.val16.i82, 3
  %or.cond.i84 = and i1 %i.gs, %i.gr
  br i1 %or.cond.i84, label %bb.t, label %.lr.ph.i87.preheader

bb.t:                                             ; preds = %.loopexit
  %i.gt = zext nneg i32 %.val16.i82 to i64
  %i.gu = getelementptr [8 x i8], ptr %.val17.i83, i64 %i.gt
  %i.gv = getelementptr i8, ptr %i.gu, i64 -16
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !54 ; 2 uses
  %.not18.i93 = icmp eq ptr %i.gw, null
  br i1 %.not18.i93, label %Gia_ManCountDepth.exit94, label %.lr.ph.i87.preheader

.lr.ph.i87.preheader:                             ; preds = %bb.t, %.loopexit
  %.119.i89.ph = phi ptr [ %i.go, %.loopexit ], [ %i.gw, %bb.t ]
  br label %.lr.ph.i87

.lr.ph.i87:                                       ; preds = %.lr.ph.i87.preheader, %bb.u
  %.020.i88 = phi i32 [ %i.gx, %bb.u ], [ 0, %.lr.ph.i87.preheader ]
  %.119.i89 = phi ptr [ %i.hc, %bb.u ], [ %.119.i89.ph, %.lr.ph.i87.preheader ]
  %i.gx = add nuw nsw i32 %.020.i88, 1            ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.119.i89, i64 8
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !65 ; 2 uses
  %.not12.i90 = icmp eq i32 %i.gz, 0
  br i1 %.not12.i90, label %Gia_ManCountDepth.exit94, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i87
  %i.ha = sext i32 %i.gz to i64
  %i.hb = getelementptr inbounds [8 x i8], ptr %.val17.i83, i64 %i.ha
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !54 ; 2 uses
  %.not.i91 = icmp eq ptr %i.hc, null
  br i1 %.not.i91, label %Gia_ManCountDepth.exit94, label %.lr.ph.i87, !llvm.loop !3

Gia_ManCountDepth.exit94:                         ; preds = %.lr.ph.i87, %bb.u, %bb.t
  %.0.lcssa.i92 = phi i32 [ 0, %bb.t ], [ %i.gx, %bb.u ], [ %i.gx, %.lr.ph.i87 ]
  %i.hd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.gi, i32 noundef %.0.lcssa.i92) ; 0 uses
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.he = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #22
  %i.hf = icmp slt i32 %i.he, 0
  br i1 %i.hf, label %Abc_Clock.exit96, label %bb.v

bb.v:                                             ; preds = %Gia_ManCountDepth.exit94
  %i.hg = load i64, ptr %5, align 8, !tbaa !115
  %i.hh = mul nsw i64 %i.hg, 1000000
  %i.hi = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !116
  %i.hk = sdiv i64 %i.hj, 1000
  %i.hl = add nsw i64 %i.hk, %i.hh
  br label %Abc_Clock.exit96

Abc_Clock.exit96:                                 ; preds = %Gia_ManCountDepth.exit94, %bb.v
  %.0.i95 = phi i64 [ %i.hl, %bb.v ], [ -1, %Gia_ManCountDepth.exit94 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.hm = sub nsw i64 %.0.i95, %.0.i
  %i.hn = sitofp i64 %i.hm to double
  %i.ho = fdiv double %i.hn, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.5, double noundef %i.ho)
  %.not63 = icmp eq i32 %3, 0
  br i1 %.not63, label %bb.y, label %bb.w

bb.w:                                             ; preds = %Abc_Clock.exit96
  %i.hp = call noalias ptr @fopen(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) ; 3 uses
  %i.hq = icmp eq ptr %i.hp, null
  br i1 %i.hq, label %.sink.split, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hr = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !61
  %i.ht = getelementptr i8, ptr %0, i64 16
  %.val64 = load i32, ptr %i.ht, align 8, !tbaa !37 ; 2 uses
  %i.hu = getelementptr i8, ptr %0, i64 64
  %.val65 = load ptr, ptr %i.hu, align 8, !tbaa !38
  %i.hv = getelementptr i8, ptr %.val65, i64 4
  %.val65.val = load i32, ptr %i.hv, align 4, !tbaa !39
  %i.hw = sub nsw i32 %.val65.val, %.val64
  %i.hx = getelementptr i8, ptr %0, i64 72
  %.val73 = load ptr, ptr %i.hx, align 8, !tbaa !69
  %i.hy = getelementptr i8, ptr %.val73, i64 4
  %.val73.val = load i32, ptr %i.hy, align 4, !tbaa !39
  %i.hz = sub nsw i32 %.val73.val, %.val64
  call void @Gia_ManStgPrint(ptr noundef nonnull %i.hp, ptr noundef %i.hs, i32 noundef %i.hw, i32 noundef %i.hz, i32 noundef %i.gi) #22
  %i.ia = call i32 @fclose(ptr noundef nonnull %i.hp) ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %bb.w, %bb.x
  %.str.9.sink = phi ptr [ @.str.10, %bb.x ], [ @.str.9, %bb.w ]
  %i.ib = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.9.sink, ptr noundef nonnull @.str.7) ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %.sink.split, %Abc_Clock.exit96
  call void @Gia_ManEraFree(ptr noundef %i.i)
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #12

; Function Attrs: inlinehint nounwind uwtable
define internal void @Abc_Print(i32 %0, ptr noundef %1, ...) unnamed_addr #13 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !56
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (...) @Abc_FrameIsBridgeMode() #22 ; 0 uses
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = call i32 (...) @Abc_FrameIsBridgeMode() #22
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call ptr @vnsprintf(ptr noundef %1, ptr noundef nonnull %2) #22 ; 3 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !122
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #24
  %i.g = trunc i64 %i.f to i32
  %i.h = call i32 @Gia_ManToBridgeText(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.d) #22 ; 0 uses
  call void @free(ptr noundef %i.d) #22
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !122, !noalias !123
  %i.j = call i32 @vfprintf(ptr noundef %i.i, ptr noundef %1, ptr noundef nonnull %2) #22, !inline_history !120 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #11

declare void @Gia_ManStgPrint(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind
end_hunk_0
