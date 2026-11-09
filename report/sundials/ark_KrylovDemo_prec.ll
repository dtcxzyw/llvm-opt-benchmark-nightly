Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/ark_KrylovDemo_prec?download=true
inline.NumInlined: 74
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 35
begin_hunk_0_@main:bb.a
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
  %i.e = load i32, ptr %i.d, align 8, !tbaa !24   ; 14 uses
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
  %scevgep = getelementptr i8, ptr %i.z, i64 616
  %i.aa = shl nuw nsw i64 %i.s, 3
  %i.ab = getelementptr i8, ptr %3, i64 %i.aa
  %scevgep189 = getelementptr i8, ptr %i.ab, i64 480
  %i.ac = mul nuw nsw i64 %i.s, 48                ; 2 uses
  %i.ad = shl nsw i64 %i.w, 3
  %i.ae = getelementptr i8, ptr %i.a, i64 %i.ac
  %i.af = getelementptr i8, ptr %3, i64 %i.ac
  %i.ag = getelementptr i8, ptr %i.af, i64 696
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
  %i.as = getelementptr i8, <2 x ptr> %i.ar, <2 x i64> <i64 696, i64 0> ; 2 uses
  %i.at = trunc i64 %indvars.iv96 to i32
  %i.au = mul i32 %i.i, %i.at                     ; 2 uses
  %i.av = trunc i64 %indvars.iv96 to i32
  %i.aw = mul i32 %i.i, %i.av                     ; 2 uses
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
  %wide.load208 = load <2 x double>, ptr %i.cw, align 8, !tbaa !22, !alias.scope !72
  %wide.load209 = load <2 x double>, ptr %i.cx, align 8, !tbaa !22, !alias.scope !72
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %index207 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %wide.load210 = load <2 x double>, ptr %i.cy, align 8, !tbaa !22, !alias.scope !73
  %wide.load211 = load <2 x double>, ptr %i.cz, align 8, !tbaa !22, !alias.scope !73
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index207 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16 ; 2 uses
  %wide.load212 = load <2 x double>, ptr %i.da, align 8, !tbaa !22, !alias.scope !74, !noalias !75
  %wide.load213 = load <2 x double>, ptr %i.db, align 8, !tbaa !22, !alias.scope !74, !noalias !75
  %i.dc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load210, <2 x double> %broadcast.splat, <2 x double> %wide.load212)
  %i.dd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load211, <2 x double> %broadcast.splat, <2 x double> %wide.load213)
  %i.de = fmul <2 x double> %wide.load208, %i.dc
  %i.df = fmul <2 x double> %wide.load209, %i.dd
  store <2 x double> %i.de, ptr %i.da, align 8, !tbaa !22, !alias.scope !74, !noalias !75
  store <2 x double> %i.df, ptr %i.db, align 8, !tbaa !22, !alias.scope !74, !noalias !75
  %index.next214 = add nuw i64 %index207, 4       ; 2 uses
  %i.dg = icmp eq i64 %index.next214, %n.vec205
  br i1 %i.dg, label %middle.block215, label %vector.body206, !llvm.loop !59

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
  br i1 %exitcond57.not.i.1, label %WebRates.exit, label %.lr.ph44.i, !llvm.loop !60

WebRates.exit:                                    ; preds = %.lr.ph44.i.prol.loopexit, %.lr.ph44.i, %middle.block215, %bb.b
  %i.eg = icmp eq i64 %indvars.iv92, 5
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
  %i.fe = getelementptr i8, ptr %4, i64 696
  %5 = add i64 %i.fd, %i.y                        ; 2 uses
  %i.ff = getelementptr i8, ptr %3, i64 %5
  %i.fg = getelementptr i8, ptr %i.ff, i64 688
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
  %wide.load = load <2 x double>, ptr %i.gh, align 8, !tbaa !22, !alias.scope !76 ; 4 uses
  %i.gi = add i32 %i.gf, %i.be
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.gj
  %wide.load169 = load <2 x double>, ptr %i.gk, align 8, !tbaa !22, !alias.scope !77
  %i.gl = fsub <2 x double> %wide.load, %wide.load169
  %i.gm = add nsw i32 %i.gf, %i.bc
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.gn
  %wide.load170 = load <2 x double>, ptr %i.go, align 8, !tbaa !22, !alias.scope !78
  %i.gp = fsub <2 x double> %wide.load170, %wide.load
  %i.gq = add i32 %i.gf, %i.ej
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.gr
  %wide.load171 = load <2 x double>, ptr %i.gs, align 8, !tbaa !22, !alias.scope !79
  %i.gt = fsub <2 x double> %wide.load, %wide.load171
  %i.gu = add nsw i32 %i.gf, %i.eh
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.gv
  %wide.load172 = load <2 x double>, ptr %i.gw, align 8, !tbaa !22, !alias.scope !80
  %i.gx = fsub <2 x double> %wide.load172, %wide.load
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.h, i64 %index
  %wide.load173 = load <2 x double>, ptr %i.gy, align 8, !tbaa !22, !alias.scope !81, !noalias !82
  %i.gz = fsub <2 x double> %i.gp, %i.gl
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.g, i64 %index
  %wide.load174 = load <2 x double>, ptr %i.ha, align 8, !tbaa !22, !alias.scope !81, !noalias !82
  %i.hb = fsub <2 x double> %i.gx, %i.gt
  %i.hc = fmul <2 x double> %wide.load174, %i.hb
  %i.hd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load173, <2 x double> %i.gz, <2 x double> %i.hc)
  %i.he = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.gg
  %wide.load175 = load <2 x double>, ptr %i.he, align 8, !tbaa !22, !alias.scope !83, !noalias !82
  %i.hf = fadd <2 x double> %wide.load175, %i.hd
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.gg
  store <2 x double> %i.hf, ptr %i.hg, align 8, !tbaa !22, !alias.scope !82, !noalias !84
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.hh = icmp eq i64 %index.next, %n.vec
  br i1 %i.hh, label %middle.block, label %vector.body, !llvm.loop !70

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
  %i.ad = tail call ptr @N_VGetArrayPointer(ptr noundef %i.ac) #11 ; 24 uses
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
  %i.ay = zext i32 %i.aw to i64                   ; 15 uses
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
  %i.bc = shl nuw nsw i64 %i.ay, 3                ; 3 uses
  %i.bd = getelementptr i8, ptr %6, i64 %i.bc
  %scevgep = getelementptr i8, ptr %i.bd, i64 480
  %scevgep229 = getelementptr i8, ptr %i.d, i64 %i.bc
  %scevgep231 = getelementptr i8, ptr %i.ad, i64 %i.bc ; 2 uses
  %i.be = mul nuw nsw i64 %i.ay, 56
  %i.bf = getelementptr i8, ptr %6, i64 %i.be
  %scevgep266 = getelementptr i8, ptr %i.bf, i64 144
  %i.bg = shl nuw nsw i64 %i.ay, 3                ; 2 uses
  %scevgep267 = getelementptr i8, ptr %i.d, i64 %i.bg
  %scevgep269 = getelementptr i8, ptr %i.ad, i64 %i.bg ; 2 uses
  %i.bh = insertelement <2 x ptr> poison, ptr %i.ad, i64 0
  %i.bi = insertelement <2 x ptr> %i.bh, ptr %i.ar, i64 1
  %i.bj = insertelement <2 x ptr> poison, ptr %scevgep269, i64 1
  %i.bk = insertelement <2 x ptr> poison, ptr %i.ad, i64 1
  %i.bl = insertelement <2 x ptr> poison, ptr %scevgep269, i64 0
  %i.bm = insertelement <2 x ptr> %i.bl, ptr %scevgep266, i64 1
  %min.iters.check271 = icmp ult i32 %i.aw, 5
  %i.bn = and i64 %i.ay, 3                        ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 0
  %i.bp = select i1 %i.bo, i64 4, i64 %i.bn
  %n.vec281 = sub nsw i64 %i.ay, %i.bp            ; 2 uses
  %i.bq = add nsw i64 %i.ay, -1
  %min.iters.check233 = icmp ult i32 %i.aw, 4
  %bound0235 = icmp ult ptr %i.ad, %scevgep
  %bound1236 = icmp ult ptr %i.as, %scevgep231
  %found.conflict237 = and i1 %bound0235, %bound1236
  %n.vec240 = and i64 %i.ay, 2147483644           ; 3 uses
  %cmp.n253 = icmp eq i64 %n.vec240, %i.ay
  %xtraiter294 = and i64 %i.ay, 1
  %lcmp.mod295.not = icmp eq i64 %xtraiter294, 0
  %i.br = add nsw i64 %i.ay, -1
  %min.iters.check202 = icmp ult i32 %i.p, 4
  %n.vec208 = and i64 %wide.trip.count161, 2147483644 ; 3 uses
  %cmp.n219 = icmp eq i64 %n.vec208, %wide.trip.count161
  %xtraiter296 = and i64 %wide.trip.count161, 1
  %lcmp.mod297.not = icmp eq i64 %xtraiter296, 0
  %i.bs = add nsw i64 %wide.trip.count161, -1
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.split126.us.us
  %indvars.iv168 = phi i64 [ %indvars.iv.next169, %._crit_edge.split126.us.us ], [ 0, %.lr.ph.us.preheader ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv168
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !23 ; 3 uses
  %i.bv = mul nsw i32 %i.bu, %i.z
  %i.bw = mul nuw nsw i64 %indvars.iv168, %i.ba
  %i.bx = sitofp i32 %i.bu to double
  %i.by = mul nsw i32 %i.av, %i.bu
  %invariant.gep189 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.bw
  %i.bz = insertelement <2 x double> poison, double %i.bx, i64 1
  br label %.lr.ph116.us.us

.lr.ph116.us.us:                                  ; preds = %._crit_edge117.split.us.us.us, %.lr.ph.us
  %indvars.iv163 = phi i64 [ %indvars.iv.next164, %._crit_edge117.split.us.us.us ], [ 0, %.lr.ph.us ] ; 3 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv163
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !23 ; 3 uses
  %i.cc = mul nsw i32 %i.cb, %i.p
  %i.cd = add nsw i32 %i.cc, %i.bv
  %i.ce = add nsw i32 %i.by, %i.cb
  %i.cf = sitofp i32 %i.cb to double
  %i.cg = mul nsw i32 %i.aw, %i.ce
  %i.ch = sext i32 %i.cg to i64                   ; 2 uses
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.ch ; 7 uses
  %gep190 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep189, i64 %indvars.iv163
  %i.cj = load ptr, ptr %gep190, align 8, !tbaa !14
  %i.ck = sext i32 %i.cd to i64                   ; 3 uses
  %invariant.gep187 = getelementptr [8 x i8], ptr %i.aa, i64 %i.ck ; 4 uses
  %i.cl = shl nsw i64 %i.ck, 3
  %i.cm = shl nsw i64 %i.ch, 3                    ; 2 uses
  %scevgep230 = getelementptr i8, ptr %scevgep229, i64 %i.cm
  %scevgep268 = getelementptr i8, ptr %scevgep267, i64 %i.cm
  %i.cn = insertelement <2 x double> %i.bz, double %i.cf, i64 0
  %i.co = insertelement <2 x ptr> %i.bj, ptr %scevgep268, i64 0
  %i.cp = insertelement <2 x ptr> %i.bk, ptr %i.ci, i64 0
  %i.cq = icmp ult <2 x ptr> %i.bi, %i.co
  %i.cr = icmp ult <2 x ptr> %i.cp, %i.bm
  %i.cs = and <2 x i1> %i.cr, %i.cq
  %i.ct = bitcast <2 x i1> %i.cs to i2
  %.not = icmp eq i2 %i.ct, 0
  %bound0 = icmp ult ptr %i.ad, %scevgep230
  %bound1 = icmp ult ptr %i.ci, %scevgep231
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx238 = or i1 %found.conflict, %found.conflict237
  %7 = add i64 %i.cl, %i.a
  %invariant.op298 = sub i64 -697, %7
  br label %.preheader.preheader.i.i.us.us.us

.preheader.preheader.i.i.us.us.us:                ; preds = %._crit_edge.us.us.us, %.lr.ph116.us.us
  %indvars.iv158 = phi i64 [ %indvars.iv.next159, %._crit_edge.us.us.us ], [ 0, %.lr.ph116.us.us ] ; 3 uses
  %i.cu = add nsw i64 %indvars.iv158, %i.ck       ; 2 uses
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.cu ; 3 uses
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
  %brmerge300 = select i1 %min.iters.check271, i1 true, i1 %.not.not
  br i1 %brmerge300, label %scalar.ph270.preheader, label %vector.ph280

vector.ph280:                                     ; preds = %.preheader.i.i.us.us.us
  %i.dg = load double, ptr %i.df, align 8, !tbaa !22, !alias.scope !104
  %broadcast.splatinsert286 = insertelement <2 x double> poison, double %i.dg, i64 0
  %broadcast.splat287 = shufflevector <2 x double> %broadcast.splatinsert286, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body282

vector.body282:                                   ; preds = %vector.body282, %vector.ph280
  %index283 = phi i64 [ 0, %vector.ph280 ], [ %index.next288, %vector.body282 ] ; 6 uses
  %i.dh = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i.i.us.us.us, i64 %index283
  %i.di = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i.i.us.us.us, i64 %index283
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 48
  %i.dk = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i.i.us.us.us, i64 %index283
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 96
  %i.dm = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i.i.us.us.us, i64 %index283
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 144
  %i.do = load double, ptr %i.dh, align 8, !tbaa !22, !alias.scope !105
  %i.dp = load double, ptr %i.dj, align 8, !tbaa !22, !alias.scope !105
  %i.dq = insertelement <2 x double> poison, double %i.do, i64 0
  %i.dr = insertelement <2 x double> %i.dq, double %i.dp, i64 1
  %i.ds = load double, ptr %i.dl, align 8, !tbaa !22, !alias.scope !105
  %i.dt = load double, ptr %i.dn, align 8, !tbaa !22, !alias.scope !105
  %i.du = insertelement <2 x double> poison, double %i.ds, i64 0
  %i.dv = insertelement <2 x double> %i.du, double %i.dt, i64 1
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %index283 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16 ; 2 uses
  %wide.load284 = load <2 x double>, ptr %i.dw, align 8, !tbaa !22, !alias.scope !106, !noalias !107
  %wide.load285 = load <2 x double>, ptr %i.dx, align 8, !tbaa !22, !alias.scope !106, !noalias !107
  %i.dy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat287, <2 x double> %i.dr, <2 x double> %wide.load284)
  %i.dz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat287, <2 x double> %i.dv, <2 x double> %wide.load285)
  store <2 x double> %i.dy, ptr %i.dw, align 8, !tbaa !22, !alias.scope !106, !noalias !107
  store <2 x double> %i.dz, ptr %i.dx, align 8, !tbaa !22, !alias.scope !106, !noalias !107
  %index.next288 = add nuw i64 %index283, 4       ; 2 uses
  %i.ea = icmp eq i64 %index.next288, %n.vec281
  br i1 %i.ea, label %scalar.ph270.preheader, label %vector.body282, !llvm.loop !89

scalar.ph270.preheader:                           ; preds = %vector.body282, %.preheader.i.i.us.us.us
  %indvars.iv.i.i.us.us.us.ph = phi i64 [ 0, %.preheader.i.i.us.us.us ], [ %n.vec281, %vector.body282 ] ; 6 uses
  %i.eb = sub nsw i64 %i.ay, %indvars.iv.i.i.us.us.us.ph
  %xtraiter292 = and i64 %i.eb, 1
  %lcmp.mod293.not = icmp eq i64 %xtraiter292, 0
  br i1 %lcmp.mod293.not, label %scalar.ph270.prol.loopexit, label %scalar.ph270.prol

scalar.ph270.prol:                                ; preds = %scalar.ph270.preheader
  %i.ec = load double, ptr %i.df, align 8, !tbaa !22
  %gep.i.i.us.us.us.prol = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i.i.us.us.us, i64 %indvars.iv.i.i.us.us.us.ph
  %i.ed = load double, ptr %gep.i.i.us.us.us.prol, align 8, !tbaa !22
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i.i.us.us.us.ph ; 2 uses
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !22
  %i.eg = tail call double @llvm.fmuladd.f64(double %i.ec, double %i.ed, double %i.ef)
  store double %i.eg, ptr %i.ee, align 8, !tbaa !22
  %indvars.iv.next.i.i.us.us.us.prol = add nuw nsw i64 %indvars.iv.i.i.us.us.us.ph, 1
  br label %scalar.ph270.prol.loopexit

scalar.ph270.prol.loopexit:                       ; preds = %scalar.ph270.prol, %scalar.ph270.preheader
  %indvars.iv.i.i.us.us.us.unr = phi i64 [ %indvars.iv.i.i.us.us.us.ph, %scalar.ph270.preheader ], [ %indvars.iv.next.i.i.us.us.us.prol, %scalar.ph270.prol ]
  %i.eh = icmp eq i64 %indvars.iv.i.i.us.us.us.ph, %i.bq
  br i1 %i.eh, label %._crit_edge.i.i.us.us.us, label %scalar.ph270

scalar.ph270:                                     ; preds = %scalar.ph270.prol.loopexit, %scalar.ph270
  %indvars.iv.i.i.us.us.us = phi i64 [ %indvars.iv.next.i.i.us.us.us.1, %scalar.ph270 ], [ %indvars.iv.i.i.us.us.us.unr, %scalar.ph270.prol.loopexit ] ; 4 uses
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
  br i1 %exitcond.not.i.i.us.us.us.1, label %._crit_edge.i.i.us.us.us, label %scalar.ph270, !llvm.loop !90

._crit_edge.i.i.us.us.us:                         ; preds = %scalar.ph270, %scalar.ph270.prol.loopexit
  %indvars.iv.next49.i.i.us.us.us = add nuw nsw i64 %indvars.iv48.i.i.us.us.us, 1 ; 2 uses
  %exitcond52.not.i.i.us.us.us = icmp eq i64 %indvars.iv.next49.i.i.us.us.us, %i.ay
  br i1 %exitcond52.not.i.i.us.us.us, label %._crit_edge41.split.i.i.us.us.us, label %.preheader.i.i.us.us.us

._crit_edge41.split.i.i.us.us.us:                 ; preds = %._crit_edge.i.i.us.us.us
  %i.es = fmul <2 x double> %i.de, %i.cn          ; 2 uses
  %i.et = extractelement <2 x double> %i.es, i64 0
  %i.eu = extractelement <2 x double> %i.es, i64 1
  %i.ev = tail call double @llvm.fmuladd.f64(double %i.et, double %i.eu, double 1.000000e+00) ; 4 uses
  %brmerge301 = select i1 %min.iters.check233, i1 true, i1 %conflict.rdx238
  br i1 %brmerge301, label %.lr.ph44.i.i.us.us.us.preheader, label %vector.ph239

vector.ph239:                                     ; preds = %._crit_edge41.split.i.i.us.us.us
  %broadcast.splatinsert241 = insertelement <2 x double> poison, double %i.ev, i64 0
  %broadcast.splat242 = shufflevector <2 x double> %broadcast.splatinsert241, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body243

vector.body243:                                   ; preds = %vector.body243, %vector.ph239
  %index244 = phi i64 [ 0, %vector.ph239 ], [ %index.next251, %vector.body243 ] ; 4 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %index244 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %wide.load245 = load <2 x double>, ptr %i.ew, align 8, !tbaa !22, !alias.scope !108
  %wide.load246 = load <2 x double>, ptr %i.ex, align 8, !tbaa !22, !alias.scope !108
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index244 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %wide.load247 = load <2 x double>, ptr %i.ey, align 8, !tbaa !22, !alias.scope !109
  %wide.load248 = load <2 x double>, ptr %i.ez, align 8, !tbaa !22, !alias.scope !109
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %index244 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16 ; 2 uses
  %wide.load249 = load <2 x double>, ptr %i.fa, align 8, !tbaa !22, !alias.scope !110, !noalias !111
  %wide.load250 = load <2 x double>, ptr %i.fb, align 8, !tbaa !22, !alias.scope !110, !noalias !111
  %i.fc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load247, <2 x double> %broadcast.splat242, <2 x double> %wide.load249)
  %i.fd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load248, <2 x double> %broadcast.splat242, <2 x double> %wide.load250)
  %i.fe = fmul <2 x double> %wide.load245, %i.fc
  %i.ff = fmul <2 x double> %wide.load246, %i.fd
  store <2 x double> %i.fe, ptr %i.fa, align 8, !tbaa !22, !alias.scope !110, !noalias !111
  store <2 x double> %i.ff, ptr %i.fb, align 8, !tbaa !22, !alias.scope !110, !noalias !111
  %index.next251 = add nuw i64 %index244, 4       ; 2 uses
  %i.fg = icmp eq i64 %index.next251, %n.vec240
  br i1 %i.fg, label %middle.block252, label %vector.body243, !llvm.loop !95

middle.block252:                                  ; preds = %vector.body243
  br i1 %cmp.n253, label %fblock.exit.loopexit.us.us.us, label %.lr.ph44.i.i.us.us.us.preheader

.lr.ph44.i.i.us.us.us.preheader:                  ; preds = %._crit_edge41.split.i.i.us.us.us, %middle.block252
  %indvars.iv53.i.i.us.us.us.ph = phi i64 [ %n.vec240, %middle.block252 ], [ 0, %._crit_edge41.split.i.i.us.us.us ] ; 6 uses
  br i1 %lcmp.mod295.not, label %.lr.ph44.i.i.us.us.us.prol.loopexit, label %.lr.ph44.i.i.us.us.us.prol

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
  br i1 %exitcond57.not.i.i.us.us.us.1, label %fblock.exit.loopexit.us.us.us, label %.lr.ph44.i.i.us.us.us, !llvm.loop !96

end_hunk_0
