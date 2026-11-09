Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/cvsFoodWeb_ASAp_kry?download=true
inline.NumInlined: 58
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 46
begin_hunk_0_@main:bb.a
  %i.ff = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fe, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.13, i32 noundef %i.fc) #11 ; 0 uses
  br label %bb.x

bb.l:                                             ; preds = %bb.k
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
  %i.a = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #10 ; 23 uses
  %i.b = tail call ptr @N_VGetArrayPointer(ptr noundef %2) #10 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.e = load i32, ptr %i.d, align 8, !tbaa !24   ; 14 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 808 ; 3 uses
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
  %i.y = shl nuw nsw i64 %wide.trip.count, 3      ; 6 uses
  %i.z = getelementptr i8, ptr %3, i64 %i.y
  %scevgep = getelementptr i8, ptr %i.z, i64 728
  %i.aa = shl nuw nsw i64 %i.s, 3
  %i.ab = getelementptr i8, ptr %3, i64 %i.aa
  %scevgep189 = getelementptr i8, ptr %i.ab, i64 592
  %i.ac = mul nuw nsw i64 %i.s, 160               ; 2 uses
  %i.ad = shl nsw i64 %i.w, 3
  %i.ae = getelementptr i8, ptr %i.a, i64 %i.ac
  %i.af = getelementptr i8, ptr %3, i64 %i.ac
  %i.ag = getelementptr i8, ptr %i.af, i64 808
  %i.ah = insertelement <2 x ptr> poison, ptr %i.p, i64 1
  %i.ai = insertelement <2 x ptr> poison, ptr %scevgep189, i64 1
  %xtraiter = and i64 %i.s, 1
  %i.aj = icmp eq i32 %i.e, 1
  %unroll_iter = and i64 %i.s, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod218 = trunc i32 %i.e to i1
  %min.iters.check195 = icmp ult i32 %i.e, 4
  %n.vec205 = and i64 %i.s, 2147483644            ; 3 uses
  %cmp.n216 = icmp eq i64 %n.vec205, %i.s
  %xtraiter219 = and i64 %i.s, 1
  %lcmp.mod220.not = icmp eq i64 %xtraiter219, 0
  %i.ak = add nsw i64 %i.s, -1
  %i.al = zext nneg i32 %i.e to i64               ; 3 uses
  %min.iters.check = icmp ult i32 %i.e, 8
  %i.am = trunc i64 %i.x to i32                   ; 5 uses
  %i.an = icmp ugt i64 %i.x, 4294967295
  %invariant.gep = getelementptr i8, ptr %i.a, i64 %i.y
  %invariant.gep221 = getelementptr i8, ptr %i.a, i64 %i.y
  %invariant.gep223 = getelementptr i8, ptr %i.a, i64 %i.y
  %invariant.gep225 = getelementptr i8, ptr %i.a, i64 %i.y
  %n.vec = and i64 %i.al, 2147483646              ; 2 uses
  %i.ao = or i64 %i.al, 1
  %cmp.n = icmp eq i64 %n.vec, %i.al
  br label %.split

.split:                                           ; preds = %.split.preheader, %.split86
  %indvars.iv96 = phi i64 [ 0, %.split.preheader ], [ %indvars.iv.next97, %.split86 ] ; 8 uses
  %i.ap = mul i64 %i.ad, %indvars.iv96            ; 4 uses
  %scevgep190 = getelementptr i8, ptr %i.ae, i64 %i.ap
  %scevgep191 = getelementptr i8, ptr %i.a, i64 %i.ap
  %scevgep192 = getelementptr i8, ptr %i.ag, i64 %i.ap ; 2 uses
  %i.aq = getelementptr i8, ptr %3, i64 %i.ap
  %i.ar = insertelement <2 x ptr> %i.ah, ptr %i.aq, i64 0
  %i.as = getelementptr i8, <2 x ptr> %i.ar, <2 x i64> <i64 808, i64 0> ; 2 uses
  %i.at = trunc i64 %indvars.iv96 to i32
  %i.au = mul i32 %i.i, %i.at                     ; 2 uses
  %i.av = trunc i64 %indvars.iv96 to i32
  %i.aw = mul i32 %i.i, %i.av                     ; 2 uses
  %i.ax = trunc nuw nsw i64 %indvars.iv96 to i32
  %i.ay = uitofp nneg i32 %i.ax to double
  %i.az = fmul double %i.m, %i.ay
  %i.ba = mul nsw i64 %indvars.iv96, %i.w
  %i.bb = icmp eq i64 %indvars.iv96, 19
  %i.bc = select i1 %i.bb, i32 %i.n, i32 %i.i     ; 4 uses
  %i.bd = icmp eq i64 %indvars.iv96, 0
  %i.be = select i1 %i.bd, i32 %i.i, i32 %i.n     ; 4 uses
  %i.bf = add i32 %i.be, %i.aw
  %i.bg = add i32 %i.bc, %i.aw
  %i.bh = add i32 %i.be, %i.au
  %i.bi = add i32 %i.bc, %i.au
  %i.bj = insertelement <2 x ptr> poison, ptr %scevgep191, i64 0
  %i.bk = insertelement <2 x ptr> poison, ptr %scevgep190, i64 0
  %i.bl = insertelement <2 x ptr> %i.bk, ptr %scevgep192, i64 1
  %i.bm = insertelement <2 x ptr> %i.ai, ptr %scevgep192, i64 0
  %i.bn = shufflevector <2 x ptr> %i.bj, <2 x ptr> %i.as, <2 x i32> <i32 0, i32 2>
  %i.bo = icmp ult <2 x ptr> %i.as, %i.bl
  %i.bp = icmp ult <2 x ptr> %i.bn, %i.bm
  %i.bq = and <2 x i1> %i.bp, %i.bo
  %i.br = bitcast <2 x i1> %i.bq to i2
  %.not = icmp eq i2 %i.br, 0
  br label %bb.b

bb.b:                                             ; preds = %.split, %._crit_edge
  %indvars.iv92 = phi i64 [ 0, %.split ], [ %indvars.iv.next93, %._crit_edge ] ; 7 uses
  %i.bs = trunc i64 %indvars.iv92 to i32
  %i.bt = mul i64 %indvars.iv92, %i.s             ; 2 uses
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = add i32 %i.bf, %i.bu                    ; 2 uses
  %i.bw = trunc i64 %i.bt to i32
  %i.bx = add i32 %i.bg, %i.bw                    ; 2 uses
  %i.by = trunc nuw nsw i64 %indvars.iv92 to i32
  %i.bz = uitofp nneg i32 %i.by to double
  %i.ca = fmul double %i.k, %i.bz
  %i.cb = mul nuw nsw i64 %indvars.iv92, %i.v
  %i.cc = add nsw i64 %i.cb, %i.ba                ; 5 uses
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.cc ; 5 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.cc ; 8 uses
  br i1 %i.q, label %.preheader.preheader.i, label %WebRates.exit

.preheader.preheader.i:                           ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ce, i8 0, i64 %i.t, i1 false), !tbaa !22
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %indvars.iv48.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next49.i, %._crit_edge.i ] ; 3 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv48.i ; 3 uses
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv48.i ; 3 uses
  br i1 %i.aj, label %.epil.preheader, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i, %.preheader.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader.i.new ], [ 0, %.preheader.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.i.new ], [ 0, %.preheader.i ]
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !22
  %gep.i = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.ch = load double, ptr %gep.i, align 8, !tbaa !22
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.i ; 2 uses
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !22
  %i.ck = tail call double @llvm.fmuladd.f64(double %i.cg, double %i.ch, double %i.cj)
  store double %i.ck, ptr %i.ci, align 8, !tbaa !22
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.cl = load double, ptr %i.cf, align 8, !tbaa !22
  %gep.i.1 = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %i.cm = load double, ptr %gep.i.1, align 8, !tbaa !22
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.next.i ; 2 uses
  %i.co = load double, ptr %i.cn, align 8, !tbaa !22
  %i.cp = tail call double @llvm.fmuladd.f64(double %i.cl, double %i.cm, double %i.co)
  store double %i.cp, ptr %i.cn, align 8, !tbaa !22
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.preheader.i.new

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod218)
  %i.cq = load double, ptr %i.cf, align 8, !tbaa !22
  %gep.i.epil = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.epil.init
  %i.cr = load double, ptr %gep.i.epil, align 8, !tbaa !22
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !22
  %i.cu = tail call double @llvm.fmuladd.f64(double %i.cq, double %i.cr, double %i.ct)
  store double %i.cu, ptr %i.cs, align 8, !tbaa !22
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1 ; 2 uses
  %exitcond52.not.i = icmp eq i64 %indvars.iv.next49.i, %i.s
  br i1 %exitcond52.not.i, label %._crit_edge41.split.i, label %.preheader.i

._crit_edge41.split.i:                            ; preds = %._crit_edge.i
  %i.cv = tail call double @llvm.fmuladd.f64(double %i.ca, double %i.az, double 1.000000e+00) ; 4 uses
  %.not.not = xor i1 %.not, true
  %brmerge = select i1 %min.iters.check195, i1 true, i1 %.not.not
  br i1 %brmerge, label %.lr.ph44.i.preheader, label %vector.ph204

vector.ph204:                                     ; preds = %._crit_edge41.split.i
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cv, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body206

vector.body206:                                   ; preds = %vector.body206, %vector.ph204
  %index207 = phi i64 [ 0, %vector.ph204 ], [ %index.next214, %vector.body206 ] ; 4 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %index207 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %wide.load208 = load <2 x double>, ptr %i.cw, align 8, !tbaa !22, !alias.scope !65
  %wide.load209 = load <2 x double>, ptr %i.cx, align 8, !tbaa !22, !alias.scope !65
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %index207 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %wide.load210 = load <2 x double>, ptr %i.cy, align 8, !tbaa !22, !alias.scope !66
  %wide.load211 = load <2 x double>, ptr %i.cz, align 8, !tbaa !22, !alias.scope !66
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index207 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16 ; 2 uses
  %wide.load212 = load <2 x double>, ptr %i.da, align 8, !tbaa !22, !alias.scope !67, !noalias !68
  %wide.load213 = load <2 x double>, ptr %i.db, align 8, !tbaa !22, !alias.scope !67, !noalias !68
  %i.dc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load210, <2 x double> %broadcast.splat, <2 x double> %wide.load212)
  %i.dd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load211, <2 x double> %broadcast.splat, <2 x double> %wide.load213)
  %i.de = fmul <2 x double> %wide.load208, %i.dc
  %i.df = fmul <2 x double> %wide.load209, %i.dd
  store <2 x double> %i.de, ptr %i.da, align 8, !tbaa !22, !alias.scope !67, !noalias !68
  store <2 x double> %i.df, ptr %i.db, align 8, !tbaa !22, !alias.scope !67, !noalias !68
  %index.next214 = add nuw i64 %index207, 4       ; 2 uses
  %i.dg = icmp eq i64 %index.next214, %n.vec205
  br i1 %i.dg, label %middle.block215, label %vector.body206, !llvm.loop !52

middle.block215:                                  ; preds = %vector.body206
  br i1 %cmp.n216, label %WebRates.exit, label %.lr.ph44.i.preheader

.lr.ph44.i.preheader:                             ; preds = %._crit_edge41.split.i, %middle.block215
  %indvars.iv53.i.ph = phi i64 [ %n.vec205, %middle.block215 ], [ 0, %._crit_edge41.split.i ] ; 6 uses
  br i1 %lcmp.mod220.not, label %.lr.ph44.i.prol.loopexit, label %.lr.ph44.i.prol

.lr.ph44.i.prol:                                  ; preds = %.lr.ph44.i.preheader
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv53.i.ph
  %i.di = load double, ptr %i.dh, align 8, !tbaa !22
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv53.i.ph
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !22
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv53.i.ph ; 2 uses
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !22
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.dk, double %i.cv, double %i.dm)
  %i.do = fmul double %i.di, %i.dn
  store double %i.do, ptr %i.dl, align 8, !tbaa !22
  %indvars.iv.next54.i.prol = or disjoint i64 %indvars.iv53.i.ph, 1
  br label %.lr.ph44.i.prol.loopexit

.lr.ph44.i.prol.loopexit:                         ; preds = %.lr.ph44.i.prol, %.lr.ph44.i.preheader
  %indvars.iv53.i.unr = phi i64 [ %indvars.iv53.i.ph, %.lr.ph44.i.preheader ], [ %indvars.iv.next54.i.prol, %.lr.ph44.i.prol ]
  %i.dp = icmp eq i64 %indvars.iv53.i.ph, %i.ak
  br i1 %i.dp, label %WebRates.exit, label %.lr.ph44.i

.lr.ph44.i:                                       ; preds = %.lr.ph44.i.prol.loopexit, %.lr.ph44.i
  %indvars.iv53.i = phi i64 [ %indvars.iv.next54.i.1, %.lr.ph44.i ], [ %indvars.iv53.i.unr, %.lr.ph44.i.prol.loopexit ] ; 5 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv53.i
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !22
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv53.i
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !22
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv53.i ; 2 uses
  %i.dv = load double, ptr %i.du, align 8, !tbaa !22
  %i.dw = tail call double @llvm.fmuladd.f64(double %i.dt, double %i.cv, double %i.dv)
  %i.dx = fmul double %i.dr, %i.dw
  store double %i.dx, ptr %i.du, align 8, !tbaa !22
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1 ; 3 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv.next54.i
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !22
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next54.i
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !22
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.next54.i ; 2 uses
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !22
  %i.ee = tail call double @llvm.fmuladd.f64(double %i.eb, double %i.cv, double %i.ed)
  %i.ef = fmul double %i.dz, %i.ee
  store double %i.ef, ptr %i.ec, align 8, !tbaa !22
  %indvars.iv.next54.i.1 = add nuw nsw i64 %indvars.iv53.i, 2 ; 2 uses
  %exitcond57.not.i.1 = icmp eq i64 %indvars.iv.next54.i.1, %i.s
  br i1 %exitcond57.not.i.1, label %WebRates.exit, label %.lr.ph44.i, !llvm.loop !53

WebRates.exit:                                    ; preds = %.lr.ph44.i.prol.loopexit, %.lr.ph44.i, %middle.block215, %bb.b
  %i.eg = icmp eq i64 %indvars.iv92, 19
  %i.eh = select i1 %i.eg, i32 %i.r, i32 %i.e     ; 4 uses
  %i.ei = icmp eq i64 %indvars.iv92, 0
  %i.ej = select i1 %i.ei, i32 %i.e, i32 %i.r     ; 4 uses
  %i.ek = trunc nsw i64 %i.cc to i32              ; 6 uses
  %i.el = add i32 %i.ek, -1                       ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %WebRates.exit
  %i.em = add i32 %i.ek, %i.am
  %i.en = icmp slt i32 %i.em, %i.ek
  %i.eo = add i32 %i.bv, %i.am
  %i.ep = icmp slt i32 %i.eo, %i.bv
  %i.eq = or i1 %i.ep, %i.an
  %i.er = add i32 %i.bx, %i.am
  %i.es = icmp slt i32 %i.er, %i.bx
  %i.et = add i32 %i.ej, %i.ek                    ; 2 uses
  %i.eu = add i32 %i.et, %i.am
  %i.ev = icmp slt i32 %i.eu, %i.et
  %i.ew = add nsw i32 %i.eh, %i.ek                ; 2 uses
  %i.ex = add i32 %i.ew, %i.am
  %i.ey = icmp slt i32 %i.ex, %i.ew
  %i.ez = or i1 %i.en, %i.eq
  %i.fa = or i1 %i.es, %i.ez
  %i.fb = or i1 %i.ev, %i.fa
  %i.fc = or i1 %i.ey, %i.fb
  br i1 %i.fc, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.fd = shl nsw i64 %i.cc, 3                    ; 4 uses
  %4 = getelementptr i8, ptr %3, i64 %i.fd
  %i.fe = getelementptr i8, ptr %4, i64 808
  %5 = add i64 %i.fd, %i.y                        ; 2 uses
  %i.ff = getelementptr i8, ptr %3, i64 %5
  %i.fg = getelementptr i8, ptr %i.ff, i64 800
  %i.fh = getelementptr i8, ptr %i.b, i64 %i.fd   ; 7 uses
  %i.fi = add i64 %5, -8                          ; 2 uses
  %i.fj = getelementptr i8, ptr %i.b, i64 %i.fi   ; 7 uses
  %i.fk = sext i32 %i.eh to i64
  %i.fl = add nsw i64 %i.cc, %i.fk
  %i.fm = shl nsw i64 %i.fl, 3                    ; 2 uses
  %6 = getelementptr i8, ptr %i.a, i64 %i.fm
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.fm
  %i.fn = getelementptr i8, ptr %gep, i64 -8
  %i.fo = add i32 %i.ej, %i.ek
  %i.fp = sext i32 %i.fo to i64
  %i.fq = shl nsw i64 %i.fp, 3                    ; 2 uses
  %7 = getelementptr i8, ptr %i.a, i64 %i.fq
  %gep222 = getelementptr i8, ptr %invariant.gep221, i64 %i.fq
  %i.fr = getelementptr i8, ptr %gep222, i64 -8
  %i.fs = mul i32 %i.e, %i.bs                     ; 2 uses
  %i.ft = add i32 %i.bi, %i.fs
  %i.fu = sext i32 %i.ft to i64
  %i.fv = shl nsw i64 %i.fu, 3                    ; 2 uses
  %8 = getelementptr i8, ptr %i.a, i64 %i.fv
  %gep224 = getelementptr i8, ptr %invariant.gep223, i64 %i.fv
  %i.fw = getelementptr i8, ptr %gep224, i64 -8
  %i.fx = add i32 %i.bh, %i.fs
  %i.fy = sext i32 %i.fx to i64
  %i.fz = shl nsw i64 %i.fy, 3                    ; 2 uses
  %9 = getelementptr i8, ptr %i.a, i64 %i.fz
  %gep226 = getelementptr i8, ptr %invariant.gep225, i64 %i.fz
  %i.ga = getelementptr i8, ptr %gep226, i64 -8
  %i.gb = getelementptr i8, ptr %i.a, i64 %i.fd
  %i.gc = getelementptr i8, ptr %i.a, i64 %i.fi
  %bound0 = icmp ult ptr %i.fe, %i.fj
  %bound1 = icmp ult ptr %i.fh, %i.fg
  %found.conflict = and i1 %bound0, %bound1
  %bound0146 = icmp ult ptr %i.g, %i.fj
  %bound1147 = icmp ult ptr %i.fh, %scevgep
  %found.conflict148 = and i1 %bound0146, %bound1147
  %conflict.rdx = or i1 %found.conflict, %found.conflict148
  %bound0149 = icmp ult ptr %i.fh, %i.fn
  %bound1150 = icmp ult ptr %6, %i.fj
  %found.conflict151 = and i1 %bound0149, %bound1150
  %conflict.rdx152 = or i1 %conflict.rdx, %found.conflict151
  %bound0153 = icmp ult ptr %i.fh, %i.fr
  %bound1154 = icmp ult ptr %7, %i.fj
  %found.conflict155 = and i1 %bound0153, %bound1154
  %conflict.rdx156 = or i1 %conflict.rdx152, %found.conflict155
  %bound0157 = icmp ult ptr %i.fh, %i.fw
  %bound1158 = icmp ult ptr %8, %i.fj
  %found.conflict159 = and i1 %bound0157, %bound1158
  %conflict.rdx160 = or i1 %conflict.rdx156, %found.conflict159
  %bound0161 = icmp ult ptr %i.fh, %i.ga
  %bound1162 = icmp ult ptr %9, %i.fj
  %found.conflict163 = and i1 %bound0161, %bound1162
  %conflict.rdx164 = or i1 %conflict.rdx160, %found.conflict163
  %bound0165 = icmp ult ptr %i.fh, %i.gc
  %bound1166 = icmp ult ptr %i.gb, %i.fj
  %found.conflict167 = and i1 %bound0165, %bound1166
  %conflict.rdx168 = or i1 %conflict.rdx164, %found.conflict167
  br i1 %conflict.rdx168, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 4 uses
  %i.gd = trunc i64 %index to i32
  %i.ge = or disjoint i32 %i.gd, 1
  %i.gf = add i32 %i.el, %i.ge                    ; 5 uses
  %i.gg = sext i32 %i.gf to i64                   ; 3 uses
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.gg
  %wide.load = load <2 x double>, ptr %i.gh, align 8, !tbaa !22, !alias.scope !69 ; 4 uses
  %i.gi = add i32 %i.gf, %i.be
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.gj
  %wide.load169 = load <2 x double>, ptr %i.gk, align 8, !tbaa !22, !alias.scope !70
  %i.gl = fsub <2 x double> %wide.load, %wide.load169
  %i.gm = add nsw i32 %i.gf, %i.bc
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.gn
  %wide.load170 = load <2 x double>, ptr %i.go, align 8, !tbaa !22, !alias.scope !71
  %i.gp = fsub <2 x double> %wide.load170, %wide.load
  %i.gq = add i32 %i.gf, %i.ej
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.gr
  %wide.load171 = load <2 x double>, ptr %i.gs, align 8, !tbaa !22, !alias.scope !72
  %i.gt = fsub <2 x double> %wide.load, %wide.load171
  %i.gu = add nsw i32 %i.gf, %i.eh
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.gv
  %wide.load172 = load <2 x double>, ptr %i.gw, align 8, !tbaa !22, !alias.scope !73
  %i.gx = fsub <2 x double> %wide.load172, %wide.load
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.h, i64 %index
  %wide.load173 = load <2 x double>, ptr %i.gy, align 8, !tbaa !22, !alias.scope !74, !noalias !75
  %i.gz = fsub <2 x double> %i.gp, %i.gl
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.g, i64 %index
  %wide.load174 = load <2 x double>, ptr %i.ha, align 8, !tbaa !22, !alias.scope !74, !noalias !75
  %i.hb = fsub <2 x double> %i.gx, %i.gt
  %i.hc = fmul <2 x double> %wide.load174, %i.hb
  %i.hd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load173, <2 x double> %i.gz, <2 x double> %i.hc)
  %i.he = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.gg
  %wide.load175 = load <2 x double>, ptr %i.he, align 8, !tbaa !22, !alias.scope !76, !noalias !75
  %i.hf = fadd <2 x double> %wide.load175, %i.hd
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.gg
  store <2 x double> %i.hf, ptr %i.hg, align 8, !tbaa !22, !alias.scope !75, !noalias !77
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.hh = icmp eq i64 %index.next, %n.vec
  br i1 %i.hh, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %WebRates.exit, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %vector.scevcheck ], [ 1, %WebRates.exit ], [ %i.ao, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.hi = trunc nuw nsw i64 %indvars.iv to i32
  %i.hj = add i32 %i.el, %i.hi                    ; 5 uses
  %i.hk = sext i32 %i.hj to i64                   ; 3 uses
  %i.hl = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.hk
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !22 ; 4 uses
  %i.hn = add i32 %i.hj, %i.be
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ho
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !22
  %i.hr = fsub double %i.hm, %i.hq
  %i.hs = add nsw i32 %i.hj, %i.bc
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ht
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !22
  %i.hw = fsub double %i.hv, %i.hm
  %i.hx = add i32 %i.hj, %i.ej
  %i.hy = sext i32 %i.hx to i64
  %i.hz = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.hy
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !22
  %i.ib = fsub double %i.hm, %i.ia
  %i.ic = add nsw i32 %i.hj, %i.eh
  %i.id = sext i32 %i.ic to i64
  %i.ie = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.id
  %i.if = load double, ptr %i.ie, align 8, !tbaa !22
  %i.ig = fsub double %i.if, %i.hm
  %i.ih = add nsw i64 %indvars.iv, -1             ; 2 uses
  %i.ii = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ih
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !22
  %i.ik = fsub double %i.hw, %i.hr
  %i.il = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.ih
  %i.im = load double, ptr %i.il, align 8, !tbaa !22
  %i.in = fsub double %i.ig, %i.ib
  %i.io = fmul double %i.im, %i.in
  %i.ip = tail call double @llvm.fmuladd.f64(double %i.ij, double %i.ik, double %i.io)
  %i.iq = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.hk
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !22
  %i.is = fadd double %i.ir, %i.ip
  %i.it = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.hk
  store double %i.is, ptr %i.it, align 8, !tbaa !22
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
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count160
  %xtraiter = and i64 %wide.trip.count160, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.bb = add nsw i64 %wide.trip.count160, -1
  br label %.lr.ph

.lr.ph.us.preheader:                              ; preds = %.lr.ph128.split.split
  %i.bc = shl nuw nsw i64 %i.ay, 3                ; 3 uses
  %i.bd = getelementptr i8, ptr %6, i64 %i.bc
  %scevgep = getelementptr i8, ptr %i.bd, i64 592
  %scevgep228 = getelementptr i8, ptr %i.j, i64 %i.bc
  %scevgep230 = getelementptr i8, ptr %i.ad, i64 %i.bc ; 2 uses
  %i.be = mul nuw nsw i64 %i.ay, 56
  %i.bf = getelementptr i8, ptr %6, i64 %i.be
  %scevgep265 = getelementptr i8, ptr %i.bf, i64 256
  %i.bg = shl nuw nsw i64 %i.ay, 3                ; 2 uses
  %scevgep266 = getelementptr i8, ptr %i.j, i64 %i.bg
  %scevgep268 = getelementptr i8, ptr %i.ad, i64 %i.bg ; 2 uses
  %i.bh = insertelement <2 x ptr> poison, ptr %i.ad, i64 0
  %i.bi = insertelement <2 x ptr> %i.bh, ptr %i.ar, i64 1
  %i.bj = insertelement <2 x ptr> poison, ptr %scevgep268, i64 1
  %i.bk = insertelement <2 x ptr> poison, ptr %i.ad, i64 1
  %i.bl = insertelement <2 x ptr> poison, ptr %scevgep268, i64 0
  %i.bm = insertelement <2 x ptr> %i.bl, ptr %scevgep265, i64 1
  %min.iters.check270 = icmp ult i32 %i.aw, 5
  %i.bn = and i64 %i.ay, 3                        ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 0
  %i.bp = select i1 %i.bo, i64 4, i64 %i.bn
  %n.vec280 = sub nsw i64 %i.ay, %i.bp            ; 2 uses
  %i.bq = add nsw i64 %i.ay, -1
  %min.iters.check232 = icmp ult i32 %i.aw, 4
  %bound0234 = icmp ult ptr %i.ad, %scevgep
  %bound1235 = icmp ult ptr %i.as, %scevgep230
  %found.conflict236 = and i1 %bound0234, %bound1235
  %n.vec239 = and i64 %i.ay, 2147483644           ; 3 uses
  %cmp.n252 = icmp eq i64 %n.vec239, %i.ay
  %xtraiter293 = and i64 %i.ay, 1
  %lcmp.mod294.not = icmp eq i64 %xtraiter293, 0
  %i.br = add nsw i64 %i.ay, -1
  %min.iters.check201 = icmp ult i32 %i.p, 4
  %n.vec207 = and i64 %wide.trip.count160, 2147483644 ; 3 uses
  %cmp.n218 = icmp eq i64 %n.vec207, %wide.trip.count160
  %xtraiter295 = and i64 %wide.trip.count160, 1
  %lcmp.mod296.not = icmp eq i64 %xtraiter295, 0
  %i.bs = add nsw i64 %wide.trip.count160, -1
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.split125.us.us
  %indvars.iv167 = phi i64 [ %indvars.iv.next168, %._crit_edge.split125.us.us ], [ 0, %.lr.ph.us.preheader ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv167
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !23 ; 3 uses
  %i.bv = mul nsw i32 %i.bu, %i.z
  %i.bw = mul nuw nsw i64 %indvars.iv167, %i.ba
  %i.bx = sitofp i32 %i.bu to double
  %i.by = mul nsw i32 %i.av, %i.bu
  %invariant.gep188 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.bw
  %i.bz = insertelement <2 x double> poison, double %i.bx, i64 1
  br label %.lr.ph115.us.us

.lr.ph115.us.us:                                  ; preds = %._crit_edge116.split.us.us.us, %.lr.ph.us
  %indvars.iv162 = phi i64 [ %indvars.iv.next163, %._crit_edge116.split.us.us.us ], [ 0, %.lr.ph.us ] ; 3 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv162
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !23 ; 3 uses
  %i.cc = mul nsw i32 %i.cb, %i.p
  %i.cd = add nsw i32 %i.cc, %i.bv
  %i.ce = add nsw i32 %i.by, %i.cb
  %i.cf = sitofp i32 %i.cb to double
  %i.cg = mul nsw i32 %i.aw, %i.ce
  %i.ch = sext i32 %i.cg to i64                   ; 2 uses
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ch ; 7 uses
  %gep189 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep188, i64 %indvars.iv162
  %i.cj = load ptr, ptr %gep189, align 8, !tbaa !14
  %i.ck = sext i32 %i.cd to i64                   ; 3 uses
  %invariant.gep186 = getelementptr [8 x i8], ptr %i.aa, i64 %i.ck ; 4 uses
  %i.cl = shl nsw i64 %i.ck, 3
  %i.cm = shl nsw i64 %i.ch, 3                    ; 2 uses
  %scevgep229 = getelementptr i8, ptr %scevgep228, i64 %i.cm
  %scevgep267 = getelementptr i8, ptr %scevgep266, i64 %i.cm
  %i.cn = insertelement <2 x double> %i.bz, double %i.cf, i64 0
  %i.co = insertelement <2 x ptr> %i.bj, ptr %scevgep267, i64 0
  %i.cp = insertelement <2 x ptr> %i.bk, ptr %i.ci, i64 0
  %i.cq = icmp ult <2 x ptr> %i.bi, %i.co
  %i.cr = icmp ult <2 x ptr> %i.cp, %i.bm
  %i.cs = and <2 x i1> %i.cr, %i.cq
  %i.ct = bitcast <2 x i1> %i.cs to i2
  %.not = icmp eq i2 %i.ct, 0
  %bound0 = icmp ult ptr %i.ad, %scevgep229
  %bound1 = icmp ult ptr %i.ci, %scevgep230
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx237 = or i1 %found.conflict, %found.conflict236
  %7 = add i64 %i.cl, %i.a
  %invariant.op297 = sub i64 -809, %7
  br label %.preheader.preheader.i.i.us.us.us

.preheader.preheader.i.i.us.us.us:                ; preds = %._crit_edge.us.us.us, %.lr.ph115.us.us
  %indvars.iv157 = phi i64 [ %indvars.iv.next158, %._crit_edge.us.us.us ], [ 0, %.lr.ph115.us.us ] ; 3 uses
  %i.cu = add nsw i64 %indvars.iv157, %i.ck       ; 2 uses
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.cu ; 3 uses
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !22 ; 3 uses
  %i.cx = tail call double @llvm.fabs.f64(double %i.cw)
  %i.cy = fmul double %i.r, %i.cx                 ; 2 uses
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.cu
  %i.da = load double, ptr %i.cz, align 8, !tbaa !22
  %i.db = fdiv double %spec.store.select, %i.da   ; 2 uses
  %i.dc = fcmp ogt double %i.cy, %i.db
  %..us.us.us = select i1 %i.dc, double %i.cy, double %i.db ; 2 uses
  %i.dd = fadd double %i.cw, %..us.us.us
  store double %i.dd, ptr %i.cv, align 8, !tbaa !22
  %i.de = load <2 x double>, ptr %i.aq, align 8, !tbaa !22
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ad, i8 0, i64 %i.az, i1 false), !tbaa !22
  br label %.preheader.i.i.us.us.us

.preheader.i.i.us.us.us:                          ; preds = %._crit_edge.i.i.us.us.us, %.preheader.preheader.i.i.us.us.us
  %indvars.iv48.i.i.us.us.us = phi i64 [ 0, %.preheader.preheader.i.i.us.us.us ], [ %indvars.iv.next49.i.i.us.us.us, %._crit_edge.i.i.us.us.us ] ; 3 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv48.i.i.us.us.us ; 4 uses
  %invariant.gep.i.i.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv48.i.i.us.us.us ; 7 uses
  %.not.not = xor i1 %.not, true
  %brmerge299 = select i1 %min.iters.check270, i1 true, i1 %.not.not
  br i1 %brmerge299, label %scalar.ph269.preheader, label %vector.ph279

vector.ph279:                                     ; preds = %.preheader.i.i.us.us.us
  %i.dg = load double, ptr %i.df, align 8, !tbaa !22, !alias.scope !94
  %broadcast.splatinsert285 = insertelement <2 x double> poison, double %i.dg, i64 0
  %broadcast.splat286 = shufflevector <2 x double> %broadcast.splatinsert285, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body281

vector.body281:                                   ; preds = %vector.body281, %vector.ph279
  %index282 = phi i64 [ 0, %vector.ph279 ], [ %index.next287, %vector.body281 ] ; 6 uses
  %i.dh = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i.i.us.us.us, i64 %index282
  %i.di = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i.i.us.us.us, i64 %index282
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 48
  %i.dk = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i.i.us.us.us, i64 %index282
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 96
  %i.dm = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i.i.us.us.us, i64 %index282
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 144
  %i.do = load double, ptr %i.dh, align 8, !tbaa !22, !alias.scope !95
  %i.dp = load double, ptr %i.dj, align 8, !tbaa !22, !alias.scope !95
  %i.dq = insertelement <2 x double> poison, double %i.do, i64 0
  %i.dr = insertelement <2 x double> %i.dq, double %i.dp, i64 1
  %i.ds = load double, ptr %i.dl, align 8, !tbaa !22, !alias.scope !95
  %i.dt = load double, ptr %i.dn, align 8, !tbaa !22, !alias.scope !95
  %i.du = insertelement <2 x double> poison, double %i.ds, i64 0
  %i.dv = insertelement <2 x double> %i.du, double %i.dt, i64 1
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %index282 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16 ; 2 uses
  %wide.load283 = load <2 x double>, ptr %i.dw, align 8, !tbaa !22, !alias.scope !96, !noalias !97
  %wide.load284 = load <2 x double>, ptr %i.dx, align 8, !tbaa !22, !alias.scope !96, !noalias !97
  %i.dy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat286, <2 x double> %i.dr, <2 x double> %wide.load283)
  %i.dz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat286, <2 x double> %i.dv, <2 x double> %wide.load284)
  store <2 x double> %i.dy, ptr %i.dw, align 8, !tbaa !22, !alias.scope !96, !noalias !97
  store <2 x double> %i.dz, ptr %i.dx, align 8, !tbaa !22, !alias.scope !96, !noalias !97
  %index.next287 = add nuw i64 %index282, 4       ; 2 uses
  %i.ea = icmp eq i64 %index.next287, %n.vec280
  br i1 %i.ea, label %scalar.ph269.preheader, label %vector.body281, !llvm.loop !82

scalar.ph269.preheader:                           ; preds = %vector.body281, %.preheader.i.i.us.us.us
  %indvars.iv.i.i.us.us.us.ph = phi i64 [ 0, %.preheader.i.i.us.us.us ], [ %n.vec280, %vector.body281 ] ; 6 uses
  %i.eb = sub nsw i64 %i.ay, %indvars.iv.i.i.us.us.us.ph
  %xtraiter291 = and i64 %i.eb, 1
  %lcmp.mod292.not = icmp eq i64 %xtraiter291, 0
  br i1 %lcmp.mod292.not, label %scalar.ph269.prol.loopexit, label %scalar.ph269.prol

scalar.ph269.prol:                                ; preds = %scalar.ph269.preheader
  %i.ec = load double, ptr %i.df, align 8, !tbaa !22
  %gep.i.i.us.us.us.prol = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i.i.us.us.us, i64 %indvars.iv.i.i.us.us.us.ph
  %i.ed = load double, ptr %gep.i.i.us.us.us.prol, align 8, !tbaa !22
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i.i.us.us.us.ph ; 2 uses
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !22
  %i.eg = tail call double @llvm.fmuladd.f64(double %i.ec, double %i.ed, double %i.ef)
  store double %i.eg, ptr %i.ee, align 8, !tbaa !22
  %indvars.iv.next.i.i.us.us.us.prol = add nuw nsw i64 %indvars.iv.i.i.us.us.us.ph, 1
  br label %scalar.ph269.prol.loopexit

scalar.ph269.prol.loopexit:                       ; preds = %scalar.ph269.prol, %scalar.ph269.preheader
  %indvars.iv.i.i.us.us.us.unr = phi i64 [ %indvars.iv.i.i.us.us.us.ph, %scalar.ph269.preheader ], [ %indvars.iv.next.i.i.us.us.us.prol, %scalar.ph269.prol ]
  %i.eh = icmp eq i64 %indvars.iv.i.i.us.us.us.ph, %i.bq
  br i1 %i.eh, label %._crit_edge.i.i.us.us.us, label %scalar.ph269

scalar.ph269:                                     ; preds = %scalar.ph269.prol.loopexit, %scalar.ph269
  %indvars.iv.i.i.us.us.us = phi i64 [ %indvars.iv.next.i.i.us.us.us.1, %scalar.ph269 ], [ %indvars.iv.i.i.us.us.us.unr, %scalar.ph269.prol.loopexit ] ; 4 uses
  %i.ei = load double, ptr %i.df, align 8, !tbaa !22
  %gep.i.i.us.us.us = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i.i.us.us.us, i64 %indvars.iv.i.i.us.us.us
  %i.ej = load double, ptr %gep.i.i.us.us.us, align 8, !tbaa !22
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i.i.us.us.us ; 2 uses
  %i.el = load double, ptr %i.ek, align 8, !tbaa !22
  %i.em = tail call double @llvm.fmuladd.f64(double %i.ei, double %i.ej, double %i.el)
  store double %i.em, ptr %i.ek, align 8, !tbaa !22
  %indvars.iv.next.i.i.us.us.us = add nuw nsw i64 %indvars.iv.i.i.us.us.us, 1 ; 2 uses
  %i.en = load double, ptr %i.df, align 8, !tbaa !22
  %gep.i.i.us.us.us.1 = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i.i.us.us.us, i64 %indvars.iv.next.i.i.us.us.us
  %i.eo = load double, ptr %gep.i.i.us.us.us.1, align 8, !tbaa !22
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next.i.i.us.us.us ; 2 uses
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !22
  %i.er = tail call double @llvm.fmuladd.f64(double %i.en, double %i.eo, double %i.eq)
  store double %i.er, ptr %i.ep, align 8, !tbaa !22
  %indvars.iv.next.i.i.us.us.us.1 = add nuw nsw i64 %indvars.iv.i.i.us.us.us, 2 ; 2 uses
  %exitcond.not.i.i.us.us.us.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.us.1, %i.ay
  br i1 %exitcond.not.i.i.us.us.us.1, label %._crit_edge.i.i.us.us.us, label %scalar.ph269, !llvm.loop !83

._crit_edge.i.i.us.us.us:                         ; preds = %scalar.ph269, %scalar.ph269.prol.loopexit
  %indvars.iv.next49.i.i.us.us.us = add nuw nsw i64 %indvars.iv48.i.i.us.us.us, 1 ; 2 uses
  %exitcond52.not.i.i.us.us.us = icmp eq i64 %indvars.iv.next49.i.i.us.us.us, %i.ay
  br i1 %exitcond52.not.i.i.us.us.us, label %._crit_edge41.split.i.i.us.us.us, label %.preheader.i.i.us.us.us

._crit_edge41.split.i.i.us.us.us:                 ; preds = %._crit_edge.i.i.us.us.us
  %i.es = fmul <2 x double> %i.de, %i.cn          ; 2 uses
  %i.et = extractelement <2 x double> %i.es, i64 0
  %i.eu = extractelement <2 x double> %i.es, i64 1
  %i.ev = tail call double @llvm.fmuladd.f64(double %i.et, double %i.eu, double 1.000000e+00) ; 4 uses
  %brmerge300 = select i1 %min.iters.check232, i1 true, i1 %conflict.rdx237
  br i1 %brmerge300, label %.lr.ph44.i.i.us.us.us.preheader, label %vector.ph238

vector.ph238:                                     ; preds = %._crit_edge41.split.i.i.us.us.us
  %broadcast.splatinsert240 = insertelement <2 x double> poison, double %i.ev, i64 0
  %broadcast.splat241 = shufflevector <2 x double> %broadcast.splatinsert240, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body242

vector.body242:                                   ; preds = %vector.body242, %vector.ph238
  %index243 = phi i64 [ 0, %vector.ph238 ], [ %index.next250, %vector.body242 ] ; 4 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %index243 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %wide.load244 = load <2 x double>, ptr %i.ew, align 8, !tbaa !22, !alias.scope !98
  %wide.load245 = load <2 x double>, ptr %i.ex, align 8, !tbaa !22, !alias.scope !98
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index243 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %wide.load246 = load <2 x double>, ptr %i.ey, align 8, !tbaa !22, !alias.scope !99
  %wide.load247 = load <2 x double>, ptr %i.ez, align 8, !tbaa !22, !alias.scope !99
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %index243 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16 ; 2 uses
  %wide.load248 = load <2 x double>, ptr %i.fa, align 8, !tbaa !22, !alias.scope !100, !noalias !101
  %wide.load249 = load <2 x double>, ptr %i.fb, align 8, !tbaa !22, !alias.scope !100, !noalias !101
  %i.fc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load246, <2 x double> %broadcast.splat241, <2 x double> %wide.load248)
  %i.fd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load247, <2 x double> %broadcast.splat241, <2 x double> %wide.load249)
  %i.fe = fmul <2 x double> %wide.load244, %i.fc
  %i.ff = fmul <2 x double> %wide.load245, %i.fd
  store <2 x double> %i.fe, ptr %i.fa, align 8, !tbaa !22, !alias.scope !100, !noalias !101
  store <2 x double> %i.ff, ptr %i.fb, align 8, !tbaa !22, !alias.scope !100, !noalias !101
  %index.next250 = add nuw i64 %index243, 4       ; 2 uses
  %i.fg = icmp eq i64 %index.next250, %n.vec239
  br i1 %i.fg, label %middle.block251, label %vector.body242, !llvm.loop !88

middle.block251:                                  ; preds = %vector.body242
  br i1 %cmp.n252, label %fblock.exit.loopexit.us.us.us, label %.lr.ph44.i.i.us.us.us.preheader

.lr.ph44.i.i.us.us.us.preheader:                  ; preds = %._crit_edge41.split.i.i.us.us.us, %middle.block251
  %indvars.iv53.i.i.us.us.us.ph = phi i64 [ %n.vec239, %middle.block251 ], [ 0, %._crit_edge41.split.i.i.us.us.us ] ; 6 uses
  br i1 %lcmp.mod294.not, label %.lr.ph44.i.i.us.us.us.prol.loopexit, label %.lr.ph44.i.i.us.us.us.prol

.lr.ph44.i.i.us.us.us.prol:                       ; preds = %.lr.ph44.i.i.us.us.us.preheader
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv53.i.i.us.us.us.ph
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !22
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv53.i.i.us.us.us.ph
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !22
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv53.i.i.us.us.us.ph ; 2 uses
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !22
  %i.fn = tail call double @llvm.fmuladd.f64(double %i.fk, double %i.ev, double %i.fm)
  %i.fo = fmul double %i.fi, %i.fn
  store double %i.fo, ptr %i.fl, align 8, !tbaa !22
  %indvars.iv.next54.i.i.us.us.us.prol = or disjoint i64 %indvars.iv53.i.i.us.us.us.ph, 1
  br label %.lr.ph44.i.i.us.us.us.prol.loopexit

.lr.ph44.i.i.us.us.us.prol.loopexit:              ; preds = %.lr.ph44.i.i.us.us.us.prol, %.lr.ph44.i.i.us.us.us.preheader
  %indvars.iv53.i.i.us.us.us.unr = phi i64 [ %indvars.iv53.i.i.us.us.us.ph, %.lr.ph44.i.i.us.us.us.preheader ], [ %indvars.iv.next54.i.i.us.us.us.prol, %.lr.ph44.i.i.us.us.us.prol ]
  %i.fp = icmp eq i64 %indvars.iv53.i.i.us.us.us.ph, %i.br
  br i1 %i.fp, label %fblock.exit.loopexit.us.us.us, label %.lr.ph44.i.i.us.us.us

.lr.ph44.i.i.us.us.us:                            ; preds = %.lr.ph44.i.i.us.us.us.prol.loopexit, %.lr.ph44.i.i.us.us.us
  %indvars.iv53.i.i.us.us.us = phi i64 [ %indvars.iv.next54.i.i.us.us.us.1, %.lr.ph44.i.i.us.us.us ], [ %indvars.iv53.i.i.us.us.us.unr, %.lr.ph44.i.i.us.us.us.prol.loopexit ] ; 5 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv53.i.i.us.us.us
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !22
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv53.i.i.us.us.us
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !22
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv53.i.i.us.us.us ; 2 uses
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !22
  %i.fw = tail call double @llvm.fmuladd.f64(double %i.ft, double %i.ev, double %i.fv)
  %i.fx = fmul double %i.fr, %i.fw
  store double %i.fx, ptr %i.fu, align 8, !tbaa !22
  %indvars.iv.next54.i.i.us.us.us = add nuw nsw i64 %indvars.iv53.i.i.us.us.us, 1 ; 3 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.next54.i.i.us.us.us
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !22
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.next54.i.i.us.us.us
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !22
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next54.i.i.us.us.us ; 2 uses
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !22
  %i.ge = tail call double @llvm.fmuladd.f64(double %i.gb, double %i.ev, double %i.gd)
  %i.gf = fmul double %i.fz, %i.ge
  store double %i.gf, ptr %i.gc, align 8, !tbaa !22
  %indvars.iv.next54.i.i.us.us.us.1 = add nuw nsw i64 %indvars.iv53.i.i.us.us.us, 2 ; 2 uses
  %exitcond57.not.i.i.us.us.us.1 = icmp eq i64 %indvars.iv.next54.i.i.us.us.us.1, %i.ay
  br i1 %exitcond57.not.i.i.us.us.us.1, label %fblock.exit.loopexit.us.us.us, label %.lr.ph44.i.i.us.us.us, !llvm.loop !89

end_hunk_0
begin_hunk_1_@doubleIntgr:bb.a
  %i.eg = tail call double @llvm.fmuladd.f64(double %i.ef, double 2.000000e+00, double %.290112)
  %i.eh = trunc i64 %indvars.iv139 to i32
  %i.ei = add i32 %i.eh, 1
  %i.ej = mul i32 %i.c, %i.ei
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
  %i.b = tail call ptr @N_VGetArrayPointer(ptr noundef %2) #10 ; 24 uses
  %i.c = tail call ptr @N_VGetArrayPointer(ptr noundef %3) #10 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.f = load i32, ptr %i.e, align 8, !tbaa !24   ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 808
  %i.h = getelementptr i8, ptr %4, i64 20008      ; 3 uses
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
  %i.y = shl nuw nsw i64 %wide.trip.count, 3      ; 6 uses
  %i.z = getelementptr i8, ptr %4, i64 %i.y
  %scevgep = getelementptr i8, ptr %i.z, i64 728
  %i.aa = shl nuw nsw i64 %wide.trip.count.i, 3   ; 2 uses
  %i.ab = shl nsw i64 %i.w, 3
  %i.ac = shl nsw i64 %i.v, 3
  %i.ad = mul nuw nsw i64 %wide.trip.count.i, 56
  %i.ae = getelementptr i8, ptr %4, i64 %i.ad
  %scevgep194 = getelementptr i8, ptr %i.ae, i64 256
  %i.af = shl nsw i64 %i.v, 3
  %i.ag = mul nsw i64 %i.v, 152
  %i.ah = shl nuw nsw i64 %wide.trip.count.i, 3
  %i.ai = add nsw i64 %i.ag, %i.ah                ; 2 uses
  %i.aj = shl nsw i64 %i.w, 3
  %i.ak = shl nsw i64 %i.w, 3
  %i.al = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %i.am = getelementptr i8, ptr %4, i64 %i.ai
  %i.an = getelementptr i8, ptr %i.am, i64 20008
  %i.ao = getelementptr i8, ptr %4, i64 %i.aa
  %i.ap = getelementptr i8, ptr %i.ao, i64 20008
  %min.iters.check267 = icmp ult i32 %i.f, 4
  %n.vec270 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n279 = icmp eq i64 %n.vec270, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %xtraiter284 = and i64 %wide.trip.count.i, 1
  %i.aq = icmp eq i64 %i.al, 0
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod285.not = icmp eq i64 %xtraiter284, 0
  %lcmp.mod286 = trunc i32 %i.f to i1
  %min.iters.check245 = icmp eq i32 %i.f, 1
  %n.vec255 = and i64 %wide.trip.count.i, 2147483646 ; 3 uses
  %cmp.n263 = icmp eq i64 %n.vec255, %wide.trip.count.i
  %xtraiter287 = and i64 %wide.trip.count.i, 1
  %lcmp.mod288.not = icmp eq i64 %xtraiter287, 0
  %i.ar = add nsw i64 %wide.trip.count.i, -1
  %min.iters.check197 = icmp ult i32 %i.f, 4
  %n.vec211 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n222 = icmp eq i64 %n.vec211, %wide.trip.count.i
  %xtraiter290 = and i64 %wide.trip.count.i, 1
  %lcmp.mod291.not = icmp eq i64 %xtraiter290, 0
  %i.as = add nsw i64 %wide.trip.count.i, -1
  %i.at = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %min.iters.check = icmp ult i32 %i.u, 9
  %i.au = trunc i64 %i.x to i32                   ; 5 uses
  %i.av = icmp ugt i64 %i.x, 4294967295
  %invariant.gep = getelementptr i8, ptr %i.b, i64 %i.y
  %invariant.gep293 = getelementptr i8, ptr %i.b, i64 %i.y
  %invariant.gep295 = getelementptr i8, ptr %i.b, i64 %i.y
  %invariant.gep297 = getelementptr i8, ptr %i.b, i64 %i.y
  %n.vec = and i64 %i.at, -2                      ; 2 uses
  %i.aw = or i64 %i.at, 1
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %indvars.iv97 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next98, %bb.d ] ; 10 uses
  %i.ax = mul i64 %i.ak, %indvars.iv97
  %i.ay = mul i64 %i.aj, %indvars.iv97            ; 5 uses
  %i.az = add i64 %i.ai, %i.ay                    ; 2 uses
  %scevgep238 = getelementptr i8, ptr %i.a, i64 %i.az
  %scevgep239 = getelementptr i8, ptr %i.a, i64 %i.ay
  %scevgep240 = getelementptr i8, ptr %i.b, i64 %i.az
  %scevgep241 = getelementptr i8, ptr %i.b, i64 %i.ay
  %scevgep242 = getelementptr i8, ptr %i.an, i64 %i.ay ; 2 uses
  %i.ba = getelementptr i8, ptr %4, i64 %i.ay
  %scevgep243 = getelementptr i8, ptr %i.ba, i64 808 ; 2 uses
  %i.bb = mul i64 %i.ab, %indvars.iv97            ; 2 uses
  %i.bc = add i64 %i.aa, %i.bb
  %i.bd = trunc i64 %indvars.iv97 to i32
  %i.be = mul i32 %i.k, %i.bd                     ; 2 uses
  %i.bf = trunc i64 %indvars.iv97 to i32
  %i.bg = mul i32 %i.k, %i.bf                     ; 2 uses
  %i.bh = trunc nuw nsw i64 %indvars.iv97 to i32
  %i.bi = uitofp nneg i32 %i.bh to double
  %i.bj = fmul double %i.o, %i.bi
  %i.bk = mul nsw i64 %indvars.iv97, %i.w
  %i.bl = icmp eq i64 %indvars.iv97, 19
  %i.bm = select i1 %i.bl, i32 %i.p, i32 %i.k     ; 4 uses
  %i.bn = icmp eq i64 %indvars.iv97, 0
  %i.bo = select i1 %i.bn, i32 %i.k, i32 %i.p     ; 4 uses
  %i.bp = add i32 %i.bo, %i.bg
  %i.bq = add i32 %i.bm, %i.bg
  %i.br = add i32 %i.bo, %i.be
  %i.bs = add i32 %i.bm, %i.be
  %i.bt = insertelement <2 x ptr> poison, ptr %scevgep243, i64 0
  %i.bu = insertelement <2 x ptr> %i.bt, ptr %scevgep239, i64 1
  %i.bv = insertelement <2 x ptr> poison, ptr %scevgep240, i64 0
  %i.bw = insertelement <2 x ptr> %i.bv, ptr %scevgep242, i64 1
  %i.bx = insertelement <2 x ptr> poison, ptr %scevgep241, i64 0
  %i.by = insertelement <2 x ptr> %i.bx, ptr %scevgep243, i64 1
  %i.bz = insertelement <2 x ptr> poison, ptr %scevgep242, i64 0
  %i.ca = insertelement <2 x ptr> %i.bz, ptr %scevgep238, i64 1
  %i.cb = getelementptr i8, ptr %i.ap, i64 %i.bb
  %invariant.op = add i64 215, %i.ax
  %i.cc = icmp ult <2 x ptr> %i.bu, %i.bw
  %i.cd = icmp ult <2 x ptr> %i.by, %i.ca
  %i.ce = and <2 x i1> %i.cd, %i.cc
  %i.cf = bitcast <2 x i1> %i.ce to i2
  %.not = icmp eq i2 %i.cf, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %indvars.iv93 = phi i64 [ 0, %bb.b ], [ %indvars.iv.next94, %._crit_edge ] ; 9 uses
  %i.cg = mul i64 %i.ac, %indvars.iv93            ; 2 uses
  %i.ch = add i64 %i.bc, %i.cg                    ; 2 uses
  %scevgep192 = getelementptr i8, ptr %i.b, i64 %i.ch
  %scevgep193 = getelementptr i8, ptr %i.a, i64 %i.ch
  %scevgep195 = getelementptr i8, ptr %i.cb, i64 %i.cg ; 3 uses
  %i.ci = trunc i64 %indvars.iv93 to i32
  %i.cj = mul i64 %indvars.iv93, %wide.trip.count.i ; 2 uses
  %i.ck = trunc i64 %i.cj to i32
  %i.cl = add i32 %i.bp, %i.ck                    ; 2 uses
  %i.cm = trunc i64 %i.cj to i32
  %i.cn = add i32 %i.bq, %i.cm                    ; 2 uses
  %i.co = trunc nuw nsw i64 %indvars.iv93 to i32
  %i.cp = uitofp nneg i32 %i.co to double
  %i.cq = fmul double %i.m, %i.cp
  %i.cr = mul nsw i64 %indvars.iv93, %i.v
  %i.cs = add nsw i64 %i.cr, %i.bk                ; 6 uses
  %i.ct = getelementptr [8 x i8], ptr %i.a, i64 %i.cs ; 7 uses
  %i.cu = getelementptr [8 x i8], ptr %i.b, i64 %i.cs ; 6 uses
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.cs ; 13 uses
  %i.cw = getelementptr [8 x i8], ptr %i.h, i64 %i.cs ; 11 uses
  %i.cx = tail call double @llvm.fmuladd.f64(double %i.cq, double %i.bj, double 1.000000e+00) ; 6 uses
  br i1 %i.s, label %.lr.ph.i.preheader, label %._crit_edge

.lr.ph.i.preheader:                               ; preds = %bb.c
  br i1 %min.iters.check267, label %.lr.ph.i.preheader283, label %vector.memcheck268

vector.memcheck268:                               ; preds = %.lr.ph.i.preheader
  %i.cy = mul i64 %indvars.iv93, %i.af
  %op.rdx281.reass = add i64 %i.cy, %invariant.op
  %diff.check = icmp ult i64 %op.rdx281.reass, 31
  br i1 %diff.check, label %.lr.ph.i.preheader283, label %vector.ph269

vector.ph269:                                     ; preds = %vector.memcheck268
  %broadcast.splatinsert271 = insertelement <2 x double> poison, double %i.cx, i64 0
  %broadcast.splat272 = shufflevector <2 x double> %broadcast.splatinsert271, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body273

vector.body273:                                   ; preds = %vector.body273, %vector.ph269
  %index274 = phi i64 [ 0, %vector.ph269 ], [ %index.next277, %vector.body273 ] ; 3 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %index274 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %wide.load275 = load <2 x double>, ptr %i.cz, align 8, !tbaa !22
  %wide.load276 = load <2 x double>, ptr %i.da, align 8, !tbaa !22
  %i.db = fmul <2 x double> %broadcast.splat272, %wide.load275
  %i.dc = fmul <2 x double> %broadcast.splat272, %wide.load276
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %index274 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store <2 x double> %i.db, ptr %i.dd, align 8, !tbaa !22
  store <2 x double> %i.dc, ptr %i.de, align 8, !tbaa !22
  %index.next277 = add nuw i64 %index274, 4       ; 2 uses
  %i.df = icmp eq i64 %index.next277, %n.vec270
  br i1 %i.df, label %middle.block278, label %vector.body273, !llvm.loop !103

middle.block278:                                  ; preds = %vector.body273
  br i1 %cmp.n279, label %.preheader60.i.preheader, label %.lr.ph.i.preheader283

.lr.ph.i.preheader283:                            ; preds = %vector.memcheck268, %.lr.ph.i.preheader, %middle.block278
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck268 ], [ 0, %.lr.ph.i.preheader ], [ %n.vec270, %middle.block278 ] ; 3 uses
  %i.dg = sub nsw i64 %i.al, %indvars.iv.i.ph
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader283, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader283 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader283 ]
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i.prol
  %i.di = load double, ptr %i.dh, align 8, !tbaa !22
  %i.dj = fmul double %i.cx, %i.di
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv.i.prol
  store double %i.dj, ptr %i.dk, align 8, !tbaa !22
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !104

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader283
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader283 ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.dl = icmp ult i64 %i.dg, 3
  br i1 %i.dl, label %.preheader60.i.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !22
  %i.do = fmul double %i.cx, %i.dn
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv.i
  store double %i.do, ptr %i.dp, align 8, !tbaa !22
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.i
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !22
  %i.ds = fmul double %i.cx, %i.dr
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv.next.i
  store double %i.ds, ptr %i.dt, align 8, !tbaa !22
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.i.1
  %i.dv = load double, ptr %i.du, align 8, !tbaa !22
  %i.dw = fmul double %i.cx, %i.dv
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv.next.i.1
  store double %i.dw, ptr %i.dx, align 8, !tbaa !22
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.i.2
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !22
  %i.ea = fmul double %i.cx, %i.dz
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv.next.i.2
  store double %i.ea, ptr %i.eb, align 8, !tbaa !22
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %.preheader60.i.preheader, label %.lr.ph.i, !llvm.loop !105

.preheader60.i.preheader:                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block278
  br label %.preheader60.i

.preheader60.i:                                   ; preds = %.preheader60.i.preheader, %._crit_edge.i
  %indvars.iv79.i = phi i64 [ %indvars.iv.next80.i, %._crit_edge.i ], [ 0, %.preheader60.i.preheader ] ; 3 uses
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv79.i ; 3 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv79.i ; 3 uses
  br i1 %i.aq, label %.epil.preheader, label %.preheader60.i.new

.preheader60.i.new:                               ; preds = %.preheader60.i, %.preheader60.i.new
  %indvars.iv74.i = phi i64 [ %indvars.iv.next75.i.1, %.preheader60.i.new ], [ 0, %.preheader60.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader60.i.new ], [ 0, %.preheader60.i ]
  %gep.i = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i, i64 %indvars.iv74.i
  %i.ed = load double, ptr %gep.i, align 8, !tbaa !22
  %i.ee = load double, ptr %i.ec, align 8, !tbaa !22
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv74.i ; 2 uses
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !22
  %i.eh = tail call double @llvm.fmuladd.f64(double %i.ed, double %i.ee, double %i.eg)
  store double %i.eh, ptr %i.ef, align 8, !tbaa !22
  %indvars.iv.next75.i = or disjoint i64 %indvars.iv74.i, 1 ; 2 uses
  %gep.i.1 = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next75.i
  %i.ei = load double, ptr %gep.i.1, align 8, !tbaa !22
  %i.ej = load double, ptr %i.ec, align 8, !tbaa !22
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv.next75.i ; 2 uses
  %i.el = load double, ptr %i.ek, align 8, !tbaa !22
  %i.em = tail call double @llvm.fmuladd.f64(double %i.ei, double %i.ej, double %i.el)
  store double %i.em, ptr %i.ek, align 8, !tbaa !22
  %indvars.iv.next75.i.1 = add nuw nsw i64 %indvars.iv74.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.preheader60.i.new

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader60.i.new
  br i1 %lcmp.mod285.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader60.i
  %indvars.iv74.i.epil.init = phi i64 [ 0, %.preheader60.i ], [ %indvars.iv.next75.i.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod286)
end_hunk_1
begin_hunk_2_@fB:bb.a
  store <2 x double> %i.ex, ptr %i.et, align 8, !tbaa !22, !alias.scope !131, !noalias !132
  %index.next261 = add nuw i64 %index257, 2       ; 2 uses
  %i.ey = icmp eq i64 %index.next261, %n.vec255
  br i1 %i.ey, label %middle.block262, label %vector.body256, !llvm.loop !110

middle.block262:                                  ; preds = %vector.body256
  br i1 %cmp.n263, label %.preheader.i.preheader, label %.lr.ph67.i.preheader282

.lr.ph67.i.preheader282:                          ; preds = %.lr.ph67.i.preheader, %middle.block262
  %indvars.iv84.i.ph = phi i64 [ %n.vec255, %middle.block262 ], [ 0, %.lr.ph67.i.preheader ] ; 7 uses
  br i1 %lcmp.mod288.not, label %.lr.ph67.i.prol.loopexit, label %.lr.ph67.i.prol

.lr.ph67.i.prol:                                  ; preds = %.lr.ph67.i.preheader282
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv84.i.ph
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !22
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv84.i.ph ; 2 uses
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !22 ; 2 uses
  %i.fd = fmul double %i.fa, %i.fc
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv84.i.ph
  store double %i.fd, ptr %i.fe, align 8, !tbaa !22
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv84.i.ph
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !22
  %i.fh = fmul double %i.fc, %i.fg
  store double %i.fh, ptr %i.fb, align 8, !tbaa !22
  %indvars.iv.next85.i.prol = or disjoint i64 %indvars.iv84.i.ph, 1
  br label %.lr.ph67.i.prol.loopexit

.lr.ph67.i.prol.loopexit:                         ; preds = %.lr.ph67.i.prol, %.lr.ph67.i.preheader282
  %indvars.iv84.i.unr = phi i64 [ %indvars.iv84.i.ph, %.lr.ph67.i.preheader282 ], [ %indvars.iv.next85.i.prol, %.lr.ph67.i.prol ]
  %i.fi = icmp eq i64 %indvars.iv84.i.ph, %i.ar
  br i1 %i.fi, label %.preheader.i.preheader, label %.lr.ph67.i

.lr.ph67.i:                                       ; preds = %.lr.ph67.i.prol.loopexit, %.lr.ph67.i
  %indvars.iv84.i = phi i64 [ %indvars.iv.next85.i.1, %.lr.ph67.i ], [ %indvars.iv84.i.unr, %.lr.ph67.i.prol.loopexit ] ; 6 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv84.i
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !22
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv84.i ; 2 uses
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !22 ; 2 uses
  %i.fn = fmul double %i.fk, %i.fm
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv84.i
  store double %i.fn, ptr %i.fo, align 8, !tbaa !22
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv84.i
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !22
  %i.fr = fmul double %i.fm, %i.fq
  store double %i.fr, ptr %i.fl, align 8, !tbaa !22
  %indvars.iv.next85.i = add nuw nsw i64 %indvars.iv84.i, 1 ; 4 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv.next85.i
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !22
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv.next85.i ; 2 uses
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !22 ; 2 uses
  %i.fw = fmul double %i.ft, %i.fv
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv.next85.i
  store double %i.fw, ptr %i.fx, align 8, !tbaa !22
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv.next85.i
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !22
  %i.ga = fmul double %i.fv, %i.fz
  store double %i.ga, ptr %i.fu, align 8, !tbaa !22
  %indvars.iv.next85.i.1 = add nuw nsw i64 %indvars.iv84.i, 2 ; 2 uses
  %exitcond88.not.i.1 = icmp eq i64 %indvars.iv.next85.i.1, %wide.trip.count.i
  br i1 %exitcond88.not.i.1, label %.preheader.i.preheader, label %.lr.ph67.i, !llvm.loop !111

.preheader.i.preheader:                           ; preds = %.lr.ph67.i.prol.loopexit, %.lr.ph67.i, %middle.block262
  %bound0199 = icmp ult ptr %i.cw, %scevgep194
  %bound1200 = icmp ult ptr %i.q, %scevgep195
  %found.conflict201 = and i1 %bound0199, %bound1200
  %bound0202 = icmp ult ptr %i.cw, %scevgep193
  %bound1203 = icmp ult ptr %i.ct, %scevgep195
  %found.conflict204 = and i1 %bound0202, %bound1203
  %conflict.rdx205 = or i1 %found.conflict201, %found.conflict204
  %bound0206 = icmp ult ptr %i.cw, %scevgep192
  %bound1207 = icmp ult ptr %i.cu, %scevgep195
  %found.conflict208 = and i1 %bound0206, %bound1207
  %conflict.rdx209 = or i1 %conflict.rdx205, %found.conflict208
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge70.i
  %indvars.iv94.i = phi i64 [ %indvars.iv.next95.i, %._crit_edge70.i ], [ 0, %.preheader.i.preheader ] ; 4 uses
  %i.gb = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %indvars.iv94.i ; 4 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv94.i ; 4 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv94.i ; 4 uses
  %brmerge299 = select i1 %min.iters.check197, i1 true, i1 %conflict.rdx209
  br i1 %brmerge299, label %scalar.ph196.preheader, label %vector.ph210

vector.ph210:                                     ; preds = %.preheader.i
  %i.ge = load double, ptr %i.gc, align 8, !tbaa !22, !alias.scope !134
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ge, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gf = load double, ptr %i.gd, align 8, !tbaa !22, !alias.scope !135
  %broadcast.splatinsert218 = insertelement <2 x double> poison, double %i.gf, i64 0
  %broadcast.splat219 = shufflevector <2 x double> %broadcast.splatinsert218, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body212

vector.body212:                                   ; preds = %vector.body212, %vector.ph210
  %index213 = phi i64 [ 0, %vector.ph210 ], [ %index.next220, %vector.body212 ] ; 3 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %index213 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %wide.load214 = load <2 x double>, ptr %i.gg, align 8, !tbaa !22, !alias.scope !136
  %wide.load215 = load <2 x double>, ptr %i.gh, align 8, !tbaa !22, !alias.scope !136
  %i.gi = fmul <2 x double> %wide.load214, %broadcast.splat
  %i.gj = fmul <2 x double> %wide.load215, %broadcast.splat
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %index213 ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16 ; 2 uses
  %wide.load216 = load <2 x double>, ptr %i.gk, align 8, !tbaa !22, !alias.scope !137, !noalias !138
  %wide.load217 = load <2 x double>, ptr %i.gl, align 8, !tbaa !22, !alias.scope !137, !noalias !138
  %i.gm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gi, <2 x double> %broadcast.splat219, <2 x double> %wide.load216)
  %i.gn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gj, <2 x double> %broadcast.splat219, <2 x double> %wide.load217)
  store <2 x double> %i.gm, ptr %i.gk, align 8, !tbaa !22, !alias.scope !137, !noalias !138
  store <2 x double> %i.gn, ptr %i.gl, align 8, !tbaa !22, !alias.scope !137, !noalias !138
  %index.next220 = add nuw i64 %index213, 4       ; 2 uses
  %i.go = icmp eq i64 %index.next220, %n.vec211
  br i1 %i.go, label %middle.block221, label %vector.body212, !llvm.loop !117

middle.block221:                                  ; preds = %vector.body212
  br i1 %cmp.n222, label %._crit_edge70.i, label %scalar.ph196.preheader

scalar.ph196.preheader:                           ; preds = %.preheader.i, %middle.block221
  %indvars.iv89.i.ph = phi i64 [ %n.vec211, %middle.block221 ], [ 0, %.preheader.i ] ; 5 uses
  br i1 %lcmp.mod291.not, label %scalar.ph196.prol.loopexit, label %scalar.ph196.prol

scalar.ph196.prol:                                ; preds = %scalar.ph196.preheader
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %indvars.iv89.i.ph
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !22
  %i.gr = load double, ptr %i.gc, align 8, !tbaa !22
  %i.gs = fmul double %i.gq, %i.gr
  %i.gt = load double, ptr %i.gd, align 8, !tbaa !22
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv89.i.ph ; 2 uses
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !22
  %i.gw = tail call double @llvm.fmuladd.f64(double %i.gs, double %i.gt, double %i.gv)
  store double %i.gw, ptr %i.gu, align 8, !tbaa !22
  %indvars.iv.next90.i.prol = or disjoint i64 %indvars.iv89.i.ph, 1
  br label %scalar.ph196.prol.loopexit

scalar.ph196.prol.loopexit:                       ; preds = %scalar.ph196.prol, %scalar.ph196.preheader
  %indvars.iv89.i.unr = phi i64 [ %indvars.iv89.i.ph, %scalar.ph196.preheader ], [ %indvars.iv.next90.i.prol, %scalar.ph196.prol ]
  %i.gx = icmp eq i64 %indvars.iv89.i.ph, %i.as
  br i1 %i.gx, label %._crit_edge70.i, label %scalar.ph196

scalar.ph196:                                     ; preds = %scalar.ph196.prol.loopexit, %scalar.ph196
  %indvars.iv89.i = phi i64 [ %indvars.iv.next90.i.1, %scalar.ph196 ], [ %indvars.iv89.i.unr, %scalar.ph196.prol.loopexit ] ; 4 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %indvars.iv89.i
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !22
  %i.ha = load double, ptr %i.gc, align 8, !tbaa !22
  %i.hb = fmul double %i.gz, %i.ha
  %i.hc = load double, ptr %i.gd, align 8, !tbaa !22
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv89.i ; 2 uses
  %i.he = load double, ptr %i.hd, align 8, !tbaa !22
  %i.hf = tail call double @llvm.fmuladd.f64(double %i.hb, double %i.hc, double %i.he)
  store double %i.hf, ptr %i.hd, align 8, !tbaa !22
  %indvars.iv.next90.i = add nuw nsw i64 %indvars.iv89.i, 1 ; 2 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %indvars.iv.next90.i
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !22
  %i.hi = load double, ptr %i.gc, align 8, !tbaa !22
  %i.hj = fmul double %i.hh, %i.hi
  %i.hk = load double, ptr %i.gd, align 8, !tbaa !22
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv.next90.i ; 2 uses
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !22
  %i.hn = tail call double @llvm.fmuladd.f64(double %i.hj, double %i.hk, double %i.hm)
  store double %i.hn, ptr %i.hl, align 8, !tbaa !22
  %indvars.iv.next90.i.1 = add nuw nsw i64 %indvars.iv89.i, 2 ; 2 uses
  %exitcond93.not.i.1 = icmp eq i64 %indvars.iv.next90.i.1, %wide.trip.count.i
  br i1 %exitcond93.not.i.1, label %._crit_edge70.i, label %scalar.ph196, !llvm.loop !118

._crit_edge70.i:                                  ; preds = %scalar.ph196.prol.loopexit, %scalar.ph196, %middle.block221
  %indvars.iv.next95.i = add nuw nsw i64 %indvars.iv94.i, 1 ; 2 uses
  %exitcond98.not.i = icmp eq i64 %indvars.iv.next95.i, %wide.trip.count.i
  br i1 %exitcond98.not.i, label %WebRatesB.exit, label %.preheader.i

WebRatesB.exit:                                   ; preds = %._crit_edge70.i
  %i.ho = icmp eq i64 %indvars.iv93, 19
  %i.hp = select i1 %i.ho, i32 %i.t, i32 %i.f     ; 4 uses
  %i.hq = icmp eq i64 %indvars.iv93, 0
  %i.hr = select i1 %i.hq, i32 %i.f, i32 %i.t     ; 4 uses
  br i1 %.not88, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %WebRatesB.exit
  %i.hs = trunc nsw i64 %i.cs to i32              ; 7 uses
  %i.ht = add i32 %i.hs, -1                       ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.hu = add i32 %i.hs, %i.au
  %i.hv = icmp slt i32 %i.hu, %i.hs
  %i.hw = add i32 %i.cl, %i.au
  %i.hx = icmp slt i32 %i.hw, %i.cl
  %i.hy = or i1 %i.hx, %i.av
  %i.hz = add i32 %i.cn, %i.au
  %i.ia = icmp slt i32 %i.hz, %i.cn
  %i.ib = add i32 %i.hr, %i.hs                    ; 2 uses
  %i.ic = add i32 %i.ib, %i.au
  %i.id = icmp slt i32 %i.ic, %i.ib
  %i.ie = add i32 %i.hp, %i.hs                    ; 2 uses
  %i.if = add i32 %i.ie, %i.au
  %i.ig = icmp slt i32 %i.if, %i.ie
  %i.ih = or i1 %i.hv, %i.hy
  %i.ii = or i1 %i.ia, %i.ih
  %i.ij = or i1 %i.id, %i.ii
  %i.ik = or i1 %i.ig, %i.ij
  br i1 %i.ik, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.il = shl nsw i64 %i.cs, 3                    ; 4 uses
  %5 = getelementptr i8, ptr %4, i64 %i.il
  %i.im = getelementptr i8, ptr %5, i64 20008
  %6 = add i64 %i.il, %i.y                        ; 2 uses
  %i.in = getelementptr i8, ptr %4, i64 %6
  %i.io = getelementptr i8, ptr %i.in, i64 20000
  %i.ip = getelementptr i8, ptr %i.c, i64 %i.il   ; 7 uses
  %i.iq = add i64 %6, -8                          ; 2 uses
  %i.ir = getelementptr i8, ptr %i.c, i64 %i.iq   ; 7 uses
  %i.is = add i32 %i.hp, %i.hs
  %i.it = sext i32 %i.is to i64
  %i.iu = shl nsw i64 %i.it, 3                    ; 2 uses
  %7 = getelementptr i8, ptr %i.b, i64 %i.iu
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.iu
  %i.iv = getelementptr i8, ptr %gep, i64 -8
  %i.iw = add i32 %i.hr, %i.hs
  %i.ix = sext i32 %i.iw to i64
  %i.iy = shl nsw i64 %i.ix, 3                    ; 2 uses
  %8 = getelementptr i8, ptr %i.b, i64 %i.iy
  %gep294 = getelementptr i8, ptr %invariant.gep293, i64 %i.iy
  %i.iz = getelementptr i8, ptr %gep294, i64 -8
  %i.ja = mul i32 %i.f, %i.ci                     ; 2 uses
  %i.jb = add i32 %i.bs, %i.ja
  %i.jc = sext i32 %i.jb to i64
  %i.jd = shl nsw i64 %i.jc, 3                    ; 2 uses
  %9 = getelementptr i8, ptr %i.b, i64 %i.jd
  %gep296 = getelementptr i8, ptr %invariant.gep295, i64 %i.jd
  %i.je = getelementptr i8, ptr %gep296, i64 -8
  %i.jf = add i32 %i.br, %i.ja
  %i.jg = sext i32 %i.jf to i64
  %i.jh = shl nsw i64 %i.jg, 3                    ; 2 uses
  %10 = getelementptr i8, ptr %i.b, i64 %i.jh
  %gep298 = getelementptr i8, ptr %invariant.gep297, i64 %i.jh
  %i.ji = getelementptr i8, ptr %gep298, i64 -8
  %i.jj = getelementptr i8, ptr %i.b, i64 %i.il
  %i.jk = getelementptr i8, ptr %i.b, i64 %i.iq
  %bound0 = icmp ult ptr %i.im, %i.ir
  %bound1 = icmp ult ptr %i.ip, %i.io
  %found.conflict = and i1 %bound0, %bound1
  %bound0146 = icmp ult ptr %i.i, %i.ir
  %bound1147 = icmp ult ptr %i.ip, %scevgep
  %found.conflict148 = and i1 %bound0146, %bound1147
  %conflict.rdx = or i1 %found.conflict, %found.conflict148
  %bound0149 = icmp ult ptr %i.ip, %i.iv
  %bound1150 = icmp ult ptr %7, %i.ir
  %found.conflict151 = and i1 %bound0149, %bound1150
  %conflict.rdx152 = or i1 %conflict.rdx, %found.conflict151
  %bound0153 = icmp ult ptr %i.ip, %i.iz
  %bound1154 = icmp ult ptr %8, %i.ir
  %found.conflict155 = and i1 %bound0153, %bound1154
  %conflict.rdx156 = or i1 %conflict.rdx152, %found.conflict155
  %bound0157 = icmp ult ptr %i.ip, %i.je
  %bound1158 = icmp ult ptr %9, %i.ir
  %found.conflict159 = and i1 %bound0157, %bound1158
  %conflict.rdx160 = or i1 %conflict.rdx156, %found.conflict159
  %bound0161 = icmp ult ptr %i.ip, %i.ji
  %bound1162 = icmp ult ptr %10, %i.ir
  %found.conflict163 = and i1 %bound0161, %bound1162
  %conflict.rdx164 = or i1 %conflict.rdx160, %found.conflict163
  %bound0165 = icmp ult ptr %i.ip, %i.jk
  %bound1166 = icmp ult ptr %i.jj, %i.ir
  %found.conflict167 = and i1 %bound0165, %bound1166
  %conflict.rdx168 = or i1 %conflict.rdx164, %found.conflict167
  br i1 %conflict.rdx168, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 4 uses
  %i.jl = trunc i64 %index to i32
  %i.jm = or disjoint i32 %i.jl, 1
  %i.jn = add i32 %i.ht, %i.jm                    ; 5 uses
  %i.jo = sext i32 %i.jn to i64                   ; 3 uses
  %i.jp = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.jo
  %wide.load = load <2 x double>, ptr %i.jp, align 8, !tbaa !22, !alias.scope !139 ; 4 uses
  %i.jq = add i32 %i.jn, %i.bo
  %i.jr = sext i32 %i.jq to i64
  %i.js = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.jr
  %wide.load169 = load <2 x double>, ptr %i.js, align 8, !tbaa !22, !alias.scope !140
  %i.jt = fsub <2 x double> %wide.load, %wide.load169
  %i.ju = add nsw i32 %i.jn, %i.bm
  %i.jv = sext i32 %i.ju to i64
  %i.jw = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.jv
  %wide.load170 = load <2 x double>, ptr %i.jw, align 8, !tbaa !22, !alias.scope !141
  %i.jx = fsub <2 x double> %wide.load170, %wide.load
  %i.jy = add i32 %i.jn, %i.hr
  %i.jz = sext i32 %i.jy to i64
  %i.ka = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.jz
  %wide.load171 = load <2 x double>, ptr %i.ka, align 8, !tbaa !22, !alias.scope !142
  %i.kb = fsub <2 x double> %wide.load, %wide.load171
  %i.kc = add nsw i32 %i.jn, %i.hp
  %i.kd = sext i32 %i.kc to i64
  %i.ke = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.kd
  %wide.load172 = load <2 x double>, ptr %i.ke, align 8, !tbaa !22, !alias.scope !143
  %i.kf = fsub <2 x double> %wide.load172, %wide.load
  %i.kg = getelementptr inbounds [8 x i8], ptr %i.j, i64 %index
  %wide.load173 = load <2 x double>, ptr %i.kg, align 8, !tbaa !22, !alias.scope !144, !noalias !145
  %i.kh = fneg <2 x double> %wide.load173
  %i.ki = fsub <2 x double> %i.jx, %i.jt
  %i.kj = getelementptr inbounds [8 x i8], ptr %i.i, i64 %index
  %wide.load174 = load <2 x double>, ptr %i.kj, align 8, !tbaa !22, !alias.scope !144, !noalias !145
  %i.kk = fsub <2 x double> %i.kf, %i.kb
  %i.kl = fneg <2 x double> %i.kk
  %i.km = fmul <2 x double> %wide.load174, %i.kl
  %i.kn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kh, <2 x double> %i.ki, <2 x double> %i.km)
  %i.ko = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.jo
  %wide.load175 = load <2 x double>, ptr %i.ko, align 8, !tbaa !22, !alias.scope !146, !noalias !145
  %i.kp = fsub <2 x double> %i.kn, %wide.load175
  %i.kq = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.jo
  store <2 x double> %i.kp, ptr %i.kq, align 8, !tbaa !22, !alias.scope !145, !noalias !147
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.kr = icmp eq i64 %index.next, %n.vec
  br i1 %i.kr, label %middle.block, label %vector.body, !llvm.loop !128

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %vector.scevcheck ], [ 1, %.lr.ph ], [ %i.aw, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ks = trunc nuw nsw i64 %indvars.iv to i32
  %i.kt = add i32 %i.ht, %i.ks                    ; 5 uses
  %i.ku = sext i32 %i.kt to i64                   ; 3 uses
  %i.kv = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ku
  %i.kw = load double, ptr %i.kv, align 8, !tbaa !22 ; 4 uses
  %i.kx = add i32 %i.kt, %i.bo
  %i.ky = sext i32 %i.kx to i64
  %i.kz = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ky
  %i.la = load double, ptr %i.kz, align 8, !tbaa !22
  %i.lb = fsub double %i.kw, %i.la
  %i.lc = add nsw i32 %i.kt, %i.bm
  %i.ld = sext i32 %i.lc to i64
  %i.le = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ld
  %i.lf = load double, ptr %i.le, align 8, !tbaa !22
  %i.lg = fsub double %i.lf, %i.kw
  %i.lh = add i32 %i.kt, %i.hr
  %i.li = sext i32 %i.lh to i64
  %i.lj = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.li
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !22
  %i.ll = fsub double %i.kw, %i.lk
  %i.lm = add nsw i32 %i.kt, %i.hp
  %i.ln = sext i32 %i.lm to i64
  %i.lo = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ln
  %i.lp = load double, ptr %i.lo, align 8, !tbaa !22
  %i.lq = fsub double %i.lp, %i.kw
  %i.lr = add nsw i64 %indvars.iv, -1             ; 2 uses
  %i.ls = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.lr
  %i.lt = load double, ptr %i.ls, align 8, !tbaa !22
  %i.lu = fneg double %i.lt
  %i.lv = fsub double %i.lg, %i.lb
  %i.lw = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.lr
  %i.lx = load double, ptr %i.lw, align 8, !tbaa !22
  %i.ly = fsub double %i.lq, %i.ll
  %i.lz = fneg double %i.ly
  %i.ma = fmul double %i.lx, %i.lz
  %i.mb = tail call double @llvm.fmuladd.f64(double %i.lu, double %i.lv, double %i.ma)
  %i.mc = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ku
  %i.md = load double, ptr %i.mc, align 8, !tbaa !22
  %i.me = fsub double %i.mb, %i.md
  %i.mf = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ku
  store double %i.me, ptr %i.mf, align 8, !tbaa !22
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
end_hunk_2
