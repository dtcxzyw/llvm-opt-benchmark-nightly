Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/idas?download=true
inline.NumInlined: 61
inline.NumDeleted: 41
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 34
begin_hunk_0_@IDARootInit:bb.a
  store <4 x i32> splat (i32 1), ptr %i.bz, align 4, !tbaa !29
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !240

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph141.preheader153

.lr.ph141.preheader153:                           ; preds = %.lr.ph141.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph141.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph141

.lr.ph141:                                        ; preds = %.lr.ph141.preheader153, %.lr.ph141
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph141 ], [ %indvars.iv.ph, %.lr.ph141.preheader153 ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv
  store i32 1, ptr %i.cb, align 4, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph141, !llvm.loop !241

._crit_edge:                                      ; preds = %.lr.ph141, %middle.block
  %i.cc = mul nuw nsw i32 %i.b, 3
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1664 ; 2 uses
  %i.cf = load <2 x i64>, ptr %i.ce, align 8, !tbaa !58
  %i.cg = insertelement <2 x i64> poison, i64 %i.cd, i64 0
  %i.ch = shufflevector <2 x i64> %i.cg, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ci = add nsw <2 x i64> %i.cf, %i.ch
  store <2 x i64> %i.ci, ptr %i.ce, align 8, !tbaa !58
  br label %bb.z

bb.z:                                             ; preds = %bb.h, %._crit_edge, %bb.y, %bb.w, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.j, %bb.f, %bb.b
  %.0131 = phi i32 [ -20, %bb.b ], [ 0, %bb.f ], [ -22, %bb.j ], [ 0, %bb.k ], [ 0, %._crit_edge ], [ -22, %bb.m ], [ -21, %bb.o ], [ -21, %bb.q ], [ -21, %bb.s ], [ -21, %bb.u ], [ -21, %bb.w ], [ -21, %bb.y ], [ 0, %bb.h ]
  ret i32 %.0131
}

; Function Attrs: nounwind uwtable
define range(i32 -99, 99) i32 @IDASolve(ptr noundef %0, double noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 9 uses
  %i.g = alloca i32, align 4                      ; 9 uses
  %i.h = icmp eq ptr %0, null
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, i32 noundef 2535, ptr noundef nonnull @__func__.IDASolve, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3)
  br label %IDAStopTest2.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1700
  %i.j = load i32, ptr %i.i, align 4, !tbaa !90
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -23, i32 noundef 2546, ptr noundef nonnull @__func__.IDASolve, ptr noundef nonnull @.str, ptr noundef nonnull @.str.9)
  br label %IDAStopTest2.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.l = icmp eq ptr %3, null
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 2556, ptr noundef nonnull @__func__.IDASolve, ptr noundef nonnull @.str, ptr noundef nonnull @.str.31)
  br label %IDAStopTest2.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 8 uses
  store ptr %3, ptr %i.m, align 8, !tbaa !167
  %i.n = icmp eq ptr %4, null
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 2565, ptr noundef nonnull @__func__.IDASolve, ptr noundef nonnull @.str, ptr noundef nonnull @.str.32)
  br label %IDAStopTest2.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 5 uses
  store ptr %4, ptr %i.o, align 8, !tbaa !168
  %i.p = icmp eq ptr %2, null
  br i1 %i.p, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 2574, ptr noundef nonnull @__func__.IDASolve, ptr noundef nonnull @.str, ptr noundef nonnull @.str.33)
  br label %IDAStopTest2.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.q = add i32 %5, -3
  %or.cond = icmp ult i32 %i.q, -2
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 2582, ptr noundef nonnull @__func__.IDASolve, ptr noundef nonnull @.str, ptr noundef nonnull @.str.34)
  br label %IDAStopTest2.exit.thread

bb.m:                                             ; preds = %bb.k
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 8 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !134
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.u = load i32, ptr %i.t, align 8, !tbaa !33
  %.not396 = icmp eq i32 %i.u, 0
  br i1 %.not396, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %0, ptr %i.v, align 8, !tbaa !31
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !47
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 2596, ptr noundef nonnull @__func__.IDASolve, ptr noundef nonnull @.str, ptr noundef nonnull @.str.35)
  br label %IDAStopTest2.exit.thread

bb.q:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 11 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !153
  %.not397 = icmp eq i32 %i.aa, 0
  br i1 %.not397, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !39
  %.not398 = icmp eq i32 %i.ac, 0
  br i1 %.not398, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr %0, ptr %i.ad, align 8, !tbaa !37
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !47
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 2609, ptr noundef nonnull @__func__.IDASolve, ptr noundef nonnull @.str, ptr noundef nonnull @.str.35)
  br label %IDAStopTest2.exit.thread

bb.u:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1472 ; 14 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !296
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.v, label %bb.bj

bb.v:                                             ; preds = %bb.u
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1688 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !89
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.an = tail call i32 @IDAInitialSetup(ptr noundef nonnull %0) ; 2 uses
  %.not399 = icmp eq i32 %i.an, 0
  br i1 %.not399, label %bb.x, label %IDAStopTest2.exit.thread

bb.x:                                             ; preds = %bb.w
  store i32 1, ptr %i.ak, align 8, !tbaa !89
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  %i.ao = tail call fastcc i32 @IDAQuadSetup(ptr noundef %0) ; 2 uses
  %.not400 = icmp eq i32 %i.ao, 0
  br i1 %.not400, label %bb.z, label %IDAStopTest2.exit.thread

bb.z:                                             ; preds = %bb.y
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1264 ; 3 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !74 ; 3 uses
  %i.ar = fsub double %1, %i.aq                   ; 3 uses
  %i.as = tail call double @llvm.fabs.f64(double %i.ar) ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.au = fcmp oeq double %i.ar, 0.000000e+00
  br i1 %i.au, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.av = load double, ptr %i.at, align 8, !tbaa !21
  %i.aw = fmul double %i.av, 2.000000e+00
  %i.ax = tail call double @llvm.fabs.f64(double %i.aq)
  %i.ay = tail call double @llvm.fabs.f64(double %1)
  %i.az = fadd double %i.ay, %i.ax
  %i.ba = fmul double %i.az, %i.aw
  %i.bb = fcmp olt double %i.as, %i.ba
  br i1 %i.bb, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa, %bb.z
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -60, i32 noundef 2648, ptr noundef nonnull @__func__.IDASolve, ptr noundef nonnull @.str, ptr noundef nonnull @.str.36)
  br label %IDAStopTest2.exit.thread

bb.ac:                                            ; preds = %bb.aa
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !297 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1240 ; 11 uses
  store double %i.bd, ptr %i.be, align 8, !tbaa !169
  %i.bf = fcmp une double %i.bd, 0.000000e+00
  %i.bg = fmul double %i.ar, %i.bd
  %i.bh = fcmp olt double %i.bg, 0.000000e+00
  %or.cond467 = and i1 %i.bf, %i.bh
  br i1 %or.cond467, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 2660, ptr noundef nonnull @__func__.IDASolve, ptr noundef nonnull @.str, ptr noundef nonnull @.str.37)
  br label %IDAStopTest2.exit.thread

bb.ae:                                            ; preds = %bb.ac
  %6 = fcmp oeq double %i.bd, 0.000000e+00
  br i1 %6, label %bb.af, label %bb.ap

bb.af:                                            ; preds = %bb.ae
  %i.bi = fmul double %i.as, 1.000000e-03
  store double %i.bi, ptr %i.be, align 8, !tbaa !169
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !43
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !48
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !170
  %i.bp = tail call double @IDAWrmsNorm(ptr noundef nonnull %0, ptr noundef %i.bk, ptr noundef %i.bm, i32 noundef %i.bo) ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !171
  %.not401 = icmp eq i32 %i.br, 0
  br i1 %.not401, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !43
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !105
  %i.bw = tail call double @N_VWrmsNorm(ptr noundef %i.bt, ptr noundef %i.bv) #14 ; 2 uses
  %i.bx = fcmp ogt double %i.bp, %i.bw
  %..i = select i1 %i.bx, double %i.bp, double %i.bw
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.0367 = phi double [ %..i, %bb.ag ], [ %i.bp, %bb.af ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !172
  %.not402 = icmp eq i32 %i.bz, 0
  br i1 %.not402, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !125
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !118
  %i.ce = load i32, ptr %i.bn, align 8, !tbaa !170
  %i.cf = tail call double @IDASensWrmsNormUpdate(ptr noundef nonnull %0, double noundef %.0367, ptr noundef %i.cb, ptr noundef %i.cd, i32 noundef %i.ce)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.1368 = phi double [ %i.cf, %bb.ai ], [ %.0367, %bb.ah ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !173
  %.not403 = icmp eq i32 %i.ch, 0
  br i1 %.not403, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !125
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !147
  %i.cm = tail call fastcc double @IDAQuadSensWrmsNormUpdate(ptr noundef %0, double noundef %.1368, ptr noundef %i.cj, ptr noundef %i.cl)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.2369 = phi double [ %i.cm, %bb.ak ], [ %.1368, %bb.aj ] ; 2 uses
  %i.cn = load double, ptr %i.be, align 8, !tbaa !169 ; 2 uses
  %i.co = fdiv double 5.000000e-01, %i.cn
  %i.cp = fcmp ogt double %.2369, %i.co
  br i1 %i.cp, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.cq = fdiv double 5.000000e-01, %.2369        ; 2 uses
  store double %i.cq, ptr %i.be, align 8, !tbaa !169
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.cr = phi double [ %i.cq, %bb.am ], [ %i.cn, %bb.al ] ; 2 uses
  %i.cs = load double, ptr %i.ap, align 8, !tbaa !74 ; 3 uses
  %i.ct = fcmp olt double %1, %i.cs
  br i1 %i.ct, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.cu = fneg double %i.cr                       ; 2 uses
  store double %i.cu, ptr %i.be, align 8, !tbaa !169
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao, %bb.ae
  %i.cv = phi double [ %i.cs, %bb.an ], [ %i.cs, %bb.ao ], [ %i.aq, %bb.ae ] ; 3 uses
  %i.cw = phi double [ %i.cr, %bb.an ], [ %i.cu, %bb.ao ], [ %i.bd, %bb.ae ] ; 3 uses
  %i.cx = tail call double @llvm.fabs.f64(double %i.cw) ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !298
  %i.da = fmul double %i.cx, %i.cz                ; 2 uses
  %i.db = fcmp ogt double %i.da, 1.000000e+00
  br i1 %i.db, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.dc = fdiv double %i.cw, %i.da                ; 3 uses
  store double %i.dc, ptr %i.be, align 8, !tbaa !169
  %.pre601.a = tail call double @llvm.fabs.f64(double %i.dc)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.pre-phi = phi double [ %.pre601.a, %bb.aq ], [ %i.cx, %bb.ap ] ; 2 uses
  %i.dd = phi double [ %i.dc, %bb.aq ], [ %i.cw, %bb.ap ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 1408
  %i.df = load double, ptr %i.de, align 8, !tbaa !174 ; 2 uses
  %i.dg = fcmp olt double %.pre-phi, %i.df
  br i1 %i.dg, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.dh = fdiv double %i.df, %.pre-phi
  %i.di = fmul double %i.dd, %i.dh                ; 2 uses
  store double %i.di, ptr %i.be, align 8, !tbaa !169
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.dj = phi double [ %i.di, %bb.as ], [ %i.dd, %bb.ar ] ; 5 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !175
  %.not404 = icmp eq i32 %i.dl, 0
  br i1 %.not404, label %bb.ay, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !176 ; 3 uses
  %i.do = fsub double %i.dn, %i.cv                ; 2 uses
  %i.dp = fmul double %i.do, %i.dj
  %i.dq = fcmp ugt double %i.dp, 0.000000e+00
  br i1 %i.dq, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 2707, ptr noundef nonnull @__func__.IDASolve, ptr noundef nonnull @.str, ptr noundef nonnull @.str.38, double noundef %i.dn, double noundef %i.cv)
  br label %IDAStopTest2.exit.thread

bb.aw:                                            ; preds = %bb.au
  %i.dr = fadd double %i.cv, %i.dj
  %i.ds = fsub double %i.dr, %i.dn
  %i.dt = fmul double %i.dj, %i.ds
  %i.du = fcmp ogt double %i.dt, 0.000000e+00
  br i1 %i.du, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.dv = load double, ptr %i.at, align 8, !tbaa !21
  %i.dw = tail call double @llvm.fmuladd.f64(double %i.dv, double -4.000000e+00, double 1.000000e+00)
  %i.dx = fmul double %i.do, %i.dw                ; 2 uses
  store double %i.dx, ptr %i.be, align 8, !tbaa !169
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax, %bb.at
  %i.dy = phi double [ %i.dj, %bb.aw ], [ %i.dx, %bb.ax ], [ %i.dj, %bb.at ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 1232
  store double %i.dy, ptr %i.dz, align 8, !tbaa !299
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 1200
  store i32 0, ptr %i.ea, align 8, !tbaa !177
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 1204
  store i32 0, ptr %i.eb, align 4, !tbaa !82
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 1920
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !87
  %i.ee = icmp sgt i32 %i.ed, 0
  br i1 %i.ee, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.ef = tail call fastcc i32 @IDARcheck1(ptr noundef %0)
  %i.eg = icmp eq i32 %i.ef, -10
  br i1 %i.eg, label %bb.ba, label %._crit_edge599

._crit_edge599:                                   ; preds = %bb.az
  %.pre = load double, ptr %i.be, align 8, !tbaa !169
  br label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.eh = load double, ptr %i.ap, align 8, !tbaa !74
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -10, i32 noundef 2731, ptr noundef nonnull @__func__.IDASolve, ptr noundef nonnull @.str, ptr noundef nonnull @.str.39, double noundef %i.eh)
  br label %IDAStopTest2.exit.thread

bb.bb:                                            ; preds = %._crit_edge599, %bb.ay
  %i.ei = phi double [ %.pre, %._crit_edge599 ], [ %i.dy, %bb.ay ]
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !43 ; 2 uses
  tail call void @N_VScale(double noundef %i.ei, ptr noundef %i.ek, ptr noundef %i.ek) #14
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.em = load i32, ptr %i.el, align 4, !tbaa !109
  %.not405 = icmp eq i32 %i.em, 0
  br i1 %.not405, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.en = load double, ptr %i.be, align 8, !tbaa !169
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !43 ; 2 uses
  tail call void @N_VScale(double noundef %i.en, ptr noundef %i.ep, ptr noundef %i.ep) #14
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.eq = load i32, ptr %i.r, align 4, !tbaa !134
  %.not406 = icmp eq i32 %i.eq, 0                 ; 2 uses
  br i1 %.not406, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.er = load i32, ptr %i.z, align 8, !tbaa !153
  %.not407 = icmp eq i32 %i.er, 0
  br i1 %.not407, label %.thread454, label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.et = load i32, ptr %i.es, align 8, !tbaa !116 ; 4 uses
end_hunk_0
