inline.NumInlined: 1371
inline.NumDeleted: 154
begin_hunk_0_@valid_ordinal_p:bb.a
  %.not32 = icmp eq i64 %i.aj, 0
  br i1 %.not32, label %f_zero_p.exit.thread, label %f_zero_p.exit.thread6

f_zero_p.exit.thread6:                            ; preds = %bb.j, %rb_type.exit.thread8.i, %f_zero_p.exit
  %i.ak = tail call i64 @rb_fix2int(i64 noundef %0) #19
  %i.al = trunc i64 %i.ak to i32
  store i32 %i.al, ptr %4, align 4, !tbaa !6
  br label %bb.k

f_zero_p.exit.thread:                             ; preds = %bb.j, %rb_type.exit.i, %rb_type.exit.thread8.i, %f_zero_p.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.am = load i32, ptr %6, align 4, !tbaa !6
  %.not33 = icmp eq i32 %i.am, 0
  %i.an = select i1 %.not33, i32 1, i32 -1
  %i.ao = sitofp i32 %i.an to double
  call fastcc void @decode_year(i64 noundef %0, double noundef %i.ao, ptr noundef %i.b, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.k

bb.k:                                             ; preds = %f_zero_p.exit.thread6, %f_zero_p.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.m

bb.l:                                             ; preds = %guess_style.exit
  tail call fastcc void @decode_year(i64 noundef %0, double noundef %.1.i, ptr noundef %3, ptr noundef %4)
  %i.ap = load i32, ptr %4, align 4, !tbaa !6
  %i.aq = tail call fastcc i32 @c_valid_ordinal_p(i32 noundef %i.ap, i32 noundef %1, double noundef %.1.i, ptr noundef %5, ptr noundef %6)
  br label %bb.m

.critedge:                                        ; preds = %guess_style.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %.critedge
  %.1 = phi i32 [ 0, %.critedge ], [ 1, %bb.k ], [ %i.aq, %bb.l ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc void @encode_jd(i64 noundef %0, i32 noundef %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %rb_type.exit.i

bb.b:                                             ; preds = %bb.a
  switch i64 %0, label %bb.c [
    i64 0, label %f_zero_p.exit
    i64 4, label %f_zero_p.exit
    i64 20, label %f_zero_p.exit
    i64 36, label %f_zero_p.exit
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = trunc i64 %0 to i1
  br i1 %i.e, label %rb_type.exit.thread8.i, label %f_zero_p.exit

rb_type.exit.i:                                   ; preds = %bb.a
  %i.f = inttoptr i64 %0 to ptr
  %i.g = load i64, ptr %i.f, align 8, !tbaa !26
  %i.h = trunc i64 %i.g to i32
  %i.i = and i32 %i.h, 31
  switch i32 %i.i, label %f_zero_p.exit [
    i32 21, label %rb_type.exit.thread8.i
    i32 10, label %f_zero_p.exit.thread
    i32 15, label %bb.d
  ]

rb_type.exit.thread8.i:                           ; preds = %rb_type.exit.i, %bb.c
  %i.j = icmp ult i64 %0, 2
  br i1 %i.j, label %f_zero_p.exit.thread9, label %f_zero_p.exit.thread

bb.d:                                             ; preds = %rb_type.exit.i
  %i.k = tail call i64 @rb_rational_num(i64 noundef %0) #22
  %or.cond = icmp eq i64 %i.k, 1
  br i1 %or.cond, label %f_zero_p.exit.thread9, label %f_zero_p.exit.thread

f_zero_p.exit:                                    ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.c, %rb_type.exit.i
  %i.l = load i64, ptr @id_eqeq_p, align 8, !tbaa !10
  %i.m = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %0, i64 noundef %i.l, i32 noundef 1, i64 noundef 1) #19
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %f_zero_p.exit.thread, label %f_zero_p.exit.thread9

f_zero_p.exit.thread9:                            ; preds = %bb.d, %rb_type.exit.thread8.i, %f_zero_p.exit
  %i.n = sext i32 %1 to i64
  %i.o = shl nsw i64 %i.n, 1
  %i.p = or disjoint i64 %i.o, 1
  br label %bb.e

f_zero_p.exit.thread:                             ; preds = %bb.d, %rb_type.exit.i, %rb_type.exit.thread8.i, %f_zero_p.exit
  %i.q = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef 426895435, i64 noundef 42, i32 noundef 1, i64 noundef %0) #19
  %i.r = sext i32 %1 to i64
  %i.s = shl nsw i64 %i.r, 1
  %i.t = or disjoint i64 %i.s, 1
  %i.u = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.q, i64 noundef 43, i32 noundef 1, i64 noundef %i.t) #19
  br label %bb.e

bb.e:                                             ; preds = %f_zero_p.exit.thread, %f_zero_p.exit.thread9
  %storemerge = phi i64 [ %i.u, %f_zero_p.exit.thread ], [ %i.p, %f_zero_p.exit.thread9 ]
  store i64 %storemerge, ptr %2, align 8, !tbaa !10
  ret void
}

declare i64 @rb_fix2int(i64 noundef) local_unnamed_addr #1

declare i64 @rb_num2int(i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 0, 2) i32 @c_valid_ordinal_p(i32 noundef %0, i32 noundef %1, double noundef %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #10 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 3 uses
  %i.e = alloca i32, align 4                      ; 3 uses
  %i.f = alloca i32, align 4                      ; 3 uses
  %i.g = alloca i32, align 4                      ; 3 uses
  %i.h = alloca i32, align 4                      ; 3 uses
  %i.i = alloca i32, align 4                      ; 3 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %i.k = alloca i32, align 4                      ; 3 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %i.m = alloca i32, align 4                      ; 4 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  %i.o = alloca i32, align 4                      ; 4 uses
  %i.p = icmp slt i32 %1, 0
  br i1 %i.p, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #19
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.q = add nuw nsw i32 %.08.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.q, 30
  br i1 %exitcond.not.i, label %c_find_ldoy.exit.thread, label %bb.d, !llvm.loop !76

c_find_ldoy.exit.thread:                          ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #19
  br label %.critedge

bb.d:                                             ; preds = %bb.c, %bb.b
  %.08.i = phi i32 [ 0, %bb.b ], [ %i.q, %bb.c ]  ; 2 uses
  %i.r = xor i32 %.08.i, 31
  %i.s = call fastcc i32 @c_valid_civil_p(i32 noundef %0, i32 noundef 12, i32 noundef %i.r, double noundef %2, ptr noundef %i.l, ptr noundef %i.m, ptr noundef nonnull %i.n, ptr noundef nonnull %i.o)
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %bb.c, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #19
  %i.t = load i32, ptr %i.n, align 4, !tbaa !6
  %i.u = add nsw i32 %i.t, %1                     ; 3 uses
  %i.v = add nsw i32 %i.u, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #19
  %i.w = sitofp i32 %i.v to double                ; 3 uses
  %i.x = fcmp ogt double %2, %i.w
  br i1 %i.x, label %c_jd_to_civil.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = fadd double %i.w, f0xC13C7DD040000000
  %i.z = fdiv double %i.y, f0x40E1D58800000000
  %i.aa = tail call double @llvm.floor.f64(double %i.z) ; 2 uses
  %i.ab = add nsw i32 %i.u, 2
  %i.ac = sitofp i32 %i.ab to double
  %i.ad = fadd double %i.aa, %i.ac
  %i.ae = fmul nnan double %i.aa, 2.500000e-01
  %i.af = tail call double @llvm.floor.f64(double %i.ae)
  %i.ag = fsub double %i.ad, %i.af
  br label %c_jd_to_civil.exit.i

c_jd_to_civil.exit.i:                             ; preds = %bb.f, %bb.e
  %.0.i.i = phi double [ %i.ag, %bb.f ], [ %i.w, %bb.e ]
  %i.ah = fadd double %.0.i.i, 1.524000e+03       ; 2 uses
  %i.ai = fadd double %i.ah, -1.221000e+02
  %i.aj = fdiv double %i.ai, 3.652500e+02
  %i.ak = tail call double @llvm.floor.f64(double %i.aj) ; 2 uses
  %i.al = fmul double %i.ak, 3.652500e+02
  %i.am = tail call double @llvm.floor.f64(double %i.al)
  %i.an = fsub double %i.ah, %i.am
  %i.ao = fdiv double %i.an, 3.060010e+01
  %i.ap = tail call double @llvm.floor.f64(double %i.ao)
  %i.aq = fcmp ugt double %i.ap, 1.300000e+01
  %.026.v.i.i = select i1 %i.aq, double -4.715000e+03, double -4.716000e+03
  %.026.i.i = fadd double %i.ak, %.026.v.i.i
  %i.ar = fptosi double %.026.i.i to i32          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %c_jd_to_civil.exit.i
  %.08.i.i = phi i32 [ 1, %c_jd_to_civil.exit.i ], [ %i.at, %bb.g ] ; 2 uses
  %i.as = call fastcc i32 @c_valid_civil_p(i32 noundef %i.ar, i32 noundef 1, i32 noundef %.08.i.i, double noundef %2, ptr noundef %i.h, ptr noundef %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k)
  %.not.i.i = icmp ne i32 %i.as, 0
  %i.at = add nuw nsw i32 %.08.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.at, 31
  %or.cond.i = select i1 %.not.i.i, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond.i, label %c_jd_to_ordinal.exit, label %bb.g, !llvm.loop !77

c_jd_to_ordinal.exit:                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  %i.au = load i32, ptr %i.j, align 4, !tbaa !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #19
  %.not21 = icmp eq i32 %0, %i.ar
  br i1 %.not21, label %bb.h, label %.critedge

bb.h:                                             ; preds = %c_jd_to_ordinal.exit
  %i.av = add i32 %i.u, 2
  %i.aw = sub i32 %i.av, %i.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #19
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.a
  %.118 = phi i32 [ %i.aw, %bb.h ], [ %1, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.08.i.i24 = phi i32 [ 1, %bb.i ], [ %i.ay, %bb.j ] ; 2 uses
  %i.ax = call fastcc i32 @c_valid_civil_p(i32 noundef %0, i32 noundef 1, i32 noundef %.08.i.i24, double noundef %2, ptr noundef %i.e, ptr noundef %i.f, ptr noundef nonnull %3, ptr noundef nonnull %i.g)
  %.not.i.i25 = icmp ne i32 %i.ax, 0
  %i.ay = add nuw nsw i32 %.08.i.i24, 1           ; 2 uses
  %exitcond.not.i.i26 = icmp eq i32 %i.ay, 31
  %or.cond.i27 = select i1 %.not.i.i25, i1 true, i1 %exitcond.not.i.i26
  br i1 %or.cond.i27, label %c_ordinal_to_jd.exit, label %bb.j, !llvm.loop !77

c_ordinal_to_jd.exit:                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  %i.az = add nsw i32 %.118, -1
  %i.ba = load i32, ptr %3, align 4, !tbaa !6
  %i.bb = add nsw i32 %i.az, %i.ba                ; 2 uses
  store i32 %i.bb, ptr %3, align 4, !tbaa !6
  %i.bc = sitofp i32 %i.bb to double
  %i.bd = fcmp ule double %2, %i.bc
  %i.be = zext i1 %i.bd to i32
  store i32 %i.be, ptr %4, align 4, !tbaa !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  %i.bf = load i32, ptr %3, align 4, !tbaa !6     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.bg = sitofp i32 %i.bf to double              ; 3 uses
  %i.bh = fcmp ogt double %2, %i.bg
  br i1 %i.bh, label %c_jd_to_civil.exit.i28, label %bb.k

bb.k:                                             ; preds = %c_ordinal_to_jd.exit
  %i.bi = fadd double %i.bg, f0xC13C7DD040000000
  %i.bj = fdiv double %i.bi, f0x40E1D58800000000
  %i.bk = tail call double @llvm.floor.f64(double %i.bj) ; 2 uses
  %i.bl = add nsw i32 %i.bf, 1
  %i.bm = sitofp i32 %i.bl to double
  %i.bn = fadd double %i.bk, %i.bm
  %i.bo = fmul nnan double %i.bk, 2.500000e-01
  %i.bp = tail call double @llvm.floor.f64(double %i.bo)
  %i.bq = fsub double %i.bn, %i.bp
  br label %c_jd_to_civil.exit.i28

c_jd_to_civil.exit.i28:                           ; preds = %bb.k, %c_ordinal_to_jd.exit
  %.0.i.i29 = phi double [ %i.bq, %bb.k ], [ %i.bg, %c_ordinal_to_jd.exit ]
  %i.br = fadd double %.0.i.i29, 1.524000e+03     ; 2 uses
  %i.bs = fadd double %i.br, -1.221000e+02
  %i.bt = fdiv double %i.bs, 3.652500e+02
  %i.bu = tail call double @llvm.floor.f64(double %i.bt) ; 2 uses
  %i.bv = fmul double %i.bu, 3.652500e+02
  %i.bw = tail call double @llvm.floor.f64(double %i.bv)
  %i.bx = fsub double %i.br, %i.bw
  %i.by = fdiv double %i.bx, 3.060010e+01
  %i.bz = tail call double @llvm.floor.f64(double %i.by)
  %i.ca = fcmp ugt double %i.bz, 1.300000e+01
  %.026.v.i.i30 = select i1 %i.ca, double -4.715000e+03, double -4.716000e+03
  %.026.i.i31 = fadd double %i.bu, %.026.v.i.i30
  %i.cb = fptosi double %.026.i.i31 to i32        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %c_jd_to_civil.exit.i28
  %.08.i.i32 = phi i32 [ 1, %c_jd_to_civil.exit.i28 ], [ %i.cd, %bb.l ] ; 2 uses
  %i.cc = call fastcc i32 @c_valid_civil_p(i32 noundef %i.cb, i32 noundef 1, i32 noundef %.08.i.i32, double noundef %2, ptr noundef %i.a, ptr noundef %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %.not.i.i33 = icmp ne i32 %i.cc, 0
  %i.cd = add nuw nsw i32 %.08.i.i32, 1           ; 2 uses
  %exitcond.not.i.i34 = icmp eq i32 %i.cd, 31
  %or.cond.i35 = select i1 %.not.i.i33, i1 true, i1 %exitcond.not.i.i34
  br i1 %or.cond.i35, label %c_jd_to_ordinal.exit36, label %bb.l, !llvm.loop !77

c_jd_to_ordinal.exit36:                           ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.ce = load i32, ptr %i.c, align 4, !tbaa !6
  %i.cf = add i32 %i.bf, 1
  %i.cg = sub i32 %i.cf, %i.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %.not22 = icmp eq i32 %0, %i.cb
  %.not23 = icmp eq i32 %i.cg, %.118
  %or.cond = select i1 %.not22, i1 %.not23, i1 false
  %spec.select = zext i1 %or.cond to i32
  br label %bb.m

.critedge:                                        ; preds = %c_find_ldoy.exit.thread, %c_jd_to_ordinal.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #19
  br label %bb.m

bb.m:                                             ; preds = %c_jd_to_ordinal.exit36, %.critedge
  %.1 = phi i32 [ 0, %.critedge ], [ %spec.select, %c_jd_to_ordinal.exit36 ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc void @decode_jd(i64 noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %.pr.i = load i64, ptr @decode_jd.rbimpl_id, align 8, !tbaa !10 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.a = tail call i64 @rb_intern2(ptr noundef nonnull @.str.161, i64 noundef 3) #19 ; 3 uses
  store i64 %i.a, ptr @decode_jd.rbimpl_id, align 8, !tbaa !10
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !52

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.a
  %.lcssa.i = phi i64 [ %.pr.i, %bb.a ], [ %i.a, %.lr.ph.i ]
  %i.b = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %0, i64 noundef %.lcssa.i, i32 noundef 1, i64 noundef 426895435) #19 ; 9 uses
  store i64 %i.b, ptr %1, align 8, !tbaa !10
  %i.c = icmp eq i64 %i.b, 0
  %i.d = and i64 %i.b, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %rb_type.exit.i

bb.b:                                             ; preds = %rbimpl_intern_const.exit
  switch i64 %i.b, label %bb.c [
    i64 0, label %f_zero_p.exit
    i64 4, label %f_zero_p.exit
    i64 20, label %f_zero_p.exit
    i64 36, label %f_zero_p.exit
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = trunc i64 %i.b to i1
  br i1 %i.g, label %rb_type.exit.thread8.i, label %f_zero_p.exit

rb_type.exit.i:                                   ; preds = %rbimpl_intern_const.exit
  %i.h = inttoptr i64 %i.b to ptr
  %i.i = load i64, ptr %i.h, align 8, !tbaa !26
  %i.j = trunc i64 %i.i to i32
  %i.k = and i32 %i.j, 31
  switch i32 %i.k, label %f_zero_p.exit [
    i32 21, label %rb_type.exit.thread8.i
    i32 10, label %f_zero_p.exit.thread
    i32 15, label %bb.d
  ]

rb_type.exit.thread8.i:                           ; preds = %rb_type.exit.i, %bb.c
  %i.l = icmp ult i64 %i.b, 2
  br i1 %i.l, label %f_zero_p.exit.thread11, label %f_zero_p.exit.thread

bb.d:                                             ; preds = %rb_type.exit.i
  %i.m = tail call i64 @rb_rational_num(i64 noundef %i.b) #22
  %or.cond = icmp eq i64 %i.m, 1
  br i1 %or.cond, label %f_zero_p.exit.thread11, label %f_zero_p.exit.thread

f_zero_p.exit:                                    ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.c, %rb_type.exit.i
  %i.n = load i64, ptr @id_eqeq_p, align 8, !tbaa !10
  %i.o = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.b, i64 noundef %i.n, i32 noundef 1, i64 noundef 1) #19
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %f_zero_p.exit.thread, label %f_zero_p.exit.thread11

f_zero_p.exit.thread:                             ; preds = %bb.d, %rb_type.exit.i, %rb_type.exit.thread8.i, %f_zero_p.exit
  %i.p = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %0, i64 noundef 37, i32 noundef 1, i64 noundef 426895435) #19
  br label %f_zero_p.exit.thread11

f_zero_p.exit.thread11:                           ; preds = %f_zero_p.exit, %rb_type.exit.thread8.i, %bb.d, %f_zero_p.exit.thread
  %.sink = phi i64 [ %i.p, %f_zero_p.exit.thread ], [ %0, %bb.d ], [ %0, %rb_type.exit.thread8.i ], [ %0, %f_zero_p.exit ]
  %i.q = tail call i64 @rb_fix2int(i64 noundef %.sink) #19
  %storemerge = trunc i64 %i.q to i32
  store i32 %storemerge, ptr %2, align 4, !tbaa !6
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64 @f_zero_p(i64 noundef %0) unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %rb_type.exit

bb.b:                                             ; preds = %bb.a
  switch i64 %0, label %bb.c [
    i64 0, label %rb_type.exit.thread
    i64 4, label %rb_type.exit.thread
    i64 20, label %rb_type.exit.thread
    i64 36, label %rb_type.exit.thread
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = trunc i64 %0 to i1
  br i1 %i.e, label %rb_type.exit.thread8, label %rb_type.exit.thread

rb_type.exit:                                     ; preds = %bb.a
  %i.f = inttoptr i64 %0 to ptr
  %i.g = load i64, ptr %i.f, align 8, !tbaa !26
  %i.h = trunc i64 %i.g to i32
  %i.i = and i32 %i.h, 31
  switch i32 %i.i, label %rb_type.exit.thread [
    i32 21, label %rb_type.exit.thread8
    i32 10, label %bb.f
    i32 15, label %bb.d
  ]

rb_type.exit.thread8:                             ; preds = %bb.c, %rb_type.exit
  %i.j = icmp ult i64 %0, 2
  %i.k = select i1 %i.j, i64 20, i64 0
  br label %bb.f

bb.d:                                             ; preds = %rb_type.exit
  %i.l = tail call i64 @rb_rational_num(i64 noundef %0) #22 ; 2 uses
  %i.m = trunc i64 %i.l to i1
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = icmp ult i64 %i.l, 2
  %i.o = select i1 %i.n, i64 20, i64 0
  br label %bb.f

rb_type.exit.thread:                              ; preds = %bb.c, %bb.b, %bb.b, %bb.b, %bb.b, %rb_type.exit
  %i.p = load i64, ptr @id_eqeq_p, align 8, !tbaa !10
  %i.q = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %0, i64 noundef %i.p, i32 noundef 1, i64 noundef 1) #19
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %rb_type.exit, %rb_type.exit.thread, %rb_type.exit.thread8
  %.0 = phi i64 [ %i.q, %rb_type.exit.thread ], [ %i.k, %rb_type.exit.thread8 ], [ 0, %rb_type.exit ], [ 0, %bb.d ], [ %i.o, %bb.e ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @decode_year(i64 noundef %0, double noundef %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = fcmp olt double %1, 0.000000e+00
  %i.b = select i1 %i.a, i32 584400, i32 584388   ; 3 uses
  %i.c = trunc i64 %0 to i1
  br i1 %i.c, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.d = ashr i64 %0, 1                           ; 4 uses
  %i.e = icmp sgt i64 %i.d, 4611686018427383190
  br i1 %i.e, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i64 %i.d, 4712                   ; 4 uses
  %i.g = icmp slt i64 %i.d, -4712
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = zext nneg i32 %i.b to i64                ; 3 uses
  %i.i = udiv i64 %i.f, %i.h
  %i.j = urem i64 %i.f, %i.h
  %i.k = shl nuw nsw i64 %i.i, 1
  %i.l = or disjoint i64 %i.k, 1
  store i64 %i.l, ptr %2, align 8, !tbaa !10
  %.not = icmp samesign ult i64 %i.f, %i.h
  %spec.select = select i1 %.not, i64 %i.f, i64 %i.j
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.m = sub nuw nsw i64 -4713, %i.d              ; 2 uses
  %i.n = zext nneg i32 %i.b to i64                ; 3 uses
  %i.o = udiv i64 %i.m, %i.n
  %i.p = xor i64 %i.o, -1
  %i.q = shl nsw i64 %i.p, 1
  %i.r = or disjoint i64 %i.q, 1
  store i64 %i.r, ptr %2, align 8, !tbaa !10
  %i.s = urem i64 %i.m, %i.n
  %i.t = xor i64 %i.s, -1
  %i.u = add nsw i64 %i.t, %i.n
  br label %bb.i
end_hunk_0
begin_hunk_1_@valid_civil_p:bb.a
  %i.ct = tail call double @llvm.floor.f64(double %i.cs)
  %i.cu = select i1 %i.ch, i32 13, i32 1
  %i.cv = add i32 %i.cu, %i.cg
  %i.cw = sitofp i32 %i.cv to double
  %i.cx = fmul nnan double %i.cw, 3.060010e+01
  %i.cy = tail call double @llvm.floor.f64(double %i.cx)
  %i.cz = fadd double %i.cy, %i.ct
  %i.da = uitofp nneg i32 %storemerge to double
  %i.db = fadd double %i.cz, %i.da
  %i.dc = fadd double %i.db, %i.cp
  %i.dd = fadd double %i.dc, -1.524000e+03        ; 3 uses
  %i.de = fcmp uge double %i.dd, %.1.i            ; 2 uses
  %i.df = fsub double %i.dd, %i.cp
  %storemerge.i = zext i1 %i.de to i32
  %.0.i56 = select i1 %i.de, double %i.dd, double %i.df
  store i32 %storemerge.i, ptr %9, align 4, !tbaa !6
  %i.dg = fptosi double %.0.i56 to i32
  store i32 %i.dg, ptr %8, align 4, !tbaa !6
  br label %c_valid_gregorian_p.exit.thread

.critedge:                                        ; preds = %guess_style.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %c_valid_gregorian_p.exit.thread

c_valid_gregorian_p.exit.thread:                  ; preds = %bb.t, %bb.s, %bb.m, %c_gregorian_last_day_of_month.exit.i, %bb.k, %c_valid_gregorian_p.exit, %.critedge
  %.145 = phi i32 [ 1, %c_valid_gregorian_p.exit ], [ 1, %bb.k ], [ 0, %.critedge ], [ 0, %c_gregorian_last_day_of_month.exit.i ], [ 0, %bb.m ], [ 0, %bb.s ], [ 0, %bb.t ]
  ret i32 %.145
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @valid_commercial_p(i64 noundef %0, i32 noundef %1, i32 noundef %2, double noundef %3, ptr nofree noundef nonnull captures(none) %4, ptr nofree noundef nonnull captures(none) %5, ptr nofree noundef nonnull captures(none) %6, ptr nofree noundef nonnull captures(none) %7, ptr nofree noundef nonnull captures(none) %8, ptr nofree noundef nonnull captures(none) %9) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = tail call double @llvm.fabs.f64(double %3) #21
  %i.d = fcmp oeq double %i.c, +inf
  br i1 %i.d, label %guess_style.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = trunc i64 %0 to i1
  br i1 %i.e, label %bb.c, label %f_negative_p.exit.i

f_negative_p.exit.i:                              ; preds = %bb.b
  %i.f = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %0, i64 noundef 60, i32 noundef 1, i64 noundef 1) #19
  %.not.i = icmp eq i64 %i.f, 0
  %i.g = load double, ptr @negative_inf, align 8
  %i.h = load double, ptr @positive_inf, align 8
  %i.i = select i1 %.not.i, double %i.g, double %i.h
  br label %guess_style.exit

bb.c:                                             ; preds = %bb.b
  %i.j = ashr i64 %0, 1                           ; 2 uses
  %i.k = icmp slt i64 %i.j, 1582
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load double, ptr @positive_inf, align 8, !tbaa !12
  br label %guess_style.exit

bb.e:                                             ; preds = %bb.c
  %i.m = icmp samesign ugt i64 %i.j, 1930
  br i1 %i.m, label %bb.f, label %guess_style.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.n = load double, ptr @negative_inf, align 8, !tbaa !12
  br label %guess_style.exit

guess_style.exit:                                 ; preds = %bb.a, %f_negative_p.exit.i, %bb.d, %bb.f
  %.1.i = phi double [ %i.i, %f_negative_p.exit.i ], [ %3, %bb.a ], [ %i.l, %bb.d ], [ %i.n, %bb.f ] ; 3 uses
  %i.o = fcmp oeq double %.1.i, 0.000000e+00
  br i1 %i.o, label %guess_style.exit.thread, label %bb.l

guess_style.exit.thread:                          ; preds = %bb.e, %guess_style.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.p = tail call i64 @rb_fix2int(i64 noundef %0) #19
  %i.q = trunc i64 %i.p to i32
  %i.r = call fastcc i32 @c_valid_commercial_p(i32 noundef %i.q, i32 noundef %1, i32 noundef %2, double noundef %3, ptr noundef %6, ptr noundef %7, ptr noundef %i.a, ptr noundef %9)
  %.not.not = icmp eq i32 %i.r, 0
  br i1 %.not.not, label %.critedge, label %bb.g

bb.g:                                             ; preds = %guess_style.exit.thread
  %i.s = load i32, ptr %i.a, align 4, !tbaa !6
  %i.t = sext i32 %i.s to i64
  %i.u = shl nsw i64 %i.t, 1
  %i.v = or disjoint i64 %i.u, 1
  tail call fastcc void @decode_jd(i64 noundef %i.v, ptr noundef %4, ptr noundef %8)
  %i.w = load i64, ptr %4, align 8, !tbaa !10     ; 8 uses
  %i.x = icmp eq i64 %i.w, 0
  %i.y = and i64 %i.w, 7
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = or i1 %i.x, %i.z
  br i1 %i.aa, label %bb.h, label %rb_type.exit.i

bb.h:                                             ; preds = %bb.g
  switch i64 %i.w, label %bb.i [
    i64 0, label %f_zero_p.exit
    i64 4, label %f_zero_p.exit
    i64 20, label %f_zero_p.exit
    i64 36, label %f_zero_p.exit
  ]

bb.i:                                             ; preds = %bb.h
  %i.ab = trunc i64 %i.w to i1
  br i1 %i.ab, label %rb_type.exit.thread8.i, label %f_zero_p.exit

rb_type.exit.i:                                   ; preds = %bb.g
  %i.ac = inttoptr i64 %i.w to ptr
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !26
  %i.ae = trunc i64 %i.ad to i32
  %i.af = and i32 %i.ae, 31
  switch i32 %i.af, label %f_zero_p.exit [
    i32 21, label %rb_type.exit.thread8.i
    i32 10, label %f_zero_p.exit.thread
    i32 15, label %bb.j
  ]

rb_type.exit.thread8.i:                           ; preds = %rb_type.exit.i, %bb.i
  %i.ag = icmp ult i64 %i.w, 2
  br i1 %i.ag, label %f_zero_p.exit.thread43, label %f_zero_p.exit.thread

bb.j:                                             ; preds = %rb_type.exit.i
  %i.ah = tail call i64 @rb_rational_num(i64 noundef %i.w) #22
  %or.cond = icmp eq i64 %i.ah, 1
  br i1 %or.cond, label %f_zero_p.exit.thread43, label %f_zero_p.exit.thread

f_zero_p.exit:                                    ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.i, %rb_type.exit.i
  %i.ai = load i64, ptr @id_eqeq_p, align 8, !tbaa !10
  %i.aj = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.w, i64 noundef %i.ai, i32 noundef 1, i64 noundef 1) #19
  %.not36 = icmp eq i64 %i.aj, 0
  br i1 %.not36, label %f_zero_p.exit.thread, label %f_zero_p.exit.thread43

f_zero_p.exit.thread43:                           ; preds = %bb.j, %rb_type.exit.thread8.i, %f_zero_p.exit
  %i.ak = tail call i64 @rb_fix2int(i64 noundef %0) #19
  %i.al = trunc i64 %i.ak to i32
  store i32 %i.al, ptr %5, align 4, !tbaa !6
  br label %bb.k

f_zero_p.exit.thread:                             ; preds = %bb.j, %rb_type.exit.i, %rb_type.exit.thread8.i, %f_zero_p.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.am = load i32, ptr %9, align 4, !tbaa !6
  %.not37 = icmp eq i32 %i.am, 0
  %i.an = select i1 %.not37, i32 1, i32 -1
  %i.ao = sitofp i32 %i.an to double
  call fastcc void @decode_year(i64 noundef %0, double noundef %i.ao, ptr noundef %i.b, ptr noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.k

bb.k:                                             ; preds = %f_zero_p.exit.thread43, %f_zero_p.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.m

bb.l:                                             ; preds = %guess_style.exit
  tail call fastcc void @decode_year(i64 noundef %0, double noundef %.1.i, ptr noundef %4, ptr noundef %5)
  %i.ap = load i32, ptr %5, align 4, !tbaa !6
  %i.aq = tail call fastcc i32 @c_valid_commercial_p(i32 noundef %i.ap, i32 noundef %1, i32 noundef %2, double noundef %.1.i, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9)
  br label %bb.m

.critedge:                                        ; preds = %guess_style.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %.critedge
  %.1 = phi i32 [ 0, %.critedge ], [ 1, %bb.k ], [ %i.aq, %bb.l ]
  ret i32 %.1
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 0, 2) i32 @c_valid_commercial_p(i32 noundef %0, i32 noundef %1, i32 noundef %2, double noundef %3, ptr nofree noundef nonnull captures(none) %4, ptr nofree noundef nonnull captures(none) %5, ptr nofree noundef nonnull captures(none) %6, ptr nofree noundef nonnull writeonly captures(none) %7) unnamed_addr #10 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 3 uses
  %i.e = alloca i32, align 4                      ; 3 uses
  %i.f = alloca i32, align 4                      ; 3 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 3 uses
  %i.i = alloca i32, align 4                      ; 6 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %i.k = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #19
  %i.l = lshr i32 %2, 28
  %i.m = and i32 %i.l, 8
  %spec.select = add nsw i32 %i.m, %2             ; 2 uses
  %i.n = icmp slt i32 %1, 0
  br i1 %i.n, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.o = add nsw i32 %0, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.08.i.i = phi i32 [ 1, %bb.b ], [ %i.q, %bb.c ] ; 2 uses
  %i.p = call fastcc i32 @c_valid_civil_p(i32 noundef %i.o, i32 noundef 1, i32 noundef %.08.i.i, double noundef %3, ptr noundef %i.e, ptr noundef %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h)
  %.not.i.i = icmp ne i32 %i.p, 0
  %i.q = add nuw nsw i32 %.08.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.q, 31
  %or.cond.i = select i1 %.not.i.i, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond.i, label %c_find_fdoy.exit.i, label %bb.c, !llvm.loop !77

c_find_fdoy.exit.i:                               ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  %i.r = load i32, ptr %i.g, align 4, !tbaa !6    ; 3 uses
  %i.s = add nsw i32 %i.r, 3                      ; 2 uses
  %i.t = icmp slt i32 %i.r, -3
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %c_find_fdoy.exit.i
  %i.u = sub nuw nsw i32 -4, %i.r
  %i.v = urem i32 %i.u, 7
  %i.w = sub nuw nsw i32 6, %i.v
  br label %c_commercial_to_jd.exit

bb.e:                                             ; preds = %c_find_fdoy.exit.i
  %i.x = urem i32 %i.s, 7
  br label %c_commercial_to_jd.exit

c_commercial_to_jd.exit:                          ; preds = %bb.d, %bb.e
  %i.y = phi i32 [ %i.w, %bb.d ], [ %i.x, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  %i.z = mul nsw i32 %1, 7
  %i.aa = add i32 %i.s, %i.z
  %i.ab = sub i32 %i.aa, %i.y
  call fastcc void @c_jd_to_commercial(i32 noundef %i.ab, double noundef %3, ptr noundef %i.i, ptr noundef %i.j, ptr noundef %i.k)
  %i.ac = load i32, ptr %i.i, align 4, !tbaa !6
  %.not = icmp eq i32 %i.ac, %0
  %i.ad = load i32, ptr %i.j, align 4
  br i1 %.not, label %bb.f, label %bb.l

bb.f:                                             ; preds = %c_commercial_to_jd.exit, %bb.a
  %.126 = phi i32 [ %i.ad, %c_commercial_to_jd.exit ], [ %1, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.08.i.i36 = phi i32 [ 1, %bb.f ], [ %i.af, %bb.g ] ; 2 uses
  %i.ae = call fastcc i32 @c_valid_civil_p(i32 noundef %0, i32 noundef 1, i32 noundef %.08.i.i36, double noundef %3, ptr noundef %i.a, ptr noundef %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %.not.i.i37 = icmp ne i32 %i.ae, 0
  %i.af = add nuw nsw i32 %.08.i.i36, 1           ; 2 uses
  %exitcond.not.i.i38 = icmp eq i32 %i.af, 31
  %or.cond.i39 = select i1 %.not.i.i37, i1 true, i1 %exitcond.not.i.i38
  br i1 %or.cond.i39, label %c_find_fdoy.exit.i40, label %bb.g, !llvm.loop !77

c_find_fdoy.exit.i40:                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.ag = load i32, ptr %i.c, align 4, !tbaa !6   ; 3 uses
  %i.ah = add nsw i32 %i.ag, 3                    ; 2 uses
  %i.ai = icmp slt i32 %i.ag, -3
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %c_find_fdoy.exit.i40
  %i.aj = sub nuw nsw i32 -4, %i.ag
  %i.ak = urem i32 %i.aj, 7
  %i.al = sub nuw nsw i32 6, %i.ak
  br label %c_commercial_to_jd.exit41

bb.i:                                             ; preds = %c_find_fdoy.exit.i40
  %i.am = urem i32 %i.ah, 7
  br label %c_commercial_to_jd.exit41

c_commercial_to_jd.exit41:                        ; preds = %bb.h, %bb.i
  %i.an = phi i32 [ %i.al, %bb.h ], [ %i.am, %bb.i ]
  %i.ao = mul i32 %.126, 7
  %i.ap = add nsw i32 %spec.select, -8
  %i.aq = add i32 %i.ap, %i.ao
  %i.ar = add i32 %i.aq, %i.ah
  %i.as = sub i32 %i.ar, %i.an                    ; 2 uses
  store i32 %i.as, ptr %6, align 4, !tbaa !6
  %i.at = sitofp i32 %i.as to double
  %i.au = fcmp ule double %3, %i.at
  %i.av = zext i1 %i.au to i32
  store i32 %i.av, ptr %7, align 4, !tbaa !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %i.aw = load i32, ptr %6, align 4, !tbaa !6
  call fastcc void @c_jd_to_commercial(i32 noundef %i.aw, double noundef %3, ptr noundef %i.i, ptr noundef %4, ptr noundef %5)
  %i.ax = load i32, ptr %i.i, align 4, !tbaa !6
  %.not32 = icmp eq i32 %0, %i.ax
  br i1 %.not32, label %bb.j, label %bb.l

bb.j:                                             ; preds = %c_commercial_to_jd.exit41
  %i.ay = load i32, ptr %4, align 4, !tbaa !6
  %.not33 = icmp eq i32 %.126, %i.ay
  br i1 %.not33, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.az = load i32, ptr %5, align 4, !tbaa !6
  %.not34 = icmp eq i32 %spec.select, %i.az
  %spec.select35 = zext i1 %.not34 to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %c_commercial_to_jd.exit41, %bb.j, %c_commercial_to_jd.exit
  %.1 = phi i32 [ 0, %c_commercial_to_jd.exit ], [ 0, %c_commercial_to_jd.exit41 ], [ %spec.select35, %bb.k ], [ 0, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #19
  ret i32 %.1
}

; Function Attrs: nofree nosync nounwind memory(argmem: write) uwtable
define internal fastcc void @c_jd_to_commercial(i32 noundef %0, double noundef %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #12 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 3 uses
  %i.e = alloca i32, align 4                      ; 3 uses
  %i.f = alloca i32, align 4                      ; 3 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 3 uses
  %i.i = add nsw i32 %0, -3
  %i.j = sitofp i32 %i.i to double                ; 3 uses
  %i.k = fcmp ogt double %1, %i.j
  br i1 %i.k, label %c_jd_to_civil.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = fadd double %i.j, f0xC13C7DD040000000
  %i.m = fdiv double %i.l, f0x40E1D58800000000
  %i.n = tail call double @llvm.floor.f64(double %i.m) ; 2 uses
  %i.o = add nsw i32 %0, -2
  %i.p = sitofp i32 %i.o to double
  %i.q = fadd double %i.n, %i.p
  %i.r = fmul nnan double %i.n, 2.500000e-01
  %i.s = tail call double @llvm.floor.f64(double %i.r)
  %i.t = fsub double %i.q, %i.s
  br label %c_jd_to_civil.exit

c_jd_to_civil.exit:                               ; preds = %bb.a, %bb.b
  %.0.i = phi double [ %i.t, %bb.b ], [ %i.j, %bb.a ]
  %i.u = fadd double %.0.i, 1.524000e+03          ; 2 uses
  %i.v = fadd double %i.u, -1.221000e+02
  %i.w = fdiv double %i.v, 3.652500e+02
  %i.x = tail call double @llvm.floor.f64(double %i.w) ; 2 uses
  %i.y = fmul double %i.x, 3.652500e+02
  %i.z = tail call double @llvm.floor.f64(double %i.y)
  %i.aa = fsub double %i.u, %i.z
  %i.ab = fdiv double %i.aa, 3.060010e+01
  %i.ac = tail call double @llvm.floor.f64(double %i.ab)
  %i.ad = fcmp ugt double %i.ac, 1.300000e+01
  %.026.v.i = select i1 %i.ad, double -4.715000e+03, double -4.716000e+03
  %.026.i = fadd double %i.x, %.026.v.i
  %i.ae = fptosi double %.026.i to i32            ; 3 uses
  %i.af = add nsw i32 %i.ae, 1                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %c_jd_to_civil.exit
  %.08.i.i = phi i32 [ 1, %c_jd_to_civil.exit ], [ %i.ah, %bb.c ] ; 2 uses
  %i.ag = call fastcc i32 @c_valid_civil_p(i32 noundef %i.af, i32 noundef 1, i32 noundef %.08.i.i, double noundef %1, ptr noundef %i.e, ptr noundef %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h)
  %.not.i.i = icmp ne i32 %i.ag, 0
  %i.ah = add nuw nsw i32 %.08.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.ah, 31
  %or.cond.i = select i1 %.not.i.i, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond.i, label %c_find_fdoy.exit.i, label %bb.c, !llvm.loop !77

c_find_fdoy.exit.i:                               ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  %i.ai = load i32, ptr %i.g, align 4, !tbaa !6   ; 3 uses
  %i.aj = add nsw i32 %i.ai, 3                    ; 2 uses
  %i.ak = icmp slt i32 %i.ai, -3
  br i1 %i.ak, label %bb.d, label %bb.e

bb.d:                                             ; preds = %c_find_fdoy.exit.i
  %i.al = sub nuw nsw i32 -4, %i.ai
  %i.am = urem i32 %i.al, 7
  %i.an = sub nuw nsw i32 6, %i.am
  br label %c_commercial_to_jd.exit

bb.e:                                             ; preds = %c_find_fdoy.exit.i
  %i.ao = urem i32 %i.aj, 7
  br label %c_commercial_to_jd.exit

c_commercial_to_jd.exit:                          ; preds = %bb.d, %bb.e
  %i.ap = phi i32 [ %i.an, %bb.d ], [ %i.ao, %bb.e ]
  %i.aq = sub i32 %i.aj, %i.ap                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  %.not = icmp slt i32 %0, %i.aq
  br i1 %.not, label %bb.f, label %bb.j

bb.f:                                             ; preds = %c_commercial_to_jd.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.08.i.i23 = phi i32 [ 1, %bb.f ], [ %i.as, %bb.g ] ; 2 uses
  %i.ar = call fastcc i32 @c_valid_civil_p(i32 noundef %i.ae, i32 noundef 1, i32 noundef %.08.i.i23, double noundef %1, ptr noundef %i.a, ptr noundef %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %.not.i.i24 = icmp ne i32 %i.ar, 0
  %i.as = add nuw nsw i32 %.08.i.i23, 1           ; 2 uses
  %exitcond.not.i.i25 = icmp eq i32 %i.as, 31
  %or.cond.i26 = select i1 %.not.i.i24, i1 true, i1 %exitcond.not.i.i25
  br i1 %or.cond.i26, label %c_find_fdoy.exit.i27, label %bb.g, !llvm.loop !77

c_find_fdoy.exit.i27:                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.at = load i32, ptr %i.c, align 4, !tbaa !6   ; 3 uses
  %i.au = add nsw i32 %i.at, 3                    ; 2 uses
  %i.av = icmp slt i32 %i.at, -3
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %c_find_fdoy.exit.i27
  %i.aw = sub nuw nsw i32 -4, %i.at
  %i.ax = urem i32 %i.aw, 7
  %i.ay = sub nuw nsw i32 6, %i.ax
  br label %c_commercial_to_jd.exit28

bb.i:                                             ; preds = %c_find_fdoy.exit.i27
  %i.az = urem i32 %i.au, 7
  br label %c_commercial_to_jd.exit28

c_commercial_to_jd.exit28:                        ; preds = %bb.h, %bb.i
  %i.ba = phi i32 [ %i.ay, %bb.h ], [ %i.az, %bb.i ]
  %i.bb = sub i32 %i.au, %i.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %bb.j

bb.j:                                             ; preds = %c_commercial_to_jd.exit, %c_commercial_to_jd.exit28
  %.0 = phi i32 [ %i.bb, %c_commercial_to_jd.exit28 ], [ %i.aq, %c_commercial_to_jd.exit ]
  %storemerge = phi i32 [ %i.ae, %c_commercial_to_jd.exit28 ], [ %i.af, %c_commercial_to_jd.exit ]
  store i32 %storemerge, ptr %2, align 4, !tbaa !6
  %i.bc = sub nsw i32 %0, %.0                     ; 3 uses
  %i.bd = icmp slt i32 %i.bc, 0
  br i1 %i.bd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.be = xor i32 %i.bc, -1
  %i.bf = udiv i32 %i.be, 7
  %i.bg = xor i32 %i.bf, -1
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bh = udiv i32 %i.bc, 7
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bi = phi i32 [ %i.bg, %bb.k ], [ %i.bh, %bb.l ]
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %3, align 4, !tbaa !6
  %i.bk = icmp slt i32 %0, -1
  br i1 %i.bk, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bl = sub nuw nsw i32 -2, %0
  %i.bm = urem i32 %i.bl, 7
  %i.bn = sub nuw nsw i32 6, %i.bm
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bo = add nsw i32 %0, 1
  %i.bp = urem i32 %i.bo, 7
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bq = phi i32 [ %i.bn, %bb.n ], [ %i.bp, %bb.o ] ; 2 uses
  %i.br = icmp eq i32 %i.bq, 0
  %spec.select = select i1 %i.br, i32 7, i32 %i.bq
  store i32 %spec.select, ptr %4, align 4, !tbaa !6
  ret void
}

; Function Attrs: noreturn
declare void @rb_raise(i64 noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64 @d_trunc(i64 noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #5 {
bb.a:
  %i.a = trunc i64 %0 to i1
  br i1 %i.a, label %to_integer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 6
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d                         ; 2 uses
  br i1 %i.e, label %bb.c, label %rb_type.exit.i

bb.c:                                             ; preds = %bb.b
  switch i64 %0, label %bb.d [
    i64 0, label %wholenum_p.exit.thread
    i64 4, label %wholenum_p.exit.thread
    i64 20, label %wholenum_p.exit.thread
    i64 36, label %wholenum_p.exit.thread
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = and i64 %0, 254
  %i.g = icmp eq i64 %i.f, 12
  br i1 %i.g, label %wholenum_p.exit.thread, label %rb_type.exit.thread9.i

rb_type.exit.i:                                   ; preds = %bb.b
  %i.h = inttoptr i64 %0 to ptr
  %i.i = load i64, ptr %i.h, align 8, !tbaa !26
  %i.j = trunc i64 %i.i to i32
  %i.k = and i32 %i.j, 31
  switch i32 %i.k, label %wholenum_p.exit.thread [
    i32 10, label %rb_integer_type_p.exit.i
    i32 4, label %rb_type.exit.thread9.i
    i32 15, label %bb.e
  ]

rb_type.exit.thread9.i:                           ; preds = %rb_type.exit.i, %bb.d
  %i.l = tail call double @rb_float_value(i64 noundef %0) #22 ; 2 uses
  %i.m = tail call double @llvm.round.f64(double %i.l)
  %i.n = fcmp oeq double %i.m, %i.l
  br i1 %i.n, label %.thread, label %wholenum_p.exit.thread

bb.e:                                             ; preds = %rb_type.exit.i
  %i.o = tail call i64 @rb_rational_den(i64 noundef %0) #22
  %or.cond = icmp eq i64 %i.o, 3
  br i1 %or.cond, label %rb_integer_type_p.exit.i, label %wholenum_p.exit.thread

.thread:                                          ; preds = %rb_type.exit.thread9.i
  br i1 %i.e, label %rb_integer_type_p.exit.thread6.i, label %rb_integer_type_p.exit.i

rb_integer_type_p.exit.i:                         ; preds = %bb.e, %rb_type.exit.i, %.thread
  %i.p = inttoptr i64 %0 to ptr
  %i.q = load i64, ptr %i.p, align 8, !tbaa !26
  %i.r = and i64 %i.q, 31
  %i.s = icmp eq i64 %i.r, 10
  br i1 %i.s, label %to_integer.exit, label %rb_integer_type_p.exit.thread6.i

rb_integer_type_p.exit.thread6.i:                 ; preds = %rb_integer_type_p.exit.i, %.thread
  %.pr.i.i = load i64, ptr @to_integer.rbimpl_id, align 8, !tbaa !10 ; 2 uses
  %.not4.i.i = icmp eq i64 %.pr.i.i, 0
  br i1 %.not4.i.i, label %.lr.ph.i.i, label %rbimpl_intern_const.exit.i

.lr.ph.i.i:                                       ; preds = %rb_integer_type_p.exit.thread6.i, %.lr.ph.i.i
  %i.t = tail call i64 @rb_intern2(ptr noundef nonnull @.str.166, i64 noundef 4) #19 ; 3 uses
  store i64 %i.t, ptr @to_integer.rbimpl_id, align 8, !tbaa !10
  %.not.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %rbimpl_intern_const.exit.i, !llvm.loop !52

rbimpl_intern_const.exit.i:                       ; preds = %.lr.ph.i.i, %rb_integer_type_p.exit.thread6.i
  %.lcssa.i.i = phi i64 [ %.pr.i.i, %rb_integer_type_p.exit.thread6.i ], [ %i.t, %.lr.ph.i.i ]
  %i.u = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %0, i64 noundef %.lcssa.i.i, i32 noundef 0) #19
  br label %to_integer.exit

wholenum_p.exit.thread:                           ; preds = %rb_type.exit.thread9.i, %bb.c, %bb.c, %bb.c, %bb.c, %bb.d, %rb_type.exit.i, %bb.e
  %.pr.i = load i64, ptr @d_trunc.rbimpl_id, align 8, !tbaa !10 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %wholenum_p.exit.thread, %.lr.ph.i
  %i.v = tail call i64 @rb_intern2(ptr noundef nonnull @.str.161, i64 noundef 3) #19 ; 3 uses
  store i64 %i.v, ptr @d_trunc.rbimpl_id, align 8, !tbaa !10
  %.not.i = icmp eq i64 %i.v, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !52

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %wholenum_p.exit.thread
  %.lcssa.i = phi i64 [ %.pr.i, %wholenum_p.exit.thread ], [ %i.v, %.lr.ph.i ]
  %i.w = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %0, i64 noundef %.lcssa.i, i32 noundef 1, i64 noundef 3) #19
  %i.x = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %0, i64 noundef 37, i32 noundef 1, i64 noundef 3) #19
  br label %to_integer.exit

to_integer.exit:                                  ; preds = %bb.a, %rbimpl_intern_const.exit.i, %rb_integer_type_p.exit.i, %rbimpl_intern_const.exit
  %storemerge = phi i64 [ %i.x, %rbimpl_intern_const.exit ], [ 1, %rbimpl_intern_const.exit.i ], [ 1, %rb_integer_type_p.exit.i ], [ 1, %bb.a ]
  %.0 = phi i64 [ %i.w, %rbimpl_intern_const.exit ], [ %i.u, %rbimpl_intern_const.exit.i ], [ %0, %rb_integer_type_p.exit.i ], [ %0, %bb.a ]
  store i64 %storemerge, ptr %1, align 8, !tbaa !10
  ret i64 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare double @rb_float_value(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #9

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @rb_sys_fail(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @tzset() local_unnamed_addr #13

; Function Attrs: nounwind
declare ptr @localtime_r(ptr noundef, ptr noundef) local_unnamed_addr #13

declare ptr @rb_check_typeddata(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @get_s_jd(ptr nofree noundef captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !41
  %i.b = and i32 %i.a, 1
end_hunk_1
begin_hunk_2_@rt__valid_weeknum_p:bb.a
  %.0.i6 = phi i64 [ %i.o, %bb.d ], [ %i.p, %bb.e ]
  %i.q = trunc i64 %.0.i6 to i32                  ; 2 uses
  %i.r = trunc i64 %3 to i1
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %rb_num2int_inline.exit7
  %i.s = tail call i64 @rb_fix2int(i64 noundef %3) #19
  br label %rb_num2int_inline.exit9

bb.g:                                             ; preds = %rb_num2int_inline.exit7
  %i.t = tail call i64 @rb_num2int(i64 noundef %3) #19
  br label %rb_num2int_inline.exit9

rb_num2int_inline.exit9:                          ; preds = %bb.f, %bb.g
  %.0.i8 = phi i64 [ %i.s, %bb.f ], [ %i.t, %bb.g ]
  %i.u = trunc i64 %.0.i8 to i32                  ; 2 uses
  %i.v = tail call double @rb_num2dbl(i64 noundef %4) #19 ; 3 uses
  %i.w = tail call double @llvm.fabs.f64(double %i.v) #21
  %i.x = fcmp oeq double %i.w, +inf
  br i1 %i.x, label %guess_style.exit.i, label %bb.h

bb.h:                                             ; preds = %rb_num2int_inline.exit9
  %i.y = trunc i64 %0 to i1
  br i1 %i.y, label %bb.i, label %f_negative_p.exit.i.i

f_negative_p.exit.i.i:                            ; preds = %bb.h
  %i.z = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %0, i64 noundef 60, i32 noundef 1, i64 noundef 1) #19
  %.not.i.i = icmp eq i64 %i.z, 0
  %i.aa = load double, ptr @negative_inf, align 8
  %i.ab = load double, ptr @positive_inf, align 8
  %i.ac = select i1 %.not.i.i, double %i.aa, double %i.ab
  br label %guess_style.exit.i

bb.i:                                             ; preds = %bb.h
  %i.ad = ashr i64 %0, 1                          ; 2 uses
  %i.ae = icmp slt i64 %i.ad, 1582
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = load double, ptr @positive_inf, align 8, !tbaa !12
  br label %guess_style.exit.i

bb.k:                                             ; preds = %bb.i
  %i.ag = icmp samesign ugt i64 %i.ad, 1930
  br i1 %i.ag, label %bb.l, label %guess_style.exit.thread.i

bb.l:                                             ; preds = %bb.k
  %i.ah = load double, ptr @negative_inf, align 8, !tbaa !12
  br label %guess_style.exit.i

guess_style.exit.i:                               ; preds = %bb.l, %bb.j, %f_negative_p.exit.i.i, %rb_num2int_inline.exit9
  %.1.i.i = phi double [ %i.ac, %f_negative_p.exit.i.i ], [ %i.v, %rb_num2int_inline.exit9 ], [ %i.af, %bb.j ], [ %i.ah, %bb.l ] ; 3 uses
  %i.ai = fcmp oeq double %.1.i.i, 0.000000e+00
  br i1 %i.ai, label %guess_style.exit.thread.i, label %valid_weeknum_p.exit

guess_style.exit.thread.i:                        ; preds = %guess_style.exit.i, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.aj = tail call i64 @rb_fix2int(i64 noundef %0) #19
  %i.ak = trunc i64 %i.aj to i32
  %i.al = call fastcc i32 @c_valid_weeknum_p(i32 noundef %i.ak, i32 noundef %i.m, i32 noundef %i.q, i32 noundef %i.u, double noundef %i.v, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef %i.a, ptr noundef nonnull %i.i)
  %.not.not.i = icmp eq i32 %i.al, 0
  br i1 %.not.not.i, label %valid_weeknum_p.exit.thread, label %bb.m

bb.m:                                             ; preds = %guess_style.exit.thread.i
  %i.am = load i32, ptr %i.a, align 4, !tbaa !6
  %i.an = sext i32 %i.am to i64
  %i.ao = shl nsw i64 %i.an, 1
  %i.ap = or disjoint i64 %i.ao, 1
  call fastcc void @decode_jd(i64 noundef %i.ap, ptr noundef nonnull %i.c, ptr noundef nonnull %i.h)
  %i.aq = load i64, ptr %i.c, align 8, !tbaa !10  ; 9 uses
  %i.ar = icmp eq i64 %i.aq, 0
  %i.as = and i64 %i.aq, 7
  %i.at = icmp ne i64 %i.as, 0
  %i.au = or i1 %i.ar, %i.at
  br i1 %i.au, label %bb.n, label %rb_type.exit.i.i

bb.n:                                             ; preds = %bb.m
  switch i64 %i.aq, label %bb.o [
    i64 0, label %f_zero_p.exit.i
    i64 4, label %f_zero_p.exit.i
    i64 20, label %f_zero_p.exit.i
    i64 36, label %f_zero_p.exit.i
  ]

bb.o:                                             ; preds = %bb.n
  %i.av = trunc i64 %i.aq to i1
  br i1 %i.av, label %rb_type.exit.thread8.i.i, label %f_zero_p.exit.i

rb_type.exit.i.i:                                 ; preds = %bb.m
  %i.aw = inttoptr i64 %i.aq to ptr
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !26
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  switch i32 %i.az, label %f_zero_p.exit.i [
    i32 21, label %rb_type.exit.thread8.i.i
    i32 10, label %f_zero_p.exit.thread.i
    i32 15, label %bb.p
  ]

rb_type.exit.thread8.i.i:                         ; preds = %rb_type.exit.i.i, %bb.o
  %i.ba = icmp ult i64 %i.aq, 2
  br i1 %i.ba, label %f_zero_p.exit.thread45.i, label %f_zero_p.exit.thread.i

bb.p:                                             ; preds = %rb_type.exit.i.i
  %i.bb = tail call i64 @rb_rational_num(i64 noundef %i.aq) #22
  %or.cond.i = icmp eq i64 %i.bb, 1
  br i1 %or.cond.i, label %f_zero_p.exit.thread45.i, label %f_zero_p.exit.thread.i

f_zero_p.exit.i:                                  ; preds = %rb_type.exit.i.i, %bb.o, %bb.n, %bb.n, %bb.n, %bb.n
  %i.bc = load i64, ptr @id_eqeq_p, align 8, !tbaa !10
  %i.bd = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.aq, i64 noundef %i.bc, i32 noundef 1, i64 noundef 1) #19
  %.not38.i = icmp eq i64 %i.bd, 0
  br i1 %.not38.i, label %f_zero_p.exit.thread.i, label %f_zero_p.exit.thread45.i

f_zero_p.exit.thread45.i:                         ; preds = %f_zero_p.exit.i, %bb.p, %rb_type.exit.thread8.i.i
  %i.be = tail call i64 @rb_fix2int(i64 noundef %0) #19 ; 0 uses
  br label %valid_weeknum_p.exit.thread12

f_zero_p.exit.thread.i:                           ; preds = %f_zero_p.exit.i, %bb.p, %rb_type.exit.thread8.i.i, %rb_type.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.bf = load i32, ptr %i.i, align 4, !tbaa !6
  %.not39.i = icmp eq i32 %i.bf, 0
  %i.bg = select i1 %.not39.i, i32 1, i32 -1
  %i.bh = sitofp i32 %i.bg to double
  call fastcc void @decode_year(i64 noundef %0, double noundef %i.bh, ptr noundef %i.b, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %valid_weeknum_p.exit.thread12

valid_weeknum_p.exit.thread12:                    ; preds = %f_zero_p.exit.thread45.i, %f_zero_p.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.q

valid_weeknum_p.exit.thread:                      ; preds = %guess_style.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.r

valid_weeknum_p.exit:                             ; preds = %guess_style.exit.i
  call fastcc void @decode_year(i64 noundef %0, double noundef %.1.i.i, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e)
  %i.bi = load i32, ptr %i.e, align 4, !tbaa !6
  %i.bj = call fastcc i32 @c_valid_weeknum_p(i32 noundef %i.bi, i32 noundef %i.m, i32 noundef %i.q, i32 noundef %i.u, double noundef %.1.i.i, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i)
  %.not = icmp eq i32 %i.bj, 0
  br i1 %.not, label %bb.r, label %valid_weeknum_p.exit._crit_edge

valid_weeknum_p.exit._crit_edge:                  ; preds = %valid_weeknum_p.exit
  %.pre = load i64, ptr %i.c, align 8, !tbaa !10
  br label %bb.q

bb.q:                                             ; preds = %valid_weeknum_p.exit._crit_edge, %valid_weeknum_p.exit.thread12
  %i.bk = phi i64 [ %.pre, %valid_weeknum_p.exit._crit_edge ], [ %i.aq, %valid_weeknum_p.exit.thread12 ]
  %i.bl = load i32, ptr %i.h, align 4, !tbaa !6
  call fastcc void @encode_jd(i64 noundef %i.bk, i32 noundef %i.bl, ptr noundef %i.d)
  %i.bm = load i64, ptr %i.d, align 8, !tbaa !10
  br label %bb.r

bb.r:                                             ; preds = %valid_weeknum_p.exit.thread, %valid_weeknum_p.exit, %bb.q
  %.0 = phi i64 [ %i.bm, %bb.q ], [ 4, %valid_weeknum_p.exit ], [ 4, %valid_weeknum_p.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  ret i64 %.0
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 0, 2) i32 @c_valid_weeknum_p(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, double noundef %4, ptr nofree noundef nonnull captures(none) %5, ptr nofree noundef nonnull captures(none) %6, ptr nofree noundef nonnull captures(none) %7, ptr nofree noundef nonnull writeonly captures(none) %8) unnamed_addr #10 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 3 uses
  %i.e = alloca i32, align 4                      ; 3 uses
  %i.f = alloca i32, align 4                      ; 3 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 3 uses
  %i.i = alloca i32, align 4                      ; 6 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %i.k = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #19
  %i.l = icmp slt i32 %2, 0
  %i.m = add nsw i32 %2, 7
  %spec.select = select i1 %i.l, i32 %i.m, i32 %2 ; 2 uses
  %i.n = icmp slt i32 %1, 0
  br i1 %i.n, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.o = add nsw i32 %0, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.08.i.i = phi i32 [ 1, %bb.b ], [ %i.q, %bb.c ] ; 2 uses
  %i.p = call fastcc i32 @c_valid_civil_p(i32 noundef %i.o, i32 noundef 1, i32 noundef %.08.i.i, double noundef %4, ptr noundef %i.e, ptr noundef %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h)
  %.not.i.i = icmp ne i32 %i.p, 0
  %i.q = add nuw nsw i32 %.08.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.q, 31
  %or.cond.i = select i1 %.not.i.i, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond.i, label %c_find_fdoy.exit.i, label %bb.c, !llvm.loop !77

c_find_fdoy.exit.i:                               ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  %i.r = load i32, ptr %i.g, align 4, !tbaa !6
  %i.s = add nsw i32 %i.r, 6                      ; 2 uses
  %i.t = sub nsw i32 %i.s, %3                     ; 3 uses
  %i.u = icmp slt i32 %i.t, -1
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %c_find_fdoy.exit.i
  %i.v = sub nuw nsw i32 -2, %i.t
  %i.w = urem i32 %i.v, 7
  %i.x = sub nuw nsw i32 6, %i.w
  br label %c_weeknum_to_jd.exit

bb.e:                                             ; preds = %c_find_fdoy.exit.i
  %i.y = add nsw i32 %i.t, 1
  %i.z = urem i32 %i.y, 7
  br label %c_weeknum_to_jd.exit

c_weeknum_to_jd.exit:                             ; preds = %bb.d, %bb.e
  %i.aa = phi i32 [ %i.x, %bb.d ], [ %i.z, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  %i.ab = mul nsw i32 %1, 7
  %i.ac = add i32 %3, %i.ab
  %i.ad = add i32 %i.ac, %i.s
  %i.ae = sub i32 %i.ad, %i.aa
  call fastcc void @c_jd_to_weeknum(i32 noundef %i.ae, i32 noundef %3, double noundef %4, ptr noundef %i.i, ptr noundef %i.j, ptr noundef %i.k)
  %i.af = load i32, ptr %i.i, align 4, !tbaa !6
  %.not = icmp eq i32 %i.af, %0
  %i.ag = load i32, ptr %i.j, align 4
  br i1 %.not, label %bb.f, label %bb.l

bb.f:                                             ; preds = %c_weeknum_to_jd.exit, %bb.a
  %.131 = phi i32 [ %i.ag, %c_weeknum_to_jd.exit ], [ %1, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.08.i.i41 = phi i32 [ 1, %bb.f ], [ %i.ai, %bb.g ] ; 2 uses
  %i.ah = call fastcc i32 @c_valid_civil_p(i32 noundef %0, i32 noundef 1, i32 noundef %.08.i.i41, double noundef %4, ptr noundef %i.a, ptr noundef %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %.not.i.i42 = icmp ne i32 %i.ah, 0
  %i.ai = add nuw nsw i32 %.08.i.i41, 1           ; 2 uses
  %exitcond.not.i.i43 = icmp eq i32 %i.ai, 31
  %or.cond.i44 = select i1 %.not.i.i42, i1 true, i1 %exitcond.not.i.i43
  br i1 %or.cond.i44, label %c_find_fdoy.exit.i45, label %bb.g, !llvm.loop !77

c_find_fdoy.exit.i45:                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.aj = load i32, ptr %i.c, align 4, !tbaa !6
  %i.ak = add nsw i32 %i.aj, 6                    ; 2 uses
  %i.al = sub nsw i32 %i.ak, %3                   ; 3 uses
  %i.am = icmp slt i32 %i.al, -1
  br i1 %i.am, label %bb.h, label %bb.i

bb.h:                                             ; preds = %c_find_fdoy.exit.i45
  %i.an = sub nuw nsw i32 -2, %i.al
  %i.ao = urem i32 %i.an, 7
  %i.ap = sub nuw nsw i32 6, %i.ao
  br label %c_weeknum_to_jd.exit46

bb.i:                                             ; preds = %c_find_fdoy.exit.i45
  %i.aq = add nsw i32 %i.al, 1
  %i.ar = urem i32 %i.aq, 7
  br label %c_weeknum_to_jd.exit46

c_weeknum_to_jd.exit46:                           ; preds = %bb.h, %bb.i
  %i.as = phi i32 [ %i.ap, %bb.h ], [ %i.ar, %bb.i ]
  %i.at = mul nsw i32 %.131, 7
  %i.au = add nsw i32 %spec.select, -7
  %i.av = add i32 %i.au, %i.at
  %i.aw = add i32 %i.av, %i.ak
  %i.ax = sub i32 %i.aw, %i.as                    ; 2 uses
  store i32 %i.ax, ptr %7, align 4, !tbaa !6
  %i.ay = sitofp i32 %i.ax to double
  %i.az = fcmp ule double %4, %i.ay
  %i.ba = zext i1 %i.az to i32
  store i32 %i.ba, ptr %8, align 4, !tbaa !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %i.bb = load i32, ptr %7, align 4, !tbaa !6
  call fastcc void @c_jd_to_weeknum(i32 noundef %i.bb, i32 noundef %3, double noundef %4, ptr noundef %i.i, ptr noundef %5, ptr noundef %6)
  %i.bc = load i32, ptr %i.i, align 4, !tbaa !6
  %.not37 = icmp eq i32 %0, %i.bc
  br i1 %.not37, label %bb.j, label %bb.l

bb.j:                                             ; preds = %c_weeknum_to_jd.exit46
  %i.bd = load i32, ptr %5, align 4, !tbaa !6
  %.not38 = icmp eq i32 %.131, %i.bd
  br i1 %.not38, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.be = load i32, ptr %6, align 4, !tbaa !6
  %.not39 = icmp eq i32 %spec.select, %i.be
  %spec.select40 = zext i1 %.not39 to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %c_weeknum_to_jd.exit46, %bb.j, %c_weeknum_to_jd.exit
  %.1 = phi i32 [ 0, %c_weeknum_to_jd.exit ], [ 0, %c_weeknum_to_jd.exit46 ], [ %spec.select40, %bb.k ], [ 0, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #19
  ret i32 %.1
}

; Function Attrs: nofree nosync nounwind memory(argmem: write) uwtable
define internal fastcc void @c_jd_to_weeknum(i32 noundef %0, i32 noundef %1, double noundef %2, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %3, ptr nofree noundef nonnull writeonly captures(none) %4, ptr nofree noundef nonnull writeonly captures(none) %5) unnamed_addr #12 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.e = sitofp i32 %0 to double                  ; 3 uses
  %i.f = fcmp ogt double %2, %i.e
  br i1 %i.f, label %c_jd_to_civil.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = fadd double %i.e, f0xC13C7DD040000000
  %i.h = fdiv double %i.g, f0x40E1D58800000000
  %i.i = tail call double @llvm.floor.f64(double %i.h) ; 2 uses
  %i.j = add nsw i32 %0, 1
  %i.k = sitofp i32 %i.j to double
  %i.l = fadd double %i.i, %i.k
  %i.m = fmul nnan double %i.i, 2.500000e-01
  %i.n = tail call double @llvm.floor.f64(double %i.m)
  %i.o = fsub double %i.l, %i.n
  br label %c_jd_to_civil.exit

c_jd_to_civil.exit:                               ; preds = %bb.a, %bb.b
  %.0.i = phi double [ %i.o, %bb.b ], [ %i.e, %bb.a ]
  %i.p = fadd double %.0.i, 1.524000e+03          ; 2 uses
  %i.q = fadd double %i.p, -1.221000e+02
  %i.r = fdiv double %i.q, 3.652500e+02
  %i.s = tail call double @llvm.floor.f64(double %i.r) ; 2 uses
  %i.t = fmul double %i.s, 3.652500e+02
  %i.u = tail call double @llvm.floor.f64(double %i.t)
  %i.v = fsub double %i.p, %i.u
  %i.w = fdiv double %i.v, 3.060010e+01
  %i.x = tail call double @llvm.floor.f64(double %i.w)
  %i.y = fcmp ugt double %i.x, 1.300000e+01
  %.026.v.i = select i1 %i.y, double -4.715000e+03, double -4.716000e+03
  %.026.i = fadd double %i.s, %.026.v.i
  %i.z = fptosi double %.026.i to i32             ; 2 uses
  store i32 %i.z, ptr %3, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %c_jd_to_civil.exit
  %.08.i = phi i32 [ 1, %c_jd_to_civil.exit ], [ %i.ab, %bb.c ] ; 2 uses
  %i.aa = call fastcc i32 @c_valid_civil_p(i32 noundef %i.z, i32 noundef 1, i32 noundef %.08.i, double noundef %2, ptr noundef %i.a, ptr noundef %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %.not.i = icmp ne i32 %i.aa, 0
  %i.ab = add nuw nsw i32 %.08.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ab, 31
  %or.cond = select i1 %.not.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond, label %c_find_fdoy.exit, label %bb.c, !llvm.loop !77

c_find_fdoy.exit:                                 ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.ac = load i32, ptr %i.c, align 4, !tbaa !6
  %i.ad = add nsw i32 %i.ac, 6                    ; 2 uses
  %i.ae = sub nsw i32 %i.ad, %1                   ; 3 uses
  %i.af = icmp slt i32 %i.ae, -1
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %c_find_fdoy.exit
  %i.ag = sub nuw nsw i32 -2, %i.ae
  %i.ah = urem i32 %i.ag, 7
  %i.ai = sub nuw nsw i32 6, %i.ah
  br label %bb.f

bb.e:                                             ; preds = %c_find_fdoy.exit
  %i.aj = add nsw i32 %i.ae, 1
  %i.ak = urem i32 %i.aj, 7
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.al = phi i32 [ %i.ai, %bb.d ], [ %i.ak, %bb.e ]
  %.neg = sub i32 %i.al, %i.ad
  %i.am = add i32 %.neg, %0                       ; 3 uses
  %i.an = icmp slt i32 %i.am, -7
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ao = sub nuw nsw i32 -8, %i.am               ; 2 uses
  %i.ap = udiv i32 %i.ao, 7
  %i.aq = xor i32 %i.ap, -1
  %i.ar = urem i32 %i.ao, 7
  %i.as = sub nuw nsw i32 6, %i.ar
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.at = add nsw i32 %i.am, 7                    ; 2 uses
  %i.au = udiv i32 %i.at, 7
  %i.av = urem i32 %i.at, 7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sink = phi i32 [ %i.aq, %bb.g ], [ %i.au, %bb.h ]
  %i.aw = phi i32 [ %i.as, %bb.g ], [ %i.av, %bb.h ]
  store i32 %.sink, ptr %4, align 4, !tbaa !6
  store i32 %i.aw, ptr %5, align 4, !tbaa !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @check_limit(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !10
  %i.b = call i64 @rb_string_value(ptr noundef nonnull %i.a) #19 ; 0 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !10
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !44   ; 2 uses
  %i.g = icmp eq i64 %1, 4
  br i1 %i.g, label %get_limit.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.pr.i.i = load i64, ptr @get_limit.rbimpl_id, align 8, !tbaa !10 ; 2 uses
  %.not4.i.i = icmp eq i64 %.pr.i.i, 0
  br i1 %.not4.i.i, label %.lr.ph.i.i, label %rbimpl_intern_const.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %i.h = call i64 @rb_intern2(ptr noundef nonnull @.str.320, i64 noundef 5) #19 ; 3 uses
  store i64 %i.h, ptr @get_limit.rbimpl_id, align 8, !tbaa !10
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %rbimpl_intern_const.exit.i, !llvm.loop !52

rbimpl_intern_const.exit.i:                       ; preds = %.lr.ph.i.i, %bb.b
  %.lcssa.i.i = phi i64 [ %.pr.i.i, %bb.b ], [ %i.h, %.lr.ph.i.i ]
  %i.i = call i64 @rb_id2sym(i64 noundef %.lcssa.i.i) #19
  %i.j = call i64 @rb_hash_aref(i64 noundef %1, i64 noundef %i.i) #19 ; 4 uses
  %i.k = icmp eq i64 %i.j, 4
  br i1 %i.k, label %get_limit.exit.thread, label %bb.c

bb.c:                                             ; preds = %rbimpl_intern_const.exit.i
  %i.l = trunc i64 %i.j to i1
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = ashr i64 %i.j, 1
  br label %get_limit.exit

bb.e:                                             ; preds = %bb.c
  %i.n = call i64 @rb_num2ull(i64 noundef %i.j) #19
  br label %get_limit.exit

get_limit.exit:                                   ; preds = %bb.a, %bb.d, %bb.e
  %.1.i = phi i64 [ %i.n, %bb.e ], [ 128, %bb.a ], [ %i.m, %bb.d ] ; 2 uses
  %i.o = icmp ugt i64 %i.f, %.1.i
  br i1 %i.o, label %bb.f, label %get_limit.exit.thread

bb.f:                                             ; preds = %get_limit.exit
  %i.p = load i64, ptr @rb_eArgError, align 8, !tbaa !10
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.p, ptr noundef nonnull @.str.319, i64 noundef %i.f, i64 noundef %.1.i) #20
  unreachable

get_limit.exit.thread:                            ; preds = %rbimpl_intern_const.exit.i, %get_limit.exit
  %i.q = load i64, ptr %i.a, align 8, !tbaa !10
  ret i64 %i.q
}

declare i64 @date__parse(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_num2ull(i64 noundef) local_unnamed_addr #1

declare i64 @date__iso8601(i64 noundef) local_unnamed_addr #1

declare i64 @date__rfc3339(i64 noundef) local_unnamed_addr #1

declare i64 @date__xmlschema(i64 noundef) local_unnamed_addr #1

declare i64 @date__rfc2822(i64 noundef) local_unnamed_addr #1

declare i64 @date__httpdate(i64 noundef) local_unnamed_addr #1

declare i64 @date__jisx0301(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: noreturn
declare void @rb_error_frozen_object(i64 noundef) local_unnamed_addr #8

declare void @rb_str_modify(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i64 @m_ajd(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !41
  %i.d = and i32 %i.c, 128
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %m_nth.exit.i, label %m_nth.exit.i27

m_nth.exit.i:                                     ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %.0.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0.i.i = load i64, ptr %.0.in.i.i, align 8, !tbaa !41
  tail call fastcc void @get_s_jd(ptr noundef nonnull %0)
  %.0.in.i4.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.0.i5.i = load i32, ptr %.0.in.i4.i, align 4, !tbaa !41
  call fastcc void @encode_jd(i64 noundef %.0.i.i, i32 noundef %.0.i5.i, ptr noundef %i.b)
  %i.e = load i64, ptr %i.b, align 8, !tbaa !10   ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.f = trunc i64 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %m_nth.exit.i
  %i.g = ashr i64 %i.e, 1
  %i.h = add nsw i64 %i.g, 2305843009213693951
  %or.cond = icmp ult i64 %i.h, 4611686018427387903
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = shl i64 %i.e, 1
  %i.j = and i64 %i.i, -4
  %i.k = add i64 %i.j, -1
  %i.l = tail call i64 @rb_rational_new(i64 noundef %i.k, i64 noundef 5) #19
  br label %f_zero_p.exit.thread62

bb.d:                                             ; preds = %bb.b, %m_nth.exit.i
  %i.m = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.e, i64 noundef 42, i32 noundef 1, i64 noundef 5) #19
  %i.n = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.m, i64 noundef 45, i32 noundef 1, i64 noundef 3) #19
  %i.o = tail call i64 @rb_rational_new(i64 noundef %i.n, i64 noundef 5) #19
  br label %f_zero_p.exit.thread62

m_nth.exit.i27:                                   ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  tail call fastcc void @get_c_civil(ptr noundef nonnull %0)
  %.pre.i26 = load i32, ptr %0, align 8, !tbaa !41
  %.0.in.i.i28 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0.i.i29 = load i64, ptr %.0.in.i.i28, align 8, !tbaa !41
  %i.p = and i32 %.pre.i26, 128
  %.not.i3.i30 = icmp eq i32 %i.p, 0
  br i1 %.not.i3.i30, label %bb.e, label %bb.f

bb.e:                                             ; preds = %m_nth.exit.i27
  tail call fastcc void @get_s_jd(ptr noundef nonnull %0)
  br label %m_real_jd.exit33

bb.f:                                             ; preds = %m_nth.exit.i27
  tail call fastcc void @get_c_jd(ptr noundef nonnull %0)
  br label %m_real_jd.exit33

m_real_jd.exit33:                                 ; preds = %bb.e, %bb.f
  %.0.in.i4.i31 = getelementptr inbounds nuw i8, ptr %0, i64 4
end_hunk_2
begin_hunk_3_@m_yday:bb.a

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @get_s_civil(ptr noundef nonnull %0)
  br label %m_year.exit

bb.i:                                             ; preds = %bb.g
  tail call fastcc void @get_c_civil(ptr noundef nonnull %0)
  br label %m_year.exit

m_year.exit:                                      ; preds = %bb.h, %bb.i
  %.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.0.i17 = load i32, ptr %.0.in.i, align 4, !tbaa !41 ; 5 uses
  %i.at = load i32, ptr %0, align 8, !tbaa !41
  %i.au = and i32 %i.at, 128
  %.not.i18 = icmp eq i32 %i.au, 0
  br i1 %.not.i18, label %bb.j, label %bb.k

bb.j:                                             ; preds = %m_year.exit
  tail call fastcc void @get_s_civil(ptr noundef nonnull %0)
  br label %m_mon.exit

bb.k:                                             ; preds = %m_year.exit
  tail call fastcc void @get_c_civil(ptr noundef nonnull %0)
  br label %m_mon.exit

m_mon.exit:                                       ; preds = %bb.j, %bb.k
  %.0.in.in.in.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.0.in.in.i = load i32, ptr %.0.in.in.in.i, align 8, !tbaa !41
  %.0.in.i19 = lshr i32 %.0.in.in.i, 22
  %.0.i20 = and i32 %.0.in.i19, 15
  %i.av = load i32, ptr %0, align 8, !tbaa !41
  %i.aw = and i32 %i.av, 128
  %.not.i21 = icmp eq i32 %i.aw, 0
  br i1 %.not.i21, label %bb.l, label %bb.m

bb.l:                                             ; preds = %m_mon.exit
  tail call fastcc void @get_s_civil(ptr noundef nonnull %0)
  br label %m_mday.exit

bb.m:                                             ; preds = %m_mon.exit
  tail call fastcc void @get_c_civil(ptr noundef nonnull %0)
  br label %m_mday.exit

m_mday.exit:                                      ; preds = %bb.l, %bb.m
  %.0.in.in.i23 = load i32, ptr %.0.in.in.in.i, align 8, !tbaa !41
  %.0.in.i24 = lshr i32 %.0.in.in.i23, 17
  %.0.i25 = and i32 %.0.in.i24, 31
  %i.ax = and i32 %.0.i17, 3
  %i.ay = icmp ne i32 %i.ax, 0
  %i.az = srem i32 %.0.i17, 100
  %.not.i.i26 = icmp eq i32 %i.az, 0
  %or.cond.i.i = or i1 %i.ay, %.not.i.i26
  br i1 %or.cond.i.i, label %bb.n, label %c_gregorian_to_yday.exit

bb.n:                                             ; preds = %m_mday.exit
  %i.ba = icmp slt i32 %.0.i17, 0
  br i1 %i.ba, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bb = xor i32 %.0.i17, -1
  %i.bc = urem i32 %i.bb, 400
  %i.bd = sub nuw nsw i32 399, %i.bc
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.be = urem i32 %.0.i17, 400
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bf = phi i32 [ %i.bd, %bb.o ], [ %i.be, %bb.p ]
  %i.bg = icmp eq i32 %i.bf, 0
  %i.bh = zext i1 %i.bg to i64
  br label %c_gregorian_to_yday.exit

c_gregorian_to_yday.exit:                         ; preds = %m_mday.exit, %bb.q
  %i.bi = phi i64 [ 1, %m_mday.exit ], [ %i.bh, %bb.q ]
  %i.bj = getelementptr inbounds nuw [52 x i8], ptr @yeartab, i64 %i.bi
  %i.bk = zext nneg i32 %.0.i20 to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !6
  %i.bn = add nsw i32 %i.bm, %.0.i25
  br label %bb.ad

bb.r:                                             ; preds = %bb.f
  %i.bo = and i32 %.pre52, 128
  %.not.i.i27 = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i27, label %m_proleptic_julian_p.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call fastcc void @get_c_jd(ptr noundef nonnull %0)
  %.0.in.i.i29.pre = load float, ptr %.0.in.in.i.i, align 8, !tbaa !41
  br label %m_proleptic_julian_p.exit

m_proleptic_julian_p.exit:                        ; preds = %bb.r, %bb.s
  %.0.in.i.i29 = phi float [ %.0.in.i.i, %bb.r ], [ %.0.in.i.i29.pre, %bb.s ]
  %or.cond.i30 = fcmp une float %.0.in.i.i29, +inf
  br i1 %or.cond.i30, label %bb.aa, label %bb.t

bb.t:                                             ; preds = %m_proleptic_julian_p.exit
  %i.bp = load i32, ptr %0, align 8, !tbaa !41
  %i.bq = and i32 %i.bp, 128
  %.not.i32 = icmp eq i32 %i.bq, 0
  br i1 %.not.i32, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call fastcc void @get_s_civil(ptr noundef nonnull %0)
  br label %m_year.exit35

bb.v:                                             ; preds = %bb.t
  tail call fastcc void @get_c_civil(ptr noundef nonnull %0)
  br label %m_year.exit35

m_year.exit35:                                    ; preds = %bb.u, %bb.v
  %.0.in.i33 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.0.i34 = load i32, ptr %.0.in.i33, align 4, !tbaa !41
  %i.br = load i32, ptr %0, align 8, !tbaa !41
  %i.bs = and i32 %i.br, 128
  %.not.i36 = icmp eq i32 %i.bs, 0
  br i1 %.not.i36, label %bb.w, label %bb.x

bb.w:                                             ; preds = %m_year.exit35
  tail call fastcc void @get_s_civil(ptr noundef nonnull %0)
  br label %m_mon.exit41

bb.x:                                             ; preds = %m_year.exit35
  tail call fastcc void @get_c_civil(ptr noundef nonnull %0)
  br label %m_mon.exit41

m_mon.exit41:                                     ; preds = %bb.w, %bb.x
  %.0.in.in.in.i37 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.0.in.in.i38 = load i32, ptr %.0.in.in.in.i37, align 8, !tbaa !41
  %.0.in.i39 = lshr i32 %.0.in.in.i38, 22
  %.0.i40 = and i32 %.0.in.i39, 15
  %i.bt = load i32, ptr %0, align 8, !tbaa !41
  %i.bu = and i32 %i.bt, 128
  %.not.i42 = icmp eq i32 %i.bu, 0
  br i1 %.not.i42, label %bb.y, label %bb.z

bb.y:                                             ; preds = %m_mon.exit41
  tail call fastcc void @get_s_civil(ptr noundef nonnull %0)
  br label %m_mday.exit47

bb.z:                                             ; preds = %m_mon.exit41
  tail call fastcc void @get_c_civil(ptr noundef nonnull %0)
  br label %m_mday.exit47

m_mday.exit47:                                    ; preds = %bb.y, %bb.z
  %.0.in.in.i44 = load i32, ptr %.0.in.in.in.i37, align 8, !tbaa !41
  %.0.in.i45 = lshr i32 %.0.in.in.i44, 17
  %.0.i46 = and i32 %.0.in.i45, 31
  %i.bv = and i32 %.0.i34, 3
  %i.bw = icmp eq i32 %i.bv, 0
  %i.bx = zext i1 %i.bw to i64
  %i.by = getelementptr inbounds nuw [52 x i8], ptr @yeartab, i64 %i.bx
  %i.bz = zext nneg i32 %.0.i40 to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !6
  %i.cc = add nsw i32 %.0.i46, %i.cb
  br label %bb.ad

bb.aa:                                            ; preds = %m_proleptic_julian_p.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.cd = fcmp ogt double %i.al, %i.ao
  br i1 %i.cd, label %c_jd_to_civil.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ce = fadd double %i.ao, f0xC13C7DD040000000
  %i.cf = fdiv double %i.ce, f0x40E1D58800000000
  %i.cg = tail call double @llvm.floor.f64(double %i.cf) ; 2 uses
  %i.ch = add nsw i32 %.0.i, 1
  %i.ci = sitofp i32 %i.ch to double
  %i.cj = fadd double %i.cg, %i.ci
  %i.ck = fmul nnan double %i.cg, 2.500000e-01
  %i.cl = tail call double @llvm.floor.f64(double %i.ck)
  %i.cm = fsub double %i.cj, %i.cl
  br label %c_jd_to_civil.exit.i

c_jd_to_civil.exit.i:                             ; preds = %bb.ab, %bb.aa
  %.0.i.i = phi double [ %i.cm, %bb.ab ], [ %i.ao, %bb.aa ]
  %i.cn = fadd double %.0.i.i, 1.524000e+03       ; 2 uses
  %i.co = fadd double %i.cn, -1.221000e+02
  %i.cp = fdiv double %i.co, 3.652500e+02
  %i.cq = tail call double @llvm.floor.f64(double %i.cp) ; 2 uses
  %i.cr = fmul double %i.cq, 3.652500e+02
  %i.cs = tail call double @llvm.floor.f64(double %i.cr)
  %i.ct = fsub double %i.cn, %i.cs
  %i.cu = fdiv double %i.ct, 3.060010e+01
  %i.cv = tail call double @llvm.floor.f64(double %i.cu)
  %i.cw = fcmp ugt double %i.cv, 1.300000e+01
  %.026.v.i.i = select i1 %i.cw, double -4.715000e+03, double -4.716000e+03
  %.026.i.i = fadd double %i.cq, %.026.v.i.i
  %i.cx = fptosi double %.026.i.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %c_jd_to_civil.exit.i
  %.08.i.i = phi i32 [ 1, %c_jd_to_civil.exit.i ], [ %i.cz, %bb.ac ] ; 2 uses
  %i.cy = call fastcc i32 @c_valid_civil_p(i32 noundef %i.cx, i32 noundef 1, i32 noundef %.08.i.i, double noundef %i.al, ptr noundef %i.a, ptr noundef %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %.not.i.i48 = icmp ne i32 %i.cy, 0
  %i.cz = add nuw nsw i32 %.08.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.cz, 31
  %or.cond.i49 = select i1 %.not.i.i48, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond.i49, label %c_jd_to_ordinal.exit, label %bb.ac, !llvm.loop !77

c_jd_to_ordinal.exit:                             ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.da = load i32, ptr %i.c, align 4, !tbaa !6
  %i.db = add i32 %.0.i, 1
  %i.dc = sub i32 %i.db, %i.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %bb.ad

bb.ad:                                            ; preds = %c_jd_to_ordinal.exit, %m_mday.exit47, %c_gregorian_to_yday.exit
  %.0 = phi i32 [ %i.bn, %c_gregorian_to_yday.exit ], [ %i.cc, %m_mday.exit47 ], [ %i.dc, %c_jd_to_ordinal.exit ]
  ret i32 %.0
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc double @m_virtual_sg(ptr nofree noundef readonly captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !41
  %i.b = and i32 %i.a, 128
  %.not = icmp eq i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load float, ptr %i.c, align 8, !tbaa !41 ; 7 uses
  %i.e = tail call float @llvm.fabs.f32(float %i.d) #21
  %i.f = fcmp oeq float %i.e, +inf                ; 2 uses
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = fpext float %i.d to double
  br label %s_virtual_sg.exit

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !41   ; 11 uses
  %i.j = icmp eq i64 %i.i, 0
  %i.k = and i64 %i.i, 7
  %i.l = icmp ne i64 %i.k, 0
  %i.m = or i1 %i.j, %i.l
  br i1 %i.m, label %bb.e, label %rb_type.exit.i.i

bb.e:                                             ; preds = %bb.d
  switch i64 %i.i, label %bb.f [
    i64 0, label %f_zero_p.exit.i
    i64 4, label %f_zero_p.exit.i
    i64 20, label %f_zero_p.exit.i
    i64 36, label %f_zero_p.exit.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.n = trunc i64 %i.i to i1
  br i1 %i.n, label %rb_type.exit.thread8.i.i, label %f_zero_p.exit.i

rb_type.exit.i.i:                                 ; preds = %bb.d
  %i.o = inttoptr i64 %i.i to ptr
  %i.p = load i64, ptr %i.o, align 8, !tbaa !26
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.q, 31
  switch i32 %i.r, label %f_zero_p.exit.i [
    i32 21, label %rb_type.exit.thread8.i.i
    i32 10, label %f_zero_p.exit.thread.i
    i32 15, label %bb.g
  ]

rb_type.exit.thread8.i.i:                         ; preds = %rb_type.exit.i.i, %bb.f
  %i.s = icmp ult i64 %i.i, 2
  br i1 %i.s, label %f_zero_p.exit.thread12.i, label %f_zero_p.exit.thread.i

bb.g:                                             ; preds = %rb_type.exit.i.i
  %i.t = tail call i64 @rb_rational_num(i64 noundef %i.i) #22
  %or.cond.i = icmp eq i64 %i.t, 1
  br i1 %or.cond.i, label %f_zero_p.exit.thread12.i, label %f_zero_p.exit.thread.i

f_zero_p.exit.i:                                  ; preds = %rb_type.exit.i.i, %bb.f, %bb.e, %bb.e, %bb.e, %bb.e
  %i.u = load i64, ptr @id_eqeq_p, align 8, !tbaa !10
  %i.v = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.i, i64 noundef %i.u, i32 noundef 1, i64 noundef 1) #19
  %.not.i = icmp eq i64 %i.v, 0
  br i1 %.not.i, label %f_zero_p.exit.f_zero_p.exit.thread_crit_edge.i, label %f_zero_p.exit.f_zero_p.exit.thread12_crit_edge.i

f_zero_p.exit.f_zero_p.exit.thread12_crit_edge.i: ; preds = %f_zero_p.exit.i
  %.pre21.i = load float, ptr %i.c, align 8, !tbaa !41
  br label %f_zero_p.exit.thread12.i

f_zero_p.exit.f_zero_p.exit.thread_crit_edge.i:   ; preds = %f_zero_p.exit.i
  %.pre.i = load i64, ptr %i.h, align 8, !tbaa !41
  br label %f_zero_p.exit.thread.i

f_zero_p.exit.thread12.i:                         ; preds = %f_zero_p.exit.f_zero_p.exit.thread12_crit_edge.i, %bb.g, %rb_type.exit.thread8.i.i
  %i.w = phi float [ %.pre21.i, %f_zero_p.exit.f_zero_p.exit.thread12_crit_edge.i ], [ %i.d, %bb.g ], [ %i.d, %rb_type.exit.thread8.i.i ]
  %i.x = fpext float %i.w to double
  br label %s_virtual_sg.exit

f_zero_p.exit.thread.i:                           ; preds = %f_zero_p.exit.f_zero_p.exit.thread_crit_edge.i, %bb.g, %rb_type.exit.thread8.i.i, %rb_type.exit.i.i
  %i.y = phi i64 [ %.pre.i, %f_zero_p.exit.f_zero_p.exit.thread_crit_edge.i ], [ %i.i, %bb.g ], [ %i.i, %rb_type.exit.i.i ], [ %i.i, %rb_type.exit.thread8.i.i ] ; 3 uses
  %i.z = trunc i64 %i.y to i1
  br i1 %i.z, label %bb.h, label %f_negative_p.exit.i

bb.h:                                             ; preds = %f_zero_p.exit.thread.i
  %i.aa = icmp slt i64 %i.y, 0
  br i1 %i.aa, label %f_negative_p.exit.thread18.i, label %f_negative_p.exit.thread.i

f_negative_p.exit.i:                              ; preds = %f_zero_p.exit.thread.i
  %i.ab = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.y, i64 noundef 60, i32 noundef 1, i64 noundef 1) #19
  %.not6.i = icmp eq i64 %i.ab, 0
  br i1 %.not6.i, label %f_negative_p.exit.thread.i, label %f_negative_p.exit.thread18.i

f_negative_p.exit.thread18.i:                     ; preds = %f_negative_p.exit.i, %bb.h
  %i.ac = load double, ptr @positive_inf, align 8, !tbaa !12
  br label %s_virtual_sg.exit

f_negative_p.exit.thread.i:                       ; preds = %f_negative_p.exit.i, %bb.h
  %i.ad = load double, ptr @negative_inf, align 8, !tbaa !12
  br label %s_virtual_sg.exit

bb.i:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ae = fpext float %i.d to double
  br label %s_virtual_sg.exit

bb.k:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !41 ; 11 uses
  %i.ah = icmp eq i64 %i.ag, 0
  %i.ai = and i64 %i.ag, 7
  %i.aj = icmp ne i64 %i.ai, 0
  %i.ak = or i1 %i.ah, %i.aj
  br i1 %i.ak, label %bb.l, label %rb_type.exit.i.i4

bb.l:                                             ; preds = %bb.k
  switch i64 %i.ag, label %bb.m [
    i64 0, label %f_zero_p.exit.i14
    i64 4, label %f_zero_p.exit.i14
    i64 20, label %f_zero_p.exit.i14
    i64 36, label %f_zero_p.exit.i14
  ]

bb.m:                                             ; preds = %bb.l
  %i.al = trunc i64 %i.ag to i1
  br i1 %i.al, label %rb_type.exit.thread8.i.i13, label %f_zero_p.exit.i14

rb_type.exit.i.i4:                                ; preds = %bb.k
  %i.am = inttoptr i64 %i.ag to ptr
  %i.an = load i64, ptr %i.am, align 8, !tbaa !26
  %i.ao = trunc i64 %i.an to i32
  %i.ap = and i32 %i.ao, 31
  switch i32 %i.ap, label %f_zero_p.exit.i14 [
    i32 21, label %rb_type.exit.thread8.i.i13
    i32 10, label %f_zero_p.exit.thread.i6
    i32 15, label %bb.n
  ]

rb_type.exit.thread8.i.i13:                       ; preds = %rb_type.exit.i.i4, %bb.m
  %i.aq = icmp ult i64 %i.ag, 2
  br i1 %i.aq, label %f_zero_p.exit.thread12.i12, label %f_zero_p.exit.thread.i6

bb.n:                                             ; preds = %rb_type.exit.i.i4
  %i.ar = tail call i64 @rb_rational_num(i64 noundef %i.ag) #22
  %or.cond.i5 = icmp eq i64 %i.ar, 1
  br i1 %or.cond.i5, label %f_zero_p.exit.thread12.i12, label %f_zero_p.exit.thread.i6

f_zero_p.exit.i14:                                ; preds = %rb_type.exit.i.i4, %bb.m, %bb.l, %bb.l, %bb.l, %bb.l
  %i.as = load i64, ptr @id_eqeq_p, align 8, !tbaa !10
  %i.at = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.ag, i64 noundef %i.as, i32 noundef 1, i64 noundef 1) #19
  %.not.i15 = icmp eq i64 %i.at, 0
  br i1 %.not.i15, label %f_zero_p.exit.f_zero_p.exit.thread_crit_edge.i18, label %f_zero_p.exit.f_zero_p.exit.thread12_crit_edge.i16

f_zero_p.exit.f_zero_p.exit.thread12_crit_edge.i16: ; preds = %f_zero_p.exit.i14
  %.pre21.i17 = load float, ptr %i.c, align 8, !tbaa !41
  br label %f_zero_p.exit.thread12.i12

f_zero_p.exit.f_zero_p.exit.thread_crit_edge.i18: ; preds = %f_zero_p.exit.i14
  %.pre.i19 = load i64, ptr %i.af, align 8, !tbaa !41
  br label %f_zero_p.exit.thread.i6

f_zero_p.exit.thread12.i12:                       ; preds = %f_zero_p.exit.f_zero_p.exit.thread12_crit_edge.i16, %bb.n, %rb_type.exit.thread8.i.i13
  %i.au = phi float [ %.pre21.i17, %f_zero_p.exit.f_zero_p.exit.thread12_crit_edge.i16 ], [ %i.d, %bb.n ], [ %i.d, %rb_type.exit.thread8.i.i13 ]
  %i.av = fpext float %i.au to double
  br label %s_virtual_sg.exit

f_zero_p.exit.thread.i6:                          ; preds = %f_zero_p.exit.f_zero_p.exit.thread_crit_edge.i18, %bb.n, %rb_type.exit.thread8.i.i13, %rb_type.exit.i.i4
  %i.aw = phi i64 [ %.pre.i19, %f_zero_p.exit.f_zero_p.exit.thread_crit_edge.i18 ], [ %i.ag, %bb.n ], [ %i.ag, %rb_type.exit.i.i4 ], [ %i.ag, %rb_type.exit.thread8.i.i13 ] ; 3 uses
  %i.ax = trunc i64 %i.aw to i1
  br i1 %i.ax, label %bb.o, label %f_negative_p.exit.i7

bb.o:                                             ; preds = %f_zero_p.exit.thread.i6
  %i.ay = icmp slt i64 %i.aw, 0
  br i1 %i.ay, label %f_negative_p.exit.thread18.i9, label %f_negative_p.exit.thread.i11

f_negative_p.exit.i7:                             ; preds = %f_zero_p.exit.thread.i6
  %i.az = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.aw, i64 noundef 60, i32 noundef 1, i64 noundef 1) #19
  %.not6.i8 = icmp eq i64 %i.az, 0
end_hunk_3
