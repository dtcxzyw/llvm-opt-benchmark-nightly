Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/xsatSolver?download=true
inline.NumInlined: 383
inline.NumDeleted: 70
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@xSAT_SolverClaNew:bb.a
  %i.cg = getelementptr inbounds [4 x i8], ptr %.val16.i, i64 %i.cf ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !31
  %i.ci = load i32, ptr %i.bp, align 8, !tbaa !51 ; 2 uses
  %.not.i = icmp eq i32 %i.ch, %i.ci
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 %i.ci, ptr %i.cg, align 4, !tbaa !31
  %i.cj = add nsw i32 %.022.i, 1
  %.val.pre.i = load i32, ptr %i.b, align 4, !tbaa !38
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.val.i = phi i32 [ %.val.pre.i, %bb.r ], [ %.val24.i, %bb.q ] ; 2 uses
  %.1.i = phi i32 [ %i.cj, %bb.r ], [ %.022.i, %bb.q ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ck = sext i32 %.val.i to i64
  %i.cl = icmp slt i64 %indvars.iv.next.i, %i.ck
  br i1 %i.cl, label %bb.q, label %xSAT_SolverClaCalcLBD2.exit.loopexit, !llvm.loop !1

xSAT_SolverClaCalcLBD2.exit.loopexit:             ; preds = %bb.s
  %i.cm = shl i32 %.1.i, 4
  br label %xSAT_SolverClaCalcLBD2.exit

xSAT_SolverClaCalcLBD2.exit:                      ; preds = %xSAT_SolverClaCalcLBD2.exit.loopexit, %Vec_IntPush.exit
  %.0.lcssa.i = phi i32 [ 0, %Vec_IntPush.exit ], [ %i.cm, %xSAT_SolverClaCalcLBD2.exit.loopexit ]
  %i.cn = load i32, ptr %i.ac, align 4
  %i.co = and i32 %i.cn, 15
  %i.cp = or disjoint i32 %i.co, %.0.lcssa.i
  store i32 %i.cp, ptr %i.ac, align 4
  %i.cq = load i32, ptr %i.aj, align 4, !tbaa !49
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.cr
  store i32 0, ptr %i.cs, align 4, !tbaa !30
  %.val67 = load i32, ptr %i.b, align 4, !tbaa !38
  %i.ct = sext i32 %.val67 to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !54
  %i.cw = add nsw i64 %i.cv, %i.ct
  store i64 %i.cw, ptr %i.cu, align 8, !tbaa !54
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !55
  %i.cz = load i32, ptr %i.aj, align 4, !tbaa !49
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.da ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !30
  %i.dd = add i32 %i.dc, %i.cy
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !30
  %i.de = load i32, ptr %i.aj, align 4, !tbaa !49
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.df
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !30
  %.not.i78 = icmp sgt i32 %i.dh, -1
  br i1 %.not.i78, label %xSAT_SolverClaActBump.exit, label %bb.t

bb.t:                                             ; preds = %xSAT_SolverClaCalcLBD2.exit
  %i.di = load ptr, ptr %i.ao, align 8, !tbaa !50 ; 2 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 4
  %.val13.i.i = load i32, ptr %i.dj, align 4, !tbaa !38
  %i.dk = icmp sgt i32 %.val13.i.i, 0
  br i1 %i.dk, label %xSAT_SolverReadClause.exit.i.i, label %xSAT_SolverClaActRescale.exit.i

xSAT_SolverReadClause.exit.i.i:                   ; preds = %bb.t, %xSAT_SolverReadClause.exit.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %xSAT_SolverReadClause.exit.i.i ], [ 0, %bb.t ] ; 2 uses
  %i.dl = phi ptr [ %i.ea, %xSAT_SolverReadClause.exit.i.i ], [ %i.di, %bb.t ]
  %i.dm = getelementptr i8, ptr %i.dl, i64 8
  %.val11.i.i = load ptr, ptr %i.dm, align 8, !tbaa !39
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.val11.i.i, i64 %indvars.iv.i.i
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !31 ; 2 uses
  %.val12.i.i = load ptr, ptr %0, align 8, !tbaa !43
  %.not.i.i.i.i = icmp ne i32 %i.do, -1
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.dp = getelementptr inbounds nuw i8, ptr %.val12.i.i, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !47
  %i.dr = sext i32 %i.do to i64
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.dr ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !49
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.dw ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !30
  %i.dz = lshr i32 %i.dy, 14
  store i32 %i.dz, ptr %i.dx, align 4, !tbaa !30
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ea = load ptr, ptr %i.ao, align 8, !tbaa !50 ; 2 uses
  %i.eb = getelementptr i8, ptr %i.ea, i64 4
  %.val.i.i = load i32, ptr %i.eb, align 4, !tbaa !38
  %i.ec = sext i32 %.val.i.i to i64
  %i.ed = icmp slt i64 %indvars.iv.next.i.i, %i.ec
  br i1 %i.ed, label %xSAT_SolverReadClause.exit.i.i, label %xSAT_SolverClaActRescale.exit.i, !llvm.loop !2

xSAT_SolverClaActRescale.exit.i:                  ; preds = %xSAT_SolverReadClause.exit.i.i, %bb.t
  %i.ee = load i32, ptr %i.cx, align 4, !tbaa !55
  %i.ef = ashr i32 %i.ee, 14
  %i.eg = tail call range(i32 32, 131072) i32 @llvm.smax.i32(i32 range(i32 -131072, 131072) %i.ef, i32 1024)
  store i32 %i.eg, ptr %i.cx, align 4, !tbaa !55
  br label %xSAT_SolverClaActBump.exit

bb.u:                                             ; preds = %xSAT_SolverReadClause.exit
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !56 ; 6 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 4 ; 3 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !38 ; 7 uses
  %i.el = load i32, ptr %i.ei, align 8, !tbaa !41
  %i.em = icmp eq i32 %i.ek, %i.el
  br i1 %i.em, label %bb.v, label %Vec_IntPush.exit86

bb.v:                                             ; preds = %bb.u
  %i.en = icmp slt i32 %i.ek, 16
  br i1 %i.en, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !39 ; 2 uses
  %.not9.i.i84 = icmp eq ptr %i.ep, null
  br i1 %.not9.i.i84, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eq = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ep, i64 noundef 64) #19
  br label %Vec_IntGrow.exit.i85

bb.y:                                             ; preds = %bb.w
  %i.er = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #18
  br label %Vec_IntGrow.exit.i85

Vec_IntGrow.exit.i85:                             ; preds = %bb.y, %bb.x
  %i.es = phi ptr [ %i.eq, %bb.x ], [ %i.er, %bb.y ]
  store ptr %i.es, ptr %i.eo, align 8, !tbaa !39
  br label %Vec_IntGrow.exit11.sink.split.i82

bb.z:                                             ; preds = %bb.v
  %i.et = icmp samesign ult i32 %i.ek, 1073741823
  %i.eu = shl nuw nsw i32 %i.ek, 1
  %spec.select.i79 = select i1 %i.et, i32 %i.eu, i32 2147483647 ; 3 uses
  %.not.i9.i80 = icmp samesign ult i32 %i.ek, %spec.select.i79
  br i1 %.not.i9.i80, label %bb.aa, label %Vec_IntPush.exit86

bb.aa:                                            ; preds = %bb.z
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !39 ; 2 uses
  %.not9.i10.i81 = icmp eq ptr %i.ew, null
  %i.ex = zext nneg i32 %spec.select.i79 to i64
  %i.ey = shl nuw nsw i64 %i.ex, 2                ; 2 uses
  br i1 %.not9.i10.i81, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ez = tail call ptr @realloc(ptr noundef nonnull %i.ew, i64 noundef %i.ey) #19
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.fa = tail call noalias ptr @malloc(i64 noundef %i.ey) #18
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.fb = phi ptr [ %i.ez, %bb.ab ], [ %i.fa, %bb.ac ]
  store ptr %i.fb, ptr %i.ev, align 8, !tbaa !39
  br label %Vec_IntGrow.exit11.sink.split.i82

Vec_IntGrow.exit11.sink.split.i82:                ; preds = %bb.ad, %Vec_IntGrow.exit.i85
  %spec.select.sink.i83 = phi i32 [ %spec.select.i79, %bb.ad ], [ 16, %Vec_IntGrow.exit.i85 ]
  store i32 %spec.select.sink.i83, ptr %i.ei, align 8, !tbaa !41
  %.pre98 = load i32, ptr %i.ej, align 4, !tbaa !38
  br label %Vec_IntPush.exit86

Vec_IntPush.exit86:                               ; preds = %bb.u, %bb.z, %Vec_IntGrow.exit11.sink.split.i82
  %i.fc = phi i32 [ %i.ek, %bb.u ], [ %i.ek, %bb.z ], [ %.pre98, %Vec_IntGrow.exit11.sink.split.i82 ] ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !39
  %i.ff = add nsw i32 %i.fc, 1
  store i32 %i.ff, ptr %i.ej, align 4, !tbaa !38
  %i.fg = sext i32 %i.fc to i64
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.fe, i64 %i.fg
  store i32 %i.x, ptr %i.fh, align 4, !tbaa !31
  %.val66 = load i32, ptr %i.b, align 4, !tbaa !38
  %i.fi = sext i32 %.val66 to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !82
  %i.fl = add nsw i64 %i.fk, %i.fi
  store i64 %i.fl, ptr %i.fj, align 8, !tbaa !82
  br label %xSAT_SolverClaActBump.exit

xSAT_SolverClaActBump.exit:                       ; preds = %xSAT_SolverClaActRescale.exit.i, %xSAT_SolverClaCalcLBD2.exit, %Vec_IntPush.exit86
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ac, i64 12 ; 3 uses
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !30
  %i.fo = load i32, ptr %i.ak, align 4, !tbaa !30 ; 2 uses
  %.val = load i32, ptr %i.b, align 4, !tbaa !38
  %i.fp = icmp eq i32 %.val, 2
  %i.fq = xor i32 %i.fo, 1
  %i.fr = sext i32 %i.fq to i64                   ; 2 uses
  %.sroa.515.0.insert.ext = zext i32 %i.fn to i64
  %.sroa.515.0.insert.shift = shl nuw i64 %.sroa.515.0.insert.ext, 32
  %.sroa.010.0.insert.ext = zext i32 %i.x to i64  ; 2 uses
  %.sroa.010.0.insert.insert = or disjoint i64 %.sroa.515.0.insert.shift, %.sroa.010.0.insert.ext ; 2 uses
  br i1 %i.fp, label %bb.ae, label %bb.ar

bb.ae:                                            ; preds = %xSAT_SolverClaActBump.exit
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !57
  %i.fu = getelementptr i8, ptr %i.ft, i64 8
  %.val76 = load ptr, ptr %i.fu, align 8, !tbaa !60 ; 2 uses
  %i.fv = getelementptr inbounds [16 x i8], ptr %.val76, i64 %i.fr ; 6 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 4 ; 3 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !63 ; 4 uses
  %i.fy = load i32, ptr %i.fv, align 8, !tbaa !64
  %i.fz = icmp eq i32 %i.fx, %i.fy
  br i1 %i.fz, label %bb.af, label %xSAT_WatchListPush.exit

bb.af:                                            ; preds = %bb.ae
  %i.ga = icmp slt i32 %i.fx, 4
  %i.gb = lshr i32 %i.fx, 1
  %i.gc = mul nuw nsw i32 %i.gb, 3
  %i.gd = select i1 %i.ga, i32 4, i32 %i.gc       ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fv, i64 8 ; 2 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !65 ; 2 uses
  %.not.i87 = icmp eq ptr %i.gf, null
  %i.gg = zext nneg i32 %i.gd to i64
  %i.gh = shl nuw nsw i64 %i.gg, 3                ; 2 uses
  br i1 %.not.i87, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gi = tail call ptr @realloc(ptr noundef nonnull %i.gf, i64 noundef %i.gh) #19
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.gj = tail call noalias ptr @malloc(i64 noundef %i.gh) #18
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.gk = phi ptr [ %i.gi, %bb.ag ], [ %i.gj, %bb.ah ] ; 2 uses
  store ptr %i.gk, ptr %i.ge, align 8, !tbaa !65
  %i.gl = icmp eq ptr %i.gk, null
  br i1 %i.gl, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.gm = load i32, ptr %i.fv, align 8, !tbaa !64
  %i.gn = sitofp i32 %i.gm to double
  %i.go = fmul nnan double %i.gn, f0x3EB0000000000000
  %i.gp = uitofp nneg i32 %i.gd to double
  %i.gq = fmul nnan double %i.gp, f0x3EB0000000000000
  %i.gr = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %i.go, double noundef %i.gq) ; 0 uses
  %i.gs = load ptr, ptr @stdout, align 8, !tbaa !67
  %i.gt = tail call i32 @fflush(ptr noundef %i.gs) ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  store i32 %i.gd, ptr %i.fv, align 8, !tbaa !64
  %.pre.i88 = load i32, ptr %i.fw, align 4, !tbaa !63
  %.pre101 = load ptr, ptr %i.fs, align 8, !tbaa !57
  %.phi.trans.insert102 = getelementptr i8, ptr %.pre101, i64 8
  %.val75.pre = load ptr, ptr %.phi.trans.insert102, align 8, !tbaa !60
  br label %xSAT_WatchListPush.exit

xSAT_WatchListPush.exit:                          ; preds = %bb.ae, %bb.ak
  %.val75 = phi ptr [ %.val75.pre, %bb.ak ], [ %.val76, %bb.ae ]
  %i.gu = phi i32 [ %.pre.i88, %bb.ak ], [ %i.fx, %bb.ae ] ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !65
  %i.gx = add nsw i32 %i.gu, 1
  store i32 %i.gx, ptr %i.fw, align 4, !tbaa !63
  %i.gy = sext i32 %i.gu to i64
  %i.gz = getelementptr inbounds [8 x i8], ptr %i.gw, i64 %i.gy
  store i64 %.sroa.010.0.insert.insert, ptr %i.gz, align 4, !tbaa !31
  %i.ha = load i32, ptr %i.fm, align 4, !tbaa !30
  %i.hb = xor i32 %i.ha, 1
  %i.hc = sext i32 %i.hb to i64
  %i.hd = getelementptr inbounds [16 x i8], ptr %.val75, i64 %i.hc ; 6 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 4 ; 3 uses
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !63 ; 4 uses
  %i.hg = load i32, ptr %i.hd, align 8, !tbaa !64
  %i.hh = icmp eq i32 %i.hf, %i.hg
  br i1 %i.hh, label %bb.al, label %xSAT_WatchListPush.exit91

bb.al:                                            ; preds = %xSAT_WatchListPush.exit
  %i.hi = icmp slt i32 %i.hf, 4
  %i.hj = lshr i32 %i.hf, 1
  %i.hk = mul nuw nsw i32 %i.hj, 3
  %i.hl = select i1 %i.hi, i32 4, i32 %i.hk       ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hd, i64 8 ; 2 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !65 ; 2 uses
  %.not.i89 = icmp eq ptr %i.hn, null
  %i.ho = zext nneg i32 %i.hl to i64
  %i.hp = shl nuw nsw i64 %i.ho, 3                ; 2 uses
  br i1 %.not.i89, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hq = tail call ptr @realloc(ptr noundef nonnull %i.hn, i64 noundef %i.hp) #19
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.hr = tail call noalias ptr @malloc(i64 noundef %i.hp) #18
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.hs = phi ptr [ %i.hq, %bb.am ], [ %i.hr, %bb.an ] ; 2 uses
  store ptr %i.hs, ptr %i.hm, align 8, !tbaa !65
  %i.ht = icmp eq ptr %i.hs, null
  br i1 %i.ht, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.hu = load i32, ptr %i.hd, align 8, !tbaa !64
  %i.hv = sitofp i32 %i.hu to double
  %i.hw = fmul nnan double %i.hv, f0x3EB0000000000000
  %i.hx = uitofp nneg i32 %i.hl to double
  %i.hy = fmul nnan double %i.hx, f0x3EB0000000000000
  %i.hz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %i.hw, double noundef %i.hy) ; 0 uses
  %i.ia = load ptr, ptr @stdout, align 8, !tbaa !67
  %i.ib = tail call i32 @fflush(ptr noundef %i.ia) ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  store i32 %i.hl, ptr %i.hd, align 8, !tbaa !64
  %.pre.i90 = load i32, ptr %i.he, align 4, !tbaa !63
  br label %xSAT_WatchListPush.exit91

xSAT_WatchListPush.exit91:                        ; preds = %xSAT_WatchListPush.exit, %bb.aq
  %i.ic = phi i32 [ %.pre.i90, %bb.aq ], [ %i.hf, %xSAT_WatchListPush.exit ] ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !65
  %i.if = add nsw i32 %i.ic, 1
  store i32 %i.if, ptr %i.he, align 4, !tbaa !63
  br label %bb.be

bb.ar:                                            ; preds = %xSAT_SolverClaActBump.exit
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !68
  %i.ii = getelementptr i8, ptr %i.ih, i64 8
  %.val74 = load ptr, ptr %i.ii, align 8, !tbaa !60 ; 2 uses
  %i.ij = getelementptr inbounds [16 x i8], ptr %.val74, i64 %i.fr ; 6 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 4 ; 3 uses
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !63 ; 4 uses
  %i.im = load i32, ptr %i.ij, align 8, !tbaa !64
  %i.in = icmp eq i32 %i.il, %i.im
  br i1 %i.in, label %bb.as, label %xSAT_WatchListPush.exit94

bb.as:                                            ; preds = %bb.ar
  %i.io = icmp slt i32 %i.il, 4
  %i.ip = lshr i32 %i.il, 1
  %i.iq = mul nuw nsw i32 %i.ip, 3
  %i.ir = select i1 %i.io, i32 4, i32 %i.iq       ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ij, i64 8 ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !65 ; 2 uses
  %.not.i92 = icmp eq ptr %i.it, null
  %i.iu = zext nneg i32 %i.ir to i64
  %i.iv = shl nuw nsw i64 %i.iu, 3                ; 2 uses
  br i1 %.not.i92, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.iw = tail call ptr @realloc(ptr noundef nonnull %i.it, i64 noundef %i.iv) #19
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.ix = tail call noalias ptr @malloc(i64 noundef %i.iv) #18
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.iy = phi ptr [ %i.iw, %bb.at ], [ %i.ix, %bb.au ] ; 2 uses
  store ptr %i.iy, ptr %i.is, align 8, !tbaa !65
  %i.iz = icmp eq ptr %i.iy, null
  br i1 %i.iz, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ja = load i32, ptr %i.ij, align 8, !tbaa !64
  %i.jb = sitofp i32 %i.ja to double
  %i.jc = fmul nnan double %i.jb, f0x3EB0000000000000
  %i.jd = uitofp nneg i32 %i.ir to double
  %i.je = fmul nnan double %i.jd, f0x3EB0000000000000
  %i.jf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %i.jc, double noundef %i.je) ; 0 uses
  %i.jg = load ptr, ptr @stdout, align 8, !tbaa !67
  %i.jh = tail call i32 @fflush(ptr noundef %i.jg) ; 0 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  store i32 %i.ir, ptr %i.ij, align 8, !tbaa !64
  %.pre.i93 = load i32, ptr %i.ik, align 4, !tbaa !63
  %.pre99 = load ptr, ptr %i.ig, align 8, !tbaa !68
  %.phi.trans.insert = getelementptr i8, ptr %.pre99, i64 8
  %.val73.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !60
  br label %xSAT_WatchListPush.exit94

xSAT_WatchListPush.exit94:                        ; preds = %bb.ar, %bb.ax
  %.val73 = phi ptr [ %.val73.pre, %bb.ax ], [ %.val74, %bb.ar ]
  %i.ji = phi i32 [ %.pre.i93, %bb.ax ], [ %i.il, %bb.ar ] ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !65
  %i.jl = add nsw i32 %i.ji, 1
  store i32 %i.jl, ptr %i.ik, align 4, !tbaa !63
  %i.jm = sext i32 %i.ji to i64
  %i.jn = getelementptr inbounds [8 x i8], ptr %i.jk, i64 %i.jm
  store i64 %.sroa.010.0.insert.insert, ptr %i.jn, align 4, !tbaa !31
  %i.jo = load i32, ptr %i.fm, align 4, !tbaa !30
  %i.jp = xor i32 %i.jo, 1
  %i.jq = sext i32 %i.jp to i64
  %i.jr = getelementptr inbounds [16 x i8], ptr %.val73, i64 %i.jq ; 6 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 4 ; 3 uses
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !63 ; 4 uses
  %i.ju = load i32, ptr %i.jr, align 8, !tbaa !64
  %i.jv = icmp eq i32 %i.jt, %i.ju
  br i1 %i.jv, label %bb.ay, label %xSAT_WatchListPush.exit97

bb.ay:                                            ; preds = %xSAT_WatchListPush.exit94
  %i.jw = icmp slt i32 %i.jt, 4
  %i.jx = lshr i32 %i.jt, 1
  %i.jy = mul nuw nsw i32 %i.jx, 3
  %i.jz = select i1 %i.jw, i32 4, i32 %i.jy       ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jr, i64 8 ; 2 uses
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !65 ; 2 uses
  %.not.i95 = icmp eq ptr %i.kb, null
  %i.kc = zext nneg i32 %i.jz to i64
  %i.kd = shl nuw nsw i64 %i.kc, 3                ; 2 uses
  br i1 %.not.i95, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ke = tail call ptr @realloc(ptr noundef nonnull %i.kb, i64 noundef %i.kd) #19
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.kf = tail call noalias ptr @malloc(i64 noundef %i.kd) #18
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.kg = phi ptr [ %i.ke, %bb.az ], [ %i.kf, %bb.ba ] ; 2 uses
  store ptr %i.kg, ptr %i.ka, align 8, !tbaa !65
  %i.kh = icmp eq ptr %i.kg, null
  br i1 %i.kh, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.ki = load i32, ptr %i.jr, align 8, !tbaa !64
  %i.kj = sitofp i32 %i.ki to double
  %i.kk = fmul nnan double %i.kj, f0x3EB0000000000000
  %i.kl = uitofp nneg i32 %i.jz to double
  %i.km = fmul nnan double %i.kl, f0x3EB0000000000000
  %i.kn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %i.kk, double noundef %i.km) ; 0 uses
  %i.ko = load ptr, ptr @stdout, align 8, !tbaa !67
  %i.kp = tail call i32 @fflush(ptr noundef %i.ko) ; 0 uses
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  store i32 %i.jz, ptr %i.jr, align 8, !tbaa !64
  %.pre.i96 = load i32, ptr %i.js, align 4, !tbaa !63
  br label %xSAT_WatchListPush.exit97

xSAT_WatchListPush.exit97:                        ; preds = %xSAT_WatchListPush.exit94, %bb.bd
  %i.kq = phi i32 [ %.pre.i96, %bb.bd ], [ %i.jt, %xSAT_WatchListPush.exit94 ] ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !65
  %i.kt = add nsw i32 %i.kq, 1
  store i32 %i.kt, ptr %i.js, align 4, !tbaa !63
  br label %bb.be

bb.be:                                            ; preds = %xSAT_WatchListPush.exit97, %xSAT_WatchListPush.exit91
  %.sink = phi i32 [ %i.kq, %xSAT_WatchListPush.exit97 ], [ %i.ic, %xSAT_WatchListPush.exit91 ]
  %.sink124 = phi ptr [ %i.ks, %xSAT_WatchListPush.exit97 ], [ %i.ie, %xSAT_WatchListPush.exit91 ]
  %.sroa.5.0.insert.shift7.pn.in = zext i32 %i.fo to i64
  %.sroa.5.0.insert.shift7.pn = shl nuw i64 %.sroa.5.0.insert.shift7.pn.in, 32
  %.sroa.0.0.insert.insert4.sink = or disjoint i64 %.sroa.5.0.insert.shift7.pn, %.sroa.010.0.insert.ext
  %i.ku = sext i32 %.sink to i64
  %i.kv = getelementptr inbounds [8 x i8], ptr %.sink124, i64 %i.ku
  store i64 %.sroa.0.0.insert.insert4.sink, ptr %i.kv, align 4, !tbaa !31
  ret i32 %i.x
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define noundef i32 @xSAT_SolverEnqueue(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = ashr i32 %1, 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.d = trunc i32 %1 to i8
  %i.e = and i8 %i.d, 1
  %i.f = getelementptr i8, ptr %i.c, i64 8
  %.val12 = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.g = sext i32 %i.a to i64                     ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.val12, i64 %i.g
  store i8 %i.e, ptr %i.h, align 1, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !52
  %i.k = getelementptr i8, ptr %0, i64 112
  %.val13 = load ptr, ptr %i.k, align 8, !tbaa !69
  %i.l = getelementptr i8, ptr %.val13, i64 4
  %.val13.val = load i32, ptr %i.l, align 4, !tbaa !38
  %i.m = getelementptr i8, ptr %i.j, i64 8
  %.val11 = load ptr, ptr %i.m, align 8, !tbaa !39
  %i.n = getelementptr inbounds [4 x i8], ptr %.val11, i64 %i.g
  store i32 %.val13.val, ptr %i.n, align 4, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !70
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %.val = load ptr, ptr %i.q, align 8, !tbaa !39
  %i.r = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.g
  store i32 %2, ptr %i.r, align 4, !tbaa !31
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !71   ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !38   ; 7 uses
  %i.w = load i32, ptr %i.t, align 8, !tbaa !41
  %i.x = icmp eq i32 %i.v, %i.w
  br i1 %i.x, label %bb.b, label %Vec_IntPush.exit

bb.b:                                             ; preds = %bb.a
  %i.y = icmp slt i32 %i.v, 16
  br i1 %i.y, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !39  ; 2 uses
  %.not9.i.i = icmp eq ptr %i.aa, null
  br i1 %.not9.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.aa, i64 noundef 64) #19
  br label %Vec_IntGrow.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ac = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #18
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.e, %bb.d
  %i.ad = phi ptr [ %i.ab, %bb.d ], [ %i.ac, %bb.e ]
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !39
  br label %Vec_IntGrow.exit11.sink.split.i

bb.f:                                             ; preds = %bb.b
  %i.ae = icmp samesign ult i32 %i.v, 1073741823
  %i.af = shl nuw nsw i32 %i.v, 1
  %spec.select.i = select i1 %i.ae, i32 %i.af, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.v, %spec.select.i
  br i1 %.not.i9.i, label %bb.g, label %Vec_IntPush.exit

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !39 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.ah, null
  %i.ai = zext nneg i32 %spec.select.i to i64
  %i.aj = shl nuw nsw i64 %i.ai, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = tail call ptr @realloc(ptr noundef nonnull %i.ah, i64 noundef %i.aj) #19
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.al = tail call noalias ptr @malloc(i64 noundef %i.aj) #18
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.am = phi ptr [ %i.ak, %bb.h ], [ %i.al, %bb.i ]
  store ptr %i.am, ptr %i.ag, align 8, !tbaa !39
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.j, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.j ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.t, align 8, !tbaa !41
  %.pre = load i32, ptr %i.u, align 4, !tbaa !38
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.a, %bb.f, %Vec_IntGrow.exit11.sink.split.i
  %i.an = phi i32 [ %i.v, %bb.a ], [ %i.v, %bb.f ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !39
  %i.aq = add nsw i32 %i.an, 1
  store i32 %i.aq, ptr %i.u, align 4, !tbaa !38
  %i.ar = sext i32 %i.an to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.ar
  store i32 %1, ptr %i.as, align 4, !tbaa !31
  ret i32 1
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @xSAT_SolverCancelUntil(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112        ; 2 uses
  %.val39 = load ptr, ptr %i.a, align 8, !tbaa !69 ; 3 uses
  %i.b = getelementptr i8, ptr %.val39, i64 4
  %.val39.val = load i32, ptr %i.b, align 4, !tbaa !38
  %.not = icmp sgt i32 %.val39.val, %1
  br i1 %.not, label %bb.b, label %bb.ab

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !71   ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 4
  %.val = load i32, ptr %i.e, align 4, !tbaa !38  ; 2 uses
  %i.f = sext i32 %1 to i64                       ; 3 uses
  %i.g = getelementptr i8, ptr %.val39, i64 8
  %.val3548 = load ptr, ptr %i.g, align 8, !tbaa !39 ; 2 uses
  %i.h = getelementptr inbounds [4 x i8], ptr %.val3548, i64 %i.f
  %i.i = load i32, ptr %i.h, align 4, !tbaa !31   ; 2 uses
  %.not29.not49 = icmp sgt i32 %.val, %i.i
  br i1 %.not29.not49, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = sext i32 %.val to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.aa
  %indvars.iv = phi i64 [ %i.n, %.lr.ph ], [ %indvars.iv.next, %bb.aa ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 4 uses
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !71
  %i.p = getelementptr i8, ptr %i.o, i64 8
  %.val34 = load ptr, ptr %i.p, align 8, !tbaa !39
  %i.q = getelementptr inbounds [4 x i8], ptr %.val34, i64 %indvars.iv.next
  %i.r = load i32, ptr %i.q, align 4, !tbaa !31
  %i.s = ashr i32 %i.r, 1                         ; 8 uses
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !25
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %.val38 = load ptr, ptr %i.u, align 8, !tbaa !29
  %i.v = sext i32 %i.s to i64                     ; 6 uses
  %i.w = getelementptr inbounds i8, ptr %.val38, i64 %i.v
  store i8 3, ptr %i.w, align 1, !tbaa !30
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !70
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %.val36 = load ptr, ptr %i.y, align 8, !tbaa !39
  %i.z = getelementptr inbounds [4 x i8], ptr %.val36, i64 %i.v
  store i32 -1, ptr %i.z, align 4, !tbaa !31
  %i.aa = load ptr, ptr %i.l, align 8, !tbaa !72
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !71
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  %.val33 = load ptr, ptr %i.ac, align 8, !tbaa !39
  %i.ad = getelementptr inbounds [4 x i8], ptr %.val33, i64 %indvars.iv.next
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !31
  %i.af = trunc i32 %i.ae to i8
  %i.ag = and i8 %i.af, 1
  %i.ah = getelementptr i8, ptr %i.aa, i64 8
  %.val37 = load ptr, ptr %i.ah, align 8, !tbaa !29
  %i.ai = getelementptr inbounds i8, ptr %.val37, i64 %i.v
  store i8 %i.ag, ptr %i.ai, align 1, !tbaa !30
  %i.aj = load ptr, ptr %i.m, align 8, !tbaa !33  ; 3 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 8      ; 3 uses
  %.val40 = load ptr, ptr %i.ak, align 8, !tbaa !40 ; 7 uses
  %i.al = getelementptr i8, ptr %.val40, i64 4    ; 3 uses
  %.val.i = load i32, ptr %i.al, align 4, !tbaa !38 ; 4 uses
  %i.am = icmp slt i32 %i.s, %.val.i
  br i1 %i.am, label %xSAT_HeapInHeap.exit, label %bb.d

xSAT_HeapInHeap.exit:                             ; preds = %bb.c
  %i.an = getelementptr i8, ptr %.val40, i64 8
  %.val3.i = load ptr, ptr %i.an, align 8, !tbaa !39 ; 2 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %.val3.i, i64 %i.v
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !31
  %i.aq = icmp slt i32 %i.ap, 0
  br i1 %i.aq, label %Vec_IntFillExtra.exit.i, label %bb.aa

bb.d:                                             ; preds = %bb.c
  %i.ar = add nsw i32 %i.s, 1                     ; 3 uses
  %i.as = load i32, ptr %.val40, align 8, !tbaa !41 ; 4 uses
  %i.at = shl nsw i32 %i.as, 1                    ; 2 uses
  %.not.i = icmp slt i32 %i.s, %i.at
  %.not.i.i.not.i = icmp sgt i32 %i.as, %i.s      ; 2 uses
  br i1 %.not.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
end_hunk_0
begin_hunk_1_@xSAT_SolverPropagate:bb.a
.lr.ph177:                                        ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = getelementptr i8, ptr %0, i64 112
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph177, %._crit_edge170
  %i.n = phi ptr [ %i.d, %.lr.ph177 ], [ %i.gw, %._crit_edge170 ]
  %i.o = phi i32 [ %i.c, %.lr.ph177 ], [ %i.gv, %._crit_edge170 ] ; 2 uses
  %.0110175 = phi i32 [ 0, %.lr.ph177 ], [ %i.ac, %._crit_edge170 ]
  %.0111174 = phi i32 [ -1, %.lr.ph177 ], [ %.1112.lcssa, %._crit_edge170 ] ; 2 uses
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.a, align 8, !tbaa !73
  %i.q = getelementptr i8, ptr %i.n, i64 8
  %.val134 = load ptr, ptr %i.q, align 8, !tbaa !39
  %i.r = sext i32 %i.o to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %.val134, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !31   ; 2 uses
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !57
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %.val138 = load ptr, ptr %i.v, align 8, !tbaa !60
  %i.w = sext i32 %i.t to i64                     ; 2 uses
  %i.x = getelementptr inbounds [16 x i8], ptr %.val138, i64 %i.w ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %.val142 = load ptr, ptr %i.y, align 8, !tbaa !65 ; 2 uses
  %i.z = getelementptr i8, ptr %i.x, i64 4
  %.val144 = load i32, ptr %i.z, align 4, !tbaa !63 ; 2 uses
  %i.aa = sext i32 %.val144 to i64
  %.idx = shl nsw i64 %i.aa, 3
  %i.ab = getelementptr inbounds i8, ptr %.val142, i64 %.idx
  %i.ac = add nuw nsw i32 %.0110175, 1            ; 2 uses
  %.not126153 = icmp sgt i32 %.val144, 0
  br i1 %.not126153, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %bb.n
  %.0104154 = phi ptr [ %i.cb, %bb.n ], [ %.val142, %bb.b ] ; 4 uses
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.ae = getelementptr inbounds nuw i8, ptr %.0104154, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !75 ; 4 uses
  %i.ag = ashr i32 %i.af, 1
  %i.ah = getelementptr i8, ptr %i.ad, i64 8
  %.val131 = load ptr, ptr %i.ah, align 8, !tbaa !29
  %i.ai = sext i32 %i.ag to i64                   ; 3 uses
  %i.aj = getelementptr inbounds i8, ptr %.val131, i64 %i.ai ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !30  ; 2 uses
  %i.al = icmp eq i8 %i.ak, 3
  br i1 %i.al, label %bb.c, label %bb.m

bb.c:                                             ; preds = %.lr.ph
  %i.am = load i32, ptr %.0104154, align 4, !tbaa !76
  %i.an = trunc i32 %i.af to i8
  %i.ao = and i8 %i.an, 1
  store i8 %i.ao, ptr %i.aj, align 1, !tbaa !30
  %i.ap = load ptr, ptr %i.i, align 8, !tbaa !52
  %.val13.i = load ptr, ptr %i.j, align 8, !tbaa !69
  %i.aq = getelementptr i8, ptr %.val13.i, i64 4
  %.val13.val.i = load i32, ptr %i.aq, align 4, !tbaa !38
  %i.ar = getelementptr i8, ptr %i.ap, i64 8
  %.val11.i = load ptr, ptr %i.ar, align 8, !tbaa !39
  %i.as = getelementptr inbounds [4 x i8], ptr %.val11.i, i64 %i.ai
  store i32 %.val13.val.i, ptr %i.as, align 4, !tbaa !31
  %i.at = load ptr, ptr %i.k, align 8, !tbaa !70
  %i.au = getelementptr i8, ptr %i.at, i64 8
  %.val.i = load ptr, ptr %i.au, align 8, !tbaa !39
  %i.av = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.ai
  store i32 %i.am, ptr %i.av, align 4, !tbaa !31
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !71  ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !38 ; 7 uses
  %i.az = load i32, ptr %i.aw, align 8, !tbaa !41
  %i.ba = icmp eq i32 %i.ay, %i.az
  br i1 %i.ba, label %bb.d, label %xSAT_SolverEnqueue.exit

bb.d:                                             ; preds = %bb.c
  %i.bb = icmp slt i32 %i.ay, 16
  br i1 %i.bb, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !39 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not9.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.be = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bd, i64 noundef 64) #19
  br label %Vec_IntGrow.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.bf = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #18
  br label %Vec_IntGrow.exit.i.i

Vec_IntGrow.exit.i.i:                             ; preds = %bb.g, %bb.f
  %i.bg = phi ptr [ %i.be, %bb.f ], [ %i.bf, %bb.g ]
  store ptr %i.bg, ptr %i.bc, align 8, !tbaa !39
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.h:                                             ; preds = %bb.d
  %i.bh = icmp samesign ult i32 %i.ay, 1073741823
  %i.bi = shl nuw nsw i32 %i.ay, 1
  %spec.select.i.i = select i1 %i.bh, i32 %i.bi, i32 2147483647 ; 3 uses
  %.not.i9.i.i = icmp samesign ult i32 %i.ay, %spec.select.i.i
  br i1 %.not.i9.i.i, label %bb.i, label %xSAT_SolverEnqueue.exit

bb.i:                                             ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !39 ; 2 uses
  %.not9.i10.i.i = icmp eq ptr %i.bk, null
  %i.bl = zext nneg i32 %spec.select.i.i to i64
  %i.bm = shl nuw nsw i64 %i.bl, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bn = tail call ptr @realloc(ptr noundef nonnull %i.bk, i64 noundef %i.bm) #19
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bo = tail call noalias ptr @malloc(i64 noundef %i.bm) #18
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bp = phi ptr [ %i.bn, %bb.j ], [ %i.bo, %bb.k ]
  store ptr %i.bp, ptr %i.bj, align 8, !tbaa !39
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.l, %Vec_IntGrow.exit.i.i
  %spec.select.sink.i.i = phi i32 [ %spec.select.i.i, %bb.l ], [ 16, %Vec_IntGrow.exit.i.i ]
  store i32 %spec.select.sink.i.i, ptr %i.aw, align 8, !tbaa !41
  %.pre.i = load i32, ptr %i.ax, align 4, !tbaa !38
  br label %xSAT_SolverEnqueue.exit

xSAT_SolverEnqueue.exit:                          ; preds = %bb.c, %bb.h, %Vec_IntGrow.exit11.sink.split.i.i
  %i.bq = phi i32 [ %i.ay, %bb.c ], [ %i.ay, %bb.h ], [ %.pre.i, %Vec_IntGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !39
  %i.bt = add nsw i32 %i.bq, 1
  store i32 %i.bt, ptr %i.ax, align 4, !tbaa !38
  %i.bu = sext i32 %i.bq to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.bu
  store i32 %i.af, ptr %i.bv, align 4, !tbaa !31
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph
  %i.bw = sext i8 %i.ak to i32
  %i.bx = and i32 %i.af, 1
  %i.by = xor i32 %i.bx, %i.bw
  %i.bz = icmp eq i32 %i.by, 1
  br i1 %i.bz, label %.thread, label %bb.n

.thread:                                          ; preds = %bb.m
  %i.ca = load i32, ptr %.0104154, align 4, !tbaa !76
  br label %bb.af

bb.n:                                             ; preds = %xSAT_SolverEnqueue.exit, %bb.m
  %i.cb = getelementptr inbounds nuw i8, ptr %.0104154, i64 8 ; 2 uses
  %.not126 = icmp ult ptr %i.cb, %i.ab
  br i1 %.not126, label %.lr.ph, label %._crit_edge, !llvm.loop !84

._crit_edge:                                      ; preds = %bb.n, %bb.b
  %i.cc = load ptr, ptr %i.l, align 8, !tbaa !68
  %i.cd = getelementptr i8, ptr %i.cc, i64 8
  %.val137 = load ptr, ptr %i.cd, align 8, !tbaa !60
  %i.ce = getelementptr inbounds [16 x i8], ptr %.val137, i64 %i.w ; 2 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 8      ; 2 uses
  %.val141 = load ptr, ptr %i.cf, align 8, !tbaa !65 ; 5 uses
  %i.cg = getelementptr i8, ptr %i.ce, i64 4      ; 2 uses
  %.val143 = load i32, ptr %i.cg, align 4, !tbaa !63 ; 2 uses
  %i.ch = sext i32 %.val143 to i64
  %.idx181 = shl nsw i64 %i.ch, 3
  %i.ci = getelementptr inbounds i8, ptr %.val141, i64 %.idx181 ; 3 uses
  %i.cj = icmp sgt i32 %.val143, 0
  br i1 %i.cj, label %.lr.ph169, label %._crit_edge170

.lr.ph169:                                        ; preds = %._crit_edge
  %i.ck = xor i32 %i.t, 1                         ; 3 uses
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph169, %.loopexit
  %.0102167 = phi ptr [ %.val141, %.lr.ph169 ], [ %.5, %.loopexit ] ; 9 uses
  %.1105166 = phi ptr [ %.val141, %.lr.ph169 ], [ %.6, %.loopexit ] ; 10 uses
  %.1112165 = phi i32 [ %.0111174, %.lr.ph169 ], [ %.5116, %.loopexit ] ; 4 uses
  %i.cl = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.cm = getelementptr inbounds nuw i8, ptr %.1105166, i64 4 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !75 ; 3 uses
  %i.co = ashr i32 %i.cn, 1
  %i.cp = getelementptr i8, ptr %i.cl, i64 8
  %.val129 = load ptr, ptr %i.cp, align 8, !tbaa !29 ; 4 uses
  %i.cq = sext i32 %i.co to i64
  %i.cr = getelementptr inbounds i8, ptr %.val129, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !30
  %i.ct = sext i8 %i.cs to i32
  %i.cu = and i32 %i.cn, 1
  %i.cv = icmp eq i32 %i.cu, %i.ct
  br i1 %i.cv, label %bb.p, label %xSAT_SolverReadClause.exit

bb.p:                                             ; preds = %bb.o
  %i.cw = getelementptr inbounds nuw i8, ptr %.0102167, i64 8
  %i.cx = load i64, ptr %.1105166, align 4, !tbaa !31
  store i64 %i.cx, ptr %.0102167, align 4, !tbaa !31
  br label %.loopexit, !llvm.loop !85

xSAT_SolverReadClause.exit:                       ; preds = %bb.o
  %i.cy = load i32, ptr %.1105166, align 4, !tbaa !76 ; 3 uses
  %.val135 = load ptr, ptr %0, align 8, !tbaa !43
  %.not.i.i = icmp ne i32 %i.cy, -1
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.cz = getelementptr inbounds nuw i8, ptr %.val135, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !47
  %i.db = sext i32 %i.cy to i64
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.db ; 5 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 4 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !31 ; 2 uses
  %i.df = icmp eq i32 %i.de, %i.ck
  br i1 %i.df, label %bb.q, label %bb.r

bb.q:                                             ; preds = %xSAT_SolverReadClause.exit
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 12 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !31 ; 2 uses
  store i32 %i.dh, ptr %i.dd, align 4, !tbaa !31
  store i32 %i.ck, ptr %i.dg, align 4, !tbaa !31
  %.pre = load i32, ptr %.1105166, align 4, !tbaa !76
  %.pre189 = load i32, ptr %i.cm, align 4, !tbaa !75
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %xSAT_SolverReadClause.exit
  %i.di = phi i32 [ %.pre189, %bb.q ], [ %i.cn, %xSAT_SolverReadClause.exit ]
  %i.dj = phi i32 [ %i.dh, %bb.q ], [ %i.de, %xSAT_SolverReadClause.exit ] ; 6 uses
  %i.dk = phi i32 [ %.pre, %bb.q ], [ %i.cy, %xSAT_SolverReadClause.exit ] ; 3 uses
  %.not = icmp eq i32 %i.dj, %i.di
  br i1 %.not, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dl = ashr i32 %i.dj, 1
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds i8, ptr %.val129, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !30
  %i.dp = sext i8 %i.do to i32
  %i.dq = and i32 %i.dj, 1
  %i.dr = icmp eq i32 %i.dq, %i.dp
  br i1 %i.dr, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ds = getelementptr inbounds nuw i8, ptr %.0102167, i64 8
  store i32 %i.dk, ptr %.0102167, align 4, !tbaa !31
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0102167, i64 4
  store i32 %i.dj, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !31
  br label %.loopexit

bb.u:                                             ; preds = %bb.s, %bb.r
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !49 ; 2 uses
  %i.dv = sext i32 %i.du to i64
  %.idx182 = shl nsw i64 %i.dv, 2
  %i.dw = getelementptr inbounds i8, ptr %i.dd, i64 %.idx182
  %i.dx = icmp sgt i32 %i.du, 2
  br i1 %i.dx, label %.lr.ph157.preheader, label %._crit_edge158

.lr.ph157.preheader:                              ; preds = %bb.u
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  br label %.lr.ph157

.lr.ph157:                                        ; preds = %.lr.ph157.preheader, %bb.ac
  %.0155 = phi ptr [ %i.fs, %bb.ac ], [ %i.dy, %.lr.ph157.preheader ] ; 3 uses
  %i.dz = load i32, ptr %.0155, align 4, !tbaa !31 ; 3 uses
  %i.ea = ashr i32 %i.dz, 1
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds i8, ptr %.val129, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !30
  %i.ee = sext i8 %i.ed to i32
  %i.ef = and i32 %i.dz, 1
  %i.eg = xor i32 %i.ef, %i.ee
  %.not125 = icmp eq i32 %i.eg, 1
  br i1 %.not125, label %bb.ac, label %bb.v

bb.v:                                             ; preds = %.lr.ph157
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dc, i64 12 ; 2 uses
  store i32 %i.dz, ptr %i.eh, align 4, !tbaa !31
  store i32 %i.ck, ptr %.0155, align 4, !tbaa !31
  %i.ei = load ptr, ptr %i.l, align 8, !tbaa !68
  %i.ej = load i32, ptr %i.eh, align 4, !tbaa !31
  %i.ek = xor i32 %i.ej, 1
  %i.el = getelementptr i8, ptr %i.ei, i64 8
  %.val136 = load ptr, ptr %i.el, align 8, !tbaa !60
  %i.em = sext i32 %i.ek to i64
  %i.en = getelementptr inbounds [16 x i8], ptr %.val136, i64 %i.em ; 6 uses
  %.sroa.6.0.insert.ext = zext i32 %i.dj to i64
  %.sroa.6.0.insert.shift = shl nuw i64 %.sroa.6.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.dk to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.shift, %.sroa.0.0.insert.ext
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 4 ; 3 uses
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !63 ; 4 uses
  %i.eq = load i32, ptr %i.en, align 8, !tbaa !64
  %i.er = icmp eq i32 %i.ep, %i.eq
  br i1 %i.er, label %bb.w, label %xSAT_WatchListPush.exit

bb.w:                                             ; preds = %bb.v
  %i.es = icmp slt i32 %i.ep, 4
  %i.et = lshr i32 %i.ep, 1
  %i.eu = mul nuw nsw i32 %i.et, 3
  %i.ev = select i1 %i.es, i32 4, i32 %i.eu       ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !65 ; 2 uses
  %.not.i = icmp eq ptr %i.ex, null
  %i.ey = zext nneg i32 %i.ev to i64
  %i.ez = shl nuw nsw i64 %i.ey, 3                ; 2 uses
  br i1 %.not.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fa = tail call ptr @realloc(ptr noundef nonnull %i.ex, i64 noundef %i.ez) #19
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.fb = tail call noalias ptr @malloc(i64 noundef %i.ez) #18
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.fc = phi ptr [ %i.fa, %bb.x ], [ %i.fb, %bb.y ] ; 2 uses
  store ptr %i.fc, ptr %i.ew, align 8, !tbaa !65
  %i.fd = icmp eq ptr %i.fc, null
  br i1 %i.fd, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.fe = load i32, ptr %i.en, align 8, !tbaa !64
  %i.ff = sitofp i32 %i.fe to double
  %i.fg = fmul nnan double %i.ff, f0x3EB0000000000000
  %i.fh = uitofp nneg i32 %i.ev to double
  %i.fi = fmul nnan double %i.fh, f0x3EB0000000000000
  %i.fj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %i.fg, double noundef %i.fi) ; 0 uses
  %i.fk = load ptr, ptr @stdout, align 8, !tbaa !67
  %i.fl = tail call i32 @fflush(ptr noundef %i.fk) ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  store i32 %i.ev, ptr %i.en, align 8, !tbaa !64
  %.pre.i145 = load i32, ptr %i.eo, align 4, !tbaa !63
  br label %xSAT_WatchListPush.exit

xSAT_WatchListPush.exit:                          ; preds = %bb.v, %bb.ab
  %i.fm = phi i32 [ %.pre.i145, %bb.ab ], [ %i.ep, %bb.v ] ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !65
  %i.fp = add nsw i32 %i.fm, 1
  store i32 %i.fp, ptr %i.eo, align 4, !tbaa !63
  %i.fq = sext i32 %i.fm to i64
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.fq
  store i64 %.sroa.0.0.insert.insert, ptr %i.fr, align 4, !tbaa !31
  br label %.loopexit

bb.ac:                                            ; preds = %.lr.ph157
  %i.fs = getelementptr inbounds nuw i8, ptr %.0155, i64 4 ; 2 uses
  %i.ft = icmp ult ptr %i.fs, %i.dw
  br i1 %i.ft, label %.lr.ph157, label %._crit_edge158, !llvm.loop !86

._crit_edge158:                                   ; preds = %bb.ac, %bb.u
  %i.fu = getelementptr inbounds nuw i8, ptr %.0102167, i64 8 ; 3 uses
  store i32 %i.dk, ptr %.0102167, align 4, !tbaa !31
  %.sroa.6.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %.0102167, i64 4
  store i32 %i.dj, ptr %.sroa.6.0..sroa_idx8, align 4, !tbaa !31
  %i.fv = load i32, ptr %i.dd, align 4, !tbaa !31 ; 3 uses
  %i.fw = ashr i32 %i.fv, 1
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds i8, ptr %.val129, i64 %i.fx
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !30
  %i.ga = sext i8 %i.fz to i32
  %i.gb = and i32 %i.fv, 1
  %i.gc = xor i32 %i.gb, %i.ga
  %i.gd = icmp eq i32 %i.gc, 1
  %i.ge = load i32, ptr %.1105166, align 4, !tbaa !76 ; 3 uses
  br i1 %i.gd, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %._crit_edge158
  %i.gf = load ptr, ptr %i.b, align 8, !tbaa !71
  %i.gg = getelementptr i8, ptr %i.gf, i64 4
  %.val132 = load i32, ptr %i.gg, align 4, !tbaa !38
  store i32 %.val132, ptr %i.a, align 8, !tbaa !73
  %.2106159 = getelementptr inbounds nuw i8, ptr %.1105166, i64 8 ; 3 uses
  %i.gh = icmp ult ptr %.2106159, %i.ci
  br i1 %i.gh, label %.lr.ph163, label %.loopexit

.lr.ph163:                                        ; preds = %bb.ad, %.lr.ph163
  %.2106161 = phi ptr [ %.2106, %.lr.ph163 ], [ %.2106159, %bb.ad ] ; 2 uses
  %.1103160 = phi ptr [ %i.gi, %.lr.ph163 ], [ %i.fu, %bb.ad ] ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.1103160, i64 8 ; 2 uses
  %i.gj = load i64, ptr %.2106161, align 4, !tbaa !31
  store i64 %i.gj, ptr %.1103160, align 4, !tbaa !31
  %.2106 = getelementptr inbounds nuw i8, ptr %.2106161, i64 8 ; 3 uses
  %i.gk = icmp ult ptr %.2106, %i.ci
  br i1 %i.gk, label %.lr.ph163, label %.loopexit, !llvm.loop !87

bb.ae:                                            ; preds = %._crit_edge158
  %i.gl = tail call i32 @xSAT_SolverEnqueue(ptr noundef nonnull %0, i32 noundef %i.fv, i32 noundef %i.ge) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph163, %bb.ad, %bb.t, %bb.ae, %xSAT_WatchListPush.exit, %bb.p
  %.5116 = phi i32 [ %.1112165, %bb.p ], [ %.1112165, %bb.t ], [ %.1112165, %xSAT_WatchListPush.exit ], [ %.1112165, %bb.ae ], [ %i.ge, %bb.ad ], [ %i.ge, %.lr.ph163 ] ; 2 uses
  %.1105.pn148 = phi ptr [ %.1105166, %bb.p ], [ %.1105166, %bb.t ], [ %.1105166, %xSAT_WatchListPush.exit ], [ %.1105166, %bb.ae ], [ %.2106159, %bb.ad ], [ %.2106, %.lr.ph163 ]
  %.5 = phi ptr [ %i.cw, %bb.p ], [ %i.ds, %bb.t ], [ %.0102167, %xSAT_WatchListPush.exit ], [ %i.fu, %bb.ae ], [ %i.fu, %bb.ad ], [ %i.gi, %.lr.ph163 ] ; 2 uses
  %.6 = getelementptr inbounds nuw i8, ptr %.1105.pn148, i64 8 ; 2 uses
  %i.gm = icmp ult ptr %.6, %i.ci
  br i1 %i.gm, label %bb.o, label %._crit_edge170.loopexit

._crit_edge170.loopexit:                          ; preds = %.loopexit
  %.val140.pre = load ptr, ptr %i.cf, align 8, !tbaa !65
  br label %._crit_edge170

._crit_edge170:                                   ; preds = %._crit_edge170.loopexit, %._crit_edge
  %.val140 = phi ptr [ %.val141, %._crit_edge ], [ %.val140.pre, %._crit_edge170.loopexit ]
  %.1112.lcssa = phi i32 [ %.0111174, %._crit_edge ], [ %.5116, %._crit_edge170.loopexit ] ; 2 uses
  %.0102.lcssa = phi ptr [ %.val141, %._crit_edge ], [ %.5, %._crit_edge170.loopexit ]
  %i.gn = ptrtoint ptr %.0102.lcssa to i64
  %i.go = ptrtoint ptr %.val140 to i64
  %i.gp = sub i64 %i.gn, %i.go                    ; 2 uses
  %i.gq = ashr exact i64 %i.gp, 3
  %i.gr = load i64, ptr %i.m, align 8, !tbaa !89
  %i.gs = add nsw i64 %i.gq, %i.gr
  store i64 %i.gs, ptr %i.m, align 8, !tbaa !89
  %i.gt = lshr exact i64 %i.gp, 3
  %i.gu = trunc i64 %i.gt to i32
  store i32 %i.gu, ptr %i.cg, align 4, !tbaa !63
  %i.gv = load i32, ptr %i.a, align 8, !tbaa !73  ; 2 uses
  %i.gw = load ptr, ptr %i.b, align 8, !tbaa !71  ; 2 uses
  %i.gx = getelementptr i8, ptr %i.gw, i64 4
  %.val133 = load i32, ptr %i.gx, align 4, !tbaa !38
  %i.gy = icmp slt i32 %i.gv, %.val133
  br i1 %i.gy, label %bb.b, label %._crit_edge178.loopexit, !llvm.loop !88

._crit_edge178.loopexit:                          ; preds = %._crit_edge170
  %i.gz = zext nneg i32 %i.ac to i64
  br label %._crit_edge178

._crit_edge178:                                   ; preds = %._crit_edge178.loopexit, %bb.a
  %.0111.lcssa = phi i32 [ -1, %bb.a ], [ %.1112.lcssa, %._crit_edge178.loopexit ]
  %.0110.lcssa = phi i64 [ 0, %bb.a ], [ %i.gz, %._crit_edge178.loopexit ] ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !90
  %i.hc = add nsw i64 %i.hb, %.0110.lcssa
  store i64 %i.hc, ptr %i.ha, align 8, !tbaa !90
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !91
  %i.hf = sub nsw i64 %i.he, %.0110.lcssa
  store i64 %i.hf, ptr %i.hd, align 8, !tbaa !91
  br label %bb.af

bb.af:                                            ; preds = %.thread, %._crit_edge178
  %.2120 = phi i32 [ %i.ca, %.thread ], [ %.0111.lcssa, %._crit_edge178 ]
  ret i32 %.2120
}

; Function Attrs: nounwind uwtable
define void @xSAT_SolverReduceDB(ptr nofree noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #20
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %2, align 8, !tbaa !96
  %.neg86 = mul i64 %i.c, -1000000
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !97
  %.neg = sdiv i64 %i.e, -1000
  %.neg87 = add i64 %.neg, %.neg86
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg87, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !50   ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 4        ; 2 uses
  %.val72 = load i32, ptr %i.h, align 4, !tbaa !38 ; 10 uses
  %i.i = sext i32 %.val72 to i64                  ; 2 uses
  %i.j = shl nsw i64 %i.i, 3
  %i.k = call noalias ptr @malloc(i64 noundef %i.j) #18 ; 8 uses
  %i.l = icmp sgt i32 %.val72, 0                  ; 2 uses
  br i1 %i.l, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Abc_Clock.exit
  %i.m = getelementptr i8, ptr %i.g, i64 8
  %.val74 = load ptr, ptr %i.m, align 8, !tbaa !39 ; 3 uses
  %wide.trip.count = zext nneg i32 %.val72 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.n = icmp eq i32 %.val72, 1
  br i1 %i.n, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %xSAT_SolverReadClause.exit.1, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %xSAT_SolverReadClause.exit.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %xSAT_SolverReadClause.exit.1 ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.val74, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !31   ; 2 uses
  %.not.i.i = icmp eq i32 %i.p, -1
  br i1 %.not.i.i, label %xSAT_SolverReadClause.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val75 = load ptr, ptr %0, align 8, !tbaa !43
  %i.q = getelementptr inbounds nuw i8, ptr %.val75, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !47
  %i.s = sext i32 %i.p to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.s
  br label %xSAT_SolverReadClause.exit

xSAT_SolverReadClause.exit:                       ; preds = %bb.c, %bb.d
  %i.u = phi ptr [ %i.t, %bb.d ], [ null, %bb.c ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  store ptr %i.u, ptr %i.v, align 8, !tbaa !99
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.val74, i64 %indvars.iv.next
  %i.x = load i32, ptr %i.w, align 4, !tbaa !31   ; 2 uses
  %.not.i.i.1 = icmp eq i32 %i.x, -1
  br i1 %.not.i.i.1, label %xSAT_SolverReadClause.exit.1, label %bb.e

bb.e:                                             ; preds = %xSAT_SolverReadClause.exit
  %.val75.1 = load ptr, ptr %0, align 8, !tbaa !43
  %i.y = getelementptr inbounds nuw i8, ptr %.val75.1, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !47
  %i.aa = sext i32 %i.x to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.aa
  br label %xSAT_SolverReadClause.exit.1

xSAT_SolverReadClause.exit.1:                     ; preds = %bb.e, %xSAT_SolverReadClause.exit
  %i.ac = phi ptr [ %i.ab, %bb.e ], [ null, %xSAT_SolverReadClause.exit ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !99
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !92

.critedge.loopexit.unr-lcssa:                     ; preds = %xSAT_SolverReadClause.exit.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.critedge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod111 = trunc i32 %.val72 to i1
  call void @llvm.assume(i1 %lcmp.mod111)
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.val74, i64 %indvars.iv.epil.init
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !31 ; 2 uses
  %.not.i.i.epil = icmp eq i32 %i.af, -1
  br i1 %.not.i.i.epil, label %xSAT_SolverReadClause.exit.epil, label %bb.f

bb.f:                                             ; preds = %.epil.preheader
  %.val75.epil = load ptr, ptr %0, align 8, !tbaa !43
  %i.ag = getelementptr inbounds nuw i8, ptr %.val75.epil, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !47
  %i.ai = sext i32 %i.af to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.ai
  br label %xSAT_SolverReadClause.exit.epil

xSAT_SolverReadClause.exit.epil:                  ; preds = %bb.f, %.epil.preheader
  %i.ak = phi ptr [ %i.aj, %bb.f ], [ null, %.epil.preheader ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.epil.init
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !99
  br label %.critedge

.critedge:                                        ; preds = %xSAT_SolverReadClause.exit.epil, %.critedge.loopexit.unr-lcssa, %Abc_Clock.exit
  %i.am = sdiv i32 %.val72, 2                     ; 2 uses
  call fastcc void @xSAT_UtilSort(ptr noundef %i.k, i32 noundef %.val72)
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !99
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = icmp ult i32 %i.aq, 64
  br i1 %i.ar, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.critedge
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.at = load i32, ptr %i.as, align 4, !tbaa !100
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !77
  %i.aw = add nsw i32 %i.av, %i.at
  store i32 %i.aw, ptr %i.au, align 8, !tbaa !77
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.critedge
  %i.ax = getelementptr [8 x i8], ptr %i.k, i64 %i.i
  %i.ay = getelementptr i8, ptr %i.ax, i64 -8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !99
end_hunk_1
