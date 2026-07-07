inline.NumInlined: 16806
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AdirectRegExpExec0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSRegExp0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3E0x29:bb.a
  %.val3618 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.apj = getelementptr inbounds nuw i8, ptr %.val3618, i64 %i.alz
  %i.apk = getelementptr inbounds nuw i8, ptr %i.apj, i64 136
  %.0.copyload.i4132 = load i32, ptr %i.apk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4132) #8, !srcloc !19
  %i.apl = add i32 %.0.copyload.i4132, %i.amk
  %i.apm = zext i32 %i.apl to i64
  %.val3617 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.apn = getelementptr inbounds nuw i8, ptr %.val3617, i64 %i.apm
  %.0.copyload.i4133 = load i32, ptr %i.apn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4133) #8, !srcloc !19
  %.val3526 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.apo = getelementptr inbounds nuw i8, ptr %.val3526, i64 %i.ama
  store i32 %.0.copyload.i4112, ptr %i.apo, align 1
  %.val3525 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.app = getelementptr inbounds nuw i8, ptr %.val3525, i64 %i.amc
  store i32 %.0.copyload.i4113, ptr %i.app, align 1
  %i.apq = add i32 %.0.copyload.i4133, 128
  %.val3524 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.apr = getelementptr inbounds nuw i8, ptr %.val3524, i64 %i.alz
  %i.aps = getelementptr inbounds nuw i8, ptr %i.apr, i64 168
  store i32 %i.apq, ptr %i.aps, align 1
  br label %bb.ip

bb.ip:                                            ; preds = %bb.io, %bb.hx
  %i.apt = add nuw i32 %.16, 1                    ; 2 uses
  %.not3516 = icmp eq i32 %i.apt, %.0.copyload.i4114
  br i1 %.not3516, label %.loopexit, label %bb.hx

.loopexit:                                        ; preds = %bb.ip, %..loopexit_crit_edge
  %.pre-phi4156 = phi i64 [ %.pre4155, %..loopexit_crit_edge ], [ %i.amj, %bb.ip ]
  %.pre-phi4154 = phi i32 [ %.pre4153, %..loopexit_crit_edge ], [ %i.amk, %bb.ip ]
  %.val3616 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.apu = getelementptr inbounds nuw i8, ptr %.val3616, i64 %i.alz
  %i.apv = getelementptr inbounds nuw i8, ptr %i.apu, i64 136
  %.0.copyload.i4134 = load i32, ptr %i.apv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4134) #8, !srcloc !19
  %i.apw = add i32 %.0.copyload.i4134, %.pre-phi4154
  %i.apx = zext i32 %i.apw to i64
  %.val3615 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.apy = getelementptr inbounds nuw i8, ptr %.val3615, i64 %i.apx
  %.0.copyload.i4135 = load i32, ptr %i.apy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4135) #8, !srcloc !19
  %.val3523 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.apz = getelementptr inbounds nuw i8, ptr %.val3523, i64 %i.ama
  store i32 %.0.copyload.i4112, ptr %i.apz, align 1
  %.val3522 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aqa = getelementptr inbounds nuw i8, ptr %.val3522, i64 %i.amc
  store i32 %.0.copyload.i4113, ptr %i.aqa, align 1
  %i.aqb = add i32 %.0.copyload.i4135, 128
  %.val3521 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aqc = getelementptr inbounds nuw i8, ptr %.val3521, i64 %i.alz
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aqc, i64 168
  store i32 %i.aqb, ptr %i.aqd, align 1
  %.val3614 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aqe = getelementptr inbounds nuw i8, ptr %.val3614, i64 %i.ks
  %.0.copyload.i4136 = load i32, ptr %i.aqe, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4136) #8, !srcloc !19
  %.val3613 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aqf = getelementptr inbounds nuw i8, ptr %.val3613, i64 %.pre-phi4156
  %.0.copyload.i4137 = load i32, ptr %i.aqf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4137) #8, !srcloc !19
  %.val3612 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aqg = getelementptr inbounds nuw i8, ptr %.val3612, i64 %i.s
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aqg, i64 460
  %.0.copyload.i4138 = load i32, ptr %i.aqh, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4138) #8, !srcloc !19
  %i.aqi = icmp ult i32 %.0.copyload.i4138, 5
  %i.aqj = add i32 %2, 1364
  %i.aqk = zext i32 %i.aqj to i64
  %.val3611 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aql = getelementptr inbounds nuw i8, ptr %.val3611, i64 %i.aqk
  %.0.copyload.i4139 = load i32, ptr %i.aql, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4139) #8
  br i1 %i.aqi, label %bb.iq, label %bb.ir

bb.iq:                                            ; preds = %.loopexit
  %i.aqm = shl nuw nsw i32 %.0.copyload.i4138, 2
  %i.aqn = add i32 %.0.copyload.i4136, 20
  %i.aqo = add i32 %i.aqn, %i.aqm                 ; 3 uses
  %i.aqp = and i32 %i.aqo, -4194304
  %.not3517 = icmp eq i32 %.0.copyload.i4139, %i.aqp
  br i1 %.not3517, label %bb.it, label %bb.is

bb.ir:                                            ; preds = %.loopexit
  %i.aqq = zext i32 %.0.copyload.i4136 to i64
  %.val3609 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aqr = getelementptr inbounds nuw i8, ptr %.val3609, i64 %i.aqq
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqr, i64 16
  %.0.copyload.i4141 = load i32, ptr %i.aqs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4141) #8, !srcloc !19
  %i.aqt = shl i32 %.0.copyload.i4138, 2
  %i.aqu = add i32 %i.aqt, -12
  %i.aqv = add i32 %i.aqu, %.0.copyload.i4141     ; 3 uses
  %i.aqw = and i32 %i.aqv, -4194304
  %i.aqx = icmp eq i32 %.0.copyload.i4139, %i.aqw
  br i1 %i.aqx, label %bb.it, label %bb.is

bb.is:                                            ; preds = %bb.ir, %bb.iq
  %.93349 = phi i32 [ %i.aqo, %bb.iq ], [ %i.aqv, %bb.ir ] ; 2 uses
  %i.aqy = add i32 %2, 816
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AwriteBarrierSlow0x28hermes0x3A0x3Avm0x3A0x3AGCHermesValueBase0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue320x3E0x20const0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3AHermesValue320x29(ptr noundef nonnull %0, i32 noundef %i.aqy, i32 noundef %.93349, i32 noundef %.0.copyload.i4137) #8
  br label %bb.it

bb.it:                                            ; preds = %bb.ir, %bb.iq, %bb.is
  %.103350 = phi i32 [ %.93349, %bb.is ], [ %i.aqo, %bb.iq ], [ %i.aqv, %bb.ir ]
  %i.aqz = zext i32 %.103350 to i64
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ara = getelementptr inbounds nuw i8, ptr %.val, i64 %i.aqz
  store i32 %.0.copyload.i4137, ptr %i.ara, align 1
  br label %.loopexit4148

.critedge:                                        ; preds = %bb.bf
  store i32 %i.hk, ptr %i.a, align 8, !tbaa !7
  br label %.loopexit4148

.loopexit4148:                                    ; preds = %bb.cw, %bb.hj, %bb.it, %.critedge, %bb.be, %bb.ar, %bb.hd, %bb.hc, %bb.as
  %.17 = phi i32 [ 70384, %bb.as ], [ -1, %bb.ar ], [ %.03334, %bb.it ], [ -1, %bb.hc ], [ -1, %bb.hd ], [ -1, %.critedge ], [ %.03334, %bb.hj ], [ -1, %bb.be ], [ -1, %bb.cw ] ; 3 uses
  %.val3864 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.arb = getelementptr inbounds nuw i8, ptr %.val3864, i64 %i.cb
  %.0.copyload.i4142 = load i8, ptr %i.arb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4142) #8, !srcloc !21
  %.not3520 = icmp eq i8 %.0.copyload.i4142, 0
  br i1 %.not3520, label %bb.iw, label %bb.iu

bb.iu:                                            ; preds = %.loopexit4148
  %.val3608 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.arc = getelementptr inbounds nuw i8, ptr %.val3608, i64 %i.bz
  %.0.copyload.i4143 = load i32, ptr %i.arc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4143) #8, !srcloc !19
  %i.ard = icmp eq i32 %.0.copyload.i4143, %i.by
  br i1 %i.ard, label %bb.iw, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i4143) #8
  br label %bb.iw

bb.iw:                                            ; preds = %bb.ao, %bb.k, %bb.h, %bb.d, %bb.iu, %.loopexit4148, %bb.iv
  %.18 = phi i32 [ -1, %bb.k ], [ -1, %bb.d ], [ %.17, %.loopexit4148 ], [ %.17, %bb.iu ], [ %.17, %bb.iv ], [ -1, %bb.h ], [ -1, %bb.ao ]
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A0x7EGCScope0x280x29(ptr noundef nonnull %0, i32 noundef %i.an) #8
  store i32 %i.b, ptr %i.a, align 8, !tbaa !7
  ret i32 %.18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden double @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AmakeTime0x28double0x2C0x20double0x2C0x20double0x2C0x20double0x29(ptr nofree noundef readnone captures(none) %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef double @llvm.fabs.f64(double %1)
  %i.b = fcmp ueq double %i.a, +inf
  %i.c = tail call double @llvm.fabs.f64(double %2)
  %i.d = fcmp ueq double %i.c, +inf
  %or.cond = or i1 %i.b, %i.d
  %i.e = tail call double @llvm.fabs.f64(double %3)
  %i.f = fcmp ueq double %i.e, +inf
  %or.cond79 = or i1 %or.cond, %i.f
  %i.g = tail call double @llvm.fabs.f64(double %4)
  %i.h = fcmp ueq double %i.g, +inf
  %or.cond81 = or i1 %or.cond79, %i.h
  br i1 %or.cond81, label %bb.b, label %wasm_trunc.exit

wasm_trunc.exit:                                  ; preds = %bb.a
  %i.i = tail call double @llvm.trunc.f64(double %4)
  %i.j = tail call nnan ninf double @llvm.trunc.f64(double %3)
  %i.k = fmul nnan double %i.j, 1.000000e+03
  %i.l = tail call nnan ninf double @llvm.trunc.f64(double %1)
  %i.m = fmul nnan double %i.l, 3.600000e+06
  %i.n = tail call nnan ninf double @llvm.trunc.f64(double %2)
  %i.o = fmul nnan double %i.n, 6.000000e+04
  %i.p = fadd double %i.m, %i.o
  %i.q = fadd double %i.k, %i.p
  %i.r = fadd double %i.i, %i.q
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %wasm_trunc.exit
  %.0 = phi double [ +qnan, %bb.a ], [ %i.r, %wasm_trunc.exit ]
  ret double %.0
}

; Function Attrs: nounwind uwtable
define hidden double @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AmakeDay0x28double0x2C0x20double0x2C0x20double0x29(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef double @llvm.fabs.f64(double %1)
  %i.b = fcmp ueq double %i.a, +inf
  %i.c = tail call double @llvm.fabs.f64(double %2)
  %i.d = fcmp ueq double %i.c, +inf
  %or.cond = or i1 %i.b, %i.d
  %i.e = tail call double @llvm.fabs.f64(double %3)
  %i.f = fcmp ueq double %i.e, +inf
  %or.cond169 = or i1 %or.cond, %i.f
  br i1 %or.cond169, label %bb.f, label %wasm_trunc.exit

wasm_trunc.exit:                                  ; preds = %bb.a
  %i.g = tail call double @llvm.trunc.f64(double %2) ; 2 uses
  %i.h = tail call double @w2c_hermes_fmod(ptr noundef %0, double noundef %i.g, double noundef 1.200000e+01) #8 ; 2 uses
  %i.i = fcmp olt double %i.h, 0.000000e+00
  %i.j = select i1 %i.i, double 1.200000e+01, double -0.000000e+00
  %i.k = fadd double %i.h, %i.j                   ; 3 uses
  %i.l = tail call double @llvm.trunc.f64(double %1)
  %i.m = fdiv double %i.g, 1.200000e+01
  %i.n = tail call double @llvm.floor.f64(double %i.m)
  %i.o = fadd double %i.l, %i.n                   ; 6 uses
  %i.p = tail call double @w2c_hermes_fmod(ptr noundef %0, double noundef %i.o, double noundef 4.000000e+00) #8
  %i.q = fcmp une double %i.p, 0.000000e+00
  br i1 %i.q, label %wasm_floor.exit164, label %bb.b

bb.b:                                             ; preds = %wasm_trunc.exit
  %i.r = tail call double @w2c_hermes_fmod(ptr noundef %0, double noundef %i.o, double noundef 1.000000e+02) #8
  %i.s = fcmp une double %i.r, 0.000000e+00
  br i1 %i.s, label %wasm_floor.exit164, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = tail call double @w2c_hermes_fmod(ptr noundef %0, double noundef %i.o, double noundef 4.000000e+02) #8
  %i.u = fcmp oeq double %i.t, 0.000000e+00
  %i.v = select i1 %i.u, i32 230960, i32 230928
  br label %wasm_floor.exit164

wasm_floor.exit164:                               ; preds = %bb.c, %wasm_trunc.exit, %bb.b
  %.0152 = phi i32 [ 230928, %wasm_trunc.exit ], [ 230960, %bb.b ], [ %i.v, %bb.c ]
  %i.w = tail call double @llvm.trunc.f64(double %3)
  %4 = insertelement <2 x double> poison, double %i.o, i64 0
  %5 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  %6 = fadd nnan <2 x double> %5, <double -1.601000e+03, double -1.901000e+03>
  %i.x = fadd double %i.o, -1.970000e+03
  %i.y = fmul double %i.x, 3.650000e+02
  %i.z = fadd double %i.o, -1.969000e+03
  %i.aa = fmul double %i.z, 2.500000e-01
  %i.ab = tail call double @llvm.floor.f64(double %i.aa)
  %i.ac = fadd double %i.y, %i.ab
  %7 = fdiv nnan <2 x double> %6, <double 4.000000e+02, double 1.000000e+02> ; 2 uses
  %8 = extractelement <2 x double> %7, i64 0
  %9 = tail call nnan double @llvm.floor.f64(double %8)
  %10 = extractelement <2 x double> %7, i64 1
  %i.ad = tail call nnan double @llvm.floor.f64(double %10)
  %i.ae = fsub double %i.ac, %i.ad
  %i.af = fadd double %9, %i.ae
  %i.ag = fmul double %i.af, 8.640000e+07
  %i.ah = fdiv double %i.ag, 8.640000e+07         ; 3 uses
  %i.ai = fcmp uno double %i.ah, 0.000000e+00
  br i1 %i.ai, label %bb.d, label %bb.e, !prof !31

bb.d:                                             ; preds = %wasm_floor.exit164
  %i.aj = bitcast double %i.ah to i64
  %i.ak = or i64 %i.aj, 9221120237041090560
  %i.al = bitcast i64 %i.ak to double
  br label %wasm_floor.exit166

bb.e:                                             ; preds = %wasm_floor.exit164
  %i.am = tail call double @llvm.floor.f64(double %i.ah)
  br label %wasm_floor.exit166

wasm_floor.exit166:                               ; preds = %bb.d, %bb.e
  %.0.i165 = phi double [ %i.al, %bb.d ], [ %i.am, %bb.e ]
  %i.an = fcmp olt double %i.k, f0x41F0000000000000
  %i.ao = fcmp oge double %i.k, 0.000000e+00
  %i.ap = and i1 %i.an, %i.ao
  %i.aq = fptoui double %i.k to i32
  %i.ar = shl i32 %i.aq, 1
  %.0 = select i1 %i.ap, i32 %i.ar, i32 0
  %i.as = add i32 %.0152, %.0
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.au = zext i32 %i.as to i64
  %.val = load ptr, ptr %i.at, align 8, !tbaa !18
  %i.av = getelementptr inbounds nuw i8, ptr %.val, i64 %i.au
  %.0.copyload.i = load i16, ptr %i.av, align 1   ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i) #8, !srcloc !24
  %i.aw = uitofp i16 %.0.copyload.i to double
  %i.ax = fadd double %.0.i165, %i.aw
  %i.ay = fadd double %i.w, %i.ax
  %i.az = fadd double %i.ay, -1.000000e+00
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %wasm_floor.exit166
  %.0153 = phi double [ +qnan, %bb.a ], [ %i.az, %wasm_floor.exit166 ]
  ret double %.0153
}

; Function Attrs: nounwind uwtable
define hidden double @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AstringToNumber0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3E0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 11 uses
  %i.c = add i32 %i.b, -144                       ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 164 uses
  %i.e = zext i32 %2 to i64                       ; 4 uses
  %.val2287 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val2287, i64 %i.e
  %.0.copyload.i = load i32, ptr %i.f, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !19
  %i.g = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AsymbolEqualsToStringPrim0x28hermes0x3A0x3Avm0x3A0x3ASymbolID0x2C0x20hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x2A0x29(ptr noundef %0, i32 noundef %1, i32 noundef 40, i32 noundef %.0.copyload.i) #8
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %.loopexit2507

bb.b:                                             ; preds = %bb.a
  %.val2286 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val2286, i64 %i.e
  %.0.copyload.i2343 = load i32, ptr %i.h, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2343) #8, !srcloc !19
  %i.i = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AsymbolEqualsToStringPrim0x28hermes0x3A0x3Avm0x3A0x3ASymbolID0x2C0x20hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x2A0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 41, i32 noundef %.0.copyload.i2343) #8
  %.not2111 = icmp eq i32 %i.i, 0
  br i1 %.not2111, label %bb.c, label %.loopexit2507

bb.c:                                             ; preds = %bb.b
  %.val2285 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %.val2285, i64 %i.e
  %.0.copyload.i2344 = load i32, ptr %i.j, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2344) #8, !srcloc !19
  %i.k = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AsymbolEqualsToStringPrim0x28hermes0x3A0x3Avm0x3A0x3ASymbolID0x2C0x20hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x2A0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 42, i32 noundef %.0.copyload.i2344) #8 ; 0 uses
  %.val2284 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %.val2284, i64 %i.e
  %.0.copyload.i2345 = load i32, ptr %i.l, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2345) #8, !srcloc !19
  %i.m = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AsymbolEqualsToStringPrim0x28hermes0x3A0x3Avm0x3A0x3ASymbolID0x2C0x20hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x2A0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 38, i32 noundef %.0.copyload.i2345) #8
  %.not2112 = icmp eq i32 %i.m, 0
  br i1 %.not2112, label %bb.d, label %.loopexit2507

bb.d:                                             ; preds = %bb.c
  %i.n = add i32 %i.b, -28
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3A0x3AcreateStringView0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.n, i32 noundef %1, i32 noundef %2) #8
  %i.o = zext i32 %i.c to i64                     ; 37 uses
  %.val2283 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %.val2283, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  %.0.copyload.i2346 = load i32, ptr %i.q, align 1 ; 16 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2346) #8, !srcloc !19
  %i.r = and i32 %.0.copyload.i2346, 1073741824   ; 2 uses
  %i.s = add nuw nsw i64 %i.o, 116                ; 2 uses
  %.val2282 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %.val2282, i64 %i.s
  %.0.copyload.i2347 = load i32, ptr %i.t, align 1 ; 11 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2347) #8, !srcloc !19
  %i.u = icmp slt i32 %.0.copyload.i2346, 0       ; 2 uses
  %.not2116 = icmp eq i32 %i.r, 0                 ; 2 uses
  br i1 %i.u, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  br i1 %.not2116, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = zext i32 %.0.copyload.i2347 to i64
  %.val2281 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %.val2281, i64 %i.v
  %.0.copyload.i2348 = load i32, ptr %i.w, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2348) #8, !srcloc !19
  %i.x = zext i32 %.0.copyload.i2348 to i64       ; 5 uses
  %.val2280 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %.val2280, i64 %i.x
  %.0.copyload.i2349 = load i32, ptr %i.y, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2349) #8, !srcloc !19
  %i.z = icmp ugt i32 %.0.copyload.i2349, 150994943
  br i1 %i.z, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = and i32 %.0.copyload.i2349, 251658240
  switch i32 %i.aa, label %bb.m [
    i32 67108864, label %.thread
    i32 134217728, label %.thread2483
  ]

.thread2483:                                      ; preds = %bb.g
  %i.ab = and i32 %.0.copyload.i2346, 1073741823  ; 2 uses
  %i.ac = add nuw nsw i32 %i.ab, 12
  %i.ad = add i32 %i.ac, %.0.copyload.i2348
  %i.ae = add i32 %.0.copyload.i2348, 12
  br label %bb.n

bb.h:                                             ; preds = %bb.d
  br i1 %.not2116, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = zext i32 %.0.copyload.i2347 to i64
  %.val2277 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %.val2277, i64 %i.af
  %.0.copyload.i2353 = load i32, ptr %i.ag, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2353) #8, !srcloc !19
  %i.ah = zext i32 %.0.copyload.i2353 to i64      ; 5 uses
  %.val2276 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %.val2276, i64 %i.ah
  %.0.copyload.i2354 = load i32, ptr %i.ai, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2354) #8, !srcloc !19
  %i.aj = icmp ugt i32 %.0.copyload.i2354, 150994943
  br i1 %i.aj, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = and i32 %.0.copyload.i2354, 251658240
  switch i32 %i.ak, label %bb.q [
    i32 50331648, label %.thread2485
    i32 117440512, label %.thread2487
  ]

.thread2487:                                      ; preds = %bb.j
  %i.al = and i32 %.0.copyload.i2346, 1073741823  ; 2 uses
  %i.am = shl nuw nsw i32 %i.al, 1
  %i.an = add nuw i32 %i.am, 12
  %i.ao = add i32 %i.an, %.0.copyload.i2353
  %i.ap = add i32 %.0.copyload.i2353, 12
  br label %bb.r

bb.k:                                             ; preds = %bb.e
  %i.aq = and i32 %.0.copyload.i2346, 1073741823  ; 2 uses
  %i.ar = add i32 %.0.copyload.i2347, %i.aq
  br label %bb.n

bb.l:                                             ; preds = %bb.f
  %.val2273 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %.val2273, i64 %i.x
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  %.0.copyload.i2358 = load i32, ptr %i.at, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2358) #8, !srcloc !19
  %i.au = add i32 %.0.copyload.i2348, 12
  %.val2321 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.av = getelementptr inbounds nuw i8, ptr %.val2321, i64 %i.x
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 23
  %.0.copyload.i2359 = load i8, ptr %i.aw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2359) #8, !srcloc !22
  %i.ax = icmp slt i8 %.0.copyload.i2359, 0
  %i.ay = select i1 %i.ax, i32 %.0.copyload.i2358, i32 %i.au ; 2 uses
  %i.az = and i32 %.0.copyload.i2346, 1073741823  ; 2 uses
  %i.ba = add i32 %i.ay, %i.az
  br label %bb.n

.thread:                                          ; preds = %bb.g
  %i.bb = and i32 %.0.copyload.i2346, 1073741823  ; 2 uses
  %i.bc = add nuw nsw i32 %i.bb, 8
  %i.bd = add i32 %i.bc, %.0.copyload.i2348
  %i.be = add i32 %.0.copyload.i2348, 8
  br label %bb.n

bb.m:                                             ; preds = %bb.g
  %.val2279 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bf = getelementptr inbounds nuw i8, ptr %.val2279, i64 %i.x
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.0.copyload.i2350 = load i32, ptr %i.bg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2350) #8, !srcloc !19
  %i.bh = zext i32 %.0.copyload.i2350 to i64      ; 2 uses
end_hunk_0
begin_hunk_1_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AparseDate0x28hermes0x3A0x3Avm0x3A0x3AStringView0x2C0x20hermes0x3A0x3Avm0x3A0x3ALocalTimeOffsetCache0x260x29:bb.a
  %i.ha = getelementptr inbounds nuw i8, ptr %.val6147, i64 %i.gz
  %.0.copyload.i6195 = load i8, ptr %i.ha, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i6195) #8, !srcloc !21
  %.not5535 = icmp eq i8 %.0.copyload.i6195, 58
  br i1 %.not5535, label %bb.bs, label %.loopexit6502

bb.bs:                                            ; preds = %bb.br
  %i.hb = add i32 %.0.copyload.i6192, 1
  br label %bb.bu

bb.bt:                                            ; preds = %bb.bq
  %i.hc = add i32 %.0.copyload.i6193, 2
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.sink6604 = phi i64 [ %i.em, %bb.bt ], [ %i.ek, %bb.bs ]
  %.sink6602 = phi i32 [ %i.hc, %bb.bt ], [ %i.hb, %bb.bs ]
  %.val5791 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hd = getelementptr inbounds nuw i8, ptr %.val5791, i64 %.sink6604
  store i32 %.sink6602, ptr %i.hd, align 1
  %i.he = add i32 %i.b, -96
  %i.hf = tail call i32 @w2c_hermes_bool0x20hermes0x3A0x3Avm0x3A0x3AscanInt0x3Chermes0x3A0x3Avm0x3A0x3AStringView0x3A0x3Aconst_iterator0x3E0x28hermes0x3A0x3Avm0x3A0x3AStringView0x3A0x3Aconst_iterator0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AStringView0x3A0x3Aconst_iterator0x2C0x20int0x260x29(ptr noundef nonnull %0, i32 noundef %i.dx, i32 noundef %.05345, i32 noundef %.05378, i32 noundef %i.he) #8
  %.not5536 = icmp eq i32 %i.hf, 0
  br i1 %.not5536, label %bb.ef, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %.val6026 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hg = getelementptr inbounds nuw i8, ptr %.val6026, i64 %i.ek
  %.0.copyload.i6196 = load i32, ptr %i.hg, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6196) #8, !srcloc !19
  %.val6025 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hh = getelementptr inbounds nuw i8, ptr %.val6025, i64 %i.em
  %.0.copyload.i6197 = load i32, ptr %i.hh, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6197) #8, !srcloc !19
  %.not5537 = icmp eq i32 %.0.copyload.i6196, 0   ; 3 uses
  %i.hi = select i1 %.not5537, i32 %.0.copyload.i6197, i32 %.0.copyload.i6196
  %i.hj = select i1 %.not5537, i32 %.05378, i32 %.05345
  %i.hk = icmp eq i32 %i.hi, %i.hj
  br i1 %i.hk, label %.loopexit6502, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %.val6146 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  br i1 %.not5537, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.hl = zext i32 %.0.copyload.i6197 to i64
  %i.hm = getelementptr inbounds nuw i8, ptr %.val6146, i64 %i.hl
  %.0.copyload.i6198 = load i16, ptr %i.hm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i6198) #8, !srcloc !24
  %i.hn = icmp eq i16 %.0.copyload.i6198, 46
  br i1 %i.hn, label %bb.ca, label %.loopexit6502

bb.by:                                            ; preds = %bb.bw
  %i.ho = zext i32 %.0.copyload.i6196 to i64
  %i.hp = getelementptr inbounds nuw i8, ptr %.val6146, i64 %i.ho
  %.0.copyload.i6199 = load i8, ptr %i.hp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i6199) #8, !srcloc !21
  %.not5538 = icmp eq i8 %.0.copyload.i6199, 46
  br i1 %.not5538, label %bb.bz, label %.loopexit6502

bb.bz:                                            ; preds = %bb.by
  %i.hq = add i32 %.0.copyload.i6196, 1           ; 2 uses
  %.val5790 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hr = getelementptr inbounds nuw i8, ptr %.val5790, i64 %i.ek
  store i32 %i.hq, ptr %i.hr, align 1
  %.val6024 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hs = getelementptr inbounds nuw i8, ptr %.val6024, i64 %i.em
  %.0.copyload.i6200 = load i32, ptr %i.hs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6200) #8, !srcloc !19
  br label %bb.cb

bb.ca:                                            ; preds = %bb.bx
  %i.ht = add i32 %.0.copyload.i6197, 2           ; 2 uses
  %.val5789 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hu = getelementptr inbounds nuw i8, ptr %.val5789, i64 %i.em
  store i32 %i.ht, ptr %i.hu, align 1
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.35406 = phi i32 [ 0, %bb.ca ], [ %i.hq, %bb.bz ] ; 4 uses
  %.45387 = phi i32 [ %i.ht, %bb.ca ], [ %.0.copyload.i6200, %bb.bz ] ; 3 uses
  %.not5539 = icmp eq i32 %.35406, 0              ; 4 uses
  %i.hv = select i1 %.not5539, i32 %.45387, i32 %.35406
  %i.hw = select i1 %.not5539, i32 %.05378, i32 %.05345
  %i.hx = icmp eq i32 %i.hv, %i.hw
  br i1 %i.hx, label %bb.ef, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %.val6145 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  br i1 %.not5539, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.hy = zext i32 %.35406 to i64
  %i.hz = getelementptr inbounds nuw i8, ptr %.val6145, i64 %i.hy
  %.0.copyload.i6201 = load i8, ptr %i.hz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i6201) #8, !srcloc !22
  %i.ia = sext i8 %.0.copyload.i6201 to i32
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cc
  %i.ib = zext i32 %.45387 to i64
  %i.ic = getelementptr inbounds nuw i8, ptr %.val6145, i64 %i.ib
  %.0.copyload.i6202 = load i16, ptr %i.ic, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i6202) #8, !srcloc !24
  %i.id = zext i16 %.0.copyload.i6202 to i32
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.15346 = phi i32 [ %i.ia, %bb.cd ], [ %i.id, %bb.ce ]
  %i.ie = add nsw i32 %.15346, 65488
  %i.if = and i32 %i.ie, 65534
  %i.ig = icmp samesign ugt i32 %i.if, 9
  br i1 %i.ig, label %bb.ef, label %.preheader6501

.preheader6501:                                   ; preds = %bb.cf, %bb.ck
  %.45407 = phi i32 [ %.55408, %bb.ck ], [ %.35406, %bb.cf ] ; 5 uses
  %.55388 = phi i32 [ %.65389, %bb.ck ], [ %.45387, %bb.cf ] ; 4 uses
  %.05371 = phi i32 [ %i.ja, %bb.ck ], [ 100, %bb.cf ] ; 2 uses
  %.05365.in = phi i1 [ %.not5540, %bb.ck ], [ %.not5539, %bb.cf ]
  %.05360 = phi i32 [ %i.iz, %bb.ck ], [ 0, %bb.cf ] ; 3 uses
  %.val6144 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  br i1 %.05365.in, label %bb.cg, label %bb.ci

bb.cg:                                            ; preds = %.preheader6501
  %i.ih = zext i32 %.55388 to i64
  %i.ii = getelementptr inbounds nuw i8, ptr %.val6144, i64 %i.ih
  %.0.copyload.i6203 = load i16, ptr %i.ii, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i6203) #8, !srcloc !24
  %i.ij = zext i16 %.0.copyload.i6203 to i32      ; 2 uses
  %i.ik = add nuw nsw i32 %i.ij, 65488
  %i.il = and i32 %i.ik, 65534
  %i.im = icmp samesign ugt i32 %i.il, 9
  br i1 %i.im, label %.loopexit6502, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.in = add i32 %.55388, 2                      ; 2 uses
  %.val5788 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.io = getelementptr inbounds nuw i8, ptr %.val5788, i64 %i.em
  store i32 %i.in, ptr %i.io, align 1
  br label %bb.ck

bb.ci:                                            ; preds = %.preheader6501
  %i.ip = zext i32 %.45407 to i64
  %i.iq = getelementptr inbounds nuw i8, ptr %.val6144, i64 %i.ip
  %.0.copyload.i6204 = load i8, ptr %i.iq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i6204) #8, !srcloc !22
  %i.ir = sext i8 %.0.copyload.i6204 to i32       ; 2 uses
  %i.is = add nsw i32 %i.ir, -58
  %i.it = icmp ult i32 %i.is, -10
  br i1 %i.it, label %.loopexit6502, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.iu = add i32 %.45407, 1                      ; 2 uses
  %.val5787 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iv = getelementptr inbounds nuw i8, ptr %.val5787, i64 %i.ek
  store i32 %i.iu, ptr %i.iv, align 1
  %.val6023 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iw = getelementptr inbounds nuw i8, ptr %.val6023, i64 %i.em
  %.0.copyload.i6205 = load i32, ptr %i.iw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6205) #8, !srcloc !19
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ch
  %.55408 = phi i32 [ %.45407, %bb.ch ], [ %i.iu, %bb.cj ] ; 4 uses
  %.65389 = phi i32 [ %i.in, %bb.ch ], [ %.0.copyload.i6205, %bb.cj ] ; 3 uses
  %.15366 = phi i32 [ %i.ij, %bb.ch ], [ %i.ir, %bb.cj ]
  %i.ix = add nsw i32 %.15366, -48
  %i.iy = mul i32 %i.ix, %.05371
  %i.iz = add i32 %i.iy, %.05360                  ; 2 uses
  %.not5540 = icmp eq i32 %.55408, 0              ; 3 uses
  %i.ja = sdiv i32 %.05371, 10
  %i.jb = select i1 %.not5540, i32 %.65389, i32 %.55408
  %i.jc = select i1 %.not5540, i32 %.05378, i32 %.05345
  %.not5541 = icmp eq i32 %i.jb, %i.jc
  br i1 %.not5541, label %.loopexit6502, label %.preheader6501

.loopexit6502:                                    ; preds = %bb.ck, %bb.ci, %bb.cg, %bb.by, %bb.bx, %bb.bv, %bb.br, %bb.bq, %bb.bo
  %.65409 = phi i32 [ %.0.copyload.i6192, %bb.bo ], [ %.0.copyload.i6196, %bb.bv ], [ %.0.copyload.i6196, %bb.by ], [ 0, %bb.bq ], [ %.0.copyload.i6192, %bb.br ], [ 0, %bb.bx ], [ %.45407, %bb.ci ], [ %.55408, %bb.ck ], [ %.45407, %bb.cg ] ; 6 uses
  %.75390 = phi i32 [ %.0.copyload.i6193, %bb.bo ], [ %.0.copyload.i6197, %bb.bv ], [ %.0.copyload.i6197, %bb.by ], [ %.0.copyload.i6193, %bb.bq ], [ %.0.copyload.i6193, %bb.br ], [ %.0.copyload.i6197, %bb.bx ], [ %.55388, %bb.ci ], [ %.65389, %bb.ck ], [ %.55388, %bb.cg ] ; 5 uses
  %.15361 = phi i32 [ 0, %bb.bo ], [ 0, %bb.bv ], [ 0, %bb.by ], [ 0, %bb.bq ], [ 0, %bb.br ], [ 0, %bb.bx ], [ %.05360, %bb.ci ], [ %i.iz, %bb.ck ], [ %.05360, %bb.cg ] ; 3 uses
  %.not5542 = icmp eq i32 %.65409, 0              ; 3 uses
  %i.jd = select i1 %.not5542, i32 %.75390, i32 %.65409
  %i.je = select i1 %.not5542, i32 %.05378, i32 %.05345
  %i.jf = icmp eq i32 %i.jd, %i.je
  %.val6022 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 3 uses
  br i1 %i.jf, label %bb.cl, label %bb.cs

bb.cl:                                            ; preds = %.loopexit6502
  %i.jg = getelementptr inbounds nuw i8, ptr %.val6022, i64 %i.cr
  %.0.copyload.i6206 = load i32, ptr %i.jg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6206) #8, !srcloc !19
  %i.jh = add i32 %.0.copyload.i6206, -1
  %i.ji = sitofp i32 %i.jh to double              ; 2 uses
  %i.jj = tail call double @w2c_hermes_fmod(ptr noundef nonnull %0, double noundef %i.ji, double noundef 1.200000e+01) #8 ; 2 uses
  %i.jk = fcmp olt double %i.jj, 0.000000e+00
  %i.jl = select i1 %i.jk, double 1.200000e+01, double -0.000000e+00
  %i.jm = fadd double %i.jj, %i.jl                ; 3 uses
  %i.jn = fdiv double %i.ji, 1.200000e+01
  %i.jo = tail call double @llvm.floor.f64(double %i.jn)
  %i.jp = sitofp i32 %.15339 to double
  %i.jq = fadd double %i.jo, %i.jp                ; 6 uses
  %i.jr = tail call double @w2c_hermes_fmod(ptr noundef nonnull %0, double noundef %i.jq, double noundef 4.000000e+00) #8
  %.val6021 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.js = getelementptr inbounds nuw i8, ptr %.val6021, i64 %.pre-phi
  %.0.copyload.i6207 = load i32, ptr %i.js, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6207) #8, !srcloc !19
  %i.jt = fcmp une double %i.jr, 0.000000e+00
  br i1 %i.jt, label %bb.co, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ju = tail call double @w2c_hermes_fmod(ptr noundef nonnull %0, double noundef %i.jq, double noundef 1.000000e+02) #8
  %i.jv = fcmp une double %i.ju, 0.000000e+00
  br i1 %i.jv, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.jw = tail call double @w2c_hermes_fmod(ptr noundef nonnull %0, double noundef %i.jq, double noundef 4.000000e+02) #8
  %i.jx = fcmp oeq double %i.jw, 0.000000e+00
  %i.jy = select i1 %i.jx, i32 230960, i32 230928
  br label %bb.co

bb.co:                                            ; preds = %bb.cm, %bb.cl, %bb.cn
  %.25347 = phi i32 [ 230928, %bb.cl ], [ 230960, %bb.cm ], [ %i.jy, %bb.cn ]
  %i.jz = sitofp i32 %.0.copyload.i6207 to double
  %.val6020 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ka = getelementptr inbounds nuw i8, ptr %.val6020, i64 %i.cy
  %.0.copyload.i6208 = load i32, ptr %i.ka, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6208) #8, !srcloc !19
  %i.kb = sitofp i32 %.0.copyload.i6208 to double
  %i.kc = fmul nnan double %i.kb, 1.000000e+03
  %.val6019 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kd = getelementptr inbounds nuw i8, ptr %.val6019, i64 %i.cu
  %.0.copyload.i6209 = load i32, ptr %i.kd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6209) #8, !srcloc !19
  %i.ke = sitofp i32 %.0.copyload.i6209 to double
  %i.kf = fmul nnan double %i.ke, 3.600000e+06
  %.val6018 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kg = getelementptr inbounds nuw i8, ptr %.val6018, i64 %i.cw
  %.0.copyload.i6210 = load i32, ptr %i.kg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6210) #8, !srcloc !19
  %i.kh = sitofp i32 %.0.copyload.i6210 to double
  %i.ki = fmul nnan double %i.kh, 6.000000e+04
  %i.kj = fadd double %i.kf, %i.ki
  %i.kk = fadd double %i.kc, %i.kj
  %i.kl = sitofp i32 %.15361 to double
  %i.km = fadd double %i.kk, %i.kl                ; 2 uses
  %3 = insertelement <2 x double> poison, double %i.jq, i64 0
  %4 = shufflevector <2 x double> %3, <2 x double> poison, <2 x i32> zeroinitializer
  %5 = fadd <2 x double> %4, <double -1.601000e+03, double -1.901000e+03>
  %i.kn = fadd double %i.jq, -1.970000e+03
  %i.ko = fmul double %i.kn, 3.650000e+02
  %i.kp = fadd double %i.jq, -1.969000e+03
  %i.kq = fmul double %i.kp, 2.500000e-01
  %i.kr = tail call double @llvm.floor.f64(double %i.kq)
  %i.ks = fadd double %i.ko, %i.kr
  %6 = fdiv <2 x double> %5, <double 4.000000e+02, double 1.000000e+02> ; 2 uses
  %7 = extractelement <2 x double> %6, i64 0
  %8 = tail call double @llvm.floor.f64(double %7)
  %9 = extractelement <2 x double> %6, i64 1
  %i.kt = tail call double @llvm.floor.f64(double %9)
  %i.ku = fsub double %i.ks, %i.kt
  %i.kv = fadd double %8, %i.ku
  %i.kw = fmul double %i.kv, 8.640000e+07
  %i.kx = fdiv double %i.kw, 8.640000e+07         ; 3 uses
  %i.ky = fcmp uno double %i.kx, 0.000000e+00
  br i1 %i.ky, label %bb.cp, label %bb.cq, !prof !31

bb.cp:                                            ; preds = %bb.co
  %i.kz = bitcast double %i.kx to i64
  %i.la = or i64 %i.kz, 9221120237041090560
  %i.lb = bitcast i64 %i.la to double
  br label %wasm_floor.exit

bb.cq:                                            ; preds = %bb.co
  %i.lc = tail call double @llvm.floor.f64(double %i.kx)
  br label %wasm_floor.exit

wasm_floor.exit:                                  ; preds = %bb.cp, %bb.cq
  %.0.i = phi double [ %i.lb, %bb.cp ], [ %i.lc, %bb.cq ]
  %i.ld = fcmp olt double %i.jm, f0x41F0000000000000
  %i.le = fcmp oge double %i.jm, 0.000000e+00
  %i.lf = and i1 %i.ld, %i.le
  %i.lg = fptoui double %i.jm to i32
  %i.lh = shl i32 %i.lg, 1
  %.15334 = select i1 %i.lf, i32 %i.lh, i32 0
  %i.li = add i32 %.25347, %.15334
  %i.lj = zext i32 %i.li to i64
  %.val6143 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lk = getelementptr inbounds nuw i8, ptr %.val6143, i64 %i.lj
  %.0.copyload.i6211 = load i16, ptr %i.lk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i6211) #8, !srcloc !24
  %i.ll = uitofp i16 %.0.copyload.i6211 to double
  %i.lm = fadd double %.0.i, %i.ll
  %i.ln = fadd double %i.lm, %i.jz
  %i.lo = fadd double %i.ln, -1.000000e+00        ; 2 uses
  %i.lp = fmul double %i.lo, 8.640000e+07
  %i.lq = fadd double %i.km, %i.lp
  %i.lr = tail call noundef double @llvm.fabs.f64(double %i.km)
  %i.ls = fcmp one double %i.lr, +inf
  %i.lt = tail call noundef double @llvm.fabs.f64(double %i.lo)
  %i.lu = fcmp one double %i.lt, +inf
  %i.lv = and i1 %i.ls, %i.lu
  %i.lw = select i1 %i.lv, double %i.lq, double +qnan ; 3 uses
  %i.lx = tail call noundef double @llvm.fabs.f64(double %i.lw)
  %i.ly = fcmp ueq double %i.lx, +inf
  br i1 %i.ly, label %bb.ef, label %bb.cr

bb.cr:                                            ; preds = %wasm_floor.exit
  %i.lz = tail call double @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ALocalTimeOffsetCache0x3A0x3AgetLocalTimeOffset0x28double0x2C0x20hermes0x3A0x3Avm0x3A0x3ATimeType0x29(ptr noundef nonnull %0, i32 noundef %2, double noundef %i.lw, i32 noundef 0) #8
  %i.ma = fsub double %i.lw, %i.lz
  br label %bb.ee

bb.cs:                                            ; preds = %.loopexit6502
  br i1 %.not5542, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.mb = zext i32 %.75390 to i64
  %i.mc = getelementptr inbounds nuw i8, ptr %.val6022, i64 %i.mb
  %.0.copyload.i6212 = load i16, ptr %i.mc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i6212) #8, !srcloc !24
  switch i16 %.0.copyload.i6212, label %bb.ef [
    i16 43, label %bb.cx
    i16 90, label %bb.dt
    i16 45, label %bb.cz
  ]

bb.cu:                                            ; preds = %bb.cs
  %i.md = zext i32 %.65409 to i64
  %i.me = getelementptr inbounds nuw i8, ptr %.val6022, i64 %i.md
  %.0.copyload.i6213 = load i8, ptr %i.me, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i6213) #8, !srcloc !21
  switch i8 %.0.copyload.i6213, label %bb.ef [
    i8 43, label %bb.cw
    i8 90, label %bb.cv
    i8 45, label %bb.cy
  ]

bb.cv:                                            ; preds = %bb.cu
  %i.mf = add i32 %.65409, 1                      ; 2 uses
  br label %bb.du

bb.cw:                                            ; preds = %bb.cu
  %i.mg = add i32 %.65409, 1                      ; 2 uses
  br label %bb.da

bb.cx:                                            ; preds = %bb.ct
  %i.mh = add i32 %.75390, 2
  br label %bb.da

bb.cy:                                            ; preds = %bb.cu
  %i.mi = add i32 %.65409, 1                      ; 2 uses
  br label %bb.da

bb.cz:                                            ; preds = %bb.ct
  %i.mj = add i32 %.75390, 2
  br label %bb.da

bb.da:                                            ; preds = %bb.cx, %bb.cz, %bb.cy, %bb.cw
  %.sink6607 = phi i64 [ %i.em, %bb.cx ], [ %i.em, %bb.cz ], [ %i.ek, %bb.cy ], [ %i.ek, %bb.cw ]
  %.sink6605 = phi i32 [ %i.mh, %bb.cx ], [ %i.mj, %bb.cz ], [ %i.mi, %bb.cy ], [ %i.mg, %bb.cw ]
  %.75410 = phi i32 [ 0, %bb.cx ], [ 0, %bb.cz ], [ %i.mi, %bb.cy ], [ %i.mg, %bb.cw ] ; 3 uses
  %.05356 = phi double [ 1.000000e+00, %bb.cx ], [ -1.000000e+00, %bb.cz ], [ -1.000000e+00, %bb.cy ], [ 1.000000e+00, %bb.cw ] ; 2 uses
  %.val5784 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mk = getelementptr inbounds nuw i8, ptr %.val5784, i64 %.sink6607
  store i32 %.sink6605, ptr %i.mk, align 1
  %.val6017 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ml = getelementptr inbounds nuw i8, ptr %.val6017, i64 %i.em
  %.0.copyload.i6214 = load i32, ptr %i.ml, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6214) #8, !srcloc !19
  %.not5545 = icmp eq i32 %.75410, 0              ; 4 uses
  %i.mm = select i1 %.not5545, i32 %.0.copyload.i6214, i32 %.75410
  %i.mn = add i32 %.05345, -2
  %.not5546 = icmp eq i32 %.05345, 0              ; 2 uses
  %i.mo = select i1 %.not5546, i32 0, i32 %i.mn   ; 2 uses
  %i.mp = select i1 %.not5546, i32 -4, i32 0
  %i.mq = add i32 %i.mp, %.05378                  ; 2 uses
  %i.mr = select i1 %.not5545, i32 %i.mq, i32 %i.mo
  %i.ms = icmp ugt i32 %i.mm, %i.mr
  br i1 %i.ms, label %bb.ef, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.mt = add i32 %.75410, 2
  %i.mu = select i1 %.not5545, i32 0, i32 %i.mt
  %i.mv = select i1 %.not5545, i32 4, i32 0
  %i.mw = add i32 %.0.copyload.i6214, %i.mv
  %i.mx = add i32 %i.b, -20
  %i.my = tail call i32 @w2c_hermes_bool0x20hermes0x3A0x3Avm0x3A0x3AscanInt0x3Chermes0x3A0x3Avm0x3A0x3AStringView0x3A0x3Aconst_iterator0x3E0x28hermes0x3A0x3Avm0x3A0x3AStringView0x3A0x3Aconst_iterator0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AStringView0x3A0x3Aconst_iterator0x2C0x20int0x260x29(ptr noundef nonnull %0, i32 noundef %i.dx, i32 noundef %i.mu, i32 noundef %i.mw, i32 noundef %i.mx) #8
  %.not5547 = icmp eq i32 %i.my, 0
  br i1 %.not5547, label %bb.ef, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %.val6016 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mz = getelementptr inbounds nuw i8, ptr %.val6016, i64 %i.da
  %.0.copyload.i6215 = load i32, ptr %i.mz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6215) #8, !srcloc !19
  %i.na = sitofp i32 %.0.copyload.i6215 to double
  %i.nb = fmul nnan double %.05356, %i.na         ; 4 uses
  %i.nc = tail call noundef double @llvm.fabs.f64(double %i.nb)
  %i.nd = fcmp olt double %i.nc, f0x41E0000000000000
  br i1 %i.nd, label %bb.dd, label %bb.dg

bb.dd:                                            ; preds = %bb.dc
  %i.ne = fcmp ule double %i.nb, f0xC1E0000000200000
  %i.nf = fcmp uge double %i.nb, f0x41E0000000000000
  %.not5550 = or i1 %i.ne, %i.nf
  br i1 %.not5550, label %bb.de, label %bb.df, !prof !31

bb.de:                                            ; preds = %bb.dd
  tail call void @wasm_rt_trap(i32 noundef 2) #9
  unreachable

bb.df:                                            ; preds = %bb.dd
  %i.ng = fptosi double %i.nb to i32
  br label %bb.dg

bb.dg:                                            ; preds = %bb.dc, %bb.df
  %.25340 = phi i32 [ %i.ng, %bb.df ], [ -2147483648, %bb.dc ] ; 2 uses
  %.val5781 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.nh = getelementptr inbounds nuw i8, ptr %.val5781, i64 %i.da
  store i32 %.25340, ptr %i.nh, align 1
  %.val6015 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ni = getelementptr inbounds nuw i8, ptr %.val6015, i64 %i.ek
  %.0.copyload.i6216 = load i32, ptr %i.ni, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6216) #8, !srcloc !19
  %.val6014 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.nj = getelementptr inbounds nuw i8, ptr %.val6014, i64 %i.em
  %.0.copyload.i6217 = load i32, ptr %i.nj, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6217) #8, !srcloc !19
  %.not5551 = icmp eq i32 %.0.copyload.i6216, 0   ; 3 uses
  %i.nk = select i1 %.not5551, i32 %.0.copyload.i6217, i32 %.0.copyload.i6216
  %i.nl = select i1 %.not5551, i32 %.05378, i32 %.05345
  %i.nm = icmp eq i32 %i.nk, %i.nl
  br i1 %i.nm, label %bb.dm, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %.val6141 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  br i1 %.not5551, label %bb.di, label %bb.dk

bb.di:                                            ; preds = %bb.dh
  %i.nn = zext i32 %.0.copyload.i6217 to i64
  %i.no = getelementptr inbounds nuw i8, ptr %.val6141, i64 %i.nn
  %.0.copyload.i6218 = load i16, ptr %i.no, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i6218) #8, !srcloc !24
  %.not5553 = icmp eq i16 %.0.copyload.i6218, 58
  br i1 %.not5553, label %bb.dj, label %bb.dm

bb.dj:                                            ; preds = %bb.di
  %i.np = add i32 %.0.copyload.i6217, 2           ; 2 uses
  %.val5780 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.nq = getelementptr inbounds nuw i8, ptr %.val5780, i64 %i.em
  store i32 %i.np, ptr %i.nq, align 1
  br label %bb.dm

bb.dk:                                            ; preds = %bb.dh
  %i.nr = zext i32 %.0.copyload.i6216 to i64
  %i.ns = getelementptr inbounds nuw i8, ptr %.val6141, i64 %i.nr
  %.0.copyload.i6219 = load i8, ptr %i.ns, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i6219) #8, !srcloc !21
  %.not5552 = icmp eq i8 %.0.copyload.i6219, 58
  br i1 %.not5552, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.nt = add i32 %.0.copyload.i6216, 1           ; 2 uses
  %.val5779 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.nu = getelementptr inbounds nuw i8, ptr %.val5779, i64 %i.ek
  store i32 %i.nt, ptr %i.nu, align 1
  %.val6013 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.nv = getelementptr inbounds nuw i8, ptr %.val6013, i64 %i.em
  %.0.copyload.i6220 = load i32, ptr %i.nv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6220) #8, !srcloc !19
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dk, %bb.di, %bb.dg, %bb.dl, %bb.dj
  %.85411 = phi i32 [ %.0.copyload.i6216, %bb.dg ], [ 0, %bb.di ], [ 0, %bb.dj ], [ %.0.copyload.i6216, %bb.dk ], [ %i.nt, %bb.dl ] ; 3 uses
  %.85391 = phi i32 [ %.0.copyload.i6217, %bb.dg ], [ %.0.copyload.i6217, %bb.di ], [ %i.np, %bb.dj ], [ %.0.copyload.i6217, %bb.dk ], [ %.0.copyload.i6220, %bb.dl ] ; 2 uses
  %.not5554 = icmp eq i32 %.85411, 0              ; 4 uses
  %i.nw = select i1 %.not5554, i32 %.85391, i32 %.85411
  %i.nx = select i1 %.not5554, i32 %i.mq, i32 %i.mo
  %i.ny = icmp ugt i32 %i.nw, %i.nx
  br i1 %i.ny, label %bb.ef, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.nz = add i32 %.85411, 2
  %i.oa = select i1 %.not5554, i32 0, i32 %i.nz
  %i.ob = select i1 %.not5554, i32 4, i32 0
  %i.oc = add i32 %i.ob, %.85391
  %i.od = add i32 %i.b, -24
  %i.oe = tail call i32 @w2c_hermes_bool0x20hermes0x3A0x3Avm0x3A0x3AscanInt0x3Chermes0x3A0x3Avm0x3A0x3AStringView0x3A0x3Aconst_iterator0x3E0x28hermes0x3A0x3Avm0x3A0x3AStringView0x3A0x3Aconst_iterator0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AStringView0x3A0x3Aconst_iterator0x2C0x20int0x260x29(ptr noundef nonnull %0, i32 noundef %i.dx, i32 noundef %i.oa, i32 noundef %i.oc, i32 noundef %i.od) #8
  %.not5555 = icmp eq i32 %i.oe, 0
  br i1 %.not5555, label %bb.ef, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %.val6012 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.of = getelementptr inbounds nuw i8, ptr %.val6012, i64 %i.dc
  %.0.copyload.i6221 = load i32, ptr %i.of, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6221) #8, !srcloc !19
  %i.og = sitofp i32 %.0.copyload.i6221 to double
  %i.oh = fmul nnan double %.05356, %i.og         ; 4 uses
  %i.oi = tail call noundef double @llvm.fabs.f64(double %i.oh)
  %i.oj = fcmp olt double %i.oi, f0x41E0000000000000
  br i1 %i.oj, label %bb.dp, label %bb.ds

bb.dp:                                            ; preds = %bb.do
  %i.ok = fcmp ule double %i.oh, f0xC1E0000000200000
  %i.ol = fcmp uge double %i.oh, f0x41E0000000000000
  %.not5558 = or i1 %i.ok, %i.ol
  br i1 %.not5558, label %bb.dq, label %bb.dr, !prof !31

bb.dq:                                            ; preds = %bb.dp
  tail call void @wasm_rt_trap(i32 noundef 2) #9
  unreachable

bb.dr:                                            ; preds = %bb.dp
  %i.om = fptosi double %i.oh to i32
  br label %bb.ds

bb.ds:                                            ; preds = %bb.do, %bb.dr
  %.35341 = phi i32 [ %i.om, %bb.dr ], [ -2147483648, %bb.do ] ; 2 uses
  %.val5778 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.on = getelementptr inbounds nuw i8, ptr %.val5778, i64 %i.dc
  store i32 %.35341, ptr %i.on, align 1
  %.val6011 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.oo = getelementptr inbounds nuw i8, ptr %.val6011, i64 %i.ek
  %.0.copyload.i6222 = load i32, ptr %i.oo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6222) #8, !srcloc !19
  br label %bb.dv

bb.dt:                                            ; preds = %bb.ct
  %i.op = add i32 %.75390, 2
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.cv
  %.sink6610 = phi i64 [ %i.em, %bb.dt ], [ %i.ek, %bb.cv ]
  %.sink6608 = phi i32 [ %i.op, %bb.dt ], [ %i.mf, %bb.cv ]
  %.95412 = phi i32 [ 0, %bb.dt ], [ %i.mf, %bb.cv ]
  %.val5777 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.oq = getelementptr inbounds nuw i8, ptr %.val5777, i64 %.sink6610
  store i32 %.sink6608, ptr %i.oq, align 1
  %.val5776 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.or = getelementptr inbounds nuw i8, ptr %.val5776, i64 %i.dc
  store i32 0, ptr %i.or, align 1
  %.val5775 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.os = getelementptr inbounds nuw i8, ptr %.val5775, i64 %i.da
  store i32 0, ptr %i.os, align 1
  br label %bb.dv

bb.dv:                                            ; preds = %bb.ay, %bb.bc, %bb.ba, %bb.du, %bb.ds
  %.105413 = phi i32 [ 0, %bb.ba ], [ %.95412, %bb.du ], [ %.0.copyload.i6222, %bb.ds ], [ %.25405, %bb.bc ], [ %.25405, %bb.ay ] ; 2 uses
  %.15372 = phi i32 [ 0, %bb.ba ], [ 0, %bb.du ], [ %.35341, %bb.ds ], [ 0, %bb.bc ], [ 0, %bb.ay ]
  %.25367 = phi i32 [ 0, %bb.ba ], [ 0, %bb.du ], [ %.25340, %bb.ds ], [ 0, %bb.bc ], [ 0, %bb.ay ]
  %.25362 = phi i32 [ 0, %bb.ba ], [ %.15361, %bb.du ], [ %.15361, %bb.ds ], [ 0, %bb.bc ], [ 0, %bb.ay ]
  %.val6010 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ot = getelementptr inbounds nuw i8, ptr %.val6010, i64 %i.em
  %.0.copyload.i6223 = load i32, ptr %i.ot, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6223) #8, !srcloc !19
  %.not5560 = icmp eq i32 %.105413, 0             ; 2 uses
  %i.ou = select i1 %.not5560, i32 %.0.copyload.i6223, i32 %.105413
  %i.ov = select i1 %.not5560, i32 %.05378, i32 %.05345
  %.not5561 = icmp eq i32 %i.ou, %i.ov
  br i1 %.not5561, label %bb.dw, label %bb.ef

bb.dw:                                            ; preds = %bb.dv
  %.val6009 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ow = getelementptr inbounds nuw i8, ptr %.val6009, i64 %i.cr
  %.0.copyload.i6224 = load i32, ptr %i.ow, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6224) #8, !srcloc !19
  %i.ox = add i32 %.0.copyload.i6224, -1
  %i.oy = sitofp i32 %i.ox to double              ; 2 uses
  %i.oz = tail call double @w2c_hermes_fmod(ptr noundef nonnull %0, double noundef %i.oy, double noundef 1.200000e+01) #8 ; 2 uses
  %i.pa = fcmp olt double %i.oz, 0.000000e+00
  %i.pb = select i1 %i.pa, double 1.200000e+01, double -0.000000e+00
  %i.pc = fadd double %i.oz, %i.pb                ; 3 uses
  %i.pd = fdiv double %i.oy, 1.200000e+01
  %i.pe = tail call double @llvm.floor.f64(double %i.pd)
  %i.pf = sitofp i32 %.15339 to double
  %i.pg = fadd double %i.pe, %i.pf                ; 6 uses
  %i.ph = tail call double @w2c_hermes_fmod(ptr noundef nonnull %0, double noundef %i.pg, double noundef 4.000000e+00) #8
  %.val6008 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pi = getelementptr inbounds nuw i8, ptr %.val6008, i64 %.pre-phi
  %.0.copyload.i6226 = load i32, ptr %i.pi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6226) #8, !srcloc !19
  %i.pj = fcmp une double %i.ph, 0.000000e+00
  br i1 %i.pj, label %bb.dz, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.pk = tail call double @w2c_hermes_fmod(ptr noundef nonnull %0, double noundef %i.pg, double noundef 1.000000e+02) #8
  %i.pl = fcmp une double %i.pk, 0.000000e+00
  br i1 %i.pl, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.pm = tail call double @w2c_hermes_fmod(ptr noundef nonnull %0, double noundef %i.pg, double noundef 4.000000e+02) #8
  %i.pn = fcmp oeq double %i.pm, 0.000000e+00
  %i.po = select i1 %i.pn, i32 230960, i32 230928
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dx, %bb.dw, %bb.dy
  %.35348 = phi i32 [ 230928, %bb.dw ], [ 230960, %bb.dx ], [ %i.po, %bb.dy ]
  %i.pp = sitofp i32 %.0.copyload.i6226 to double
  %.val6007 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pq = getelementptr inbounds nuw i8, ptr %.val6007, i64 %i.cw
  %.0.copyload.i6227 = load i32, ptr %i.pq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6227) #8, !srcloc !19
  %.val6006 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pr = getelementptr inbounds nuw i8, ptr %.val6006, i64 %i.cu
  %.0.copyload.i6228 = load i32, ptr %i.pr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6228) #8, !srcloc !19
  %.val6005 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ps = getelementptr inbounds nuw i8, ptr %.val6005, i64 %i.cy
  %.0.copyload.i6229 = load i32, ptr %i.ps, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6229) #8, !srcloc !19
  %10 = insertelement <2 x double> poison, double %i.pg, i64 0
  %11 = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> zeroinitializer
  %12 = fadd <2 x double> %11, <double -1.601000e+03, double -1.901000e+03>
  %i.pt = fadd double %i.pg, -1.970000e+03
  %i.pu = fmul double %i.pt, 3.650000e+02
  %i.pv = fadd double %i.pg, -1.969000e+03
  %i.pw = fmul double %i.pv, 2.500000e-01
  %i.px = tail call double @llvm.floor.f64(double %i.pw)
  %i.py = fadd double %i.pu, %i.px
  %13 = fdiv <2 x double> %12, <double 4.000000e+02, double 1.000000e+02> ; 2 uses
  %14 = extractelement <2 x double> %13, i64 0
  %15 = tail call double @llvm.floor.f64(double %14)
  %16 = extractelement <2 x double> %13, i64 1
  %i.pz = tail call double @llvm.floor.f64(double %16)
  %i.qa = fsub double %i.py, %i.pz
  %i.qb = fadd double %15, %i.qa
  %i.qc = fmul double %i.qb, 8.640000e+07
  %i.qd = fdiv double %i.qc, 8.640000e+07         ; 3 uses
  %i.qe = fcmp uno double %i.qd, 0.000000e+00
  br i1 %i.qe, label %bb.ea, label %bb.eb, !prof !31

bb.ea:                                            ; preds = %bb.dz
  %i.qf = bitcast double %i.qd to i64
  %i.qg = or i64 %i.qf, 9221120237041090560
  %i.qh = bitcast i64 %i.qg to double
  br label %wasm_floor.exit6234

bb.eb:                                            ; preds = %bb.dz
  %i.qi = tail call double @llvm.floor.f64(double %i.qd)
  br label %wasm_floor.exit6234

wasm_floor.exit6234:                              ; preds = %bb.ea, %bb.eb
  %.0.i6233 = phi double [ %i.qh, %bb.ea ], [ %i.qi, %bb.eb ]
  %i.qj = fcmp olt double %i.pc, f0x41F0000000000000
  %i.qk = fcmp oge double %i.pc, 0.000000e+00
  %i.ql = and i1 %i.qj, %i.qk
  %i.qm = fptoui double %i.pc to i32
  %i.qn = shl i32 %i.qm, 1
  %.25335 = select i1 %i.ql, i32 %i.qn, i32 0
  %i.qo = add i32 %.35348, %.25335
  %i.qp = zext i32 %i.qo to i64
  %.val6140 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qq = getelementptr inbounds nuw i8, ptr %.val6140, i64 %i.qp
  %.0.copyload.i6235 = load i16, ptr %i.qq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i6235) #8, !srcloc !24
  %i.qr = uitofp i16 %.0.copyload.i6235 to double
  %i.qs = fadd double %.0.i6233, %i.qr
  %i.qt = fadd double %i.qs, %i.pp
  %i.qu = fadd double %i.qt, -1.000000e+00        ; 2 uses
  %i.qv = tail call noundef double @llvm.fabs.f64(double %i.qu)
  %i.qw = fcmp ueq double %i.qv, +inf
  br i1 %i.qw, label %bb.ef, label %bb.ec

bb.ec:                                            ; preds = %wasm_floor.exit6234
  %i.qx = sitofp i32 %.0.copyload.i6229 to double
  %i.qy = fmul nnan double %i.qx, 1.000000e+03
  %i.qz = sub i32 %.0.copyload.i6228, %.25367
  %i.ra = sitofp i32 %i.qz to double
  %i.rb = fmul nnan double %i.ra, 3.600000e+06
  %i.rc = sub i32 %.0.copyload.i6227, %.15372
  %i.rd = sitofp i32 %i.rc to double
  %i.re = fmul nnan double %i.rd, 6.000000e+04
  %i.rf = fadd double %i.re, %i.rb
  %i.rg = fadd double %i.rf, %i.qy
  %i.rh = sitofp i32 %.25362 to double
  %i.ri = fadd double %i.rg, %i.rh                ; 2 uses
  %i.rj = tail call noundef double @llvm.fabs.f64(double %i.ri)
  %i.rk = fcmp ueq double %i.rj, +inf
  br i1 %i.rk, label %bb.ef, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.rl = fmul nnan double %i.qu, 8.640000e+07
  %i.rm = fadd double %i.ri, %i.rl
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.cr
  %.2 = phi double [ %i.rm, %bb.ed ], [ %i.ma, %bb.cr ] ; 2 uses
  %i.rn = fcmp ord double %.2, 0.000000e+00
  br i1 %i.rn, label %.loopexit6500, label %bb.ef

bb.ef:                                            ; preds = %bb.ct, %bb.cu, %bb.ee, %bb.ec, %wasm_floor.exit6234, %bb.dv, %bb.dn, %bb.dm, %bb.db, %bb.da, %wasm_floor.exit, %bb.cf, %bb.cb, %bb.bu, %bb.bn, %bb.bl, %bb.bj, %bb.bh, %bb.bg, %bb.aw, %bb.ap, %bb.ae
  %.val6004 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ro = getelementptr inbounds nuw i8, ptr %.val6004, i64 %i.i
  %.0.copyload.i6236 = load i32, ptr %i.ro, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6236) #8, !srcloc !19
  %i.rp = add nuw nsw i64 %.pre-phi, 8            ; 16 uses
  %.val5774 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rq = getelementptr inbounds nuw i8, ptr %.val5774, i64 %i.rp
  store i32 %.0.copyload.i6236, ptr %i.rq, align 1
  %.val6108 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rr = getelementptr inbounds nuw i8, ptr %.val6108, i64 %i.e
  %.0.copyload.i6237 = load i64, ptr %i.rr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i6237) #8, !srcloc !20
  %.val6054 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rs = getelementptr inbounds nuw i8, ptr %.val6054, i64 %.pre-phi
  store i64 %.0.copyload.i6237, ptr %i.rs, align 1
  %.val6003 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rt = getelementptr inbounds nuw i8, ptr %.val6003, i64 %i.i
  %.0.copyload.i6238 = load i32, ptr %i.rt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6238) #8, !srcloc !19
  %.val5773 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ru = getelementptr inbounds nuw i8, ptr %.val5773, i64 %.pre-phi
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 104
  store i32 %.0.copyload.i6238, ptr %i.rv, align 1
  %.val6107 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rw = getelementptr inbounds nuw i8, ptr %.val6107, i64 %i.e
  %.0.copyload.i6239 = load i64, ptr %i.rw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i6239) #8, !srcloc !20
  %.val6053 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rx = getelementptr inbounds nuw i8, ptr %.val6053, i64 %.pre-phi
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 96
  store i64 %.0.copyload.i6239, ptr %i.ry, align 1
  %.val5772 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rz = getelementptr inbounds nuw i8, ptr %.val5772, i64 %i.dc
  store i32 1, ptr %i.rz, align 1
  %i.sa = add nuw nsw i64 %.pre-phi, 84           ; 3 uses
  %.val5771 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sb = getelementptr inbounds nuw i8, ptr %.val5771, i64 %i.sa
  store i32 1, ptr %i.sb, align 1
  %i.sc = add nuw nsw i64 %.pre-phi, 80           ; 3 uses
  %.val5770 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sd = getelementptr inbounds nuw i8, ptr %.val5770, i64 %i.sc
  store i32 0, ptr %i.sd, align 1
  %i.se = add nuw nsw i64 %.pre-phi, 76           ; 3 uses
  %.val5769 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sf = getelementptr inbounds nuw i8, ptr %.val5769, i64 %i.se
  store i32 0, ptr %i.sf, align 1
  %i.sg = add nuw nsw i64 %.pre-phi, 72           ; 3 uses
  %.val5768 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sh = getelementptr inbounds nuw i8, ptr %.val5768, i64 %i.sg
  store i32 0, ptr %i.sh, align 1
  %i.si = add nuw nsw i64 %.pre-phi, 68           ; 4 uses
  %.val5767 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sj = getelementptr inbounds nuw i8, ptr %.val5767, i64 %i.si
  store i32 0, ptr %i.sj, align 1
  %i.sk = add nuw nsw i64 %.pre-phi, 64           ; 3 uses
  %.val5766 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sl = getelementptr inbounds nuw i8, ptr %.val5766, i64 %i.sk
  store i32 0, ptr %i.sl, align 1
  %i.sm = add nuw nsw i64 %.pre-phi, 4            ; 8 uses
  %.val6002 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sn = getelementptr inbounds nuw i8, ptr %.val6002, i64 %i.sm
  %.0.copyload.i6240 = load i32, ptr %i.sn, align 1 ; 8 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6240) #8, !srcloc !19
  %i.so = and i32 %.0.copyload.i6240, 1073741824
  %.val6001 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sp = getelementptr inbounds nuw i8, ptr %.val6001, i64 %.pre-phi
  %.0.copyload.i6241 = load i32, ptr %i.sp, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6241) #8, !srcloc !19
  %i.sq = icmp slt i32 %.0.copyload.i6240, 0
  %.not5565 = icmp eq i32 %i.so, 0                ; 2 uses
  br i1 %i.sq, label %bb.eg, label %bb.em

bb.eg:                                            ; preds = %bb.ef
  br i1 %.not5565, label %bb.es, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.sr = zext i32 %.0.copyload.i6241 to i64      ; 2 uses
  %.val6000 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ss = getelementptr inbounds nuw i8, ptr %.val6000, i64 %i.sr
  %.0.copyload.i6242 = load i32, ptr %i.ss, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6242) #8, !srcloc !19
  %i.st = zext i32 %.0.copyload.i6242 to i64      ; 4 uses
  %.val5999 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.su = getelementptr inbounds nuw i8, ptr %.val5999, i64 %i.st
  %.0.copyload.i6243 = load i32, ptr %i.su, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6243) #8, !srcloc !19
  %i.sv = icmp ugt i32 %.0.copyload.i6243, 150994943
  br i1 %i.sv, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %.val5998 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sw = getelementptr inbounds nuw i8, ptr %.val5998, i64 %i.st
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 12
  %.0.copyload.i6244 = load i32, ptr %i.sx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6244) #8, !srcloc !19
  %i.sy = add i32 %.0.copyload.i6242, 12
  %.val6100 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sz = getelementptr inbounds nuw i8, ptr %.val6100, i64 %i.st
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 23
  %.0.copyload.i6245 = load i8, ptr %i.ta, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i6245) #8, !srcloc !22
  %i.tb = icmp slt i8 %.0.copyload.i6245, 0
  %i.tc = select i1 %i.tb, i32 %.0.copyload.i6244, i32 %i.sy
  br label %bb.eu

bb.ej:                                            ; preds = %bb.eh
  %i.td = and i32 %.0.copyload.i6243, 251658240   ; 2 uses
  %i.te = icmp eq i32 %i.td, 67108864
  br i1 %i.te, label %bb.et, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.tf = add i32 %.0.copyload.i6242, 12
  %i.tg = icmp eq i32 %i.td, 134217728
  br i1 %i.tg, label %bb.eu, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %.val5997 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.th = getelementptr inbounds nuw i8, ptr %.val5997, i64 %i.st
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 8
  %.0.copyload.i6246 = load i32, ptr %i.ti, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6246) #8, !srcloc !19
  %i.tj = zext i32 %.0.copyload.i6246 to i64      ; 2 uses
  %.val5996 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.tk = getelementptr inbounds nuw i8, ptr %.val5996, i64 %i.tj
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 12
  %.0.copyload.i6247 = load i32, ptr %i.tl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6247) #8, !srcloc !19
  %i.tm = add i32 %.0.copyload.i6246, 12
  %.val6099 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.tn = getelementptr inbounds nuw i8, ptr %.val6099, i64 %i.tj
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 23
  %.0.copyload.i6248 = load i8, ptr %i.to, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i6248) #8, !srcloc !22
  %i.tp = icmp slt i8 %.0.copyload.i6248, 0
  %i.tq = select i1 %i.tp, i32 %.0.copyload.i6247, i32 %i.tm
end_hunk_1
begin_hunk_2_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AparseDate0x28hermes0x3A0x3Avm0x3A0x3AStringView0x2C0x20hermes0x3A0x3Avm0x3A0x3ALocalTimeOffsetCache0x260x29:bb.a
  %i.bcg = getelementptr inbounds nuw i8, ptr %i.bcf, i64 8
  %.0.copyload.i6457 = load i32, ptr %i.bcg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6457) #8, !srcloc !19
  %i.bch = zext i32 %.0.copyload.i6457 to i64     ; 2 uses
  %.val5845 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bci = getelementptr inbounds nuw i8, ptr %.val5845, i64 %i.bch
  %i.bcj = getelementptr inbounds nuw i8, ptr %i.bci, i64 12
  %.0.copyload.i6458 = load i32, ptr %i.bcj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6458) #8, !srcloc !19
  %i.bck = add i32 %.0.copyload.i6457, 12
  %.val6057 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bcl = getelementptr inbounds nuw i8, ptr %.val6057, i64 %i.bch
  %i.bcm = getelementptr inbounds nuw i8, ptr %i.bcl, i64 23
  %.0.copyload.i6459 = load i8, ptr %i.bcm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i6459) #8, !srcloc !22
  %i.bcn = icmp slt i8 %.0.copyload.i6459, 0
  %i.bco = select i1 %i.bcn, i32 %.0.copyload.i6458, i32 %i.bck
  br label %bb.pb

bb.pb:                                            ; preds = %bb.ou, %bb.pa, %bb.oz, %bb.oy, %bb.ow
  %.45375 = phi i32 [ %.35374, %bb.ou ], [ %i.bcb, %bb.ow ], [ %i.bco, %bb.pa ], [ %i.bcd, %bb.oy ], [ %i.bce, %bb.oz ]
  %.val5844 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bcp = getelementptr inbounds nuw i8, ptr %.val5844, i64 %i.rp
  %.0.copyload.i6460 = load i32, ptr %i.bcp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6460) #8, !srcloc !19
  %i.bcq = and i32 %.25380, 1073741823
  %i.bcr = add i32 %.45375, %i.bcq
  %i.bcs = add i32 %i.bcr, %.0.copyload.i6460
  br label %bb.pk

bb.pc:                                            ; preds = %bb.ot
  br i1 %.not5688, label %bb.pj, label %bb.pd

bb.pd:                                            ; preds = %bb.pc
  %i.bct = zext i32 %.35374 to i64
  %.val5843 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bcu = getelementptr inbounds nuw i8, ptr %.val5843, i64 %i.bct
  %.0.copyload.i6461 = load i32, ptr %i.bcu, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6461) #8, !srcloc !19
  %i.bcv = zext i32 %.0.copyload.i6461 to i64     ; 4 uses
  %.val5842 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bcw = getelementptr inbounds nuw i8, ptr %.val5842, i64 %i.bcv
  %.0.copyload.i6462 = load i32, ptr %i.bcw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6462) #8, !srcloc !19
  %i.bcx = icmp ugt i32 %.0.copyload.i6462, 150994943
  br i1 %i.bcx, label %bb.pe, label %bb.pf

bb.pe:                                            ; preds = %bb.pd
  %.val5841 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bcy = getelementptr inbounds nuw i8, ptr %.val5841, i64 %i.bcv
  %i.bcz = getelementptr inbounds nuw i8, ptr %i.bcy, i64 12
  %.0.copyload.i6463 = load i32, ptr %i.bcz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6463) #8, !srcloc !19
  %i.bda = add i32 %.0.copyload.i6461, 12
  %.val6056 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bdb = getelementptr inbounds nuw i8, ptr %.val6056, i64 %i.bcv
  %i.bdc = getelementptr inbounds nuw i8, ptr %i.bdb, i64 23
  %.0.copyload.i6464 = load i8, ptr %i.bdc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i6464) #8, !srcloc !22
  %i.bdd = icmp slt i8 %.0.copyload.i6464, 0
  %i.bde = select i1 %i.bdd, i32 %.0.copyload.i6463, i32 %i.bda
  br label %bb.pj

bb.pf:                                            ; preds = %bb.pd
  %i.bdf = and i32 %.0.copyload.i6462, 251658240
  switch i32 %i.bdf, label %bb.pi [
    i32 50331648, label %bb.ph
    i32 117440512, label %bb.pg
  ]

bb.pg:                                            ; preds = %bb.pf
  %i.bdg = add i32 %.0.copyload.i6461, 12
  br label %bb.pj

bb.ph:                                            ; preds = %bb.pf
  %i.bdh = add i32 %.0.copyload.i6461, 8
  br label %bb.pj

bb.pi:                                            ; preds = %bb.pf
  %.val5840 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bdi = getelementptr inbounds nuw i8, ptr %.val5840, i64 %i.bcv
  %i.bdj = getelementptr inbounds nuw i8, ptr %i.bdi, i64 8
  %.0.copyload.i6465 = load i32, ptr %i.bdj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6465) #8, !srcloc !19
  %i.bdk = zext i32 %.0.copyload.i6465 to i64     ; 2 uses
  %.val5839 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bdl = getelementptr inbounds nuw i8, ptr %.val5839, i64 %i.bdk
  %i.bdm = getelementptr inbounds nuw i8, ptr %i.bdl, i64 12
  %.0.copyload.i6466 = load i32, ptr %i.bdm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6466) #8, !srcloc !19
  %i.bdn = add i32 %.0.copyload.i6465, 12
  %.val6055 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bdo = getelementptr inbounds nuw i8, ptr %.val6055, i64 %i.bdk
  %i.bdp = getelementptr inbounds nuw i8, ptr %i.bdo, i64 23
  %.0.copyload.i6467 = load i8, ptr %i.bdp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i6467) #8, !srcloc !22
  %i.bdq = icmp slt i8 %.0.copyload.i6467, 0
  %i.bdr = select i1 %i.bdq, i32 %.0.copyload.i6466, i32 %i.bdn
  br label %bb.pj

bb.pj:                                            ; preds = %bb.pc, %bb.pi, %bb.ph, %bb.pg, %bb.pe
  %.55376 = phi i32 [ %.35374, %bb.pc ], [ %i.bde, %bb.pe ], [ %i.bdr, %bb.pi ], [ %i.bdg, %bb.pg ], [ %i.bdh, %bb.ph ]
  %i.bds = shl nuw i32 %.25380, 1
  %i.bdt = and i32 %i.bds, 2147483646
  %i.bdu = add i32 %.55376, %i.bdt
  %.val5838 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bdv = getelementptr inbounds nuw i8, ptr %.val5838, i64 %i.rp
  %.0.copyload.i6468 = load i32, ptr %i.bdv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6468) #8, !srcloc !19
  %i.bdw = shl i32 %.0.copyload.i6468, 1
  %i.bdx = add i32 %i.bdu, %i.bdw
  br label %bb.pk

bb.pk:                                            ; preds = %bb.pj, %bb.pb
  %.35381 = phi i32 [ %i.bcs, %bb.pb ], [ 0, %bb.pj ]
  %.65377 = phi i32 [ 0, %bb.pb ], [ %i.bdx, %bb.pj ]
  %.val5837 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bdy = getelementptr inbounds nuw i8, ptr %.val5837, i64 %i.cu
  %.0.copyload.i6469 = load i32, ptr %i.bdy, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6469) #8, !srcloc !19
  %.val5836 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bdz = getelementptr inbounds nuw i8, ptr %.val5836, i64 %i.ze
  %.0.copyload.i6470 = load i32, ptr %i.bdz, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6470) #8, !srcloc !19
  %.not5691 = icmp eq i32 %.0.copyload.i6469, 0   ; 3 uses
  %i.bea = select i1 %.not5691, i32 %.0.copyload.i6470, i32 %.0.copyload.i6469
  %i.beb = select i1 %.not5691, i32 %.65377, i32 %.35381
  %i.bec = icmp eq i32 %i.bea, %i.beb
  br i1 %i.bec, label %.loopexit6500, label %bb.pl

bb.pl:                                            ; preds = %bb.pk
  %.val6129 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  br i1 %.not5691, label %bb.pm, label %bb.po

bb.pm:                                            ; preds = %bb.pl
  %i.bed = zext i32 %.0.copyload.i6470 to i64
  %i.bee = getelementptr inbounds nuw i8, ptr %.val6129, i64 %i.bed
  %.0.copyload.i6471 = load i16, ptr %i.bee, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i6471) #8, !srcloc !24
  %.not5693 = icmp eq i16 %.0.copyload.i6471, 41
  br i1 %.not5693, label %bb.pn, label %.loopexit6500

bb.pn:                                            ; preds = %bb.pm
  %i.bef = add i32 %.0.copyload.i6470, 2
  br label %bb.pq

bb.po:                                            ; preds = %bb.pl
  %i.beg = zext i32 %.0.copyload.i6469 to i64
  %i.beh = getelementptr inbounds nuw i8, ptr %.val6129, i64 %i.beg
  %.0.copyload.i6472 = load i8, ptr %i.beh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i6472) #8, !srcloc !21
  %.not5692 = icmp eq i8 %.0.copyload.i6472, 41
  br i1 %.not5692, label %bb.pp, label %.loopexit6500

bb.pp:                                            ; preds = %bb.po
  %i.bei = add i32 %.0.copyload.i6469, 1          ; 2 uses
  br label %bb.pq

bb.pq:                                            ; preds = %bb.pp, %bb.pn
  %.sink6631 = phi i64 [ %i.cu, %bb.pp ], [ %i.ze, %bb.pn ]
  %.sink6629 = phi i32 [ %i.bei, %bb.pp ], [ %i.bef, %bb.pn ]
  %.26 = phi i32 [ %i.bei, %bb.pp ], [ 0, %bb.pn ]
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bej = getelementptr inbounds nuw i8, ptr %.val, i64 %.sink6631
  store i32 %.sink6629, ptr %i.bej, align 1
  %.val5835 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bek = getelementptr inbounds nuw i8, ptr %.val5835, i64 %i.ze
  %.0.copyload.i6473 = load i32, ptr %i.bek, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6473) #8, !srcloc !19
  br label %bb.pr

bb.pr:                                            ; preds = %bb.pq, %bb.mr
  %.27 = phi i32 [ %.26, %bb.pq ], [ %.0.copyload.i6408, %bb.mr ] ; 2 uses
  %.45382 = phi i32 [ %.0.copyload.i6473, %bb.pq ], [ %.0.copyload.i6409, %bb.mr ]
  %.not5694 = icmp eq i32 %.27, 0                 ; 2 uses
  %i.bel = select i1 %.not5694, i32 %.45382, i32 %.27
  %i.bem = select i1 %.not5694, i32 %.05364, i32 %.65351
  %.not5695 = icmp eq i32 %i.bel, %i.bem
  br i1 %.not5695, label %bb.ps, label %.loopexit6500

bb.ps:                                            ; preds = %bb.kk, %bb.pr
  %.105402 = phi i32 [ %.8, %bb.pr ], [ %.65398, %bb.kk ]
  %.6 = phi i32 [ %.9, %bb.pr ], [ 0, %bb.kk ]
  %.val5834 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ben = getelementptr inbounds nuw i8, ptr %.val5834, i64 %i.dc
  %.0.copyload.i6474 = load i32, ptr %i.ben, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6474) #8, !srcloc !19
  %i.beo = add i32 %.0.copyload.i6474, -1
  %i.bep = sitofp i32 %i.beo to double            ; 2 uses
  %i.beq = tail call double @w2c_hermes_fmod(ptr noundef nonnull %0, double noundef %i.bep, double noundef 1.200000e+01) #8 ; 2 uses
  %i.ber = fcmp olt double %i.beq, 0.000000e+00
  %i.bes = select i1 %i.ber, double 1.200000e+01, double -0.000000e+00
  %i.bet = fadd double %i.beq, %i.bes             ; 3 uses
  %i.beu = fdiv double %i.bep, 1.200000e+01
  %i.bev = tail call double @llvm.floor.f64(double %i.beu)
  %.val5833 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bew = getelementptr inbounds nuw i8, ptr %.val5833, i64 %i.da
  %.0.copyload.i6476 = load i32, ptr %i.bew, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6476) #8, !srcloc !19
  %i.bex = sitofp i32 %.0.copyload.i6476 to double
  %i.bey = fadd double %i.bev, %i.bex             ; 6 uses
  %i.bez = tail call double @w2c_hermes_fmod(ptr noundef nonnull %0, double noundef %i.bey, double noundef 4.000000e+00) #8
  %.val5832 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bfa = getelementptr inbounds nuw i8, ptr %.val5832, i64 %i.sa
  %.0.copyload.i6477 = load i32, ptr %i.bfa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6477) #8, !srcloc !19
  %i.bfb = fcmp une double %i.bez, 0.000000e+00
  br i1 %i.bfb, label %bb.pv, label %bb.pt

bb.pt:                                            ; preds = %bb.ps
  %i.bfc = tail call double @w2c_hermes_fmod(ptr noundef nonnull %0, double noundef %i.bey, double noundef 1.000000e+02) #8
  %i.bfd = fcmp une double %i.bfc, 0.000000e+00
  br i1 %i.bfd, label %bb.pv, label %bb.pu

bb.pu:                                            ; preds = %bb.pt
  %i.bfe = tail call double @w2c_hermes_fmod(ptr noundef nonnull %0, double noundef %i.bey, double noundef 4.000000e+02) #8
  %i.bff = fcmp oeq double %i.bfe, 0.000000e+00
  %i.bfg = select i1 %i.bff, i32 230960, i32 230928
  br label %bb.pv

bb.pv:                                            ; preds = %bb.pt, %bb.ps, %bb.pu
  %.14 = phi i32 [ 230928, %bb.ps ], [ 230960, %bb.pt ], [ %i.bfg, %bb.pu ]
  %i.bfh = sitofp i32 %.0.copyload.i6477 to double
  %.val5831 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bfi = getelementptr inbounds nuw i8, ptr %.val5831, i64 %i.sg
  %.0.copyload.i6478 = load i32, ptr %i.bfi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6478) #8, !srcloc !19
  %i.bfj = sitofp i32 %.0.copyload.i6478 to double
  %i.bfk = fmul nnan double %i.bfj, 1.000000e+03
  %.val5830 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bfl = getelementptr inbounds nuw i8, ptr %.val5830, i64 %i.sc
  %.0.copyload.i6479 = load i32, ptr %i.bfl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6479) #8, !srcloc !19
  %i.bfm = sub i32 %.0.copyload.i6479, %.105402
  %i.bfn = sitofp i32 %i.bfm to double
  %i.bfo = fmul nnan double %i.bfn, 3.600000e+06
  %.val5829 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bfp = getelementptr inbounds nuw i8, ptr %.val5829, i64 %i.se
  %.0.copyload.i6480 = load i32, ptr %i.bfp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6480) #8, !srcloc !19
  %i.bfq = sub i32 %.0.copyload.i6480, %.6
  %i.bfr = sitofp i32 %i.bfq to double
  %i.bfs = fmul nnan double %i.bfr, 6.000000e+04
  %i.bft = fadd double %i.bfo, %i.bfs
  %i.bfu = fadd double %i.bfk, %i.bft
  %i.bfv = fadd double %i.bfu, 0.000000e+00       ; 2 uses
  %17 = insertelement <2 x double> poison, double %i.bey, i64 0
  %18 = shufflevector <2 x double> %17, <2 x double> poison, <2 x i32> zeroinitializer
  %19 = fadd <2 x double> %18, <double -1.601000e+03, double -1.901000e+03>
  %i.bfw = fadd double %i.bey, -1.970000e+03
  %i.bfx = fmul double %i.bfw, 3.650000e+02
  %i.bfy = fadd double %i.bey, -1.969000e+03
  %i.bfz = fmul double %i.bfy, 2.500000e-01
  %i.bga = tail call double @llvm.floor.f64(double %i.bfz)
  %i.bgb = fadd double %i.bfx, %i.bga
  %20 = fdiv <2 x double> %19, <double 4.000000e+02, double 1.000000e+02> ; 2 uses
  %21 = extractelement <2 x double> %20, i64 0
  %22 = tail call double @llvm.floor.f64(double %21)
  %23 = extractelement <2 x double> %20, i64 1
  %i.bgc = tail call double @llvm.floor.f64(double %23)
  %i.bgd = fsub double %i.bgb, %i.bgc
  %i.bge = fadd double %22, %i.bgd
  %i.bgf = fmul double %i.bge, 8.640000e+07
  %i.bgg = fdiv double %i.bgf, 8.640000e+07       ; 3 uses
  %i.bgh = fcmp uno double %i.bgg, 0.000000e+00
  br i1 %i.bgh, label %bb.pw, label %bb.px, !prof !31

bb.pw:                                            ; preds = %bb.pv
  %i.bgi = bitcast double %i.bgg to i64
  %i.bgj = or i64 %i.bgi, 9221120237041090560
  %i.bgk = bitcast i64 %i.bgj to double
  br label %wasm_floor.exit6485

bb.px:                                            ; preds = %bb.pv
  %i.bgl = tail call double @llvm.floor.f64(double %i.bgg)
  br label %wasm_floor.exit6485

wasm_floor.exit6485:                              ; preds = %bb.pw, %bb.px
  %.0.i6484 = phi double [ %i.bgk, %bb.pw ], [ %i.bgl, %bb.px ]
  %i.bgm = fcmp olt double %i.bet, f0x41F0000000000000
  %i.bgn = fcmp oge double %i.bet, 0.000000e+00
  %i.bgo = and i1 %i.bgm, %i.bgn
  %i.bgp = fptoui double %i.bet to i32
  %i.bgq = shl i32 %i.bgp, 1
  %.35336 = select i1 %i.bgo, i32 %i.bgq, i32 0
  %i.bgr = add i32 %.14, %.35336
  %i.bgs = zext i32 %i.bgr to i64
  %.val6128 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bgt = getelementptr inbounds nuw i8, ptr %.val6128, i64 %i.bgs
  %.0.copyload.i6486 = load i16, ptr %i.bgt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i6486) #8, !srcloc !24
  %i.bgu = uitofp i16 %.0.copyload.i6486 to double
  %i.bgv = fadd double %.0.i6484, %i.bgu
  %i.bgw = fadd double %i.bgv, %i.bfh
  %i.bgx = fadd double %i.bgw, -1.000000e+00      ; 2 uses
  %i.bgy = fmul double %i.bgx, 8.640000e+07
  %i.bgz = fadd double %i.bfv, %i.bgy
  %i.bha = tail call noundef double @llvm.fabs.f64(double %i.bfv)
  %i.bhb = fcmp one double %i.bha, +inf
  %i.bhc = tail call noundef double @llvm.fabs.f64(double %i.bgx)
  %i.bhd = fcmp one double %i.bhc, +inf
  %i.bhe = and i1 %i.bhb, %i.bhd
  %i.bhf = select i1 %i.bhe, double %i.bgz, double +qnan
  br label %.loopexit6500

bb.py:                                            ; preds = %bb.js, %.split6516.us, %.split6524.us
  %.val5828 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bhg = getelementptr inbounds nuw i8, ptr %.val5828, i64 %i.dc
  %.0.copyload.i6487 = load i32, ptr %i.bhg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6487) #8, !srcloc !19
  %i.bhh = add i32 %.0.copyload.i6487, -1
  %i.bhi = sitofp i32 %i.bhh to double            ; 2 uses
  %i.bhj = tail call double @w2c_hermes_fmod(ptr noundef nonnull %0, double noundef %i.bhi, double noundef 1.200000e+01) #8 ; 2 uses
  %i.bhk = fcmp olt double %i.bhj, 0.000000e+00
  %i.bhl = select i1 %i.bhk, double 1.200000e+01, double -0.000000e+00
  %i.bhm = fadd double %i.bhj, %i.bhl             ; 3 uses
  %i.bhn = fdiv double %i.bhi, 1.200000e+01
  %i.bho = tail call double @llvm.floor.f64(double %i.bhn)
  %.val5827 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bhp = getelementptr inbounds nuw i8, ptr %.val5827, i64 %i.da
  %.0.copyload.i6489 = load i32, ptr %i.bhp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6489) #8, !srcloc !19
  %i.bhq = sitofp i32 %.0.copyload.i6489 to double
  %i.bhr = fadd double %i.bho, %i.bhq             ; 6 uses
  %i.bhs = tail call double @w2c_hermes_fmod(ptr noundef nonnull %0, double noundef %i.bhr, double noundef 4.000000e+00) #8
  %.val5826 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bht = getelementptr inbounds nuw i8, ptr %.val5826, i64 %i.sa
  %.0.copyload.i6490 = load i32, ptr %i.bht, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6490) #8, !srcloc !19
  %i.bhu = fcmp une double %i.bhs, 0.000000e+00
  br i1 %i.bhu, label %bb.qb, label %bb.pz

bb.pz:                                            ; preds = %bb.py
  %i.bhv = tail call double @w2c_hermes_fmod(ptr noundef nonnull %0, double noundef %i.bhr, double noundef 1.000000e+02) #8
  %i.bhw = fcmp une double %i.bhv, 0.000000e+00
  br i1 %i.bhw, label %bb.qb, label %bb.qa

bb.qa:                                            ; preds = %bb.pz
  %i.bhx = tail call double @w2c_hermes_fmod(ptr noundef nonnull %0, double noundef %i.bhr, double noundef 4.000000e+02) #8
  %i.bhy = fcmp oeq double %i.bhx, 0.000000e+00
  %i.bhz = select i1 %i.bhy, i32 230960, i32 230928
  br label %bb.qb

bb.qb:                                            ; preds = %bb.pz, %bb.py, %bb.qa
  %.15 = phi i32 [ 230928, %bb.py ], [ 230960, %bb.pz ], [ %i.bhz, %bb.qa ]
  %i.bia = sitofp i32 %.0.copyload.i6490 to double
  %.val5825 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bib = getelementptr inbounds nuw i8, ptr %.val5825, i64 %i.sg
  %.0.copyload.i6491 = load i32, ptr %i.bib, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6491) #8, !srcloc !19
  %i.bic = sitofp i32 %.0.copyload.i6491 to double
  %i.bid = fmul nnan double %i.bic, 1.000000e+03
  %.val5824 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bie = getelementptr inbounds nuw i8, ptr %.val5824, i64 %i.sc
  %.0.copyload.i6492 = load i32, ptr %i.bie, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6492) #8, !srcloc !19
  %i.bif = sitofp i32 %.0.copyload.i6492 to double
  %i.big = fmul nnan double %i.bif, 3.600000e+06
  %.val5823 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bih = getelementptr inbounds nuw i8, ptr %.val5823, i64 %i.se
  %.0.copyload.i6493 = load i32, ptr %i.bih, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6493) #8, !srcloc !19
  %i.bii = sitofp i32 %.0.copyload.i6493 to double
  %i.bij = fmul nnan double %i.bii, 6.000000e+04
  %i.bik = fadd double %i.big, %i.bij
  %i.bil = fadd double %i.bid, %i.bik
  %i.bim = fadd double %i.bil, 0.000000e+00       ; 2 uses
  %24 = insertelement <2 x double> poison, double %i.bhr, i64 0
  %25 = shufflevector <2 x double> %24, <2 x double> poison, <2 x i32> zeroinitializer
  %26 = fadd <2 x double> %25, <double -1.601000e+03, double -1.901000e+03>
  %i.bin = fadd double %i.bhr, -1.970000e+03
  %i.bio = fmul double %i.bin, 3.650000e+02
  %i.bip = fadd double %i.bhr, -1.969000e+03
  %i.biq = fmul double %i.bip, 2.500000e-01
  %i.bir = tail call double @llvm.floor.f64(double %i.biq)
  %i.bis = fadd double %i.bio, %i.bir
  %27 = fdiv <2 x double> %26, <double 4.000000e+02, double 1.000000e+02> ; 2 uses
  %28 = extractelement <2 x double> %27, i64 0
  %29 = tail call double @llvm.floor.f64(double %28)
  %30 = extractelement <2 x double> %27, i64 1
  %i.bit = tail call double @llvm.floor.f64(double %30)
  %i.biu = fsub double %i.bis, %i.bit
  %i.biv = fadd double %29, %i.biu
  %i.biw = fmul double %i.biv, 8.640000e+07
  %i.bix = fdiv double %i.biw, 8.640000e+07       ; 3 uses
  %i.biy = fcmp uno double %i.bix, 0.000000e+00
  br i1 %i.biy, label %bb.qc, label %bb.qd, !prof !31

bb.qc:                                            ; preds = %bb.qb
  %i.biz = bitcast double %i.bix to i64
  %i.bja = or i64 %i.biz, 9221120237041090560
  %i.bjb = bitcast i64 %i.bja to double
  br label %wasm_floor.exit6498

bb.qd:                                            ; preds = %bb.qb
  %i.bjc = tail call double @llvm.floor.f64(double %i.bix)
  br label %wasm_floor.exit6498

wasm_floor.exit6498:                              ; preds = %bb.qc, %bb.qd
  %.0.i6497 = phi double [ %i.bjb, %bb.qc ], [ %i.bjc, %bb.qd ]
  %i.bjd = fcmp olt double %i.bhm, f0x41F0000000000000
  %i.bje = fcmp oge double %i.bhm, 0.000000e+00
  %i.bjf = and i1 %i.bjd, %i.bje
  %i.bjg = fptoui double %i.bhm to i32
  %i.bjh = shl i32 %i.bjg, 1
  %.45337 = select i1 %i.bjf, i32 %i.bjh, i32 0
  %i.bji = add i32 %.15, %.45337
  %i.bjj = zext i32 %i.bji to i64
  %.val6127 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bjk = getelementptr inbounds nuw i8, ptr %.val6127, i64 %i.bjj
  %.0.copyload.i6499 = load i16, ptr %i.bjk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i6499) #8, !srcloc !24
  %i.bjl = uitofp i16 %.0.copyload.i6499 to double
  %i.bjm = fadd double %.0.i6497, %i.bjl
  %i.bjn = fadd double %i.bjm, %i.bia
  %i.bjo = fadd double %i.bjn, -1.000000e+00      ; 2 uses
  %i.bjp = fmul double %i.bjo, 8.640000e+07
  %i.bjq = fadd double %i.bim, %i.bjp
  %i.bjr = tail call noundef double @llvm.fabs.f64(double %i.bim)
  %i.bjs = fcmp one double %i.bjr, +inf
  %i.bjt = tail call noundef double @llvm.fabs.f64(double %i.bjo)
  %i.bju = fcmp one double %i.bjt, +inf
  %i.bjv = and i1 %i.bjs, %i.bju
  %i.bjw = select i1 %i.bjv, double %i.bjq, double +qnan ; 3 uses
  %i.bjx = tail call noundef double @llvm.fabs.f64(double %i.bjw)
  %i.bjy = fcmp ueq double %i.bjx, +inf
  br i1 %i.bjy, label %.loopexit6500, label %bb.qe

bb.qe:                                            ; preds = %wasm_floor.exit6498
  %i.bjz = tail call double @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ALocalTimeOffsetCache0x3A0x3AgetLocalTimeOffset0x28double0x2C0x20hermes0x3A0x3Avm0x3A0x3ATimeType0x29(ptr noundef nonnull %0, i32 noundef %2, double noundef %i.bjw, i32 noundef 0) #8
  %i.bka = fsub double %i.bjw, %i.bjz
  br label %.loopexit6500

.loopexit6500:                                    ; preds = %bb.gs, %wasm_floor.exit6498, %bb.pr, %bb.po, %bb.pm, %bb.pk, %bb.ok, %bb.oi, %bb.og, %bb.nn, %bb.nl, %bb.nj, %bb.mm, %bb.mh, %bb.mg, %bb.me, %bb.mc, %bb.ma, %bb.kl, %bb.jy, %bb.is, %bb.iq, %bb.io, %bb.im, %bb.hu, %bb.hs, %bb.hq, %bb.ho, %bb.gw, %.loopexit, %bb.gu, %bb.gq, %bb.gp, %bb.fr, %bb.fk, %bb.ee, %bb.qe, %wasm_floor.exit6485
  %.15357 = phi double [ +qnan, %bb.fk ], [ +qnan, %.loopexit ], [ +qnan, %bb.gw ], [ +qnan, %bb.ho ], [ +qnan, %bb.hq ], [ +qnan, %bb.hu ], [ +qnan, %bb.im ], [ +qnan, %bb.io ], [ +qnan, %bb.is ], [ +qnan, %wasm_floor.exit6498 ], [ %i.bka, %bb.qe ], [ %i.bhf, %wasm_floor.exit6485 ], [ +qnan, %bb.kl ], [ +qnan, %bb.ma ], [ +qnan, %bb.mc ], [ +qnan, %bb.mg ], [ +qnan, %bb.mh ], [ +qnan, %bb.mm ], [ +qnan, %bb.nj ], [ +qnan, %bb.nl ], [ +qnan, %bb.og ], [ +qnan, %bb.oi ], [ +qnan, %bb.pk ], [ +qnan, %bb.pm ], [ +qnan, %bb.pr ], [ +qnan, %bb.po ], [ +qnan, %bb.ok ], [ +qnan, %bb.nn ], [ +qnan, %bb.me ], [ +qnan, %bb.jy ], [ +qnan, %bb.iq ], [ +qnan, %bb.hs ], [ +qnan, %bb.gp ], [ +qnan, %bb.gq ], [ %.2, %bb.ee ], [ +qnan, %bb.gu ], [ +qnan, %bb.fr ], [ +qnan, %bb.gs ]
  store i32 %i.b, ptr %i.a, align 8, !tbaa !7
  ret double %.15357
}

declare i32 @w2c_hermes_bool0x20hermes0x3A0x3Avm0x3A0x3AscanInt0x3Chermes0x3A0x3Avm0x3A0x3AStringView0x3A0x3Aconst_iterator0x3E0x28hermes0x3A0x3Avm0x3A0x3AStringView0x3A0x3Aconst_iterator0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AStringView0x3A0x3Aconst_iterator0x2C0x20int0x260x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AordinaryToPrimitive0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3APreferredType0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 15 uses
  %i.c = add i32 %i.b, -256                       ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 72 uses
  %i.e = zext i32 %i.c to i64                     ; 22 uses
  %.val707 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val707, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  store i32 %3, ptr %i.g, align 1
  %i.h = zext i32 %3 to i64
  %i.i = add nuw nsw i64 %i.h, 4                  ; 6 uses
  %.val732 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %.val732, i64 %i.i
  %.0.copyload.i = load i32, ptr %i.j, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !19
  %i.k = add i32 %i.b, -28                        ; 2 uses
  %i.l = add i32 %i.b, -168                       ; 2 uses
  %i.m = zext i32 %i.k to i64
  %.val706 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %.val706, i64 %i.m
  store i32 %i.l, ptr %i.n, align 1
  %.val740 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %.val740, i64 %i.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 220
  store i64 17179869185, ptr %i.p, align 1
  %.val705 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %.val705, i64 %i.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 216
  store i32 %i.k, ptr %i.r, align 1
  %.val704 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %.val704, i64 %i.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 84
  store i32 %.0.copyload.i, ptr %i.t, align 1
  %.val703 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %.val703, i64 %i.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 252
  store i32 0, ptr %i.v, align 1
  %i.w = add i32 %i.b, -40
  %.val702 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %.val702, i64 %i.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 248
  store i32 %i.w, ptr %i.y, align 1
  %.val701 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %.val701, i64 %i.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 244
  store i32 %i.l, ptr %i.aa, align 1
  %i.ab = add i32 %i.b, -176                      ; 2 uses
  %.val700 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %.val700, i64 %i.i
  store i32 %i.ab, ptr %i.ac, align 1
  %i.ad = icmp eq i32 %4, 1
  %.val699 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %.val699, i64 %i.e ; 2 uses
  %i.af = add nuw nsw i64 %i.e, 64                ; 8 uses
  %i.ag = add i32 %i.b, -232                      ; 5 uses
  %i.ah = add nuw nsw i64 %i.e, 24                ; 4 uses
  br i1 %i.ad, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 0, ptr %i.ai, align 1
  %.val698 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %.val698, i64 %i.af
  store i32 0, ptr %i.aj, align 1
  %i.ak = add i32 %i.b, -244
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AgetNamedWithReceiver_RJS0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3APropOpFlags0x2C0x20hermes0x3A0x3Avm0x3A0x3APropertyCacheEntry0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.ag, i32 noundef %2, i32 noundef %3, i32 noundef 28, i32 noundef %2, i32 noundef %i.ak, i32 noundef 0) #8
  %.val731 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %.val731, i64 %i.ah
  %.0.copyload.i757 = load i32, ptr %i.al, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i757) #8, !srcloc !19
  %.not668 = icmp eq i32 %.0.copyload.i757, 0
  br i1 %.not668, label %bb.ar, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.am = add nuw nsw i64 %i.e, 32                ; 2 uses
  %.val756 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.an = getelementptr inbounds nuw i8, ptr %.val756, i64 %i.am
  %.0.copyload.i758 = load i64, ptr %i.an, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i758) #8, !srcloc !20
  %.val730 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %.val730, i64 %i.i
  %.0.copyload.i759 = load i32, ptr %i.ao, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i759) #8, !srcloc !19
  %i.ap = zext i32 %.0.copyload.i759 to i64       ; 2 uses
  %i.aq = add nuw nsw i64 %i.ap, 164              ; 2 uses
  %.val729 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %.val729, i64 %i.aq
  %.0.copyload.i760 = load i32, ptr %i.ar, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i760) #8, !srcloc !19
  %.val728 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %.val728, i64 %i.ap
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 168
  %.0.copyload.i761 = load i32, ptr %i.at, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i761) #8, !srcloc !19
  %i.au = icmp ult i32 %.0.copyload.i760, %.0.copyload.i761
  br i1 %i.au, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.av = add i32 %.0.copyload.i760, 8
  %.val697 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aw = getelementptr inbounds nuw i8, ptr %.val697, i64 %i.aq
  store i32 %i.av, ptr %i.aw, align 1
  %i.ax = zext i32 %.0.copyload.i760 to i64
  %.val739 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ay = getelementptr inbounds nuw i8, ptr %.val739, i64 %i.ax
  store i64 %.0.copyload.i758, ptr %i.ay, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.az = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i759, i64 noundef %.0.copyload.i758) #8 ; 2 uses
  %i.ba = zext i32 %i.az to i64
  %.val755 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bb = getelementptr inbounds nuw i8, ptr %.val755, i64 %i.ba
  %.0.copyload.i762 = load i64, ptr %i.bb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i762) #8, !srcloc !20
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0643 = phi i32 [ %.0.copyload.i760, %bb.d ], [ %i.az, %bb.e ]
  %.0 = phi i64 [ %.0.copyload.i758, %bb.d ], [ %.0.copyload.i762, %bb.e ] ; 2 uses
  %i.bc = icmp ugt i64 %.0, -844424930131969
  br i1 %i.bc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bd = and i64 %.0, 4294967295
  %.val727 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.be = getelementptr inbounds nuw i8, ptr %.val727, i64 %i.bd
  %.0.copyload.i763 = load i32, ptr %i.be, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i763) #8, !srcloc !19
  %i.bf = add i32 %.0.copyload.i763, -1291845632
  %i.bg = icmp ult i32 %i.bf, -150994944
  %i.bh = select i1 %i.bg, i32 70384, i32 %.0643
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0649 = phi i32 [ %i.bh, %bb.g ], [ 70384, %bb.f ] ; 2 uses
  %i.bi = zext i32 %.0649 to i64
  %.val754 = load ptr, ptr %i.d, align 8, !tbaa !18
end_hunk_2
