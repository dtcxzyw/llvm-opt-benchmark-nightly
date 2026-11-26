Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/ark_KrylovDemo_prec?download=true
inline.NumInlined: 74
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 29
begin_hunk_0_@main:bb.a
  %i.op = icmp slt i32 %i.oo, 0
  br i1 %i.op, label %bb.am, label %check_flag.exit30.i

bb.am:                                            ; preds = %check_flag.exit28.i
  %i.oq = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.or = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.oq, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.55, i32 noundef %i.oo) #12 ; 0 uses
  br label %check_flag.exit30.i

check_flag.exit30.i:                              ; preds = %bb.am, %check_flag.exit28.i
  %i.os = call i32 @ARKodeGetLinWorkSpace(ptr noundef %i.ly, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #11 ; 2 uses
  %i.ot = icmp slt i32 %i.os, 0
  br i1 %i.ot, label %bb.an, label %check_flag.exit32.i

bb.an:                                            ; preds = %check_flag.exit30.i
  %i.ou = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ov = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ou, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.56, i32 noundef %i.os) #12 ; 0 uses
  br label %check_flag.exit32.i

check_flag.exit32.i:                              ; preds = %bb.an, %check_flag.exit30.i
  %i.ow = call i32 @ARKodeGetNumLinIters(ptr noundef %i.ly, ptr noundef nonnull %i.l) #11 ; 2 uses
  %i.ox = icmp slt i32 %i.ow, 0
  br i1 %i.ox, label %bb.ao, label %check_flag.exit34.i

bb.ao:                                            ; preds = %check_flag.exit32.i
  %i.oy = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.oz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.oy, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.57, i32 noundef %i.ow) #12 ; 0 uses
  br label %check_flag.exit34.i

check_flag.exit34.i:                              ; preds = %bb.ao, %check_flag.exit32.i
  %i.pa = call i32 @ARKodeGetNumPrecEvals(ptr noundef %i.ly, ptr noundef nonnull %i.m) #11 ; 2 uses
  %i.pb = icmp slt i32 %i.pa, 0
  br i1 %i.pb, label %bb.ap, label %check_flag.exit36.i

bb.ap:                                            ; preds = %check_flag.exit34.i
  %i.pc = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.pd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.pc, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.58, i32 noundef %i.pa) #12 ; 0 uses
  br label %check_flag.exit36.i

check_flag.exit36.i:                              ; preds = %bb.ap, %check_flag.exit34.i
  %i.pe = call i32 @ARKodeGetNumPrecSolves(ptr noundef %i.ly, ptr noundef nonnull %i.n) #11 ; 2 uses
  %i.pf = icmp slt i32 %i.pe, 0
  br i1 %i.pf, label %bb.aq, label %check_flag.exit38.i

bb.aq:                                            ; preds = %check_flag.exit36.i
  %i.pg = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ph = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.pg, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.59, i32 noundef %i.pe) #12 ; 0 uses
  br label %check_flag.exit38.i

check_flag.exit38.i:                              ; preds = %bb.aq, %check_flag.exit36.i
  %i.pi = call i32 @ARKodeGetNumLinConvFails(ptr noundef %i.ly, ptr noundef nonnull %i.o) #11 ; 2 uses
  %i.pj = icmp slt i32 %i.pi, 0
  br i1 %i.pj, label %bb.ar, label %check_flag.exit40.i

bb.ar:                                            ; preds = %check_flag.exit38.i
  %i.pk = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.pl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.pk, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.60, i32 noundef %i.pi) #12 ; 0 uses
  br label %check_flag.exit40.i

check_flag.exit40.i:                              ; preds = %bb.ar, %check_flag.exit38.i
  %i.pm = call i32 @ARKodeGetNumLinRhsEvals(ptr noundef %i.ly, ptr noundef nonnull %i.p) #11 ; 2 uses
  %i.pn = icmp slt i32 %i.pm, 0
  br i1 %i.pn, label %bb.as, label %PrintFinalStats.exit

bb.as:                                            ; preds = %check_flag.exit40.i
  %i.po = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.pp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.po, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.61, i32 noundef %i.pm) #12 ; 0 uses
  br label %PrintFinalStats.exit

PrintFinalStats.exit:                             ; preds = %check_flag.exit40.i, %bb.as
  %puts.i118 = call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  %i.pq = load i64, ptr %i.a, align 8, !tbaa !54
  %i.pr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.63, i64 noundef %i.pq) ; 0 uses
  %i.ps = load i64, ptr %i.b, align 8, !tbaa !54
  %i.pt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.64, i64 noundef %i.ps) ; 0 uses
  %i.pu = load i64, ptr %i.c, align 8, !tbaa !54
  %i.pv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.65, i64 noundef %i.pu) ; 0 uses
  %i.pw = load i64, ptr %i.d, align 8, !tbaa !54
  %i.px = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.66, i64 noundef %i.pw) ; 0 uses
  %i.py = load i64, ptr %i.e, align 8, !tbaa !54
  %i.pz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.67, i64 noundef %i.py) ; 0 uses
  %i.qa = load i64, ptr %i.f, align 8, !tbaa !54
  %i.qb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.68, i64 noundef %i.qa) ; 0 uses
  %i.qc = load i64, ptr %i.g, align 8, !tbaa !54
  %i.qd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.69, i64 noundef %i.qc) ; 0 uses
  %i.qe = load i64, ptr %i.p, align 8, !tbaa !54
  %i.qf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.70, i64 noundef %i.qe) ; 0 uses
  %i.qg = load i64, ptr %i.f, align 8, !tbaa !54
  %i.qh = load i64, ptr %i.p, align 8, !tbaa !54
  %i.qi = add nsw i64 %i.qh, %i.qg
  %i.qj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.71, i64 noundef %i.qi) ; 0 uses
  %i.qk = load i64, ptr %i.h, align 8, !tbaa !54
  %i.ql = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.72, i64 noundef %i.qk) ; 0 uses
  %i.qm = load i64, ptr %i.i, align 8, !tbaa !54
  %i.qn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.73, i64 noundef %i.qm) ; 0 uses
  %i.qo = load i64, ptr %i.l, align 8, !tbaa !54
  %i.qp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.74, i64 noundef %i.qo) ; 0 uses
  %i.qq = load i64, ptr %i.m, align 8, !tbaa !54
  %i.qr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.75, i64 noundef %i.qq) ; 0 uses
  %i.qs = load i64, ptr %i.n, align 8, !tbaa !54
  %i.qt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, i64 noundef %i.qs) ; 0 uses
  %i.qu = load i64, ptr %i.k, align 8, !tbaa !54
  %i.qv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i64 noundef %i.qu) ; 0 uses
  %i.qw = load i64, ptr %i.j, align 8, !tbaa !54
  %i.qx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.78, i64 noundef %i.qw) ; 0 uses
  %i.qy = load i64, ptr %i.o, align 8, !tbaa !54
  %i.qz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.79, i64 noundef %i.qy) ; 0 uses
  %i.ra = load i64, ptr %i.i, align 8, !tbaa !54  ; 2 uses
  %i.rb = icmp sgt i64 %i.ra, 0
  %i.rc = load i64, ptr %i.l, align 8
  %i.rd = sitofp i64 %i.rc to double
  %i.re = uitofp nneg i64 %i.ra to double
  %i.rf = fdiv double %i.rd, %i.re
  %i.rg = select i1 %i.rb, double %i.rf, double 0.000000e+00
  %i.rh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, double noundef %i.rg) ; 0 uses
  %i.ri = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34) ; 0 uses
  %puts15.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.7) ; 0 uses
  %i.rj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.81) ; 0 uses
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
  %i.rk = call i32 @SUNLinSolFree(ptr noundef %.2165) #11 ; 0 uses
  call fastcc void @FreeUserData(ptr noundef %i.an)
  %i.rl = call i32 @SUNContext_Free(ptr noundef nonnull %i.x) #11 ; 0 uses
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
  %i.a = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #11 ; 19 uses
  %i.b = tail call ptr @N_VGetArrayPointer(ptr noundef %2) #11 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.e = load i32, ptr %i.d, align 8, !tbaa !24   ; 14 uses
  %i.f = getelementptr i8, ptr %3, i64 696        ; 4 uses
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
  %i.y = shl nuw nsw i64 %wide.trip.count, 3      ; 3 uses
  %i.z = add nsw i64 %i.y, -8                     ; 2 uses
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.z ; 5 uses
  %i.aa = getelementptr i8, ptr %3, i64 %i.y
  %scevgep146 = getelementptr i8, ptr %i.aa, i64 616
  %scevgep147 = getelementptr i8, ptr %i.b, i64 %i.z
  %i.ab = getelementptr i8, ptr %3, i64 %i.y
  %scevgep148 = getelementptr i8, ptr %i.ab, i64 688
  %i.ac = shl nuw nsw i64 %i.s, 3
  %i.ad = getelementptr i8, ptr %3, i64 %i.ac
  %scevgep192 = getelementptr i8, ptr %i.ad, i64 480
  %i.ae = mul nuw nsw i64 %i.s, 48                ; 2 uses
  %i.af = shl nsw i64 %i.w, 3
  %i.ag = getelementptr i8, ptr %i.a, i64 %i.ae
  %i.ah = getelementptr i8, ptr %3, i64 %i.ae
  %i.ai = getelementptr i8, ptr %i.ah, i64 696
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
  %i.au = getelementptr i8, <2 x ptr> %i.at, <2 x i64> <i64 696, i64 0> ; 2 uses
  %i.av = trunc i64 %indvars.iv96 to i32
  %i.aw = mul i32 %i.i, %i.av                     ; 2 uses
  %i.ax = trunc i64 %indvars.iv96 to i32
  %i.ay = mul i32 %i.i, %i.ax                     ; 2 uses
  %i.az = trunc nuw nsw i64 %indvars.iv96 to i32
  %i.ba = uitofp nneg i32 %i.az to double
  %i.bb = fmul double %i.m, %i.ba
  %i.bc = mul nsw i64 %indvars.iv96, %i.w
  %i.bd = icmp eq i64 %indvars.iv96, 5
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
  %wide.load211 = load <2 x double>, ptr %i.cy, align 8, !tbaa !22, !alias.scope !72
  %wide.load212 = load <2 x double>, ptr %i.cz, align 8, !tbaa !22, !alias.scope !72
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %index210 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %wide.load213 = load <2 x double>, ptr %i.da, align 8, !tbaa !22, !alias.scope !73
  %wide.load214 = load <2 x double>, ptr %i.db, align 8, !tbaa !22, !alias.scope !73
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %index210 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 2 uses
  %wide.load215 = load <2 x double>, ptr %i.dc, align 8, !tbaa !22, !alias.scope !74, !noalias !75
  %wide.load216 = load <2 x double>, ptr %i.dd, align 8, !tbaa !22, !alias.scope !74, !noalias !75
  %i.de = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load213, <2 x double> %broadcast.splat, <2 x double> %wide.load215)
  %i.df = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load214, <2 x double> %broadcast.splat, <2 x double> %wide.load216)
  %i.dg = fmul <2 x double> %wide.load211, %i.de
  %i.dh = fmul <2 x double> %wide.load212, %i.df
  store <2 x double> %i.dg, ptr %i.dc, align 8, !tbaa !22, !alias.scope !74, !noalias !75
  store <2 x double> %i.dh, ptr %i.dd, align 8, !tbaa !22, !alias.scope !74, !noalias !75
  %index.next217 = add nuw i64 %index210, 4       ; 2 uses
  %i.di = icmp eq i64 %index.next217, %n.vec208
  br i1 %i.di, label %middle.block218, label %vector.body209, !llvm.loop !59

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
  br i1 %exitcond57.not.i.1, label %WebRates.exit, label %.lr.ph44.i, !llvm.loop !60

WebRates.exit:                                    ; preds = %.lr.ph44.i.prol.loopexit, %.lr.ph44.i, %middle.block218, %bb.b
  %i.ei = icmp eq i64 %indvars.iv92, 5
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
  %wide.load = load <2 x double>, ptr %i.gg, align 8, !tbaa !22, !alias.scope !76 ; 4 uses
  %i.gh = add i32 %i.ge, %i.bg
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.gi
  %wide.load172 = load <2 x double>, ptr %i.gj, align 8, !tbaa !22, !alias.scope !77
  %i.gk = fsub <2 x double> %wide.load, %wide.load172
  %i.gl = add nsw i32 %i.ge, %i.be
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.gm
  %wide.load173 = load <2 x double>, ptr %i.gn, align 8, !tbaa !22, !alias.scope !78
  %i.go = fsub <2 x double> %wide.load173, %wide.load
  %i.gp = add i32 %i.ge, %i.el
  %i.gq = sext i32 %i.gp to i64
  %i.gr = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.gq
  %wide.load174 = load <2 x double>, ptr %i.gr, align 8, !tbaa !22, !alias.scope !79
  %i.gs = fsub <2 x double> %wide.load, %wide.load174
  %i.gt = add nsw i32 %i.ge, %i.ej
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.gu
  %wide.load175 = load <2 x double>, ptr %i.gv, align 8, !tbaa !22, !alias.scope !80
  %i.gw = fsub <2 x double> %wide.load175, %wide.load
  %i.gx = getelementptr inbounds [8 x i8], ptr %i.h, i64 %index
  %wide.load176 = load <2 x double>, ptr %i.gx, align 8, !tbaa !22, !alias.scope !81, !noalias !82
  %i.gy = fsub <2 x double> %i.go, %i.gk
  %i.gz = getelementptr inbounds [8 x i8], ptr %i.g, i64 %index
  %wide.load177 = load <2 x double>, ptr %i.gz, align 8, !tbaa !22, !alias.scope !81, !noalias !82
  %i.ha = fsub <2 x double> %i.gw, %i.gs
  %i.hb = fmul <2 x double> %wide.load177, %i.ha
  %i.hc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load176, <2 x double> %i.gy, <2 x double> %i.hb)
  %i.hd = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.gf
  %wide.load178 = load <2 x double>, ptr %i.hd, align 8, !tbaa !22, !alias.scope !83, !noalias !82
  %i.he = fadd <2 x double> %wide.load178, %i.hc
  %i.hf = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.gf
  store <2 x double> %i.he, ptr %i.hf, align 8, !tbaa !22, !alias.scope !82, !noalias !84
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.hg = icmp eq i64 %index.next, %n.vec
  br i1 %i.hg, label %middle.block, label %vector.body, !llvm.loop !70

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
end_hunk_0
begin_hunk_1_@FreeUserData:bb.a
}

declare i32 @SUNContext_Free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

declare ptr @SUNDlsMat_newDenseMat(i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @SUNDlsMat_newIndexArray(i64 noundef) local_unnamed_addr #2

declare ptr @N_VGetArrayPointer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #6

declare i32 @ARKodeGetNumSteps(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeGetNumRhsEvals(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeGetNumNonlinSolvIters(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeGetLastStep(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeGetWorkSpace(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeGetNumLinSolvSetups(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeGetNumErrTestFails(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeGetNumNonlinSolvConvFails(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeGetLinWorkSpace(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeGetNumLinIters(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeGetNumPrecEvals(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeGetNumPrecSolves(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeGetNumLinConvFails(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeGetNumLinRhsEvals(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @SUNDlsMat_destroyMat(ptr noundef) local_unnamed_addr #2

declare void @SUNDlsMat_destroyArray(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

declare i32 @ARKodeGetErrWeights(ptr noundef, ptr noundef) local_unnamed_addr #2

declare double @N_VWrmsNorm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

declare void @SUNDlsMat_denseAddIdentity(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @SUNDlsMat_denseGETRF(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @N_VScale(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @SUNDlsMat_denseGETRS(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @N_VConst(double noundef, ptr noundef) local_unnamed_addr #2

declare void @N_VLinearSum(double noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

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
!19 = !{!"", !5, i64 0, !5, i64 32, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !5, i64 104, !5, i64 116, !5, i64 128, !5, i64 152, !5, i64 176, !5, i64 184, !5, i64 192, !5, i64 480, !5, i64 528, !5, i64 576, !5, i64 624, !17, i64 672, !17, i64 680, !17, i64 688, !5, i64 696, !18, i64 2424, !18, i64 2432, !9, i64 2440}
!20 = !{!19, !18, i64 2432}
!21 = !{!19, !18, i64 2424}
!22 = !{!17, !17, i64 0}
!23 = !{!6, !6, i64 0}
!24 = !{!19, !6, i64 64}
!25 = !{!19, !17, i64 680}
!26 = !{!19, !17, i64 672}
!27 = !{!19, !6, i64 68}
!28 = !{!"llvm.loop.isvectorized", i32 1}
!29 = !{!"llvm.loop.unroll.runtime.disable"}
!30 = !{!19, !9, i64 2440}
!31 = !{!19, !6, i64 72}
!32 = !{!19, !6, i64 88}
!33 = !{!19, !6, i64 92}
!34 = !{!19, !6, i64 80}
!35 = distinct !{null}
!36 = distinct !{!36, !28, !29}
!37 = distinct !{!37, !29, !28}
!38 = distinct !{!38, !28, !29}
!39 = distinct !{!39, !29, !28}
!40 = distinct !{!40, !28, !29}
!41 = distinct !{!41, !29, !28}
!42 = distinct !{!42, !28, !29}
!43 = distinct !{!43, !29, !28}
!44 = distinct !{!44, !28, !29}
!45 = distinct !{!45, !29, !28}
!46 = distinct !{!46, !28, !29}
!47 = distinct !{!47, !29, !28}
!48 = !{!9, !9, i64 0}
!49 = !{!"p1 omnipotent char", !9, i64 0}
!50 = !{!49, !49, i64 0}
!51 = !{!"p1 _ZTS11SUNContext_", !9, i64 0}
!52 = !{!51, !51, i64 0}
!53 = !{!"long", !5, i64 0}
!54 = !{!53, !53, i64 0}
!55 = distinct !{!55, i1 false, !"LVerDomain"}
!56 = distinct !{!56, !55}
!57 = distinct !{!57, !55}
!58 = distinct !{!58, !55}
!59 = distinct !{!59, !28, !29}
!60 = distinct !{!60, !28}
!61 = distinct !{!61, i1 false, !"LVerDomain"}
!62 = distinct !{!62, !61}
!63 = distinct !{!63, !61}
!64 = distinct !{!64, !61}
!65 = distinct !{!65, !61}
!66 = distinct !{!66, !61}
!67 = distinct !{!67, !61}
!68 = distinct !{!68, !61}
!69 = distinct !{!69, !61}
!70 = distinct !{!70, !28, !29}
!71 = distinct !{!71, !28}
!72 = !{!56}
!73 = !{!57}
!74 = !{!58}
!75 = !{!56, !57}
!76 = !{!62}
!77 = !{!63}
!78 = !{!64}
!79 = !{!65}
!80 = !{!66}
!81 = !{!67}
!82 = !{!68}
!83 = !{!69}
!84 = !{!66, !65, !64, !63, !62}
!85 = distinct !{!85, i1 false, !"LVerDomain"}
!86 = distinct !{!86, !85}
!87 = distinct !{!87, !85}
!88 = distinct !{!88, !85}
!89 = distinct !{!89, !28, !29}
!90 = distinct !{!90, !28}
!91 = distinct !{!91, i1 false, !"LVerDomain"}
!92 = distinct !{!92, !91}
!93 = distinct !{!93, !91}
!94 = distinct !{!94, !91}
!95 = distinct !{!95, !28, !29}
!96 = distinct !{!96, !28}
!97 = distinct !{!97, !28, !29}
!98 = distinct !{!98, !28}
!99 = distinct !{!99, !28, !29}
!100 = distinct !{!100, !28}
!101 = !{!19, !17, i64 688}
!102 = !{!19, !6, i64 96}
!103 = !{!19, !6, i64 100}
!104 = !{!86}
!105 = !{!87}
!106 = !{!88}
!107 = !{!86, !87}
!108 = !{!92}
!109 = !{!93}
!110 = !{!94}
!111 = !{!92, !93}
!112 = !{!"p1 double", !9, i64 0}
!113 = !{!112, !112, i64 0}
!114 = distinct !{!114, !28, !29}
!115 = distinct !{!115, !29, !28}
!116 = distinct !{!116, !28, !29}
!117 = distinct !{!117, !180}
!118 = distinct !{!118, !28}
!119 = distinct !{!119, !28, !29}
!120 = distinct !{!120, !28}
!121 = distinct !{!121, !28, !29}
!122 = distinct !{!122, !28}
!123 = distinct !{!123, !28, !29}
!124 = distinct !{!124, !180}
!125 = distinct !{!125, !28}
!126 = distinct !{!126, !28, !29}
!127 = distinct !{!127, !28}
!128 = distinct !{!128, !28, !29}
!129 = distinct !{!129, !28}
!130 = distinct !{!130, !28, !29}
!131 = distinct !{!131, !180}
!132 = distinct !{!132, !28}
!133 = distinct !{!133, !28, !29}
!134 = distinct !{!134, !29, !28}
!135 = distinct !{!135, !28, !29}
!136 = distinct !{!136, !29, !28}
!137 = distinct !{!137, !28, !29}
!138 = distinct !{!138, !29, !28}
!139 = distinct !{!139, !28, !29}
!140 = distinct !{!140, !29, !28}
!141 = distinct !{!141, i1 false, !"LVerDomain"}
!142 = distinct !{!142, !141}
!143 = distinct !{!143, !141}
!144 = distinct !{!144, !28, !29}
!145 = distinct !{!145, !28}
!146 = distinct !{!146, !28, !29}
!147 = distinct !{!147, !29, !28}
!148 = distinct !{!148, i1 false, !"LVerDomain"}
!149 = distinct !{!149, !148}
!150 = distinct !{!150, !148}
!151 = distinct !{!151, !28, !29}
!152 = distinct !{!152, !28}
!153 = distinct !{!153, !28, !29}
!154 = distinct !{!154, !29, !28}
!155 = distinct !{!155, i1 false, !"LVerDomain"}
!156 = distinct !{!156, !155}
!157 = distinct !{!157, !155}
!158 = distinct !{!158, !28, !29}
!159 = distinct !{!159, !28}
!160 = distinct !{!160, i1 false, !"LVerDomain"}
!161 = distinct !{!161, !160}
!162 = distinct !{!162, !160}
!163 = distinct !{!163, !28, !29}
!164 = distinct !{!164, !28}
!165 = distinct !{!165, !28, !29}
!166 = distinct !{!166, !29, !28}
!167 = distinct !{!167, i1 false, !"LVerDomain"}
!168 = distinct !{!168, !167}
!169 = distinct !{!169, !167}
!170 = distinct !{!170, !28, !29}
!171 = distinct !{!171, !28}
!172 = distinct !{!172, !28, !29}
!173 = distinct !{!173, !29, !28}
!174 = distinct !{!174, i1 false, !"LVerDomain"}
!175 = distinct !{!175, !174}
!176 = distinct !{!176, !174}
!177 = distinct !{!177, !28, !29}
!178 = distinct !{!178, !28}
!179 = !{!19, !6, i64 84}
!180 = !{!"llvm.loop.unroll.disable"}
!181 = !{!142}
!182 = !{!143}
!183 = !{!149}
!184 = !{!150}
!185 = !{!156}
!186 = !{!157}
!187 = !{!161}
!188 = !{!162}
!189 = !{!168}
!190 = !{!169}
!191 = !{!175}
!192 = !{!176}
end_hunk_1
