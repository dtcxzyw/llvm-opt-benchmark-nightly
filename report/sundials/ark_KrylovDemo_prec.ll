Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/ark_KrylovDemo_prec?download=true
inline.NumInlined: 74
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 35
begin_hunk_0_@main:bb.a
  br label %check_flag.exit26.i

check_flag.exit26.i:                              ; preds = %bb.ak, %check_flag.exit24.i
  %i.oj = call i32 @ARKodeGetNumNonlinSolvIters(ptr noundef %.pre, ptr noundef nonnull %i.i) #11 ; 2 uses
  %i.ok = icmp slt i32 %i.oj, 0
  br i1 %i.ok, label %bb.al, label %check_flag.exit28.i

bb.al:                                            ; preds = %check_flag.exit26.i
  %i.ol = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.om = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ol, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.48, i32 noundef %i.oj) #12 ; 0 uses
  br label %check_flag.exit28.i

check_flag.exit28.i:                              ; preds = %bb.al, %check_flag.exit26.i
  %i.on = call i32 @ARKodeGetNumNonlinSolvConvFails(ptr noundef %.pre, ptr noundef nonnull %i.j) #11 ; 2 uses
  %i.oo = icmp slt i32 %i.on, 0
  br i1 %i.oo, label %bb.am, label %check_flag.exit30.i

bb.am:                                            ; preds = %check_flag.exit28.i
  %i.op = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.oq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.op, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.55, i32 noundef %i.on) #12 ; 0 uses
  br label %check_flag.exit30.i

check_flag.exit30.i:                              ; preds = %bb.am, %check_flag.exit28.i
  %i.or = call i32 @ARKodeGetLinWorkSpace(ptr noundef %.pre, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #11 ; 2 uses
  %i.os = icmp slt i32 %i.or, 0
  br i1 %i.os, label %bb.an, label %check_flag.exit32.i

bb.an:                                            ; preds = %check_flag.exit30.i
  %i.ot = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ou = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ot, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.56, i32 noundef %i.or) #12 ; 0 uses
  br label %check_flag.exit32.i

check_flag.exit32.i:                              ; preds = %bb.an, %check_flag.exit30.i
  %i.ov = call i32 @ARKodeGetNumLinIters(ptr noundef %.pre, ptr noundef nonnull %i.l) #11 ; 2 uses
  %i.ow = icmp slt i32 %i.ov, 0
  br i1 %i.ow, label %bb.ao, label %check_flag.exit34.i

bb.ao:                                            ; preds = %check_flag.exit32.i
  %i.ox = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.oy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ox, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.57, i32 noundef %i.ov) #12 ; 0 uses
  br label %check_flag.exit34.i

check_flag.exit34.i:                              ; preds = %bb.ao, %check_flag.exit32.i
  %i.oz = call i32 @ARKodeGetNumPrecEvals(ptr noundef %.pre, ptr noundef nonnull %i.m) #11 ; 2 uses
  %i.pa = icmp slt i32 %i.oz, 0
  br i1 %i.pa, label %bb.ap, label %check_flag.exit36.i

bb.ap:                                            ; preds = %check_flag.exit34.i
  %i.pb = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.pc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.pb, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.58, i32 noundef %i.oz) #12 ; 0 uses
  br label %check_flag.exit36.i

check_flag.exit36.i:                              ; preds = %bb.ap, %check_flag.exit34.i
  %i.pd = call i32 @ARKodeGetNumPrecSolves(ptr noundef %.pre, ptr noundef nonnull %i.n) #11 ; 2 uses
  %i.pe = icmp slt i32 %i.pd, 0
  br i1 %i.pe, label %bb.aq, label %check_flag.exit38.i

bb.aq:                                            ; preds = %check_flag.exit36.i
  %i.pf = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.pg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.pf, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.59, i32 noundef %i.pd) #12 ; 0 uses
  br label %check_flag.exit38.i

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
  %i.pp = load i64, ptr %i.a, align 8, !tbaa !54
  %i.pq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.63, i64 noundef %i.pp) ; 0 uses
  %i.pr = load i64, ptr %i.b, align 8, !tbaa !54
  %i.ps = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.64, i64 noundef %i.pr) ; 0 uses
  %i.pt = load i64, ptr %i.c, align 8, !tbaa !54
  %i.pu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.65, i64 noundef %i.pt) ; 0 uses
  %i.pv = load i64, ptr %i.d, align 8, !tbaa !54
  %i.pw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.66, i64 noundef %i.pv) ; 0 uses
  %i.px = load i64, ptr %i.e, align 8, !tbaa !54
  %i.py = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.67, i64 noundef %i.px) ; 0 uses
  %i.pz = load i64, ptr %i.f, align 8, !tbaa !54
  %i.qa = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.68, i64 noundef %i.pz) ; 0 uses
  %i.qb = load i64, ptr %i.g, align 8, !tbaa !54
  %i.qc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.69, i64 noundef %i.qb) ; 0 uses
  %i.qd = load i64, ptr %i.p, align 8, !tbaa !54
  %i.qe = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.70, i64 noundef %i.qd) ; 0 uses
  %i.qf = load i64, ptr %i.f, align 8, !tbaa !54
  %i.qg = load i64, ptr %i.p, align 8, !tbaa !54
  %i.qh = add nsw i64 %i.qg, %i.qf
  %i.qi = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.71, i64 noundef %i.qh) ; 0 uses
  %i.qj = load i64, ptr %i.h, align 8, !tbaa !54
  %i.qk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.72, i64 noundef %i.qj) ; 0 uses
  %i.ql = load i64, ptr %i.i, align 8, !tbaa !54
  %i.qm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.73, i64 noundef %i.ql) ; 0 uses
  %i.qn = load i64, ptr %i.l, align 8, !tbaa !54
  %i.qo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.74, i64 noundef %i.qn) ; 0 uses
  %i.qp = load i64, ptr %i.m, align 8, !tbaa !54
  %i.qq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.75, i64 noundef %i.qp) ; 0 uses
  %i.qr = load i64, ptr %i.n, align 8, !tbaa !54
  %i.qs = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, i64 noundef %i.qr) ; 0 uses
  %i.qt = load i64, ptr %i.k, align 8, !tbaa !54
  %i.qu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i64 noundef %i.qt) ; 0 uses
  %i.qv = load i64, ptr %i.j, align 8, !tbaa !54
  %i.qw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.78, i64 noundef %i.qv) ; 0 uses
  %i.qx = load i64, ptr %i.o, align 8, !tbaa !54
  %i.qy = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.79, i64 noundef %i.qx) ; 0 uses
  %i.qz = load i64, ptr %i.i, align 8, !tbaa !54  ; 2 uses
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
  %i.e = load i32, ptr %i.d, align 8, !tbaa !24   ; 13 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 696 ; 3 uses
  %i.g = getelementptr i8, ptr %3, i64 576        ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 624 ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !27   ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 672
  %i.k = load double, ptr %i.j, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 680
  %i.m = load double, ptr %i.l, align 8, !tbaa !25
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
  %scevgep = getelementptr i8, ptr %3, i64 696
  %i.y = zext i32 %i.i to i64
  %i.z = shl nuw nsw i64 %wide.trip.count, 3      ; 3 uses
  %i.aa = getelementptr i8, ptr %3, i64 %i.z
  %scevgep102 = getelementptr i8, ptr %i.aa, i64 688
  %i.ab = add nsw i64 %i.z, -8                    ; 6 uses
  %scevgep105 = getelementptr i8, ptr %i.b, i64 %i.ab
  %i.ac = getelementptr i8, ptr %3, i64 %i.z
  %scevgep107 = getelementptr i8, ptr %i.ac, i64 616
  %scevgep109 = getelementptr i8, ptr %i.a, i64 %i.ab
  %scevgep112 = getelementptr i8, ptr %i.a, i64 %i.ab
  %scevgep115 = getelementptr i8, ptr %i.a, i64 %i.ab
  %scevgep118 = getelementptr i8, ptr %i.a, i64 %i.ab
  %scevgep121 = getelementptr i8, ptr %i.a, i64 %i.ab
  %i.ad = shl nsw i64 %i.w, 3
  %i.ae = mul nuw nsw i64 %i.s, 48                ; 2 uses
  %i.af = shl nuw nsw i64 %i.s, 3
  %i.ag = getelementptr i8, ptr %3, i64 %i.af
  %scevgep158 = getelementptr i8, ptr %i.ag, i64 480
  %i.ah = getelementptr i8, ptr %3, i64 %i.ae
  %i.ai = getelementptr i8, ptr %i.ah, i64 696
  %i.aj = getelementptr i8, ptr %i.a, i64 %i.ae
  %xtraiter = and i64 %i.v, 1
  %i.ak = icmp eq i32 %i.e, 1
  %unroll_iter = and i64 %i.v, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod182 = trunc i32 %i.e to i1
  %min.iters.check167 = icmp ult i32 %i.e, 4
  %n.vec169 = and i64 %i.s, 2147483644            ; 3 uses
  %cmp.n180 = icmp eq i64 %n.vec169, %i.s
  %xtraiter183 = and i64 %i.v, 1
  %lcmp.mod184.not = icmp eq i64 %xtraiter183, 0
  %i.al = add nsw i64 %i.v, -1
  %i.am = zext nneg i32 %i.e to i64               ; 3 uses
  %min.iters.check = icmp ult i32 %i.e, 8
  %i.an = trunc i64 %i.x to i32                   ; 5 uses
  %i.ao = icmp ugt i64 %i.x, 4294967295
  %n.vec = and i64 %i.am, 2147483646              ; 2 uses
  %i.ap = or i64 %i.am, 1
  %cmp.n = icmp eq i64 %n.vec, %i.am
  br label %.split

.split:                                           ; preds = %.split.preheader, %.split86
  %indvars.iv96 = phi i64 [ 0, %.split.preheader ], [ %indvars.iv.next97, %.split86 ] ; 8 uses
  %i.aq = mul i64 %i.ad, %indvars.iv96            ; 4 uses
  %i.ar = getelementptr i8, ptr %3, i64 %i.aq
  %scevgep154 = getelementptr i8, ptr %i.ar, i64 696 ; 2 uses
  %scevgep155 = getelementptr i8, ptr %i.ai, i64 %i.aq ; 2 uses
  %scevgep156 = getelementptr i8, ptr %i.a, i64 %i.aq
  %scevgep157 = getelementptr i8, ptr %i.aj, i64 %i.aq
  %i.as = mul i64 %indvars.iv96, %i.y             ; 2 uses
  %i.at = trunc i64 %i.as to i32                  ; 2 uses
  %i.au = trunc i64 %indvars.iv96 to i32
  %i.av = mul i32 %i.i, %i.au                     ; 2 uses
  %i.aw = trunc nuw nsw i64 %indvars.iv96 to i32
  %i.ax = uitofp nneg i32 %i.aw to double
  %i.ay = fmul double %i.m, %i.ax
  %i.az = mul nsw i64 %indvars.iv96, %i.w
  %i.ba = icmp eq i64 %indvars.iv96, 5
  %i.bb = select i1 %i.ba, i32 %i.n, i32 %i.i     ; 4 uses
  %i.bc = icmp eq i64 %indvars.iv96, 0
  %i.bd = select i1 %i.bc, i32 %i.i, i32 %i.n     ; 4 uses
  %i.be = add i32 %i.bd, %i.av
  %i.bf = add i32 %i.bb, %i.av
  %i.bg = add i32 %i.bb, %i.at
  %i.bh = add i32 %i.bd, %i.at
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
  %i.bi = mul i64 %indvars.iv92, %i.s             ; 3 uses
  %i.bj = add i64 %i.as, %i.bi                    ; 2 uses
  %i.bk = trunc i64 %i.bj to i32
  %sext = shl i64 %i.bj, 32                       ; 2 uses
  %i.bl = ashr exact i64 %sext, 32
  %i.bm = ashr exact i64 %sext, 29                ; 6 uses
  %scevgep101 = getelementptr i8, ptr %scevgep, i64 %i.bm
  %scevgep103 = getelementptr i8, ptr %scevgep102, i64 %i.bm
  %scevgep104 = getelementptr i8, ptr %i.b, i64 %i.bm ; 7 uses
  %scevgep106 = getelementptr i8, ptr %scevgep105, i64 %i.bm ; 7 uses
  %i.bn = trunc i64 %i.bi to i32
  %i.bo = add i32 %i.bg, %i.bn
  %i.bp = sext i32 %i.bo to i64
  %i.bq = shl nsw i64 %i.bp, 3                    ; 2 uses
  %scevgep114 = getelementptr i8, ptr %i.a, i64 %i.bq
  %scevgep116 = getelementptr i8, ptr %scevgep115, i64 %i.bq
  %i.br = trunc i64 %i.bi to i32
  %i.bs = add i32 %i.bh, %i.br
  %i.bt = sext i32 %i.bs to i64
  %i.bu = shl nsw i64 %i.bt, 3                    ; 2 uses
  %scevgep117 = getelementptr i8, ptr %i.a, i64 %i.bu
  %scevgep119 = getelementptr i8, ptr %scevgep118, i64 %i.bu
  %scevgep120 = getelementptr i8, ptr %i.a, i64 %i.bm
  %scevgep122 = getelementptr i8, ptr %scevgep121, i64 %i.bm
  %i.bv = mul i64 %indvars.iv92, %i.s             ; 2 uses
  %i.bw = trunc i64 %i.bv to i32
  %i.bx = add i32 %i.be, %i.bw                    ; 2 uses
  %i.by = trunc i64 %i.bv to i32
  %i.bz = add i32 %i.bf, %i.by                    ; 2 uses
  %i.ca = trunc nuw nsw i64 %indvars.iv92 to i32
  %i.cb = uitofp nneg i32 %i.ca to double
  %i.cc = fmul double %i.k, %i.cb
  %i.cd = mul nuw nsw i64 %indvars.iv92, %i.v
  %i.ce = add nsw i64 %i.cd, %i.az                ; 3 uses
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
  br i1 %i.ak, label %.epil.preheader, label %.preheader.i.new

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
  tail call void @llvm.assume(i1 %lcmp.mod182)
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
  %i.cx = tail call double @llvm.fmuladd.f64(double %i.cc, double %i.ay, double 1.000000e+00) ; 4 uses
  %brmerge = select i1 %min.iters.check167, i1 true, i1 %conflict.rdx165
  br i1 %brmerge, label %.lr.ph44.i.preheader, label %vector.ph168

vector.ph168:                                     ; preds = %._crit_edge41.split.i
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cx, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body170

vector.body170:                                   ; preds = %vector.body170, %vector.ph168
  %index171 = phi i64 [ 0, %vector.ph168 ], [ %index.next178, %vector.body170 ] ; 4 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %index171 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %wide.load172 = load <2 x double>, ptr %i.cy, align 8, !tbaa !22, !alias.scope !72
  %wide.load173 = load <2 x double>, ptr %i.cz, align 8, !tbaa !22, !alias.scope !72
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %index171 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %wide.load174 = load <2 x double>, ptr %i.da, align 8, !tbaa !22, !alias.scope !73
  %wide.load175 = load <2 x double>, ptr %i.db, align 8, !tbaa !22, !alias.scope !73
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %index171 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 2 uses
  %wide.load176 = load <2 x double>, ptr %i.dc, align 8, !tbaa !22, !alias.scope !74, !noalias !75
  %wide.load177 = load <2 x double>, ptr %i.dd, align 8, !tbaa !22, !alias.scope !74, !noalias !75
  %i.de = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load174, <2 x double> %broadcast.splat, <2 x double> %wide.load176)
  %i.df = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load175, <2 x double> %broadcast.splat, <2 x double> %wide.load177)
  %i.dg = fmul <2 x double> %wide.load172, %i.de
  %i.dh = fmul <2 x double> %wide.load173, %i.df
  store <2 x double> %i.dg, ptr %i.dc, align 8, !tbaa !22, !alias.scope !74, !noalias !75
  store <2 x double> %i.dh, ptr %i.dd, align 8, !tbaa !22, !alias.scope !74, !noalias !75
  %index.next178 = add nuw i64 %index171, 4       ; 2 uses
  %i.di = icmp eq i64 %index.next178, %n.vec169
  br i1 %i.di, label %middle.block179, label %vector.body170, !llvm.loop !59

middle.block179:                                  ; preds = %vector.body170
  br i1 %cmp.n180, label %WebRates.exit, label %.lr.ph44.i.preheader

.lr.ph44.i.preheader:                             ; preds = %._crit_edge41.split.i, %middle.block179
  %indvars.iv53.i.ph = phi i64 [ %n.vec169, %middle.block179 ], [ 0, %._crit_edge41.split.i ] ; 6 uses
  br i1 %lcmp.mod184.not, label %.lr.ph44.i.prol.loopexit, label %.lr.ph44.i.prol

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
  %i.dr = icmp eq i64 %indvars.iv53.i.ph, %i.al
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
  br i1 %exitcond57.not.i.1, label %WebRates.exit, label %.lr.ph44.i, !llvm.loop !60

WebRates.exit:                                    ; preds = %.lr.ph44.i.prol.loopexit, %.lr.ph44.i, %middle.block179, %bb.b
  %i.ei = icmp eq i64 %indvars.iv92, 5
  %i.ej = select i1 %i.ei, i32 %i.r, i32 %i.e     ; 4 uses
  %i.ek = icmp eq i64 %indvars.iv92, 0
  %i.el = select i1 %i.ek, i32 %i.e, i32 %i.r     ; 4 uses
  %i.em = trunc nsw i64 %i.ce to i32              ; 5 uses
  %i.en = add i32 %i.em, -1                       ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %WebRates.exit
  %i.eo = add i32 %i.em, %i.an
  %i.ep = icmp slt i32 %i.eo, %i.em
  %i.eq = add i32 %i.bx, %i.an
  %i.er = icmp slt i32 %i.eq, %i.bx
  %i.es = or i1 %i.er, %i.ao
  %i.et = add i32 %i.bz, %i.an
  %i.eu = icmp slt i32 %i.et, %i.bz
  %i.ev = add i32 %i.el, %i.em                    ; 2 uses
  %i.ew = add i32 %i.ev, %i.an
  %i.ex = icmp slt i32 %i.ew, %i.ev
  %i.ey = add nsw i32 %i.ej, %i.em                ; 2 uses
  %i.ez = add i32 %i.ey, %i.an
  %i.fa = icmp slt i32 %i.ez, %i.ey
  %i.fb = or i1 %i.ep, %i.es
  %i.fc = or i1 %i.eu, %i.fb
  %i.fd = or i1 %i.ex, %i.fc
  %i.fe = or i1 %i.fa, %i.fd
  br i1 %i.fe, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ff = sext i32 %i.ej to i64
  %i.fg = add nsw i64 %i.bl, %i.ff
  %i.fh = shl nsw i64 %i.fg, 3                    ; 2 uses
  %scevgep108 = getelementptr i8, ptr %i.a, i64 %i.fh
  %scevgep110 = getelementptr i8, ptr %scevgep109, i64 %i.fh
  %i.fi = add i32 %i.el, %i.bk
  %i.fj = sext i32 %i.fi to i64
  %i.fk = shl nsw i64 %i.fj, 3                    ; 2 uses
  %scevgep111 = getelementptr i8, ptr %i.a, i64 %i.fk
  %scevgep113 = getelementptr i8, ptr %scevgep112, i64 %i.fk
  %bound0 = icmp ult ptr %scevgep101, %scevgep106
  %bound1 = icmp ult ptr %scevgep104, %scevgep103
  %found.conflict = and i1 %bound0, %bound1
  %bound0123 = icmp ult ptr %i.g, %scevgep106
  %bound1124 = icmp ult ptr %scevgep104, %scevgep107
  %found.conflict125 = and i1 %bound0123, %bound1124
  %conflict.rdx = or i1 %found.conflict, %found.conflict125
  %bound0126 = icmp ult ptr %scevgep104, %scevgep110
  %bound1127 = icmp ult ptr %scevgep108, %scevgep106
  %found.conflict128 = and i1 %bound0126, %bound1127
  %conflict.rdx129 = or i1 %conflict.rdx, %found.conflict128
  %bound0130 = icmp ult ptr %scevgep104, %scevgep113
  %bound1131 = icmp ult ptr %scevgep111, %scevgep106
  %found.conflict132 = and i1 %bound0130, %bound1131
  %conflict.rdx133 = or i1 %conflict.rdx129, %found.conflict132
  %bound0134 = icmp ult ptr %scevgep104, %scevgep116
  %bound1135 = icmp ult ptr %scevgep114, %scevgep106
  %found.conflict136 = and i1 %bound0134, %bound1135
  %conflict.rdx137 = or i1 %conflict.rdx133, %found.conflict136
  %bound0138 = icmp ult ptr %scevgep104, %scevgep119
  %bound1139 = icmp ult ptr %scevgep117, %scevgep106
  %found.conflict140 = and i1 %bound0138, %bound1139
  %conflict.rdx141 = or i1 %conflict.rdx137, %found.conflict140
  %bound0142 = icmp ult ptr %scevgep104, %scevgep122
  %bound1143 = icmp ult ptr %scevgep120, %scevgep106
  %found.conflict144 = and i1 %bound0142, %bound1143
  %conflict.rdx145 = or i1 %conflict.rdx141, %found.conflict144
  br i1 %conflict.rdx145, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 4 uses
  %i.fl = trunc i64 %index to i32
  %i.fm = or disjoint i32 %i.fl, 1
  %i.fn = add i32 %i.en, %i.fm                    ; 5 uses
  %i.fo = sext i32 %i.fn to i64                   ; 3 uses
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.fo
  %wide.load = load <2 x double>, ptr %i.fp, align 8, !tbaa !22, !alias.scope !76 ; 4 uses
  %i.fq = add i32 %i.fn, %i.bd
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.fr
  %wide.load146 = load <2 x double>, ptr %i.fs, align 8, !tbaa !22, !alias.scope !77
  %i.ft = fsub <2 x double> %wide.load, %wide.load146
  %i.fu = add nsw i32 %i.fn, %i.bb
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.fv
  %wide.load147 = load <2 x double>, ptr %i.fw, align 8, !tbaa !22, !alias.scope !78
  %i.fx = fsub <2 x double> %wide.load147, %wide.load
  %i.fy = add i32 %i.fn, %i.el
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.fz
  %wide.load148 = load <2 x double>, ptr %i.ga, align 8, !tbaa !22, !alias.scope !79
  %i.gb = fsub <2 x double> %wide.load, %wide.load148
  %i.gc = add nsw i32 %i.fn, %i.ej
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.gd
  %wide.load149 = load <2 x double>, ptr %i.ge, align 8, !tbaa !22, !alias.scope !80
  %i.gf = fsub <2 x double> %wide.load149, %wide.load
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.h, i64 %index
  %wide.load150 = load <2 x double>, ptr %i.gg, align 8, !tbaa !22, !alias.scope !81, !noalias !82
  %i.gh = fsub <2 x double> %i.fx, %i.ft
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.g, i64 %index
  %wide.load151 = load <2 x double>, ptr %i.gi, align 8, !tbaa !22, !alias.scope !81, !noalias !82
  %i.gj = fsub <2 x double> %i.gf, %i.gb
  %i.gk = fmul <2 x double> %wide.load151, %i.gj
  %i.gl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load150, <2 x double> %i.gh, <2 x double> %i.gk)
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.fo
  %wide.load152 = load <2 x double>, ptr %i.gm, align 8, !tbaa !22, !alias.scope !83, !noalias !82
  %i.gn = fadd <2 x double> %wide.load152, %i.gl
  %i.go = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.fo
  store <2 x double> %i.gn, ptr %i.go, align 8, !tbaa !22, !alias.scope !82, !noalias !84
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.gp = icmp eq i64 %index.next, %n.vec
  br i1 %i.gp, label %middle.block, label %vector.body, !llvm.loop !70

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %WebRates.exit, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %vector.scevcheck ], [ 1, %WebRates.exit ], [ %i.ap, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.gq = trunc nuw nsw i64 %indvars.iv to i32
  %i.gr = add i32 %i.en, %i.gq                    ; 5 uses
  %i.gs = sext i32 %i.gr to i64                   ; 3 uses
  %i.gt = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.gs
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !22 ; 4 uses
  %i.gv = add i32 %i.gr, %i.bd
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.gw
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !22
  %i.gz = fsub double %i.gu, %i.gy
  %i.ha = add nsw i32 %i.gr, %i.bb
  %i.hb = sext i32 %i.ha to i64
  %i.hc = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.hb
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !22
  %i.he = fsub double %i.hd, %i.gu
  %i.hf = add i32 %i.gr, %i.el
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.hg
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !22
  %i.hj = fsub double %i.gu, %i.hi
  %i.hk = add nsw i32 %i.gr, %i.ej
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.hl
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !22
  %i.ho = fsub double %i.hn, %i.gu
  %i.hp = add nsw i64 %indvars.iv, -1             ; 2 uses
  %i.hq = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.hp
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !22
  %i.hs = fsub double %i.he, %i.gz
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.hp
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !22
  %i.hv = fsub double %i.ho, %i.hj
  %i.hw = fmul double %i.hu, %i.hv
  %i.hx = tail call double @llvm.fmuladd.f64(double %i.hr, double %i.hs, double %i.hw)
  %i.hy = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.gs
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !22
  %i.ia = fadd double %i.hz, %i.hx
  %i.ib = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.gs
  store double %i.ia, ptr %i.ib, align 8, !tbaa !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !71

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %exitcond95.not = icmp eq i64 %indvars.iv.next93, 6
  br i1 %exitcond95.not, label %.split86, label %bb.b

.split86:                                         ; preds = %._crit_edge
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %exitcond99.not = icmp eq i64 %indvars.iv.next97, 6
  br i1 %exitcond99.not, label %.split90.us.split, label %.split

.split90.us.split:                                ; preds = %.split86, %bb.a
  ret i32 0
}

declare i32 @ARKodeSetUserData(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeSStolerances(ptr noundef, double noundef, double noundef) local_unnamed_addr #2

declare i32 @ARKodeSetMaxNumSteps(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ARKodeSetNonlinConvCoef(ptr noundef, double noundef) local_unnamed_addr #2

declare ptr @SUNLinSol_SPGMR(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeSetLinearSolver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SUNLinSol_SPGMRSetGSType(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ARKodeSetEpsLin(ptr noundef, double noundef) local_unnamed_addr #2

declare i32 @ARKodeSetPreconditioner(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @Precond(double %0, ptr noundef %1, ptr noundef %2, i32 %3, ptr nofree noundef writeonly captures(none) %4, double noundef %5, ptr nofree noundef readonly captures(none) %6) #0 {
bb.a:
  %i.a = ptrtoaddr ptr %6 to i64                  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 2440
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.d = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #11 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 2432
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20   ; 3 uses
  %i.g = tail call i32 @ARKodeGetErrWeights(ptr noundef %i.c, ptr noundef %i.f) #11 ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %check_flag.exit, label %bb.b

check_flag.exit:                                  ; preds = %bb.a
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.i, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.82, i32 noundef %i.g) #12 ; 0 uses
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.k = tail call ptr @N_VGetArrayPointer(ptr noundef %i.f) #11 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 176 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 184 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.p = load i32, ptr %i.o, align 8, !tbaa !31   ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 688
  %i.r = load double, ptr %i.q, align 8, !tbaa !101 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.t = load i32, ptr %i.s, align 8, !tbaa !32   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 92
  %i.v = load i32, ptr %i.u, align 4, !tbaa !33   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.x = load i32, ptr %i.w, align 8, !tbaa !102  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 100
  %i.z = load i32, ptr %i.y, align 4, !tbaa !103  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 696 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 2424
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !21
  %i.ad = tail call ptr @N_VGetArrayPointer(ptr noundef %i.ac) #11 ; 23 uses
  %i.ae = ptrtoaddr ptr %i.ad to i64              ; 2 uses
  %i.af = tail call double @N_VWrmsNorm(ptr noundef %2, ptr noundef %i.f) #11
  %i.ag = tail call double @llvm.fabs.f64(double %5)
  %i.ah = fmul double %i.ag, 1.000000e+03
  %i.ai = fmul double %i.ah, f0x3CB0000000000000
  %i.aj = fmul double %i.ai, 2.160000e+02
  %i.ak = fmul double %i.aj, %i.af                ; 2 uses
  %i.al = fcmp oeq double %i.ak, 0.000000e+00
  %spec.store.select = select i1 %i.al, double 1.000000e+00, double %i.ak ; 2 uses
  %i.am = icmp sgt i32 %i.x, 0
  br i1 %i.am, label %.lr.ph129, label %.preheader

.lr.ph129:                                        ; preds = %bb.b
  %i.an = icmp slt i32 %i.v, 1
  %i.ao = icmp slt i32 %i.p, 1
  %i.ap = fneg double %5                          ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 672
  %i.ar = getelementptr i8, ptr %6, i64 192       ; 2 uses
  %i.as = getelementptr i8, ptr %6, i64 480       ; 5 uses
  %brmerge = select i1 %i.an, i1 true, i1 %i.ao
  br i1 %brmerge, label %.preheader, label %.lr.ph129.split.split

.lr.ph129.split.split:                            ; preds = %.lr.ph129
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.av = load i32, ptr %i.au, align 8, !tbaa !34
  %i.aw = load i32, ptr %i.at, align 8, !tbaa !24 ; 5 uses
  %i.ax = icmp sgt i32 %i.aw, 0
  %i.ay = zext i32 %i.aw to i64                   ; 14 uses
  %i.az = shl nuw nsw i64 %i.ay, 3
  %i.ba = zext nneg i32 %i.v to i64               ; 4 uses
  %wide.trip.count171 = zext nneg i32 %i.x to i64 ; 2 uses
  %wide.trip.count161 = zext nneg i32 %i.p to i64 ; 12 uses
  br i1 %i.ax, label %.lr.ph.us.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph129.split.split
  %min.iters.check = icmp ult i32 %i.p, 4
  %n.vec = and i64 %wide.trip.count161, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count161
  %xtraiter = and i64 %wide.trip.count161, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.bb = add nsw i64 %wide.trip.count161, -1
  br label %.lr.ph

.lr.ph.us.preheader:                              ; preds = %.lr.ph129.split.split
  %i.bc = shl nuw nsw i64 %i.ay, 3                ; 4 uses
  %scevgep = getelementptr i8, ptr %i.ad, i64 %i.bc ; 4 uses
  %scevgep217 = getelementptr i8, ptr %i.d, i64 %i.bc
  %i.bd = getelementptr i8, ptr %6, i64 %i.bc
  %scevgep219 = getelementptr i8, ptr %i.bd, i64 480
  %scevgep243 = getelementptr i8, ptr %i.d, i64 %i.bc
  %i.be = mul nuw nsw i64 %i.ay, 56
  %i.bf = getelementptr i8, ptr %6, i64 %i.be
  %scevgep245 = getelementptr i8, ptr %i.bf, i64 144
  %min.iters.check254 = icmp ult i32 %i.aw, 5
  %bound0249 = icmp ult ptr %i.ad, %scevgep245
  %bound1250 = icmp ult ptr %i.ar, %scevgep
  %found.conflict251 = and i1 %bound0249, %bound1250
  %i.bg = and i64 %i.ay, 3                        ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  %i.bi = select i1 %i.bh, i64 4, i64 %i.bg
  %n.vec256 = sub nsw i64 %i.ay, %i.bi            ; 2 uses
  %i.bj = add nsw i64 %i.ay, -1
  %min.iters.check225 = icmp ult i32 %i.aw, 4
  %bound0220 = icmp ult ptr %i.ad, %scevgep219
  %bound1221 = icmp ult ptr %i.as, %scevgep
  %found.conflict222 = and i1 %bound0220, %bound1221
  %n.vec227 = and i64 %i.ay, 2147483644           ; 3 uses
  %cmp.n240 = icmp eq i64 %n.vec227, %i.ay
  %xtraiter270 = and i64 %i.ay, 1
  %lcmp.mod271.not = icmp eq i64 %xtraiter270, 0
  %i.bk = add nsw i64 %i.ay, -1
  %min.iters.check201 = icmp ult i32 %i.p, 4
  %n.vec203 = and i64 %wide.trip.count161, 2147483644 ; 3 uses
  %cmp.n214 = icmp eq i64 %n.vec203, %wide.trip.count161
  %xtraiter272 = and i64 %wide.trip.count161, 1
  %lcmp.mod273.not = icmp eq i64 %xtraiter272, 0
  %i.bl = add nsw i64 %wide.trip.count161, -1
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.split126.us.us
  %indvars.iv168 = phi i64 [ %indvars.iv.next169, %._crit_edge.split126.us.us ], [ 0, %.lr.ph.us.preheader ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv168
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !23 ; 3 uses
  %i.bo = mul nsw i32 %i.bn, %i.z
  %i.bp = mul nuw nsw i64 %indvars.iv168, %i.ba
  %i.bq = sitofp i32 %i.bn to double
  %i.br = mul nsw i32 %i.av, %i.bn
  %invariant.gep189 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.bp
  %i.bs = insertelement <2 x double> poison, double %i.bq, i64 1
  br label %.lr.ph116.us.us

.lr.ph116.us.us:                                  ; preds = %._crit_edge117.split.us.us.us, %.lr.ph.us
  %indvars.iv163 = phi i64 [ %indvars.iv.next164, %._crit_edge117.split.us.us.us ], [ 0, %.lr.ph.us ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv163
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !23 ; 3 uses
  %i.bv = mul nsw i32 %i.bu, %i.p
  %i.bw = add nsw i32 %i.bv, %i.bo
  %i.bx = add nsw i32 %i.br, %i.bu
  %i.by = sitofp i32 %i.bu to double
  %i.bz = mul nsw i32 %i.aw, %i.bx
  %i.ca = sext i32 %i.bz to i64                   ; 2 uses
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.ca ; 7 uses
  %gep190 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep189, i64 %indvars.iv163
  %i.cc = load ptr, ptr %gep190, align 8, !tbaa !14
  %i.cd = sext i32 %i.bw to i64                   ; 3 uses
  %invariant.gep187 = getelementptr [8 x i8], ptr %i.aa, i64 %i.cd ; 4 uses
  %i.ce = shl nsw i64 %i.cd, 3
  %i.cf = add i64 %i.ce, %i.a
  %i.cg = shl nsw i64 %i.ca, 3                    ; 2 uses
  %scevgep218 = getelementptr i8, ptr %scevgep217, i64 %i.cg
  %scevgep244 = getelementptr i8, ptr %scevgep243, i64 %i.cg
  %i.ch = insertelement <2 x double> %i.bs, double %i.by, i64 0
  %bound0246 = icmp ult ptr %i.ad, %scevgep244
  %bound1247 = icmp ult ptr %i.cb, %scevgep
  %found.conflict248 = and i1 %bound0246, %bound1247
  %conflict.rdx252 = or i1 %found.conflict248, %found.conflict251
  %bound0 = icmp ult ptr %i.ad, %scevgep218
  %bound1 = icmp ult ptr %i.cb, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx223 = or i1 %found.conflict, %found.conflict222
  %invariant.op274 = sub i64 -697, %i.cf
  br label %.preheader.preheader.i.i.us.us.us

.preheader.preheader.i.i.us.us.us:                ; preds = %._crit_edge.us.us.us, %.lr.ph116.us.us
  %indvars.iv158 = phi i64 [ %indvars.iv.next159, %._crit_edge.us.us.us ], [ 0, %.lr.ph116.us.us ] ; 3 uses
  %i.ci = add nsw i64 %indvars.iv158, %i.cd       ; 2 uses
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.ci ; 3 uses
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !22 ; 3 uses
  %i.cl = tail call double @llvm.fabs.f64(double %i.ck)
  %i.cm = fmul double %i.r, %i.cl                 ; 2 uses
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ci
  %i.co = load double, ptr %i.cn, align 8, !tbaa !22
  %i.cp = fdiv double %spec.store.select, %i.co   ; 2 uses
  %i.cq = fcmp ogt double %i.cm, %i.cp
  %..us.us.us = select i1 %i.cq, double %i.cm, double %i.cp ; 2 uses
  %i.cr = fadd double %i.ck, %..us.us.us
  store double %i.cr, ptr %i.cj, align 8, !tbaa !22
  %i.cs = load <2 x double>, ptr %i.aq, align 8, !tbaa !22
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ad, i8 0, i64 %i.az, i1 false), !tbaa !22
  br label %.preheader.i.i.us.us.us

.preheader.i.i.us.us.us:                          ; preds = %._crit_edge.i.i.us.us.us, %.preheader.preheader.i.i.us.us.us
  %indvars.iv48.i.i.us.us.us = phi i64 [ 0, %.preheader.preheader.i.i.us.us.us ], [ %indvars.iv.next49.i.i.us.us.us, %._crit_edge.i.i.us.us.us ] ; 3 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv48.i.i.us.us.us ; 4 uses
  %invariant.gep.i.i.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv48.i.i.us.us.us ; 7 uses
  %brmerge276 = select i1 %min.iters.check254, i1 true, i1 %conflict.rdx252
  br i1 %brmerge276, label %scalar.ph253.preheader, label %vector.ph255

vector.ph255:                                     ; preds = %.preheader.i.i.us.us.us
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !22, !alias.scope !104
  %broadcast.splatinsert261 = insertelement <2 x double> poison, double %i.cu, i64 0
  %broadcast.splat262 = shufflevector <2 x double> %broadcast.splatinsert261, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body257

vector.body257:                                   ; preds = %vector.body257, %vector.ph255
  %index258 = phi i64 [ 0, %vector.ph255 ], [ %index.next263, %vector.body257 ] ; 6 uses
  %i.cv = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i.i.us.us.us, i64 %index258
  %i.cw = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i.i.us.us.us, i64 %index258
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  %i.cy = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i.i.us.us.us, i64 %index258
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 96
  %i.da = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i.i.us.us.us, i64 %index258
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 144
  %i.dc = load double, ptr %i.cv, align 8, !tbaa !22, !alias.scope !105
  %i.dd = load double, ptr %i.cx, align 8, !tbaa !22, !alias.scope !105
  %i.de = insertelement <2 x double> poison, double %i.dc, i64 0
  %i.df = insertelement <2 x double> %i.de, double %i.dd, i64 1
  %i.dg = load double, ptr %i.cz, align 8, !tbaa !22, !alias.scope !105
  %i.dh = load double, ptr %i.db, align 8, !tbaa !22, !alias.scope !105
  %i.di = insertelement <2 x double> poison, double %i.dg, i64 0
  %i.dj = insertelement <2 x double> %i.di, double %i.dh, i64 1
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %index258 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 2 uses
  %wide.load259 = load <2 x double>, ptr %i.dk, align 8, !tbaa !22, !alias.scope !106, !noalias !107
  %wide.load260 = load <2 x double>, ptr %i.dl, align 8, !tbaa !22, !alias.scope !106, !noalias !107
  %i.dm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat262, <2 x double> %i.df, <2 x double> %wide.load259)
  %i.dn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat262, <2 x double> %i.dj, <2 x double> %wide.load260)
  store <2 x double> %i.dm, ptr %i.dk, align 8, !tbaa !22, !alias.scope !106, !noalias !107
  store <2 x double> %i.dn, ptr %i.dl, align 8, !tbaa !22, !alias.scope !106, !noalias !107
  %index.next263 = add nuw i64 %index258, 4       ; 2 uses
  %i.do = icmp eq i64 %index.next263, %n.vec256
  br i1 %i.do, label %scalar.ph253.preheader, label %vector.body257, !llvm.loop !89

scalar.ph253.preheader:                           ; preds = %vector.body257, %.preheader.i.i.us.us.us
  %indvars.iv.i.i.us.us.us.ph = phi i64 [ 0, %.preheader.i.i.us.us.us ], [ %n.vec256, %vector.body257 ] ; 6 uses
  %i.dp = sub nsw i64 %i.ay, %indvars.iv.i.i.us.us.us.ph
  %xtraiter268 = and i64 %i.dp, 1
  %lcmp.mod269.not = icmp eq i64 %xtraiter268, 0
  br i1 %lcmp.mod269.not, label %scalar.ph253.prol.loopexit, label %scalar.ph253.prol

scalar.ph253.prol:                                ; preds = %scalar.ph253.preheader
  %i.dq = load double, ptr %i.ct, align 8, !tbaa !22
  %gep.i.i.us.us.us.prol = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i.i.us.us.us, i64 %indvars.iv.i.i.us.us.us.ph
  %i.dr = load double, ptr %gep.i.i.us.us.us.prol, align 8, !tbaa !22
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i.i.us.us.us.ph ; 2 uses
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !22
  %i.du = tail call double @llvm.fmuladd.f64(double %i.dq, double %i.dr, double %i.dt)
  store double %i.du, ptr %i.ds, align 8, !tbaa !22
  %indvars.iv.next.i.i.us.us.us.prol = add nuw nsw i64 %indvars.iv.i.i.us.us.us.ph, 1
  br label %scalar.ph253.prol.loopexit

scalar.ph253.prol.loopexit:                       ; preds = %scalar.ph253.prol, %scalar.ph253.preheader
  %indvars.iv.i.i.us.us.us.unr = phi i64 [ %indvars.iv.i.i.us.us.us.ph, %scalar.ph253.preheader ], [ %indvars.iv.next.i.i.us.us.us.prol, %scalar.ph253.prol ]
  %i.dv = icmp eq i64 %indvars.iv.i.i.us.us.us.ph, %i.bj
  br i1 %i.dv, label %._crit_edge.i.i.us.us.us, label %scalar.ph253

scalar.ph253:                                     ; preds = %scalar.ph253.prol.loopexit, %scalar.ph253
  %indvars.iv.i.i.us.us.us = phi i64 [ %indvars.iv.next.i.i.us.us.us.1, %scalar.ph253 ], [ %indvars.iv.i.i.us.us.us.unr, %scalar.ph253.prol.loopexit ] ; 4 uses
  %i.dw = load double, ptr %i.ct, align 8, !tbaa !22
  %gep.i.i.us.us.us = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i.i.us.us.us, i64 %indvars.iv.i.i.us.us.us
  %i.dx = load double, ptr %gep.i.i.us.us.us, align 8, !tbaa !22
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i.i.us.us.us ; 2 uses
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !22
  %i.ea = tail call double @llvm.fmuladd.f64(double %i.dw, double %i.dx, double %i.dz)
  store double %i.ea, ptr %i.dy, align 8, !tbaa !22
  %indvars.iv.next.i.i.us.us.us = add nuw nsw i64 %indvars.iv.i.i.us.us.us, 1 ; 2 uses
  %i.eb = load double, ptr %i.ct, align 8, !tbaa !22
  %gep.i.i.us.us.us.1 = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i.i.us.us.us, i64 %indvars.iv.next.i.i.us.us.us
  %i.ec = load double, ptr %gep.i.i.us.us.us.1, align 8, !tbaa !22
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next.i.i.us.us.us ; 2 uses
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !22
  %i.ef = tail call double @llvm.fmuladd.f64(double %i.eb, double %i.ec, double %i.ee)
  store double %i.ef, ptr %i.ed, align 8, !tbaa !22
  %indvars.iv.next.i.i.us.us.us.1 = add nuw nsw i64 %indvars.iv.i.i.us.us.us, 2 ; 2 uses
  %exitcond.not.i.i.us.us.us.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.us.1, %i.ay
  br i1 %exitcond.not.i.i.us.us.us.1, label %._crit_edge.i.i.us.us.us, label %scalar.ph253, !llvm.loop !90

._crit_edge.i.i.us.us.us:                         ; preds = %scalar.ph253, %scalar.ph253.prol.loopexit
  %indvars.iv.next49.i.i.us.us.us = add nuw nsw i64 %indvars.iv48.i.i.us.us.us, 1 ; 2 uses
  %exitcond52.not.i.i.us.us.us = icmp eq i64 %indvars.iv.next49.i.i.us.us.us, %i.ay
  br i1 %exitcond52.not.i.i.us.us.us, label %._crit_edge41.split.i.i.us.us.us, label %.preheader.i.i.us.us.us

._crit_edge41.split.i.i.us.us.us:                 ; preds = %._crit_edge.i.i.us.us.us
  %i.eg = fmul <2 x double> %i.cs, %i.ch          ; 2 uses
  %i.eh = extractelement <2 x double> %i.eg, i64 0
  %i.ei = extractelement <2 x double> %i.eg, i64 1
  %i.ej = tail call double @llvm.fmuladd.f64(double %i.eh, double %i.ei, double 1.000000e+00) ; 4 uses
  %brmerge277 = select i1 %min.iters.check225, i1 true, i1 %conflict.rdx223
  br i1 %brmerge277, label %.lr.ph44.i.i.us.us.us.preheader, label %vector.ph226

vector.ph226:                                     ; preds = %._crit_edge41.split.i.i.us.us.us
  %broadcast.splatinsert228 = insertelement <2 x double> poison, double %i.ej, i64 0
  %broadcast.splat229 = shufflevector <2 x double> %broadcast.splatinsert228, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body230

vector.body230:                                   ; preds = %vector.body230, %vector.ph226
  %index231 = phi i64 [ 0, %vector.ph226 ], [ %index.next238, %vector.body230 ] ; 4 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %index231 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %wide.load232 = load <2 x double>, ptr %i.ek, align 8, !tbaa !22, !alias.scope !108
  %wide.load233 = load <2 x double>, ptr %i.el, align 8, !tbaa !22, !alias.scope !108
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index231 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %wide.load234 = load <2 x double>, ptr %i.em, align 8, !tbaa !22, !alias.scope !109
  %wide.load235 = load <2 x double>, ptr %i.en, align 8, !tbaa !22, !alias.scope !109
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %index231 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16 ; 2 uses
  %wide.load236 = load <2 x double>, ptr %i.eo, align 8, !tbaa !22, !alias.scope !110, !noalias !111
  %wide.load237 = load <2 x double>, ptr %i.ep, align 8, !tbaa !22, !alias.scope !110, !noalias !111
  %i.eq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load234, <2 x double> %broadcast.splat229, <2 x double> %wide.load236)
  %i.er = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load235, <2 x double> %broadcast.splat229, <2 x double> %wide.load237)
  %i.es = fmul <2 x double> %wide.load232, %i.eq
  %i.et = fmul <2 x double> %wide.load233, %i.er
  store <2 x double> %i.es, ptr %i.eo, align 8, !tbaa !22, !alias.scope !110, !noalias !111
  store <2 x double> %i.et, ptr %i.ep, align 8, !tbaa !22, !alias.scope !110, !noalias !111
  %index.next238 = add nuw i64 %index231, 4       ; 2 uses
  %i.eu = icmp eq i64 %index.next238, %n.vec227
  br i1 %i.eu, label %middle.block239, label %vector.body230, !llvm.loop !95

middle.block239:                                  ; preds = %vector.body230
  br i1 %cmp.n240, label %fblock.exit.loopexit.us.us.us, label %.lr.ph44.i.i.us.us.us.preheader

.lr.ph44.i.i.us.us.us.preheader:                  ; preds = %._crit_edge41.split.i.i.us.us.us, %middle.block239
  %indvars.iv53.i.i.us.us.us.ph = phi i64 [ %n.vec227, %middle.block239 ], [ 0, %._crit_edge41.split.i.i.us.us.us ] ; 6 uses
  br i1 %lcmp.mod271.not, label %.lr.ph44.i.i.us.us.us.prol.loopexit, label %.lr.ph44.i.i.us.us.us.prol

.lr.ph44.i.i.us.us.us.prol:                       ; preds = %.lr.ph44.i.i.us.us.us.preheader
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv53.i.i.us.us.us.ph
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !22
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv53.i.i.us.us.us.ph
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !22
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv53.i.i.us.us.us.ph ; 2 uses
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !22
  %i.fb = tail call double @llvm.fmuladd.f64(double %i.ey, double %i.ej, double %i.fa)
  %i.fc = fmul double %i.ew, %i.fb
  store double %i.fc, ptr %i.ez, align 8, !tbaa !22
  %indvars.iv.next54.i.i.us.us.us.prol = or disjoint i64 %indvars.iv53.i.i.us.us.us.ph, 1
  br label %.lr.ph44.i.i.us.us.us.prol.loopexit

.lr.ph44.i.i.us.us.us.prol.loopexit:              ; preds = %.lr.ph44.i.i.us.us.us.prol, %.lr.ph44.i.i.us.us.us.preheader
  %indvars.iv53.i.i.us.us.us.unr = phi i64 [ %indvars.iv53.i.i.us.us.us.ph, %.lr.ph44.i.i.us.us.us.preheader ], [ %indvars.iv.next54.i.i.us.us.us.prol, %.lr.ph44.i.i.us.us.us.prol ]
  %i.fd = icmp eq i64 %indvars.iv53.i.i.us.us.us.ph, %i.bk
  br i1 %i.fd, label %fblock.exit.loopexit.us.us.us, label %.lr.ph44.i.i.us.us.us

.lr.ph44.i.i.us.us.us:                            ; preds = %.lr.ph44.i.i.us.us.us.prol.loopexit, %.lr.ph44.i.i.us.us.us
  %indvars.iv53.i.i.us.us.us = phi i64 [ %indvars.iv.next54.i.i.us.us.us.1, %.lr.ph44.i.i.us.us.us ], [ %indvars.iv53.i.i.us.us.us.unr, %.lr.ph44.i.i.us.us.us.prol.loopexit ] ; 5 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv53.i.i.us.us.us
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !22
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv53.i.i.us.us.us
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !22
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv53.i.i.us.us.us ; 2 uses
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !22
  %i.fk = tail call double @llvm.fmuladd.f64(double %i.fh, double %i.ej, double %i.fj)
  %i.fl = fmul double %i.ff, %i.fk
  store double %i.fl, ptr %i.fi, align 8, !tbaa !22
  %indvars.iv.next54.i.i.us.us.us = add nuw nsw i64 %indvars.iv53.i.i.us.us.us, 1 ; 3 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv.next54.i.i.us.us.us
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !22
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.next54.i.i.us.us.us
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !22
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next54.i.i.us.us.us ; 2 uses
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !22
  %i.fs = tail call double @llvm.fmuladd.f64(double %i.fp, double %i.ej, double %i.fr)
  %i.ft = fmul double %i.fn, %i.fs
  store double %i.ft, ptr %i.fq, align 8, !tbaa !22
  %indvars.iv.next54.i.i.us.us.us.1 = add nuw nsw i64 %indvars.iv53.i.i.us.us.us, 2 ; 2 uses
  %exitcond57.not.i.i.us.us.us.1 = icmp eq i64 %indvars.iv.next54.i.i.us.us.us.1, %i.ay
  br i1 %exitcond57.not.i.i.us.us.us.1, label %fblock.exit.loopexit.us.us.us, label %.lr.ph44.i.i.us.us.us, !llvm.loop !96

fblock.exit.loopexit.us.us.us:                    ; preds = %.lr.ph44.i.i.us.us.us.prol.loopexit, %.lr.ph44.i.i.us.us.us, %middle.block239
  %i.fu = fdiv double %i.ap, %..us.us.us          ; 4 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv158
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !113 ; 5 uses
  br i1 %min.iters.check201, label %scalar.ph200.preheader, label %vector.memcheck196

vector.memcheck196:                               ; preds = %fblock.exit.loopexit.us.us.us
  %i.fx = ptrtoaddr ptr %i.fw to i64              ; 2 uses
  %i.fy = sub i64 %i.ae, %i.fx
  %diff.check197 = icmp ugt i64 %i.fy, -32
  %.reass275 = add i64 %i.fx, %invariant.op274
  %diff.check198 = icmp ult i64 %.reass275, 31
  %conflict.rdx199 = or i1 %diff.check197, %diff.check198
  br i1 %conflict.rdx199, label %scalar.ph200.preheader, label %vector.ph202

vector.ph202:                                     ; preds = %vector.memcheck196
  %broadcast.splatinsert204 = insertelement <2 x double> poison, double %i.fu, i64 0
  %broadcast.splat205 = shufflevector <2 x double> %broadcast.splatinsert204, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body206

vector.body206:                                   ; preds = %vector.body206, %vector.ph202
  %index207 = phi i64 [ 0, %vector.ph202 ], [ %index.next212, %vector.body206 ] ; 4 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %index207 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %wide.load208 = load <2 x double>, ptr %i.fz, align 8, !tbaa !22
  %wide.load209 = load <2 x double>, ptr %i.ga, align 8, !tbaa !22
  %i.gb = getelementptr [8 x i8], ptr %invariant.gep187, i64 %index207 ; 2 uses
end_hunk_0
