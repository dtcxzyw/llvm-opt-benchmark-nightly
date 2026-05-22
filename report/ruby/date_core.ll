inline.NumInlined: 1371
inline.NumDeleted: 154
begin_hunk_0_@valid_ordinal_p:bb.a
  %i.q = trunc i64 %i.p to i32
  %i.r = call fastcc i32 @c_valid_ordinal_p(i32 noundef %i.q, i32 noundef %1, double noundef %2, ptr noundef %i.a, ptr noundef %6)
  %.not.not = icmp eq i32 %i.r, 0
  br i1 %.not.not, label %.critedge, label %bb.g

bb.g:                                             ; preds = %guess_style.exit.thread
  %i.s = load i32, ptr %i.a, align 4, !tbaa !6
  %i.t = sext i32 %i.s to i64
  %i.u = shl nsw i64 %i.t, 1
  %i.v = or disjoint i64 %i.u, 1
  tail call fastcc void @decode_jd(i64 noundef %i.v, ptr noundef %3, ptr noundef %5)
  %i.w = load i64, ptr %3, align 8, !tbaa !10     ; 9 uses
  %i.x = icmp eq i64 %i.w, 0
  %i.y = and i64 %i.w, 7
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = or i1 %i.x, %i.z
  br i1 %i.aa, label %bb.h, label %rb_type.exit.i

bb.h:                                             ; preds = %bb.g
  %i.ab = tail call i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 62)
  switch i64 %i.ab, label %bb.i [
    i64 0, label %f_zero_p.exit
    i64 1, label %f_zero_p.exit
    i64 5, label %f_zero_p.exit
    i64 9, label %f_zero_p.exit
  ]

bb.i:                                             ; preds = %bb.h
  %i.ac = trunc i64 %i.w to i1
  br i1 %i.ac, label %rb_type.exit.thread8.i, label %f_zero_p.exit

rb_type.exit.i:                                   ; preds = %bb.g
  %i.ad = inttoptr i64 %i.w to ptr
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !26
  %i.af = trunc i64 %i.ae to i32
  %i.ag = and i32 %i.af, 31
  switch i32 %i.ag, label %f_zero_p.exit [
    i32 21, label %rb_type.exit.thread8.i
    i32 10, label %f_zero_p.exit.thread
    i32 15, label %bb.j
  ]

rb_type.exit.thread8.i:                           ; preds = %rb_type.exit.i, %bb.i
  %i.ah = icmp ult i64 %i.w, 2
  br i1 %i.ah, label %f_zero_p.exit.thread6, label %f_zero_p.exit.thread

bb.j:                                             ; preds = %rb_type.exit.i
  %i.ai = tail call i64 @rb_rational_num(i64 noundef %i.w) #22
  %or.cond = icmp eq i64 %i.ai, 1
  br i1 %or.cond, label %f_zero_p.exit.thread6, label %f_zero_p.exit.thread

f_zero_p.exit:                                    ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.i, %rb_type.exit.i
  %i.aj = load i64, ptr @id_eqeq_p, align 8, !tbaa !10
  %i.ak = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.w, i64 noundef %i.aj, i32 noundef 1, i64 noundef 1) #19
  %.not32 = icmp eq i64 %i.ak, 0
  br i1 %.not32, label %f_zero_p.exit.thread, label %f_zero_p.exit.thread6

f_zero_p.exit.thread6:                            ; preds = %bb.j, %rb_type.exit.thread8.i, %f_zero_p.exit
  %i.al = tail call i64 @rb_fix2int(i64 noundef %0) #19
  %i.am = trunc i64 %i.al to i32
  store i32 %i.am, ptr %4, align 4, !tbaa !6
  br label %bb.k

f_zero_p.exit.thread:                             ; preds = %bb.j, %rb_type.exit.i, %rb_type.exit.thread8.i, %f_zero_p.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.an = load i32, ptr %6, align 4, !tbaa !6
  %.not33 = icmp eq i32 %i.an, 0
  %i.ao = select i1 %.not33, i32 1, i32 -1
  %i.ap = sitofp i32 %i.ao to double
  call fastcc void @decode_year(i64 noundef %0, double noundef %i.ap, ptr noundef %i.b, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.k

bb.k:                                             ; preds = %f_zero_p.exit.thread6, %f_zero_p.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.m

bb.l:                                             ; preds = %guess_style.exit
  tail call fastcc void @decode_year(i64 noundef %0, double noundef %.1.i, ptr noundef %3, ptr noundef %4)
  %i.aq = load i32, ptr %4, align 4, !tbaa !6
  %i.ar = tail call fastcc i32 @c_valid_ordinal_p(i32 noundef %i.aq, i32 noundef %1, double noundef %.1.i, ptr noundef %5, ptr noundef %6)
  br label %bb.m

.critedge:                                        ; preds = %guess_style.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %.critedge
  %.1 = phi i32 [ 0, %.critedge ], [ 1, %bb.k ], [ %i.ar, %bb.l ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc void @encode_jd(i64 noundef %0, i32 noundef %1, ptr noundef nonnull writeonly captures(none) initializes((0, 8)) %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %rb_type.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @llvm.fshl.i64(i64 %0, i64 %0, i64 62)
  switch i64 %i.e, label %bb.c [
    i64 0, label %f_zero_p.exit
    i64 1, label %f_zero_p.exit
    i64 5, label %f_zero_p.exit
    i64 9, label %f_zero_p.exit
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = trunc i64 %0 to i1
  br i1 %i.f, label %rb_type.exit.thread8.i, label %f_zero_p.exit

rb_type.exit.i:                                   ; preds = %bb.a
  %i.g = inttoptr i64 %0 to ptr
  %i.h = load i64, ptr %i.g, align 8, !tbaa !26
  %i.i = trunc i64 %i.h to i32
  %i.j = and i32 %i.i, 31
  switch i32 %i.j, label %f_zero_p.exit [
    i32 21, label %rb_type.exit.thread8.i
    i32 10, label %f_zero_p.exit.thread
    i32 15, label %bb.d
  ]

rb_type.exit.thread8.i:                           ; preds = %rb_type.exit.i, %bb.c
  %i.k = icmp ult i64 %0, 2
  br i1 %i.k, label %f_zero_p.exit.thread9, label %f_zero_p.exit.thread

bb.d:                                             ; preds = %rb_type.exit.i
  %i.l = tail call i64 @rb_rational_num(i64 noundef %0) #22
  %or.cond = icmp eq i64 %i.l, 1
  br i1 %or.cond, label %f_zero_p.exit.thread9, label %f_zero_p.exit.thread

f_zero_p.exit:                                    ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.c, %rb_type.exit.i
  %i.m = load i64, ptr @id_eqeq_p, align 8, !tbaa !10
  %i.n = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %0, i64 noundef %i.m, i32 noundef 1, i64 noundef 1) #19
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %f_zero_p.exit.thread, label %f_zero_p.exit.thread9

f_zero_p.exit.thread9:                            ; preds = %bb.d, %rb_type.exit.thread8.i, %f_zero_p.exit
  %i.o = sext i32 %1 to i64
  %i.p = shl nsw i64 %i.o, 1
  %i.q = or disjoint i64 %i.p, 1
  br label %bb.e

f_zero_p.exit.thread:                             ; preds = %bb.d, %rb_type.exit.i, %rb_type.exit.thread8.i, %f_zero_p.exit
  %i.r = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef 426895435, i64 noundef 42, i32 noundef 1, i64 noundef %0) #19
  %i.s = sext i32 %1 to i64
  %i.t = shl nsw i64 %i.s, 1
  %i.u = or disjoint i64 %i.t, 1
  %i.v = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.r, i64 noundef 43, i32 noundef 1, i64 noundef %i.u) #19
  br label %bb.e

bb.e:                                             ; preds = %f_zero_p.exit.thread, %f_zero_p.exit.thread9
  %storemerge = phi i64 [ %i.v, %f_zero_p.exit.thread ], [ %i.q, %f_zero_p.exit.thread9 ]
  store i64 %storemerge, ptr %2, align 8, !tbaa !10
  ret void
}

declare i64 @rb_fix2int(i64 noundef) local_unnamed_addr #1

declare i64 @rb_num2int(i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 0, 2) i32 @c_valid_ordinal_p(i32 noundef %0, i32 noundef %1, double noundef %2, ptr noundef nonnull captures(none) %3, ptr noundef nonnull writeonly captures(none) %4) unnamed_addr #10 {
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
  br i1 %exitcond.not.i, label %.thread, label %bb.d, !llvm.loop !76

.thread:                                          ; preds = %bb.c
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
  br i1 %or.cond.i, label %bb.h, label %bb.g, !llvm.loop !77

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  %i.au = load i32, ptr %i.j, align 4, !tbaa !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #19
  %.not21 = icmp eq i32 %0, %i.ar
  br i1 %.not21, label %5, label %.critedge

5:                                                ; preds = %bb.h
  %6 = add i32 %i.u, 2
  %7 = sub i32 %6, %i.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #19
  br label %bb.i

bb.i:                                             ; preds = %5, %bb.a
  %.118 = phi i32 [ %7, %5 ], [ %1, %bb.a ]       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.08.i.i26 = phi i32 [ 1, %bb.i ], [ %i.aw, %bb.j ] ; 2 uses
  %i.av = call fastcc i32 @c_valid_civil_p(i32 noundef %0, i32 noundef 1, i32 noundef %.08.i.i26, double noundef %2, ptr noundef %i.e, ptr noundef %i.f, ptr noundef nonnull %3, ptr noundef nonnull %i.g)
  %.not.i.i27 = icmp ne i32 %i.av, 0
  %i.aw = add nuw nsw i32 %.08.i.i26, 1           ; 2 uses
  %exitcond.not.i.i28 = icmp eq i32 %i.aw, 31
  %or.cond.i29 = select i1 %.not.i.i27, i1 true, i1 %exitcond.not.i.i28
  br i1 %or.cond.i29, label %c_ordinal_to_jd.exit, label %bb.j, !llvm.loop !77

c_ordinal_to_jd.exit:                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  %i.ax = add nsw i32 %.118, -1
  %i.ay = load i32, ptr %3, align 4, !tbaa !6
  %i.az = add nsw i32 %i.ax, %i.ay                ; 2 uses
  store i32 %i.az, ptr %3, align 4, !tbaa !6
  %i.ba = sitofp i32 %i.az to double
  %i.bb = fcmp ule double %2, %i.ba
  %i.bc = zext i1 %i.bb to i32
  store i32 %i.bc, ptr %4, align 4, !tbaa !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  %i.bd = load i32, ptr %3, align 4, !tbaa !6     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.be = sitofp i32 %i.bd to double              ; 3 uses
  %i.bf = fcmp ogt double %2, %i.be
  br i1 %i.bf, label %c_jd_to_civil.exit.i30, label %bb.k

bb.k:                                             ; preds = %c_ordinal_to_jd.exit
  %i.bg = fadd double %i.be, f0xC13C7DD040000000
  %i.bh = fdiv double %i.bg, f0x40E1D58800000000
  %i.bi = tail call double @llvm.floor.f64(double %i.bh) ; 2 uses
  %i.bj = add nsw i32 %i.bd, 1
  %i.bk = sitofp i32 %i.bj to double
  %i.bl = fadd double %i.bi, %i.bk
  %i.bm = fmul nnan double %i.bi, 2.500000e-01
  %i.bn = tail call double @llvm.floor.f64(double %i.bm)
  %i.bo = fsub double %i.bl, %i.bn
  br label %c_jd_to_civil.exit.i30

c_jd_to_civil.exit.i30:                           ; preds = %bb.k, %c_ordinal_to_jd.exit
  %.0.i.i31 = phi double [ %i.bo, %bb.k ], [ %i.be, %c_ordinal_to_jd.exit ]
  %i.bp = fadd double %.0.i.i31, 1.524000e+03     ; 2 uses
  %i.bq = fadd double %i.bp, -1.221000e+02
  %i.br = fdiv double %i.bq, 3.652500e+02
  %i.bs = tail call double @llvm.floor.f64(double %i.br) ; 2 uses
  %i.bt = fmul double %i.bs, 3.652500e+02
  %i.bu = tail call double @llvm.floor.f64(double %i.bt)
  %i.bv = fsub double %i.bp, %i.bu
  %i.bw = fdiv double %i.bv, 3.060010e+01
  %i.bx = tail call double @llvm.floor.f64(double %i.bw)
  %i.by = fcmp ugt double %i.bx, 1.300000e+01
  %.026.v.i.i32 = select i1 %i.by, double -4.715000e+03, double -4.716000e+03
  %.026.i.i33 = fadd double %i.bs, %.026.v.i.i32
  %i.bz = fptosi double %.026.i.i33 to i32        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %c_jd_to_civil.exit.i30
  %.08.i.i34 = phi i32 [ 1, %c_jd_to_civil.exit.i30 ], [ %i.cb, %bb.l ] ; 2 uses
  %i.ca = call fastcc i32 @c_valid_civil_p(i32 noundef %i.bz, i32 noundef 1, i32 noundef %.08.i.i34, double noundef %2, ptr noundef %i.a, ptr noundef %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %.not.i.i35 = icmp ne i32 %i.ca, 0
  %i.cb = add nuw nsw i32 %.08.i.i34, 1           ; 2 uses
  %exitcond.not.i.i36 = icmp eq i32 %i.cb, 31
  %or.cond.i37 = select i1 %.not.i.i35, i1 true, i1 %exitcond.not.i.i36
  br i1 %or.cond.i37, label %c_jd_to_ordinal.exit38, label %bb.l, !llvm.loop !77

c_jd_to_ordinal.exit38:                           ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.cc = load i32, ptr %i.c, align 4, !tbaa !6
  %i.cd = add i32 %i.bd, 1
  %i.ce = sub i32 %i.cd, %i.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %.not22 = icmp eq i32 %0, %i.bz
  %.not23 = icmp eq i32 %i.ce, %.118
  %or.cond = select i1 %.not22, i1 %.not23, i1 false
  %spec.select25 = zext i1 %or.cond to i32
  br label %bb.m

.critedge:                                        ; preds = %.thread, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #19
  br label %bb.m

bb.m:                                             ; preds = %c_jd_to_ordinal.exit38, %.critedge
  %.1 = phi i32 [ 0, %.critedge ], [ %spec.select25, %c_jd_to_ordinal.exit38 ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc void @decode_jd(i64 noundef %0, ptr noundef nonnull writeonly captures(none) %1, ptr noundef nonnull writeonly captures(none) %2) unnamed_addr #0 {
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
  %i.b = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %0, i64 noundef %.lcssa.i, i32 noundef 1, i64 noundef 426895435) #19 ; 10 uses
  store i64 %i.b, ptr %1, align 8, !tbaa !10
  %i.c = icmp eq i64 %i.b, 0
  %i.d = and i64 %i.b, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %rb_type.exit.i

bb.b:                                             ; preds = %rbimpl_intern_const.exit
  %i.g = tail call i64 @llvm.fshl.i64(i64 %i.b, i64 %i.b, i64 62)
  switch i64 %i.g, label %bb.c [
    i64 0, label %f_zero_p.exit
    i64 1, label %f_zero_p.exit
    i64 5, label %f_zero_p.exit
    i64 9, label %f_zero_p.exit
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = trunc i64 %i.b to i1
  br i1 %i.h, label %rb_type.exit.thread8.i, label %f_zero_p.exit

rb_type.exit.i:                                   ; preds = %rbimpl_intern_const.exit
  %i.i = inttoptr i64 %i.b to ptr
  %i.j = load i64, ptr %i.i, align 8, !tbaa !26
  %i.k = trunc i64 %i.j to i32
  %i.l = and i32 %i.k, 31
  switch i32 %i.l, label %f_zero_p.exit [
    i32 21, label %rb_type.exit.thread8.i
    i32 10, label %f_zero_p.exit.thread
    i32 15, label %bb.d
  ]

rb_type.exit.thread8.i:                           ; preds = %rb_type.exit.i, %bb.c
  %i.m = icmp ult i64 %i.b, 2
  br i1 %i.m, label %f_zero_p.exit.thread11, label %f_zero_p.exit.thread

bb.d:                                             ; preds = %rb_type.exit.i
  %i.n = tail call i64 @rb_rational_num(i64 noundef %i.b) #22
  %or.cond = icmp eq i64 %i.n, 1
  br i1 %or.cond, label %f_zero_p.exit.thread11, label %f_zero_p.exit.thread

f_zero_p.exit:                                    ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.c, %rb_type.exit.i
  %i.o = load i64, ptr @id_eqeq_p, align 8, !tbaa !10
  %i.p = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.b, i64 noundef %i.o, i32 noundef 1, i64 noundef 1) #19
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %f_zero_p.exit.thread, label %f_zero_p.exit.thread11

f_zero_p.exit.thread:                             ; preds = %bb.d, %rb_type.exit.i, %rb_type.exit.thread8.i, %f_zero_p.exit
  %i.q = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %0, i64 noundef 37, i32 noundef 1, i64 noundef 426895435) #19
  br label %f_zero_p.exit.thread11

f_zero_p.exit.thread11:                           ; preds = %f_zero_p.exit, %rb_type.exit.thread8.i, %bb.d, %f_zero_p.exit.thread
  %.sink = phi i64 [ %i.q, %f_zero_p.exit.thread ], [ %0, %bb.d ], [ %0, %rb_type.exit.thread8.i ], [ %0, %f_zero_p.exit ]
  %i.r = tail call i64 @rb_fix2int(i64 noundef %.sink) #19
  %storemerge = trunc i64 %i.r to i32
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
  %i.e = tail call i64 @llvm.fshl.i64(i64 %0, i64 %0, i64 62)
  switch i64 %i.e, label %bb.c [
    i64 0, label %rb_type.exit.thread
    i64 1, label %rb_type.exit.thread
    i64 5, label %rb_type.exit.thread
    i64 9, label %rb_type.exit.thread
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = trunc i64 %0 to i1
  br i1 %i.f, label %rb_type.exit.thread8, label %rb_type.exit.thread

rb_type.exit:                                     ; preds = %bb.a
  %i.g = inttoptr i64 %0 to ptr
  %i.h = load i64, ptr %i.g, align 8, !tbaa !26
  %i.i = trunc i64 %i.h to i32
  %i.j = and i32 %i.i, 31
  switch i32 %i.j, label %rb_type.exit.thread [
    i32 21, label %rb_type.exit.thread8
    i32 10, label %bb.f
    i32 15, label %bb.d
  ]

rb_type.exit.thread8:                             ; preds = %bb.c, %rb_type.exit
  %i.k = icmp ult i64 %0, 2
  %i.l = select i1 %i.k, i64 20, i64 0
  br label %bb.f

bb.d:                                             ; preds = %rb_type.exit
  %i.m = tail call i64 @rb_rational_num(i64 noundef %0) #22 ; 2 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = icmp ult i64 %i.m, 2
  %i.p = select i1 %i.o, i64 20, i64 0
  br label %bb.f

rb_type.exit.thread:                              ; preds = %bb.c, %bb.b, %bb.b, %bb.b, %bb.b, %rb_type.exit
  %i.q = load i64, ptr @id_eqeq_p, align 8, !tbaa !10
  %i.r = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %0, i64 noundef %i.q, i32 noundef 1, i64 noundef 1) #19
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %rb_type.exit, %rb_type.exit.thread, %rb_type.exit.thread8
  %.0 = phi i64 [ %i.r, %rb_type.exit.thread ], [ %i.l, %rb_type.exit.thread8 ], [ 0, %rb_type.exit ], [ 0, %bb.d ], [ %i.p, %bb.e ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @decode_year(i64 noundef %0, double noundef %1, ptr noundef nonnull writeonly captures(none) %2, ptr noundef nonnull writeonly captures(none) %3) unnamed_addr #0 {
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

.critedge:                                        ; preds = %bb.b, %bb.a
  %i.v = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %0, i64 noundef 43, i32 noundef 1, i64 noundef 9425) #19 ; 5 uses
  %.pr.i = load i64, ptr @decode_year.rbimpl_id, align 8, !tbaa !10 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %.critedge, %.lr.ph.i
  %i.w = tail call i64 @rb_intern2(ptr noundef nonnull @.str.161, i64 noundef 3) #19 ; 3 uses
  store i64 %i.w, ptr @decode_year.rbimpl_id, align 8, !tbaa !10
  %.not.i = icmp eq i64 %i.w, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !52

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %.critedge
  %.lcssa.i = phi i64 [ %.pr.i, %.critedge ], [ %i.w, %.lr.ph.i ]
  %i.x = shl nuw nsw i32 %i.b, 1
  %i.y = or disjoint i32 %i.x, 1
  %i.z = zext nneg i32 %i.y to i64                ; 2 uses
  %i.aa = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.v, i64 noundef %.lcssa.i, i32 noundef 1, i64 noundef %i.z) #19 ; 10 uses
  store i64 %i.aa, ptr %2, align 8, !tbaa !10
  %i.ab = icmp eq i64 %i.aa, 0
  %i.ac = and i64 %i.aa, 7
  %i.ad = icmp ne i64 %i.ac, 0
  %i.ae = or i1 %i.ab, %i.ad
end_hunk_0
