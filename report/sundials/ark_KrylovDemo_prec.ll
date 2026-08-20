inline.NumInlined: 74
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 35
begin_hunk_0_@main:bb.a

check_flag.exit38.i:                              ; preds = %bb.aq, %check_flag.exit36.i
  %i.ph = call i32 @ARKodeGetNumLinConvFails(ptr noundef %.pre, ptr noundef nonnull %i.o) #11 ; 2 uses
  %i.pi = icmp slt i32 %i.ph, 0
  br i1 %i.pi, label %bb.ar, label %check_flag.exit40.i

bb.ar:                                            ; preds = %check_flag.exit38.i
  %i.pj = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.pk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.pj, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.60, i32 noundef %i.ph) #12 ; 0 uses
  br label %check_flag.exit40.i

check_flag.exit40.i:                              ; preds = %bb.ar, %check_flag.exit38.i
  %i.pl = call i32 @ARKodeGetNumLinRhsEvals(ptr noundef %.pre, ptr noundef nonnull %i.p) #11 ; 2 uses
  %i.pm = icmp slt i32 %i.pl, 0
  br i1 %i.pm, label %bb.as, label %PrintFinalStats.exit

bb.as:                                            ; preds = %check_flag.exit40.i
  %i.pn = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.po = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.pn, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.61, i32 noundef %i.pl) #12 ; 0 uses
  br label %PrintFinalStats.exit

PrintFinalStats.exit:                             ; preds = %check_flag.exit40.i, %bb.as
  %puts.i118 = call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  %i.pp = load i64, ptr %i.a, align 8, !tbaa !49
  %i.pq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.63, i64 noundef %i.pp) ; 0 uses
  %i.pr = load i64, ptr %i.b, align 8, !tbaa !49
  %i.ps = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.64, i64 noundef %i.pr) ; 0 uses
  %i.pt = load i64, ptr %i.c, align 8, !tbaa !49
  %i.pu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.65, i64 noundef %i.pt) ; 0 uses
  %i.pv = load i64, ptr %i.d, align 8, !tbaa !49
  %i.pw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.66, i64 noundef %i.pv) ; 0 uses
  %i.px = load i64, ptr %i.e, align 8, !tbaa !49
  %i.py = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.67, i64 noundef %i.px) ; 0 uses
  %i.pz = load i64, ptr %i.f, align 8, !tbaa !49
  %i.qa = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.68, i64 noundef %i.pz) ; 0 uses
  %i.qb = load i64, ptr %i.g, align 8, !tbaa !49
  %i.qc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.69, i64 noundef %i.qb) ; 0 uses
  %i.qd = load i64, ptr %i.p, align 8, !tbaa !49
  %i.qe = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.70, i64 noundef %i.qd) ; 0 uses
  %i.qf = load i64, ptr %i.f, align 8, !tbaa !49
  %i.qg = load i64, ptr %i.p, align 8, !tbaa !49
  %i.qh = add nsw i64 %i.qg, %i.qf
  %i.qi = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.71, i64 noundef %i.qh) ; 0 uses
  %i.qj = load i64, ptr %i.h, align 8, !tbaa !49
  %i.qk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.72, i64 noundef %i.qj) ; 0 uses
  %i.ql = load i64, ptr %i.i, align 8, !tbaa !49
  %i.qm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.73, i64 noundef %i.ql) ; 0 uses
  %i.qn = load i64, ptr %i.l, align 8, !tbaa !49
  %i.qo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.74, i64 noundef %i.qn) ; 0 uses
  %i.qp = load i64, ptr %i.m, align 8, !tbaa !49
  %i.qq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.75, i64 noundef %i.qp) ; 0 uses
  %i.qr = load i64, ptr %i.n, align 8, !tbaa !49
  %i.qs = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, i64 noundef %i.qr) ; 0 uses
  %i.qt = load i64, ptr %i.k, align 8, !tbaa !49
  %i.qu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i64 noundef %i.qt) ; 0 uses
  %i.qv = load i64, ptr %i.j, align 8, !tbaa !49
  %i.qw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.78, i64 noundef %i.qv) ; 0 uses
  %i.qx = load i64, ptr %i.o, align 8, !tbaa !49
  %i.qy = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.79, i64 noundef %i.qx) ; 0 uses
  %i.qz = load i64, ptr %i.i, align 8, !tbaa !49  ; 2 uses
  %i.ra = icmp sgt i64 %i.qz, 0
  %i.rb = load i64, ptr %i.l, align 8
  %i.rc = sitofp i64 %i.rb to double
  %i.rd = uitofp nneg i64 %i.qz to double
  %i.re = fdiv double %i.rc, %i.rd
  %i.rf = select i1 %i.ra, double %i.re, double 0.000000e+00
  %i.rg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, double noundef %i.rf) ; 0 uses
  %i.rh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34) ; 0 uses
  %puts15.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.7) ; 0 uses
  %i.ri = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.81) ; 0 uses
  %puts16.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.7) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br i1 %exitcond314.not, label %bb.at, label %bb.f

bb.at:                                            ; preds = %PrintFinalStats.exit
  br i1 %exitcond315.not, label %bb.au, label %.preheader

bb.au:                                            ; preds = %bb.at
  call void @ARKodeFree(ptr noundef nonnull %i.w) #11
  call void @N_VDestroy(ptr noundef nonnull %i.ai) #11
  %i.rj = call i32 @SUNLinSolFree(ptr noundef %.2165) #11 ; 0 uses
  call fastcc void @FreeUserData(ptr noundef %i.an)
  %i.rk = call i32 @SUNContext_Free(ptr noundef nonnull %i.x) #11 ; 0 uses
  br label %bb.av

bb.av:                                            ; preds = %check_flag.exit114, %check_flag.exit112, %check_flag.exit110, %check_flag.exit108, %check_flag.exit106, %check_flag.exit104, %check_flag.exit102, %check_flag.exit100, %check_flag.exit98, %check_flag.exit96, %check_flag.exit94, %check_flag.exit92, %check_flag.exit90, %check_flag.exit88, %check_flag.exit84, %check_flag.exit, %bb.au
  %.062 = phi i32 [ 0, %bb.au ], [ 1, %check_flag.exit ], [ 1, %check_flag.exit84 ], [ 1, %check_flag.exit114 ], [ 1, %check_flag.exit88 ], [ 1, %check_flag.exit90 ], [ 1, %check_flag.exit92 ], [ 1, %check_flag.exit94 ], [ 1, %check_flag.exit96 ], [ 1, %check_flag.exit98 ], [ 1, %check_flag.exit100 ], [ 1, %check_flag.exit102 ], [ 1, %check_flag.exit104 ], [ 1, %check_flag.exit106 ], [ 1, %check_flag.exit108 ], [ 1, %check_flag.exit110 ], [ 1, %check_flag.exit112 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #11
  ret i32 %.062
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @SUNContext_Create(i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @N_VNew_Serial(i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ARKStepCreate(ptr noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @f(double %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3) #0 {
bb.a:
  %i.a = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #11 ; 23 uses
  %i.b = tail call ptr @N_VGetArrayPointer(ptr noundef %2) #11 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.e = load i32, ptr %i.d, align 8, !tbaa !30   ; 13 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 696 ; 3 uses
  %i.g = getelementptr i8, ptr %3, i64 576        ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 624 ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !33   ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 672
  %i.k = load double, ptr %i.j, align 8, !tbaa !32
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 680
  %i.m = load double, ptr %i.l, align 8, !tbaa !31
  %i.n = sub i32 0, %i.i                          ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.p = getelementptr i8, ptr %3, i64 480        ; 5 uses
  %i.q = icmp sgt i32 %i.e, 0
  %i.r = sub i32 0, %i.e                          ; 2 uses
  %.not82 = icmp slt i32 %i.e, 1
  %i.s = zext i32 %i.e to i64                     ; 9 uses
  %i.t = shl nuw nsw i64 %i.s, 3
  br i1 %.not82, label %.split90.us.split, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  %i.u = add nuw i32 %i.e, 1
  %i.v = zext nneg i32 %i.e to i64                ; 5 uses
  %i.w = sext i32 %i.i to i64                     ; 2 uses
  %wide.trip.count = zext i32 %i.u to i64         ; 3 uses
  %i.x = add nsw i64 %wide.trip.count, -2         ; 2 uses
  %i.y = zext i32 %i.i to i64
  %scevgep = getelementptr i8, ptr %3, i64 696
  %i.z = zext i32 %i.i to i64
  %i.aa = shl nuw nsw i64 %wide.trip.count, 3     ; 3 uses
  %i.ab = getelementptr i8, ptr %3, i64 %i.aa
  %scevgep102 = getelementptr i8, ptr %i.ab, i64 688
  %i.ac = add nsw i64 %i.aa, -8                   ; 6 uses
  %scevgep105 = getelementptr i8, ptr %i.b, i64 %i.ac
  %i.ad = getelementptr i8, ptr %3, i64 %i.aa
  %scevgep107 = getelementptr i8, ptr %i.ad, i64 616
  %scevgep109 = getelementptr i8, ptr %i.a, i64 %i.ac
  %scevgep112 = getelementptr i8, ptr %i.a, i64 %i.ac
  %scevgep115 = getelementptr i8, ptr %i.a, i64 %i.ac
  %scevgep118 = getelementptr i8, ptr %i.a, i64 %i.ac
  %scevgep121 = getelementptr i8, ptr %i.a, i64 %i.ac
  %i.ae = shl nsw i64 %i.w, 3
  %i.af = mul nuw nsw i64 %i.s, 48                ; 2 uses
  %i.ag = shl nuw nsw i64 %i.s, 3
  %i.ah = getelementptr i8, ptr %3, i64 %i.ag
  %scevgep158 = getelementptr i8, ptr %i.ah, i64 480
  %i.ai = getelementptr i8, ptr %3, i64 %i.af
  %i.aj = getelementptr i8, ptr %i.ai, i64 696
  %i.ak = getelementptr i8, ptr %i.a, i64 %i.af
  %xtraiter = and i64 %i.v, 1
  %i.al = icmp eq i32 %i.e, 1
  %unroll_iter = and i64 %i.v, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod182 = trunc i32 %i.e to i1
  %min.iters.check167 = icmp ult i32 %i.e, 4
  %n.vec169 = and i64 %i.s, 2147483644            ; 3 uses
  %cmp.n180 = icmp eq i64 %n.vec169, %i.s
  %xtraiter183 = and i64 %i.v, 1
  %lcmp.mod184.not = icmp eq i64 %xtraiter183, 0
  %i.am = add nsw i64 %i.v, -1
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
  %i.ar = mul i64 %i.ae, %indvars.iv96            ; 4 uses
  %i.as = getelementptr i8, ptr %3, i64 %i.ar
  %scevgep154 = getelementptr i8, ptr %i.as, i64 696 ; 2 uses
  %scevgep155 = getelementptr i8, ptr %i.aj, i64 %i.ar ; 2 uses
  %scevgep156 = getelementptr i8, ptr %i.a, i64 %i.ar
  %scevgep157 = getelementptr i8, ptr %i.ak, i64 %i.ar
  %i.at = mul nuw nsw i64 %indvars.iv96, %i.z     ; 2 uses
  %i.au = trunc i64 %i.at to i32                  ; 2 uses
  %i.av = mul nuw nsw i64 %indvars.iv96, %i.y     ; 2 uses
  %i.aw = trunc i64 %i.av to i32                  ; 2 uses
  %i.ax = trunc nuw nsw i64 %indvars.iv96 to i32
  %i.ay = uitofp nneg i32 %i.ax to double
  %i.az = fmul double %i.m, %i.ay
  %i.ba = mul nsw i64 %indvars.iv96, %i.w
  %i.bb = icmp eq i64 %indvars.iv96, 5
  %i.bc = select i1 %i.bb, i32 %i.n, i32 %i.i     ; 4 uses
  %i.bd = icmp eq i64 %indvars.iv96, 0
  %i.be = select i1 %i.bd, i32 %i.i, i32 %i.n     ; 4 uses
  %i.bf = add i32 %i.be, %i.aw
  %i.bg = add i32 %i.bc, %i.aw
  %i.bh = add i32 %i.bc, %i.au
  %i.bi = add i32 %i.be, %i.au
  %bound0159 = icmp ult ptr %scevgep154, %scevgep157
  %bound1160 = icmp ult ptr %scevgep156, %scevgep155
  %found.conflict161 = and i1 %bound0159, %bound1160
  %bound0162 = icmp ult ptr %scevgep154, %scevgep158
  %bound1163 = icmp ult ptr %i.p, %scevgep155
  %found.conflict164 = and i1 %bound0162, %bound1163
  %conflict.rdx165 = or i1 %found.conflict161, %found.conflict164
  br label %bb.b

bb.b:                                             ; preds = %.split, %._crit_edge
  %indvars.iv92 = phi i64 [ 0, %.split ], [ %indvars.iv.next93, %._crit_edge ] ; 7 uses
  %i.bj = mul nuw nsw i64 %indvars.iv92, %i.s     ; 3 uses
  %i.bk = add nuw i64 %i.at, %i.bj                ; 2 uses
  %i.bl = trunc i64 %i.bk to i32
  %sext = shl i64 %i.bk, 32                       ; 2 uses
  %i.bm = ashr exact i64 %sext, 32
  %i.bn = ashr exact i64 %sext, 29                ; 6 uses
  %scevgep101 = getelementptr i8, ptr %scevgep, i64 %i.bn
  %scevgep103 = getelementptr i8, ptr %scevgep102, i64 %i.bn
  %scevgep104 = getelementptr i8, ptr %i.b, i64 %i.bn ; 7 uses
  %scevgep106 = getelementptr i8, ptr %scevgep105, i64 %i.bn ; 7 uses
  %i.bo = trunc i64 %i.bj to i32
  %i.bp = add i32 %i.bh, %i.bo
  %i.bq = sext i32 %i.bp to i64
  %i.br = shl nsw i64 %i.bq, 3                    ; 2 uses
  %scevgep114 = getelementptr i8, ptr %i.a, i64 %i.br
  %scevgep116 = getelementptr i8, ptr %scevgep115, i64 %i.br
  %i.bs = trunc i64 %i.bj to i32
  %i.bt = add i32 %i.bi, %i.bs
  %i.bu = sext i32 %i.bt to i64
  %i.bv = shl nsw i64 %i.bu, 3                    ; 2 uses
  %scevgep117 = getelementptr i8, ptr %i.a, i64 %i.bv
  %scevgep119 = getelementptr i8, ptr %scevgep118, i64 %i.bv
  %scevgep120 = getelementptr i8, ptr %i.a, i64 %i.bn
  %scevgep122 = getelementptr i8, ptr %scevgep121, i64 %i.bn
  %i.bw = mul nuw nsw i64 %indvars.iv92, %i.s     ; 3 uses
  %i.bx = add nuw i64 %i.av, %i.bw
  %i.by = trunc i64 %i.bx to i32                  ; 4 uses
  %i.bz = trunc i64 %i.bw to i32
  %i.ca = add i32 %i.bf, %i.bz                    ; 2 uses
  %i.cb = trunc i64 %i.bw to i32
  %i.cc = add i32 %i.bg, %i.cb                    ; 2 uses
  %i.cd = trunc nuw nsw i64 %indvars.iv92 to i32
  %i.ce = uitofp nneg i32 %i.cd to double
  %i.cf = fmul double %i.k, %i.ce
  %i.cg = mul nuw nsw i64 %indvars.iv92, %i.v
  %i.ch = add nsw i64 %i.cg, %i.ba                ; 3 uses
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ch ; 5 uses
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.ch ; 8 uses
  br i1 %i.q, label %.preheader.preheader.i, label %WebRates.exit

.preheader.preheader.i:                           ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cj, i8 0, i64 %i.t, i1 false), !tbaa !28
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %indvars.iv48.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next49.i, %._crit_edge.i ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv48.i ; 3 uses
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv48.i ; 3 uses
  br i1 %i.al, label %.epil.preheader, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i, %.preheader.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader.i.new ], [ 0, %.preheader.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.i.new ], [ 0, %.preheader.i ]
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !28
  %gep.i = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.cm = load double, ptr %gep.i, align 8, !tbaa !28
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %indvars.iv.i ; 2 uses
  %i.co = load double, ptr %i.cn, align 8, !tbaa !28
  %i.cp = tail call double @llvm.fmuladd.f64(double %i.cl, double %i.cm, double %i.co)
  store double %i.cp, ptr %i.cn, align 8, !tbaa !28
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.cq = load double, ptr %i.ck, align 8, !tbaa !28
  %gep.i.1 = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %i.cr = load double, ptr %gep.i.1, align 8, !tbaa !28
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %indvars.iv.next.i ; 2 uses
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !28
  %i.cu = tail call double @llvm.fmuladd.f64(double %i.cq, double %i.cr, double %i.ct)
  store double %i.cu, ptr %i.cs, align 8, !tbaa !28
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.preheader.i.new

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod182)
  %i.cv = load double, ptr %i.ck, align 8, !tbaa !28
  %gep.i.epil = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.epil.init
  %i.cw = load double, ptr %gep.i.epil, align 8, !tbaa !28
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !28
  %i.cz = tail call double @llvm.fmuladd.f64(double %i.cv, double %i.cw, double %i.cy)
  store double %i.cz, ptr %i.cx, align 8, !tbaa !28
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1 ; 2 uses
  %exitcond52.not.i = icmp eq i64 %indvars.iv.next49.i, %i.s
  br i1 %exitcond52.not.i, label %._crit_edge41.split.i, label %.preheader.i

._crit_edge41.split.i:                            ; preds = %._crit_edge.i
  %i.da = tail call double @llvm.fmuladd.f64(double %i.cf, double %i.az, double 1.000000e+00) ; 4 uses
  %brmerge = select i1 %min.iters.check167, i1 true, i1 %conflict.rdx165
  br i1 %brmerge, label %.lr.ph44.i.preheader, label %vector.ph168

vector.ph168:                                     ; preds = %._crit_edge41.split.i
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.da, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body170

vector.body170:                                   ; preds = %vector.body170, %vector.ph168
  %index171 = phi i64 [ 0, %vector.ph168 ], [ %index.next178, %vector.body170 ] ; 4 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %index171 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %wide.load172 = load <2 x double>, ptr %i.db, align 8, !tbaa !28, !alias.scope !51
  %wide.load173 = load <2 x double>, ptr %i.dc, align 8, !tbaa !28, !alias.scope !51
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %index171 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %wide.load174 = load <2 x double>, ptr %i.dd, align 8, !tbaa !28, !alias.scope !54
  %wide.load175 = load <2 x double>, ptr %i.de, align 8, !tbaa !28, !alias.scope !54
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %index171 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16 ; 2 uses
  %wide.load176 = load <2 x double>, ptr %i.df, align 8, !tbaa !28, !alias.scope !56, !noalias !58
  %wide.load177 = load <2 x double>, ptr %i.dg, align 8, !tbaa !28, !alias.scope !56, !noalias !58
  %i.dh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load174, <2 x double> %broadcast.splat, <2 x double> %wide.load176)
  %i.di = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load175, <2 x double> %broadcast.splat, <2 x double> %wide.load177)
  %i.dj = fmul <2 x double> %wide.load172, %i.dh
  %i.dk = fmul <2 x double> %wide.load173, %i.di
  store <2 x double> %i.dj, ptr %i.df, align 8, !tbaa !28, !alias.scope !56, !noalias !58
  store <2 x double> %i.dk, ptr %i.dg, align 8, !tbaa !28, !alias.scope !56, !noalias !58
  %index.next178 = add nuw i64 %index171, 4       ; 2 uses
  %i.dl = icmp eq i64 %index.next178, %n.vec169
  br i1 %i.dl, label %middle.block179, label %vector.body170, !llvm.loop !59

middle.block179:                                  ; preds = %vector.body170
  br i1 %cmp.n180, label %WebRates.exit, label %.lr.ph44.i.preheader

.lr.ph44.i.preheader:                             ; preds = %._crit_edge41.split.i, %middle.block179
  %indvars.iv53.i.ph = phi i64 [ %n.vec169, %middle.block179 ], [ 0, %._crit_edge41.split.i ] ; 6 uses
  br i1 %lcmp.mod184.not, label %.lr.ph44.i.prol.loopexit, label %.lr.ph44.i.prol

.lr.ph44.i.prol:                                  ; preds = %.lr.ph44.i.preheader
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv53.i.ph
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !28
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv53.i.ph
  %i.dp = load double, ptr %i.do, align 8, !tbaa !28
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %indvars.iv53.i.ph ; 2 uses
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !28
  %i.ds = tail call double @llvm.fmuladd.f64(double %i.dp, double %i.da, double %i.dr)
  %i.dt = fmul double %i.dn, %i.ds
  store double %i.dt, ptr %i.dq, align 8, !tbaa !28
  %indvars.iv.next54.i.prol = or disjoint i64 %indvars.iv53.i.ph, 1
  br label %.lr.ph44.i.prol.loopexit

.lr.ph44.i.prol.loopexit:                         ; preds = %.lr.ph44.i.prol, %.lr.ph44.i.preheader
  %indvars.iv53.i.unr = phi i64 [ %indvars.iv53.i.ph, %.lr.ph44.i.preheader ], [ %indvars.iv.next54.i.prol, %.lr.ph44.i.prol ]
  %i.du = icmp eq i64 %indvars.iv53.i.ph, %i.am
  br i1 %i.du, label %WebRates.exit, label %.lr.ph44.i

.lr.ph44.i:                                       ; preds = %.lr.ph44.i.prol.loopexit, %.lr.ph44.i
  %indvars.iv53.i = phi i64 [ %indvars.iv.next54.i.1, %.lr.ph44.i ], [ %indvars.iv53.i.unr, %.lr.ph44.i.prol.loopexit ] ; 5 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv53.i
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !28
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv53.i
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !28
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %indvars.iv53.i ; 2 uses
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !28
  %i.eb = tail call double @llvm.fmuladd.f64(double %i.dy, double %i.da, double %i.ea)
  %i.ec = fmul double %i.dw, %i.eb
  store double %i.ec, ptr %i.dz, align 8, !tbaa !28
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1 ; 3 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.next54.i
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !28
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next54.i
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !28
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %indvars.iv.next54.i ; 2 uses
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !28
  %i.ej = tail call double @llvm.fmuladd.f64(double %i.eg, double %i.da, double %i.ei)
  %i.ek = fmul double %i.ee, %i.ej
  store double %i.ek, ptr %i.eh, align 8, !tbaa !28
  %indvars.iv.next54.i.1 = add nuw nsw i64 %indvars.iv53.i, 2 ; 2 uses
  %exitcond57.not.i.1 = icmp eq i64 %indvars.iv.next54.i.1, %i.s
  br i1 %exitcond57.not.i.1, label %WebRates.exit, label %.lr.ph44.i, !llvm.loop !60

WebRates.exit:                                    ; preds = %.lr.ph44.i.prol.loopexit, %.lr.ph44.i, %middle.block179, %bb.b
  %i.el = icmp eq i64 %indvars.iv92, 5
  %i.em = select i1 %i.el, i32 %i.r, i32 %i.e     ; 4 uses
  %i.en = icmp eq i64 %indvars.iv92, 0
  %i.eo = select i1 %i.en, i32 %i.e, i32 %i.r     ; 4 uses
  %i.ep = trunc nsw i64 %i.ch to i32
  %i.eq = add i32 %i.ep, -1                       ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %WebRates.exit
  %i.er = add i32 %i.by, %i.ao
  %i.es = icmp slt i32 %i.er, %i.by
  %i.et = add i32 %i.ca, %i.ao
  %i.eu = icmp slt i32 %i.et, %i.ca
  %i.ev = or i1 %i.eu, %i.ap
  %i.ew = add i32 %i.cc, %i.ao
  %i.ex = icmp slt i32 %i.ew, %i.cc
  %i.ey = add i32 %i.eo, %i.by                    ; 2 uses
  %i.ez = add i32 %i.ey, %i.ao
  %i.fa = icmp slt i32 %i.ez, %i.ey
  %i.fb = add nsw i32 %i.em, %i.by                ; 2 uses
  %i.fc = add i32 %i.fb, %i.ao
  %i.fd = icmp slt i32 %i.fc, %i.fb
  %i.fe = or i1 %i.es, %i.ev
  %i.ff = or i1 %i.ex, %i.fe
  %i.fg = or i1 %i.fa, %i.ff
  %i.fh = or i1 %i.fd, %i.fg
  br i1 %i.fh, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.fi = sext i32 %i.em to i64
  %i.fj = add nsw i64 %i.bm, %i.fi
  %i.fk = shl nsw i64 %i.fj, 3                    ; 2 uses
  %scevgep108 = getelementptr i8, ptr %i.a, i64 %i.fk
  %scevgep110 = getelementptr i8, ptr %scevgep109, i64 %i.fk
  %i.fl = add i32 %i.eo, %i.bl
  %i.fm = sext i32 %i.fl to i64
  %i.fn = shl nsw i64 %i.fm, 3                    ; 2 uses
  %scevgep111 = getelementptr i8, ptr %i.a, i64 %i.fn
  %scevgep113 = getelementptr i8, ptr %scevgep112, i64 %i.fn
  %bound0 = icmp ult ptr %scevgep101, %scevgep106
  %bound1 = icmp ult ptr %scevgep104, %scevgep103
  %found.conflict = and i1 %bound0, %bound1
  %bound0123 = icmp ult ptr %i.g, %scevgep106
  %bound1124 = icmp ult ptr %scevgep104, %scevgep107
  %found.conflict125 = and i1 %bound0123, %bound1124
  %conflict.rdx = or i1 %found.conflict, %found.conflict125
  %bound0126 = icmp ult ptr %scevgep104, %scevgep110
  %bound1127 = icmp ult ptr %scevgep108, %scevgep106
end_hunk_0
