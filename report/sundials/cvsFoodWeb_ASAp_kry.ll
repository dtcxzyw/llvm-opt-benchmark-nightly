inline.NumInlined: 58
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 46
begin_hunk_0_@main:bb.a
  %i.gc = load i32, ptr %i.d, align 4, !tbaa !25
  %i.gd = call i32 @CVodeInitB(ptr noundef nonnull %i.du, i32 noundef %i.gc, ptr noundef nonnull @fB, double noundef 1.000000e+01, ptr noundef nonnull %i.fp) #10 ; 2 uses
  %i.ge = icmp slt i32 %i.gd, 0
  br i1 %i.ge, label %check_retval.exit92, label %bb.q

check_retval.exit92:                              ; preds = %bb.p
  %i.gf = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.gg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gf, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.21, i32 noundef %i.gd) #11 ; 0 uses
  br label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.gh = load i32, ptr %i.d, align 4, !tbaa !25
  %i.gi = call i32 @CVodeSStolerancesB(ptr noundef nonnull %i.du, i32 noundef %i.gh, double noundef 1.000000e-05, double noundef 1.000000e-05) #10 ; 2 uses
  %i.gj = icmp slt i32 %i.gi, 0
  br i1 %i.gj, label %check_retval.exit94, label %bb.r

check_retval.exit94:                              ; preds = %bb.q
  %i.gk = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.gl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gk, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.22, i32 noundef %i.gi) #11 ; 0 uses
  br label %bb.x

bb.r:                                             ; preds = %bb.q
  %i.gm = load i32, ptr %i.d, align 4, !tbaa !25
  %i.gn = getelementptr inbounds nuw i8, ptr %i.i, i64 39232
  store i32 %i.gm, ptr %i.gn, align 8, !tbaa !36
  %i.go = load ptr, ptr @sunctx, align 8, !tbaa !17
  %i.gp = call ptr @SUNLinSol_SPGMR(ptr noundef nonnull %i.fp, i32 noundef 1, i32 noundef 0, ptr noundef %i.go) #10 ; 3 uses
  %i.gq = icmp eq ptr %i.gp, null
  br i1 %i.gq, label %check_retval.exit96, label %bb.s

check_retval.exit96:                              ; preds = %bb.r
  %i.gr = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.gs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gr, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.8) #11 ; 0 uses
  br label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.gt = load i32, ptr %i.d, align 4, !tbaa !25
  %i.gu = call i32 @CVodeSetLinearSolverB(ptr noundef nonnull %i.du, i32 noundef %i.gt, ptr noundef nonnull %i.gp, ptr noundef null) #10 ; 2 uses
  %i.gv = icmp slt i32 %i.gu, 0
  br i1 %i.gv, label %check_retval.exit98, label %bb.t

check_retval.exit98:                              ; preds = %bb.s
  %i.gw = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.gx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gw, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.23, i32 noundef %i.gu) #11 ; 0 uses
  br label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.gy = load i32, ptr %i.d, align 4, !tbaa !25
  %i.gz = call i32 @CVodeSetPreconditionerB(ptr noundef nonnull %i.du, i32 noundef %i.gy, ptr noundef nonnull @PrecondB, ptr noundef nonnull @PSolveB) #10 ; 2 uses
  %i.ha = icmp slt i32 %i.gz, 0
  br i1 %i.ha, label %check_retval.exit100, label %bb.u

check_retval.exit100:                             ; preds = %bb.t
  %i.hb = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.hc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hb, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.24, i32 noundef %i.gz) #11 ; 0 uses
  br label %bb.x

bb.u:                                             ; preds = %bb.t
  %puts58 = call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  %i.hd = call i32 @CVodeB(ptr noundef nonnull %i.du, double noundef 0.000000e+00, i32 noundef 1) #10 ; 2 uses
  %i.he = icmp slt i32 %i.hd, 0
  br i1 %i.he, label %check_retval.exit102, label %bb.v

check_retval.exit102:                             ; preds = %bb.u
  %i.hf = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.hg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hf, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.26, i32 noundef %i.hd) #11 ; 0 uses
  br label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.hh = load i32, ptr %i.d, align 4, !tbaa !25
  %i.hi = call i32 @CVodeGetB(ptr noundef nonnull %i.du, i32 noundef %i.hh, ptr noundef nonnull %i.a, ptr noundef nonnull %i.fp) #10 ; 2 uses
  %i.hj = icmp slt i32 %i.hi, 0
  br i1 %i.hj, label %check_retval.exit104, label %bb.w

check_retval.exit104:                             ; preds = %bb.v
  %i.hk = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.hl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hk, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.27, i32 noundef %i.hi) #11 ; 0 uses
  br label %bb.x

bb.w:                                             ; preds = %bb.v
  call fastcc void @PrintOutput(ptr noundef nonnull %i.fp, ptr noundef nonnull %i.i)
  call void @CVodeFree(ptr noundef nonnull %i.b) #10
  call void @N_VDestroy(ptr noundef nonnull %i.bz) #10
  call void @N_VDestroy(ptr noundef nonnull %i.fp) #10
  %i.hm = call i32 @SUNLinSolFree(ptr noundef nonnull %i.em) #10 ; 0 uses
  %i.hn = call i32 @SUNLinSolFree(ptr noundef nonnull %i.gp) #10 ; 0 uses
  %i.ho = call i32 @SUNContext_Free(ptr noundef nonnull @sunctx) #10 ; 0 uses
  call fastcc void @FreeUserData(ptr noundef nonnull %i.i)
  br label %bb.x

bb.x:                                             ; preds = %check_retval.exit104, %check_retval.exit102, %check_retval.exit100, %check_retval.exit98, %check_retval.exit96, %check_retval.exit94, %check_retval.exit92, %check_retval.exit90, %check_retval.exit88, %check_retval.exit86, %check_retval.exit84, %check_retval.exit82, %check_retval.exit80, %check_retval.exit78, %check_retval.exit76, %check_retval.exit74, %check_retval.exit72, %check_retval.exit70, %check_retval.exit68, %check_retval.exit66, %check_retval.exit64, %check_retval.exit, %bb.w
  %.0 = phi i32 [ 0, %bb.w ], [ 1, %check_retval.exit ], [ 1, %check_retval.exit104 ], [ 1, %check_retval.exit64 ], [ 1, %check_retval.exit66 ], [ 1, %check_retval.exit68 ], [ 1, %check_retval.exit70 ], [ 1, %check_retval.exit72 ], [ 1, %check_retval.exit74 ], [ 1, %check_retval.exit76 ], [ 1, %check_retval.exit78 ], [ 1, %check_retval.exit80 ], [ 1, %check_retval.exit82 ], [ 1, %check_retval.exit84 ], [ 1, %check_retval.exit86 ], [ 1, %check_retval.exit88 ], [ 1, %check_retval.exit90 ], [ 1, %check_retval.exit92 ], [ 1, %check_retval.exit94 ], [ 1, %check_retval.exit96 ], [ 1, %check_retval.exit98 ], [ 1, %check_retval.exit100 ], [ 1, %check_retval.exit102 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @SUNContext_Create(i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @N_VNew_Serial(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare ptr @CVodeCreate(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeSetUserData(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeInit(ptr noundef, ptr noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @f(double %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3) #0 {
bb.a:
  %i.a = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #10 ; 23 uses
  %i.b = tail call ptr @N_VGetArrayPointer(ptr noundef %2) #10 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.e = load i32, ptr %i.d, align 8, !tbaa !26   ; 13 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 808 ; 3 uses
  %i.g = getelementptr i8, ptr %3, i64 688        ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 736 ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !29   ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 784
  %i.k = load double, ptr %i.j, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 792
  %i.m = load double, ptr %i.l, align 8, !tbaa !28
  %i.n = sub i32 0, %i.i                          ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 304
  %i.p = getelementptr i8, ptr %3, i64 592        ; 5 uses
  %i.q = icmp sgt i32 %i.e, 0
  %i.r = sub i32 0, %i.e                          ; 2 uses
  %.not82 = icmp slt i32 %i.e, 1
  %i.s = zext i32 %i.e to i64                     ; 13 uses
  %i.t = shl nuw nsw i64 %i.s, 3
  br i1 %.not82, label %.split90.us.split, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  %i.u = add nuw i32 %i.e, 1
  %i.v = zext nneg i32 %i.e to i64
  %i.w = sext i32 %i.i to i64                     ; 2 uses
  %wide.trip.count = zext i32 %i.u to i64         ; 3 uses
  %i.x = add nsw i64 %wide.trip.count, -2         ; 2 uses
  %i.y = zext i32 %i.i to i64
  %scevgep = getelementptr i8, ptr %3, i64 808
  %i.z = zext i32 %i.i to i64
  %i.aa = shl nuw nsw i64 %wide.trip.count, 3     ; 3 uses
  %i.ab = getelementptr i8, ptr %3, i64 %i.aa
  %scevgep102 = getelementptr i8, ptr %i.ab, i64 800
  %i.ac = add nsw i64 %i.aa, -8                   ; 6 uses
  %scevgep105 = getelementptr i8, ptr %i.b, i64 %i.ac
  %i.ad = getelementptr i8, ptr %3, i64 %i.aa
  %scevgep107 = getelementptr i8, ptr %i.ad, i64 728
  %scevgep109 = getelementptr i8, ptr %i.a, i64 %i.ac
  %scevgep112 = getelementptr i8, ptr %i.a, i64 %i.ac
  %scevgep115 = getelementptr i8, ptr %i.a, i64 %i.ac
  %scevgep118 = getelementptr i8, ptr %i.a, i64 %i.ac
  %scevgep121 = getelementptr i8, ptr %i.a, i64 %i.ac
  %i.ae = shl nsw i64 %i.w, 3
  %i.af = mul nuw nsw i64 %i.s, 160               ; 2 uses
  %i.ag = shl nuw nsw i64 %i.s, 3
  %i.ah = getelementptr i8, ptr %3, i64 %i.ag
  %scevgep158 = getelementptr i8, ptr %i.ah, i64 592
  %i.ai = getelementptr i8, ptr %3, i64 %i.af
  %i.aj = getelementptr i8, ptr %i.ai, i64 808
  %i.ak = getelementptr i8, ptr %i.a, i64 %i.af
  %i.al = insertelement <2 x ptr> poison, ptr %i.p, i64 1
  %i.am = insertelement <2 x ptr> poison, ptr %scevgep158, i64 1
  %xtraiter = and i64 %i.s, 1
  %i.an = icmp eq i32 %i.e, 1
  %unroll_iter = and i64 %i.s, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod183 = trunc i32 %i.e to i1
  %min.iters.check167 = icmp ult i32 %i.e, 4
  %n.vec169 = and i64 %i.s, 2147483644            ; 3 uses
  %cmp.n180 = icmp eq i64 %n.vec169, %i.s
  %xtraiter184 = and i64 %i.s, 1
  %lcmp.mod185.not = icmp eq i64 %xtraiter184, 0
  %i.ao = add nsw i64 %i.s, -1
  %i.ap = zext nneg i32 %i.e to i64               ; 3 uses
  %min.iters.check = icmp ult i32 %i.e, 8
  %i.aq = trunc i64 %i.x to i32                   ; 5 uses
  %i.ar = icmp ugt i64 %i.x, 4294967295
  %n.vec = and i64 %i.ap, 2147483646              ; 2 uses
  %i.as = or i64 %i.ap, 1
  %cmp.n = icmp eq i64 %n.vec, %i.ap
  br label %.split

.split:                                           ; preds = %.split.preheader, %.split86
  %indvars.iv96 = phi i64 [ 0, %.split.preheader ], [ %indvars.iv.next97, %.split86 ] ; 8 uses
  %i.at = mul i64 %i.ae, %indvars.iv96            ; 4 uses
  %i.au = getelementptr i8, ptr %3, i64 %i.at
  %scevgep154 = getelementptr i8, ptr %i.au, i64 808 ; 2 uses
  %scevgep155 = getelementptr i8, ptr %i.aj, i64 %i.at ; 2 uses
  %scevgep156 = getelementptr i8, ptr %i.a, i64 %i.at
  %scevgep157 = getelementptr i8, ptr %i.ak, i64 %i.at
  %i.av = mul i64 %indvars.iv96, %i.z             ; 2 uses
  %i.aw = trunc i64 %i.av to i32                  ; 2 uses
  %i.ax = mul i64 %indvars.iv96, %i.y             ; 2 uses
  %i.ay = trunc i64 %i.ax to i32                  ; 2 uses
  %i.az = trunc nuw nsw i64 %indvars.iv96 to i32
  %i.ba = uitofp nneg i32 %i.az to double
  %i.bb = fmul double %i.m, %i.ba
  %i.bc = mul nsw i64 %indvars.iv96, %i.w
  %i.bd = icmp eq i64 %indvars.iv96, 19
  %i.be = select i1 %i.bd, i32 %i.n, i32 %i.i     ; 4 uses
  %i.bf = icmp eq i64 %indvars.iv96, 0
  %i.bg = select i1 %i.bf, i32 %i.i, i32 %i.n     ; 4 uses
  %i.bh = add i32 %i.bg, %i.ay
  %i.bi = add i32 %i.be, %i.ay
  %i.bj = add i32 %i.be, %i.aw
  %i.bk = add i32 %i.bg, %i.aw
  %i.bl = insertelement <2 x ptr> %i.al, ptr %scevgep154, i64 0
  %i.bm = insertelement <2 x ptr> poison, ptr %scevgep157, i64 0
  %i.bn = insertelement <2 x ptr> %i.bm, ptr %scevgep155, i64 1
  %i.bo = insertelement <2 x ptr> poison, ptr %scevgep156, i64 0
  %i.bp = insertelement <2 x ptr> %i.bo, ptr %scevgep154, i64 1
  %i.bq = insertelement <2 x ptr> %i.am, ptr %scevgep155, i64 0
  %i.br = icmp ult <2 x ptr> %i.bl, %i.bn
  %i.bs = icmp ult <2 x ptr> %i.bp, %i.bq
  %i.bt = and <2 x i1> %i.bs, %i.br
  %i.bu = bitcast <2 x i1> %i.bt to i2
  %conflict.rdx165.not = icmp eq i2 %i.bu, 0
  br label %bb.b

bb.b:                                             ; preds = %.split, %._crit_edge
  %indvars.iv92 = phi i64 [ 0, %.split ], [ %indvars.iv.next93, %._crit_edge ] ; 7 uses
  %i.bv = mul i64 %indvars.iv92, %i.s             ; 3 uses
  %i.bw = add i64 %i.av, %i.bv                    ; 2 uses
  %i.bx = trunc i64 %i.bw to i32
  %sext = shl i64 %i.bw, 32                       ; 2 uses
  %i.by = ashr exact i64 %sext, 32
  %i.bz = ashr exact i64 %sext, 29                ; 6 uses
  %scevgep101 = getelementptr i8, ptr %scevgep, i64 %i.bz
  %scevgep103 = getelementptr i8, ptr %scevgep102, i64 %i.bz
  %scevgep104 = getelementptr i8, ptr %i.b, i64 %i.bz ; 7 uses
  %scevgep106 = getelementptr i8, ptr %scevgep105, i64 %i.bz ; 7 uses
  %i.ca = trunc i64 %i.bv to i32
  %i.cb = add i32 %i.bj, %i.ca
  %i.cc = sext i32 %i.cb to i64
  %i.cd = shl nsw i64 %i.cc, 3                    ; 2 uses
  %scevgep114 = getelementptr i8, ptr %i.a, i64 %i.cd
  %scevgep116 = getelementptr i8, ptr %scevgep115, i64 %i.cd
  %i.ce = trunc i64 %i.bv to i32
  %i.cf = add i32 %i.bk, %i.ce
  %i.cg = sext i32 %i.cf to i64
  %i.ch = shl nsw i64 %i.cg, 3                    ; 2 uses
  %scevgep117 = getelementptr i8, ptr %i.a, i64 %i.ch
  %scevgep119 = getelementptr i8, ptr %scevgep118, i64 %i.ch
  %scevgep120 = getelementptr i8, ptr %i.a, i64 %i.bz
  %scevgep122 = getelementptr i8, ptr %scevgep121, i64 %i.bz
  %i.ci = mul i64 %indvars.iv92, %i.s             ; 3 uses
  %i.cj = add i64 %i.ax, %i.ci
  %i.ck = trunc i64 %i.cj to i32                  ; 4 uses
  %i.cl = trunc i64 %i.ci to i32
  %i.cm = add i32 %i.bh, %i.cl                    ; 2 uses
  %i.cn = trunc i64 %i.ci to i32
  %i.co = add i32 %i.bi, %i.cn                    ; 2 uses
  %i.cp = trunc nuw nsw i64 %indvars.iv92 to i32
  %i.cq = uitofp nneg i32 %i.cp to double
  %i.cr = fmul double %i.k, %i.cq
  %i.cs = mul nuw nsw i64 %indvars.iv92, %i.v
  %i.ct = add nsw i64 %i.cs, %i.bc                ; 3 uses
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ct ; 5 uses
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.ct ; 8 uses
  br i1 %i.q, label %.preheader.preheader.i, label %WebRates.exit

.preheader.preheader.i:                           ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cv, i8 0, i64 %i.t, i1 false), !tbaa !24
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %indvars.iv48.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next49.i, %._crit_edge.i ] ; 3 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv48.i ; 3 uses
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv48.i ; 3 uses
  br i1 %i.an, label %.epil.preheader, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i, %.preheader.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader.i.new ], [ 0, %.preheader.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.i.new ], [ 0, %.preheader.i ]
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !24
  %gep.i = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.cy = load double, ptr %gep.i, align 8, !tbaa !24
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv.i ; 2 uses
  %i.da = load double, ptr %i.cz, align 8, !tbaa !24
  %i.db = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.cy, double %i.da)
  store double %i.db, ptr %i.cz, align 8, !tbaa !24
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.dc = load double, ptr %i.cw, align 8, !tbaa !24
  %gep.i.1 = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %i.dd = load double, ptr %gep.i.1, align 8, !tbaa !24
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv.next.i ; 2 uses
  %i.df = load double, ptr %i.de, align 8, !tbaa !24
  %i.dg = tail call double @llvm.fmuladd.f64(double %i.dc, double %i.dd, double %i.df)
  store double %i.dg, ptr %i.de, align 8, !tbaa !24
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.preheader.i.new

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod183)
  %i.dh = load double, ptr %i.cw, align 8, !tbaa !24
  %gep.i.epil = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.epil.init
  %i.di = load double, ptr %gep.i.epil, align 8, !tbaa !24
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !24
  %i.dl = tail call double @llvm.fmuladd.f64(double %i.dh, double %i.di, double %i.dk)
  store double %i.dl, ptr %i.dj, align 8, !tbaa !24
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1 ; 2 uses
  %exitcond52.not.i = icmp eq i64 %indvars.iv.next49.i, %i.s
  br i1 %exitcond52.not.i, label %._crit_edge41.split.i, label %.preheader.i

._crit_edge41.split.i:                            ; preds = %._crit_edge.i
  %i.dm = tail call double @llvm.fmuladd.f64(double %i.cr, double %i.bb, double 1.000000e+00) ; 4 uses
  %conflict.rdx165.not.not = xor i1 %conflict.rdx165.not, true
  %brmerge = select i1 %min.iters.check167, i1 true, i1 %conflict.rdx165.not.not
  br i1 %brmerge, label %.lr.ph44.i.preheader, label %vector.ph168

vector.ph168:                                     ; preds = %._crit_edge41.split.i
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.dm, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body170

vector.body170:                                   ; preds = %vector.body170, %vector.ph168
  %index171 = phi i64 [ 0, %vector.ph168 ], [ %index.next178, %vector.body170 ] ; 4 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %index171 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %wide.load172 = load <2 x double>, ptr %i.dn, align 8, !tbaa !24, !alias.scope !37
  %wide.load173 = load <2 x double>, ptr %i.do, align 8, !tbaa !24, !alias.scope !37
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %index171 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %wide.load174 = load <2 x double>, ptr %i.dp, align 8, !tbaa !24, !alias.scope !40
  %wide.load175 = load <2 x double>, ptr %i.dq, align 8, !tbaa !24, !alias.scope !40
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %index171 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16 ; 2 uses
  %wide.load176 = load <2 x double>, ptr %i.dr, align 8, !tbaa !24, !alias.scope !42, !noalias !44
  %wide.load177 = load <2 x double>, ptr %i.ds, align 8, !tbaa !24, !alias.scope !42, !noalias !44
  %i.dt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load174, <2 x double> %broadcast.splat, <2 x double> %wide.load176)
  %i.du = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load175, <2 x double> %broadcast.splat, <2 x double> %wide.load177)
  %i.dv = fmul <2 x double> %wide.load172, %i.dt
  %i.dw = fmul <2 x double> %wide.load173, %i.du
  store <2 x double> %i.dv, ptr %i.dr, align 8, !tbaa !24, !alias.scope !42, !noalias !44
  store <2 x double> %i.dw, ptr %i.ds, align 8, !tbaa !24, !alias.scope !42, !noalias !44
  %index.next178 = add nuw i64 %index171, 4       ; 2 uses
  %i.dx = icmp eq i64 %index.next178, %n.vec169
  br i1 %i.dx, label %middle.block179, label %vector.body170, !llvm.loop !45

middle.block179:                                  ; preds = %vector.body170
  br i1 %cmp.n180, label %WebRates.exit, label %.lr.ph44.i.preheader

.lr.ph44.i.preheader:                             ; preds = %._crit_edge41.split.i, %middle.block179
  %indvars.iv53.i.ph = phi i64 [ %n.vec169, %middle.block179 ], [ 0, %._crit_edge41.split.i ] ; 6 uses
  br i1 %lcmp.mod185.not, label %.lr.ph44.i.prol.loopexit, label %.lr.ph44.i.prol

.lr.ph44.i.prol:                                  ; preds = %.lr.ph44.i.preheader
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv53.i.ph
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !24
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv53.i.ph
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !24
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv53.i.ph ; 2 uses
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !24
  %i.ee = tail call double @llvm.fmuladd.f64(double %i.eb, double %i.dm, double %i.ed)
  %i.ef = fmul double %i.dz, %i.ee
  store double %i.ef, ptr %i.ec, align 8, !tbaa !24
  %indvars.iv.next54.i.prol = or disjoint i64 %indvars.iv53.i.ph, 1
  br label %.lr.ph44.i.prol.loopexit

.lr.ph44.i.prol.loopexit:                         ; preds = %.lr.ph44.i.prol, %.lr.ph44.i.preheader
  %indvars.iv53.i.unr = phi i64 [ %indvars.iv53.i.ph, %.lr.ph44.i.preheader ], [ %indvars.iv.next54.i.prol, %.lr.ph44.i.prol ]
  %i.eg = icmp eq i64 %indvars.iv53.i.ph, %i.ao
  br i1 %i.eg, label %WebRates.exit, label %.lr.ph44.i

.lr.ph44.i:                                       ; preds = %.lr.ph44.i.prol.loopexit, %.lr.ph44.i
  %indvars.iv53.i = phi i64 [ %indvars.iv.next54.i.1, %.lr.ph44.i ], [ %indvars.iv53.i.unr, %.lr.ph44.i.prol.loopexit ] ; 5 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv53.i
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !24
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv53.i
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !24
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv53.i ; 2 uses
  %i.em = load double, ptr %i.el, align 8, !tbaa !24
  %i.en = tail call double @llvm.fmuladd.f64(double %i.ek, double %i.dm, double %i.em)
  %i.eo = fmul double %i.ei, %i.en
  store double %i.eo, ptr %i.el, align 8, !tbaa !24
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1 ; 3 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv.next54.i
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !24
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next54.i
  %i.es = load double, ptr %i.er, align 8, !tbaa !24
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv.next54.i ; 2 uses
  %i.eu = load double, ptr %i.et, align 8, !tbaa !24
  %i.ev = tail call double @llvm.fmuladd.f64(double %i.es, double %i.dm, double %i.eu)
  %i.ew = fmul double %i.eq, %i.ev
  store double %i.ew, ptr %i.et, align 8, !tbaa !24
  %indvars.iv.next54.i.1 = add nuw nsw i64 %indvars.iv53.i, 2 ; 2 uses
  %exitcond57.not.i.1 = icmp eq i64 %indvars.iv.next54.i.1, %i.s
  br i1 %exitcond57.not.i.1, label %WebRates.exit, label %.lr.ph44.i, !llvm.loop !46

WebRates.exit:                                    ; preds = %.lr.ph44.i.prol.loopexit, %.lr.ph44.i, %middle.block179, %bb.b
  %i.ex = icmp eq i64 %indvars.iv92, 19
  %i.ey = select i1 %i.ex, i32 %i.r, i32 %i.e     ; 4 uses
  %i.ez = icmp eq i64 %indvars.iv92, 0
  %i.fa = select i1 %i.ez, i32 %i.e, i32 %i.r     ; 4 uses
  %i.fb = trunc nsw i64 %i.ct to i32
  %i.fc = add i32 %i.fb, -1                       ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %WebRates.exit
  %i.fd = add i32 %i.ck, %i.aq
  %i.fe = icmp slt i32 %i.fd, %i.ck
  %i.ff = add i32 %i.cm, %i.aq
  %i.fg = icmp slt i32 %i.ff, %i.cm
  %i.fh = or i1 %i.fg, %i.ar
  %i.fi = add i32 %i.co, %i.aq
  %i.fj = icmp slt i32 %i.fi, %i.co
  %i.fk = add i32 %i.fa, %i.ck                    ; 2 uses
  %i.fl = add i32 %i.fk, %i.aq
  %i.fm = icmp slt i32 %i.fl, %i.fk
  %i.fn = add nsw i32 %i.ey, %i.ck                ; 2 uses
  %i.fo = add i32 %i.fn, %i.aq
  %i.fp = icmp slt i32 %i.fo, %i.fn
  %i.fq = or i1 %i.fe, %i.fh
  %i.fr = or i1 %i.fj, %i.fq
  %i.fs = or i1 %i.fm, %i.fr
  %i.ft = or i1 %i.fp, %i.fs
  br i1 %i.ft, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.fu = sext i32 %i.ey to i64
  %i.fv = add nsw i64 %i.by, %i.fu
  %i.fw = shl nsw i64 %i.fv, 3                    ; 2 uses
  %scevgep108 = getelementptr i8, ptr %i.a, i64 %i.fw
  %scevgep110 = getelementptr i8, ptr %scevgep109, i64 %i.fw
  %i.fx = add i32 %i.fa, %i.bx
  %i.fy = sext i32 %i.fx to i64
  %i.fz = shl nsw i64 %i.fy, 3                    ; 2 uses
  %scevgep111 = getelementptr i8, ptr %i.a, i64 %i.fz
  %scevgep113 = getelementptr i8, ptr %scevgep112, i64 %i.fz
  %bound0 = icmp ult ptr %scevgep101, %scevgep106
  %bound1 = icmp ult ptr %scevgep104, %scevgep103
  %found.conflict = and i1 %bound0, %bound1
  %bound0123 = icmp ult ptr %i.g, %scevgep106
  %bound1124 = icmp ult ptr %scevgep104, %scevgep107
  %found.conflict125 = and i1 %bound0123, %bound1124
  %conflict.rdx = or i1 %found.conflict, %found.conflict125
  %bound0126 = icmp ult ptr %scevgep104, %scevgep110
end_hunk_0
begin_hunk_1_@doubleIntgr:bb.a
  tail call void @llvm.assume(i1 %lcmp.mod30)
  %i.ep = trunc i64 %indvars.iv139.epil.init to i32
  %i.eq = mul i32 %i.c, %i.ep
  %i.er = add i32 %i.dx, %i.eq
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.es
  %i.eu = load double, ptr %i.et, align 8, !tbaa !24
  %i.ev = tail call double @llvm.fmuladd.f64(double %i.eu, double 2.000000e+00, double %.290112.epil.init)
  br label %._crit_edge116

._crit_edge116:                                   ; preds = %.epil.preheader25, %._crit_edge116.loopexit.unr-lcssa, %._crit_edge108.thread, %._crit_edge108
  %i.ew = phi i32 [ %i.ds, %._crit_edge108 ], [ %i.dn, %._crit_edge108.thread ], [ %i.ds, %._crit_edge116.loopexit.unr-lcssa ], [ %i.ds, %.epil.preheader25 ]
  %.091.lcssa145 = phi double [ %.091.lcssa, %._crit_edge108 ], [ %.lcssa7, %._crit_edge108.thread ], [ %.091.lcssa, %._crit_edge116.loopexit.unr-lcssa ], [ %.091.lcssa, %.epil.preheader25 ]
  %.290.lcssa = phi double [ %i.dw, %._crit_edge108 ], [ %i.dr, %._crit_edge108.thread ], [ %i.eo, %._crit_edge116.loopexit.unr-lcssa ], [ %i.ev, %.epil.preheader25 ]
  %i.ex = add nsw i32 %i.av, %i.ew
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ey
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !24
  %i.fb = fadd double %.290.lcssa, %i.fa
  %i.fc = fmul double %i.ba, %i.fb
  %i.fd = fadd double %.091.lcssa145, %i.fc
  %i.fe = fmul double %i.m, 5.000000e-01
  %i.ff = fmul double %i.fe, %i.fd
  ret double %i.ff
}

; Function Attrs: nounwind uwtable
define internal fastcc void @CbInit(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [6 x double], align 16            ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call ptr @N_VGetArrayPointer(ptr noundef %0) #10 ; 20 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = load i32, ptr %i.c, align 8, !tbaa !26   ; 4 uses
  %.not27 = icmp slt i32 %i.d, 1
  br i1 %.not27, label %.split38, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !29
  %i.g = zext nneg i32 %i.d to i64
  %i.h = shl nuw nsw i64 %i.g, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %i.h, i1 false), !tbaa !24
  %.40..40..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store double 1.000000e+00, ptr %.40..40..sroa_idx, align 8, !tbaa !24
  %i.i = sext i32 %i.f to i64
  %i.j = shl nsw i64 %i.i, 3
  %i.k = zext nneg i32 %i.d to i64                ; 19 uses
  %i.l = shl nuw nsw i64 %i.k, 3
  %i.m = zext nneg i32 %i.d to i64
  %i.n = shl nuw nsw i64 %i.m, 3                  ; 20 uses
  %invariant.gep = getelementptr i8, ptr %i.b, i64 %i.l
  %i.o = shl nuw nsw i64 %i.k, 4
  %invariant.gep46 = getelementptr i8, ptr %i.b, i64 %i.o
  %i.p = mul nuw nsw i64 %i.k, 24
  %invariant.gep48 = getelementptr i8, ptr %i.b, i64 %i.p
  %i.q = shl nuw nsw i64 %i.k, 5
  %invariant.gep50 = getelementptr i8, ptr %i.b, i64 %i.q
  %i.r = mul nuw nsw i64 %i.k, 40
  %invariant.gep52 = getelementptr i8, ptr %i.b, i64 %i.r
  %i.s = mul nuw nsw i64 %i.k, 48
  %invariant.gep54 = getelementptr i8, ptr %i.b, i64 %i.s
  %i.t = mul nuw nsw i64 %i.k, 56
  %invariant.gep56 = getelementptr i8, ptr %i.b, i64 %i.t
  %i.u = shl nuw nsw i64 %i.k, 6
  %invariant.gep58 = getelementptr i8, ptr %i.b, i64 %i.u
  %i.v = mul nuw nsw i64 %i.k, 72
  %invariant.gep60 = getelementptr i8, ptr %i.b, i64 %i.v
  %i.w = mul nuw nsw i64 %i.k, 80
  %invariant.gep62 = getelementptr i8, ptr %i.b, i64 %i.w
  %i.x = mul nuw nsw i64 %i.k, 88
  %invariant.gep64 = getelementptr i8, ptr %i.b, i64 %i.x
  %i.y = mul nuw nsw i64 %i.k, 96
  %invariant.gep66 = getelementptr i8, ptr %i.b, i64 %i.y
  %i.z = mul nuw nsw i64 %i.k, 104
  %invariant.gep68 = getelementptr i8, ptr %i.b, i64 %i.z
  %i.aa = mul nuw nsw i64 %i.k, 112
  %invariant.gep70 = getelementptr i8, ptr %i.b, i64 %i.aa
  %i.ab = mul nuw nsw i64 %i.k, 120
  %invariant.gep72 = getelementptr i8, ptr %i.b, i64 %i.ab
  %i.ac = shl nuw nsw i64 %i.k, 7
  %invariant.gep74 = getelementptr i8, ptr %i.b, i64 %i.ac
  %i.ad = mul nuw nsw i64 %i.k, 136
  %invariant.gep76 = getelementptr i8, ptr %i.b, i64 %i.ad
  %i.ae = mul nuw nsw i64 %i.k, 144
  %invariant.gep78 = getelementptr i8, ptr %i.b, i64 %i.ae
  %i.af = mul nuw nsw i64 %i.k, 152
  %invariant.gep80 = getelementptr i8, ptr %i.b, i64 %i.af
  br label %.split

.split:                                           ; preds = %.split.preheader, %.split
  %indvar = phi i64 [ 0, %.split.preheader ], [ %indvar.next, %.split ] ; 2 uses
  %i.ag = mul nsw i64 %i.j, %indvar               ; 20 uses
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %scevgep, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !24
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !24
  %gep47 = getelementptr i8, ptr %invariant.gep46, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep47, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !24
  %gep49 = getelementptr i8, ptr %invariant.gep48, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep49, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !24
  %gep51 = getelementptr i8, ptr %invariant.gep50, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep51, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !24
  %gep53 = getelementptr i8, ptr %invariant.gep52, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep53, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !24
  %gep55 = getelementptr i8, ptr %invariant.gep54, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep55, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !24
  %gep57 = getelementptr i8, ptr %invariant.gep56, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep57, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !24
  %gep59 = getelementptr i8, ptr %invariant.gep58, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep59, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !24
  %gep61 = getelementptr i8, ptr %invariant.gep60, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep61, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !24
  %gep63 = getelementptr i8, ptr %invariant.gep62, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep63, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !24
  %gep65 = getelementptr i8, ptr %invariant.gep64, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep65, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !24
  %gep67 = getelementptr i8, ptr %invariant.gep66, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep67, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !24
  %gep69 = getelementptr i8, ptr %invariant.gep68, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep69, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !24
  %gep71 = getelementptr i8, ptr %invariant.gep70, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep71, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !24
  %gep73 = getelementptr i8, ptr %invariant.gep72, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep73, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !24
  %gep75 = getelementptr i8, ptr %invariant.gep74, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep75, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !24
  %gep77 = getelementptr i8, ptr %invariant.gep76, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep77, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !24
  %gep79 = getelementptr i8, ptr %invariant.gep78, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep79, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !24
  %gep81 = getelementptr i8, ptr %invariant.gep80, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep81, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !24
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %indvar.next, 20
  br i1 %exitcond.not, label %.split38, label %.split

.split38:                                         ; preds = %.split, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

declare i32 @CVodeCreateB(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeSetUserDataB(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeInitB(ptr noundef, i32 noundef, ptr noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @fB(double %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef captures(none) %4) #0 {
bb.a:
  %i.a = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #10 ; 5 uses
  %i.b = tail call ptr @N_VGetArrayPointer(ptr noundef %2) #10 ; 25 uses
  %i.c = tail call ptr @N_VGetArrayPointer(ptr noundef %3) #10 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.f = load i32, ptr %i.e, align 8, !tbaa !26   ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 808
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 20008 ; 3 uses
  %i.i = getelementptr i8, ptr %4, i64 688        ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 736 ; 2 uses
  %i.k = load i32, ptr %i.d, align 4, !tbaa !29   ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 784
  %i.m = load double, ptr %i.l, align 8, !tbaa !27
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 792
  %i.o = load double, ptr %i.n, align 8, !tbaa !28
  %i.p = sub i32 0, %i.k                          ; 2 uses
  %i.q = getelementptr i8, ptr %4, i64 304        ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 592 ; 6 uses
  %i.s = icmp sgt i32 %i.f, 0
  %i.t = sub i32 0, %i.f                          ; 2 uses
  %.not88 = icmp slt i32 %i.f, 1
  %wide.trip.count.i = zext i32 %i.f to i64       ; 24 uses
  %i.u = add i32 %i.f, 1                          ; 2 uses
  %i.v = sext i32 %i.f to i64                     ; 4 uses
  %i.w = sext i32 %i.k to i64                     ; 4 uses
  %wide.trip.count = zext i32 %i.u to i64         ; 4 uses
  %i.x = add nsw i64 %wide.trip.count, -2         ; 2 uses
  %i.y = zext i32 %i.k to i64
  %scevgep = getelementptr i8, ptr %4, i64 20008
  %i.z = zext i32 %i.k to i64
  %i.aa = shl nuw nsw i64 %wide.trip.count, 3     ; 3 uses
  %i.ab = getelementptr i8, ptr %4, i64 %i.aa
  %scevgep102 = getelementptr i8, ptr %i.ab, i64 20000
  %i.ac = add nsw i64 %i.aa, -8                   ; 6 uses
  %scevgep105 = getelementptr i8, ptr %i.c, i64 %i.ac
  %i.ad = getelementptr i8, ptr %4, i64 %i.aa
  %scevgep107 = getelementptr i8, ptr %i.ad, i64 728
  %scevgep109 = getelementptr i8, ptr %i.b, i64 %i.ac
  %scevgep112 = getelementptr i8, ptr %i.b, i64 %i.ac
  %scevgep115 = getelementptr i8, ptr %i.b, i64 %i.ac
  %scevgep118 = getelementptr i8, ptr %i.b, i64 %i.ac
  %scevgep121 = getelementptr i8, ptr %i.b, i64 %i.ac
  %i.ae = shl nsw i64 %i.w, 3
  %i.af = shl nsw i64 %i.v, 3
  %i.ag = shl nuw nsw i64 %wide.trip.count.i, 3   ; 2 uses
  %i.ah = mul nuw nsw i64 %wide.trip.count.i, 56
  %i.ai = getelementptr i8, ptr %4, i64 %i.ah
  %scevgep156 = getelementptr i8, ptr %i.ai, i64 256
  %i.aj = shl nsw i64 %i.w, 3
  %i.ak = mul nsw i64 %i.v, 152
  %i.al = shl nuw nsw i64 %wide.trip.count.i, 3
  %i.am = add nsw i64 %i.ak, %i.al                ; 2 uses
  %i.an = shl nsw i64 %i.w, 3
  %i.ao = shl nsw i64 %i.v, 3
  %i.ap = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %i.aq = getelementptr i8, ptr %4, i64 %i.am
  %i.ar = getelementptr i8, ptr %i.aq, i64 20008
  %i.as = getelementptr i8, ptr %4, i64 %i.ag
  %i.at = getelementptr i8, ptr %i.as, i64 20008
  %min.iters.check220 = icmp ult i32 %i.f, 4
  %n.vec222 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n231 = icmp eq i64 %n.vec222, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %xtraiter237 = and i64 %wide.trip.count.i, 1
  %i.au = icmp eq i64 %i.ap, 0
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod238.not = icmp eq i64 %xtraiter237, 0
  %lcmp.mod239 = trunc i32 %i.f to i1
  %min.iters.check206 = icmp eq i32 %i.f, 1
  %n.vec208 = and i64 %wide.trip.count.i, 2147483646 ; 3 uses
  %cmp.n216 = icmp eq i64 %n.vec208, %wide.trip.count.i
  %xtraiter240 = and i64 %wide.trip.count.i, 1
  %lcmp.mod241.not = icmp eq i64 %xtraiter240, 0
  %i.av = add nsw i64 %wide.trip.count.i, -1
  %min.iters.check173 = icmp ult i32 %i.f, 4
  %n.vec175 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n186 = icmp eq i64 %n.vec175, %wide.trip.count.i
  %xtraiter243 = and i64 %wide.trip.count.i, 1
  %lcmp.mod244.not = icmp eq i64 %xtraiter243, 0
  %i.aw = add nsw i64 %wide.trip.count.i, -1
  %i.ax = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %min.iters.check = icmp ult i32 %i.u, 9
  %i.ay = trunc i64 %i.x to i32                   ; 5 uses
  %i.az = icmp ugt i64 %i.x, 4294967295
  %n.vec = and i64 %i.ax, -2                      ; 2 uses
  %i.ba = or i64 %i.ax, 1
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %indvars.iv97 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next98, %bb.d ] ; 10 uses
  %i.bb = mul i64 %i.an, %indvars.iv97
  %i.bc = mul i64 %i.aj, %indvars.iv97            ; 5 uses
  %i.bd = getelementptr i8, ptr %4, i64 %i.bc
  %scevgep189 = getelementptr i8, ptr %i.bd, i64 808 ; 2 uses
  %scevgep190 = getelementptr i8, ptr %i.ar, i64 %i.bc ; 2 uses
  %scevgep191 = getelementptr i8, ptr %i.b, i64 %i.bc
  %i.be = add i64 %i.am, %i.bc                    ; 2 uses
  %scevgep192 = getelementptr i8, ptr %i.b, i64 %i.be
  %scevgep193 = getelementptr i8, ptr %i.a, i64 %i.bc
  %scevgep194 = getelementptr i8, ptr %i.a, i64 %i.be
  %i.bf = mul i64 %i.ae, %indvars.iv97            ; 4 uses
  %i.bg = add i64 %i.ag, %i.bf
  %i.bh = mul i64 %indvars.iv97, %i.z             ; 2 uses
  %i.bi = trunc i64 %i.bh to i32                  ; 2 uses
  %i.bj = mul i64 %indvars.iv97, %i.y             ; 2 uses
  %i.bk = trunc i64 %i.bj to i32                  ; 2 uses
  %i.bl = trunc nuw nsw i64 %indvars.iv97 to i32
  %i.bm = uitofp nneg i32 %i.bl to double
  %i.bn = fmul double %i.o, %i.bm
  %i.bo = mul nsw i64 %indvars.iv97, %i.w
  %i.bp = icmp eq i64 %indvars.iv97, 19
  %i.bq = select i1 %i.bp, i32 %i.p, i32 %i.k     ; 4 uses
  %i.br = icmp eq i64 %indvars.iv97, 0
  %i.bs = select i1 %i.br, i32 %i.k, i32 %i.p     ; 4 uses
  %i.bt = add i32 %i.bs, %i.bk
  %i.bu = add i32 %i.bq, %i.bk
  %i.bv = add i32 %i.bq, %i.bi
  %i.bw = add i32 %i.bs, %i.bi
  %i.bx = insertelement <2 x ptr> poison, ptr %scevgep189, i64 0
  %i.by = insertelement <2 x ptr> %i.bx, ptr %scevgep193, i64 1
  %i.bz = insertelement <2 x ptr> poison, ptr %scevgep192, i64 0
  %i.ca = insertelement <2 x ptr> %i.bz, ptr %scevgep190, i64 1
  %i.cb = insertelement <2 x ptr> poison, ptr %scevgep191, i64 0
  %i.cc = insertelement <2 x ptr> %i.cb, ptr %scevgep189, i64 1
  %i.cd = insertelement <2 x ptr> poison, ptr %scevgep190, i64 0
  %i.ce = insertelement <2 x ptr> %i.cd, ptr %scevgep194, i64 1
  %i.cf = getelementptr i8, ptr %4, i64 %i.bf
  %i.cg = getelementptr i8, ptr %i.cf, i64 20008
  %i.ch = getelementptr i8, ptr %i.at, i64 %i.bf
  %invariant.op = add i64 215, %i.bb
  %i.ci = icmp ult <2 x ptr> %i.by, %i.ca
  %i.cj = icmp ult <2 x ptr> %i.cc, %i.ce
  %i.ck = and <2 x i1> %i.cj, %i.ci
  %i.cl = bitcast <2 x i1> %i.ck to i2
  %conflict.rdx204.not = icmp eq i2 %i.cl, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %indvars.iv93 = phi i64 [ 0, %bb.b ], [ %indvars.iv.next94, %._crit_edge ] ; 9 uses
  %i.cm = mul i64 %i.af, %indvars.iv93            ; 4 uses
  %scevgep154 = getelementptr i8, ptr %i.cg, i64 %i.cm ; 3 uses
  %scevgep155 = getelementptr i8, ptr %i.ch, i64 %i.cm ; 3 uses
  %i.cn = add i64 %i.bf, %i.cm                    ; 2 uses
  %scevgep157 = getelementptr i8, ptr %i.a, i64 %i.cn
  %i.co = add i64 %i.bg, %i.cm                    ; 2 uses
  %scevgep158 = getelementptr i8, ptr %i.a, i64 %i.co
  %scevgep159 = getelementptr i8, ptr %i.b, i64 %i.cn
  %scevgep160 = getelementptr i8, ptr %i.b, i64 %i.co
  %i.cp = mul i64 %indvars.iv93, %wide.trip.count.i ; 3 uses
  %i.cq = add i64 %i.bh, %i.cp                    ; 2 uses
  %i.cr = trunc i64 %i.cq to i32                  ; 2 uses
  %sext = shl i64 %i.cq, 32
  %i.cs = ashr exact i64 %sext, 29                ; 6 uses
  %scevgep101 = getelementptr i8, ptr %scevgep, i64 %i.cs
  %scevgep103 = getelementptr i8, ptr %scevgep102, i64 %i.cs
  %scevgep104 = getelementptr i8, ptr %i.c, i64 %i.cs ; 7 uses
  %scevgep106 = getelementptr i8, ptr %scevgep105, i64 %i.cs ; 7 uses
  %i.ct = trunc i64 %i.cp to i32
  %i.cu = add i32 %i.bv, %i.ct
  %i.cv = sext i32 %i.cu to i64
  %i.cw = shl nsw i64 %i.cv, 3                    ; 2 uses
  %scevgep114 = getelementptr i8, ptr %i.b, i64 %i.cw
  %scevgep116 = getelementptr i8, ptr %scevgep115, i64 %i.cw
  %i.cx = trunc i64 %i.cp to i32
  %i.cy = add i32 %i.bw, %i.cx
  %i.cz = sext i32 %i.cy to i64
  %i.da = shl nsw i64 %i.cz, 3                    ; 2 uses
  %scevgep117 = getelementptr i8, ptr %i.b, i64 %i.da
  %scevgep119 = getelementptr i8, ptr %scevgep118, i64 %i.da
  %scevgep120 = getelementptr i8, ptr %i.b, i64 %i.cs
  %scevgep122 = getelementptr i8, ptr %scevgep121, i64 %i.cs
  %i.db = mul i64 %indvars.iv93, %wide.trip.count.i ; 3 uses
  %i.dc = add i64 %i.bj, %i.db
  %i.dd = trunc i64 %i.dc to i32                  ; 4 uses
  %i.de = trunc i64 %i.db to i32
  %i.df = add i32 %i.bt, %i.de                    ; 2 uses
  %i.dg = trunc i64 %i.db to i32
  %i.dh = add i32 %i.bu, %i.dg                    ; 2 uses
  %i.di = trunc nuw nsw i64 %indvars.iv93 to i32
  %i.dj = uitofp nneg i32 %i.di to double
  %i.dk = fmul double %i.m, %i.dj
  %i.dl = mul nsw i64 %indvars.iv93, %i.v
  %i.dm = add nsw i64 %i.dl, %i.bo                ; 5 uses
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.dm ; 6 uses
  %i.do = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.dm ; 5 uses
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.dm ; 13 uses
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.dm ; 8 uses
  %i.dr = tail call double @llvm.fmuladd.f64(double %i.dk, double %i.bn, double 1.000000e+00) ; 6 uses
  br i1 %i.s, label %.lr.ph.i.preheader, label %._crit_edge

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.ds = mul i64 %i.ao, %indvars.iv93
  %op.rdx233.reass = add i64 %i.ds, %invariant.op
  %diff.check = icmp ult i64 %op.rdx233.reass, 31
  %or.cond = select i1 %min.iters.check220, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader236, label %vector.ph221

vector.ph221:                                     ; preds = %.lr.ph.i.preheader
  %broadcast.splatinsert223 = insertelement <2 x double> poison, double %i.dr, i64 0
  %broadcast.splat224 = shufflevector <2 x double> %broadcast.splatinsert223, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body225

vector.body225:                                   ; preds = %vector.body225, %vector.ph221
  %index226 = phi i64 [ 0, %vector.ph221 ], [ %index.next229, %vector.body225 ] ; 3 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %index226 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %wide.load227 = load <2 x double>, ptr %i.dt, align 8, !tbaa !24
  %wide.load228 = load <2 x double>, ptr %i.du, align 8, !tbaa !24
  %i.dv = fmul <2 x double> %broadcast.splat224, %wide.load227
  %i.dw = fmul <2 x double> %broadcast.splat224, %wide.load228
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %index226 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  store <2 x double> %i.dv, ptr %i.dx, align 8, !tbaa !24
  store <2 x double> %i.dw, ptr %i.dy, align 8, !tbaa !24
  %index.next229 = add nuw i64 %index226, 4       ; 2 uses
  %i.dz = icmp eq i64 %index.next229, %n.vec222
  br i1 %i.dz, label %middle.block230, label %vector.body225, !llvm.loop !103

middle.block230:                                  ; preds = %vector.body225
  br i1 %cmp.n231, label %.preheader60.i.preheader, label %.lr.ph.i.preheader236

.lr.ph.i.preheader236:                            ; preds = %.lr.ph.i.preheader, %middle.block230
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec222, %middle.block230 ] ; 3 uses
  %i.ea = sub nsw i64 %i.ap, %indvars.iv.i.ph
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader236, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader236 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader236 ]
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i.prol
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !24
  %i.ed = fmul double %i.dr, %i.ec
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv.i.prol
  store double %i.ed, ptr %i.ee, align 8, !tbaa !24
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !104

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader236
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader236 ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.ef = icmp ult i64 %i.ea, 3
  br i1 %i.ef, label %.preheader60.i.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !24
  %i.ei = fmul double %i.dr, %i.eh
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv.i
  store double %i.ei, ptr %i.ej, align 8, !tbaa !24
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.i
  %i.el = load double, ptr %i.ek, align 8, !tbaa !24
  %i.em = fmul double %i.dr, %i.el
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv.next.i
  store double %i.em, ptr %i.en, align 8, !tbaa !24
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.i.1
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !24
  %i.eq = fmul double %i.dr, %i.ep
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv.next.i.1
  store double %i.eq, ptr %i.er, align 8, !tbaa !24
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.i.2
  %i.et = load double, ptr %i.es, align 8, !tbaa !24
  %i.eu = fmul double %i.dr, %i.et
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv.next.i.2
  store double %i.eu, ptr %i.ev, align 8, !tbaa !24
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %.preheader60.i.preheader, label %.lr.ph.i, !llvm.loop !105

.preheader60.i.preheader:                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block230
  br label %.preheader60.i

.preheader60.i:                                   ; preds = %.preheader60.i.preheader, %._crit_edge.i
  %indvars.iv79.i = phi i64 [ %indvars.iv.next80.i, %._crit_edge.i ], [ 0, %.preheader60.i.preheader ] ; 3 uses
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv79.i ; 3 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv79.i ; 3 uses
  br i1 %i.au, label %.epil.preheader, label %.preheader60.i.new

.preheader60.i.new:                               ; preds = %.preheader60.i, %.preheader60.i.new
  %indvars.iv74.i = phi i64 [ %indvars.iv.next75.i.1, %.preheader60.i.new ], [ 0, %.preheader60.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader60.i.new ], [ 0, %.preheader60.i ]
  %gep.i = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i, i64 %indvars.iv74.i
  %i.ex = load double, ptr %gep.i, align 8, !tbaa !24
  %i.ey = load double, ptr %i.ew, align 8, !tbaa !24
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv74.i ; 2 uses
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !24
  %i.fb = tail call double @llvm.fmuladd.f64(double %i.ex, double %i.ey, double %i.fa)
  store double %i.fb, ptr %i.ez, align 8, !tbaa !24
  %indvars.iv.next75.i = or disjoint i64 %indvars.iv74.i, 1 ; 2 uses
  %gep.i.1 = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next75.i
  %i.fc = load double, ptr %gep.i.1, align 8, !tbaa !24
  %i.fd = load double, ptr %i.ew, align 8, !tbaa !24
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv.next75.i ; 2 uses
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !24
  %i.fg = tail call double @llvm.fmuladd.f64(double %i.fc, double %i.fd, double %i.ff)
  store double %i.fg, ptr %i.fe, align 8, !tbaa !24
  %indvars.iv.next75.i.1 = add nuw nsw i64 %indvars.iv74.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.preheader60.i.new

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader60.i.new
  br i1 %lcmp.mod238.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader60.i
  %indvars.iv74.i.epil.init = phi i64 [ 0, %.preheader60.i ], [ %indvars.iv.next75.i.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod239)
  %gep.i.epil = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i, i64 %indvars.iv74.i.epil.init
  %i.fh = load double, ptr %gep.i.epil, align 8, !tbaa !24
  %i.fi = load double, ptr %i.ew, align 8, !tbaa !24
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv74.i.epil.init ; 2 uses
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !24
  %i.fl = tail call double @llvm.fmuladd.f64(double %i.fh, double %i.fi, double %i.fk)
  store double %i.fl, ptr %i.fj, align 8, !tbaa !24
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1 ; 2 uses
  %exitcond83.not.i = icmp eq i64 %indvars.iv.next80.i, %wide.trip.count.i
  br i1 %exitcond83.not.i, label %.lr.ph67.i.preheader, label %.preheader60.i

.lr.ph67.i.preheader:                             ; preds = %._crit_edge.i
  %conflict.rdx204.not.not = xor i1 %conflict.rdx204.not, true
  %brmerge = select i1 %min.iters.check206, i1 true, i1 %conflict.rdx204.not.not
  br i1 %brmerge, label %.lr.ph67.i.preheader235, label %vector.body209

vector.body209:                                   ; preds = %.lr.ph67.i.preheader, %vector.body209
  %index210 = phi i64 [ %index.next214, %vector.body209 ], [ 0, %.lr.ph67.i.preheader ] ; 5 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %index210
  %wide.load211 = load <2 x double>, ptr %i.fm, align 8, !tbaa !24, !alias.scope !106
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %index210 ; 2 uses
  %wide.load212 = load <2 x double>, ptr %i.fn, align 8, !tbaa !24, !alias.scope !109, !noalias !111 ; 2 uses
  %i.fo = fmul <2 x double> %wide.load211, %wide.load212
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %index210
  store <2 x double> %i.fo, ptr %i.fp, align 8, !tbaa !24, !alias.scope !109, !noalias !111
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %index210
  %wide.load213 = load <2 x double>, ptr %i.fq, align 8, !tbaa !24, !alias.scope !113
  %i.fr = fmul <2 x double> %wide.load212, %wide.load213
  store <2 x double> %i.fr, ptr %i.fn, align 8, !tbaa !24, !alias.scope !109, !noalias !111
  %index.next214 = add nuw i64 %index210, 2       ; 2 uses
  %i.fs = icmp eq i64 %index.next214, %n.vec208
  br i1 %i.fs, label %middle.block215, label %vector.body209, !llvm.loop !114

middle.block215:                                  ; preds = %vector.body209
  br i1 %cmp.n216, label %.preheader.i.preheader, label %.lr.ph67.i.preheader235

.lr.ph67.i.preheader235:                          ; preds = %.lr.ph67.i.preheader, %middle.block215
  %indvars.iv84.i.ph = phi i64 [ %n.vec208, %middle.block215 ], [ 0, %.lr.ph67.i.preheader ] ; 7 uses
  br i1 %lcmp.mod241.not, label %.lr.ph67.i.prol.loopexit, label %.lr.ph67.i.prol

.lr.ph67.i.prol:                                  ; preds = %.lr.ph67.i.preheader235
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv84.i.ph
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !24
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv84.i.ph ; 2 uses
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !24 ; 2 uses
  %i.fx = fmul double %i.fu, %i.fw
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv84.i.ph
  store double %i.fx, ptr %i.fy, align 8, !tbaa !24
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv84.i.ph
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !24
  %i.gb = fmul double %i.fw, %i.ga
  store double %i.gb, ptr %i.fv, align 8, !tbaa !24
  %indvars.iv.next85.i.prol = or disjoint i64 %indvars.iv84.i.ph, 1
  br label %.lr.ph67.i.prol.loopexit

.lr.ph67.i.prol.loopexit:                         ; preds = %.lr.ph67.i.prol, %.lr.ph67.i.preheader235
  %indvars.iv84.i.unr = phi i64 [ %indvars.iv84.i.ph, %.lr.ph67.i.preheader235 ], [ %indvars.iv.next85.i.prol, %.lr.ph67.i.prol ]
  %i.gc = icmp eq i64 %indvars.iv84.i.ph, %i.av
  br i1 %i.gc, label %.preheader.i.preheader, label %.lr.ph67.i
end_hunk_1
