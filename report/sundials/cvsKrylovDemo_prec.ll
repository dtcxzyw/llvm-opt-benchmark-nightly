Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/cvsKrylovDemo_prec?download=true
inline.NumInlined: 70
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 35
begin_hunk_0_@main:bb.a
  %i.nx = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ny = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.nx, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.54, i32 noundef %i.nv) #11 ; 0 uses
  br label %check_retval.exit27.i

check_retval.exit27.i:                            ; preds = %bb.ah, %check_retval.exit25.i
  %i.nz = call i32 @CVodeGetLinWorkSpace(ptr noundef %.pre, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #10 ; 2 uses
  %i.oa = icmp slt i32 %i.nz, 0
  br i1 %i.oa, label %bb.ai, label %check_retval.exit29.i

bb.ai:                                            ; preds = %check_retval.exit27.i
  %i.ob = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.oc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ob, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.55, i32 noundef %i.nz) #11 ; 0 uses
  br label %check_retval.exit29.i

check_retval.exit29.i:                            ; preds = %bb.ai, %check_retval.exit27.i
  %i.od = call i32 @CVodeGetNumLinIters(ptr noundef %.pre, ptr noundef nonnull %i.k) #10 ; 2 uses
  %i.oe = icmp slt i32 %i.od, 0
  br i1 %i.oe, label %bb.aj, label %check_retval.exit31.i

bb.aj:                                            ; preds = %check_retval.exit29.i
  %i.of = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.og = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.of, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.56, i32 noundef %i.od) #11 ; 0 uses
  br label %check_retval.exit31.i

check_retval.exit31.i:                            ; preds = %bb.aj, %check_retval.exit29.i
  %i.oh = call i32 @CVodeGetNumPrecEvals(ptr noundef %.pre, ptr noundef nonnull %i.l) #10 ; 2 uses
  %i.oi = icmp slt i32 %i.oh, 0
  br i1 %i.oi, label %bb.ak, label %check_retval.exit33.i

bb.ak:                                            ; preds = %check_retval.exit31.i
  %i.oj = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ok = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.oj, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.57, i32 noundef %i.oh) #11 ; 0 uses
  br label %check_retval.exit33.i

check_retval.exit33.i:                            ; preds = %bb.ak, %check_retval.exit31.i
  %i.ol = call i32 @CVodeGetNumPrecSolves(ptr noundef %.pre, ptr noundef nonnull %i.m) #10 ; 2 uses
  %i.om = icmp slt i32 %i.ol, 0
  br i1 %i.om, label %bb.al, label %check_retval.exit35.i

bb.al:                                            ; preds = %check_retval.exit33.i
  %i.on = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.oo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.on, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.58, i32 noundef %i.ol) #11 ; 0 uses
  br label %check_retval.exit35.i

check_retval.exit35.i:                            ; preds = %bb.al, %check_retval.exit33.i
  %i.op = call i32 @CVodeGetNumLinConvFails(ptr noundef %.pre, ptr noundef nonnull %i.n) #10 ; 2 uses
  %i.oq = icmp slt i32 %i.op, 0
  br i1 %i.oq, label %bb.am, label %check_retval.exit37.i

bb.am:                                            ; preds = %check_retval.exit35.i
  %i.or = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.os = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.or, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.59, i32 noundef %i.op) #11 ; 0 uses
  br label %check_retval.exit37.i

check_retval.exit37.i:                            ; preds = %bb.am, %check_retval.exit35.i
  %i.ot = call i32 @CVodeGetNumLinRhsEvals(ptr noundef %.pre, ptr noundef nonnull %i.o) #10 ; 2 uses
  %i.ou = icmp slt i32 %i.ot, 0
  br i1 %i.ou, label %bb.an, label %PrintFinalStats.exit

bb.an:                                            ; preds = %check_retval.exit37.i
  %i.ov = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ow = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ov, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.60, i32 noundef %i.ot) #11 ; 0 uses
  br label %PrintFinalStats.exit

PrintFinalStats.exit:                             ; preds = %check_retval.exit37.i, %bb.an
  %puts.i104 = call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  %i.ox = load i64, ptr %i.a, align 8, !tbaa !51
  %i.oy = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.62, i64 noundef %i.ox) ; 0 uses
  %i.oz = load i64, ptr %i.b, align 8, !tbaa !51
  %i.pa = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.63, i64 noundef %i.oz) ; 0 uses
  %i.pb = load i64, ptr %i.c, align 8, !tbaa !51
  %i.pc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.64, i64 noundef %i.pb) ; 0 uses
  %i.pd = load i64, ptr %i.d, align 8, !tbaa !51
  %i.pe = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.65, i64 noundef %i.pd) ; 0 uses
  %i.pf = load i64, ptr %i.e, align 8, !tbaa !51
  %i.pg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.66, i64 noundef %i.pf) ; 0 uses
  %i.ph = load i64, ptr %i.f, align 8, !tbaa !51
  %i.pi = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.67, i64 noundef %i.ph) ; 0 uses
  %i.pj = load i64, ptr %i.o, align 8, !tbaa !51
  %i.pk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.68, i64 noundef %i.pj) ; 0 uses
  %i.pl = load i64, ptr %i.f, align 8, !tbaa !51
  %i.pm = load i64, ptr %i.o, align 8, !tbaa !51
  %i.pn = add nsw i64 %i.pm, %i.pl
  %i.po = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.69, i64 noundef %i.pn) ; 0 uses
  %i.pp = load i64, ptr %i.g, align 8, !tbaa !51
  %i.pq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.70, i64 noundef %i.pp) ; 0 uses
  %i.pr = load i64, ptr %i.h, align 8, !tbaa !51
  %i.ps = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.71, i64 noundef %i.pr) ; 0 uses
  %i.pt = load i64, ptr %i.k, align 8, !tbaa !51
  %i.pu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.72, i64 noundef %i.pt) ; 0 uses
  %i.pv = load i64, ptr %i.l, align 8, !tbaa !51
  %i.pw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.73, i64 noundef %i.pv) ; 0 uses
  %i.px = load i64, ptr %i.m, align 8, !tbaa !51
  %i.py = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.74, i64 noundef %i.px) ; 0 uses
  %i.pz = load i64, ptr %i.j, align 8, !tbaa !51
  %i.qa = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.75, i64 noundef %i.pz) ; 0 uses
  %i.qb = load i64, ptr %i.i, align 8, !tbaa !51
  %i.qc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, i64 noundef %i.qb) ; 0 uses
  %i.qd = load i64, ptr %i.n, align 8, !tbaa !51
  %i.qe = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i64 noundef %i.qd) ; 0 uses
  %i.qf = load i64, ptr %i.h, align 8, !tbaa !51  ; 2 uses
  %i.qg = icmp sgt i64 %i.qf, 0
  %i.qh = load i64, ptr %i.k, align 8
  %i.qi = sitofp i64 %i.qh to double
  %i.qj = uitofp nneg i64 %i.qf to double
  %i.qk = fdiv double %i.qi, %i.qj
  %i.ql = select i1 %i.qg, double %i.qk, double 0.000000e+00
  %i.qm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.78, double noundef %i.ql) ; 0 uses
  %i.qn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32) ; 0 uses
  %puts14.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.7) ; 0 uses
  %i.qo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.79) ; 0 uses
  %puts15.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.7) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br i1 %exitcond254.not, label %bb.ao, label %bb.d

bb.ao:                                            ; preds = %PrintFinalStats.exit
  br i1 %exitcond255.not, label %bb.ap, label %.preheader

bb.ap:                                            ; preds = %bb.ao
  call void @CVodeFree(ptr noundef nonnull %i.v) #10
  call void @N_VDestroy(ptr noundef nonnull %i.ab) #10
  %i.qp = call i32 @SUNLinSolFree(ptr noundef %.2145) #10 ; 0 uses
  call fastcc void @FreeUserData(ptr noundef %i.af)
  %i.qq = call i32 @SUNContext_Free(ptr noundef nonnull @sunctx) #10 ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %check_retval.exit100, %check_retval.exit98, %check_retval.exit96, %check_retval.exit94, %check_retval.exit92, %check_retval.exit90, %check_retval.exit88, %check_retval.exit86, %check_retval.exit84, %check_retval.exit82, %check_retval.exit80, %check_retval.exit78, %check_retval.exit74, %check_retval.exit, %bb.ap
  %.056 = phi i32 [ 0, %bb.ap ], [ 1, %check_retval.exit ], [ 1, %check_retval.exit74 ], [ 1, %check_retval.exit100 ], [ 1, %check_retval.exit78 ], [ 1, %check_retval.exit80 ], [ 1, %check_retval.exit82 ], [ 1, %check_retval.exit84 ], [ 1, %check_retval.exit86 ], [ 1, %check_retval.exit88 ], [ 1, %check_retval.exit90 ], [ 1, %check_retval.exit92 ], [ 1, %check_retval.exit94 ], [ 1, %check_retval.exit96 ], [ 1, %check_retval.exit98 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #10
  ret i32 %.056
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @SUNContext_Create(i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @N_VNew_Serial(i64 noundef, ptr noundef) local_unnamed_addr #2

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
  %i.ac = shl nuw nsw i64 %i.s, 3                 ; 3 uses
  %i.ad = getelementptr i8, ptr %3, i64 %i.ac
  %scevgep192 = getelementptr i8, ptr %i.ad, i64 480
  %i.ae = mul nuw nsw i64 %i.s, 48
  %i.af = shl nsw i64 %i.w, 3
  %4 = getelementptr i8, ptr %3, i64 %i.ae
  %5 = getelementptr i8, ptr %4, i64 696
  %i.ag = getelementptr i8, ptr %i.a, i64 %i.ac
  %i.ah = getelementptr i8, ptr %3, i64 %i.ac
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
  %i.ar = mul i64 %i.af, %indvars.iv96            ; 5 uses
  %scevgep194 = getelementptr i8, ptr %5, i64 %i.ar
  %scevgep193 = getelementptr i8, ptr %i.ag, i64 %i.ar
  %scevgep194.a = getelementptr i8, ptr %i.a, i64 %i.ar
  %scevgep195 = getelementptr i8, ptr %i.ai, i64 %i.ar
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
  %i.bl = insertelement <2 x ptr> poison, ptr %scevgep194.a, i64 0
  %i.bm = insertelement <2 x ptr> %i.ak, ptr %scevgep195, i64 0
  %i.bn = insertelement <2 x ptr> poison, ptr %scevgep193, i64 0
  %i.bo = insertelement <2 x ptr> %i.bn, ptr %scevgep194, i64 1
  %i.bp = shufflevector <2 x ptr> %i.bl, <2 x ptr> %i.au, <2 x i32> <i32 0, i32 2>
  %i.bq = icmp ult <2 x ptr> %i.au, %i.bo
  %i.br = icmp ult <2 x ptr> %i.bp, %i.bm
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
  %wide.load211 = load <2 x double>, ptr %i.cy, align 8, !tbaa !22, !alias.scope !69
  %wide.load212 = load <2 x double>, ptr %i.cz, align 8, !tbaa !22, !alias.scope !69
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %index210 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %wide.load213 = load <2 x double>, ptr %i.da, align 8, !tbaa !22, !alias.scope !70
  %wide.load214 = load <2 x double>, ptr %i.db, align 8, !tbaa !22, !alias.scope !70
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %index210 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 2 uses
  %wide.load215 = load <2 x double>, ptr %i.dc, align 8, !tbaa !22, !alias.scope !71, !noalias !72
  %wide.load216 = load <2 x double>, ptr %i.dd, align 8, !tbaa !22, !alias.scope !71, !noalias !72
  %i.de = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load213, <2 x double> %broadcast.splat, <2 x double> %wide.load215)
  %i.df = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load214, <2 x double> %broadcast.splat, <2 x double> %wide.load216)
  %i.dg = fmul <2 x double> %wide.load211, %i.de
  %i.dh = fmul <2 x double> %wide.load212, %i.df
  store <2 x double> %i.dg, ptr %i.dc, align 8, !tbaa !22, !alias.scope !71, !noalias !72
  store <2 x double> %i.dh, ptr %i.dd, align 8, !tbaa !22, !alias.scope !71, !noalias !72
  %index.next217 = add nuw i64 %index210, 4       ; 2 uses
  %i.di = icmp eq i64 %index.next217, %n.vec208
  br i1 %i.di, label %middle.block218, label %vector.body209, !llvm.loop !56

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
  br i1 %exitcond57.not.i.1, label %WebRates.exit, label %.lr.ph44.i, !llvm.loop !57

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
  %bound0 = icmp ult ptr %i.fg, %i.fj
  %bound1 = icmp ult ptr %i.fi, %i.fh
  %found.conflict = and i1 %bound0, %bound1
  %bound0149 = icmp ult ptr %i.g, %i.fj
  %bound1150 = icmp ult ptr %i.fi, %scevgep146
end_hunk_0
begin_hunk_1_@PSolve:bb.a
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %index
  %wide.load117 = load <2 x double>, ptr %i.y, align 8, !tbaa !22 ; 2 uses
  %i.z = fadd <2 x double> %wide.load, %wide.load117
  %i.aa = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.z, <2 x double> splat (double 1.000000e+00))
  %i.ab = fdiv <2 x double> splat (double 1.000000e+00), %i.aa ; 3 uses
  %i.ac = fmul <2 x double> %broadcast.splat116, %wide.load
  %i.ad = fmul <2 x double> %i.ac, %i.ab          ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index
  store <2 x double> %i.ad, ptr %i.ae, align 16, !tbaa !22
  %i.af = fmul <2 x double> %i.ad, splat (double 2.000000e+00)
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index
  store <2 x double> %i.af, ptr %i.ag, align 16, !tbaa !22
  %i.ah = fmul <2 x double> %broadcast.splat116, %wide.load117
  %i.ai = fmul <2 x double> %i.ah, %i.ab          ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index
  store <2 x double> %i.ai, ptr %i.aj, align 16, !tbaa !22
  %i.ak = fmul <2 x double> %i.ai, splat (double 2.000000e+00)
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index
  store <2 x double> %i.ak, ptr %i.al, align 16, !tbaa !22
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index
  store <2 x double> %i.ab, ptr %i.am, align 16, !tbaa !22
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !111

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.preheader389.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader389.i:                                  ; preds = %scalar.ph, %middle.block, %bb.a
  %i.ao = icmp sgt i32 %i.q, 0
  br i1 %i.ao, label %.lr.ph394.i, label %.preheader389.._crit_edge395.split_crit_edge.i

.preheader389.._crit_edge395.split_crit_edge.i:   ; preds = %.preheader389.i
  %.pre.i = zext nneg i32 %i.m to i64
  br label %._crit_edge395.split.i

.lr.ph394.i:                                      ; preds = %.preheader389.i
  %i.ap = icmp slt i32 %i.o, 1
  %i.aq = icmp slt i32 %i.m, 1
  %wide.trip.count.i.i = zext i32 %i.m to i64     ; 8 uses
  %brmerge.i = or i1 %i.aq, %i.ap
  br i1 %brmerge.i, label %._crit_edge395.split.i, label %.lr.ph392.preheader.i

.lr.ph392.preheader.i:                            ; preds = %.lr.ph394.i
  %i.ar = sext i32 %i.s to i64
  %wide.trip.count444.i = zext nneg i32 %i.q to i64
  %wide.trip.count439.i = zext nneg i32 %i.o to i64
  %min.iters.check119 = icmp ult i32 %i.m, 4
  %i.as = sub i64 %i.k, %i.i
  %diff.check = icmp ugt i64 %i.as, -32
  %or.cond = select i1 %min.iters.check119, i1 true, i1 %diff.check
  %n.vec121 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  %cmp.n130 = icmp eq i64 %n.vec121, %wide.trip.count.i.i
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph392.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 8 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i
  %i.au = load double, ptr %i.at, align 8, !tbaa !22 ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.i
  %i.aw = load double, ptr %i.av, align 8, !tbaa !22 ; 2 uses
  %i.ax = fadd double %i.au, %i.aw
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.w, double %i.ax, double 1.000000e+00)
  %i.az = fdiv double 1.000000e+00, %i.ay         ; 3 uses
  %i.ba = fmul double %5, %i.au
  %i.bb = fmul double %i.ba, %i.az                ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i
  store double %i.bb, ptr %i.bc, align 8, !tbaa !22
  %i.bd = fmul double %i.bb, 2.000000e+00
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i
  store double %i.bd, ptr %i.be, align 8, !tbaa !22
  %i.bf = fmul double %5, %i.aw
  %i.bg = fmul double %i.bf, %i.az                ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i
  store double %i.bg, ptr %i.bh, align 8, !tbaa !22
  %i.bi = fmul double %i.bg, 2.000000e+00
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i
  store double %i.bi, ptr %i.bj, align 8, !tbaa !22
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i
  store double %i.az, ptr %i.bk, align 8, !tbaa !22
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader389.i, label %scalar.ph, !llvm.loop !112

.lr.ph392.i:                                      ; preds = %._crit_edge.i, %.lr.ph392.preheader.i
  %indvars.iv441.i = phi i64 [ 0, %.lr.ph392.preheader.i ], [ %indvars.iv.next442.i, %._crit_edge.i ] ; 2 uses
  %i.bl = mul nsw i64 %indvars.iv441.i, %i.ar
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %v_prod.exit.loopexit.i, %.lr.ph392.i
  %indvars.iv436.i = phi i64 [ 0, %.lr.ph392.i ], [ %indvars.iv.next437.i, %v_prod.exit.loopexit.i ] ; 2 uses
  %i.bm = mul nuw nsw i64 %indvars.iv436.i, %wide.trip.count.i.i
  %i.bn = add nsw i64 %i.bm, %i.bl                ; 2 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.bn ; 6 uses
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.bn ; 6 uses
  br i1 %or.cond, label %.lr.ph.i.i.preheader, label %vector.body122

vector.body122:                                   ; preds = %.lr.ph.preheader.i.i, %vector.body122
  %index123 = phi i64 [ %index.next128, %vector.body122 ], [ 0, %.lr.ph.preheader.i.i ] ; 4 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index123 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %wide.load124 = load <2 x double>, ptr %i.bq, align 16, !tbaa !22
  %wide.load125 = load <2 x double>, ptr %i.br, align 16, !tbaa !22
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %index123 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %wide.load126 = load <2 x double>, ptr %i.bs, align 8, !tbaa !22
  %wide.load127 = load <2 x double>, ptr %i.bt, align 8, !tbaa !22
  %i.bu = fmul <2 x double> %wide.load124, %wide.load126
  %i.bv = fmul <2 x double> %wide.load125, %wide.load127
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %index123 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store <2 x double> %i.bu, ptr %i.bw, align 8, !tbaa !22
  store <2 x double> %i.bv, ptr %i.bx, align 8, !tbaa !22
  %index.next128 = add nuw i64 %index123, 4       ; 2 uses
  %i.by = icmp eq i64 %index.next128, %n.vec121
  br i1 %i.by, label %middle.block129, label %vector.body122, !llvm.loop !113

middle.block129:                                  ; preds = %vector.body122
  br i1 %cmp.n130, label %v_prod.exit.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block129
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec121, %middle.block129 ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i.i.prol
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !22
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.i.i.prol
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !22
  %i.cd = fmul double %i.ca, %i.cc
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.i.i.prol
  store double %i.cd, ptr %i.ce, align 8, !tbaa !22
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !114

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %i.cf = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.cg = icmp ugt i64 %i.cf, -4
  br i1 %i.cg, label %v_prod.exit.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 7 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i.i
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !22
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.i.i
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !22
  %i.cl = fmul double %i.ci, %i.ck
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.i.i
  store double %i.cl, ptr %i.cm, align 8, !tbaa !22
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.i.i
  %i.co = load double, ptr %i.cn, align 8, !tbaa !22
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.next.i.i
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !22
  %i.cr = fmul double %i.co, %i.cq
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.next.i.i
  store double %i.cr, ptr %i.cs, align 8, !tbaa !22
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 3 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.i.i.1
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !22
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.next.i.i.1
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !22
  %i.cx = fmul double %i.cu, %i.cw
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.next.i.i.1
  store double %i.cx, ptr %i.cy, align 8, !tbaa !22
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 3 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.i.i.2
  %i.da = load double, ptr %i.cz, align 8, !tbaa !22
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.next.i.i.2
  %i.dc = load double, ptr %i.db, align 8, !tbaa !22
  %i.dd = fmul double %i.da, %i.dc
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.next.i.i.2
  store double %i.dd, ptr %i.de, align 8, !tbaa !22
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %v_prod.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !115

v_prod.exit.loopexit.i:                           ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block129
  %indvars.iv.next437.i = add nuw nsw i64 %indvars.iv436.i, 1 ; 2 uses
  %exitcond440.not.i = icmp eq i64 %indvars.iv.next437.i, %wide.trip.count439.i
  br i1 %exitcond440.not.i, label %._crit_edge.i, label %.lr.ph.preheader.i.i

._crit_edge.i:                                    ; preds = %v_prod.exit.loopexit.i
  %indvars.iv.next442.i = add nuw nsw i64 %indvars.iv441.i, 1 ; 2 uses
  %exitcond445.not.i = icmp eq i64 %indvars.iv.next442.i, %wide.trip.count444.i
  br i1 %exitcond445.not.i, label %._crit_edge395.split.i, label %.lr.ph392.i

._crit_edge395.split.i:                           ; preds = %._crit_edge.i, %.lr.ph394.i, %.preheader389.._crit_edge395.split_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %.preheader389.._crit_edge395.split_crit_edge.i ], [ %wide.trip.count.i.i, %.lr.ph394.i ], [ %wide.trip.count.i.i, %._crit_edge.i ] ; 137 uses
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %4) #10
  %i.df = icmp slt i32 %i.q, 1                    ; 2 uses
  %i.dg = icmp slt i32 %i.o, 1                    ; 2 uses
  %i.dh = add nsw i32 %i.o, -1
  %i.di = add nsw i32 %i.q, -1
  %i.dj = shl nuw nsw i64 %.pre-phi.i, 3
  %i.dk = sext i32 %i.s to i64                    ; 30 uses
  %i.dl = sext i32 %i.m to i64                    ; 13 uses
  %i.dm = sub nsw i64 0, %i.dl                    ; 6 uses
  %i.dn = sub nsw i64 0, %i.dk                    ; 6 uses
  %i.do = zext i32 %i.dh to i64                   ; 2 uses
  %i.dp = zext i32 %i.di to i64                   ; 2 uses
  %wide.trip.count454.i = zext nneg i32 %i.q to i64 ; 2 uses
  %wide.trip.count449.i = zext nneg i32 %i.o to i64 ; 2 uses
  %brmerge420.i = select i1 %i.df, i1 true, i1 %i.dg
  %i.dq = shl nuw nsw i64 %.pre-phi.i, 3          ; 3 uses
  %i.dr = sub nsw i64 %.pre-phi.i, %i.dk
  %i.ds = shl nsw i64 %i.dr, 3
  %i.dt = shl nsw i64 %i.dk, 3
  %i.du = shl nsw i64 %i.dl, 3                    ; 2 uses
  %9 = sub nsw i64 %i.dq, %i.du
  %i.dv = shl nsw i64 %i.dk, 3
  %i.dw = mul nsw i64 %i.dl, -8                   ; 2 uses
  %i.dx = shl nuw nsw i64 %.pre-phi.i, 3          ; 3 uses
  %10 = sub nsw i64 %i.dx, %i.du
  %i.dy = shl nsw i64 %i.dk, 3
  %11 = sub nsw i64 %.pre-phi.i, %i.dl
  %i.dz = shl nsw i64 %11, 3
  %i.ea = shl nsw i64 %i.dk, 3
  %i.eb = shl nuw nsw i64 %.pre-phi.i, 3          ; 3 uses
  %i.ec = sub nsw i64 %.pre-phi.i, %i.dk
  %i.ed = shl nsw i64 %i.ec, 3                    ; 2 uses
  %i.ee = shl nsw i64 %i.dk, 3
  %i.ef = mul nsw i64 %i.dk, -8                   ; 2 uses
  %i.eg = shl nsw i64 %i.dk, 3
  %i.eh = sub nsw i64 %.pre-phi.i, %i.dl
  %i.ei = shl nsw i64 %i.eh, 3
  %i.ej = shl nsw i64 %i.dk, 3
  %i.ek = shl nuw nsw i64 %.pre-phi.i, 3          ; 2 uses
  %i.el = sub nsw i64 %.pre-phi.i, %i.dk
  %i.em = shl nsw i64 %i.el, 3
  %i.en = shl nsw i64 %i.dk, 3
  %12 = sub nsw i64 %.pre-phi.i, %i.dl
  %i.eo = shl nsw i64 %12, 3
  %i.ep = shl nsw i64 %i.dk, 3
  %i.eq = shl nuw nsw i64 %.pre-phi.i, 3          ; 3 uses
  %i.er = sub nsw i64 %.pre-phi.i, %i.dk
  %i.es = shl nsw i64 %i.er, 3                    ; 2 uses
  %i.et = shl nsw i64 %i.dk, 3
  %i.eu = mul nsw i64 %i.dk, -8                   ; 3 uses
  %i.ev = shl nsw i64 %i.dk, 3
  %i.ew = sub nsw i64 %.pre-phi.i, %i.dl
  %i.ex = shl nsw i64 %i.ew, 3
  %i.ey = shl nsw i64 %i.dk, 3
  %i.ez = mul nsw i64 %.pre-phi.i, -8             ; 4 uses
  %i.fa = mul nsw i64 %i.dk, -8                   ; 5 uses
  %min.iters.check683 = icmp samesign ult i64 %.pre-phi.i, 4
  %n.vec685 = and i64 %.pre-phi.i, 4294967292     ; 3 uses
  %cmp.n694 = icmp eq i64 %.pre-phi.i, %n.vec685
  %min.iters.check669 = icmp samesign ult i64 %.pre-phi.i, 4
  %n.vec671 = and i64 %.pre-phi.i, 4294967292     ; 3 uses
  %cmp.n680 = icmp eq i64 %.pre-phi.i, %n.vec671
  %min.iters.check653 = icmp samesign ult i64 %.pre-phi.i, 4
  %i.fb = add nsw i64 %i.fa, -1
  %diff.check655 = icmp ult i64 %i.fb, 31
  %or.cond697 = select i1 %min.iters.check653, i1 true, i1 %diff.check655
  %n.vec657 = and i64 %.pre-phi.i, 4294967292     ; 3 uses
  %cmp.n666 = icmp eq i64 %.pre-phi.i, %n.vec657
  %xtraiter728 = and i64 %.pre-phi.i, 3           ; 2 uses
  %lcmp.mod729.not = icmp eq i64 %xtraiter728, 0
  %min.iters.check629 = icmp samesign ult i64 %.pre-phi.i, 4
  %i.fc = add nsw i64 %i.ez, -1
  %diff.check631 = icmp ult i64 %i.fc, 31
  %i.fd = add nsw i64 %i.fa, -1
  %diff.check632 = icmp ult i64 %i.fd, 31
  %conflict.rdx633 = or i1 %diff.check631, %diff.check632
  %n.vec635 = and i64 %.pre-phi.i, 4294967292     ; 3 uses
  %cmp.n648 = icmp eq i64 %.pre-phi.i, %n.vec635
  %xtraiter731 = and i64 %.pre-phi.i, 1
  %lcmp.mod732.not = icmp eq i64 %xtraiter731, 0
  %min.iters.check603 = icmp samesign ult i64 %.pre-phi.i, 4
  %i.fe = add nsw i64 %i.ez, -1
  %diff.check605 = icmp ult i64 %i.fe, 31
  %i.ff = add nsw i64 %i.fa, -1
  %diff.check606 = icmp ult i64 %i.ff, 31
  %conflict.rdx607 = or i1 %diff.check605, %diff.check606
  %n.vec609 = and i64 %.pre-phi.i, 4294967292     ; 3 uses
  %cmp.n622 = icmp eq i64 %.pre-phi.i, %n.vec609
  %xtraiter734 = and i64 %.pre-phi.i, 1
  %lcmp.mod735.not = icmp eq i64 %xtraiter734, 0
  %min.iters.check583 = icmp samesign ult i64 %.pre-phi.i, 4
  %i.fg = add nsw i64 %i.fa, -1
  %diff.check585 = icmp ult i64 %i.fg, 31
  %or.cond696 = select i1 %min.iters.check583, i1 true, i1 %diff.check585
  %n.vec587 = and i64 %.pre-phi.i, 4294967292     ; 3 uses
  %cmp.n596 = icmp eq i64 %.pre-phi.i, %n.vec587
  %xtraiter737 = and i64 %.pre-phi.i, 3           ; 2 uses
  %lcmp.mod738.not = icmp eq i64 %xtraiter737, 0
  %min.iters.check559 = icmp samesign ult i64 %.pre-phi.i, 4
  %i.fh = add nsw i64 %i.ez, -1
  %diff.check561 = icmp ult i64 %i.fh, 31
  %i.fi = add nsw i64 %i.fa, -1
  %diff.check562 = icmp ult i64 %i.fi, 31
  %conflict.rdx563 = or i1 %diff.check561, %diff.check562
  %n.vec565 = and i64 %.pre-phi.i, 4294967292     ; 3 uses
  %cmp.n578 = icmp eq i64 %.pre-phi.i, %n.vec565
  %xtraiter740 = and i64 %.pre-phi.i, 1
  %lcmp.mod741.not = icmp eq i64 %xtraiter740, 0
  %min.iters.check534 = icmp samesign ult i64 %.pre-phi.i, 4
  %i.fj = add nsw i64 %i.ez, -1
  %diff.check536 = icmp ult i64 %i.fj, 31
  %i.fk = add nsw i64 %i.eu, -1
  %diff.check537 = icmp ult i64 %i.fk, 31
  %conflict.rdx = or i1 %diff.check536, %diff.check537
  %n.vec539 = and i64 %.pre-phi.i, 4294967292     ; 3 uses
  %cmp.n552 = icmp eq i64 %.pre-phi.i, %n.vec539
  %xtraiter743 = and i64 %.pre-phi.i, 1
  %lcmp.mod744.not = icmp eq i64 %xtraiter743, 0
  %i.fl = getelementptr i8, ptr %i.h, i64 %i.ex
  %i.fm = shl nsw i64 %i.dl, 3
  %i.fn = getelementptr i8, ptr %i.h, i64 %i.eq
  %i.fo = getelementptr i8, ptr %i.h, i64 %i.es
  %i.fp = getelementptr i8, ptr %i.h, i64 %i.eu
  %i.fq = getelementptr i8, ptr %i.h, i64 %i.eq
  %13 = getelementptr i8, ptr %i.h, i64 %i.es
  %i.fr = getelementptr i8, ptr %i.h, i64 %i.eu
  %i.fs = getelementptr i8, ptr %i.h, i64 %i.eq
  %i.ft = getelementptr i8, ptr %i.h, i64 %i.eo
  %i.fu = shl nsw i64 %i.dl, 3
  %i.fv = getelementptr i8, ptr %i.h, i64 %i.ek
  %i.fw = getelementptr i8, ptr %i.h, i64 %i.em
  %i.fx = shl nsw i64 %i.dk, 3
  %i.fy = getelementptr i8, ptr %i.h, i64 %i.ek
  %i.fz = getelementptr i8, ptr %i.h, i64 %i.ei
  %i.ga = shl nsw i64 %i.dl, 3
  %i.gb = getelementptr i8, ptr %i.h, i64 %i.eb
  %i.gc = getelementptr i8, ptr %i.h, i64 %i.ed
  %i.gd = getelementptr i8, ptr %i.h, i64 %i.ef
  %i.ge = getelementptr i8, ptr %i.h, i64 %i.eb
  %14 = getelementptr i8, ptr %i.h, i64 %i.ed
  %i.gf = getelementptr i8, ptr %i.h, i64 %i.ef
  %i.gg = getelementptr i8, ptr %i.h, i64 %i.eb
  %i.gh = getelementptr i8, ptr %i.h, i64 %i.dz
  %i.gi = shl nsw i64 %i.dl, 3
  %i.gj = getelementptr i8, ptr %i.h, i64 %i.dx
  %i.gk = getelementptr i8, ptr %i.h, i64 %10
  %i.gl = getelementptr i8, ptr %i.h, i64 %i.dw
  %i.gm = getelementptr i8, ptr %i.h, i64 %i.dx
  %i.gn = getelementptr i8, ptr %i.h, i64 %9
  %i.go = getelementptr i8, ptr %i.h, i64 %i.dw
  %i.gp = getelementptr i8, ptr %i.h, i64 %i.dq
  %i.gq = getelementptr i8, ptr %i.h, i64 %i.ds
  %i.gr = shl nsw i64 %i.dk, 3
  %i.gs = getelementptr i8, ptr %i.h, i64 %i.dq
  %min.iters.check510 = icmp samesign ult i64 %.pre-phi.i, 4
  %n.vec517 = and i64 %.pre-phi.i, 4294967292     ; 3 uses
  %cmp.n528 = icmp eq i64 %.pre-phi.i, %n.vec517
  %xtraiter746 = and i64 %.pre-phi.i, 1
  %lcmp.mod747.not = icmp eq i64 %xtraiter746, 0
  %min.iters.check476 = icmp samesign ult i64 %.pre-phi.i, 4
  %n.vec483 = and i64 %.pre-phi.i, 4294967292     ; 3 uses
  %cmp.n494 = icmp eq i64 %.pre-phi.i, %n.vec483
  %xtraiter749 = and i64 %.pre-phi.i, 1
  %lcmp.mod750.not = icmp eq i64 %xtraiter749, 0
  %min.iters.check442 = icmp samesign ult i64 %.pre-phi.i, 4
  %n.vec449 = and i64 %.pre-phi.i, 4294967292     ; 3 uses
  %cmp.n460 = icmp eq i64 %.pre-phi.i, %n.vec449
  %xtraiter752 = and i64 %.pre-phi.i, 1
  %lcmp.mod753.not = icmp eq i64 %xtraiter752, 0
  %min.iters.check408 = icmp samesign ult i64 %.pre-phi.i, 4
  %n.vec415 = and i64 %.pre-phi.i, 4294967292     ; 3 uses
  %cmp.n426 = icmp eq i64 %.pre-phi.i, %n.vec415
  %xtraiter755 = and i64 %.pre-phi.i, 1
  %lcmp.mod756.not = icmp eq i64 %xtraiter755, 0
  %min.iters.check374 = icmp samesign ult i64 %.pre-phi.i, 4
  %n.vec381 = and i64 %.pre-phi.i, 4294967292     ; 3 uses
  %cmp.n392 = icmp eq i64 %.pre-phi.i, %n.vec381
  %xtraiter758 = and i64 %.pre-phi.i, 1
  %lcmp.mod759.not = icmp eq i64 %xtraiter758, 0
  %min.iters.check340 = icmp samesign ult i64 %.pre-phi.i, 4
  %n.vec347 = and i64 %.pre-phi.i, 4294967292     ; 3 uses
  %cmp.n358 = icmp eq i64 %.pre-phi.i, %n.vec347
  %xtraiter761 = and i64 %.pre-phi.i, 1
  %lcmp.mod762.not = icmp eq i64 %xtraiter761, 0
  %min.iters.check306 = icmp samesign ult i64 %.pre-phi.i, 4
  %n.vec313 = and i64 %.pre-phi.i, 4294967292     ; 3 uses
  %cmp.n324 = icmp eq i64 %.pre-phi.i, %n.vec313
  %xtraiter764 = and i64 %.pre-phi.i, 1
  %lcmp.mod765.not = icmp eq i64 %xtraiter764, 0
  %min.iters.check272 = icmp samesign ult i64 %.pre-phi.i, 4
  %n.vec279 = and i64 %.pre-phi.i, 4294967292     ; 3 uses
  %cmp.n290 = icmp eq i64 %.pre-phi.i, %n.vec279
  %xtraiter767 = and i64 %.pre-phi.i, 1
  %lcmp.mod768.not = icmp eq i64 %xtraiter767, 0
  %min.iters.check238 = icmp samesign ult i64 %.pre-phi.i, 4
  %n.vec245 = and i64 %.pre-phi.i, 4294967292     ; 3 uses
  %cmp.n256 = icmp eq i64 %.pre-phi.i, %n.vec245
  %xtraiter770 = and i64 %.pre-phi.i, 1
  %lcmp.mod771.not = icmp eq i64 %xtraiter770, 0
  %min.iters.check204 = icmp samesign ult i64 %.pre-phi.i, 4
  %n.vec211 = and i64 %.pre-phi.i, 4294967292     ; 3 uses
  %cmp.n222 = icmp eq i64 %.pre-phi.i, %n.vec211
  %xtraiter773 = and i64 %.pre-phi.i, 1
  %lcmp.mod774.not = icmp eq i64 %xtraiter773, 0
  %min.iters.check170 = icmp samesign ult i64 %.pre-phi.i, 4
  %n.vec177 = and i64 %.pre-phi.i, 4294967292     ; 3 uses
  %cmp.n188 = icmp eq i64 %.pre-phi.i, %n.vec177
  %xtraiter776 = and i64 %.pre-phi.i, 1
  %lcmp.mod777.not = icmp eq i64 %xtraiter776, 0
  %min.iters.check140 = icmp samesign ult i64 %.pre-phi.i, 4
  %n.vec143 = and i64 %.pre-phi.i, 4294967292     ; 3 uses
  %cmp.n154 = icmp eq i64 %.pre-phi.i, %n.vec143
  %xtraiter779 = and i64 %.pre-phi.i, 1
  %lcmp.mod780.not = icmp eq i64 %xtraiter779, 0
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge410.split.i, %._crit_edge395.split.i
  %.0411.i = phi i32 [ 1, %._crit_edge395.split.i ], [ %i.akd, %._crit_edge410.split.i ] ; 2 uses
  %i.gt = icmp samesign ult i32 %.0411.i, 2
  %brmerge415.i = select i1 %i.gt, i1 true, i1 %i.df
  %brmerge417.i = select i1 %brmerge415.i, i1 true, i1 %i.dg
  br i1 %brmerge417.i, label %.loopexit.i, label %.lr.ph399.i

.lr.ph399.i:                                      ; preds = %bb.b, %._crit_edge400.i
  %indvars.iv451.i = phi i64 [ %indvars.iv.next452.i, %._crit_edge400.i ], [ 0, %bb.b ] ; 4 uses
  %i.gu = mul nsw i64 %indvars.iv451.i, %i.dk
  %i.gv = icmp eq i64 %indvars.iv451.i, 0
  %i.gw = icmp eq i64 %indvars.iv451.i, %i.dp
  %i.gx = select i1 %i.gw, i32 6, i32 3
  %i.gy = select i1 %i.gv, i32 0, i32 %i.gx
  br label %bb.c

bb.c:                                             ; preds = %v_sum_prods.exit.i, %.lr.ph399.i
  %indvars.iv446.i = phi i64 [ 0, %.lr.ph399.i ], [ %indvars.iv.next447.i, %v_sum_prods.exit.i ] ; 4 uses
  %i.gz = mul nsw i64 %indvars.iv446.i, %i.dl
  %i.ha = add nsw i64 %i.gz, %i.gu                ; 9 uses
  %i.hb = icmp eq i64 %indvars.iv446.i, 0
  %i.hc = icmp eq i64 %indvars.iv446.i, %i.do
  %i.hd = select i1 %i.hc, i32 2, i32 1
  %i.he = select i1 %i.hb, i32 0, i32 %i.hd
  %i.hf = add nuw nsw i32 %i.he, %i.gy
  switch i32 %i.hf, label %default.unreachable [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 4, label %bb.h
    i32 5, label %bb.i
    i32 6, label %bb.j
    i32 7, label %bb.k
    i32 8, label %bb.l
  ]

bb.d:                                             ; preds = %bb.c
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ha ; 6 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %.pre-phi.i ; 4 uses
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.hg, i64 %i.dk ; 4 uses
  br i1 %i.v, label %.lr.ph.i238.i.preheader, label %v_sum_prods.exit.i

.lr.ph.i238.i.preheader:                          ; preds = %bb.d
  %brmerge = select i1 %min.iters.check534, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %.lr.ph.i238.i.preheader713, label %vector.body540

vector.body540:                                   ; preds = %.lr.ph.i238.i.preheader, %vector.body540
  %index541 = phi i64 [ %index.next550, %vector.body540 ], [ 0, %.lr.ph.i238.i.preheader ] ; 6 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index541 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %wide.load542 = load <2 x double>, ptr %i.hj, align 16, !tbaa !22
  %wide.load543 = load <2 x double>, ptr %i.hk, align 16, !tbaa !22
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %index541 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %wide.load544 = load <2 x double>, ptr %i.hl, align 8, !tbaa !22
  %wide.load545 = load <2 x double>, ptr %i.hm, align 8, !tbaa !22
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index541 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %wide.load546.a = load <2 x double>, ptr %i.hn, align 16, !tbaa !22
  %wide.load547.a = load <2 x double>, ptr %i.ho, align 16, !tbaa !22
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %index541 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %wide.load548.a = load <2 x double>, ptr %i.hp, align 8, !tbaa !22
  %wide.load549.a = load <2 x double>, ptr %i.hq, align 8, !tbaa !22
  %i.hr = fmul <2 x double> %wide.load546.a, %wide.load548.a
  %i.hs = fmul <2 x double> %wide.load547.a, %wide.load549.a
  %i.ht = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load542, <2 x double> %wide.load544, <2 x double> %i.hr)
  %i.hu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load543, <2 x double> %wide.load545, <2 x double> %i.hs)
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %index541 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  store <2 x double> %i.ht, ptr %i.hv, align 8, !tbaa !22
  store <2 x double> %i.hu, ptr %i.hw, align 8, !tbaa !22
  %index.next550 = add nuw i64 %index541, 4       ; 2 uses
  %i.hx = icmp eq i64 %index.next550, %n.vec539
  br i1 %i.hx, label %middle.block551, label %vector.body540, !llvm.loop !116

middle.block551:                                  ; preds = %vector.body540
  br i1 %cmp.n552, label %v_sum_prods.exit.i, label %.lr.ph.i238.i.preheader713

.lr.ph.i238.i.preheader713:                       ; preds = %.lr.ph.i238.i.preheader, %middle.block551
  %indvars.iv.i239.i.ph = phi i64 [ %n.vec539, %middle.block551 ], [ 0, %.lr.ph.i238.i.preheader ] ; 8 uses
  %.neg784 = or disjoint i64 %indvars.iv.i239.i.ph, 1
  br i1 %lcmp.mod744.not, label %.lr.ph.i238.i.prol.loopexit, label %.lr.ph.i238.i.prol

.lr.ph.i238.i.prol:                               ; preds = %.lr.ph.i238.i.preheader713
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i239.i.ph
  %i.hz = load double, ptr %i.hy, align 16, !tbaa !22
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %indvars.iv.i239.i.ph
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !22
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i239.i.ph
  %i.id = load double, ptr %i.ic, align 16, !tbaa !22
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %indvars.iv.i239.i.ph
  %i.if = load double, ptr %i.ie, align 8, !tbaa !22
  %i.ig = fmul double %i.id, %i.if
  %i.ih = tail call double @llvm.fmuladd.f64(double %i.hz, double %i.ib, double %i.ig)
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %indvars.iv.i239.i.ph
  store double %i.ih, ptr %i.ii, align 8, !tbaa !22
  %indvars.iv.next.i240.i.prol = or disjoint i64 %indvars.iv.i239.i.ph, 1
  br label %.lr.ph.i238.i.prol.loopexit

.lr.ph.i238.i.prol.loopexit:                      ; preds = %.lr.ph.i238.i.prol, %.lr.ph.i238.i.preheader713
  %indvars.iv.i239.i.unr = phi i64 [ %indvars.iv.i239.i.ph, %.lr.ph.i238.i.preheader713 ], [ %indvars.iv.next.i240.i.prol, %.lr.ph.i238.i.prol ]
  %i.ij = icmp eq i64 %.pre-phi.i, %.neg784
  br i1 %i.ij, label %v_sum_prods.exit.i, label %.lr.ph.i238.i

.lr.ph.i238.i:                                    ; preds = %.lr.ph.i238.i.prol.loopexit, %.lr.ph.i238.i
  %indvars.iv.i239.i = phi i64 [ %indvars.iv.next.i240.i.1, %.lr.ph.i238.i ], [ %indvars.iv.i239.i.unr, %.lr.ph.i238.i.prol.loopexit ] ; 7 uses
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i239.i
  %i.il = load double, ptr %i.ik, align 8, !tbaa !22
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %indvars.iv.i239.i
  %i.in = load double, ptr %i.im, align 8, !tbaa !22
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i239.i
  %i.ip = load double, ptr %i.io, align 8, !tbaa !22
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %indvars.iv.i239.i
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !22
  %i.is = fmul double %i.ip, %i.ir
  %i.it = tail call double @llvm.fmuladd.f64(double %i.il, double %i.in, double %i.is)
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %indvars.iv.i239.i
  store double %i.it, ptr %i.iu, align 8, !tbaa !22
  %indvars.iv.next.i240.i = add nuw nsw i64 %indvars.iv.i239.i, 1 ; 5 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.i240.i
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !22
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %indvars.iv.next.i240.i
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !22
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next.i240.i
  %i.ja = load double, ptr %i.iz, align 8, !tbaa !22
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %indvars.iv.next.i240.i
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !22
  %i.jd = fmul double %i.ja, %i.jc
  %i.je = tail call double @llvm.fmuladd.f64(double %i.iw, double %i.iy, double %i.jd)
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %indvars.iv.next.i240.i
  store double %i.je, ptr %i.jf, align 8, !tbaa !22
  %indvars.iv.next.i240.i.1 = add nuw nsw i64 %indvars.iv.i239.i, 2 ; 2 uses
  %exitcond.not.i241.i.1 = icmp eq i64 %indvars.iv.next.i240.i.1, %.pre-phi.i
  br i1 %exitcond.not.i241.i.1, label %v_sum_prods.exit.i, label %.lr.ph.i238.i, !llvm.loop !117
end_hunk_1
begin_hunk_2_@PSolve:bb.a
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 16
  %wide.load662 = load <2 x double>, ptr %i.rb, align 8, !tbaa !22
  %wide.load663 = load <2 x double>, ptr %i.rc, align 8, !tbaa !22
  %i.rd = fmul <2 x double> %wide.load660, %wide.load662
  %i.re = fmul <2 x double> %wide.load661, %wide.load663
  %i.rf = getelementptr inbounds nuw [8 x i8], ptr %i.qx, i64 %index659 ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 16
  store <2 x double> %i.rd, ptr %i.rf, align 8, !tbaa !22
  store <2 x double> %i.re, ptr %i.rg, align 8, !tbaa !22
  %index.next664 = add nuw i64 %index659, 4       ; 2 uses
  %i.rh = icmp eq i64 %index.next664, %n.vec657
  br i1 %i.rh, label %middle.block665, label %vector.body658, !llvm.loop !127

middle.block665:                                  ; preds = %vector.body658
  br i1 %cmp.n666, label %v_sum_prods.exit.i, label %.lr.ph.i272.i.preheader722

.lr.ph.i272.i.preheader722:                       ; preds = %.lr.ph.i272.i.preheader, %middle.block665
  %indvars.iv.i273.i.ph = phi i64 [ 0, %.lr.ph.i272.i.preheader ], [ %n.vec657, %middle.block665 ] ; 3 uses
  br i1 %lcmp.mod729.not, label %.lr.ph.i272.i.prol.loopexit, label %.lr.ph.i272.i.prol

.lr.ph.i272.i.prol:                               ; preds = %.lr.ph.i272.i.preheader722, %.lr.ph.i272.i.prol
  %indvars.iv.i273.i.prol = phi i64 [ %indvars.iv.next.i274.i.prol, %.lr.ph.i272.i.prol ], [ %indvars.iv.i273.i.ph, %.lr.ph.i272.i.preheader722 ] ; 4 uses
  %prol.iter730 = phi i64 [ %prol.iter730.next, %.lr.ph.i272.i.prol ], [ 0, %.lr.ph.i272.i.preheader722 ]
  %i.ri = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i273.i.prol
  %i.rj = load double, ptr %i.ri, align 8, !tbaa !22
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr %i.qy, i64 %indvars.iv.i273.i.prol
  %i.rl = load double, ptr %i.rk, align 8, !tbaa !22
  %i.rm = fmul double %i.rj, %i.rl
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %i.qx, i64 %indvars.iv.i273.i.prol
  store double %i.rm, ptr %i.rn, align 8, !tbaa !22
  %indvars.iv.next.i274.i.prol = add nuw nsw i64 %indvars.iv.i273.i.prol, 1 ; 2 uses
  %prol.iter730.next = add i64 %prol.iter730, 1   ; 2 uses
  %prol.iter730.cmp.not = icmp eq i64 %prol.iter730.next, %xtraiter728
  br i1 %prol.iter730.cmp.not, label %.lr.ph.i272.i.prol.loopexit, label %.lr.ph.i272.i.prol, !llvm.loop !128

.lr.ph.i272.i.prol.loopexit:                      ; preds = %.lr.ph.i272.i.prol, %.lr.ph.i272.i.preheader722
  %indvars.iv.i273.i.unr = phi i64 [ %indvars.iv.i273.i.ph, %.lr.ph.i272.i.preheader722 ], [ %indvars.iv.next.i274.i.prol, %.lr.ph.i272.i.prol ]
  %i.ro = sub nsw i64 %indvars.iv.i273.i.ph, %.pre-phi.i
  %i.rp = icmp ugt i64 %i.ro, -4
  br i1 %i.rp, label %v_sum_prods.exit.i, label %.lr.ph.i272.i

.lr.ph.i272.i:                                    ; preds = %.lr.ph.i272.i.prol.loopexit, %.lr.ph.i272.i
  %indvars.iv.i273.i = phi i64 [ %indvars.iv.next.i274.i.3, %.lr.ph.i272.i ], [ %indvars.iv.i273.i.unr, %.lr.ph.i272.i.prol.loopexit ] ; 7 uses
  %i.rq = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i273.i
  %i.rr = load double, ptr %i.rq, align 8, !tbaa !22
  %i.rs = getelementptr inbounds nuw [8 x i8], ptr %i.qy, i64 %indvars.iv.i273.i
  %i.rt = load double, ptr %i.rs, align 8, !tbaa !22
  %i.ru = fmul double %i.rr, %i.rt
  %i.rv = getelementptr inbounds nuw [8 x i8], ptr %i.qx, i64 %indvars.iv.i273.i
  store double %i.ru, ptr %i.rv, align 8, !tbaa !22
  %indvars.iv.next.i274.i = add nuw nsw i64 %indvars.iv.i273.i, 1 ; 3 uses
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next.i274.i
  %i.rx = load double, ptr %i.rw, align 8, !tbaa !22
  %i.ry = getelementptr inbounds nuw [8 x i8], ptr %i.qy, i64 %indvars.iv.next.i274.i
  %i.rz = load double, ptr %i.ry, align 8, !tbaa !22
  %i.sa = fmul double %i.rx, %i.rz
  %i.sb = getelementptr inbounds nuw [8 x i8], ptr %i.qx, i64 %indvars.iv.next.i274.i
  store double %i.sa, ptr %i.sb, align 8, !tbaa !22
  %indvars.iv.next.i274.i.1 = add nuw nsw i64 %indvars.iv.i273.i, 2 ; 3 uses
  %i.sc = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next.i274.i.1
  %i.sd = load double, ptr %i.sc, align 8, !tbaa !22
  %i.se = getelementptr inbounds nuw [8 x i8], ptr %i.qy, i64 %indvars.iv.next.i274.i.1
  %i.sf = load double, ptr %i.se, align 8, !tbaa !22
  %i.sg = fmul double %i.sd, %i.sf
  %i.sh = getelementptr inbounds nuw [8 x i8], ptr %i.qx, i64 %indvars.iv.next.i274.i.1
  store double %i.sg, ptr %i.sh, align 8, !tbaa !22
  %indvars.iv.next.i274.i.2 = add nuw nsw i64 %indvars.iv.i273.i, 3 ; 3 uses
  %i.si = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next.i274.i.2
  %i.sj = load double, ptr %i.si, align 8, !tbaa !22
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %i.qy, i64 %indvars.iv.next.i274.i.2
  %i.sl = load double, ptr %i.sk, align 8, !tbaa !22
  %i.sm = fmul double %i.sj, %i.sl
  %i.sn = getelementptr inbounds nuw [8 x i8], ptr %i.qx, i64 %indvars.iv.next.i274.i.2
  store double %i.sm, ptr %i.sn, align 8, !tbaa !22
  %indvars.iv.next.i274.i.3 = add nuw nsw i64 %indvars.iv.i273.i, 4 ; 2 uses
  %exitcond.not.i275.i.3 = icmp eq i64 %indvars.iv.next.i274.i.3, %.pre-phi.i
  br i1 %exitcond.not.i275.i.3, label %v_sum_prods.exit.i, label %.lr.ph.i272.i, !llvm.loop !129

bb.j:                                             ; preds = %bb.c
  %i.so = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ha ; 3 uses
  %i.sp = getelementptr inbounds nuw [8 x i8], ptr %i.so, i64 %.pre-phi.i ; 2 uses
  br i1 %i.v, label %.lr.ph.i279.i.preheader, label %v_sum_prods.exit.i

.lr.ph.i279.i.preheader:                          ; preds = %bb.j
  br i1 %min.iters.check669, label %.lr.ph.i279.i.preheader724, label %vector.body672

vector.body672:                                   ; preds = %.lr.ph.i279.i.preheader, %vector.body672
  %index673 = phi i64 [ %index.next678, %vector.body672 ], [ 0, %.lr.ph.i279.i.preheader ] ; 4 uses
  %i.sq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index673 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 16
  %wide.load674 = load <2 x double>, ptr %i.sq, align 16, !tbaa !22
  %wide.load675 = load <2 x double>, ptr %i.sr, align 16, !tbaa !22
  %i.ss = getelementptr inbounds nuw [8 x i8], ptr %i.sp, i64 %index673 ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 16
  %wide.load676 = load <2 x double>, ptr %i.ss, align 8, !tbaa !22
  %wide.load677 = load <2 x double>, ptr %i.st, align 8, !tbaa !22
  %i.su = fmul <2 x double> %wide.load674, %wide.load676
  %i.sv = fmul <2 x double> %wide.load675, %wide.load677
  %i.sw = getelementptr inbounds nuw [8 x i8], ptr %i.so, i64 %index673 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 16
  store <2 x double> %i.su, ptr %i.sw, align 8, !tbaa !22
  store <2 x double> %i.sv, ptr %i.sx, align 8, !tbaa !22
  %index.next678 = add nuw i64 %index673, 4       ; 2 uses
  %i.sy = icmp eq i64 %index.next678, %n.vec671
  br i1 %i.sy, label %middle.block679, label %vector.body672, !llvm.loop !130

middle.block679:                                  ; preds = %vector.body672
  br i1 %cmp.n680, label %v_sum_prods.exit.i, label %.lr.ph.i279.i.preheader724

.lr.ph.i279.i.preheader724:                       ; preds = %.lr.ph.i279.i.preheader, %middle.block679
  %indvars.iv.i280.i.ph = phi i64 [ 0, %.lr.ph.i279.i.preheader ], [ %n.vec671, %middle.block679 ]
  br label %.lr.ph.i279.i

.lr.ph.i279.i:                                    ; preds = %.lr.ph.i279.i.preheader724, %.lr.ph.i279.i
  %indvars.iv.i280.i = phi i64 [ %indvars.iv.next.i281.i, %.lr.ph.i279.i ], [ %indvars.iv.i280.i.ph, %.lr.ph.i279.i.preheader724 ] ; 4 uses
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i280.i
  %i.ta = load double, ptr %i.sz, align 8, !tbaa !22
  %i.tb = getelementptr inbounds nuw [8 x i8], ptr %i.sp, i64 %indvars.iv.i280.i
  %i.tc = load double, ptr %i.tb, align 8, !tbaa !22
  %i.td = fmul double %i.ta, %i.tc
  %i.te = getelementptr inbounds nuw [8 x i8], ptr %i.so, i64 %indvars.iv.i280.i
  store double %i.td, ptr %i.te, align 8, !tbaa !22
  %indvars.iv.next.i281.i = add nuw nsw i64 %indvars.iv.i280.i, 1 ; 2 uses
  %exitcond.not.i282.i = icmp eq i64 %indvars.iv.next.i281.i, %.pre-phi.i
  br i1 %exitcond.not.i282.i, label %v_sum_prods.exit.i, label %.lr.ph.i279.i, !llvm.loop !131

bb.k:                                             ; preds = %bb.c
  %i.tf = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ha ; 3 uses
  %i.tg = getelementptr inbounds nuw [8 x i8], ptr %i.tf, i64 %.pre-phi.i ; 2 uses
  br i1 %i.v, label %.lr.ph.i286.i.preheader, label %v_sum_prods.exit.i

.lr.ph.i286.i.preheader:                          ; preds = %bb.k
  br i1 %min.iters.check683, label %.lr.ph.i286.i.preheader726, label %vector.body686

vector.body686:                                   ; preds = %.lr.ph.i286.i.preheader, %vector.body686
  %index687 = phi i64 [ %index.next692, %vector.body686 ], [ 0, %.lr.ph.i286.i.preheader ] ; 4 uses
  %i.th = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index687 ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 16
  %wide.load688 = load <2 x double>, ptr %i.th, align 16, !tbaa !22
  %wide.load689 = load <2 x double>, ptr %i.ti, align 16, !tbaa !22
  %i.tj = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %index687 ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 16
  %wide.load690 = load <2 x double>, ptr %i.tj, align 8, !tbaa !22
  %wide.load691 = load <2 x double>, ptr %i.tk, align 8, !tbaa !22
  %i.tl = fmul <2 x double> %wide.load688, %wide.load690
  %i.tm = fmul <2 x double> %wide.load689, %wide.load691
  %i.tn = getelementptr inbounds nuw [8 x i8], ptr %i.tf, i64 %index687 ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 16
  store <2 x double> %i.tl, ptr %i.tn, align 8, !tbaa !22
  store <2 x double> %i.tm, ptr %i.to, align 8, !tbaa !22
  %index.next692 = add nuw i64 %index687, 4       ; 2 uses
  %i.tp = icmp eq i64 %index.next692, %n.vec685
  br i1 %i.tp, label %middle.block693, label %vector.body686, !llvm.loop !132

middle.block693:                                  ; preds = %vector.body686
  br i1 %cmp.n694, label %v_sum_prods.exit.i, label %.lr.ph.i286.i.preheader726

.lr.ph.i286.i.preheader726:                       ; preds = %.lr.ph.i286.i.preheader, %middle.block693
  %indvars.iv.i287.i.ph = phi i64 [ 0, %.lr.ph.i286.i.preheader ], [ %n.vec685, %middle.block693 ]
  br label %.lr.ph.i286.i

.lr.ph.i286.i:                                    ; preds = %.lr.ph.i286.i.preheader726, %.lr.ph.i286.i
  %indvars.iv.i287.i = phi i64 [ %indvars.iv.next.i288.i, %.lr.ph.i286.i ], [ %indvars.iv.i287.i.ph, %.lr.ph.i286.i.preheader726 ] ; 4 uses
  %i.tq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i287.i
  %i.tr = load double, ptr %i.tq, align 8, !tbaa !22
  %i.ts = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %indvars.iv.i287.i
  %i.tt = load double, ptr %i.ts, align 8, !tbaa !22
  %i.tu = fmul double %i.tr, %i.tt
  %i.tv = getelementptr inbounds nuw [8 x i8], ptr %i.tf, i64 %indvars.iv.i287.i
  store double %i.tu, ptr %i.tv, align 8, !tbaa !22
  %indvars.iv.next.i288.i = add nuw nsw i64 %indvars.iv.i287.i, 1 ; 2 uses
  %exitcond.not.i289.i = icmp eq i64 %indvars.iv.next.i288.i, %.pre-phi.i
  br i1 %exitcond.not.i289.i, label %v_sum_prods.exit.i, label %.lr.ph.i286.i, !llvm.loop !133

bb.l:                                             ; preds = %bb.c
  br i1 %i.v, label %.lr.ph.preheader.i291.i, label %v_sum_prods.exit.i

.lr.ph.preheader.i291.i:                          ; preds = %bb.l
  %i.tw = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ha
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.tw, i8 0, i64 %i.dj, i1 false), !tbaa !22
  br label %v_sum_prods.exit.i

default.unreachable:                              ; preds = %bb.c
  unreachable

v_sum_prods.exit.i:                               ; preds = %.lr.ph.i286.i, %.lr.ph.i279.i, %.lr.ph.i272.i.prol.loopexit, %.lr.ph.i272.i, %.lr.ph.i265.i.prol.loopexit, %.lr.ph.i265.i, %.lr.ph.i258.i.prol.loopexit, %.lr.ph.i258.i, %.lr.ph.i251.i.prol.loopexit, %.lr.ph.i251.i, %.lr.ph.i244.i.prol.loopexit, %.lr.ph.i244.i, %.lr.ph.i238.i.prol.loopexit, %.lr.ph.i238.i, %middle.block693, %middle.block679, %middle.block665, %middle.block647, %middle.block621, %middle.block595, %middle.block577, %middle.block551, %.lr.ph.preheader.i291.i, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %indvars.iv.next447.i = add nuw nsw i64 %indvars.iv446.i, 1 ; 2 uses
  %exitcond450.not.i = icmp eq i64 %indvars.iv.next447.i, %wide.trip.count449.i
  br i1 %exitcond450.not.i, label %._crit_edge400.i, label %bb.c

._crit_edge400.i:                                 ; preds = %v_sum_prods.exit.i
  %indvars.iv.next452.i = add nuw nsw i64 %indvars.iv451.i, 1 ; 2 uses
  %exitcond455.not.i = icmp eq i64 %indvars.iv.next452.i, %wide.trip.count454.i
  br i1 %exitcond455.not.i, label %.loopexit.i, label %.lr.ph399.i

.loopexit.i:                                      ; preds = %._crit_edge400.i, %bb.b
  br i1 %brmerge420.i, label %._crit_edge410.split.i, label %.lr.ph405.i

.lr.ph405.i:                                      ; preds = %.loopexit.i, %._crit_edge406.i
  %indvars.iv461.i = phi i64 [ %indvars.iv.next462.i, %._crit_edge406.i ], [ 0, %.loopexit.i ] ; 16 uses
  %i.tx = mul i64 %i.ey, %indvars.iv461.i         ; 4 uses
  %scevgep505 = getelementptr i8, ptr %i.fl, i64 %i.tx
  %i.ty = sub i64 %i.tx, %i.fm
  %scevgep506 = getelementptr i8, ptr %i.h, i64 %i.ty
  %scevgep507 = getelementptr i8, ptr %i.fn, i64 %i.tx
  %scevgep508 = getelementptr i8, ptr %i.h, i64 %i.tx
  %i.tz = mul i64 %i.ev, %indvars.iv461.i         ; 4 uses
  %scevgep471 = getelementptr i8, ptr %i.fo, i64 %i.tz
  %scevgep472 = getelementptr i8, ptr %i.fp, i64 %i.tz
  %scevgep473 = getelementptr i8, ptr %i.fq, i64 %i.tz
  %scevgep474 = getelementptr i8, ptr %i.h, i64 %i.tz
  %i.ua = mul i64 %i.et, %indvars.iv461.i         ; 4 uses
  %scevgep437 = getelementptr i8, ptr %13, i64 %i.ua
  %scevgep438 = getelementptr i8, ptr %i.fr, i64 %i.ua
  %scevgep439 = getelementptr i8, ptr %i.fs, i64 %i.ua
  %scevgep440 = getelementptr i8, ptr %i.h, i64 %i.ua
  %i.ub = mul i64 %i.ep, %indvars.iv461.i         ; 4 uses
  %scevgep403 = getelementptr i8, ptr %i.ft, i64 %i.ub
  %i.uc = sub i64 %i.ub, %i.fu
  %scevgep404 = getelementptr i8, ptr %i.h, i64 %i.uc
  %scevgep405 = getelementptr i8, ptr %i.fv, i64 %i.ub
  %scevgep406 = getelementptr i8, ptr %i.h, i64 %i.ub
  %i.ud = mul i64 %i.en, %indvars.iv461.i         ; 4 uses
  %scevgep369 = getelementptr i8, ptr %i.fw, i64 %i.ud
  %i.ue = sub i64 %i.ud, %i.fx
  %scevgep370 = getelementptr i8, ptr %i.h, i64 %i.ue
  %scevgep371 = getelementptr i8, ptr %i.fy, i64 %i.ud
  %scevgep372 = getelementptr i8, ptr %i.h, i64 %i.ud
  %i.uf = mul i64 %i.ej, %indvars.iv461.i         ; 4 uses
  %scevgep335 = getelementptr i8, ptr %i.fz, i64 %i.uf
  %i.ug = sub i64 %i.uf, %i.ga
  %scevgep336 = getelementptr i8, ptr %i.h, i64 %i.ug
  %scevgep337 = getelementptr i8, ptr %i.gb, i64 %i.uf
  %scevgep338 = getelementptr i8, ptr %i.h, i64 %i.uf
  %i.uh = mul i64 %i.eg, %indvars.iv461.i         ; 4 uses
  %scevgep301 = getelementptr i8, ptr %i.gc, i64 %i.uh
  %scevgep302 = getelementptr i8, ptr %i.gd, i64 %i.uh
  %scevgep303 = getelementptr i8, ptr %i.ge, i64 %i.uh
  %scevgep304 = getelementptr i8, ptr %i.h, i64 %i.uh
  %i.ui = mul i64 %i.ee, %indvars.iv461.i         ; 4 uses
  %scevgep267 = getelementptr i8, ptr %14, i64 %i.ui
  %scevgep268 = getelementptr i8, ptr %i.gf, i64 %i.ui
  %scevgep269 = getelementptr i8, ptr %i.gg, i64 %i.ui
  %scevgep270 = getelementptr i8, ptr %i.h, i64 %i.ui
  %i.uj = mul i64 %i.ea, %indvars.iv461.i         ; 4 uses
  %scevgep233 = getelementptr i8, ptr %i.gh, i64 %i.uj
  %i.uk = sub i64 %i.uj, %i.gi
  %scevgep234 = getelementptr i8, ptr %i.h, i64 %i.uk
  %scevgep235 = getelementptr i8, ptr %i.gj, i64 %i.uj
  %scevgep236 = getelementptr i8, ptr %i.h, i64 %i.uj
  %i.ul = mul i64 %i.dy, %indvars.iv461.i         ; 4 uses
  %scevgep199.a = getelementptr i8, ptr %i.gk, i64 %i.ul
  %scevgep200 = getelementptr i8, ptr %i.gl, i64 %i.ul
  %scevgep201 = getelementptr i8, ptr %i.gm, i64 %i.ul
  %scevgep202 = getelementptr i8, ptr %i.h, i64 %i.ul
  %i.um = mul i64 %i.dv, %indvars.iv461.i         ; 4 uses
  %scevgep165.a = getelementptr i8, ptr %i.gn, i64 %i.um
  %scevgep166.a = getelementptr i8, ptr %i.go, i64 %i.um
  %scevgep167.a = getelementptr i8, ptr %i.gp, i64 %i.um
  %scevgep168 = getelementptr i8, ptr %i.h, i64 %i.um
  %i.un = mul i64 %i.dt, %indvars.iv461.i         ; 4 uses
  %scevgep = getelementptr i8, ptr %i.gq, i64 %i.un
  %i.uo = sub i64 %i.un, %i.gr
  %scevgep136 = getelementptr i8, ptr %i.h, i64 %i.uo
  %scevgep137 = getelementptr i8, ptr %i.gs, i64 %i.un
  %scevgep138 = getelementptr i8, ptr %i.h, i64 %i.un
  %i.up = mul nsw i64 %indvars.iv461.i, %i.dk
  %i.uq = icmp eq i64 %indvars.iv461.i, 0
  %i.ur = icmp eq i64 %indvars.iv461.i, %i.dp
  %i.us = select i1 %i.ur, i32 6, i32 3
  %i.ut = select i1 %i.uq, i32 0, i32 %i.us
  %bound0512 = icmp ult ptr %scevgep508, %scevgep505
  %bound1513 = icmp ult ptr %scevgep506, %scevgep507
  %found.conflict514 = and i1 %bound0512, %bound1513
  %bound0478 = icmp ult ptr %scevgep474, %scevgep471
  %bound1479 = icmp ult ptr %scevgep472, %scevgep473
  %found.conflict480 = and i1 %bound0478, %bound1479
  %bound0444 = icmp ult ptr %scevgep440, %scevgep437
  %bound1445 = icmp ult ptr %scevgep438, %scevgep439
  %found.conflict446 = and i1 %bound0444, %bound1445
  %bound0410 = icmp ult ptr %scevgep406, %scevgep403
  %bound1411 = icmp ult ptr %scevgep404, %scevgep405
  %found.conflict412 = and i1 %bound0410, %bound1411
  %bound0376 = icmp ult ptr %scevgep372, %scevgep369
  %bound1377 = icmp ult ptr %scevgep370, %scevgep371
  %found.conflict378 = and i1 %bound0376, %bound1377
  %bound0342 = icmp ult ptr %scevgep338, %scevgep335
  %bound1343 = icmp ult ptr %scevgep336, %scevgep337
  %found.conflict344 = and i1 %bound0342, %bound1343
  %bound0308 = icmp ult ptr %scevgep304, %scevgep301
  %bound1309 = icmp ult ptr %scevgep302, %scevgep303
  %found.conflict310 = and i1 %bound0308, %bound1309
  %bound0274 = icmp ult ptr %scevgep270, %scevgep267
  %bound1275 = icmp ult ptr %scevgep268, %scevgep269
  %found.conflict276 = and i1 %bound0274, %bound1275
  %bound0240 = icmp ult ptr %scevgep236, %scevgep233
  %bound1241 = icmp ult ptr %scevgep234, %scevgep235
  %found.conflict242 = and i1 %bound0240, %bound1241
  %bound0206 = icmp ult ptr %scevgep202, %scevgep199.a
  %bound1207 = icmp ult ptr %scevgep200, %scevgep201
  %found.conflict208 = and i1 %bound0206, %bound1207
  %bound0172 = icmp ult ptr %scevgep168, %scevgep165.a
  %bound1173 = icmp ult ptr %scevgep166.a, %scevgep167.a
  %found.conflict174 = and i1 %bound0172, %bound1173
  %bound0 = icmp ult ptr %scevgep138, %scevgep
  %bound1 = icmp ult ptr %scevgep136, %scevgep137
  %found.conflict = and i1 %bound0, %bound1
  br label %bb.m

bb.m:                                             ; preds = %v_inc_by_prod.exit.i, %.lr.ph405.i
  %indvars.iv456.i = phi i64 [ 0, %.lr.ph405.i ], [ %indvars.iv.next457.i, %v_inc_by_prod.exit.i ] ; 4 uses
  %i.uu = mul nsw i64 %indvars.iv456.i, %i.dl
  %i.uv = add nsw i64 %i.uu, %i.up                ; 8 uses
  %i.uw = icmp eq i64 %indvars.iv456.i, 0
  %i.ux = icmp eq i64 %indvars.iv456.i, %i.do
  %i.uy = select i1 %i.ux, i32 2, i32 1
  %i.uz = select i1 %i.uw, i32 0, i32 %i.uy
  %i.va = add nuw nsw i32 %i.uz, %i.ut
  switch i32 %i.va, label %v_inc_by_prod.exit.i [
    i32 8, label %bb.u
    i32 1, label %bb.n
    i32 2, label %bb.o
    i32 3, label %bb.p
    i32 4, label %bb.q
    i32 5, label %bb.r
    i32 6, label %bb.s
    i32 7, label %bb.t
  ]

bb.n:                                             ; preds = %bb.m
  %i.vb = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.uv ; 5 uses
  %i.vc = getelementptr inbounds [8 x i8], ptr %i.vb, i64 %i.dm ; 4 uses
  br i1 %i.v, label %.lr.ph.i294.i.preheader, label %v_inc_by_prod.exit.i

.lr.ph.i294.i.preheader:                          ; preds = %bb.n
  %brmerge800 = select i1 %min.iters.check204, i1 true, i1 %found.conflict208
  br i1 %brmerge800, label %.lr.ph.i294.i.preheader699, label %vector.body212

vector.body212:                                   ; preds = %.lr.ph.i294.i.preheader, %vector.body212
  %index213 = phi i64 [ %index.next220, %vector.body212 ], [ 0, %.lr.ph.i294.i.preheader ] ; 4 uses
  %i.vd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index213 ; 2 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 16
  %wide.load214.a = load <2 x double>, ptr %i.vd, align 16, !tbaa !22
  %wide.load215.a = load <2 x double>, ptr %i.ve, align 16, !tbaa !22
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr %i.vc, i64 %index213 ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 16
  %wide.load216 = load <2 x double>, ptr %i.vf, align 8, !tbaa !22, !alias.scope !196
  %wide.load217 = load <2 x double>, ptr %i.vg, align 8, !tbaa !22, !alias.scope !196
  %i.vh = getelementptr inbounds nuw [8 x i8], ptr %i.vb, i64 %index213 ; 3 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 16 ; 2 uses
  %wide.load218 = load <2 x double>, ptr %i.vh, align 8, !tbaa !22, !alias.scope !197, !noalias !196
  %wide.load219 = load <2 x double>, ptr %i.vi, align 8, !tbaa !22, !alias.scope !197, !noalias !196
  %i.vj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load214.a, <2 x double> %wide.load216, <2 x double> %wide.load218)
  %i.vk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load215.a, <2 x double> %wide.load217, <2 x double> %wide.load219)
  store <2 x double> %i.vj, ptr %i.vh, align 8, !tbaa !22, !alias.scope !197, !noalias !196
  store <2 x double> %i.vk, ptr %i.vi, align 8, !tbaa !22, !alias.scope !197, !noalias !196
  %index.next220 = add nuw i64 %index213, 4       ; 2 uses
  %i.vl = icmp eq i64 %index.next220, %n.vec211
  br i1 %i.vl, label %middle.block221, label %vector.body212, !llvm.loop !137

middle.block221:                                  ; preds = %vector.body212
  br i1 %cmp.n222, label %v_inc_by_prod.exit.i, label %.lr.ph.i294.i.preheader699

.lr.ph.i294.i.preheader699:                       ; preds = %.lr.ph.i294.i.preheader, %middle.block221
  %indvars.iv.i295.i.ph = phi i64 [ %n.vec211, %middle.block221 ], [ 0, %.lr.ph.i294.i.preheader ] ; 6 uses
  %.neg794 = or disjoint i64 %indvars.iv.i295.i.ph, 1
  br i1 %lcmp.mod774.not, label %.lr.ph.i294.i.prol.loopexit, label %.lr.ph.i294.i.prol

.lr.ph.i294.i.prol:                               ; preds = %.lr.ph.i294.i.preheader699
  %i.vm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i295.i.ph
  %i.vn = load double, ptr %i.vm, align 16, !tbaa !22
  %i.vo = getelementptr inbounds nuw [8 x i8], ptr %i.vc, i64 %indvars.iv.i295.i.ph
  %i.vp = load double, ptr %i.vo, align 8, !tbaa !22
  %i.vq = getelementptr inbounds nuw [8 x i8], ptr %i.vb, i64 %indvars.iv.i295.i.ph ; 2 uses
  %i.vr = load double, ptr %i.vq, align 8, !tbaa !22
  %i.vs = tail call double @llvm.fmuladd.f64(double %i.vn, double %i.vp, double %i.vr)
  store double %i.vs, ptr %i.vq, align 8, !tbaa !22
  %indvars.iv.next.i296.i.prol = or disjoint i64 %indvars.iv.i295.i.ph, 1
  br label %.lr.ph.i294.i.prol.loopexit

.lr.ph.i294.i.prol.loopexit:                      ; preds = %.lr.ph.i294.i.prol, %.lr.ph.i294.i.preheader699
  %indvars.iv.i295.i.unr = phi i64 [ %indvars.iv.i295.i.ph, %.lr.ph.i294.i.preheader699 ], [ %indvars.iv.next.i296.i.prol, %.lr.ph.i294.i.prol ]
  %i.vt = icmp eq i64 %.pre-phi.i, %.neg794
  br i1 %i.vt, label %v_inc_by_prod.exit.i, label %.lr.ph.i294.i

.lr.ph.i294.i:                                    ; preds = %.lr.ph.i294.i.prol.loopexit, %.lr.ph.i294.i
  %indvars.iv.i295.i = phi i64 [ %indvars.iv.next.i296.i.1, %.lr.ph.i294.i ], [ %indvars.iv.i295.i.unr, %.lr.ph.i294.i.prol.loopexit ] ; 5 uses
  %i.vu = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i295.i
  %i.vv = load double, ptr %i.vu, align 8, !tbaa !22
  %i.vw = getelementptr inbounds nuw [8 x i8], ptr %i.vc, i64 %indvars.iv.i295.i
  %i.vx = load double, ptr %i.vw, align 8, !tbaa !22
  %i.vy = getelementptr inbounds nuw [8 x i8], ptr %i.vb, i64 %indvars.iv.i295.i ; 2 uses
  %i.vz = load double, ptr %i.vy, align 8, !tbaa !22
  %i.wa = tail call double @llvm.fmuladd.f64(double %i.vv, double %i.vx, double %i.vz)
  store double %i.wa, ptr %i.vy, align 8, !tbaa !22
  %indvars.iv.next.i296.i = add nuw nsw i64 %indvars.iv.i295.i, 1 ; 3 uses
  %i.wb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i296.i
  %i.wc = load double, ptr %i.wb, align 8, !tbaa !22
  %i.wd = getelementptr inbounds nuw [8 x i8], ptr %i.vc, i64 %indvars.iv.next.i296.i
  %i.we = load double, ptr %i.wd, align 8, !tbaa !22
  %i.wf = getelementptr inbounds nuw [8 x i8], ptr %i.vb, i64 %indvars.iv.next.i296.i ; 2 uses
  %i.wg = load double, ptr %i.wf, align 8, !tbaa !22
  %i.wh = tail call double @llvm.fmuladd.f64(double %i.wc, double %i.we, double %i.wg)
  store double %i.wh, ptr %i.wf, align 8, !tbaa !22
  %indvars.iv.next.i296.i.1 = add nuw nsw i64 %indvars.iv.i295.i, 2 ; 2 uses
  %exitcond.not.i297.i.1 = icmp eq i64 %indvars.iv.next.i296.i.1, %.pre-phi.i
  br i1 %exitcond.not.i297.i.1, label %v_inc_by_prod.exit.i, label %.lr.ph.i294.i, !llvm.loop !138

bb.o:                                             ; preds = %bb.m
  %i.wi = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.uv ; 5 uses
  %i.wj = getelementptr inbounds [8 x i8], ptr %i.wi, i64 %i.dm ; 4 uses
  br i1 %i.v, label %.lr.ph.i300.i.preheader, label %v_inc_by_prod.exit.i

.lr.ph.i300.i.preheader:                          ; preds = %bb.o
  %brmerge801 = select i1 %min.iters.check238, i1 true, i1 %found.conflict242
  br i1 %brmerge801, label %.lr.ph.i300.i.preheader701, label %vector.body246

vector.body246:                                   ; preds = %.lr.ph.i300.i.preheader, %vector.body246
  %index247 = phi i64 [ %index.next254, %vector.body246 ], [ 0, %.lr.ph.i300.i.preheader ] ; 4 uses
  %i.wk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index247 ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 16
  %wide.load248 = load <2 x double>, ptr %i.wk, align 16, !tbaa !22
  %wide.load249 = load <2 x double>, ptr %i.wl, align 16, !tbaa !22
  %i.wm = getelementptr inbounds nuw [8 x i8], ptr %i.wj, i64 %index247 ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 16
  %wide.load250 = load <2 x double>, ptr %i.wm, align 8, !tbaa !22, !alias.scope !198
  %wide.load251 = load <2 x double>, ptr %i.wn, align 8, !tbaa !22, !alias.scope !198
  %i.wo = getelementptr inbounds nuw [8 x i8], ptr %i.wi, i64 %index247 ; 3 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 16 ; 2 uses
  %wide.load252 = load <2 x double>, ptr %i.wo, align 8, !tbaa !22, !alias.scope !199, !noalias !198
  %wide.load253 = load <2 x double>, ptr %i.wp, align 8, !tbaa !22, !alias.scope !199, !noalias !198
  %i.wq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load248, <2 x double> %wide.load250, <2 x double> %wide.load252)
  %i.wr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load249, <2 x double> %wide.load251, <2 x double> %wide.load253)
  store <2 x double> %i.wq, ptr %i.wo, align 8, !tbaa !22, !alias.scope !199, !noalias !198
  store <2 x double> %i.wr, ptr %i.wp, align 8, !tbaa !22, !alias.scope !199, !noalias !198
  %index.next254 = add nuw i64 %index247, 4       ; 2 uses
  %i.ws = icmp eq i64 %index.next254, %n.vec245
  br i1 %i.ws, label %middle.block255, label %vector.body246, !llvm.loop !142

middle.block255:                                  ; preds = %vector.body246
  br i1 %cmp.n256, label %v_inc_by_prod.exit.i, label %.lr.ph.i300.i.preheader701

.lr.ph.i300.i.preheader701:                       ; preds = %.lr.ph.i300.i.preheader, %middle.block255
  %indvars.iv.i301.i.ph = phi i64 [ %n.vec245, %middle.block255 ], [ 0, %.lr.ph.i300.i.preheader ] ; 6 uses
  %.neg793 = or disjoint i64 %indvars.iv.i301.i.ph, 1
  br i1 %lcmp.mod771.not, label %.lr.ph.i300.i.prol.loopexit, label %.lr.ph.i300.i.prol

.lr.ph.i300.i.prol:                               ; preds = %.lr.ph.i300.i.preheader701
  %i.wt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i301.i.ph
  %i.wu = load double, ptr %i.wt, align 16, !tbaa !22
  %i.wv = getelementptr inbounds nuw [8 x i8], ptr %i.wj, i64 %indvars.iv.i301.i.ph
  %i.ww = load double, ptr %i.wv, align 8, !tbaa !22
  %i.wx = getelementptr inbounds nuw [8 x i8], ptr %i.wi, i64 %indvars.iv.i301.i.ph ; 2 uses
  %i.wy = load double, ptr %i.wx, align 8, !tbaa !22
  %i.wz = tail call double @llvm.fmuladd.f64(double %i.wu, double %i.ww, double %i.wy)
  store double %i.wz, ptr %i.wx, align 8, !tbaa !22
  %indvars.iv.next.i302.i.prol = or disjoint i64 %indvars.iv.i301.i.ph, 1
  br label %.lr.ph.i300.i.prol.loopexit

.lr.ph.i300.i.prol.loopexit:                      ; preds = %.lr.ph.i300.i.prol, %.lr.ph.i300.i.preheader701
  %indvars.iv.i301.i.unr = phi i64 [ %indvars.iv.i301.i.ph, %.lr.ph.i300.i.preheader701 ], [ %indvars.iv.next.i302.i.prol, %.lr.ph.i300.i.prol ]
end_hunk_2
