Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/cvsFoodWeb_ASAp_kry?download=true
inline.NumInlined: 58
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 40
begin_hunk_0_@main:bb.a
  %puts47 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %i.fg = call i32 @CVodeF(ptr noundef nonnull %i.du, double noundef 1.000000e+01, ptr noundef nonnull %i.bz, ptr noundef nonnull %i.a, i32 noundef 1, ptr noundef nonnull %i.c) #10 ; 2 uses
  %i.fh = icmp slt i32 %i.fg, 0
  br i1 %i.fh, label %check_retval.exit84, label %bb.m

check_retval.exit84:                              ; preds = %bb.l
  %i.fi = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.fj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fi, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.15, i32 noundef %i.fg) #11 ; 0 uses
  br label %bb.x

bb.m:                                             ; preds = %bb.l
  %i.fk = load i32, ptr %i.c, align 4, !tbaa !23
  %i.fl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.fk) ; 0 uses
  %i.fm = call fastcc double @doubleIntgr(ptr noundef nonnull %i.bz, ptr noundef nonnull %i.i)
  %i.fn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef 6, double noundef %i.fm) ; 0 uses
  %i.fo = load ptr, ptr @sunctx, align 8, !tbaa !46
  %i.fp = call ptr @N_VNew_Serial(i64 noundef 2400, ptr noundef %i.fo) #10 ; 7 uses
  %i.fq = icmp eq ptr %i.fp, null
  br i1 %i.fq, label %check_retval.exit86, label %bb.n

check_retval.exit86:                              ; preds = %bb.m
  %i.fr = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.fs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fr, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.2) #11 ; 0 uses
  br label %bb.x

bb.n:                                             ; preds = %bb.m
  call fastcc void @CbInit(ptr noundef nonnull %i.fp, ptr noundef nonnull %i.i)
  %puts50 = call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %i.ft = call i32 @CVodeCreateB(ptr noundef nonnull %i.du, i32 noundef 2, ptr noundef nonnull %i.d) #10 ; 2 uses
  %i.fu = icmp slt i32 %i.ft, 0
  br i1 %i.fu, label %check_retval.exit88, label %bb.o

check_retval.exit88:                              ; preds = %bb.n
  %i.fv = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.fw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fv, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.19, i32 noundef %i.ft) #11 ; 0 uses
  br label %bb.x

bb.o:                                             ; preds = %bb.n
  %i.fx = load i32, ptr %i.d, align 4, !tbaa !23
  %i.fy = call i32 @CVodeSetUserDataB(ptr noundef nonnull %i.du, i32 noundef %i.fx, ptr noundef nonnull %i.i) #10 ; 2 uses
  %i.fz = icmp slt i32 %i.fy, 0
  br i1 %i.fz, label %check_retval.exit90, label %bb.p

check_retval.exit90:                              ; preds = %bb.o
  %i.ga = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.gb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ga, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.20, i32 noundef %i.fy) #11 ; 0 uses
  br label %bb.x

bb.p:                                             ; preds = %bb.o
  %i.gc = load i32, ptr %i.d, align 4, !tbaa !23
  %i.gd = call i32 @CVodeInitB(ptr noundef nonnull %i.du, i32 noundef %i.gc, ptr noundef nonnull @fB, double noundef 1.000000e+01, ptr noundef nonnull %i.fp) #10 ; 2 uses
  %i.ge = icmp slt i32 %i.gd, 0
  br i1 %i.ge, label %check_retval.exit92, label %bb.q

check_retval.exit92:                              ; preds = %bb.p
  %i.gf = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.gg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gf, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.21, i32 noundef %i.gd) #11 ; 0 uses
  br label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.gh = load i32, ptr %i.d, align 4, !tbaa !23
  %i.gi = call i32 @CVodeSStolerancesB(ptr noundef nonnull %i.du, i32 noundef %i.gh, double noundef 1.000000e-05, double noundef 1.000000e-05) #10 ; 2 uses
  %i.gj = icmp slt i32 %i.gi, 0
  br i1 %i.gj, label %check_retval.exit94, label %bb.r

check_retval.exit94:                              ; preds = %bb.q
  %i.gk = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.gl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gk, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.22, i32 noundef %i.gi) #11 ; 0 uses
  br label %bb.x

bb.r:                                             ; preds = %bb.q
  %i.gm = load i32, ptr %i.d, align 4, !tbaa !23
  %i.gn = getelementptr inbounds nuw i8, ptr %i.i, i64 39232
  store i32 %i.gm, ptr %i.gn, align 8, !tbaa !31
  %i.go = load ptr, ptr @sunctx, align 8, !tbaa !46
  %i.gp = call ptr @SUNLinSol_SPGMR(ptr noundef nonnull %i.fp, i32 noundef 1, i32 noundef 0, ptr noundef %i.go) #10 ; 3 uses
  %i.gq = icmp eq ptr %i.gp, null
  br i1 %i.gq, label %check_retval.exit96, label %bb.s

check_retval.exit96:                              ; preds = %bb.r
  %i.gr = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.gs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gr, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.8) #11 ; 0 uses
  br label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.gt = load i32, ptr %i.d, align 4, !tbaa !23
  %i.gu = call i32 @CVodeSetLinearSolverB(ptr noundef nonnull %i.du, i32 noundef %i.gt, ptr noundef nonnull %i.gp, ptr noundef null) #10 ; 2 uses
  %i.gv = icmp slt i32 %i.gu, 0
  br i1 %i.gv, label %check_retval.exit98, label %bb.t

check_retval.exit98:                              ; preds = %bb.s
  %i.gw = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.gx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gw, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.23, i32 noundef %i.gu) #11 ; 0 uses
  br label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.gy = load i32, ptr %i.d, align 4, !tbaa !23
  %i.gz = call i32 @CVodeSetPreconditionerB(ptr noundef nonnull %i.du, i32 noundef %i.gy, ptr noundef nonnull @PrecondB, ptr noundef nonnull @PSolveB) #10 ; 2 uses
  %i.ha = icmp slt i32 %i.gz, 0
  br i1 %i.ha, label %check_retval.exit100, label %bb.u

check_retval.exit100:                             ; preds = %bb.t
  %i.hb = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.hc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hb, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.24, i32 noundef %i.gz) #11 ; 0 uses
  br label %bb.x

bb.u:                                             ; preds = %bb.t
  %puts58 = call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  %i.hd = call i32 @CVodeB(ptr noundef nonnull %i.du, double noundef 0.000000e+00, i32 noundef 1) #10 ; 2 uses
  %i.he = icmp slt i32 %i.hd, 0
  br i1 %i.he, label %check_retval.exit102, label %bb.v

check_retval.exit102:                             ; preds = %bb.u
  %i.hf = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.hg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hf, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.26, i32 noundef %i.hd) #11 ; 0 uses
  br label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.hh = load i32, ptr %i.d, align 4, !tbaa !23
  %i.hi = call i32 @CVodeGetB(ptr noundef nonnull %i.du, i32 noundef %i.hh, ptr noundef nonnull %i.a, ptr noundef nonnull %i.fp) #10 ; 2 uses
  %i.hj = icmp slt i32 %i.hi, 0
  br i1 %i.hj, label %check_retval.exit104, label %bb.w

check_retval.exit104:                             ; preds = %bb.v
  %i.hk = load ptr, ptr @stderr, align 8, !tbaa !11
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
  %i.a = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #10 ; 19 uses
  %i.b = tail call ptr @N_VGetArrayPointer(ptr noundef %2) #10 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.e = load i32, ptr %i.d, align 8, !tbaa !24   ; 14 uses
  %i.f = getelementptr i8, ptr %3, i64 808        ; 4 uses
  %i.g = getelementptr i8, ptr %3, i64 688        ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 736 ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !27   ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 784
  %i.k = load double, ptr %i.j, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 792
  %i.m = load double, ptr %i.l, align 8, !tbaa !26
  %i.n = sub i32 0, %i.i                          ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 304
  %i.p = getelementptr i8, ptr %3, i64 592        ; 5 uses
  %i.q = icmp sgt i32 %i.e, 0
  %i.r = sub i32 0, %i.e                          ; 2 uses
  %.not82 = icmp slt i32 %i.e, 1
  %i.s = zext i32 %i.e to i64                     ; 12 uses
  %i.t = shl nuw nsw i64 %i.s, 3
  br i1 %.not82, label %.split90.us.split, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  %i.u = add nuw i32 %i.e, 1
  %i.v = zext nneg i32 %i.e to i64
  %i.w = sext i32 %i.i to i64                     ; 2 uses
  %wide.trip.count = zext i32 %i.u to i64         ; 3 uses
  %i.x = add nsw i64 %wide.trip.count, -2         ; 2 uses
  %i.y = shl nuw nsw i64 %wide.trip.count, 3      ; 3 uses
  %i.z = add nsw i64 %i.y, -8                     ; 2 uses
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.z ; 5 uses
  %i.aa = getelementptr i8, ptr %3, i64 %i.y
  %scevgep146 = getelementptr i8, ptr %i.aa, i64 728
  %scevgep147 = getelementptr i8, ptr %i.b, i64 %i.z
  %i.ab = getelementptr i8, ptr %3, i64 %i.y
  %scevgep148 = getelementptr i8, ptr %i.ab, i64 800
  %i.ac = shl nuw nsw i64 %i.s, 3
  %i.ad = getelementptr i8, ptr %3, i64 %i.ac
  %scevgep192 = getelementptr i8, ptr %i.ad, i64 592
  %i.ae = mul nuw nsw i64 %i.s, 160               ; 2 uses
  %i.af = shl nsw i64 %i.w, 3
  %i.ag = getelementptr i8, ptr %i.a, i64 %i.ae
  %i.ah = getelementptr i8, ptr %3, i64 %i.ae
  %i.ai = getelementptr i8, ptr %i.ah, i64 808
  %i.aj = insertelement <2 x ptr> poison, ptr %i.p, i64 1
  %i.ak = insertelement <2 x ptr> poison, ptr %scevgep192, i64 1
  %xtraiter = and i64 %i.s, 1
  %i.al = icmp eq i32 %i.e, 1
  %unroll_iter = and i64 %i.s, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod221 = trunc i32 %i.e to i1
  %min.iters.check198 = icmp ult i32 %i.e, 4
  %n.vec208 = and i64 %i.s, 2147483644            ; 3 uses
  %cmp.n219 = icmp eq i64 %n.vec208, %i.s
  %xtraiter222 = and i64 %i.s, 1
  %lcmp.mod223.not = icmp eq i64 %xtraiter222, 0
  %i.am = add nsw i64 %i.s, -1
  %i.an = zext nneg i32 %i.e to i64               ; 3 uses
  %min.iters.check = icmp ult i32 %i.e, 8
  %i.ao = trunc i64 %i.x to i32                   ; 5 uses
  %i.ap = icmp ugt i64 %i.x, 4294967295
  %n.vec = and i64 %i.an, 2147483646              ; 2 uses
  %i.aq = or i64 %i.an, 1
  %cmp.n = icmp eq i64 %n.vec, %i.an
  br label %.split

.split:                                           ; preds = %.split.preheader, %.split86
  %indvars.iv96 = phi i64 [ 0, %.split.preheader ], [ %indvars.iv.next97, %.split86 ] ; 8 uses
  %i.ar = mul i64 %i.af, %indvars.iv96            ; 4 uses
  %scevgep193 = getelementptr i8, ptr %i.ag, i64 %i.ar
  %scevgep194 = getelementptr i8, ptr %i.a, i64 %i.ar
  %scevgep195 = getelementptr i8, ptr %i.ai, i64 %i.ar ; 2 uses
  %i.as = getelementptr i8, ptr %3, i64 %i.ar
  %i.at = insertelement <2 x ptr> %i.aj, ptr %i.as, i64 0
  %i.au = getelementptr i8, <2 x ptr> %i.at, <2 x i64> <i64 808, i64 0> ; 2 uses
  %i.av = trunc i64 %indvars.iv96 to i32
  %i.aw = mul i32 %i.i, %i.av                     ; 2 uses
  %i.ax = trunc i64 %indvars.iv96 to i32
  %i.ay = mul i32 %i.i, %i.ax                     ; 2 uses
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
  %i.bj = add i32 %i.bg, %i.aw
  %i.bk = add i32 %i.be, %i.aw
  %i.bl = insertelement <2 x ptr> poison, ptr %scevgep194, i64 0
  %i.bm = insertelement <2 x ptr> poison, ptr %scevgep193, i64 0
  %i.bn = insertelement <2 x ptr> %i.bm, ptr %scevgep195, i64 1
  %i.bo = insertelement <2 x ptr> %i.ak, ptr %scevgep195, i64 0
  %i.bp = shufflevector <2 x ptr> %i.bl, <2 x ptr> %i.au, <2 x i32> <i32 0, i32 2>
  %i.bq = icmp ult <2 x ptr> %i.au, %i.bn
  %i.br = icmp ult <2 x ptr> %i.bp, %i.bo
  %i.bs = and <2 x i1> %i.br, %i.bq
  %i.bt = bitcast <2 x i1> %i.bs to i2
  %.not = icmp eq i2 %i.bt, 0
  br label %bb.b

bb.b:                                             ; preds = %.split, %._crit_edge
  %indvars.iv92 = phi i64 [ 0, %.split ], [ %indvars.iv.next93, %._crit_edge ] ; 7 uses
  %i.bu = trunc i64 %indvars.iv92 to i32
  %i.bv = mul i64 %indvars.iv92, %i.s             ; 2 uses
  %i.bw = trunc i64 %i.bv to i32
  %i.bx = add i32 %i.bh, %i.bw                    ; 2 uses
  %i.by = trunc i64 %i.bv to i32
  %i.bz = add i32 %i.bi, %i.by                    ; 2 uses
  %i.ca = trunc nuw nsw i64 %indvars.iv92 to i32
  %i.cb = uitofp nneg i32 %i.ca to double
  %i.cc = fmul double %i.k, %i.cb
  %i.cd = mul nuw nsw i64 %indvars.iv92, %i.v
  %i.ce = add nsw i64 %i.cd, %i.bc                ; 5 uses
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ce ; 5 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.ce ; 8 uses
  br i1 %i.q, label %.preheader.preheader.i, label %WebRates.exit

.preheader.preheader.i:                           ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cg, i8 0, i64 %i.t, i1 false), !tbaa !22
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %indvars.iv48.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next49.i, %._crit_edge.i ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv48.i ; 3 uses
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv48.i ; 3 uses
  br i1 %i.al, label %.epil.preheader, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i, %.preheader.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader.i.new ], [ 0, %.preheader.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.i.new ], [ 0, %.preheader.i ]
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !22
  %gep.i = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.cj = load double, ptr %gep.i, align 8, !tbaa !22
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv.i ; 2 uses
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !22
  %i.cm = tail call double @llvm.fmuladd.f64(double %i.ci, double %i.cj, double %i.cl)
  store double %i.cm, ptr %i.ck, align 8, !tbaa !22
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.cn = load double, ptr %i.ch, align 8, !tbaa !22
  %gep.i.1 = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %i.co = load double, ptr %gep.i.1, align 8, !tbaa !22
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv.next.i ; 2 uses
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !22
  %i.cr = tail call double @llvm.fmuladd.f64(double %i.cn, double %i.co, double %i.cq)
  store double %i.cr, ptr %i.cp, align 8, !tbaa !22
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.preheader.i.new

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod221)
  %i.cs = load double, ptr %i.ch, align 8, !tbaa !22
  %gep.i.epil = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.epil.init
  %i.ct = load double, ptr %gep.i.epil, align 8, !tbaa !22
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !22
  %i.cw = tail call double @llvm.fmuladd.f64(double %i.cs, double %i.ct, double %i.cv)
  store double %i.cw, ptr %i.cu, align 8, !tbaa !22
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1 ; 2 uses
  %exitcond52.not.i = icmp eq i64 %indvars.iv.next49.i, %i.s
  br i1 %exitcond52.not.i, label %._crit_edge41.split.i, label %.preheader.i

._crit_edge41.split.i:                            ; preds = %._crit_edge.i
  %i.cx = tail call double @llvm.fmuladd.f64(double %i.cc, double %i.bb, double 1.000000e+00) ; 4 uses
  %.not.not = xor i1 %.not, true
  %brmerge = select i1 %min.iters.check198, i1 true, i1 %.not.not
  br i1 %brmerge, label %.lr.ph44.i.preheader, label %vector.ph207

vector.ph207:                                     ; preds = %._crit_edge41.split.i
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cx, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body209

vector.body209:                                   ; preds = %vector.body209, %vector.ph207
  %index210 = phi i64 [ 0, %vector.ph207 ], [ %index.next217, %vector.body209 ] ; 4 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %index210 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %wide.load211 = load <2 x double>, ptr %i.cy, align 8, !tbaa !22, !alias.scope !65
  %wide.load212 = load <2 x double>, ptr %i.cz, align 8, !tbaa !22, !alias.scope !65
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %index210 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %wide.load213 = load <2 x double>, ptr %i.da, align 8, !tbaa !22, !alias.scope !66
  %wide.load214 = load <2 x double>, ptr %i.db, align 8, !tbaa !22, !alias.scope !66
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %index210 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 2 uses
  %wide.load215 = load <2 x double>, ptr %i.dc, align 8, !tbaa !22, !alias.scope !67, !noalias !68
  %wide.load216 = load <2 x double>, ptr %i.dd, align 8, !tbaa !22, !alias.scope !67, !noalias !68
  %i.de = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load213, <2 x double> %broadcast.splat, <2 x double> %wide.load215)
  %i.df = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load214, <2 x double> %broadcast.splat, <2 x double> %wide.load216)
  %i.dg = fmul <2 x double> %wide.load211, %i.de
  %i.dh = fmul <2 x double> %wide.load212, %i.df
  store <2 x double> %i.dg, ptr %i.dc, align 8, !tbaa !22, !alias.scope !67, !noalias !68
  store <2 x double> %i.dh, ptr %i.dd, align 8, !tbaa !22, !alias.scope !67, !noalias !68
  %index.next217 = add nuw i64 %index210, 4       ; 2 uses
  %i.di = icmp eq i64 %index.next217, %n.vec208
  br i1 %i.di, label %middle.block218, label %vector.body209, !llvm.loop !52

middle.block218:                                  ; preds = %vector.body209
  br i1 %cmp.n219, label %WebRates.exit, label %.lr.ph44.i.preheader

.lr.ph44.i.preheader:                             ; preds = %._crit_edge41.split.i, %middle.block218
  %indvars.iv53.i.ph = phi i64 [ %n.vec208, %middle.block218 ], [ 0, %._crit_edge41.split.i ] ; 6 uses
  br i1 %lcmp.mod223.not, label %.lr.ph44.i.prol.loopexit, label %.lr.ph44.i.prol

.lr.ph44.i.prol:                                  ; preds = %.lr.ph44.i.preheader
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv53.i.ph
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !22
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv53.i.ph
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !22
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv53.i.ph ; 2 uses
  %i.do = load double, ptr %i.dn, align 8, !tbaa !22
  %i.dp = tail call double @llvm.fmuladd.f64(double %i.dm, double %i.cx, double %i.do)
  %i.dq = fmul double %i.dk, %i.dp
  store double %i.dq, ptr %i.dn, align 8, !tbaa !22
  %indvars.iv.next54.i.prol = or disjoint i64 %indvars.iv53.i.ph, 1
  br label %.lr.ph44.i.prol.loopexit

.lr.ph44.i.prol.loopexit:                         ; preds = %.lr.ph44.i.prol, %.lr.ph44.i.preheader
  %indvars.iv53.i.unr = phi i64 [ %indvars.iv53.i.ph, %.lr.ph44.i.preheader ], [ %indvars.iv.next54.i.prol, %.lr.ph44.i.prol ]
  %i.dr = icmp eq i64 %indvars.iv53.i.ph, %i.am
  br i1 %i.dr, label %WebRates.exit, label %.lr.ph44.i

.lr.ph44.i:                                       ; preds = %.lr.ph44.i.prol.loopexit, %.lr.ph44.i
  %indvars.iv53.i = phi i64 [ %indvars.iv.next54.i.1, %.lr.ph44.i ], [ %indvars.iv53.i.unr, %.lr.ph44.i.prol.loopexit ] ; 5 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv53.i
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !22
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv53.i
  %i.dv = load double, ptr %i.du, align 8, !tbaa !22
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv53.i ; 2 uses
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !22
  %i.dy = tail call double @llvm.fmuladd.f64(double %i.dv, double %i.cx, double %i.dx)
  %i.dz = fmul double %i.dt, %i.dy
  store double %i.dz, ptr %i.dw, align 8, !tbaa !22
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1 ; 3 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next54.i
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !22
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next54.i
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !22
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv.next54.i ; 2 uses
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !22
  %i.eg = tail call double @llvm.fmuladd.f64(double %i.ed, double %i.cx, double %i.ef)
  %i.eh = fmul double %i.eb, %i.eg
  store double %i.eh, ptr %i.ee, align 8, !tbaa !22
  %indvars.iv.next54.i.1 = add nuw nsw i64 %indvars.iv53.i, 2 ; 2 uses
  %exitcond57.not.i.1 = icmp eq i64 %indvars.iv.next54.i.1, %i.s
  br i1 %exitcond57.not.i.1, label %WebRates.exit, label %.lr.ph44.i, !llvm.loop !53

WebRates.exit:                                    ; preds = %.lr.ph44.i.prol.loopexit, %.lr.ph44.i, %middle.block218, %bb.b
  %i.ei = icmp eq i64 %indvars.iv92, 19
  %i.ej = select i1 %i.ei, i32 %i.r, i32 %i.e     ; 4 uses
  %i.ek = icmp eq i64 %indvars.iv92, 0
  %i.el = select i1 %i.ek, i32 %i.e, i32 %i.r     ; 4 uses
  %i.em = trunc nsw i64 %i.ce to i32              ; 6 uses
  %i.en = add i32 %i.em, -1                       ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %WebRates.exit
  %i.eo = add i32 %i.em, %i.ao
  %i.ep = icmp slt i32 %i.eo, %i.em
  %i.eq = add i32 %i.bx, %i.ao
  %i.er = icmp slt i32 %i.eq, %i.bx
  %i.es = or i1 %i.er, %i.ap
  %i.et = add i32 %i.bz, %i.ao
  %i.eu = icmp slt i32 %i.et, %i.bz
  %i.ev = add i32 %i.el, %i.em                    ; 2 uses
  %i.ew = add i32 %i.ev, %i.ao
  %i.ex = icmp slt i32 %i.ew, %i.ev
  %i.ey = add nsw i32 %i.ej, %i.em                ; 2 uses
  %i.ez = add i32 %i.ey, %i.ao
  %i.fa = icmp slt i32 %i.ez, %i.ey
  %i.fb = or i1 %i.ep, %i.es
  %i.fc = or i1 %i.eu, %i.fb
  %i.fd = or i1 %i.ex, %i.fc
  %i.fe = or i1 %i.fa, %i.fd
  br i1 %i.fe, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ff = shl nsw i64 %i.ce, 3                    ; 6 uses
  %i.fg = getelementptr i8, ptr %i.f, i64 %i.ff
  %i.fh = getelementptr i8, ptr %scevgep148, i64 %i.ff
  %i.fi = getelementptr i8, ptr %i.b, i64 %i.ff   ; 7 uses
  %i.fj = getelementptr i8, ptr %scevgep147, i64 %i.ff ; 7 uses
  %4 = sext i32 %i.ej to i64
  %5 = add nsw i64 %i.ce, %4
  %6 = shl nsw i64 %5, 3                          ; 2 uses
  %i.fk = getelementptr i8, ptr %i.a, i64 %6
  %7 = getelementptr i8, ptr %scevgep, i64 %6
  %i.fl = add i32 %i.el, %i.em
  %i.fm = sext i32 %i.fl to i64
  %i.fn = shl nsw i64 %i.fm, 3                    ; 2 uses
  %i.fo = getelementptr i8, ptr %i.a, i64 %i.fn
  %i.fp = getelementptr i8, ptr %scevgep, i64 %i.fn
  %8 = mul i32 %i.e, %i.bu                        ; 2 uses
  %i.fq = add i32 %i.bk, %8
  %i.fr = sext i32 %i.fq to i64
  %i.fs = shl nsw i64 %i.fr, 3                    ; 2 uses
  %i.ft = getelementptr i8, ptr %i.a, i64 %i.fs
  %i.fu = getelementptr i8, ptr %scevgep, i64 %i.fs
  %i.fv = add i32 %i.bj, %8
  %i.fw = sext i32 %i.fv to i64
  %i.fx = shl nsw i64 %i.fw, 3                    ; 2 uses
  %i.fy = getelementptr i8, ptr %i.a, i64 %i.fx
  %i.fz = getelementptr i8, ptr %scevgep, i64 %i.fx
  %i.ga = getelementptr i8, ptr %i.a, i64 %i.ff
  %i.gb = getelementptr i8, ptr %scevgep, i64 %i.ff
  %bound0 = icmp ult ptr %i.fg, %i.fj
  %bound1 = icmp ult ptr %i.fi, %i.fh
  %found.conflict = and i1 %bound0, %bound1
  %bound0149 = icmp ult ptr %i.g, %i.fj
  %bound1150 = icmp ult ptr %i.fi, %scevgep146
  %found.conflict151 = and i1 %bound0149, %bound1150
  %conflict.rdx = or i1 %found.conflict, %found.conflict151
  %bound0152 = icmp ult ptr %i.fi, %7
  %bound1153 = icmp ult ptr %i.fk, %i.fj
  %found.conflict154 = and i1 %bound0152, %bound1153
  %conflict.rdx155 = or i1 %conflict.rdx, %found.conflict154
  %bound0156 = icmp ult ptr %i.fi, %i.fp
  %bound1157 = icmp ult ptr %i.fo, %i.fj
  %found.conflict158 = and i1 %bound0156, %bound1157
  %conflict.rdx159 = or i1 %conflict.rdx155, %found.conflict158
  %bound0160 = icmp ult ptr %i.fi, %i.fu
  %bound1161 = icmp ult ptr %i.ft, %i.fj
  %found.conflict162 = and i1 %bound0160, %bound1161
  %conflict.rdx163 = or i1 %conflict.rdx159, %found.conflict162
  %bound0164 = icmp ult ptr %i.fi, %i.fz
  %bound1165 = icmp ult ptr %i.fy, %i.fj
  %found.conflict166 = and i1 %bound0164, %bound1165
  %conflict.rdx167 = or i1 %conflict.rdx163, %found.conflict166
  %bound0168 = icmp ult ptr %i.fi, %i.gb
  %bound1169 = icmp ult ptr %i.ga, %i.fj
  %found.conflict170 = and i1 %bound0168, %bound1169
  %conflict.rdx171 = or i1 %conflict.rdx167, %found.conflict170
  br i1 %conflict.rdx171, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 4 uses
  %i.gc = trunc i64 %index to i32
  %i.gd = or disjoint i32 %i.gc, 1
  %i.ge = add i32 %i.en, %i.gd                    ; 5 uses
  %i.gf = sext i32 %i.ge to i64                   ; 3 uses
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.gf
  %wide.load = load <2 x double>, ptr %i.gg, align 8, !tbaa !22, !alias.scope !69 ; 4 uses
  %i.gh = add i32 %i.ge, %i.bg
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.gi
  %wide.load172 = load <2 x double>, ptr %i.gj, align 8, !tbaa !22, !alias.scope !70
  %i.gk = fsub <2 x double> %wide.load, %wide.load172
  %i.gl = add nsw i32 %i.ge, %i.be
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.gm
  %wide.load173 = load <2 x double>, ptr %i.gn, align 8, !tbaa !22, !alias.scope !71
  %i.go = fsub <2 x double> %wide.load173, %wide.load
  %i.gp = add i32 %i.ge, %i.el
  %i.gq = sext i32 %i.gp to i64
  %i.gr = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.gq
  %wide.load174 = load <2 x double>, ptr %i.gr, align 8, !tbaa !22, !alias.scope !72
  %i.gs = fsub <2 x double> %wide.load, %wide.load174
  %i.gt = add nsw i32 %i.ge, %i.ej
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.gu
  %wide.load175 = load <2 x double>, ptr %i.gv, align 8, !tbaa !22, !alias.scope !73
  %i.gw = fsub <2 x double> %wide.load175, %wide.load
  %i.gx = getelementptr inbounds [8 x i8], ptr %i.h, i64 %index
  %wide.load176 = load <2 x double>, ptr %i.gx, align 8, !tbaa !22, !alias.scope !74, !noalias !75
  %i.gy = fsub <2 x double> %i.go, %i.gk
  %i.gz = getelementptr inbounds [8 x i8], ptr %i.g, i64 %index
  %wide.load177 = load <2 x double>, ptr %i.gz, align 8, !tbaa !22, !alias.scope !74, !noalias !75
  %i.ha = fsub <2 x double> %i.gw, %i.gs
  %i.hb = fmul <2 x double> %wide.load177, %i.ha
  %i.hc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load176, <2 x double> %i.gy, <2 x double> %i.hb)
  %i.hd = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.gf
  %wide.load178 = load <2 x double>, ptr %i.hd, align 8, !tbaa !22, !alias.scope !76, !noalias !75
  %i.he = fadd <2 x double> %wide.load178, %i.hc
  %i.hf = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.gf
  store <2 x double> %i.he, ptr %i.hf, align 8, !tbaa !22, !alias.scope !75, !noalias !77
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.hg = icmp eq i64 %index.next, %n.vec
  br i1 %i.hg, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %WebRates.exit, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %vector.scevcheck ], [ 1, %WebRates.exit ], [ %i.aq, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.hh = trunc nuw nsw i64 %indvars.iv to i32
  %i.hi = add i32 %i.en, %i.hh                    ; 5 uses
  %i.hj = sext i32 %i.hi to i64                   ; 3 uses
  %i.hk = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.hj
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !22 ; 4 uses
  %i.hm = add i32 %i.hi, %i.bg
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.hn
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !22
  %i.hq = fsub double %i.hl, %i.hp
  %i.hr = add nsw i32 %i.hi, %i.be
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.hs
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !22
  %i.hv = fsub double %i.hu, %i.hl
  %i.hw = add i32 %i.hi, %i.el
  %i.hx = sext i32 %i.hw to i64
  %i.hy = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.hx
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !22
  %i.ia = fsub double %i.hl, %i.hz
  %i.ib = add nsw i32 %i.hi, %i.ej
  %i.ic = sext i32 %i.ib to i64
  %i.id = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ic
  %i.ie = load double, ptr %i.id, align 8, !tbaa !22
  %i.if = fsub double %i.ie, %i.hl
  %i.ig = add nsw i64 %indvars.iv, -1             ; 2 uses
  %i.ih = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ig
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !22
  %i.ij = fsub double %i.hv, %i.hq
  %i.ik = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.ig
  %i.il = load double, ptr %i.ik, align 8, !tbaa !22
  %i.im = fsub double %i.if, %i.ia
  %i.in = fmul double %i.il, %i.im
  %i.io = tail call double @llvm.fmuladd.f64(double %i.ii, double %i.ij, double %i.in)
  %i.ip = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.hj
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !22
  %i.ir = fadd double %i.iq, %i.io
  %i.is = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.hj
  store double %i.ir, ptr %i.is, align 8, !tbaa !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !64

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %exitcond95.not = icmp eq i64 %indvars.iv.next93, 20
  br i1 %exitcond95.not, label %.split86, label %bb.b

.split86:                                         ; preds = %._crit_edge
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %exitcond99.not = icmp eq i64 %indvars.iv.next97, 20
  br i1 %exitcond99.not, label %.split90.us.split, label %.split

.split90.us.split:                                ; preds = %.split86, %bb.a
  ret i32 0
}

declare i32 @CVodeSStolerances(ptr noundef, double noundef, double noundef) local_unnamed_addr #2

declare ptr @SUNLinSol_SPGMR(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeSetLinearSolver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeSetPreconditioner(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @Precond(double %0, ptr noundef %1, ptr noundef %2, i32 %3, ptr nofree noundef writeonly captures(none) %4, double noundef %5, ptr nofree noundef readonly captures(none) %6) #0 {
bb.a:
  %i.a = ptrtoaddr ptr %6 to i64                  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 39208
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 39224
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.f = tail call i32 @CVodeGetErrWeights(ptr noundef %i.e, ptr noundef %i.c) #10 ; 2 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %check_retval.exit, label %bb.b

check_retval.exit:                                ; preds = %bb.a
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.h, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.28, i32 noundef %i.f) #11 ; 0 uses
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #10 ; 5 uses
  %i.k = tail call ptr @N_VGetArrayPointer(ptr noundef %i.c) #10 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 288 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 296 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.p = load i32, ptr %i.o, align 8, !tbaa !32   ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 800
  %i.r = load double, ptr %i.q, align 8, !tbaa !33 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.t = load i32, ptr %i.s, align 8, !tbaa !34   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 92
  %i.v = load i32, ptr %i.u, align 4, !tbaa !35   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.x = load i32, ptr %i.w, align 8, !tbaa !36   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 100
  %i.z = load i32, ptr %i.y, align 4, !tbaa !37   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 808 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 39216
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !21
  %i.ad = tail call ptr @N_VGetArrayPointer(ptr noundef %i.ac) #10 ; 24 uses
  %i.ae = ptrtoaddr ptr %i.ad to i64              ; 2 uses
  %i.af = tail call double @N_VWrmsNorm(ptr noundef %2, ptr noundef %i.c) #10
  %i.ag = tail call double @llvm.fabs.f64(double %5)
  %i.ah = fmul double %i.ag, 1.000000e+03
  %i.ai = fmul double %i.ah, f0x3CB0000000000000
  %i.aj = fmul double %i.ai, 2.400000e+03
  %i.ak = fmul double %i.aj, %i.af                ; 2 uses
  %i.al = fcmp oeq double %i.ak, 0.000000e+00
  %spec.store.select = select i1 %i.al, double 1.000000e+00, double %i.ak ; 2 uses
  %i.am = icmp sgt i32 %i.x, 0
  br i1 %i.am, label %.lr.ph128, label %.preheader

.lr.ph128:                                        ; preds = %bb.b
  %i.an = icmp slt i32 %i.v, 1
  %i.ao = icmp slt i32 %i.p, 1
  %i.ap = fneg double %5                          ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 784
  %i.ar = getelementptr i8, ptr %6, i64 304       ; 2 uses
  %i.as = getelementptr i8, ptr %6, i64 592       ; 5 uses
  %brmerge = select i1 %i.an, i1 true, i1 %i.ao
  br i1 %brmerge, label %.preheader, label %.lr.ph128.split.split

.lr.ph128.split.split:                            ; preds = %.lr.ph128
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.av = load i32, ptr %i.au, align 8, !tbaa !38
  %i.aw = load i32, ptr %i.at, align 8, !tbaa !24 ; 5 uses
  %i.ax = icmp sgt i32 %i.aw, 0
  %i.ay = zext i32 %i.aw to i64                   ; 15 uses
  %i.az = shl nuw nsw i64 %i.ay, 3
  %i.ba = zext nneg i32 %i.v to i64               ; 4 uses
  %wide.trip.count170 = zext nneg i32 %i.x to i64 ; 2 uses
  %wide.trip.count160 = zext nneg i32 %i.p to i64 ; 12 uses
  br i1 %i.ax, label %.lr.ph.us.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph128.split.split
  %min.iters.check = icmp ult i32 %i.p, 4
  %n.vec = and i64 %wide.trip.count160, 2147483644 ; 3 uses
end_hunk_0
begin_hunk_1_@doubleIntgr:bb.a
  %i.ek = add i32 %i.dx, %i.ej
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.el
  %i.en = load double, ptr %i.em, align 8, !tbaa !22
  %i.eo = tail call double @llvm.fmuladd.f64(double %i.en, double 2.000000e+00, double %i.eg) ; 3 uses
  %indvars.iv.next140.1 = add nuw nsw i64 %indvars.iv139, 2 ; 2 uses
  %niter32.next.1 = add nuw i64 %niter32, 2       ; 2 uses
  %niter32.ncmp.1 = icmp eq i64 %niter32.next.1, %unroll_iter31
  br i1 %niter32.ncmp.1, label %._crit_edge116.loopexit.unr-lcssa, label %bb.b

._crit_edge116.loopexit.unr-lcssa:                ; preds = %bb.b
  %lcmp.mod28.not = icmp eq i64 %xtraiter26, 0
  br i1 %lcmp.mod28.not, label %._crit_edge116, label %.epil.preheader25

.epil.preheader25:                                ; preds = %._crit_edge116.loopexit.unr-lcssa, %.lr.ph115
  %indvars.iv139.epil.init = phi i64 [ 1, %.lr.ph115 ], [ %indvars.iv.next140.1, %._crit_edge116.loopexit.unr-lcssa ]
  %.290112.epil.init = phi double [ %i.dw, %.lr.ph115 ], [ %i.eo, %._crit_edge116.loopexit.unr-lcssa ]
  %lcmp.mod30 = trunc i64 %i.dy to i1
  tail call void @llvm.assume(i1 %lcmp.mod30)
  %i.ep = trunc i64 %indvars.iv139.epil.init to i32
  %i.eq = mul i32 %i.c, %i.ep
  %i.er = add i32 %i.dx, %i.eq
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.es
  %i.eu = load double, ptr %i.et, align 8, !tbaa !22
  %i.ev = tail call double @llvm.fmuladd.f64(double %i.eu, double 2.000000e+00, double %.290112.epil.init)
  br label %._crit_edge116

._crit_edge116:                                   ; preds = %.epil.preheader25, %._crit_edge116.loopexit.unr-lcssa, %._crit_edge108.thread, %._crit_edge108
  %i.ew = phi i32 [ %i.ds, %._crit_edge108 ], [ %i.dn, %._crit_edge108.thread ], [ %i.ds, %._crit_edge116.loopexit.unr-lcssa ], [ %i.ds, %.epil.preheader25 ]
  %.091.lcssa145 = phi double [ %.091.lcssa, %._crit_edge108 ], [ %.lcssa7, %._crit_edge108.thread ], [ %.091.lcssa, %._crit_edge116.loopexit.unr-lcssa ], [ %.091.lcssa, %.epil.preheader25 ]
  %.290.lcssa = phi double [ %i.dw, %._crit_edge108 ], [ %i.dr, %._crit_edge108.thread ], [ %i.eo, %._crit_edge116.loopexit.unr-lcssa ], [ %i.ev, %.epil.preheader25 ]
  %i.ex = add nsw i32 %i.av, %i.ew
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ey
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !22
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
  %i.d = load i32, ptr %i.c, align 8, !tbaa !24   ; 4 uses
  %.not27 = icmp slt i32 %i.d, 1
  br i1 %.not27, label %.split38, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !27
  %i.g = zext nneg i32 %i.d to i64
  %i.h = shl nuw nsw i64 %i.g, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %i.h, i1 false), !tbaa !22
  %.40..40..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store double 1.000000e+00, ptr %.40..40..sroa_idx, align 8, !tbaa !22
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
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %scevgep, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !22
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !22
  %gep47 = getelementptr i8, ptr %invariant.gep46, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep47, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !22
  %gep49 = getelementptr i8, ptr %invariant.gep48, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep49, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !22
  %gep51 = getelementptr i8, ptr %invariant.gep50, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep51, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !22
  %gep53 = getelementptr i8, ptr %invariant.gep52, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep53, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !22
  %gep55 = getelementptr i8, ptr %invariant.gep54, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep55, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !22
  %gep57 = getelementptr i8, ptr %invariant.gep56, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep57, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !22
  %gep59 = getelementptr i8, ptr %invariant.gep58, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep59, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !22
  %gep61 = getelementptr i8, ptr %invariant.gep60, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep61, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !22
  %gep63 = getelementptr i8, ptr %invariant.gep62, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep63, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !22
  %gep65 = getelementptr i8, ptr %invariant.gep64, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep65, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !22
  %gep67 = getelementptr i8, ptr %invariant.gep66, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep67, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !22
  %gep69 = getelementptr i8, ptr %invariant.gep68, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep69, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !22
  %gep71 = getelementptr i8, ptr %invariant.gep70, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep71, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !22
  %gep73 = getelementptr i8, ptr %invariant.gep72, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep73, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !22
  %gep75 = getelementptr i8, ptr %invariant.gep74, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep75, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !22
  %gep77 = getelementptr i8, ptr %invariant.gep76, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep77, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !22
  %gep79 = getelementptr i8, ptr %invariant.gep78, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep79, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !22
  %gep81 = getelementptr i8, ptr %invariant.gep80, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep81, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !22
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
  %i.a = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #10 ; 4 uses
  %i.b = tail call ptr @N_VGetArrayPointer(ptr noundef %2) #10 ; 20 uses
  %i.c = tail call ptr @N_VGetArrayPointer(ptr noundef %3) #10 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.f = load i32, ptr %i.e, align 8, !tbaa !24   ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 808
  %i.h = getelementptr i8, ptr %4, i64 20008      ; 4 uses
  %i.i = getelementptr i8, ptr %4, i64 688        ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 736 ; 2 uses
  %i.k = load i32, ptr %i.d, align 4, !tbaa !27   ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 784
  %i.m = load double, ptr %i.l, align 8, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 792
  %i.o = load double, ptr %i.n, align 8, !tbaa !26
  %i.p = sub i32 0, %i.k                          ; 2 uses
  %i.q = getelementptr i8, ptr %4, i64 304        ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 592 ; 6 uses
  %i.s = icmp sgt i32 %i.f, 0
  %i.t = sub i32 0, %i.f                          ; 2 uses
  %.not88 = icmp slt i32 %i.f, 1
  %wide.trip.count.i = zext i32 %i.f to i64       ; 23 uses
  %i.u = add i32 %i.f, 1                          ; 2 uses
  %i.v = sext i32 %i.f to i64                     ; 4 uses
  %i.w = sext i32 %i.k to i64                     ; 4 uses
  %wide.trip.count = zext i32 %i.u to i64         ; 4 uses
  %i.x = add nsw i64 %wide.trip.count, -2         ; 2 uses
  %i.y = shl nuw nsw i64 %wide.trip.count, 3      ; 3 uses
  %i.z = add nsw i64 %i.y, -8                     ; 2 uses
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.z ; 5 uses
  %i.aa = getelementptr i8, ptr %4, i64 %i.y
  %scevgep146 = getelementptr i8, ptr %i.aa, i64 728
  %scevgep147 = getelementptr i8, ptr %i.c, i64 %i.z
  %i.ab = getelementptr i8, ptr %4, i64 %i.y
  %scevgep148 = getelementptr i8, ptr %i.ab, i64 20000
  %i.ac = shl nuw nsw i64 %wide.trip.count.i, 3   ; 2 uses
  %i.ad = shl nsw i64 %i.w, 3
  %i.ae = shl nsw i64 %i.v, 3
  %i.af = mul nuw nsw i64 %wide.trip.count.i, 56
  %i.ag = getelementptr i8, ptr %4, i64 %i.af
  %scevgep197 = getelementptr i8, ptr %i.ag, i64 256
  %i.ah = shl nsw i64 %i.v, 3
  %i.ai = mul nsw i64 %i.v, 152
  %i.aj = shl nuw nsw i64 %wide.trip.count.i, 3
  %i.ak = add nsw i64 %i.ai, %i.aj                ; 2 uses
  %i.al = shl nsw i64 %i.w, 3
  %i.am = shl nsw i64 %i.w, 3
  %i.an = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %i.ao = getelementptr i8, ptr %4, i64 %i.ak
  %i.ap = getelementptr i8, ptr %i.ao, i64 20008
  %i.aq = getelementptr i8, ptr %4, i64 %i.ac
  %i.ar = getelementptr i8, ptr %i.aq, i64 20008
  %min.iters.check270 = icmp ult i32 %i.f, 4
  %n.vec273 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n282 = icmp eq i64 %n.vec273, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %xtraiter287 = and i64 %wide.trip.count.i, 1
  %i.as = icmp eq i64 %i.an, 0
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod288.not = icmp eq i64 %xtraiter287, 0
  %lcmp.mod289 = trunc i32 %i.f to i1
  %min.iters.check248 = icmp eq i32 %i.f, 1
  %n.vec258 = and i64 %wide.trip.count.i, 2147483646 ; 3 uses
  %cmp.n266 = icmp eq i64 %n.vec258, %wide.trip.count.i
  %xtraiter290 = and i64 %wide.trip.count.i, 1
  %lcmp.mod291.not = icmp eq i64 %xtraiter290, 0
  %i.at = add nsw i64 %wide.trip.count.i, -1
  %min.iters.check200 = icmp ult i32 %i.f, 4
  %n.vec214 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n225 = icmp eq i64 %n.vec214, %wide.trip.count.i
  %xtraiter293 = and i64 %wide.trip.count.i, 1
  %lcmp.mod294.not = icmp eq i64 %xtraiter293, 0
  %i.au = add nsw i64 %wide.trip.count.i, -1
  %i.av = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %min.iters.check = icmp ult i32 %i.u, 9
  %i.aw = trunc i64 %i.x to i32                   ; 5 uses
  %i.ax = icmp ugt i64 %i.x, 4294967295
  %n.vec = and i64 %i.av, -2                      ; 2 uses
  %i.ay = or i64 %i.av, 1
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %indvars.iv97 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next98, %bb.d ] ; 10 uses
  %i.az = mul i64 %i.am, %indvars.iv97
  %i.ba = mul i64 %i.al, %indvars.iv97            ; 5 uses
  %i.bb = add i64 %i.ak, %i.ba                    ; 2 uses
  %scevgep241 = getelementptr i8, ptr %i.a, i64 %i.bb
  %scevgep242 = getelementptr i8, ptr %i.a, i64 %i.ba
  %scevgep243 = getelementptr i8, ptr %i.b, i64 %i.bb
  %scevgep244 = getelementptr i8, ptr %i.b, i64 %i.ba
  %scevgep245 = getelementptr i8, ptr %i.ap, i64 %i.ba ; 2 uses
  %i.bc = getelementptr i8, ptr %4, i64 %i.ba
  %scevgep246 = getelementptr i8, ptr %i.bc, i64 808 ; 2 uses
  %i.bd = mul i64 %i.ad, %indvars.iv97            ; 2 uses
  %i.be = add i64 %i.ac, %i.bd
  %i.bf = trunc i64 %indvars.iv97 to i32
  %i.bg = mul i32 %i.k, %i.bf                     ; 2 uses
  %i.bh = trunc i64 %indvars.iv97 to i32
  %i.bi = mul i32 %i.k, %i.bh                     ; 2 uses
  %i.bj = trunc nuw nsw i64 %indvars.iv97 to i32
  %i.bk = uitofp nneg i32 %i.bj to double
  %i.bl = fmul double %i.o, %i.bk
  %i.bm = mul nsw i64 %indvars.iv97, %i.w
  %i.bn = icmp eq i64 %indvars.iv97, 19
  %i.bo = select i1 %i.bn, i32 %i.p, i32 %i.k     ; 4 uses
  %i.bp = icmp eq i64 %indvars.iv97, 0
  %i.bq = select i1 %i.bp, i32 %i.k, i32 %i.p     ; 4 uses
  %i.br = add i32 %i.bq, %i.bi
  %i.bs = add i32 %i.bo, %i.bi
  %i.bt = add i32 %i.bq, %i.bg
  %i.bu = add i32 %i.bo, %i.bg
  %i.bv = insertelement <2 x ptr> poison, ptr %scevgep246, i64 0
  %i.bw = insertelement <2 x ptr> %i.bv, ptr %scevgep242, i64 1
  %i.bx = insertelement <2 x ptr> poison, ptr %scevgep243, i64 0
  %i.by = insertelement <2 x ptr> %i.bx, ptr %scevgep245, i64 1
  %i.bz = insertelement <2 x ptr> poison, ptr %scevgep244, i64 0
  %i.ca = insertelement <2 x ptr> %i.bz, ptr %scevgep246, i64 1
  %i.cb = insertelement <2 x ptr> poison, ptr %scevgep245, i64 0
  %i.cc = insertelement <2 x ptr> %i.cb, ptr %scevgep241, i64 1
  %i.cd = getelementptr i8, ptr %i.ar, i64 %i.bd
  %invariant.op = add i64 215, %i.az
  %i.ce = icmp ult <2 x ptr> %i.bw, %i.by
  %i.cf = icmp ult <2 x ptr> %i.ca, %i.cc
  %i.cg = and <2 x i1> %i.cf, %i.ce
  %i.ch = bitcast <2 x i1> %i.cg to i2
  %.not = icmp eq i2 %i.ch, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %indvars.iv93 = phi i64 [ 0, %bb.b ], [ %indvars.iv.next94, %._crit_edge ] ; 9 uses
  %i.ci = mul i64 %i.ae, %indvars.iv93            ; 2 uses
  %i.cj = add i64 %i.be, %i.ci                    ; 2 uses
  %scevgep195 = getelementptr i8, ptr %i.b, i64 %i.cj
  %scevgep196 = getelementptr i8, ptr %i.a, i64 %i.cj
  %scevgep198 = getelementptr i8, ptr %i.cd, i64 %i.ci ; 3 uses
  %i.ck = trunc i64 %indvars.iv93 to i32
  %i.cl = mul i64 %indvars.iv93, %wide.trip.count.i ; 2 uses
  %i.cm = trunc i64 %i.cl to i32
  %i.cn = add i32 %i.br, %i.cm                    ; 2 uses
  %i.co = trunc i64 %i.cl to i32
  %i.cp = add i32 %i.bs, %i.co                    ; 2 uses
  %i.cq = trunc nuw nsw i64 %indvars.iv93 to i32
  %i.cr = uitofp nneg i32 %i.cq to double
  %i.cs = fmul double %i.m, %i.cr
  %i.ct = mul nsw i64 %indvars.iv93, %i.v
  %i.cu = add nsw i64 %i.ct, %i.bm                ; 6 uses
  %i.cv = getelementptr [8 x i8], ptr %i.a, i64 %i.cu ; 7 uses
  %i.cw = getelementptr [8 x i8], ptr %i.b, i64 %i.cu ; 6 uses
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.cu ; 13 uses
  %i.cy = getelementptr [8 x i8], ptr %i.h, i64 %i.cu ; 11 uses
  %i.cz = tail call double @llvm.fmuladd.f64(double %i.cs, double %i.bl, double 1.000000e+00) ; 6 uses
  br i1 %i.s, label %.lr.ph.i.preheader, label %._crit_edge

.lr.ph.i.preheader:                               ; preds = %bb.c
  br i1 %min.iters.check270, label %.lr.ph.i.preheader286, label %vector.memcheck271

vector.memcheck271:                               ; preds = %.lr.ph.i.preheader
  %i.da = mul i64 %indvars.iv93, %i.ah
  %op.rdx284.reass = add i64 %i.da, %invariant.op
  %diff.check = icmp ult i64 %op.rdx284.reass, 31
  br i1 %diff.check, label %.lr.ph.i.preheader286, label %vector.ph272

vector.ph272:                                     ; preds = %vector.memcheck271
  %broadcast.splatinsert274 = insertelement <2 x double> poison, double %i.cz, i64 0
  %broadcast.splat275 = shufflevector <2 x double> %broadcast.splatinsert274, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body276

vector.body276:                                   ; preds = %vector.body276, %vector.ph272
  %index277 = phi i64 [ 0, %vector.ph272 ], [ %index.next280, %vector.body276 ] ; 3 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %index277 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %wide.load278 = load <2 x double>, ptr %i.db, align 8, !tbaa !22
  %wide.load279 = load <2 x double>, ptr %i.dc, align 8, !tbaa !22
  %i.dd = fmul <2 x double> %broadcast.splat275, %wide.load278
  %i.de = fmul <2 x double> %broadcast.splat275, %wide.load279
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %index277 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  store <2 x double> %i.dd, ptr %i.df, align 8, !tbaa !22
  store <2 x double> %i.de, ptr %i.dg, align 8, !tbaa !22
  %index.next280 = add nuw i64 %index277, 4       ; 2 uses
  %i.dh = icmp eq i64 %index.next280, %n.vec273
  br i1 %i.dh, label %middle.block281, label %vector.body276, !llvm.loop !103

middle.block281:                                  ; preds = %vector.body276
  br i1 %cmp.n282, label %.preheader60.i.preheader, label %.lr.ph.i.preheader286

.lr.ph.i.preheader286:                            ; preds = %vector.memcheck271, %.lr.ph.i.preheader, %middle.block281
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck271 ], [ 0, %.lr.ph.i.preheader ], [ %n.vec273, %middle.block281 ] ; 3 uses
  %i.di = sub nsw i64 %i.an, %indvars.iv.i.ph
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader286, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader286 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader286 ]
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i.prol
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !22
  %i.dl = fmul double %i.cz, %i.dk
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv.i.prol
  store double %i.dl, ptr %i.dm, align 8, !tbaa !22
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !104

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader286
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader286 ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.dn = icmp ult i64 %i.di, 3
  br i1 %i.dn, label %.preheader60.i.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.dp = load double, ptr %i.do, align 8, !tbaa !22
  %i.dq = fmul double %i.cz, %i.dp
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv.i
  store double %i.dq, ptr %i.dr, align 8, !tbaa !22
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.i
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !22
  %i.du = fmul double %i.cz, %i.dt
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv.next.i
  store double %i.du, ptr %i.dv, align 8, !tbaa !22
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.i.1
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !22
  %i.dy = fmul double %i.cz, %i.dx
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv.next.i.1
  store double %i.dy, ptr %i.dz, align 8, !tbaa !22
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.i.2
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !22
  %i.ec = fmul double %i.cz, %i.eb
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv.next.i.2
  store double %i.ec, ptr %i.ed, align 8, !tbaa !22
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %.preheader60.i.preheader, label %.lr.ph.i, !llvm.loop !105

.preheader60.i.preheader:                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block281
  br label %.preheader60.i

.preheader60.i:                                   ; preds = %.preheader60.i.preheader, %._crit_edge.i
  %indvars.iv79.i = phi i64 [ %indvars.iv.next80.i, %._crit_edge.i ], [ 0, %.preheader60.i.preheader ] ; 3 uses
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv79.i ; 3 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv79.i ; 3 uses
  br i1 %i.as, label %.epil.preheader, label %.preheader60.i.new

.preheader60.i.new:                               ; preds = %.preheader60.i, %.preheader60.i.new
  %indvars.iv74.i = phi i64 [ %indvars.iv.next75.i.1, %.preheader60.i.new ], [ 0, %.preheader60.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader60.i.new ], [ 0, %.preheader60.i ]
  %gep.i = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i, i64 %indvars.iv74.i
  %i.ef = load double, ptr %gep.i, align 8, !tbaa !22
  %i.eg = load double, ptr %i.ee, align 8, !tbaa !22
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv74.i ; 2 uses
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !22
  %i.ej = tail call double @llvm.fmuladd.f64(double %i.ef, double %i.eg, double %i.ei)
  store double %i.ej, ptr %i.eh, align 8, !tbaa !22
  %indvars.iv.next75.i = or disjoint i64 %indvars.iv74.i, 1 ; 2 uses
  %gep.i.1 = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next75.i
  %i.ek = load double, ptr %gep.i.1, align 8, !tbaa !22
  %i.el = load double, ptr %i.ee, align 8, !tbaa !22
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv.next75.i ; 2 uses
  %i.en = load double, ptr %i.em, align 8, !tbaa !22
  %i.eo = tail call double @llvm.fmuladd.f64(double %i.ek, double %i.el, double %i.en)
  store double %i.eo, ptr %i.em, align 8, !tbaa !22
  %indvars.iv.next75.i.1 = add nuw nsw i64 %indvars.iv74.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.preheader60.i.new

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader60.i.new
  br i1 %lcmp.mod288.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader60.i
  %indvars.iv74.i.epil.init = phi i64 [ 0, %.preheader60.i ], [ %indvars.iv.next75.i.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod289)
  %gep.i.epil = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i, i64 %indvars.iv74.i.epil.init
  %i.ep = load double, ptr %gep.i.epil, align 8, !tbaa !22
  %i.eq = load double, ptr %i.ee, align 8, !tbaa !22
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv74.i.epil.init ; 2 uses
  %i.es = load double, ptr %i.er, align 8, !tbaa !22
  %i.et = tail call double @llvm.fmuladd.f64(double %i.ep, double %i.eq, double %i.es)
  store double %i.et, ptr %i.er, align 8, !tbaa !22
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1 ; 2 uses
  %exitcond83.not.i = icmp eq i64 %indvars.iv.next80.i, %wide.trip.count.i
  br i1 %exitcond83.not.i, label %.lr.ph67.i.preheader, label %.preheader60.i

.lr.ph67.i.preheader:                             ; preds = %._crit_edge.i
  %.not.not = xor i1 %.not, true
  %brmerge = select i1 %min.iters.check248, i1 true, i1 %.not.not
  br i1 %brmerge, label %.lr.ph67.i.preheader285, label %vector.body259

vector.body259:                                   ; preds = %.lr.ph67.i.preheader, %vector.body259
  %index260 = phi i64 [ %index.next264, %vector.body259 ], [ 0, %.lr.ph67.i.preheader ] ; 5 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %index260
  %wide.load261 = load <2 x double>, ptr %i.eu, align 8, !tbaa !22, !alias.scope !130
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %index260 ; 2 uses
  %wide.load262 = load <2 x double>, ptr %i.ev, align 8, !tbaa !22, !alias.scope !131, !noalias !132 ; 2 uses
  %i.ew = fmul <2 x double> %wide.load261, %wide.load262
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %index260
  store <2 x double> %i.ew, ptr %i.ex, align 8, !tbaa !22, !alias.scope !131, !noalias !132
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %index260
  %wide.load263 = load <2 x double>, ptr %i.ey, align 8, !tbaa !22, !alias.scope !133
  %i.ez = fmul <2 x double> %wide.load262, %wide.load263
  store <2 x double> %i.ez, ptr %i.ev, align 8, !tbaa !22, !alias.scope !131, !noalias !132
  %index.next264 = add nuw i64 %index260, 2       ; 2 uses
  %i.fa = icmp eq i64 %index.next264, %n.vec258
  br i1 %i.fa, label %middle.block265, label %vector.body259, !llvm.loop !110

middle.block265:                                  ; preds = %vector.body259
  br i1 %cmp.n266, label %.preheader.i.preheader, label %.lr.ph67.i.preheader285

.lr.ph67.i.preheader285:                          ; preds = %.lr.ph67.i.preheader, %middle.block265
  %indvars.iv84.i.ph = phi i64 [ %n.vec258, %middle.block265 ], [ 0, %.lr.ph67.i.preheader ] ; 7 uses
  br i1 %lcmp.mod291.not, label %.lr.ph67.i.prol.loopexit, label %.lr.ph67.i.prol

.lr.ph67.i.prol:                                  ; preds = %.lr.ph67.i.preheader285
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv84.i.ph
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !22
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv84.i.ph ; 2 uses
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !22 ; 2 uses
  %i.ff = fmul double %i.fc, %i.fe
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv84.i.ph
  store double %i.ff, ptr %i.fg, align 8, !tbaa !22
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv84.i.ph
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !22
  %i.fj = fmul double %i.fe, %i.fi
  store double %i.fj, ptr %i.fd, align 8, !tbaa !22
  %indvars.iv.next85.i.prol = or disjoint i64 %indvars.iv84.i.ph, 1
  br label %.lr.ph67.i.prol.loopexit

.lr.ph67.i.prol.loopexit:                         ; preds = %.lr.ph67.i.prol, %.lr.ph67.i.preheader285
  %indvars.iv84.i.unr = phi i64 [ %indvars.iv84.i.ph, %.lr.ph67.i.preheader285 ], [ %indvars.iv.next85.i.prol, %.lr.ph67.i.prol ]
  %i.fk = icmp eq i64 %indvars.iv84.i.ph, %i.at
  br i1 %i.fk, label %.preheader.i.preheader, label %.lr.ph67.i

.lr.ph67.i:                                       ; preds = %.lr.ph67.i.prol.loopexit, %.lr.ph67.i
  %indvars.iv84.i = phi i64 [ %indvars.iv.next85.i.1, %.lr.ph67.i ], [ %indvars.iv84.i.unr, %.lr.ph67.i.prol.loopexit ] ; 6 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv84.i
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !22
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv84.i ; 2 uses
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !22 ; 2 uses
  %i.fp = fmul double %i.fm, %i.fo
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv84.i
  store double %i.fp, ptr %i.fq, align 8, !tbaa !22
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv84.i
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !22
  %i.ft = fmul double %i.fo, %i.fs
  store double %i.ft, ptr %i.fn, align 8, !tbaa !22
  %indvars.iv.next85.i = add nuw nsw i64 %indvars.iv84.i, 1 ; 4 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv.next85.i
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !22
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv.next85.i ; 2 uses
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !22 ; 2 uses
  %i.fy = fmul double %i.fv, %i.fx
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv.next85.i
  store double %i.fy, ptr %i.fz, align 8, !tbaa !22
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv.next85.i
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !22
  %i.gc = fmul double %i.fx, %i.gb
  store double %i.gc, ptr %i.fw, align 8, !tbaa !22
  %indvars.iv.next85.i.1 = add nuw nsw i64 %indvars.iv84.i, 2 ; 2 uses
  %exitcond88.not.i.1 = icmp eq i64 %indvars.iv.next85.i.1, %wide.trip.count.i
  br i1 %exitcond88.not.i.1, label %.preheader.i.preheader, label %.lr.ph67.i, !llvm.loop !111

.preheader.i.preheader:                           ; preds = %.lr.ph67.i.prol.loopexit, %.lr.ph67.i, %middle.block265
  %bound0202 = icmp ult ptr %i.cy, %scevgep197
  %bound1203 = icmp ult ptr %i.q, %scevgep198
  %found.conflict204 = and i1 %bound0202, %bound1203
  %bound0205 = icmp ult ptr %i.cy, %scevgep196
  %bound1206 = icmp ult ptr %i.cv, %scevgep198
  %found.conflict207 = and i1 %bound0205, %bound1206
  %conflict.rdx208 = or i1 %found.conflict204, %found.conflict207
  %bound0209 = icmp ult ptr %i.cy, %scevgep195
  %bound1210 = icmp ult ptr %i.cw, %scevgep198
  %found.conflict211 = and i1 %bound0209, %bound1210
  %conflict.rdx212 = or i1 %conflict.rdx208, %found.conflict211
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge70.i
  %indvars.iv94.i = phi i64 [ %indvars.iv.next95.i, %._crit_edge70.i ], [ 0, %.preheader.i.preheader ] ; 4 uses
  %i.gd = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %indvars.iv94.i ; 4 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv94.i ; 4 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv94.i ; 4 uses
  %brmerge296 = select i1 %min.iters.check200, i1 true, i1 %conflict.rdx212
  br i1 %brmerge296, label %scalar.ph199.preheader, label %vector.ph213

vector.ph213:                                     ; preds = %.preheader.i
  %i.gg = load double, ptr %i.ge, align 8, !tbaa !22, !alias.scope !134
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.gg, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gh = load double, ptr %i.gf, align 8, !tbaa !22, !alias.scope !135
  %broadcast.splatinsert221 = insertelement <2 x double> poison, double %i.gh, i64 0
  %broadcast.splat222 = shufflevector <2 x double> %broadcast.splatinsert221, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body215

vector.body215:                                   ; preds = %vector.body215, %vector.ph213
  %index216 = phi i64 [ 0, %vector.ph213 ], [ %index.next223, %vector.body215 ] ; 3 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %index216 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %wide.load217 = load <2 x double>, ptr %i.gi, align 8, !tbaa !22, !alias.scope !136
  %wide.load218 = load <2 x double>, ptr %i.gj, align 8, !tbaa !22, !alias.scope !136
  %i.gk = fmul <2 x double> %wide.load217, %broadcast.splat
  %i.gl = fmul <2 x double> %wide.load218, %broadcast.splat
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %index216 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16 ; 2 uses
  %wide.load219 = load <2 x double>, ptr %i.gm, align 8, !tbaa !22, !alias.scope !137, !noalias !138
  %wide.load220 = load <2 x double>, ptr %i.gn, align 8, !tbaa !22, !alias.scope !137, !noalias !138
  %i.go = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gk, <2 x double> %broadcast.splat222, <2 x double> %wide.load219)
  %i.gp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gl, <2 x double> %broadcast.splat222, <2 x double> %wide.load220)
  store <2 x double> %i.go, ptr %i.gm, align 8, !tbaa !22, !alias.scope !137, !noalias !138
  store <2 x double> %i.gp, ptr %i.gn, align 8, !tbaa !22, !alias.scope !137, !noalias !138
  %index.next223 = add nuw i64 %index216, 4       ; 2 uses
  %i.gq = icmp eq i64 %index.next223, %n.vec214
  br i1 %i.gq, label %middle.block224, label %vector.body215, !llvm.loop !117

middle.block224:                                  ; preds = %vector.body215
  br i1 %cmp.n225, label %._crit_edge70.i, label %scalar.ph199.preheader

scalar.ph199.preheader:                           ; preds = %.preheader.i, %middle.block224
  %indvars.iv89.i.ph = phi i64 [ %n.vec214, %middle.block224 ], [ 0, %.preheader.i ] ; 5 uses
  br i1 %lcmp.mod294.not, label %scalar.ph199.prol.loopexit, label %scalar.ph199.prol

scalar.ph199.prol:                                ; preds = %scalar.ph199.preheader
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %indvars.iv89.i.ph
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !22
  %i.gt = load double, ptr %i.ge, align 8, !tbaa !22
  %i.gu = fmul double %i.gs, %i.gt
  %i.gv = load double, ptr %i.gf, align 8, !tbaa !22
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv89.i.ph ; 2 uses
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !22
  %i.gy = tail call double @llvm.fmuladd.f64(double %i.gu, double %i.gv, double %i.gx)
  store double %i.gy, ptr %i.gw, align 8, !tbaa !22
  %indvars.iv.next90.i.prol = or disjoint i64 %indvars.iv89.i.ph, 1
  br label %scalar.ph199.prol.loopexit

scalar.ph199.prol.loopexit:                       ; preds = %scalar.ph199.prol, %scalar.ph199.preheader
  %indvars.iv89.i.unr = phi i64 [ %indvars.iv89.i.ph, %scalar.ph199.preheader ], [ %indvars.iv.next90.i.prol, %scalar.ph199.prol ]
  %i.gz = icmp eq i64 %indvars.iv89.i.ph, %i.au
  br i1 %i.gz, label %._crit_edge70.i, label %scalar.ph199

scalar.ph199:                                     ; preds = %scalar.ph199.prol.loopexit, %scalar.ph199
  %indvars.iv89.i = phi i64 [ %indvars.iv.next90.i.1, %scalar.ph199 ], [ %indvars.iv89.i.unr, %scalar.ph199.prol.loopexit ] ; 4 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %indvars.iv89.i
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !22
  %i.hc = load double, ptr %i.ge, align 8, !tbaa !22
  %i.hd = fmul double %i.hb, %i.hc
  %i.he = load double, ptr %i.gf, align 8, !tbaa !22
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv89.i ; 2 uses
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !22
  %i.hh = tail call double @llvm.fmuladd.f64(double %i.hd, double %i.he, double %i.hg)
  store double %i.hh, ptr %i.hf, align 8, !tbaa !22
  %indvars.iv.next90.i = add nuw nsw i64 %indvars.iv89.i, 1 ; 2 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %indvars.iv.next90.i
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !22
  %i.hk = load double, ptr %i.ge, align 8, !tbaa !22
  %i.hl = fmul double %i.hj, %i.hk
  %i.hm = load double, ptr %i.gf, align 8, !tbaa !22
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv.next90.i ; 2 uses
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !22
  %i.hp = tail call double @llvm.fmuladd.f64(double %i.hl, double %i.hm, double %i.ho)
  store double %i.hp, ptr %i.hn, align 8, !tbaa !22
  %indvars.iv.next90.i.1 = add nuw nsw i64 %indvars.iv89.i, 2 ; 2 uses
  %exitcond93.not.i.1 = icmp eq i64 %indvars.iv.next90.i.1, %wide.trip.count.i
  br i1 %exitcond93.not.i.1, label %._crit_edge70.i, label %scalar.ph199, !llvm.loop !118

._crit_edge70.i:                                  ; preds = %scalar.ph199.prol.loopexit, %scalar.ph199, %middle.block224
  %indvars.iv.next95.i = add nuw nsw i64 %indvars.iv94.i, 1 ; 2 uses
  %exitcond98.not.i = icmp eq i64 %indvars.iv.next95.i, %wide.trip.count.i
  br i1 %exitcond98.not.i, label %WebRatesB.exit, label %.preheader.i

WebRatesB.exit:                                   ; preds = %._crit_edge70.i
  %i.hq = icmp eq i64 %indvars.iv93, 19
  %i.hr = select i1 %i.hq, i32 %i.t, i32 %i.f     ; 4 uses
  %i.hs = icmp eq i64 %indvars.iv93, 0
  %i.ht = select i1 %i.hs, i32 %i.f, i32 %i.t     ; 4 uses
  br i1 %.not88, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %WebRatesB.exit
  %i.hu = trunc nsw i64 %i.cu to i32              ; 7 uses
  %i.hv = add i32 %i.hu, -1                       ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.hw = add i32 %i.hu, %i.aw
  %i.hx = icmp slt i32 %i.hw, %i.hu
  %i.hy = add i32 %i.cn, %i.aw
  %i.hz = icmp slt i32 %i.hy, %i.cn
  %i.ia = or i1 %i.hz, %i.ax
  %i.ib = add i32 %i.cp, %i.aw
  %i.ic = icmp slt i32 %i.ib, %i.cp
  %i.id = add i32 %i.ht, %i.hu                    ; 2 uses
  %i.ie = add i32 %i.id, %i.aw
  %i.if = icmp slt i32 %i.ie, %i.id
  %i.ig = add i32 %i.hr, %i.hu                    ; 2 uses
  %i.ih = add i32 %i.ig, %i.aw
  %i.ii = icmp slt i32 %i.ih, %i.ig
  %i.ij = or i1 %i.hx, %i.ia
  %i.ik = or i1 %i.ic, %i.ij
  %i.il = or i1 %i.if, %i.ik
  %i.im = or i1 %i.ii, %i.il
  br i1 %i.im, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.in = shl nsw i64 %i.cu, 3                    ; 6 uses
  %i.io = getelementptr i8, ptr %i.h, i64 %i.in
  %i.ip = getelementptr i8, ptr %scevgep148, i64 %i.in
  %i.iq = getelementptr i8, ptr %i.c, i64 %i.in   ; 7 uses
  %i.ir = getelementptr i8, ptr %scevgep147, i64 %i.in ; 7 uses
  %i.is = add i32 %i.hr, %i.hu
  %i.it = sext i32 %i.is to i64
  %i.iu = shl nsw i64 %i.it, 3                    ; 2 uses
  %i.iv = getelementptr i8, ptr %i.b, i64 %i.iu
  %i.iw = getelementptr i8, ptr %scevgep, i64 %i.iu
  %i.ix = add i32 %i.ht, %i.hu
  %i.iy = sext i32 %i.ix to i64
  %i.iz = shl nsw i64 %i.iy, 3                    ; 2 uses
  %i.ja = getelementptr i8, ptr %i.b, i64 %i.iz
  %i.jb = getelementptr i8, ptr %scevgep, i64 %i.iz
  %5 = mul i32 %i.f, %i.ck                        ; 2 uses
  %i.jc = add i32 %i.bu, %5
  %i.jd = sext i32 %i.jc to i64
  %i.je = shl nsw i64 %i.jd, 3                    ; 2 uses
  %i.jf = getelementptr i8, ptr %i.b, i64 %i.je
  %i.jg = getelementptr i8, ptr %scevgep, i64 %i.je
  %i.jh = add i32 %i.bt, %5
  %i.ji = sext i32 %i.jh to i64
  %i.jj = shl nsw i64 %i.ji, 3                    ; 2 uses
  %6 = getelementptr i8, ptr %i.b, i64 %i.jj
  %7 = getelementptr i8, ptr %scevgep, i64 %i.jj
  %i.jk = getelementptr i8, ptr %i.b, i64 %i.in
  %i.jl = getelementptr i8, ptr %scevgep, i64 %i.in
  %bound0 = icmp ult ptr %i.io, %i.ir
  %bound1 = icmp ult ptr %i.iq, %i.ip
  %found.conflict = and i1 %bound0, %bound1
  %bound0149 = icmp ult ptr %i.i, %i.ir
  %bound1150 = icmp ult ptr %i.iq, %scevgep146
  %found.conflict151 = and i1 %bound0149, %bound1150
  %conflict.rdx = or i1 %found.conflict, %found.conflict151
  %bound0152 = icmp ult ptr %i.iq, %i.iw
  %bound1153 = icmp ult ptr %i.iv, %i.ir
  %found.conflict154 = and i1 %bound0152, %bound1153
  %conflict.rdx155 = or i1 %conflict.rdx, %found.conflict154
  %bound0156 = icmp ult ptr %i.iq, %i.jb
  %bound1157 = icmp ult ptr %i.ja, %i.ir
  %found.conflict158 = and i1 %bound0156, %bound1157
  %conflict.rdx159 = or i1 %conflict.rdx155, %found.conflict158
  %bound0160 = icmp ult ptr %i.iq, %i.jg
  %bound1161 = icmp ult ptr %i.jf, %i.ir
  %found.conflict162 = and i1 %bound0160, %bound1161
  %conflict.rdx163 = or i1 %conflict.rdx159, %found.conflict162
  %bound0164 = icmp ult ptr %i.iq, %7
  %bound1165 = icmp ult ptr %6, %i.ir
  %found.conflict166 = and i1 %bound0164, %bound1165
  %conflict.rdx167 = or i1 %conflict.rdx163, %found.conflict166
  %bound0168 = icmp ult ptr %i.iq, %i.jl
  %bound1169 = icmp ult ptr %i.jk, %i.ir
  %found.conflict170 = and i1 %bound0168, %bound1169
  %conflict.rdx171 = or i1 %conflict.rdx167, %found.conflict170
  br i1 %conflict.rdx171, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 4 uses
  %i.jm = trunc i64 %index to i32
  %i.jn = or disjoint i32 %i.jm, 1
  %i.jo = add i32 %i.hv, %i.jn                    ; 5 uses
  %i.jp = sext i32 %i.jo to i64                   ; 3 uses
  %i.jq = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.jp
  %wide.load = load <2 x double>, ptr %i.jq, align 8, !tbaa !22, !alias.scope !139 ; 4 uses
  %i.jr = add i32 %i.jo, %i.bq
  %i.js = sext i32 %i.jr to i64
  %i.jt = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.js
  %wide.load172 = load <2 x double>, ptr %i.jt, align 8, !tbaa !22, !alias.scope !140
  %i.ju = fsub <2 x double> %wide.load, %wide.load172
  %i.jv = add nsw i32 %i.jo, %i.bo
  %i.jw = sext i32 %i.jv to i64
  %i.jx = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.jw
  %wide.load173 = load <2 x double>, ptr %i.jx, align 8, !tbaa !22, !alias.scope !141
  %i.jy = fsub <2 x double> %wide.load173, %wide.load
  %i.jz = add i32 %i.jo, %i.ht
  %i.ka = sext i32 %i.jz to i64
  %i.kb = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ka
  %wide.load174 = load <2 x double>, ptr %i.kb, align 8, !tbaa !22, !alias.scope !142
  %i.kc = fsub <2 x double> %wide.load, %wide.load174
  %i.kd = add nsw i32 %i.jo, %i.hr
  %i.ke = sext i32 %i.kd to i64
  %i.kf = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ke
  %wide.load175 = load <2 x double>, ptr %i.kf, align 8, !tbaa !22, !alias.scope !143
  %i.kg = fsub <2 x double> %wide.load175, %wide.load
  %i.kh = getelementptr inbounds [8 x i8], ptr %i.j, i64 %index
  %wide.load176 = load <2 x double>, ptr %i.kh, align 8, !tbaa !22, !alias.scope !144, !noalias !145
  %i.ki = fneg <2 x double> %wide.load176
  %i.kj = fsub <2 x double> %i.jy, %i.ju
  %i.kk = getelementptr inbounds [8 x i8], ptr %i.i, i64 %index
  %wide.load177 = load <2 x double>, ptr %i.kk, align 8, !tbaa !22, !alias.scope !144, !noalias !145
  %i.kl = fsub <2 x double> %i.kg, %i.kc
  %i.km = fneg <2 x double> %i.kl
  %i.kn = fmul <2 x double> %wide.load177, %i.km
  %i.ko = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ki, <2 x double> %i.kj, <2 x double> %i.kn)
  %i.kp = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.jp
  %wide.load178 = load <2 x double>, ptr %i.kp, align 8, !tbaa !22, !alias.scope !146, !noalias !145
  %i.kq = fsub <2 x double> %i.ko, %wide.load178
  %i.kr = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.jp
  store <2 x double> %i.kq, ptr %i.kr, align 8, !tbaa !22, !alias.scope !145, !noalias !147
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ks = icmp eq i64 %index.next, %n.vec
  br i1 %i.ks, label %middle.block, label %vector.body, !llvm.loop !128

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %vector.scevcheck ], [ 1, %.lr.ph ], [ %i.ay, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.kt = trunc nuw nsw i64 %indvars.iv to i32
  %i.ku = add i32 %i.hv, %i.kt                    ; 5 uses
  %i.kv = sext i32 %i.ku to i64                   ; 3 uses
  %i.kw = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.kv
  %i.kx = load double, ptr %i.kw, align 8, !tbaa !22 ; 4 uses
  %i.ky = add i32 %i.ku, %i.bq
  %i.kz = sext i32 %i.ky to i64
  %i.la = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.kz
  %i.lb = load double, ptr %i.la, align 8, !tbaa !22
  %i.lc = fsub double %i.kx, %i.lb
  %i.ld = add nsw i32 %i.ku, %i.bo
  %i.le = sext i32 %i.ld to i64
  %i.lf = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.le
  %i.lg = load double, ptr %i.lf, align 8, !tbaa !22
  %i.lh = fsub double %i.lg, %i.kx
  %i.li = add i32 %i.ku, %i.ht
  %i.lj = sext i32 %i.li to i64
  %i.lk = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.lj
  %i.ll = load double, ptr %i.lk, align 8, !tbaa !22
  %i.lm = fsub double %i.kx, %i.ll
  %i.ln = add nsw i32 %i.ku, %i.hr
  %i.lo = sext i32 %i.ln to i64
  %i.lp = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.lo
  %i.lq = load double, ptr %i.lp, align 8, !tbaa !22
  %i.lr = fsub double %i.lq, %i.kx
  %i.ls = add nsw i64 %indvars.iv, -1             ; 2 uses
  %i.lt = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ls
  %i.lu = load double, ptr %i.lt, align 8, !tbaa !22
  %i.lv = fneg double %i.lu
  %i.lw = fsub double %i.lh, %i.lc
  %i.lx = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ls
  %i.ly = load double, ptr %i.lx, align 8, !tbaa !22
  %i.lz = fsub double %i.lr, %i.lm
  %i.ma = fneg double %i.lz
  %i.mb = fmul double %i.ly, %i.ma
  %i.mc = tail call double @llvm.fmuladd.f64(double %i.lv, double %i.lw, double %i.mb)
  %i.md = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.kv
  %i.me = load double, ptr %i.md, align 8, !tbaa !22
  %i.mf = fsub double %i.mc, %i.me
  %i.mg = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.kv
  store double %i.mf, ptr %i.mg, align 8, !tbaa !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !129

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.c, %WebRatesB.exit
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %exitcond96.not = icmp eq i64 %indvars.iv.next94, 20
  br i1 %exitcond96.not, label %bb.d, label %bb.c

bb.d:                                             ; preds = %._crit_edge
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %exitcond100.not = icmp eq i64 %indvars.iv.next98, 20
  br i1 %exitcond100.not, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  ret i32 0
}

declare i32 @CVodeSStolerancesB(ptr noundef, i32 noundef, double noundef, double noundef) local_unnamed_addr #2

declare i32 @CVodeSetLinearSolverB(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeSetPreconditionerB(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @PrecondB(double %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr noundef %3, i32 %4, ptr nofree noundef writeonly captures(none) %5, double noundef %6, ptr nofree noundef readonly captures(none) %7) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 39224
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 39232
  %i.d = load i32, ptr %i.c, align 8, !tbaa !31
  %i.e = tail call ptr @CVodeGetAdjCVodeBmem(ptr noundef %i.b, i32 noundef %i.d) #10 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %check_retval.exit, label %bb.b

check_retval.exit:                                ; preds = %bb.a
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.29) #11 ; 0 uses
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 39208
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20   ; 3 uses
  %i.k = tail call i32 @CVodeGetErrWeights(ptr noundef nonnull %i.e, ptr noundef %i.j) #10 ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %check_retval.exit115, label %bb.c

check_retval.exit115:                             ; preds = %bb.b
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.m, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.28, i32 noundef %i.k) #11 ; 0 uses
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.o = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #10 ; 5 uses
  %i.p = tail call ptr @N_VGetArrayPointer(ptr noundef %i.j) #10 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 288 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 296 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.u = load i32, ptr %i.t, align 8, !tbaa !32   ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 800
  %i.w = load double, ptr %i.v, align 8, !tbaa !33 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.y = load i32, ptr %i.x, align 8, !tbaa !34   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 92
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !35  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !36 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 100
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !37 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 808 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 39216
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !21
  %i.ai = tail call ptr @N_VGetArrayPointer(ptr noundef %i.ah) #10 ; 21 uses
  %i.aj = tail call double @N_VWrmsNorm(ptr noundef %3, ptr noundef %i.j) #10
  %i.ak = tail call double @llvm.fabs.f64(double %6)
  %i.al = fmul double %i.ak, 1.000000e+03
  %i.am = fmul double %i.al, f0x3CB0000000000000
  %i.an = fmul double %i.am, 2.400000e+03
  %i.ao = fmul double %i.an, %i.aj                ; 2 uses
  %i.ap = fcmp oeq double %i.ao, 0.000000e+00
  %spec.store.select = select i1 %i.ap, double 1.000000e+00, double %i.ao ; 2 uses
  %i.aq = icmp sgt i32 %i.ac, 0
  br i1 %i.aq, label %.lr.ph136, label %.preheader

.lr.ph136:                                        ; preds = %bb.c
  %i.ar = icmp slt i32 %i.aa, 1
  %i.as = icmp slt i32 %i.u, 1
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 784
  %i.au = getelementptr i8, ptr %7, i64 304       ; 2 uses
  %i.av = getelementptr i8, ptr %7, i64 592       ; 5 uses
  %brmerge = select i1 %i.ar, i1 true, i1 %i.as
  br i1 %brmerge, label %.preheader, label %.lr.ph136.split.split

.lr.ph136.split.split:                            ; preds = %.lr.ph136
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !38
  %i.az = load i32, ptr %i.aw, align 8, !tbaa !24 ; 5 uses
end_hunk_1
begin_hunk_2_@GSIter:bb.a
.lr.ph.i370.prol:                                 ; preds = %.lr.ph.i370.preheader
  %i.afd = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i371.ph
  %i.afe = load double, ptr %i.afd, align 16, !tbaa !22
  %i.aff = getelementptr inbounds nuw [8 x i8], ptr %i.aet, i64 %indvars.iv.i371.ph
  %i.afg = load double, ptr %i.aff, align 8, !tbaa !22
  %i.afh = getelementptr inbounds nuw [8 x i8], ptr %i.aeb, i64 %indvars.iv.i371.ph ; 2 uses
  %i.afi = load double, ptr %i.afh, align 8, !tbaa !22
  %i.afj = tail call double @llvm.fmuladd.f64(double %i.afe, double %i.afg, double %i.afi)
  store double %i.afj, ptr %i.afh, align 8, !tbaa !22
  %indvars.iv.next.i372.prol = or disjoint i64 %indvars.iv.i371.ph, 1
  br label %.lr.ph.i370.prol.loopexit

.lr.ph.i370.prol.loopexit:                        ; preds = %.lr.ph.i370.prol, %.lr.ph.i370.preheader
  %indvars.iv.i371.unr = phi i64 [ %indvars.iv.i371.ph, %.lr.ph.i370.preheader ], [ %indvars.iv.next.i372.prol, %.lr.ph.i370.prol ]
  %i.afk = icmp eq i64 %.pre-phi, %.neg1051
  br i1 %i.afk, label %v_inc_by_prod.exit, label %.lr.ph.i370

.lr.ph.i370:                                      ; preds = %.lr.ph.i370.prol.loopexit, %.lr.ph.i370
  %indvars.iv.i371 = phi i64 [ %indvars.iv.next.i372.1, %.lr.ph.i370 ], [ %indvars.iv.i371.unr, %.lr.ph.i370.prol.loopexit ] ; 5 uses
  %i.afl = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i371
  %i.afm = load double, ptr %i.afl, align 8, !tbaa !22
  %i.afn = getelementptr inbounds nuw [8 x i8], ptr %i.aet, i64 %indvars.iv.i371
  %i.afo = load double, ptr %i.afn, align 8, !tbaa !22
  %i.afp = getelementptr inbounds nuw [8 x i8], ptr %i.aeb, i64 %indvars.iv.i371 ; 2 uses
  %i.afq = load double, ptr %i.afp, align 8, !tbaa !22
  %i.afr = tail call double @llvm.fmuladd.f64(double %i.afm, double %i.afo, double %i.afq)
  store double %i.afr, ptr %i.afp, align 8, !tbaa !22
  %indvars.iv.next.i372 = add nuw nsw i64 %indvars.iv.i371, 1 ; 3 uses
  %i.afs = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next.i372
  %i.aft = load double, ptr %i.afs, align 8, !tbaa !22
  %i.afu = getelementptr inbounds nuw [8 x i8], ptr %i.aet, i64 %indvars.iv.next.i372
  %i.afv = load double, ptr %i.afu, align 8, !tbaa !22
  %i.afw = getelementptr inbounds nuw [8 x i8], ptr %i.aeb, i64 %indvars.iv.next.i372 ; 2 uses
  %i.afx = load double, ptr %i.afw, align 8, !tbaa !22
  %i.afy = tail call double @llvm.fmuladd.f64(double %i.aft, double %i.afv, double %i.afx)
  store double %i.afy, ptr %i.afw, align 8, !tbaa !22
  %indvars.iv.next.i372.1 = add nuw nsw i64 %indvars.iv.i371, 2 ; 2 uses
  %exitcond.not.i373.1 = icmp eq i64 %indvars.iv.next.i372.1, %.pre-phi
  br i1 %exitcond.not.i373.1, label %v_inc_by_prod.exit, label %.lr.ph.i370, !llvm.loop !232

v_inc_by_prod.exit:                               ; preds = %.lr.ph.i356.prol.loopexit, %.lr.ph.i356, %.lr.ph.i342.prol.loopexit, %.lr.ph.i342, %.lr.ph.i335.prol.loopexit, %.lr.ph.i335, %.lr.ph.i321.prol.loopexit, %.lr.ph.i321, %.lr.ph.i307.prol.loopexit, %.lr.ph.i307, %.lr.ph.i300, %.lr.ph.i294, %.lr.ph.i370.prol.loopexit, %.lr.ph.i370, %middle.block790, %middle.block756, %middle.block706, %middle.block656, %middle.block622, %middle.block588, %middle.block572, %middle.block540, %bb.u, %bb.t, %bb.r, %bb.q, %bb.s, %bb.p, %bb.o, %bb.n, %bb.m
  %indvars.iv.next457 = add nuw nsw i64 %indvars.iv456, 1 ; 2 uses
  %exitcond460.not = icmp eq i64 %indvars.iv.next457, %wide.trip.count459
  br i1 %exitcond460.not, label %._crit_edge406, label %bb.m

._crit_edge406:                                   ; preds = %v_inc_by_prod.exit
  %indvars.iv.next462 = add nuw nsw i64 %indvars.iv461, 1 ; 2 uses
  %exitcond465.not = icmp eq i64 %indvars.iv.next462, %wide.trip.count464
  br i1 %exitcond465.not, label %._crit_edge410.split, label %.lr.ph405

._crit_edge410.split:                             ; preds = %._crit_edge406, %.loopexit
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %1, double noundef 1.000000e+00, ptr noundef %2, ptr noundef %1) #10
  %i.afz = add nuw nsw i32 %.0230411, 1           ; 2 uses
  %exitcond466.not = icmp eq i32 %i.afz, 6
  br i1 %exitcond466.not, label %bb.v, label %bb.b

bb.v:                                             ; preds = %._crit_edge410.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

declare void @SUNDlsMat_denseGETRS(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @N_VConst(double noundef, ptr noundef) local_unnamed_addr #2

declare void @N_VLinearSum(double noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CVodeGetAdjCVodeBmem(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

declare ptr @SUNDlsMat_newDenseMat(i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @SUNDlsMat_newIndexArray(i64 noundef) local_unnamed_addr #2

declare void @SUNDlsMat_destroyMat(ptr noundef) local_unnamed_addr #2

declare void @SUNDlsMat_destroyArray(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"any p2 pointer", !9, i64 0}
!13 = !{!"p2 double", !12, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"p1 long", !9, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"double", !5, i64 0}
!18 = !{!"p1 _ZTS17_generic_N_Vector", !9, i64 0}
!19 = !{!"", !5, i64 0, !5, i64 32, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !5, i64 104, !5, i64 116, !5, i64 128, !5, i64 208, !5, i64 288, !5, i64 296, !5, i64 304, !5, i64 592, !5, i64 640, !5, i64 688, !5, i64 736, !17, i64 784, !17, i64 792, !17, i64 800, !5, i64 808, !5, i64 20008, !18, i64 39208, !18, i64 39216, !9, i64 39224, !6, i64 39232}
!20 = !{!19, !18, i64 39208}
!21 = !{!19, !18, i64 39216}
!22 = !{!17, !17, i64 0}
!23 = !{!6, !6, i64 0}
!24 = !{!19, !6, i64 64}
!25 = !{!19, !17, i64 784}
!26 = !{!19, !17, i64 792}
!27 = !{!19, !6, i64 68}
!28 = !{!"llvm.loop.isvectorized", i32 1}
!29 = !{!"llvm.loop.unroll.runtime.disable"}
!30 = !{!19, !9, i64 39224}
!31 = !{!19, !6, i64 39232}
!32 = !{!19, !6, i64 72}
!33 = !{!19, !17, i64 800}
!34 = !{!19, !6, i64 88}
!35 = !{!19, !6, i64 92}
!36 = !{!19, !6, i64 96}
!37 = !{!19, !6, i64 100}
!38 = !{!19, !6, i64 80}
!39 = !{!"p1 double", !9, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!19, !6, i64 84}
!42 = !{!"llvm.loop.unroll.disable"}
!43 = distinct !{!43, !28, !29}
!44 = distinct !{!44, !29, !28}
!45 = !{!"p1 _ZTS11SUNContext_", !9, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{!9, !9, i64 0}
!48 = distinct !{!48, i1 false, !"LVerDomain"}
!49 = distinct !{!49, !48}
!50 = distinct !{!50, !48}
!51 = distinct !{!51, !48}
!52 = distinct !{!52, !28, !29}
!53 = distinct !{!53, !28}
!54 = distinct !{!54, i1 false, !"LVerDomain"}
!55 = distinct !{!55, !54}
!56 = distinct !{!56, !54}
!57 = distinct !{!57, !54}
!58 = distinct !{!58, !54}
!59 = distinct !{!59, !54}
!60 = distinct !{!60, !54}
!61 = distinct !{!61, !54}
!62 = distinct !{!62, !54}
!63 = distinct !{!63, !28, !29}
!64 = distinct !{!64, !28}
!65 = !{!49}
!66 = !{!50}
!67 = !{!51}
!68 = !{!49, !50}
!69 = !{!55}
!70 = !{!56}
!71 = !{!57}
!72 = !{!58}
!73 = !{!59}
!74 = !{!60}
!75 = !{!61}
!76 = !{!62}
!77 = !{!59, !58, !57, !56, !55}
!78 = distinct !{!78, i1 false, !"LVerDomain"}
!79 = distinct !{!79, !78}
!80 = distinct !{!80, !78}
!81 = distinct !{!81, !78}
!82 = distinct !{!82, !28, !29}
!83 = distinct !{!83, !28}
!84 = distinct !{!84, i1 false, !"LVerDomain"}
!85 = distinct !{!85, !84}
!86 = distinct !{!86, !84}
!87 = distinct !{!87, !84}
!88 = distinct !{!88, !28, !29}
!89 = distinct !{!89, !28}
!90 = distinct !{!90, !28, !29}
!91 = distinct !{!91, !28}
!92 = distinct !{!92, !28, !29}
!93 = distinct !{!93, !28}
!94 = !{!79}
!95 = !{!80}
!96 = !{!81}
!97 = !{!79, !80}
!98 = !{!85}
!99 = !{!86}
!100 = !{!87}
!101 = !{!85, !86}
!102 = distinct !{!102, !42}
!103 = distinct !{!103, !28, !29}
!104 = distinct !{!104, !42}
!105 = distinct !{!105, !28}
!106 = distinct !{!106, i1 false, !"LVerDomain"}
!107 = distinct !{!107, !106}
!108 = distinct !{!108, !106}
!109 = distinct !{!109, !106}
!110 = distinct !{!110, !28, !29}
!111 = distinct !{!111, !28}
!112 = distinct !{!112, i1 false, !"LVerDomain"}
!113 = distinct !{!113, !112}
!114 = distinct !{!114, !112}
!115 = distinct !{!115, !112}
!116 = distinct !{!116, !112}
!117 = distinct !{!117, !28, !29}
!118 = distinct !{!118, !28}
!119 = distinct !{!119, i1 false, !"LVerDomain"}
!120 = distinct !{!120, !119}
!121 = distinct !{!121, !119}
!122 = distinct !{!122, !119}
!123 = distinct !{!123, !119}
!124 = distinct !{!124, !119}
!125 = distinct !{!125, !119}
!126 = distinct !{!126, !119}
!127 = distinct !{!127, !119}
!128 = distinct !{!128, !28, !29}
!129 = distinct !{!129, !28}
!130 = !{!107}
!131 = !{!108}
!132 = !{!107, !109}
!133 = !{!109}
!134 = !{!113}
!135 = !{!114}
!136 = !{!115}
!137 = !{!116}
!138 = !{!115, !113, !114}
!139 = !{!120}
!140 = !{!121}
!141 = !{!122}
!142 = !{!123}
!143 = !{!124}
!144 = !{!125}
!145 = !{!126}
!146 = !{!127}
!147 = !{!124, !123, !122, !121, !120}
!148 = distinct !{!148, i1 false, !"LVerDomain"}
!149 = distinct !{!149, !148}
!150 = distinct !{!150, !148}
!151 = distinct !{!151, !148}
!152 = distinct !{!152, !28, !29}
!153 = distinct !{!153, !28}
!154 = distinct !{!154, i1 false, !"LVerDomain"}
!155 = distinct !{!155, !154}
!156 = distinct !{!156, !154}
!157 = distinct !{!157, !154}
!158 = distinct !{!158, !28, !29}
!159 = distinct !{!159, !28}
!160 = !{!149}
!161 = !{!150}
!162 = !{!151}
!163 = !{!149, !150}
!164 = !{!155}
!165 = !{!156}
!166 = !{!157}
!167 = !{!155, !156}
!168 = distinct !{!168, !28, !29}
!169 = distinct !{!169, !29, !28}
!170 = distinct !{!170, !28, !29}
!171 = distinct !{!171, !42}
!172 = distinct !{!172, !28}
!173 = distinct !{!173, !28, !29}
!174 = distinct !{!174, !28}
!175 = distinct !{!175, !28, !29}
!176 = distinct !{!176, !28}
!177 = distinct !{!177, !28, !29}
!178 = distinct !{!178, !42}
!179 = distinct !{!179, !28}
!180 = distinct !{!180, !28, !29}
!181 = distinct !{!181, !28}
!182 = distinct !{!182, !28, !29}
!183 = distinct !{!183, !28}
!184 = distinct !{!184, !28, !29}
!185 = distinct !{!185, !42}
!186 = distinct !{!186, !28}
!187 = distinct !{!187, !28, !29}
!188 = distinct !{!188, !29, !28}
!189 = distinct !{!189, !28, !29}
!190 = distinct !{!190, !29, !28}
!191 = distinct !{!191, !28, !29}
!192 = distinct !{!192, !29, !28}
!193 = distinct !{!193, !28, !29}
!194 = distinct !{!194, !29, !28}
!195 = distinct !{!195, i1 false, !"LVerDomain"}
!196 = distinct !{!196, !195}
!197 = distinct !{!197, !195}
!198 = distinct !{!198, !28, !29}
!199 = distinct !{!199, !28}
!200 = distinct !{!200, !28, !29}
!201 = distinct !{!201, !29, !28}
!202 = distinct !{!202, i1 false, !"LVerDomain"}
!203 = distinct !{!203, !202}
!204 = distinct !{!204, !202}
!205 = distinct !{!205, !28, !29}
!206 = distinct !{!206, !28}
!207 = distinct !{!207, !28, !29}
!208 = distinct !{!208, !29, !28}
!209 = distinct !{!209, i1 false, !"LVerDomain"}
!210 = distinct !{!210, !209}
!211 = distinct !{!211, !209}
!212 = distinct !{!212, !28, !29}
!213 = distinct !{!213, !28}
!214 = distinct !{!214, i1 false, !"LVerDomain"}
!215 = distinct !{!215, !214}
!216 = distinct !{!216, !214}
!217 = distinct !{!217, !28, !29}
!218 = distinct !{!218, !28}
!219 = distinct !{!219, !28, !29}
!220 = distinct !{!220, !29, !28}
!221 = distinct !{!221, i1 false, !"LVerDomain"}
!222 = distinct !{!222, !221}
!223 = distinct !{!223, !221}
!224 = distinct !{!224, !28, !29}
!225 = distinct !{!225, !28}
!226 = distinct !{!226, !28, !29}
!227 = distinct !{!227, !29, !28}
!228 = distinct !{!228, i1 false, !"LVerDomain"}
!229 = distinct !{!229, !228}
!230 = distinct !{!230, !228}
!231 = distinct !{!231, !28, !29}
!232 = distinct !{!232, !28}
!233 = !{!196}
!234 = !{!197}
!235 = !{!203}
!236 = !{!204}
!237 = !{!210}
!238 = !{!211}
!239 = !{!215}
!240 = !{!216}
!241 = !{!222}
!242 = !{!223}
!243 = !{!229}
!244 = !{!230}
end_hunk_2
