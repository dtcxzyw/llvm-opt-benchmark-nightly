Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btGeneric6DofConstraint?download=true
inline.NumInlined: 495
inline.NumDeleted: 82
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN23btGeneric6DofConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_S8_S8_:bb.a
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !14
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 956 ; 2 uses
  %i.af = load float, ptr %i.ae, align 4, !tbaa !42
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 2 uses
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !43
  %i.ai = tail call noundef float @_Z21btAdjustAngleToLimitsfff(float noundef %i.ad, float noundef %i.af, float noundef %i.ah) ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1008
  store float %i.ai, ptr %i.aj, align 8, !tbaa !64
  %i.ak = load float, ptr %i.ae, align 4, !tbaa !42 ; 3 uses
  %i.al = load float, ptr %i.ag, align 8, !tbaa !43 ; 3 uses
  %i.am = fcmp ogt float %i.ak, %i.al
  br i1 %i.am, label %bb.y, label %bb.n

bb.n:                                             ; preds = %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit
  %i.an = fcmp olt float %i.ai, %i.ak
  br i1 %i.an, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = fcmp ogt float %i.ai, %i.al
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1012 ; 2 uses
  br i1 %i.ao, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.ap, align 4, !tbaa !22
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.1

bb.q:                                             ; preds = %bb.o
  store i32 2, ptr %i.ap, align 4, !tbaa !22
  %i.aq = fsub float %i.ai, %i.al                 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1004 ; 3 uses
  store float %i.aq, ptr %i.ar, align 4, !tbaa !23
  %i.as = fcmp ogt float %i.aq, f0x40490FDB
  br i1 %i.as, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.at = fcmp olt float %i.aq, f0xC0490FDB
  br i1 %i.at, label %bb.s, label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.1

bb.s:                                             ; preds = %bb.r
  %i.au = fadd float %i.aq, f0x40C90FDB
  store float %i.au, ptr %i.ar, align 4, !tbaa !23
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.1

bb.t:                                             ; preds = %bb.q
  %i.av = fadd float %i.aq, f0xC0C90FDB
  store float %i.av, ptr %i.ar, align 4, !tbaa !23
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.1

bb.u:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1012
  store i32 1, ptr %i.aw, align 4, !tbaa !22
  %i.ax = fsub float %i.ai, %i.ak                 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1004 ; 3 uses
  store float %i.ax, ptr %i.ay, align 4, !tbaa !23
  %i.az = fcmp ogt float %i.ax, f0x40490FDB
  br i1 %i.az, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ba = fcmp olt float %i.ax, f0xC0490FDB
  br i1 %i.ba, label %bb.w, label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.1

bb.w:                                             ; preds = %bb.v
  %i.bb = fadd float %i.ax, f0x40C90FDB
  store float %i.bb, ptr %i.ay, align 4, !tbaa !23
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.1

bb.x:                                             ; preds = %bb.u
  %i.bc = fadd float %i.ax, f0xC0C90FDB
  store float %i.bc, ptr %i.ay, align 4, !tbaa !23
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.1

bb.y:                                             ; preds = %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1012
  store i32 0, ptr %i.bd, align 4, !tbaa !22
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.1

_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.1: ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %bb.t, %bb.s, %bb.r, %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.bf = load float, ptr %i.be, align 8, !tbaa !14
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1020 ; 2 uses
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !42
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.bj = load float, ptr %i.bi, align 8, !tbaa !43
  %i.bk = tail call noundef float @_Z21btAdjustAngleToLimitsfff(float noundef %i.bf, float noundef %i.bh, float noundef %i.bj) ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store float %i.bk, ptr %i.bl, align 8, !tbaa !64
  %i.bm = load float, ptr %i.bg, align 4, !tbaa !42 ; 3 uses
  %i.bn = load float, ptr %i.bi, align 8, !tbaa !43 ; 3 uses
  %i.bo = fcmp ogt float %i.bm, %i.bn
  br i1 %i.bo, label %bb.ak, label %bb.z

bb.z:                                             ; preds = %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.1
  %i.bp = fcmp olt float %i.bk, %i.bm
  br i1 %i.bp, label %bb.ag, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bq = fcmp ogt float %i.bk, %i.bn
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1076 ; 2 uses
  br i1 %i.bq, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.br, align 4, !tbaa !22
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.2

bb.ac:                                            ; preds = %bb.aa
  store i32 2, ptr %i.br, align 4, !tbaa !22
  %i.bs = fsub float %i.bk, %i.bn                 ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1068 ; 3 uses
  store float %i.bs, ptr %i.bt, align 4, !tbaa !23
  %i.bu = fcmp ogt float %i.bs, f0x40490FDB
  br i1 %i.bu, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bv = fcmp olt float %i.bs, f0xC0490FDB
  br i1 %i.bv, label %bb.ae, label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.2

bb.ae:                                            ; preds = %bb.ad
  %i.bw = fadd float %i.bs, f0x40C90FDB
  store float %i.bw, ptr %i.bt, align 4, !tbaa !23
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.2

bb.af:                                            ; preds = %bb.ac
  %i.bx = fadd float %i.bs, f0xC0C90FDB
  store float %i.bx, ptr %i.bt, align 4, !tbaa !23
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.2

bb.ag:                                            ; preds = %bb.z
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1076
  store i32 1, ptr %i.by, align 4, !tbaa !22
  %i.bz = fsub float %i.bk, %i.bm                 ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 1068 ; 3 uses
  store float %i.bz, ptr %i.ca, align 4, !tbaa !23
  %i.cb = fcmp ogt float %i.bz, f0x40490FDB
  br i1 %i.cb, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cc = fcmp olt float %i.bz, f0xC0490FDB
  br i1 %i.cc, label %bb.ai, label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.2

bb.ai:                                            ; preds = %bb.ah
  %i.cd = fadd float %i.bz, f0x40C90FDB
  store float %i.cd, ptr %i.ca, align 4, !tbaa !23
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.2

bb.aj:                                            ; preds = %bb.ag
  %i.ce = fadd float %i.bz, f0xC0C90FDB
  store float %i.ce, ptr %i.ca, align 4, !tbaa !23
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.2

bb.ak:                                            ; preds = %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.1
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1076
  store i32 0, ptr %i.cf, align 4, !tbaa !22
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.2

_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.2: ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.af, %bb.ae, %bb.ad, %bb.ab
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1325
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !35, !range !44, !noundef !39
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.2
  %i.cj = tail call noundef i32 @_ZN23btGeneric6DofConstraint16setAngularLimitsEPN17btTypedConstraint17btConstraintInfo2EiRK11btTransformS5_RK9btVector3S8_S8_S8_(ptr noundef nonnull align 8 dereferenceable(1333) %0, ptr noundef %1, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %7)
  %i.ck = tail call noundef i32 @_ZN23btGeneric6DofConstraint15setLinearLimitsEPN17btTypedConstraint17btConstraintInfo2EiRK11btTransformS5_RK9btVector3S8_S8_S8_(ptr noundef nonnull align 8 dereferenceable(1333) %0, ptr noundef %1, i32 noundef %i.cj, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %7) ; 0 uses
  br label %bb.an

bb.am:                                            ; preds = %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.2
  %i.cl = tail call noundef i32 @_ZN23btGeneric6DofConstraint15setLinearLimitsEPN17btTypedConstraint17btConstraintInfo2EiRK11btTransformS5_RK9btVector3S8_S8_S8_(ptr noundef nonnull align 8 dereferenceable(1333) %0, ptr noundef %1, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %7)
  %i.cm = tail call noundef i32 @_ZN23btGeneric6DofConstraint16setAngularLimitsEPN17btTypedConstraint17btConstraintInfo2EiRK11btTransformS5_RK9btVector3S8_S8_S8_(ptr noundef nonnull align 8 dereferenceable(1333) %0, ptr noundef %1, i32 noundef %i.cl, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %7) ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN23btGeneric6DofConstraint21get_limit_motor_info2EP22btRotationalLimitMotorRK11btTransformS4_RK9btVector3S7_S7_S7_PN17btTypedConstraint17btConstraintInfo2EiRS5_ii(ptr noundef nonnull align 8 dereferenceable(1333) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %7, ptr nofree noundef readonly captures(none) %8, i32 noundef %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %10, i32 noundef %11, i32 noundef %12) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i8, ptr %i.a, align 4, !tbaa !24, !range !44, !noundef !39
  %i.c = trunc nuw i8 %i.b to i1                  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load i32, ptr %i.d, align 4, !tbaa !22   ; 2 uses
  %i.f = icmp ne i32 %i.e, 0                      ; 2 uses
  %or.cond = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.b, label %.thread368

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.h = load i32, ptr %i.g, align 8, !tbaa !129
  %i.i = mul i32 %i.h, %9                         ; 3 uses
  %.not189 = icmp eq i32 %11, 0                   ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.in = select i1 %.not189, ptr %i.k, ptr %i.j
  %i.l = load ptr, ptr %.in, align 8, !tbaa !130  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.in190 = select i1 %.not189, ptr %i.n, ptr %i.m
  %i.o = load ptr, ptr %.in190, align 8, !tbaa !130 ; 3 uses
  %i.p = load float, ptr %10, align 4, !tbaa !14
  %i.q = sext i32 %i.i to i64                     ; 19 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.q
  store float %i.p, ptr %i.r, align 4, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 6 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !14
  %i.u = add nsw i32 %i.i, 1
  %i.v = sext i32 %i.u to i64                     ; 3 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.v
  store float %i.t, ptr %i.w, align 4, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 6 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !14
  %i.z = add nsw i32 %i.i, 2
  %i.aa = sext i32 %i.z to i64                    ; 3 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.aa
  store float %i.y, ptr %i.ab, align 4, !tbaa !14
  %i.ac = load float, ptr %10, align 4, !tbaa !14
  %i.ad = fneg float %i.ac
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.q
  store float %i.ad, ptr %i.ae, align 4, !tbaa !14
  %i.af = load float, ptr %i.s, align 4, !tbaa !14
  %i.ag = fneg float %i.af
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.v
  store float %i.ag, ptr %i.ah, align 4, !tbaa !14
  %i.ai = load float, ptr %i.x, align 4, !tbaa !14
  %i.aj = fneg float %i.ai
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.aa
  store float %i.aj, ptr %i.ak, align 4, !tbaa !14
  br i1 %.not189, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1325
  %i.am = load i8, ptr %i.al, align 1, !tbaa !35, !range !44, !noundef !39
  %i.an = trunc nuw i8 %i.am to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1204
  %i.aq = load <2 x float>, ptr %i.ao, align 8, !tbaa !14 ; 3 uses
  %i.ar = load <2 x float>, ptr %i.ap, align 4, !tbaa !14 ; 3 uses
  %i.as = load float, ptr %i.s, align 4, !tbaa !14 ; 3 uses
  br i1 %i.an, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.av = load float, ptr %i.au, align 4, !tbaa !14
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.az = load <2 x float>, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !14
  %i.bc = load <2 x float>, ptr %i.at, align 4, !tbaa !14 ; 2 uses
  %i.bd = load <2 x float>, ptr %i.aw, align 8, !tbaa !14 ; 2 uses
  %i.be = load <2 x float>, ptr %i.ax, align 4, !tbaa !14 ; 2 uses
  %i.bf = shufflevector <2 x float> %i.bd, <2 x float> %i.aq, <2 x i32> <i32 0, i32 2>
  %i.bg = shufflevector <2 x float> %i.be, <2 x float> %i.bc, <2 x i32> <i32 0, i32 2>
  %i.bh = fsub <2 x float> %i.bf, %i.bg           ; 3 uses
  %i.bi = shufflevector <2 x float> %i.bd, <2 x float> %i.aq, <2 x i32> <i32 1, i32 3>
  %i.bj = shufflevector <2 x float> %i.be, <2 x float> %i.bc, <2 x i32> <i32 1, i32 3>
  %i.bk = fsub <2 x float> %i.bi, %i.bj           ; 3 uses
  %i.bl = shufflevector <2 x float> %i.az, <2 x float> %i.ar, <2 x i32> <i32 0, i32 3>
  %i.bm = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.bn = insertelement <2 x float> %i.bm, float %i.av, i64 1
  %i.bo = fsub <2 x float> %i.bl, %i.bn           ; 4 uses
  %i.bp = insertelement <2 x float> poison, float %i.as, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.br = fmul <2 x float> %i.bq, %i.bk
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !64
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !23
  %i.bw = fsub float %i.bt, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1296
  %i.by = load <2 x float>, ptr %10, align 4, !tbaa !14 ; 3 uses
  %i.bz = load float, ptr %i.x, align 4, !tbaa !14
  %i.ca = load <2 x float>, ptr %i.s, align 4, !tbaa !14 ; 6 uses
  %i.cb = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.cc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bh, <2 x float> %i.cb, <2 x float> %i.br)
  %i.cd = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ce = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bo, <2 x float> %i.cd, <2 x float> %i.cc) ; 3 uses
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cg = fmul <2 x float> %i.ca, %i.cf           ; 3 uses
  %i.ch = fmul <2 x float> %i.cb, %i.ce           ; 3 uses
  %i.ci = shufflevector <2 x float> %i.bk, <2 x float> %i.bo, <2 x i32> <i32 1, i32 3>
  %i.cj = fsub <2 x float> %i.ci, %i.cg
  %i.ck = shufflevector <2 x float> %i.bo, <2 x float> %i.bh, <2 x i32> <i32 1, i32 3>
  %i.cl = shufflevector <2 x float> %i.ch, <2 x float> %i.cg, <2 x i32> <i32 3, i32 1> ; 2 uses
  %i.cm = fsub <2 x float> %i.ck, %i.cl
  %i.cn = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer
  %i.co = fmul <2 x float> %i.ca, %i.cn           ; 3 uses
  %i.cp = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cr = fmul <2 x float> %i.ca, %i.cq
  %i.cs = shufflevector <2 x float> %i.ca, <2 x float> %i.by, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ct = fmul <2 x float> %i.cs, %i.cq
  %i.cu = fadd <2 x float> %i.co, %i.cr
  %i.cv = shufflevector <2 x float> %i.co, <2 x float> %i.ch, <2 x i32> <i32 1, i32 2>
  %i.cw = fadd <2 x float> %i.cv, %i.ct
  %i.cx = fsub <2 x float> %i.cu, %i.cg           ; 2 uses
  %i.cy = fsub <2 x float> %i.cw, %i.cl           ; 2 uses
  %i.cz = fneg <2 x float> %i.ca                  ; 2 uses
  %i.da = extractelement <2 x float> %i.by, i64 0
  %foldExtExtBinop = fsub <2 x float> %i.bh, %i.ch
  %i.db = shufflevector <2 x float> %i.bk, <2 x float> %i.bo, <2 x i32> <i32 0, i32 2>
  %i.dc = fsub <2 x float> %i.db, %i.co
  %i.dd = insertelement <2 x float> %i.cb, float %i.bz, i64 0
  %i.de = fneg float %i.da
  %i.df = load <2 x float>, ptr %i.bx, align 8, !tbaa !14 ; 4 uses
  %i.dg = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.dh = fmul <2 x float> %i.dg, %i.cx
  %i.di = fmul <2 x float> %i.dg, %i.cy
  %i.dj = fsub <2 x float> %i.cj, %i.dh           ; 2 uses
  %i.dk = fsub <2 x float> %i.cm, %i.di           ; 2 uses
  %shift = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop423 = fmul <2 x float> %i.df, %shift
  %i.dl = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dm = fmul <2 x float> %i.dl, %i.cx
  %foldExtExtBinop425 = fadd <2 x float> %foldExtExtBinop, %foldExtExtBinop423 ; 2 uses
  %i.dn = fadd <2 x float> %i.dc, %i.dm           ; 3 uses
  %i.do = shufflevector <2 x float> %i.dn, <2 x float> %foldExtExtBinop425, <2 x i32> <i32 1, i32 2>
  %i.dp = fmul <2 x float> %i.do, %i.cz
  %i.dq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dn, <2 x float> %i.dd, <2 x float> %i.dp) ; 2 uses
  %i.dr = shufflevector <2 x float> %i.dn, <2 x float> %i.dj, <2 x i32> <i32 0, i32 2>
  %i.ds = insertelement <2 x float> poison, float %i.de, i64 0
  %i.dt = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> zeroinitializer
  %i.du = fmul <2 x float> %i.dr, %i.dt
  %i.dv = shufflevector <2 x float> %foldExtExtBinop425, <2 x float> %i.dk, <2 x i32> <i32 0, i32 3>
  %i.dw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dv, <2 x float> %i.bq, <2 x float> %i.du) ; 3 uses
  %i.dx = insertelement <2 x float> %i.dw, float 0.000000e+00, i64 1
  %i.dy = fmul <2 x float> %i.dk, %i.cz
  %i.dz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dj, <2 x float> %i.cs, <2 x float> %i.dy) ; 2 uses
  %i.ea = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.dw, <2 x i32> <i32 3, i32 1>
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 1304
  %i.ec = load i8, ptr %i.eb, align 8, !tbaa !61, !range !44, !noundef !39
  %i.ed = trunc nuw i8 %i.ec to i1
  %i.ee = icmp eq i32 %12, 0
  %or.cond3.not = and i1 %i.ee, %i.ed
  br i1 %or.cond3.not, label %bb.e, label %.preheader

bb.e:                                             ; preds = %bb.d
  %i.ef = fmul <2 x float> %i.dl, %i.dq
  %i.eg = fmul <2 x float> %i.df, %i.dw           ; 2 uses
  %i.eh = insertelement <2 x float> %i.eg, float 0.000000e+00, i64 1
  %i.ei = fmul <2 x float> %i.dg, %i.dz
  %i.ej = shufflevector <2 x float> %i.eg, <2 x float> <float poison, float 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  br label %.preheader

.preheader:                                       ; preds = %bb.e, %bb.d
  %.sroa.8.0 = phi <2 x float> [ %i.eh, %bb.e ], [ %i.dx, %bb.d ]
  %.sroa.0382.0 = phi <2 x float> [ %i.ef, %bb.e ], [ %i.dq, %bb.d ]
  %.sroa.9.0 = phi <2 x float> [ %i.ej, %bb.e ], [ %i.ea, %bb.d ]
  %.sroa.0.0 = phi <2 x float> [ %i.ei, %bb.e ], [ %i.dz, %bb.d ]
  %i.ek = load ptr, ptr %i.j, align 8, !tbaa !131
  %i.el = shl nsw i64 %i.q, 2
  %scevgep = getelementptr i8, ptr %i.ek, i64 %i.el ; 2 uses
  store <2 x float> %.sroa.0382.0, ptr %scevgep, align 4, !tbaa !14
  %.sroa.8.0.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 8
  %.sroa.8.0.vec.extract = extractelement <2 x float> %.sroa.8.0, i64 0
  store float %.sroa.8.0.vec.extract, ptr %.sroa.8.0.scevgep.sroa_idx, align 4, !tbaa !14
  %i.em = load ptr, ptr %i.m, align 8, !tbaa !132 ; 2 uses
  %i.en = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.q
  %i.eo = fneg <2 x float> %.sroa.0.0
  store <2 x float> %i.eo, ptr %i.en, align 4, !tbaa !14
  %.sroa.9.8.vec.extract381 = extractelement <2 x float> %.sroa.9.0, i64 0
  %i.ep = fneg float %.sroa.9.8.vec.extract381
  %i.eq = getelementptr [4 x i8], ptr %i.em, i64 %i.q
  %i.er = getelementptr i8, ptr %i.eq, i64 8
  store float %i.ep, ptr %i.er, align 4, !tbaa !14
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.eu = load float, ptr %i.et, align 4, !tbaa !14
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.ew = load float, ptr %i.x, align 4, !tbaa !14 ; 2 uses
  %i.ex = load float, ptr %10, align 4, !tbaa !14 ; 2 uses
  %i.ey = fneg float %i.ex
  %i.ez = load ptr, ptr %i.j, align 8, !tbaa !131 ; 2 uses
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %i.q
  %i.fb = load <2 x float>, ptr %i.ev, align 4, !tbaa !14 ; 2 uses
  %i.fc = fsub <2 x float> %i.ar, %i.fb           ; 2 uses
  %i.fd = shufflevector <2 x float> %i.ar, <2 x float> %i.aq, <2 x i32> <i32 1, i32 2>
  %i.fe = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ff = insertelement <2 x float> %i.fe, float %i.eu, i64 1
  %i.fg = fsub <2 x float> %i.fd, %i.ff           ; 2 uses
  %i.fh = insertelement <2 x float> poison, float %i.as, i64 0
  %i.fi = insertelement <2 x float> %i.fh, float %i.ew, i64 1
  %i.fj = fneg <2 x float> %i.fi
  %i.fk = fmul <2 x float> %i.fg, %i.fj
  %i.fl = insertelement <2 x float> poison, float %i.ew, i64 0
  %i.fm = insertelement <2 x float> %i.fl, float %i.ex, i64 1
  %i.fn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fc, <2 x float> %i.fm, <2 x float> %i.fk)
  %i.fo = extractelement <2 x float> %i.fc, i64 0
  %i.fp = fmul float %i.fo, %i.ey
  %i.fq = extractelement <2 x float> %i.fg, i64 1
  %i.fr = tail call float @llvm.fmuladd.f32(float %i.fq, float %i.as, float %i.fp)
  store <2 x float> %i.fn, ptr %i.fa, align 4, !tbaa !14
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %i.aa
  store float %i.fr, ptr %i.fs, align 4, !tbaa !14
  %i.ft = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.fu = load float, ptr %i.es, align 8, !tbaa !14
  %i.fv = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !14
  %i.fx = load float, ptr %i.x, align 4, !tbaa !14 ; 2 uses
  %i.fy = load <2 x float>, ptr %i.ao, align 8, !tbaa !14 ; 2 uses
  %i.fz = load <2 x float>, ptr %i.ft, align 4, !tbaa !14 ; 2 uses
  %i.ga = fsub <2 x float> %i.fy, %i.fz           ; 2 uses
  %i.gb = shufflevector <2 x float> %i.fy, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gc = insertelement <2 x float> %i.gb, float %i.fu, i64 0
  %i.gd = shufflevector <2 x float> %i.fz, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ge = insertelement <2 x float> %i.gd, float %i.fw, i64 0
  %i.gf = fsub <2 x float> %i.gc, %i.ge           ; 2 uses
  %i.gg = load float, ptr %i.s, align 4, !tbaa !14
  %i.gh = load <2 x float>, ptr %10, align 4, !tbaa !14 ; 2 uses
  %i.gi = fneg float %i.gg
  %i.gj = extractelement <2 x float> %i.gf, i64 0
  %i.gk = fmul float %i.gj, %i.gi
  %i.gl = extractelement <2 x float> %i.ga, i64 1
  %i.gm = tail call float @llvm.fmuladd.f32(float %i.gl, float %i.fx, float %i.gk)
  %i.gn = shufflevector <2 x float> %i.gh, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.go = insertelement <2 x float> %i.gn, float %i.fx, i64 0
  %i.gp = fneg <2 x float> %i.go
  %i.gq = fmul <2 x float> %i.ga, %i.gp
  %i.gr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gf, <2 x float> %i.gh, <2 x float> %i.gq)
  %i.gs = fneg float %i.gm
  %i.gt = load ptr, ptr %i.m, align 8, !tbaa !132 ; 2 uses
  %i.gu = getelementptr inbounds [4 x i8], ptr %i.gt, i64 %i.q
  store float %i.gs, ptr %i.gu, align 4, !tbaa !14
  %i.gv = getelementptr inbounds [4 x i8], ptr %i.gt, i64 %i.v
  %i.gw = fneg <2 x float> %i.gr
  store <2 x float> %i.gw, ptr %i.gv, align 4, !tbaa !14
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %bb.f, %bb.b
  br i1 %i.f, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.gx = load float, ptr %1, align 4, !tbaa !42
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !43
  %i.ha = fcmp une float %i.gx, %i.gz
  %i.hb = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !133
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.hc, i64 %i.q ; 7 uses
  store float 0.000000e+00, ptr %i.hd, align 4, !tbaa !14
  %i.he = and i1 %i.ha, %i.c
  br i1 %i.he, label %bb.i, label %.critedge

.thread:                                          ; preds = %bb.g
  %i.hf = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !133
  %i.hh = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.q
  store float 0.000000e+00, ptr %i.hh, align 4, !tbaa !14
  br i1 %i.c, label %bb.j, label %.thread368

bb.i:                                             ; preds = %bb.h
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !71
  %i.hk = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !70
  %i.hm = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %i.q
  store float %i.hj, ptr %i.hm, align 4, !tbaa !14
  br label %.critedge

bb.j:                                             ; preds = %.thread
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !71
  %i.hp = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !70
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.hq, i64 %i.q
  store float %i.ho, ptr %i.hr, align 4, !tbaa !14
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !45 ; 2 uses
  %i.hu = fneg float %i.ht
  %i.hv = select i1 %.not189, float %i.hu, float %i.ht
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !64
  %i.hy = load float, ptr %1, align 4, !tbaa !42
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !43
  %i.ib = load float, ptr %8, align 8, !tbaa !134
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.id = load float, ptr %i.ic, align 4, !tbaa !46
  %i.ie = fmul float %i.ib, %i.id
  %i.if = tail call noundef float @_ZN17btTypedConstraint14getMotorFactorEfffff(ptr noundef nonnull align 8 dereferenceable(72) %0, float noundef %i.hx, float noundef %i.hy, float noundef %i.ia, float noundef %i.hv, float noundef %i.ie)
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !45
  %i.ii = load ptr, ptr %i.hf, align 8, !tbaa !133
  %i.ij = getelementptr inbounds [4 x i8], ptr %i.ii, i64 %i.q ; 2 uses
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !14
  %i.il = tail call float @llvm.fmuladd.f32(float %i.if, float %i.ih, float %i.ik)
  store float %i.il, ptr %i.ij, align 4, !tbaa !14
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.in = load float, ptr %i.im, align 4, !tbaa !73
  %i.io = fneg float %i.in
  %i.ip = load float, ptr %8, align 8, !tbaa !134
  %i.iq = fdiv float %i.io, %i.ip
  %i.ir = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !135
  %i.it = getelementptr inbounds [4 x i8], ptr %i.is, i64 %i.q
  store float %i.iq, ptr %i.it, align 4, !tbaa !14
  %i.iu = load float, ptr %i.im, align 4, !tbaa !73
  %i.iv = load float, ptr %8, align 8, !tbaa !134
  %i.iw = fdiv float %i.iu, %i.iv
  %i.ix = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !136
  %i.iz = getelementptr inbounds [4 x i8], ptr %i.iy, i64 %i.q
  store float %i.iw, ptr %i.iz, align 4, !tbaa !14
  br label %.thread368

.critedge:                                        ; preds = %bb.h, %bb.i
  %i.ja = load float, ptr %8, align 8, !tbaa !134
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !46
  %i.jd = fmul float %i.ja, %i.jc                 ; 2 uses
  %i.je = fneg float %i.jd
  %.sink = select i1 %.not189, float %i.jd, float %i.je
  %i.jf = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !23
  %i.jh = load float, ptr %i.hd, align 4, !tbaa !14
  %i.ji = tail call float @llvm.fmuladd.f32(float %.sink, float %i.jg, float %i.jh)
  store float %i.ji, ptr %i.hd, align 4, !tbaa !14
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !72
  %i.jl = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !70
  %i.jn = getelementptr inbounds [4 x i8], ptr %i.jm, i64 %i.q
  store float %i.jk, ptr %i.jn, align 4, !tbaa !14
  %i.jo = load float, ptr %1, align 4, !tbaa !42
  %i.jp = load float, ptr %i.gy, align 4, !tbaa !43
  %i.jq = fcmp oeq float %i.jo, %i.jp
  %i.jr = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 2 uses
  br i1 %i.jq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.critedge
  %i.js = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !135
  %i.ju = getelementptr inbounds [4 x i8], ptr %i.jt, i64 %i.q
  store float f0xFF7FFFFF, ptr %i.ju, align 4, !tbaa !14
  %i.jv = load ptr, ptr %i.jr, align 8, !tbaa !136
  %i.jw = getelementptr inbounds [4 x i8], ptr %i.jv, i64 %i.q
  store float f0x7F7FFFFF, ptr %i.jw, align 4, !tbaa !14
  br label %.thread368

bb.l:                                             ; preds = %.critedge
  %i.jx = icmp eq i32 %i.e, 1                     ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !135
  %i.ka = getelementptr inbounds [4 x i8], ptr %i.jz, i64 %i.q
  %. = select i1 %i.jx, float 0.000000e+00, float f0xFF7FFFFF
  %.419 = select i1 %i.jx, float f0x7F7FFFFF, float 0.000000e+00
  store float %., ptr %i.ka, align 4, !tbaa !14
  %i.kb = load ptr, ptr %i.jr, align 8, !tbaa !136
  %i.kc = getelementptr inbounds [4 x i8], ptr %i.kb, i64 %i.q
  store float %.419, ptr %i.kc, align 4, !tbaa !14
  %i.kd = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ke = load float, ptr %i.kd, align 4, !tbaa !21 ; 3 uses
  %i.kf = fcmp ogt float %i.ke, 0.000000e+00
  br i1 %i.kf, label %bb.m, label %.thread368

bb.m:                                             ; preds = %bb.l
  %i.kg = load float, ptr %10, align 4, !tbaa !14 ; 2 uses
  %i.kh = load float, ptr %i.s, align 4, !tbaa !14 ; 2 uses
  %i.ki = load float, ptr %i.x, align 4, !tbaa !14 ; 2 uses
  %.420 = select i1 %.not189, ptr %4, ptr %6      ; 3 uses
  %.421 = select i1 %.not189, ptr %5, ptr %7      ; 3 uses
  %i.kj = load float, ptr %.420, align 4, !tbaa !14
  %i.kk = getelementptr inbounds nuw i8, ptr %.420, i64 4
  %i.kl = load float, ptr %i.kk, align 4, !tbaa !14
  %i.km = fmul float %i.kl, %i.kh
  %i.kn = tail call float @llvm.fmuladd.f32(float %i.kj, float %i.kg, float %i.km)
  %i.ko = getelementptr inbounds nuw i8, ptr %.420, i64 8
  %i.kp = load float, ptr %i.ko, align 4, !tbaa !14
  %i.kq = tail call noundef float @llvm.fmuladd.f32(float %i.kp, float %i.ki, float %i.kn)
  %i.kr = load float, ptr %.421, align 4, !tbaa !14
  %i.ks = getelementptr inbounds nuw i8, ptr %.421, i64 4
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !14
  %i.ku = fmul float %i.kh, %i.kt
  %i.kv = tail call float @llvm.fmuladd.f32(float %i.kr, float %i.kg, float %i.ku)
  %i.kw = getelementptr inbounds nuw i8, ptr %.421, i64 8
  %i.kx = load float, ptr %i.kw, align 4, !tbaa !14
  %i.ky = tail call noundef float @llvm.fmuladd.f32(float %i.kx, float %i.ki, float %i.kv)
  %i.kz = fsub float %i.kq, %i.ky                 ; 4 uses
  br i1 %i.jx, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.la = fcmp olt float %i.kz, 0.000000e+00
  br i1 %i.la, label %bb.o, label %.thread368

bb.o:                                             ; preds = %bb.n
  %i.lb = fneg float %i.ke
  %i.lc = fmul nnan float %i.kz, %i.lb            ; 2 uses
  %i.ld = load float, ptr %i.hd, align 4, !tbaa !14
  %i.le = fcmp ogt float %i.lc, %i.ld
  br i1 %i.le, label %bb.p, label %.thread368

bb.p:                                             ; preds = %bb.o
  store float %i.lc, ptr %i.hd, align 4, !tbaa !14
  br label %.thread368

bb.q:                                             ; preds = %bb.m
  %i.lf = fcmp ogt float %i.kz, 0.000000e+00
  br i1 %i.lf, label %bb.r, label %.thread368

bb.r:                                             ; preds = %bb.q
  %i.lg = fneg float %i.ke
  %i.lh = fmul nnan float %i.kz, %i.lg            ; 2 uses
  %i.li = load float, ptr %i.hd, align 4, !tbaa !14
  %i.lj = fcmp olt float %i.lh, %i.li
  br i1 %i.lj, label %bb.s, label %.thread368

bb.s:                                             ; preds = %bb.r
  store float %i.lh, ptr %i.hd, align 4, !tbaa !14
  br label %.thread368

.thread368:                                       ; preds = %bb.j, %.thread, %bb.a, %bb.n, %bb.q, %bb.p, %bb.o, %bb.s, %bb.r, %bb.l, %bb.k
  %.0183 = phi i32 [ 1, %bb.j ], [ 1, %bb.k ], [ 1, %bb.l ], [ 1, %bb.r ], [ 1, %bb.s ], [ 1, %bb.o ], [ 1, %bb.p ], [ 1, %bb.q ], [ 1, %bb.n ], [ 0, %bb.a ], [ 1, %.thread ]
  ret i32 %.0183
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN23btGeneric6DofConstraint9updateRHSEf(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(1333) %0, float noundef %1) local_unnamed_addr #14 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN23btGeneric6DofConstraint9setFramesERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(1333) initializes((72, 200)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 4 dereferenceable(64) %1, i64 16, i1 false), !tbaa.struct !12
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !12
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 4 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !12
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !12
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull align 4 dereferenceable(64) %2, i64 16, i1 false), !tbaa.struct !12
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !12
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !12
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 4 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !12
  %i.o = load ptr, ptr %0, align 8, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(1333) %0)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !38, !nonnull !39, !align !40
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !41, !nonnull !39, !align !40
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  tail call void @_ZN23btGeneric6DofConstraint19calculateTransformsERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(1333) %0, ptr noundef nonnull align 4 dereferenceable(64) %i.t, ptr noundef nonnull align 4 dereferenceable(64) %i.w)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef float @_ZNK23btGeneric6DofConstraint24getRelativePivotPositionEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1333) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.b
  %i.d = load float, ptr %i.c, align 4, !tbaa !14
  ret float %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef float @_ZNK23btGeneric6DofConstraint8getAngleEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1333) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.b
  %i.d = load float, ptr %i.c, align 4, !tbaa !14
  ret float %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN23btGeneric6DofConstraint13calcAnchorPosEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1333) initializes((1308, 1324)) %0) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38, !nonnull !39, !align !40
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 452
  %i.d = load float, ptr %i.c, align 4, !tbaa !60 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !41, !nonnull !39, !align !40
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 452
  %i.h = load float, ptr %i.g, align 4, !tbaa !60 ; 2 uses
  %i.i = fcmp oeq float %i.h, 0.000000e+00
  %i.j = fadd float %i.d, %i.h
  %i.k = fdiv float %i.d, %i.j
  %storemerge = select i1 %i.i, float 1.000000e+00, float %i.k ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.o = load float, ptr %i.n, align 8, !tbaa !14
  %i.p = fmul float %storemerge, %i.o
  %i.q = fsub float 1.000000e+00, %storemerge     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.s = load float, ptr %i.r, align 8, !tbaa !14
  %i.t = fmul float %i.q, %i.s
  %i.u = load <2 x float>, ptr %i.l, align 8, !tbaa !14
  %i.v = insertelement <2 x float> poison, float %storemerge, i64 0
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> zeroinitializer
  %i.x = fmul <2 x float> %i.u, %i.w
  %i.y = load <2 x float>, ptr %i.m, align 8, !tbaa !14
  %i.z = insertelement <2 x float> poison, float %i.q, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = fmul <2 x float> %i.y, %i.aa
  %i.ac = fadd <2 x float> %i.x, %i.ab
  %i.ad = fadd float %i.p, %i.t
  %.sroa.3.12.vec.insert.i14 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ad, i64 0
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1308
  store <2 x float> %i.ac, ptr %i.ae, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1316
  store <2 x float> %.sroa.3.12.vec.insert.i14, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !11
  ret void
}

declare noundef float @_ZN17btTypedConstraint14getMotorFactorEfffff(ptr noundef nonnull align 8 dereferenceable(72), float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN23btGeneric6DofConstraint8setParamEifi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1333) %0, i32 noundef %1, float noundef %2, i32 noundef %3) unnamed_addr #7 align 2 {
bb.a:
  %or.cond = icmp ult i32 %3, 3
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %bb.k [
    i32 2, label %bb.c
    i32 4, label %bb.d
    i32 3, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 780
  %i.b = zext nneg i32 %3 to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.b
  store float %2, ptr %i.c, align 4, !tbaa !14
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 796
  %i.e = zext nneg i32 %3 to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.e
  store float %2, ptr %i.f, align 4, !tbaa !14
  br label %.sink.split

bb.e:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 764
  %i.h = zext nneg i32 %3 to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.h
  store float %2, ptr %i.i, align 4, !tbaa !14
  br label %.sink.split

bb.f:                                             ; preds = %bb.a
  %i.j = icmp ult i32 %3, 6
  br i1 %i.j, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  switch i32 %1, label %bb.k [
    i32 2, label %bb.h
    i32 4, label %bb.i
    i32 3, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.k = zext nneg i32 %3 to i64
  %i.l = getelementptr [64 x i8], ptr %0, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 732
  store float %2, ptr %i.m, align 4, !tbaa !46
  br label %.sink.split

bb.i:                                             ; preds = %bb.g
  %i.n = zext nneg i32 %3 to i64
  %i.o = getelementptr [64 x i8], ptr %0, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 736
  store float %2, ptr %i.p, align 8, !tbaa !72
  br label %.sink.split

bb.j:                                             ; preds = %bb.g
  %i.q = zext nneg i32 %3 to i64
  %i.r = getelementptr [64 x i8], ptr %0, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 728
  store float %2, ptr %i.s, align 8, !tbaa !71
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.d, %bb.c, %bb.h, %bb.i, %bb.j
  %.sink = phi i32 [ 1, %bb.j ], [ 2, %bb.i ], [ 4, %bb.h ], [ 4, %bb.c ], [ 2, %bb.d ], [ 1, %bb.e ]
  %i.t = mul nuw nsw i32 %3, 3
  %i.u = shl nuw nsw i32 %.sink, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1328 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !36
  %i.x = or i32 %i.w, %i.u
  store i32 %i.x, ptr %i.v, align 8, !tbaa !36
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.g, %bb.f, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef float @_ZNK23btGeneric6DofConstraint8getParamEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1333) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 align 2 {
bb.a:
  %or.cond = icmp ult i32 %2, 3
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %bb.k [
end_hunk_0
