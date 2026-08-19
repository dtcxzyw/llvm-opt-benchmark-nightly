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
  %4 = trunc i64 %indvars.iv96 to i32
  %5 = mul i32 %i.i, %4                           ; 2 uses
  %i.au = trunc nuw nsw i64 %indvars.iv96 to i32
  %i.av = uitofp nneg i32 %i.au to double
  %i.aw = fmul double %i.m, %i.av
  %i.ax = mul nsw i64 %indvars.iv96, %i.w
  %i.ay = icmp eq i64 %indvars.iv96, 5
  %i.az = select i1 %i.ay, i32 %i.n, i32 %i.i     ; 4 uses
  %i.ba = icmp eq i64 %indvars.iv96, 0
  %i.bb = select i1 %i.ba, i32 %i.i, i32 %i.n     ; 4 uses
  %i.bc = add i32 %i.bb, %5
  %i.bd = add i32 %i.az, %5
  %i.be = add i32 %i.az, %i.at
  %i.bf = add i32 %i.bb, %i.at
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
  %i.bg = mul i64 %indvars.iv92, %i.s             ; 3 uses
  %i.bh = add i64 %i.as, %i.bg                    ; 2 uses
  %i.bi = trunc i64 %i.bh to i32
  %sext = shl i64 %i.bh, 32                       ; 2 uses
  %i.bj = ashr exact i64 %sext, 32
  %i.bk = ashr exact i64 %sext, 29                ; 6 uses
  %scevgep101 = getelementptr i8, ptr %scevgep, i64 %i.bk
  %scevgep103 = getelementptr i8, ptr %scevgep102, i64 %i.bk
  %scevgep104 = getelementptr i8, ptr %i.b, i64 %i.bk ; 7 uses
  %scevgep106 = getelementptr i8, ptr %scevgep105, i64 %i.bk ; 7 uses
  %i.bl = trunc i64 %i.bg to i32
  %i.bm = add i32 %i.be, %i.bl
  %i.bn = sext i32 %i.bm to i64
  %i.bo = shl nsw i64 %i.bn, 3                    ; 2 uses
  %scevgep114 = getelementptr i8, ptr %i.a, i64 %i.bo
  %scevgep116 = getelementptr i8, ptr %scevgep115, i64 %i.bo
  %i.bp = trunc i64 %i.bg to i32
  %i.bq = add i32 %i.bf, %i.bp
  %i.br = sext i32 %i.bq to i64
  %i.bs = shl nsw i64 %i.br, 3                    ; 2 uses
  %scevgep117 = getelementptr i8, ptr %i.a, i64 %i.bs
  %scevgep119 = getelementptr i8, ptr %scevgep118, i64 %i.bs
  %scevgep120 = getelementptr i8, ptr %i.a, i64 %i.bk
  %scevgep122 = getelementptr i8, ptr %scevgep121, i64 %i.bk
  %i.bt = mul i64 %indvars.iv92, %i.s             ; 2 uses
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = add i32 %i.bc, %i.bu                    ; 2 uses
  %i.bw = trunc i64 %i.bt to i32
  %i.bx = add i32 %i.bd, %i.bw                    ; 2 uses
  %i.by = trunc nuw nsw i64 %indvars.iv92 to i32
  %i.bz = uitofp nneg i32 %i.by to double
  %i.ca = fmul double %i.k, %i.bz
  %i.cb = mul nuw nsw i64 %indvars.iv92, %i.v
  %i.cc = add nsw i64 %i.cb, %i.ax                ; 3 uses
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.cc ; 5 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.cc ; 8 uses
  br i1 %i.q, label %.preheader.preheader.i, label %WebRates.exit

.preheader.preheader.i:                           ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ce, i8 0, i64 %i.t, i1 false), !tbaa !28
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %indvars.iv48.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next49.i, %._crit_edge.i ] ; 3 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv48.i ; 3 uses
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv48.i ; 3 uses
  br i1 %i.ak, label %.epil.preheader, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i, %.preheader.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader.i.new ], [ 0, %.preheader.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.i.new ], [ 0, %.preheader.i ]
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !28
  %gep.i = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.ch = load double, ptr %gep.i, align 8, !tbaa !28
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.i ; 2 uses
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !28
  %i.ck = tail call double @llvm.fmuladd.f64(double %i.cg, double %i.ch, double %i.cj)
  store double %i.ck, ptr %i.ci, align 8, !tbaa !28
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.cl = load double, ptr %i.cf, align 8, !tbaa !28
  %gep.i.1 = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %i.cm = load double, ptr %gep.i.1, align 8, !tbaa !28
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.next.i ; 2 uses
  %i.co = load double, ptr %i.cn, align 8, !tbaa !28
  %i.cp = tail call double @llvm.fmuladd.f64(double %i.cl, double %i.cm, double %i.co)
  store double %i.cp, ptr %i.cn, align 8, !tbaa !28
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.preheader.i.new

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod182)
  %i.cq = load double, ptr %i.cf, align 8, !tbaa !28
  %gep.i.epil = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.epil.init
  %i.cr = load double, ptr %gep.i.epil, align 8, !tbaa !28
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !28
  %i.cu = tail call double @llvm.fmuladd.f64(double %i.cq, double %i.cr, double %i.ct)
  store double %i.cu, ptr %i.cs, align 8, !tbaa !28
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1 ; 2 uses
  %exitcond52.not.i = icmp eq i64 %indvars.iv.next49.i, %i.s
  br i1 %exitcond52.not.i, label %._crit_edge41.split.i, label %.preheader.i

._crit_edge41.split.i:                            ; preds = %._crit_edge.i
  %i.cv = tail call double @llvm.fmuladd.f64(double %i.ca, double %i.aw, double 1.000000e+00) ; 4 uses
  %brmerge = select i1 %min.iters.check167, i1 true, i1 %conflict.rdx165
  br i1 %brmerge, label %.lr.ph44.i.preheader, label %vector.ph168

vector.ph168:                                     ; preds = %._crit_edge41.split.i
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cv, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body170

vector.body170:                                   ; preds = %vector.body170, %vector.ph168
  %index171 = phi i64 [ 0, %vector.ph168 ], [ %index.next178, %vector.body170 ] ; 4 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %index171 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %wide.load172 = load <2 x double>, ptr %i.cw, align 8, !tbaa !28, !alias.scope !51
  %wide.load173 = load <2 x double>, ptr %i.cx, align 8, !tbaa !28, !alias.scope !51
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %index171 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %wide.load174 = load <2 x double>, ptr %i.cy, align 8, !tbaa !28, !alias.scope !54
  %wide.load175 = load <2 x double>, ptr %i.cz, align 8, !tbaa !28, !alias.scope !54
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index171 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16 ; 2 uses
  %wide.load176 = load <2 x double>, ptr %i.da, align 8, !tbaa !28, !alias.scope !56, !noalias !58
  %wide.load177 = load <2 x double>, ptr %i.db, align 8, !tbaa !28, !alias.scope !56, !noalias !58
  %i.dc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load174, <2 x double> %broadcast.splat, <2 x double> %wide.load176)
  %i.dd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load175, <2 x double> %broadcast.splat, <2 x double> %wide.load177)
  %i.de = fmul <2 x double> %wide.load172, %i.dc
  %i.df = fmul <2 x double> %wide.load173, %i.dd
  store <2 x double> %i.de, ptr %i.da, align 8, !tbaa !28, !alias.scope !56, !noalias !58
  store <2 x double> %i.df, ptr %i.db, align 8, !tbaa !28, !alias.scope !56, !noalias !58
  %index.next178 = add nuw i64 %index171, 4       ; 2 uses
  %i.dg = icmp eq i64 %index.next178, %n.vec169
  br i1 %i.dg, label %middle.block179, label %vector.body170, !llvm.loop !59

middle.block179:                                  ; preds = %vector.body170
  br i1 %cmp.n180, label %WebRates.exit, label %.lr.ph44.i.preheader

.lr.ph44.i.preheader:                             ; preds = %._crit_edge41.split.i, %middle.block179
  %indvars.iv53.i.ph = phi i64 [ %n.vec169, %middle.block179 ], [ 0, %._crit_edge41.split.i ] ; 6 uses
  br i1 %lcmp.mod184.not, label %.lr.ph44.i.prol.loopexit, label %.lr.ph44.i.prol

.lr.ph44.i.prol:                                  ; preds = %.lr.ph44.i.preheader
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv53.i.ph
  %i.di = load double, ptr %i.dh, align 8, !tbaa !28
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv53.i.ph
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !28
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv53.i.ph ; 2 uses
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !28
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.dk, double %i.cv, double %i.dm)
  %i.do = fmul double %i.di, %i.dn
  store double %i.do, ptr %i.dl, align 8, !tbaa !28
  %indvars.iv.next54.i.prol = or disjoint i64 %indvars.iv53.i.ph, 1
  br label %.lr.ph44.i.prol.loopexit

.lr.ph44.i.prol.loopexit:                         ; preds = %.lr.ph44.i.prol, %.lr.ph44.i.preheader
  %indvars.iv53.i.unr = phi i64 [ %indvars.iv53.i.ph, %.lr.ph44.i.preheader ], [ %indvars.iv.next54.i.prol, %.lr.ph44.i.prol ]
  %i.dp = icmp eq i64 %indvars.iv53.i.ph, %i.al
  br i1 %i.dp, label %WebRates.exit, label %.lr.ph44.i

.lr.ph44.i:                                       ; preds = %.lr.ph44.i.prol.loopexit, %.lr.ph44.i
  %indvars.iv53.i = phi i64 [ %indvars.iv.next54.i.1, %.lr.ph44.i ], [ %indvars.iv53.i.unr, %.lr.ph44.i.prol.loopexit ] ; 5 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv53.i
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !28
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv53.i
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !28
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv53.i ; 2 uses
  %i.dv = load double, ptr %i.du, align 8, !tbaa !28
  %i.dw = tail call double @llvm.fmuladd.f64(double %i.dt, double %i.cv, double %i.dv)
  %i.dx = fmul double %i.dr, %i.dw
  store double %i.dx, ptr %i.du, align 8, !tbaa !28
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1 ; 3 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv.next54.i
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !28
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next54.i
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !28
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.next54.i ; 2 uses
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !28
  %i.ee = tail call double @llvm.fmuladd.f64(double %i.eb, double %i.cv, double %i.ed)
  %i.ef = fmul double %i.dz, %i.ee
  store double %i.ef, ptr %i.ec, align 8, !tbaa !28
  %indvars.iv.next54.i.1 = add nuw nsw i64 %indvars.iv53.i, 2 ; 2 uses
  %exitcond57.not.i.1 = icmp eq i64 %indvars.iv.next54.i.1, %i.s
  br i1 %exitcond57.not.i.1, label %WebRates.exit, label %.lr.ph44.i, !llvm.loop !60

WebRates.exit:                                    ; preds = %.lr.ph44.i.prol.loopexit, %.lr.ph44.i, %middle.block179, %bb.b
  %i.eg = icmp eq i64 %indvars.iv92, 5
  %i.eh = select i1 %i.eg, i32 %i.r, i32 %i.e     ; 4 uses
  %i.ei = icmp eq i64 %indvars.iv92, 0
  %i.ej = select i1 %i.ei, i32 %i.e, i32 %i.r     ; 4 uses
  %i.ek = trunc nsw i64 %i.cc to i32              ; 5 uses
  %i.el = add i32 %i.ek, -1                       ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %WebRates.exit
  %i.em = add i32 %i.ek, %i.an
  %i.en = icmp slt i32 %i.em, %i.ek
  %i.eo = add i32 %i.bv, %i.an
  %i.ep = icmp slt i32 %i.eo, %i.bv
  %i.eq = or i1 %i.ep, %i.ao
  %i.er = add i32 %i.bx, %i.an
  %i.es = icmp slt i32 %i.er, %i.bx
  %i.et = add i32 %i.ej, %i.ek                    ; 2 uses
  %i.eu = add i32 %i.et, %i.an
  %i.ev = icmp slt i32 %i.eu, %i.et
  %i.ew = add nsw i32 %i.eh, %i.ek                ; 2 uses
  %i.ex = add i32 %i.ew, %i.an
  %i.ey = icmp slt i32 %i.ex, %i.ew
  %i.ez = or i1 %i.en, %i.eq
  %i.fa = or i1 %i.es, %i.ez
  %i.fb = or i1 %i.ev, %i.fa
  %i.fc = or i1 %i.ey, %i.fb
  br i1 %i.fc, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.fd = sext i32 %i.eh to i64
  %i.fe = add nsw i64 %i.bj, %i.fd
  %i.ff = shl nsw i64 %i.fe, 3                    ; 2 uses
  %scevgep108 = getelementptr i8, ptr %i.a, i64 %i.ff
  %scevgep110 = getelementptr i8, ptr %scevgep109, i64 %i.ff
  %i.fg = add i32 %i.ej, %i.bi
  %i.fh = sext i32 %i.fg to i64
  %i.fi = shl nsw i64 %i.fh, 3                    ; 2 uses
  %scevgep111 = getelementptr i8, ptr %i.a, i64 %i.fi
  %scevgep113 = getelementptr i8, ptr %scevgep112, i64 %i.fi
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
  %i.fj = trunc i64 %index to i32
  %i.fk = or disjoint i32 %i.fj, 1
  %i.fl = add i32 %i.el, %i.fk                    ; 5 uses
  %i.fm = sext i32 %i.fl to i64                   ; 3 uses
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.fm
  %wide.load = load <2 x double>, ptr %i.fn, align 8, !tbaa !28, !alias.scope !61 ; 4 uses
  %i.fo = add i32 %i.fl, %i.bb
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.fp
  %wide.load146 = load <2 x double>, ptr %i.fq, align 8, !tbaa !28, !alias.scope !64
  %i.fr = fsub <2 x double> %wide.load, %wide.load146
  %i.fs = add nsw i32 %i.fl, %i.az
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ft
  %wide.load147 = load <2 x double>, ptr %i.fu, align 8, !tbaa !28, !alias.scope !66
  %i.fv = fsub <2 x double> %wide.load147, %wide.load
  %i.fw = add i32 %i.fl, %i.ej
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.fx
  %wide.load148 = load <2 x double>, ptr %i.fy, align 8, !tbaa !28, !alias.scope !68
  %i.fz = fsub <2 x double> %wide.load, %wide.load148
  %i.ga = add nsw i32 %i.fl, %i.eh
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.gb
  %wide.load149 = load <2 x double>, ptr %i.gc, align 8, !tbaa !28, !alias.scope !70
  %i.gd = fsub <2 x double> %wide.load149, %wide.load
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.h, i64 %index
  %wide.load150 = load <2 x double>, ptr %i.ge, align 8, !tbaa !28, !alias.scope !72, !noalias !74
  %i.gf = fsub <2 x double> %i.fv, %i.fr
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.g, i64 %index
  %wide.load151 = load <2 x double>, ptr %i.gg, align 8, !tbaa !28, !alias.scope !72, !noalias !74
  %i.gh = fsub <2 x double> %i.gd, %i.fz
  %i.gi = fmul <2 x double> %wide.load151, %i.gh
  %i.gj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load150, <2 x double> %i.gf, <2 x double> %i.gi)
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.fm
  %wide.load152 = load <2 x double>, ptr %i.gk, align 8, !tbaa !28, !alias.scope !76, !noalias !74
  %i.gl = fadd <2 x double> %wide.load152, %i.gj
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.fm
  store <2 x double> %i.gl, ptr %i.gm, align 8, !tbaa !28, !alias.scope !74, !noalias !78
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.gn = icmp eq i64 %index.next, %n.vec
  br i1 %i.gn, label %middle.block, label %vector.body, !llvm.loop !79

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %WebRates.exit, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %vector.scevcheck ], [ 1, %WebRates.exit ], [ %i.ap, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.go = trunc nuw nsw i64 %indvars.iv to i32
  %i.gp = add i32 %i.el, %i.go                    ; 5 uses
  %i.gq = sext i32 %i.gp to i64                   ; 3 uses
  %i.gr = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.gq
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !28 ; 4 uses
  %i.gt = add i32 %i.gp, %i.bb
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.gu
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !28
  %i.gx = fsub double %i.gs, %i.gw
  %i.gy = add nsw i32 %i.gp, %i.az
  %i.gz = sext i32 %i.gy to i64
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.gz
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !28
  %i.hc = fsub double %i.hb, %i.gs
  %i.hd = add i32 %i.gp, %i.ej
  %i.he = sext i32 %i.hd to i64
  %i.hf = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.he
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !28
  %i.hh = fsub double %i.gs, %i.hg
  %i.hi = add nsw i32 %i.gp, %i.eh
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.hj
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !28
  %i.hm = fsub double %i.hl, %i.gs
  %i.hn = add nsw i64 %indvars.iv, -1             ; 2 uses
  %i.ho = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.hn
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !28
  %i.hq = fsub double %i.hc, %i.gx
  %i.hr = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.hn
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !28
  %i.ht = fsub double %i.hm, %i.hh
  %i.hu = fmul double %i.hs, %i.ht
  %i.hv = tail call double @llvm.fmuladd.f64(double %i.hp, double %i.hq, double %i.hu)
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.gq
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !28
  %i.hy = fadd double %i.hx, %i.hv
  %i.hz = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.gq
  store double %i.hy, ptr %i.hz, align 8, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !80

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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !48
  %i.d = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #11 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 2432
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23   ; 3 uses
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
end_hunk_0
