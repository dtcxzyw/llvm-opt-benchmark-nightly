inline.NumInlined: 3433
inline.NumDeleted: 1213
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_ZN4absl12lts_2026052617zipf_distributionINS0_6int128EEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEES2_RT_RKNS3_10param_typeE:bb.a
  %wide.load42 = load <2 x i64>, ptr %i.ac, align 8, !tbaa !22 ; 4 uses
  %i.ad = shufflevector <2 x i64> %vector.recur41, <2 x i64> %wide.load42, <2 x i32> <i32 1, i32 2>
  %i.ae = and <2 x i64> %i.ad, splat (i64 -2147483648)
  %i.af = and <2 x i64> %wide.load42, splat (i64 2147483646)
  %i.ag = or disjoint <2 x i64> %i.af, %i.ae
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 1248
  %wide.load43 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !22
  %i.ai = lshr exact <2 x i64> %i.ag, splat (i64 1)
  %i.aj = xor <2 x i64> %i.ai, %wide.load43
  %i.ak = and <2 x i64> %wide.load42, splat (i64 1)
  %i.al = icmp eq <2 x i64> %i.ak, zeroinitializer
  %i.am = select <2 x i1> %i.al, <2 x i64> zeroinitializer, <2 x i64> splat (i64 -5403634167711393303)
  %i.an = xor <2 x i64> %i.aj, %i.am
  store <2 x i64> %i.an, ptr %i.aa, align 8, !tbaa !22
  %index.next44 = add nuw i64 %index39, 2         ; 2 uses
  %i.ao = icmp eq i64 %index.next44, 156
  br i1 %i.ao, label %vector.ph, label %vector.body38, !llvm.loop !239

vector.ph:                                        ; preds = %vector.body38
  %.pre24.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !22
  %vector.recur.init = insertelement <2 x i64> poison, i64 %.pre24.i.i, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <2 x i64> [ %vector.recur.init, %vector.ph ], [ %wide.load, %vector.body ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1248
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1256
  %wide.load = load <2 x i64>, ptr %i.as, align 8, !tbaa !22 ; 5 uses
  %i.at = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load, <2 x i32> <i32 1, i32 2>
  %i.au = and <2 x i64> %i.at, splat (i64 -2147483648)
  %i.av = and <2 x i64> %wide.load, splat (i64 2147483646)
  %i.aw = or disjoint <2 x i64> %i.av, %i.au
  %wide.load35 = load <2 x i64>, ptr %i.ap, align 8, !tbaa !22
  %i.ax = lshr exact <2 x i64> %i.aw, splat (i64 1)
  %i.ay = xor <2 x i64> %i.ax, %wide.load35
  %i.az = and <2 x i64> %wide.load, splat (i64 1)
  %i.ba = icmp eq <2 x i64> %i.az, zeroinitializer
  %i.bb = select <2 x i1> %i.ba, <2 x i64> zeroinitializer, <2 x i64> splat (i64 -5403634167711393303)
  %i.bc = xor <2 x i64> %i.ay, %i.bb
  store <2 x i64> %i.bc, ptr %i.aq, align 8, !tbaa !22
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bd = icmp eq i64 %index.next, 154
  br i1 %i.bd, label %.preheader.i.i, label %vector.body, !llvm.loop !240

.preheader.i.i:                                   ; preds = %vector.body
  %vector.recur.extract = extractelement <2 x i64> %wide.load, i64 1
  %i.be = and i64 %vector.recur.extract, -2147483648
  %i.bf = load i64, ptr %i.w, align 8, !tbaa !22  ; 2 uses
  %i.bg = and i64 %i.bf, 2147483646
  %i.bh = or disjoint i64 %i.bg, %i.be
  %i.bi = load i64, ptr %i.x, align 8, !tbaa !22
  %i.bj = lshr exact i64 %i.bh, 1
  %i.bk = xor i64 %i.bj, %i.bi
  %i.bl = and i64 %i.bf, 1
  %.not19.i.i = icmp eq i64 %i.bl, 0
  %i.bm = select i1 %.not19.i.i, i64 0, i64 -5403634167711393303
  %i.bn = xor i64 %i.bk, %i.bm
  store i64 %i.bn, ptr %i.v, align 8, !tbaa !22
  %i.bo = load i64, ptr %i.b, align 8, !tbaa !22
  %i.bp = and i64 %i.bo, -2147483648
  %i.bq = load i64, ptr %1, align 8, !tbaa !22    ; 2 uses
  %i.br = and i64 %i.bq, 2147483646
  %i.bs = or disjoint i64 %i.br, %i.bp
  %i.bt = load i64, ptr %i.c, align 8, !tbaa !22
  %i.bu = lshr exact i64 %i.bs, 1
  %i.bv = xor i64 %i.bu, %i.bt
  %i.bw = and i64 %i.bq, 1
  %.not.i.i = icmp eq i64 %i.bw, 0
  %i.bx = select i1 %.not.i.i, i64 0, i64 -5403634167711393303
  %i.by = xor i64 %i.bv, %i.bx
  store i64 %i.by, ptr %i.b, align 8, !tbaa !22
  br label %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv.exit

_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv.exit: ; preds = %select.unfold, %.preheader.i.i
  %i.bz = phi i64 [ 0, %.preheader.i.i ], [ %i.y, %select.unfold ] ; 2 uses
  %i.ca = add nuw nsw i64 %i.bz, 1                ; 2 uses
  store i64 %i.ca, ptr %i.a, align 8, !tbaa !23
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bz
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !22 ; 2 uses
  %i.cd = lshr i64 %i.cc, 29
  %i.ce = and i64 %i.cd, 22906492245
  %i.cf = xor i64 %i.ce, %i.cc                    ; 2 uses
  %i.cg = shl i64 %i.cf, 17
  %i.ch = and i64 %i.cg, 8202884508482404352
  %i.ci = xor i64 %i.ch, %i.cf                    ; 3 uses
  %i.cj = shl i64 %i.ci, 37
  %i.ck = and i64 %i.cj, -2270628950310912        ; 2 uses
  %i.cl = icmp eq i64 %i.ck, %i.ci
  br i1 %i.cl, label %_ZN4absl12lts_2026052625uniform_real_distributionIdEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEdRT_.exit, label %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.i

_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.i: ; preds = %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv.exit
  %i.cm = xor i64 %i.ck, %i.ci                    ; 2 uses
  %i.cn = lshr i64 %i.cm, 43
  %i.co = xor i64 %i.cn, %i.cm                    ; 2 uses
  %i.cp = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.co, i1 true) ; 2 uses
  %i.cq = shl i64 %i.co, %i.cp
  %i.cr = lshr i64 %i.cq, 11
  %i.cs = and i64 %i.cr, 4503599627370495
  %i.ct = shl nuw nsw i64 %i.cp, 52
  %reass.sub = sub nsw i64 %i.cs, %i.ct
  %i.cu = add nsw i64 %reass.sub, 4602678819172646912
  %i.cv = bitcast i64 %i.cu to double             ; 2 uses
  %i.cw = fadd double %i.cv, 0.000000e+00
  %i.cx = fcmp uge double %i.cv, 1.000000e+00
  br i1 %i.cx, label %select.unfold.backedge, label %_ZN4absl12lts_2026052625uniform_real_distributionIdEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEdRT_.exit

select.unfold.backedge:                           ; preds = %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.i, %_ZNK4absl12lts_2026052617zipf_distributionINS0_6int128EE10param_type14pow_negative_qEd.exit, %_ZNK4absl12lts_2026052617zipf_distributionINS0_6int128EE10param_type4hinvEd.exit
  br label %select.unfold, !llvm.loop !241

_ZN4absl12lts_2026052625uniform_real_distributionIdEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEdRT_.exit: ; preds = %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv.exit, %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.i
  %.0.i.i.i32 = phi double [ %i.cw, %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.i ], [ 0.000000e+00, %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv.exit ]
  %i.cy = tail call double @llvm.fmuladd.f64(double %.0.i.i.i32, double %i.g, double %i.e) ; 3 uses
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN4absl12lts_2026052625uniform_real_distributionIdEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEdRT_.exit
  %i.cz = fdiv double -1.000000e+00, %i.cy
  br label %_ZNK4absl12lts_2026052617zipf_distributionINS0_6int128EE10param_type4hinvEd.exit

bb.c:                                             ; preds = %_ZN4absl12lts_2026052625uniform_real_distributionIdEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEdRT_.exit
  %i.da = fmul double %i.cy, %i.k
  %i.db = tail call double @log(double noundef %i.da) #17
  %i.dc = fmul double %i.o, %i.db
  %i.dd = tail call double @exp(double noundef %i.dc) #17
  br label %_ZNK4absl12lts_2026052617zipf_distributionINS0_6int128EE10param_type4hinvEd.exit

_ZNK4absl12lts_2026052617zipf_distributionINS0_6int128EE10param_type4hinvEd.exit: ; preds = %bb.b, %bb.c
  %i.de = phi double [ %i.cz, %bb.b ], [ %i.dd, %bb.c ]
  %i.df = fsub double %i.de, %i.i                 ; 2 uses
  %i.dg = tail call double @llvm.rint.f64(double %i.df) ; 5 uses
  %i.dh = fcmp ogt double %i.dg, %i.m
  br i1 %i.dh, label %select.unfold.backedge, label %bb.d

bb.d:                                             ; preds = %_ZNK4absl12lts_2026052617zipf_distributionINS0_6int128EE10param_type4hinvEd.exit
  %i.di = fsub double %i.dg, %i.df
  %i.dj = fcmp ugt double %i.di, %i.q
  br i1 %i.dj, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.dk = fadd double %i.dg, 5.000000e-01
  %i.dl = fadd double %i.i, %i.dk                 ; 2 uses
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.dm = fdiv double -1.000000e+00, %i.dl
  br label %_ZNK4absl12lts_2026052617zipf_distributionINS0_6int128EE10param_type1hEd.exit

bb.g:                                             ; preds = %bb.e
  %i.dn = tail call double @log(double noundef %i.dl) #17
  %i.do = fmul double %i.k, %i.dn
  %i.dp = tail call double @exp(double noundef %i.do) #17
  %i.dq = fmul double %i.dp, %i.o
  br label %_ZNK4absl12lts_2026052617zipf_distributionINS0_6int128EE10param_type1hEd.exit

_ZNK4absl12lts_2026052617zipf_distributionINS0_6int128EE10param_type1hEd.exit: ; preds = %bb.f, %bb.g
  %i.dr = phi double [ %i.dm, %bb.f ], [ %i.dq, %bb.g ]
  %i.ds = fadd double %i.i, %i.dg                 ; 3 uses
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK4absl12lts_2026052617zipf_distributionINS0_6int128EE10param_type1hEd.exit
  %i.dt = fmul double %i.ds, %i.ds
  %i.du = fdiv double 1.000000e+00, %i.dt
  br label %_ZNK4absl12lts_2026052617zipf_distributionINS0_6int128EE10param_type14pow_negative_qEd.exit

bb.i:                                             ; preds = %_ZNK4absl12lts_2026052617zipf_distributionINS0_6int128EE10param_type1hEd.exit
  %i.dv = tail call double @log(double noundef %i.ds) #17
  %i.dw = fmul double %i.dv, %i.u
  %i.dx = tail call double @exp(double noundef %i.dw) #17
  br label %_ZNK4absl12lts_2026052617zipf_distributionINS0_6int128EE10param_type14pow_negative_qEd.exit

_ZNK4absl12lts_2026052617zipf_distributionINS0_6int128EE10param_type14pow_negative_qEd.exit: ; preds = %bb.h, %bb.i
  %i.dy = phi double [ %i.du, %bb.h ], [ %i.dx, %bb.i ]
  %i.dz = fsub double %i.dr, %i.dy
  %i.ea = fcmp ult double %i.cy, %i.dz
  br i1 %i.ea, label %select.unfold.backedge, label %bb.j

bb.j:                                             ; preds = %_ZNK4absl12lts_2026052617zipf_distributionINS0_6int128EE10param_type14pow_negative_qEd.exit, %bb.d
  %i.eb = fptosi double %i.dg to i128
  ret i128 %i.eb
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { i64, i64 } @_ZN4absl12lts_2026052617zipf_distributionINS0_7uint128EEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEES2_RT_RKNS3_10param_typeE(ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(2504) %1, ptr noundef nonnull align 16 dereferenceable(72) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20260526::uint128", align 16 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2496 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1248
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2488 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1240
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.e = load double, ptr %i.d, align 8, !tbaa !242
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.g = load double, ptr %i.f, align 16, !tbaa !78
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = load double, ptr %i.h, align 8, !tbaa !243 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.k = load double, ptr %i.j, align 16, !tbaa !244 ; 3 uses
  %i.l = fcmp oeq double %i.k, -1.000000e+00      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.n = load double, ptr %i.m, align 16          ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.p = load double, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load double, ptr %i.q, align 16          ; 2 uses
  %i.s = fcmp oeq double %i.r, 2.000000e+00
  %i.t = fneg double %i.r
  %.pre.pre = load i64, ptr %i.a, align 8, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 2480
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 2488
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 1232
  br label %select.unfold

select.unfold:                                    ; preds = %select.unfold.backedge, %bb.a
  %i.x = phi i64 [ %.pre.pre, %bb.a ], [ %i.bz, %select.unfold.backedge ] ; 2 uses
  %i.y = icmp ugt i64 %i.x, 311
  br i1 %i.y, label %vector.ph37, label %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv.exit

vector.ph37:                                      ; preds = %select.unfold
  %.pre.i.i = load i64, ptr %1, align 8, !tbaa !22
  %vector.recur.init40 = insertelement <2 x i64> poison, i64 %.pre.i.i, i64 1
  br label %vector.body38

vector.body38:                                    ; preds = %vector.body38, %vector.ph37
  %index39 = phi i64 [ 0, %vector.ph37 ], [ %index.next44, %vector.body38 ] ; 3 uses
  %vector.recur41 = phi <2 x i64> [ %vector.recur.init40, %vector.ph37 ], [ %wide.load42, %vector.body38 ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index39 ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index39
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %wide.load42 = load <2 x i64>, ptr %i.ab, align 8, !tbaa !22 ; 4 uses
  %i.ac = shufflevector <2 x i64> %vector.recur41, <2 x i64> %wide.load42, <2 x i32> <i32 1, i32 2>
  %i.ad = and <2 x i64> %i.ac, splat (i64 -2147483648)
  %i.ae = and <2 x i64> %wide.load42, splat (i64 2147483646)
  %i.af = or disjoint <2 x i64> %i.ae, %i.ad
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 1248
  %wide.load43 = load <2 x i64>, ptr %i.ag, align 8, !tbaa !22
  %i.ah = lshr exact <2 x i64> %i.af, splat (i64 1)
  %i.ai = xor <2 x i64> %i.ah, %wide.load43
  %i.aj = and <2 x i64> %wide.load42, splat (i64 1)
  %i.ak = icmp eq <2 x i64> %i.aj, zeroinitializer
  %i.al = select <2 x i1> %i.ak, <2 x i64> zeroinitializer, <2 x i64> splat (i64 -5403634167711393303)
  %i.am = xor <2 x i64> %i.ai, %i.al
  store <2 x i64> %i.am, ptr %i.z, align 8, !tbaa !22
  %index.next44 = add nuw i64 %index39, 2         ; 2 uses
  %i.an = icmp eq i64 %index.next44, 156
  br i1 %i.an, label %vector.ph, label %vector.body38, !llvm.loop !245

vector.ph:                                        ; preds = %vector.body38
  %.pre24.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !22
  %vector.recur.init = insertelement <2 x i64> poison, i64 %.pre24.i.i, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <2 x i64> [ %vector.recur.init, %vector.ph ], [ %wide.load, %vector.body ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1248
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1256
  %wide.load = load <2 x i64>, ptr %i.ar, align 8, !tbaa !22 ; 5 uses
  %i.as = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load, <2 x i32> <i32 1, i32 2>
  %i.at = and <2 x i64> %i.as, splat (i64 -2147483648)
  %i.au = and <2 x i64> %wide.load, splat (i64 2147483646)
  %i.av = or disjoint <2 x i64> %i.au, %i.at
  %wide.load35 = load <2 x i64>, ptr %i.ao, align 8, !tbaa !22
  %i.aw = lshr exact <2 x i64> %i.av, splat (i64 1)
  %i.ax = xor <2 x i64> %i.aw, %wide.load35
  %i.ay = and <2 x i64> %wide.load, splat (i64 1)
  %i.az = icmp eq <2 x i64> %i.ay, zeroinitializer
  %i.ba = select <2 x i1> %i.az, <2 x i64> zeroinitializer, <2 x i64> splat (i64 -5403634167711393303)
  %i.bb = xor <2 x i64> %i.ax, %i.ba
  store <2 x i64> %i.bb, ptr %i.ap, align 8, !tbaa !22
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bc = icmp eq i64 %index.next, 154
  br i1 %i.bc, label %.preheader.i.i, label %vector.body, !llvm.loop !246

.preheader.i.i:                                   ; preds = %vector.body
  %vector.recur.extract = extractelement <2 x i64> %wide.load, i64 1
  %i.bd = and i64 %vector.recur.extract, -2147483648
  %i.be = load i64, ptr %i.v, align 8, !tbaa !22  ; 2 uses
  %i.bf = and i64 %i.be, 2147483646
  %i.bg = or disjoint i64 %i.bf, %i.bd
  %i.bh = load i64, ptr %i.w, align 8, !tbaa !22
  %i.bi = lshr exact i64 %i.bg, 1
  %i.bj = xor i64 %i.bi, %i.bh
  %i.bk = and i64 %i.be, 1
  %.not19.i.i = icmp eq i64 %i.bk, 0
  %i.bl = select i1 %.not19.i.i, i64 0, i64 -5403634167711393303
  %i.bm = xor i64 %i.bj, %i.bl
  store i64 %i.bm, ptr %i.u, align 8, !tbaa !22
  %i.bn = load i64, ptr %i.b, align 8, !tbaa !22
  %i.bo = and i64 %i.bn, -2147483648
  %i.bp = load i64, ptr %1, align 8, !tbaa !22    ; 2 uses
  %i.bq = and i64 %i.bp, 2147483646
  %i.br = or disjoint i64 %i.bq, %i.bo
  %i.bs = load i64, ptr %i.c, align 8, !tbaa !22
  %i.bt = lshr exact i64 %i.br, 1
  %i.bu = xor i64 %i.bt, %i.bs
  %i.bv = and i64 %i.bp, 1
  %.not.i.i = icmp eq i64 %i.bv, 0
  %i.bw = select i1 %.not.i.i, i64 0, i64 -5403634167711393303
  %i.bx = xor i64 %i.bu, %i.bw
  store i64 %i.bx, ptr %i.b, align 8, !tbaa !22
  br label %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv.exit

_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv.exit: ; preds = %select.unfold, %.preheader.i.i
  %i.by = phi i64 [ 0, %.preheader.i.i ], [ %i.x, %select.unfold ] ; 2 uses
  %i.bz = add nuw nsw i64 %i.by, 1                ; 2 uses
  store i64 %i.bz, ptr %i.a, align 8, !tbaa !23
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.by
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !22 ; 2 uses
  %i.cc = lshr i64 %i.cb, 29
  %i.cd = and i64 %i.cc, 22906492245
  %i.ce = xor i64 %i.cd, %i.cb                    ; 2 uses
  %i.cf = shl i64 %i.ce, 17
  %i.cg = and i64 %i.cf, 8202884508482404352
  %i.ch = xor i64 %i.cg, %i.ce                    ; 3 uses
  %i.ci = shl i64 %i.ch, 37
  %i.cj = and i64 %i.ci, -2270628950310912        ; 2 uses
  %i.ck = icmp eq i64 %i.cj, %i.ch
  br i1 %i.ck, label %_ZN4absl12lts_2026052625uniform_real_distributionIdEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEdRT_.exit, label %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.i

_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.i: ; preds = %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv.exit
  %i.cl = xor i64 %i.cj, %i.ch                    ; 2 uses
  %i.cm = lshr i64 %i.cl, 43
  %i.cn = xor i64 %i.cm, %i.cl                    ; 2 uses
  %i.co = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cn, i1 true) ; 2 uses
  %i.cp = shl i64 %i.cn, %i.co
  %i.cq = lshr i64 %i.cp, 11
  %i.cr = and i64 %i.cq, 4503599627370495
  %i.cs = shl nuw nsw i64 %i.co, 52
  %reass.sub = sub nsw i64 %i.cr, %i.cs
  %i.ct = add nsw i64 %reass.sub, 4602678819172646912
  %i.cu = bitcast i64 %i.ct to double             ; 2 uses
  %i.cv = fadd double %i.cu, 0.000000e+00
  %i.cw = fcmp uge double %i.cu, 1.000000e+00
  br i1 %i.cw, label %select.unfold.backedge, label %_ZN4absl12lts_2026052625uniform_real_distributionIdEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEdRT_.exit

select.unfold.backedge:                           ; preds = %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.i, %_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type14pow_negative_qEd.exit, %_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type4hinvEd.exit
  br label %select.unfold, !llvm.loop !247

_ZN4absl12lts_2026052625uniform_real_distributionIdEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEdRT_.exit: ; preds = %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv.exit, %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.i
  %.0.i.i.i32 = phi double [ %i.cv, %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.i ], [ 0.000000e+00, %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv.exit ]
  %i.cx = tail call double @llvm.fmuladd.f64(double %.0.i.i.i32, double %i.g, double %i.e) ; 3 uses
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN4absl12lts_2026052625uniform_real_distributionIdEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEdRT_.exit
  %i.cy = fdiv double -1.000000e+00, %i.cx
  br label %_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type4hinvEd.exit

bb.c:                                             ; preds = %_ZN4absl12lts_2026052625uniform_real_distributionIdEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEdRT_.exit
  %i.cz = fmul double %i.cx, %i.k
  %i.da = tail call double @log(double noundef %i.cz) #17
  %i.db = fmul double %i.n, %i.da
  %i.dc = tail call double @exp(double noundef %i.db) #17
  br label %_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type4hinvEd.exit

_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type4hinvEd.exit: ; preds = %bb.b, %bb.c
  %i.dd = phi double [ %i.cy, %bb.b ], [ %i.dc, %bb.c ]
  %i.de = fsub double %i.dd, %i.i                 ; 2 uses
  %i.df = tail call double @llvm.rint.f64(double %i.de) ; 5 uses
  %4 = load <2 x i64>, ptr %2, align 16, !tbaa !22
  %5 = uitofp <2 x i64> %4 to <2 x double>        ; 2 uses
  %6 = extractelement <2 x double> %5, i64 0
  %7 = extractelement <2 x double> %5, i64 1
  %i.dg = tail call noundef double @llvm.fmuladd.f64(double %7, double f0x43F0000000000000, double %6)
  %i.dh = fcmp ogt double %i.df, %i.dg
  br i1 %i.dh, label %select.unfold.backedge, label %bb.d

bb.d:                                             ; preds = %_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type4hinvEd.exit
  %i.di = fsub double %i.df, %i.de
  %i.dj = fcmp ugt double %i.di, %i.p
  br i1 %i.dj, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.dk = fadd double %i.df, 5.000000e-01
  %i.dl = fadd double %i.i, %i.dk                 ; 2 uses
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.dm = fdiv double -1.000000e+00, %i.dl
  br label %_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type1hEd.exit

bb.g:                                             ; preds = %bb.e
  %i.dn = tail call double @log(double noundef %i.dl) #17
  %i.do = fmul double %i.k, %i.dn
  %i.dp = tail call double @exp(double noundef %i.do) #17
  %i.dq = fmul double %i.dp, %i.n
  br label %_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type1hEd.exit

_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type1hEd.exit: ; preds = %bb.f, %bb.g
  %i.dr = phi double [ %i.dm, %bb.f ], [ %i.dq, %bb.g ]
  %i.ds = fadd double %i.i, %i.df                 ; 3 uses
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type1hEd.exit
  %i.dt = fmul double %i.ds, %i.ds
  %i.du = fdiv double 1.000000e+00, %i.dt
  br label %_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type14pow_negative_qEd.exit

bb.i:                                             ; preds = %_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type1hEd.exit
  %i.dv = tail call double @log(double noundef %i.ds) #17
  %i.dw = fmul double %i.dv, %i.t
  %i.dx = tail call double @exp(double noundef %i.dw) #17
  br label %_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type14pow_negative_qEd.exit

_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type14pow_negative_qEd.exit: ; preds = %bb.h, %bb.i
  %i.dy = phi double [ %i.du, %bb.h ], [ %i.dx, %bb.i ]
  %i.dz = fsub double %i.dr, %i.dy
  %i.ea = fcmp ult double %i.cx, %i.dz
  br i1 %i.ea, label %select.unfold.backedge, label %bb.j

bb.j:                                             ; preds = %_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type14pow_negative_qEd.exit, %bb.d
  call void @_ZN4absl12lts_202605267uint128C1Ed(ptr noundef nonnull align 16 dereferenceable(16) %3, double noundef %i.df)
  %.fca.0.load = load i64, ptr %3, align 16
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.fca.1.load, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef double @_ZN4absl12lts_2026052615random_internal26gaussian_distribution_base6zignorISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEdRT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(2504) %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %i.a = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv(ptr noundef nonnull align 8 dereferenceable(2504) %1) ; 5 uses
  %i.b = trunc i64 %i.a to i32
  %i.c = and i32 %i.b, 127                        ; 2 uses
  %i.d = and i64 %i.a, -9223372036854775808
  %i.e = and i64 %i.a, 9223372036854775807
  %i.f = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.e, i1 false) ; 2 uses
  %i.g = and i64 %i.f, 63
  %i.h = shl i64 %i.a, %i.g
  %i.i = lshr i64 %i.h, 11
  %i.j = shl nuw nsw i64 %i.f, 52
  %i.k = or disjoint i64 %i.j, %i.d
  %i.l = and i64 %i.i, 4503599627370495
  %i.m = or disjoint i64 %i.l, %i.k
  %i.n = xor i64 %i.m, 4607182418800017408
  %i.o = bitcast i64 %i.n to double               ; 2 uses
  %i.p = and i64 %i.a, 127                        ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @_ZN4absl12lts_2026052615random_internal26gaussian_distribution_base3zg_E, i64 %i.p
  %i.r = load double, ptr %i.q, align 8, !tbaa !36
  %i.s = fmul double %i.r, %i.o                   ; 5 uses
  %i.t = tail call noundef double @llvm.fabs.f64(double %i.s)
  %i.u = add nuw nsw i32 %i.c, 1
  %i.v = zext nneg i32 %i.u to i64                ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr @_ZN4absl12lts_2026052615random_internal26gaussian_distribution_base3zg_E, i64 %i.v
  %i.x = load double, ptr %i.w, align 8, !tbaa !36
  %i.y = fcmp olt double %i.t, %i.x
  br i1 %i.y, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = icmp eq i32 %i.c, 0
  br i1 %i.z, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 2496 ; 3 uses
  %.phi.trans.insert.i.i28 = getelementptr inbounds nuw i8, ptr %1, i64 1248 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 2488 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 1240 ; 2 uses
  %.pre = load i64, ptr %i.aa, align 8, !tbaa !23
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 2480
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 2488
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 1232
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 2480
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 2488
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 1232
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv.exit, %bb.d
  %i.aj = phi i64 [ %i.fk, %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv.exit ], [ %.pre, %bb.d ] ; 2 uses
  %i.ak = icmp ugt i64 %i.aj, 311
  br i1 %i.ak, label %vector.ph83, label %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv.exit36

vector.ph83:                                      ; preds = %bb.e
  %.pre.i.i23 = load i64, ptr %1, align 8, !tbaa !22
  %vector.recur.init86 = insertelement <2 x i64> poison, i64 %.pre.i.i23, i64 1
  br label %vector.body84

vector.body84:                                    ; preds = %vector.body84, %vector.ph83
  %index85 = phi i64 [ 0, %vector.ph83 ], [ %index.next90, %vector.body84 ] ; 3 uses
  %vector.recur87 = phi <2 x i64> [ %vector.recur.init86, %vector.ph83 ], [ %wide.load88, %vector.body84 ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index85 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index85
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %wide.load88 = load <2 x i64>, ptr %i.an, align 8, !tbaa !22 ; 4 uses
  %i.ao = shufflevector <2 x i64> %vector.recur87, <2 x i64> %wide.load88, <2 x i32> <i32 1, i32 2>
  %i.ap = and <2 x i64> %i.ao, splat (i64 -2147483648)
  %i.aq = and <2 x i64> %wide.load88, splat (i64 2147483646)
  %i.ar = or disjoint <2 x i64> %i.aq, %i.ap
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 1248
  %wide.load89 = load <2 x i64>, ptr %i.as, align 8, !tbaa !22
  %i.at = lshr exact <2 x i64> %i.ar, splat (i64 1)
  %i.au = xor <2 x i64> %i.at, %wide.load89
  %i.av = and <2 x i64> %wide.load88, splat (i64 1)
  %i.aw = icmp eq <2 x i64> %i.av, zeroinitializer
  %i.ax = select <2 x i1> %i.aw, <2 x i64> zeroinitializer, <2 x i64> splat (i64 -5403634167711393303)
  %i.ay = xor <2 x i64> %i.au, %i.ax
  store <2 x i64> %i.ay, ptr %i.al, align 8, !tbaa !22
  %index.next90 = add nuw i64 %index85, 2         ; 2 uses
  %i.az = icmp eq i64 %index.next90, 156
  br i1 %i.az, label %vector.ph72, label %vector.body84, !llvm.loop !248

vector.ph72:                                      ; preds = %vector.body84
  %.pre24.i.i29 = load i64, ptr %.phi.trans.insert.i.i28, align 8, !tbaa !22
  %vector.recur.init75 = insertelement <2 x i64> poison, i64 %.pre24.i.i29, i64 1
  br label %vector.body73

vector.body73:                                    ; preds = %vector.body73, %vector.ph72
  %index74 = phi i64 [ 0, %vector.ph72 ], [ %index.next79, %vector.body73 ] ; 3 uses
  %vector.recur76 = phi <2 x i64> [ %vector.recur.init75, %vector.ph72 ], [ %wide.load77, %vector.body73 ]
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index74 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1248
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index74
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1256
  %wide.load77 = load <2 x i64>, ptr %i.bd, align 8, !tbaa !22 ; 5 uses
  %i.be = shufflevector <2 x i64> %vector.recur76, <2 x i64> %wide.load77, <2 x i32> <i32 1, i32 2>
  %i.bf = and <2 x i64> %i.be, splat (i64 -2147483648)
  %i.bg = and <2 x i64> %wide.load77, splat (i64 2147483646)
  %i.bh = or disjoint <2 x i64> %i.bg, %i.bf
  %wide.load78 = load <2 x i64>, ptr %i.ba, align 8, !tbaa !22
  %i.bi = lshr exact <2 x i64> %i.bh, splat (i64 1)
  %i.bj = xor <2 x i64> %i.bi, %wide.load78
  %i.bk = and <2 x i64> %wide.load77, splat (i64 1)
  %i.bl = icmp eq <2 x i64> %i.bk, zeroinitializer
  %i.bm = select <2 x i1> %i.bl, <2 x i64> zeroinitializer, <2 x i64> splat (i64 -5403634167711393303)
  %i.bn = xor <2 x i64> %i.bj, %i.bm
  store <2 x i64> %i.bn, ptr %i.bb, align 8, !tbaa !22
  %index.next79 = add nuw i64 %index74, 2         ; 2 uses
  %i.bo = icmp eq i64 %index.next79, 154
  br i1 %i.bo, label %.preheader.i.i30, label %vector.body73, !llvm.loop !249

.preheader.i.i30:                                 ; preds = %vector.body73
  %vector.recur.extract81 = extractelement <2 x i64> %wide.load77, i64 1
  %i.bp = and i64 %vector.recur.extract81, -2147483648
  %i.bq = load i64, ptr %i.ae, align 8, !tbaa !22 ; 2 uses
  %i.br = and i64 %i.bq, 2147483646
  %i.bs = or disjoint i64 %i.br, %i.bp
  %i.bt = load i64, ptr %i.af, align 8, !tbaa !22
  %i.bu = lshr exact i64 %i.bs, 1
  %i.bv = xor i64 %i.bu, %i.bt
  %i.bw = and i64 %i.bq, 1
  %.not19.i.i32 = icmp eq i64 %i.bw, 0
  %i.bx = select i1 %.not19.i.i32, i64 0, i64 -5403634167711393303
  %i.by = xor i64 %i.bv, %i.bx
  store i64 %i.by, ptr %i.ad, align 8, !tbaa !22
  %i.bz = load i64, ptr %i.ab, align 8, !tbaa !22
  %i.ca = and i64 %i.bz, -2147483648
  %i.cb = load i64, ptr %1, align 8, !tbaa !22    ; 2 uses
  %i.cc = and i64 %i.cb, 2147483646
  %i.cd = or disjoint i64 %i.cc, %i.ca
  %i.ce = load i64, ptr %i.ac, align 8, !tbaa !22
  %i.cf = lshr exact i64 %i.cd, 1
  %i.cg = xor i64 %i.cf, %i.ce
  %i.ch = and i64 %i.cb, 1
  %.not.i.i35 = icmp eq i64 %i.ch, 0
  %i.ci = select i1 %.not.i.i35, i64 0, i64 -5403634167711393303
  %i.cj = xor i64 %i.cg, %i.ci
  store i64 %i.cj, ptr %i.ab, align 8, !tbaa !22
  br label %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv.exit36

_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv.exit36: ; preds = %bb.e, %.preheader.i.i30
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052617zipf_distributionImEclINS0_6BitGenEEEmRT_RKNS2_10param_typeE:bb.a
  %i.be = tail call double @log(double noundef %i.bc) #17
  %i.bf = fmul double %i.ak, %i.be
  %i.bg = tail call double @exp(double noundef %i.bf) #17
  %i.bh = load double, ptr %i.k, align 8, !tbaa !375
  %i.bi = fmul double %i.bg, %i.bh
  br label %_ZNK4absl12lts_2026052617zipf_distributionImE10param_type1hEd.exit

_ZNK4absl12lts_2026052617zipf_distributionImE10param_type1hEd.exit: ; preds = %bb.i, %bb.j
  %i.bj = phi double [ %i.bd, %bb.i ], [ %i.bi, %bb.j ]
  %i.bk = fadd double %i.aj, %i.au                ; 3 uses
  %i.bl = load double, ptr %i.m, align 8, !tbaa !377 ; 2 uses
  %i.bm = fcmp oeq double %i.bl, 2.000000e+00
  br i1 %i.bm, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK4absl12lts_2026052617zipf_distributionImE10param_type1hEd.exit
  %i.bn = fmul double %i.bk, %i.bk
  %i.bo = fdiv double 1.000000e+00, %i.bn
  br label %_ZNK4absl12lts_2026052617zipf_distributionImE10param_type14pow_negative_qEd.exit

bb.l:                                             ; preds = %_ZNK4absl12lts_2026052617zipf_distributionImE10param_type1hEd.exit
  %i.bp = tail call double @log(double noundef %i.bk) #17
  %i.bq = fneg double %i.bl
  %i.br = fmul double %i.bp, %i.bq
  %i.bs = tail call double @exp(double noundef %i.br) #17
  br label %_ZNK4absl12lts_2026052617zipf_distributionImE10param_type14pow_negative_qEd.exit

_ZNK4absl12lts_2026052617zipf_distributionImE10param_type14pow_negative_qEd.exit: ; preds = %bb.k, %bb.l
  %i.bt = phi double [ %i.bo, %bb.k ], [ %i.bs, %bb.l ]
  %i.bu = fsub double %i.bj, %i.bt
  %i.bv = fcmp ult double %i.ai, %i.bu
  br i1 %i.bv, label %select.unfold.backedge, label %bb.m

bb.m:                                             ; preds = %_ZNK4absl12lts_2026052617zipf_distributionImE10param_type14pow_negative_qEd.exit, %bb.g
  %i.bw = fptoui double %i.au to i64
  ret i64 %i.bw
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local i128 @_ZN4absl12lts_2026052617zipf_distributionINS0_6int128EEclINS0_6BitGenEEES2_RT_RKNS3_10param_typeE(ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(288) %1, ptr noundef nonnull align 16 dereferenceable(72) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = and i64 %i.a, 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %i.b ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre.i.i.pre = load i64, ptr %i.d, align 8, !tbaa !275
  br label %select.unfold

select.unfold:                                    ; preds = %select.unfold.backedge, %bb.a
  %i.n = phi i64 [ %.pre.i.i.pre, %bb.a ], [ %i.t, %select.unfold.backedge ]
  %i.o = icmp ugt i64 %i.n, 31
  br i1 %i.o, label %bb.b, label %_ZN4absl12lts_2026052615random_internal15FastUniformBitsImEclINS0_6BitGenEEEmRT_.exit.i.i

bb.b:                                             ; preds = %select.unfold
  store i64 2, ptr %i.d, align 8, !tbaa !275
  %i.p = load i8, ptr %i.f, align 8, !tbaa !282, !range !283, !noundef !284
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !285  ; 2 uses
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4absl12lts_2026052615random_internal11RandenHwAes8GenerateEPKvPv(ptr noundef %i.r, ptr noundef nonnull %i.c)
  br label %_ZN4absl12lts_2026052615random_internal15FastUniformBitsImEclINS0_6BitGenEEEmRT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN4absl12lts_2026052615random_internal10RandenSlow8GenerateEPKvPv(ptr noundef %i.r, ptr noundef nonnull %i.c)
  br label %_ZN4absl12lts_2026052615random_internal15FastUniformBitsImEclINS0_6BitGenEEEmRT_.exit.i.i

_ZN4absl12lts_2026052615random_internal15FastUniformBitsImEclINS0_6BitGenEEEmRT_.exit.i.i: ; preds = %bb.d, %bb.c, %select.unfold
  %i.s = load i64, ptr %i.d, align 8, !tbaa !275  ; 2 uses
  %i.t = add i64 %i.s, 1                          ; 2 uses
  store i64 %i.t, ptr %i.d, align 8, !tbaa !275
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.s
  %i.v = load i64, ptr %i.u, align 8, !tbaa !22   ; 3 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_ZN4absl12lts_2026052625uniform_real_distributionIdEclINS0_6BitGenEEEdRT_.exit, label %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.i

_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.i: ; preds = %_ZN4absl12lts_2026052615random_internal15FastUniformBitsImEclINS0_6BitGenEEEmRT_.exit.i.i
  %i.x = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.v, i1 true) ; 2 uses
  %i.y = shl i64 %i.v, %i.x
  %i.z = lshr i64 %i.y, 11
  %i.aa = and i64 %i.z, 4503599627370495
  %i.ab = shl nuw nsw i64 %i.x, 52
  %reass.sub = sub nsw i64 %i.aa, %i.ab
  %i.ac = add nsw i64 %reass.sub, 4602678819172646912
  %i.ad = bitcast i64 %i.ac to double             ; 2 uses
  %i.ae = fadd double %i.ad, 0.000000e+00
  %i.af = fcmp uge double %i.ad, 1.000000e+00
  br i1 %i.af, label %select.unfold.backedge, label %_ZN4absl12lts_2026052625uniform_real_distributionIdEclINS0_6BitGenEEEdRT_.exit

select.unfold.backedge:                           ; preds = %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.i, %_ZNK4absl12lts_2026052617zipf_distributionINS0_6int128EE10param_type14pow_negative_qEd.exit, %_ZNK4absl12lts_2026052617zipf_distributionINS0_6int128EE10param_type4hinvEd.exit
  br label %select.unfold, !llvm.loop !378

_ZN4absl12lts_2026052625uniform_real_distributionIdEclINS0_6BitGenEEEdRT_.exit: ; preds = %_ZN4absl12lts_2026052615random_internal15FastUniformBitsImEclINS0_6BitGenEEEmRT_.exit.i.i, %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.i
  %.0.i.i.i31 = phi double [ %i.ae, %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.i ], [ 0.000000e+00, %_ZN4absl12lts_2026052615random_internal15FastUniformBitsImEclINS0_6BitGenEEEmRT_.exit.i.i ]
  %i.ag = load double, ptr %i.g, align 8, !tbaa !236
  %i.ah = load double, ptr %i.h, align 16, !tbaa !75
  %i.ai = tail call double @llvm.fmuladd.f64(double %.0.i.i.i31, double %i.ah, double %i.ag) ; 3 uses
  %i.aj = load double, ptr %i.i, align 8, !tbaa !237 ; 3 uses
  %i.ak = load double, ptr %i.j, align 16, !tbaa !238 ; 3 uses
  %i.al = fcmp oeq double %i.ak, -1.000000e+00    ; 2 uses
  br i1 %i.al, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4absl12lts_2026052625uniform_real_distributionIdEclINS0_6BitGenEEEdRT_.exit
  %i.am = fdiv double -1.000000e+00, %i.ai
  br label %_ZNK4absl12lts_2026052617zipf_distributionINS0_6int128EE10param_type4hinvEd.exit

bb.f:                                             ; preds = %_ZN4absl12lts_2026052625uniform_real_distributionIdEclINS0_6BitGenEEEdRT_.exit
  %i.an = load double, ptr %i.k, align 16, !tbaa !379
  %i.ao = fmul double %i.ai, %i.ak
  %i.ap = tail call double @log(double noundef %i.ao) #17
  %i.aq = fmul double %i.an, %i.ap
  %i.ar = tail call double @exp(double noundef %i.aq) #17
  br label %_ZNK4absl12lts_2026052617zipf_distributionINS0_6int128EE10param_type4hinvEd.exit

_ZNK4absl12lts_2026052617zipf_distributionINS0_6int128EE10param_type4hinvEd.exit: ; preds = %bb.e, %bb.f
  %i.as = phi double [ %i.am, %bb.e ], [ %i.ar, %bb.f ]
  %i.at = fsub double %i.as, %i.aj                ; 2 uses
  %i.au = tail call double @llvm.rint.f64(double %i.at) ; 5 uses
  %.sroa.0.0.copyload.i = load i128, ptr %2, align 16, !tbaa !73
  %i.av = sitofp i128 %.sroa.0.0.copyload.i to double
  %i.aw = fcmp ogt double %i.au, %i.av
  br i1 %i.aw, label %select.unfold.backedge, label %bb.g

bb.g:                                             ; preds = %_ZNK4absl12lts_2026052617zipf_distributionINS0_6int128EE10param_type4hinvEd.exit
  %i.ax = fsub double %i.au, %i.at
  %i.ay = load double, ptr %i.l, align 8, !tbaa !380
  %i.az = fcmp ugt double %i.ax, %i.ay
  br i1 %i.az, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.ba = fadd double %i.au, 5.000000e-01
  %i.bb = fadd double %i.aj, %i.ba                ; 2 uses
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bc = fdiv double -1.000000e+00, %i.bb
  br label %_ZNK4absl12lts_2026052617zipf_distributionINS0_6int128EE10param_type1hEd.exit

bb.j:                                             ; preds = %bb.h
  %i.bd = tail call double @log(double noundef %i.bb) #17
  %i.be = fmul double %i.ak, %i.bd
  %i.bf = tail call double @exp(double noundef %i.be) #17
  %i.bg = load double, ptr %i.k, align 16, !tbaa !379
  %i.bh = fmul double %i.bf, %i.bg
  br label %_ZNK4absl12lts_2026052617zipf_distributionINS0_6int128EE10param_type1hEd.exit

_ZNK4absl12lts_2026052617zipf_distributionINS0_6int128EE10param_type1hEd.exit: ; preds = %bb.i, %bb.j
  %i.bi = phi double [ %i.bc, %bb.i ], [ %i.bh, %bb.j ]
  %i.bj = fadd double %i.aj, %i.au                ; 3 uses
  %i.bk = load double, ptr %i.m, align 16, !tbaa !381 ; 2 uses
  %i.bl = fcmp oeq double %i.bk, 2.000000e+00
  br i1 %i.bl, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK4absl12lts_2026052617zipf_distributionINS0_6int128EE10param_type1hEd.exit
  %i.bm = fmul double %i.bj, %i.bj
  %i.bn = fdiv double 1.000000e+00, %i.bm
  br label %_ZNK4absl12lts_2026052617zipf_distributionINS0_6int128EE10param_type14pow_negative_qEd.exit

bb.l:                                             ; preds = %_ZNK4absl12lts_2026052617zipf_distributionINS0_6int128EE10param_type1hEd.exit
  %i.bo = tail call double @log(double noundef %i.bj) #17
  %i.bp = fneg double %i.bk
  %i.bq = fmul double %i.bo, %i.bp
  %i.br = tail call double @exp(double noundef %i.bq) #17
  br label %_ZNK4absl12lts_2026052617zipf_distributionINS0_6int128EE10param_type14pow_negative_qEd.exit

_ZNK4absl12lts_2026052617zipf_distributionINS0_6int128EE10param_type14pow_negative_qEd.exit: ; preds = %bb.k, %bb.l
  %i.bs = phi double [ %i.bn, %bb.k ], [ %i.br, %bb.l ]
  %i.bt = fsub double %i.bi, %i.bs
  %i.bu = fcmp ult double %i.ai, %i.bt
  br i1 %i.bu, label %select.unfold.backedge, label %bb.m

bb.m:                                             ; preds = %_ZNK4absl12lts_2026052617zipf_distributionINS0_6int128EE10param_type14pow_negative_qEd.exit, %bb.g
  %i.bv = fptosi double %i.au to i128
  ret i128 %i.bv
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { i64, i64 } @_ZN4absl12lts_2026052617zipf_distributionINS0_7uint128EEclINS0_6BitGenEEES2_RT_RKNS3_10param_typeE(ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(288) %1, ptr noundef nonnull align 16 dereferenceable(72) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20260526::uint128", align 16 ; 3 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = and i64 %i.a, 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %i.b ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre.i.i.pre = load i64, ptr %i.d, align 8, !tbaa !275
  br label %select.unfold

select.unfold:                                    ; preds = %select.unfold.backedge, %bb.a
  %i.n = phi i64 [ %.pre.i.i.pre, %bb.a ], [ %i.t, %select.unfold.backedge ]
  %i.o = icmp ugt i64 %i.n, 31
  br i1 %i.o, label %bb.b, label %_ZN4absl12lts_2026052615random_internal15FastUniformBitsImEclINS0_6BitGenEEEmRT_.exit.i.i

bb.b:                                             ; preds = %select.unfold
  store i64 2, ptr %i.d, align 8, !tbaa !275
  %i.p = load i8, ptr %i.f, align 8, !tbaa !282, !range !283, !noundef !284
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !285  ; 2 uses
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4absl12lts_2026052615random_internal11RandenHwAes8GenerateEPKvPv(ptr noundef %i.r, ptr noundef nonnull %i.c)
  br label %_ZN4absl12lts_2026052615random_internal15FastUniformBitsImEclINS0_6BitGenEEEmRT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN4absl12lts_2026052615random_internal10RandenSlow8GenerateEPKvPv(ptr noundef %i.r, ptr noundef nonnull %i.c)
  br label %_ZN4absl12lts_2026052615random_internal15FastUniformBitsImEclINS0_6BitGenEEEmRT_.exit.i.i

_ZN4absl12lts_2026052615random_internal15FastUniformBitsImEclINS0_6BitGenEEEmRT_.exit.i.i: ; preds = %bb.d, %bb.c, %select.unfold
  %i.s = load i64, ptr %i.d, align 8, !tbaa !275  ; 2 uses
  %i.t = add i64 %i.s, 1                          ; 2 uses
  store i64 %i.t, ptr %i.d, align 8, !tbaa !275
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.s
  %i.v = load i64, ptr %i.u, align 8, !tbaa !22   ; 3 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_ZN4absl12lts_2026052625uniform_real_distributionIdEclINS0_6BitGenEEEdRT_.exit, label %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.i

_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.i: ; preds = %_ZN4absl12lts_2026052615random_internal15FastUniformBitsImEclINS0_6BitGenEEEmRT_.exit.i.i
  %i.x = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.v, i1 true) ; 2 uses
  %i.y = shl i64 %i.v, %i.x
  %i.z = lshr i64 %i.y, 11
  %i.aa = and i64 %i.z, 4503599627370495
  %i.ab = shl nuw nsw i64 %i.x, 52
  %reass.sub = sub nsw i64 %i.aa, %i.ab
  %i.ac = add nsw i64 %reass.sub, 4602678819172646912
  %i.ad = bitcast i64 %i.ac to double             ; 2 uses
  %i.ae = fadd double %i.ad, 0.000000e+00
  %i.af = fcmp uge double %i.ad, 1.000000e+00
  br i1 %i.af, label %select.unfold.backedge, label %_ZN4absl12lts_2026052625uniform_real_distributionIdEclINS0_6BitGenEEEdRT_.exit

select.unfold.backedge:                           ; preds = %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.i, %_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type14pow_negative_qEd.exit, %_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type4hinvEd.exit
  br label %select.unfold, !llvm.loop !382

_ZN4absl12lts_2026052625uniform_real_distributionIdEclINS0_6BitGenEEEdRT_.exit: ; preds = %_ZN4absl12lts_2026052615random_internal15FastUniformBitsImEclINS0_6BitGenEEEmRT_.exit.i.i, %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.i
  %.0.i.i.i31 = phi double [ %i.ae, %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.i ], [ 0.000000e+00, %_ZN4absl12lts_2026052615random_internal15FastUniformBitsImEclINS0_6BitGenEEEmRT_.exit.i.i ]
  %i.ag = load double, ptr %i.g, align 8, !tbaa !242
  %i.ah = load double, ptr %i.h, align 16, !tbaa !78
  %i.ai = tail call double @llvm.fmuladd.f64(double %.0.i.i.i31, double %i.ah, double %i.ag) ; 3 uses
  %i.aj = load double, ptr %i.i, align 8, !tbaa !243 ; 3 uses
  %i.ak = load double, ptr %i.j, align 16, !tbaa !244 ; 3 uses
  %i.al = fcmp oeq double %i.ak, -1.000000e+00    ; 2 uses
  br i1 %i.al, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4absl12lts_2026052625uniform_real_distributionIdEclINS0_6BitGenEEEdRT_.exit
  %i.am = fdiv double -1.000000e+00, %i.ai
  br label %_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type4hinvEd.exit

bb.f:                                             ; preds = %_ZN4absl12lts_2026052625uniform_real_distributionIdEclINS0_6BitGenEEEdRT_.exit
  %i.an = load double, ptr %i.k, align 16, !tbaa !383
  %i.ao = fmul double %i.ai, %i.ak
  %i.ap = tail call double @log(double noundef %i.ao) #17
  %i.aq = fmul double %i.an, %i.ap
  %i.ar = tail call double @exp(double noundef %i.aq) #17
  br label %_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type4hinvEd.exit

_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type4hinvEd.exit: ; preds = %bb.e, %bb.f
  %i.as = phi double [ %i.am, %bb.e ], [ %i.ar, %bb.f ]
  %i.at = fsub double %i.as, %i.aj                ; 2 uses
  %i.au = tail call double @llvm.rint.f64(double %i.at) ; 5 uses
  %4 = load <2 x i64>, ptr %2, align 16, !tbaa !22
  %5 = uitofp <2 x i64> %4 to <2 x double>        ; 2 uses
  %6 = extractelement <2 x double> %5, i64 0
  %7 = extractelement <2 x double> %5, i64 1
  %i.av = tail call noundef double @llvm.fmuladd.f64(double %7, double f0x43F0000000000000, double %6)
  %i.aw = fcmp ogt double %i.au, %i.av
  br i1 %i.aw, label %select.unfold.backedge, label %bb.g

bb.g:                                             ; preds = %_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type4hinvEd.exit
  %i.ax = fsub double %i.au, %i.at
  %i.ay = load double, ptr %i.l, align 8, !tbaa !384
  %i.az = fcmp ugt double %i.ax, %i.ay
  br i1 %i.az, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.ba = fadd double %i.au, 5.000000e-01
  %i.bb = fadd double %i.aj, %i.ba                ; 2 uses
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bc = fdiv double -1.000000e+00, %i.bb
  br label %_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type1hEd.exit

bb.j:                                             ; preds = %bb.h
  %i.bd = tail call double @log(double noundef %i.bb) #17
  %i.be = fmul double %i.ak, %i.bd
  %i.bf = tail call double @exp(double noundef %i.be) #17
  %i.bg = load double, ptr %i.k, align 16, !tbaa !383
  %i.bh = fmul double %i.bf, %i.bg
  br label %_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type1hEd.exit

_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type1hEd.exit: ; preds = %bb.i, %bb.j
  %i.bi = phi double [ %i.bc, %bb.i ], [ %i.bh, %bb.j ]
  %i.bj = fadd double %i.aj, %i.au                ; 3 uses
  %i.bk = load double, ptr %i.m, align 16, !tbaa !385 ; 2 uses
  %i.bl = fcmp oeq double %i.bk, 2.000000e+00
  br i1 %i.bl, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type1hEd.exit
  %i.bm = fmul double %i.bj, %i.bj
  %i.bn = fdiv double 1.000000e+00, %i.bm
  br label %_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type14pow_negative_qEd.exit

bb.l:                                             ; preds = %_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type1hEd.exit
  %i.bo = tail call double @log(double noundef %i.bj) #17
  %i.bp = fneg double %i.bk
  %i.bq = fmul double %i.bo, %i.bp
  %i.br = tail call double @exp(double noundef %i.bq) #17
  br label %_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type14pow_negative_qEd.exit

_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type14pow_negative_qEd.exit: ; preds = %bb.k, %bb.l
  %i.bs = phi double [ %i.bn, %bb.k ], [ %i.br, %bb.l ]
  %i.bt = fsub double %i.bi, %i.bs
  %i.bu = fcmp ult double %i.ai, %i.bt
  br i1 %i.bu, label %select.unfold.backedge, label %bb.m

bb.m:                                             ; preds = %_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type14pow_negative_qEd.exit, %bb.g
  call void @_ZN4absl12lts_202605267uint128C1Ed(ptr noundef nonnull align 16 dereferenceable(16) %3, double noundef %i.au)
  %.fca.0.load = load i64, ptr %3, align 16
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.fca.1.load, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef double @_ZN4absl12lts_2026052615random_internal26gaussian_distribution_base6zignorINS0_6BitGenEEEdRT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(288) %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = and i64 %i.a, 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %i.b ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  %.pre = load i64, ptr %i.d, align 8, !tbaa !275
  br label %bb.b

bb.b:                                             ; preds = %_ZN4absl12lts_2026052615random_internal15FastUniformBitsImEclINS0_6BitGenEEEmRT_.exit23, %bb.a
  %i.g = phi i64 [ %i.av, %_ZN4absl12lts_2026052615random_internal15FastUniformBitsImEclINS0_6BitGenEEEmRT_.exit23 ], [ %.pre, %bb.a ]
  %i.h = icmp ugt i64 %i.g, 31
  br i1 %i.h, label %bb.c, label %_ZN4absl12lts_2026052615random_internal15FastUniformBitsImEclINS0_6BitGenEEEmRT_.exit

bb.c:                                             ; preds = %bb.b
  store i64 2, ptr %i.d, align 8, !tbaa !275
  %i.i = load i8, ptr %i.f, align 8, !tbaa !282, !range !283, !noundef !284
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !285  ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4absl12lts_2026052615random_internal11RandenHwAes8GenerateEPKvPv(ptr noundef %i.k, ptr noundef nonnull %i.c)
  br label %_ZN4absl12lts_2026052615random_internal15FastUniformBitsImEclINS0_6BitGenEEEmRT_.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4absl12lts_2026052615random_internal10RandenSlow8GenerateEPKvPv(ptr noundef %i.k, ptr noundef nonnull %i.c)
  br label %_ZN4absl12lts_2026052615random_internal15FastUniformBitsImEclINS0_6BitGenEEEmRT_.exit

_ZN4absl12lts_2026052615random_internal15FastUniformBitsImEclINS0_6BitGenEEEmRT_.exit: ; preds = %bb.b, %bb.d, %bb.e
  %i.l = load i64, ptr %i.d, align 8, !tbaa !275  ; 2 uses
  %i.m = add i64 %i.l, 1                          ; 2 uses
  store i64 %i.m, ptr %i.d, align 8, !tbaa !275
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.l
  %i.o = load i64, ptr %i.n, align 8, !tbaa !22   ; 5 uses
  %i.p = trunc i64 %i.o to i32
  %i.q = and i32 %i.p, 127                        ; 2 uses
  %i.r = and i64 %i.o, -9223372036854775808
  %i.s = and i64 %i.o, 9223372036854775807
  %i.t = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.s, i1 false) ; 2 uses
  %i.u = and i64 %i.t, 63
  %i.v = shl i64 %i.o, %i.u
  %i.w = lshr i64 %i.v, 11
  %i.x = shl nuw nsw i64 %i.t, 52
  %i.y = or disjoint i64 %i.x, %i.r
  %i.z = and i64 %i.w, 4503599627370495
  %i.aa = or disjoint i64 %i.z, %i.y
  %i.ab = xor i64 %i.aa, 4607182418800017408
  %i.ac = bitcast i64 %i.ab to double             ; 2 uses
  %i.ad = and i64 %i.o, 127                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr @_ZN4absl12lts_2026052615random_internal26gaussian_distribution_base3zg_E, i64 %i.ad
  %i.af = load double, ptr %i.ae, align 8, !tbaa !36
  %i.ag = fmul double %i.af, %i.ac                ; 5 uses
  %i.ah = tail call noundef double @llvm.fabs.f64(double %i.ag)
  %i.ai = add nuw nsw i32 %i.q, 1
  %i.aj = zext nneg i32 %i.ai to i64              ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr @_ZN4absl12lts_2026052615random_internal26gaussian_distribution_base3zg_E, i64 %i.aj
  %i.al = load double, ptr %i.ak, align 8, !tbaa !36
  %i.am = fcmp olt double %i.ah, %i.al
  br i1 %i.am, label %select.unfold, label %bb.f

bb.f:                                             ; preds = %_ZN4absl12lts_2026052615random_internal15FastUniformBitsImEclINS0_6BitGenEEEmRT_.exit
  %i.an = icmp eq i32 %i.q, 0
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ao = fcmp olt double %i.ac, 0.000000e+00
  %i.ap = tail call noundef double @_ZN4absl12lts_2026052615random_internal26gaussian_distribution_base15zignor_fallbackINS0_6BitGenEEEdRT_b(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(288) %1, i1 noundef zeroext %i.ao)
  br label %select.unfold

bb.h:                                             ; preds = %bb.f
  %i.aq = icmp ugt i64 %i.m, 31
  br i1 %i.aq, label %bb.i, label %_ZN4absl12lts_2026052615random_internal15FastUniformBitsImEclINS0_6BitGenEEEmRT_.exit23

bb.i:                                             ; preds = %bb.h
  store i64 2, ptr %i.d, align 8, !tbaa !275
  %i.ar = load i8, ptr %i.f, align 8, !tbaa !282, !range !283, !noundef !284
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = load ptr, ptr %i.e, align 8, !tbaa !285 ; 2 uses
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN4absl12lts_2026052615random_internal11RandenHwAes8GenerateEPKvPv(ptr noundef %i.at, ptr noundef nonnull %i.c)
  br label %_ZN4absl12lts_2026052615random_internal15FastUniformBitsImEclINS0_6BitGenEEEmRT_.exit23

bb.k:                                             ; preds = %bb.i
  tail call void @_ZN4absl12lts_2026052615random_internal10RandenSlow8GenerateEPKvPv(ptr noundef %i.at, ptr noundef nonnull %i.c)
  br label %_ZN4absl12lts_2026052615random_internal15FastUniformBitsImEclINS0_6BitGenEEEmRT_.exit23

_ZN4absl12lts_2026052615random_internal15FastUniformBitsImEclINS0_6BitGenEEEmRT_.exit23: ; preds = %bb.h, %bb.j, %bb.k
  %i.au = load i64, ptr %i.d, align 8, !tbaa !275 ; 2 uses
  %i.av = add i64 %i.au, 1                        ; 2 uses
  store i64 %i.av, ptr %i.d, align 8, !tbaa !275
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.au
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !22 ; 2 uses
  %i.ay = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ax, i1 false) ; 2 uses
  %i.az = and i64 %i.ay, 63
  %i.ba = shl i64 %i.ax, %i.az
  %i.bb = lshr i64 %i.ba, 11
  %i.bc = shl nuw nsw i64 %i.ay, 52
  %i.bd = and i64 %i.bb, 4503599627370495
  %reass.sub = sub nsw i64 %i.bd, %i.bc
  %i.be = add nsw i64 %reass.sub, 4602678819172646912
  %i.bf = bitcast i64 %i.be to double
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2026052615random_internal26gaussian_distribution_base3zg_E, i64 1032), i64 %i.aj
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !36 ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2026052615random_internal26gaussian_distribution_base3zg_E, i64 1032), i64 %i.ad
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !36
  %i.bk = fsub double %i.bj, %i.bh
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.bf, double %i.bk, double %i.bh)
  %i.bm = fmul double %i.ag, -5.000000e-01
  %i.bn = fmul double %i.ag, %i.bm
  %i.bo = tail call double @exp(double noundef %i.bn) #17
  %i.bp = fcmp olt double %i.bl, %i.bo
  br i1 %i.bp, label %select.unfold, label %bb.b

select.unfold:                                    ; preds = %_ZN4absl12lts_2026052615random_internal15FastUniformBitsImEclINS0_6BitGenEEEmRT_.exit23, %_ZN4absl12lts_2026052615random_internal15FastUniformBitsImEclINS0_6BitGenEEEmRT_.exit, %bb.g
  %.2.ph = phi double [ %i.ap, %bb.g ], [ %i.ag, %_ZN4absl12lts_2026052615random_internal15FastUniformBitsImEclINS0_6BitGenEEEmRT_.exit ], [ %i.ag, %_ZN4absl12lts_2026052615random_internal15FastUniformBitsImEclINS0_6BitGenEEEmRT_.exit23 ]
  ret double %.2.ph
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef double @_ZN4absl12lts_2026052615random_internal26gaussian_distribution_base15zignor_fallbackINS0_6BitGenEEEdRT_b(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(288) %1, i1 noundef zeroext %2) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = and i64 %i.a, 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %i.b ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  %.pre = load i64, ptr %i.d, align 8, !tbaa !275
  br label %bb.b

bb.b:                                             ; preds = %_ZN4absl12lts_2026052615random_internal15FastUniformBitsImEclINS0_6BitGenEEEmRT_.exit9, %bb.a
  %i.g = phi i64 [ %i.ae, %_ZN4absl12lts_2026052615random_internal15FastUniformBitsImEclINS0_6BitGenEEEmRT_.exit9 ], [ %.pre, %bb.a ]
  %i.h = icmp ugt i64 %i.g, 31
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2026052617zipf_distributionImEclINS0_14InsecureBitGenEEEmRT_RKNS2_10param_typeE:bb.a
  %i.ax = fcmp ogt double %i.au, %i.aw
  br i1 %i.ax, label %.split.i.i.backedge, label %bb.d

bb.d:                                             ; preds = %_ZNK4absl12lts_2026052617zipf_distributionImE10param_type4hinvEd.exit
  %i.ay = fsub double %i.au, %i.at
  %i.az = fcmp ugt double %i.ay, %i.m
  br i1 %i.az, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.ba = fadd double %i.au, 5.000000e-01
  %i.bb = fadd double %i.f, %i.ba                 ; 2 uses
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bc = fdiv double -1.000000e+00, %i.bb
  br label %_ZNK4absl12lts_2026052617zipf_distributionImE10param_type1hEd.exit

bb.g:                                             ; preds = %bb.e
  %i.bd = tail call double @log(double noundef %i.bb) #17
  %i.be = fmul double %i.h, %i.bd
  %i.bf = tail call double @exp(double noundef %i.be) #17
  %i.bg = fmul double %i.bf, %i.k
  br label %_ZNK4absl12lts_2026052617zipf_distributionImE10param_type1hEd.exit

_ZNK4absl12lts_2026052617zipf_distributionImE10param_type1hEd.exit: ; preds = %bb.f, %bb.g
  %i.bh = phi double [ %i.bc, %bb.f ], [ %i.bg, %bb.g ]
  %i.bi = fadd double %i.f, %i.au                 ; 3 uses
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK4absl12lts_2026052617zipf_distributionImE10param_type1hEd.exit
  %i.bj = fmul double %i.bi, %i.bi
  %i.bk = fdiv double 1.000000e+00, %i.bj
  br label %_ZNK4absl12lts_2026052617zipf_distributionImE10param_type14pow_negative_qEd.exit

bb.i:                                             ; preds = %_ZNK4absl12lts_2026052617zipf_distributionImE10param_type1hEd.exit
  %i.bl = tail call double @log(double noundef %i.bi) #17
  %i.bm = fmul double %i.bl, %i.q
  %i.bn = tail call double @exp(double noundef %i.bm) #17
  br label %_ZNK4absl12lts_2026052617zipf_distributionImE10param_type14pow_negative_qEd.exit

_ZNK4absl12lts_2026052617zipf_distributionImE10param_type14pow_negative_qEd.exit: ; preds = %bb.h, %bb.i
  %i.bo = phi double [ %i.bk, %bb.h ], [ %i.bn, %bb.i ]
  %i.bp = fsub double %i.bh, %i.bo
  %i.bq = fcmp ult double %i.am, %i.bp
  br i1 %i.bq, label %.split.i.i.backedge, label %bb.j

bb.j:                                             ; preds = %_ZNK4absl12lts_2026052617zipf_distributionImE10param_type14pow_negative_qEd.exit, %bb.d
  %i.br = fptoui double %i.au to i64
  ret i64 %i.br
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local i128 @_ZN4absl12lts_2026052617zipf_distributionINS0_6int128EEclINS0_14InsecureBitGenEEES2_RT_RKNS3_10param_typeE(ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 16 dereferenceable(72) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.b = load double, ptr %i.a, align 8, !tbaa !236
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.d = load double, ptr %i.c, align 16, !tbaa !75
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = load double, ptr %i.e, align 8, !tbaa !237 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = load double, ptr %i.g, align 16, !tbaa !238 ; 3 uses
  %i.i = fcmp oeq double %i.h, -1.000000e+00      ; 2 uses
  %.sroa.0.0.copyload.i = load i128, ptr %2, align 16, !tbaa !73
  %i.j = sitofp i128 %.sroa.0.0.copyload.i to double
  %.promoted = load i64, ptr %1, align 16, !tbaa !22
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.promoted = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.l = load double, ptr %i.k, align 16          ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.n = load double, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load double, ptr %i.o, align 16          ; 2 uses
  %i.q = fcmp oeq double %i.p, 2.000000e+00
  %i.r = fneg double %i.p
  br label %.split.i.i

.split.i.i:                                       ; preds = %.split.i.i.backedge, %bb.a
  %.narrow.i.i.i.i.i.i19.i.i = phi i64 [ %.sroa.22.0..sroa_idx.i.i.i.i.i.i.promoted, %bb.a ], [ %.narrow.i.i.i.i.i.i.i.i, %.split.i.i.backedge ]
  %i.s = phi i64 [ %.promoted, %bb.a ], [ %i.z, %.split.i.i.backedge ]
  %i.t = zext i64 %.narrow.i.i.i.i.i.i19.i.i to i128
  %i.u = shl nuw i128 %i.t, 64
  %i.v = zext i64 %i.s to i128
  %i.w = or disjoint i128 %i.u, %i.v
  %i.x = mul i128 %i.w, 47026247687942121848144207491837523525
  %i.y = add i128 %i.x, 1442695040888963407       ; 2 uses
  %i.z = trunc i128 %i.y to i64                   ; 4 uses
  %i.aa = lshr i128 %i.y, 64
  %.tr.i.i.i.i.i.i.i.i = trunc nuw i128 %i.aa to i64
  %.narrow.i.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i.i, 6364136223846793005 ; 5 uses
  %i.ab = icmp eq i64 %.narrow.i.i.i.i.i.i.i.i, %i.z
  br i1 %i.ab, label %_ZN4absl12lts_2026052625uniform_real_distributionIdEclINS0_14InsecureBitGenEEEdRT_.exit, label %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.i

_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.i: ; preds = %.split.i.i
  %i.ac = xor i64 %.narrow.i.i.i.i.i.i.i.i, %i.z  ; 2 uses
  %i.ad = lshr i64 %.narrow.i.i.i.i.i.i.i.i, 58
  %.0.i.i.i.i.i.i.i.i.i = tail call noundef i64 @llvm.fshr.i64(i64 %i.ac, i64 %i.ac, i64 %i.ad) ; 2 uses
  %i.ae = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.i.i.i.i.i.i.i.i.i, i1 true) ; 2 uses
  %i.af = shl i64 %.0.i.i.i.i.i.i.i.i.i, %i.ae
  %i.ag = lshr i64 %i.af, 11
  %i.ah = and i64 %i.ag, 4503599627370495
  %i.ai = shl nuw nsw i64 %i.ae, 52
  %reass.sub = sub nsw i64 %i.ah, %i.ai
  %i.aj = add nsw i64 %reass.sub, 4602678819172646912
  %i.ak = bitcast i64 %i.aj to double             ; 2 uses
  %i.al = fadd double %i.ak, 0.000000e+00
  %i.am = fcmp uge double %i.ak, 1.000000e+00
  br i1 %i.am, label %.split.i.i.backedge, label %_ZN4absl12lts_2026052625uniform_real_distributionIdEclINS0_14InsecureBitGenEEEdRT_.exit

.split.i.i.backedge:                              ; preds = %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.i, %_ZNK4absl12lts_2026052617zipf_distributionINS0_6int128EE10param_type14pow_negative_qEd.exit, %_ZNK4absl12lts_2026052617zipf_distributionINS0_6int128EE10param_type4hinvEd.exit
  br label %.split.i.i, !llvm.loop !425

_ZN4absl12lts_2026052625uniform_real_distributionIdEclINS0_14InsecureBitGenEEEdRT_.exit: ; preds = %.split.i.i, %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.i
  %.0.i.i.i33 = phi double [ %i.al, %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.i ], [ 0.000000e+00, %.split.i.i ]
  %i.an = tail call double @llvm.fmuladd.f64(double %.0.i.i.i33, double %i.d, double %i.b) ; 3 uses
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN4absl12lts_2026052625uniform_real_distributionIdEclINS0_14InsecureBitGenEEEdRT_.exit
  %i.ao = fdiv double -1.000000e+00, %i.an
  br label %_ZNK4absl12lts_2026052617zipf_distributionINS0_6int128EE10param_type4hinvEd.exit

bb.c:                                             ; preds = %_ZN4absl12lts_2026052625uniform_real_distributionIdEclINS0_14InsecureBitGenEEEdRT_.exit
  %i.ap = fmul double %i.an, %i.h
  %i.aq = tail call double @log(double noundef %i.ap) #17
  %i.ar = fmul double %i.l, %i.aq
  %i.as = tail call double @exp(double noundef %i.ar) #17
  br label %_ZNK4absl12lts_2026052617zipf_distributionINS0_6int128EE10param_type4hinvEd.exit

_ZNK4absl12lts_2026052617zipf_distributionINS0_6int128EE10param_type4hinvEd.exit: ; preds = %bb.b, %bb.c
  %i.at = phi double [ %i.ao, %bb.b ], [ %i.as, %bb.c ]
  %i.au = fsub double %i.at, %i.f                 ; 2 uses
  %i.av = tail call double @llvm.rint.f64(double %i.au) ; 5 uses
  %i.aw = fcmp ogt double %i.av, %i.j
  br i1 %i.aw, label %.split.i.i.backedge, label %bb.d

bb.d:                                             ; preds = %_ZNK4absl12lts_2026052617zipf_distributionINS0_6int128EE10param_type4hinvEd.exit
  %i.ax = fsub double %i.av, %i.au
  %i.ay = fcmp ugt double %i.ax, %i.n
  br i1 %i.ay, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.az = fadd double %i.av, 5.000000e-01
  %i.ba = fadd double %i.f, %i.az                 ; 2 uses
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bb = fdiv double -1.000000e+00, %i.ba
  br label %_ZNK4absl12lts_2026052617zipf_distributionINS0_6int128EE10param_type1hEd.exit

bb.g:                                             ; preds = %bb.e
  %i.bc = tail call double @log(double noundef %i.ba) #17
  %i.bd = fmul double %i.h, %i.bc
  %i.be = tail call double @exp(double noundef %i.bd) #17
  %i.bf = fmul double %i.be, %i.l
  br label %_ZNK4absl12lts_2026052617zipf_distributionINS0_6int128EE10param_type1hEd.exit

_ZNK4absl12lts_2026052617zipf_distributionINS0_6int128EE10param_type1hEd.exit: ; preds = %bb.f, %bb.g
  %i.bg = phi double [ %i.bb, %bb.f ], [ %i.bf, %bb.g ]
  %i.bh = fadd double %i.f, %i.av                 ; 3 uses
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK4absl12lts_2026052617zipf_distributionINS0_6int128EE10param_type1hEd.exit
  %i.bi = fmul double %i.bh, %i.bh
  %i.bj = fdiv double 1.000000e+00, %i.bi
  br label %_ZNK4absl12lts_2026052617zipf_distributionINS0_6int128EE10param_type14pow_negative_qEd.exit

bb.i:                                             ; preds = %_ZNK4absl12lts_2026052617zipf_distributionINS0_6int128EE10param_type1hEd.exit
  %i.bk = tail call double @log(double noundef %i.bh) #17
  %i.bl = fmul double %i.bk, %i.r
  %i.bm = tail call double @exp(double noundef %i.bl) #17
  br label %_ZNK4absl12lts_2026052617zipf_distributionINS0_6int128EE10param_type14pow_negative_qEd.exit

_ZNK4absl12lts_2026052617zipf_distributionINS0_6int128EE10param_type14pow_negative_qEd.exit: ; preds = %bb.h, %bb.i
  %i.bn = phi double [ %i.bj, %bb.h ], [ %i.bm, %bb.i ]
  %i.bo = fsub double %i.bg, %i.bn
  %i.bp = fcmp ult double %i.an, %i.bo
  br i1 %i.bp, label %.split.i.i.backedge, label %bb.j

bb.j:                                             ; preds = %_ZNK4absl12lts_2026052617zipf_distributionINS0_6int128EE10param_type14pow_negative_qEd.exit, %bb.d
  store i64 %i.z, ptr %1, align 16, !tbaa !22
  store i64 %.narrow.i.i.i.i.i.i.i.i, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !22
  %i.bq = fptosi double %i.av to i128
  ret i128 %i.bq
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { i64, i64 } @_ZN4absl12lts_2026052617zipf_distributionINS0_7uint128EEclINS0_14InsecureBitGenEEES2_RT_RKNS3_10param_typeE(ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 16 dereferenceable(72) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20260526::uint128", align 16 ; 3 uses
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.b = load double, ptr %i.a, align 8, !tbaa !242
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.d = load double, ptr %i.c, align 16, !tbaa !78
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = load double, ptr %i.e, align 8, !tbaa !243 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = load double, ptr %i.g, align 16, !tbaa !244 ; 3 uses
  %i.i = fcmp oeq double %i.h, -1.000000e+00      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.k = load double, ptr %i.j, align 16          ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.m = load double, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load double, ptr %i.n, align 16          ; 2 uses
  %i.p = fcmp oeq double %i.o, 2.000000e+00
  %i.q = fneg double %i.o
  %.promoted.i.i.pre = load i64, ptr %1, align 16, !tbaa !22
  %.sroa.22.0..sroa_idx.i.i.i.i.promoted.i.i.pre = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !22
  br label %.split.i.i

.split.i.i:                                       ; preds = %.split.i.i.backedge, %bb.a
  %.narrow.i.i.i.i.i.i19.i.i = phi i64 [ %.sroa.22.0..sroa_idx.i.i.i.i.promoted.i.i.pre, %bb.a ], [ %.narrow.i.i.i.i.i.i.i.i, %.split.i.i.backedge ]
  %i.r = phi i64 [ %.promoted.i.i.pre, %bb.a ], [ %i.y, %.split.i.i.backedge ]
  %i.s = zext i64 %.narrow.i.i.i.i.i.i19.i.i to i128
  %i.t = shl nuw i128 %i.s, 64
  %i.u = zext i64 %i.r to i128
  %i.v = or disjoint i128 %i.t, %i.u
  %i.w = mul i128 %i.v, 47026247687942121848144207491837523525
  %i.x = add i128 %i.w, 1442695040888963407       ; 2 uses
  %i.y = trunc i128 %i.x to i64                   ; 4 uses
  %i.z = lshr i128 %i.x, 64
  %.tr.i.i.i.i.i.i.i.i = trunc nuw i128 %i.z to i64
  %.narrow.i.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i.i, 6364136223846793005 ; 5 uses
  %i.aa = icmp eq i64 %.narrow.i.i.i.i.i.i.i.i, %i.y
  br i1 %i.aa, label %_ZN4absl12lts_2026052625uniform_real_distributionIdEclINS0_14InsecureBitGenEEEdRT_.exit, label %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.i

_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.i: ; preds = %.split.i.i
  %i.ab = xor i64 %.narrow.i.i.i.i.i.i.i.i, %i.y  ; 2 uses
  %i.ac = lshr i64 %.narrow.i.i.i.i.i.i.i.i, 58
  %.0.i.i.i.i.i.i.i.i.i = tail call noundef i64 @llvm.fshr.i64(i64 %i.ab, i64 %i.ab, i64 %i.ac) ; 2 uses
  %i.ad = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.i.i.i.i.i.i.i.i.i, i1 true) ; 2 uses
  %i.ae = shl i64 %.0.i.i.i.i.i.i.i.i.i, %i.ad
  %i.af = lshr i64 %i.ae, 11
  %i.ag = and i64 %i.af, 4503599627370495
  %i.ah = shl nuw nsw i64 %i.ad, 52
  %reass.sub = sub nsw i64 %i.ag, %i.ah
  %i.ai = add nsw i64 %reass.sub, 4602678819172646912
  %i.aj = bitcast i64 %i.ai to double             ; 2 uses
  %i.ak = fadd double %i.aj, 0.000000e+00
  %i.al = fcmp uge double %i.aj, 1.000000e+00
  br i1 %i.al, label %.split.i.i.backedge, label %_ZN4absl12lts_2026052625uniform_real_distributionIdEclINS0_14InsecureBitGenEEEdRT_.exit

.split.i.i.backedge:                              ; preds = %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.i, %_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type14pow_negative_qEd.exit, %_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type4hinvEd.exit
  br label %.split.i.i, !llvm.loop !426

_ZN4absl12lts_2026052625uniform_real_distributionIdEclINS0_14InsecureBitGenEEEdRT_.exit: ; preds = %.split.i.i, %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.i
  %.0.i.i.i33 = phi double [ %i.ak, %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.i ], [ 0.000000e+00, %.split.i.i ]
  store i64 %i.y, ptr %1, align 16, !tbaa !22
  store i64 %.narrow.i.i.i.i.i.i.i.i, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !22
  %i.am = tail call double @llvm.fmuladd.f64(double %.0.i.i.i33, double %i.d, double %i.b) ; 3 uses
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN4absl12lts_2026052625uniform_real_distributionIdEclINS0_14InsecureBitGenEEEdRT_.exit
  %i.an = fdiv double -1.000000e+00, %i.am
  br label %_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type4hinvEd.exit

bb.c:                                             ; preds = %_ZN4absl12lts_2026052625uniform_real_distributionIdEclINS0_14InsecureBitGenEEEdRT_.exit
  %i.ao = fmul double %i.am, %i.h
  %i.ap = tail call double @log(double noundef %i.ao) #17
  %i.aq = fmul double %i.k, %i.ap
  %i.ar = tail call double @exp(double noundef %i.aq) #17
  br label %_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type4hinvEd.exit

_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type4hinvEd.exit: ; preds = %bb.b, %bb.c
  %i.as = phi double [ %i.an, %bb.b ], [ %i.ar, %bb.c ]
  %i.at = fsub double %i.as, %i.f                 ; 2 uses
  %i.au = tail call double @llvm.rint.f64(double %i.at) ; 5 uses
  %4 = load <2 x i64>, ptr %2, align 16, !tbaa !22
  %5 = uitofp <2 x i64> %4 to <2 x double>        ; 2 uses
  %6 = extractelement <2 x double> %5, i64 0
  %7 = extractelement <2 x double> %5, i64 1
  %i.av = tail call noundef double @llvm.fmuladd.f64(double %7, double f0x43F0000000000000, double %6)
  %i.aw = fcmp ogt double %i.au, %i.av
  br i1 %i.aw, label %.split.i.i.backedge, label %bb.d

bb.d:                                             ; preds = %_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type4hinvEd.exit
  %i.ax = fsub double %i.au, %i.at
  %i.ay = fcmp ugt double %i.ax, %i.m
  br i1 %i.ay, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.az = fadd double %i.au, 5.000000e-01
  %i.ba = fadd double %i.f, %i.az                 ; 2 uses
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bb = fdiv double -1.000000e+00, %i.ba
  br label %_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type1hEd.exit

bb.g:                                             ; preds = %bb.e
  %i.bc = tail call double @log(double noundef %i.ba) #17
  %i.bd = fmul double %i.h, %i.bc
  %i.be = tail call double @exp(double noundef %i.bd) #17
  %i.bf = fmul double %i.be, %i.k
  br label %_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type1hEd.exit

_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type1hEd.exit: ; preds = %bb.f, %bb.g
  %i.bg = phi double [ %i.bb, %bb.f ], [ %i.bf, %bb.g ]
  %i.bh = fadd double %i.f, %i.au                 ; 3 uses
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type1hEd.exit
  %i.bi = fmul double %i.bh, %i.bh
  %i.bj = fdiv double 1.000000e+00, %i.bi
  br label %_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type14pow_negative_qEd.exit

bb.i:                                             ; preds = %_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type1hEd.exit
  %i.bk = tail call double @log(double noundef %i.bh) #17
  %i.bl = fmul double %i.bk, %i.q
  %i.bm = tail call double @exp(double noundef %i.bl) #17
  br label %_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type14pow_negative_qEd.exit

_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type14pow_negative_qEd.exit: ; preds = %bb.h, %bb.i
  %i.bn = phi double [ %i.bj, %bb.h ], [ %i.bm, %bb.i ]
  %i.bo = fsub double %i.bg, %i.bn
  %i.bp = fcmp ult double %i.am, %i.bo
  br i1 %i.bp, label %.split.i.i.backedge, label %bb.j

bb.j:                                             ; preds = %_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type14pow_negative_qEd.exit, %bb.d
  call void @_ZN4absl12lts_202605267uint128C1Ed(ptr noundef nonnull align 16 dereferenceable(16) %3, double noundef %i.au)
  %.fca.0.load = load i64, ptr %3, align 16
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.fca.1.load, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef double @_ZN4absl12lts_2026052615random_internal26gaussian_distribution_base6zignorINS0_14InsecureBitGenEEEdRT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 16 dereferenceable(16) %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.22.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.promoted = load i64, ptr %1, align 16, !tbaa !22
  %.sroa.22.0..sroa_idx.i.i.i.i.promoted = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !tbaa !22
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.narrow.i.i.i.i.i.i2743 = phi i64 [ %.narrow.i.i.i.i.i.i27, %bb.d ], [ %.sroa.22.0..sroa_idx.i.i.i.i.promoted, %bb.a ]
  %i.a = phi i64 [ %i.cm, %bb.d ], [ %.promoted, %bb.a ]
  %i.b = zext i64 %.narrow.i.i.i.i.i.i2743 to i128
  %i.c = shl nuw i128 %i.b, 64
  %i.d = zext i64 %i.a to i128
  %i.e = or disjoint i128 %i.c, %i.d
  %i.f = mul i128 %i.e, 47026247687942121848144207491837523525
  %i.g = add i128 %i.f, 1442695040888963407       ; 3 uses
  %i.h = trunc i128 %i.g to i64                   ; 3 uses
  %i.i = lshr i128 %i.g, 64
  %.tr.i.i.i.i.i.i = trunc nuw i128 %i.i to i64
  %.narrow.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i, 6364136223846793005 ; 5 uses
  %i.j = lshr i64 %.narrow.i.i.i.i.i.i, 58
  %i.k = xor i64 %.narrow.i.i.i.i.i.i, %i.h       ; 2 uses
  %.0.i.i.i.i.i.i.i = tail call noundef i64 @llvm.fshr.i64(i64 %i.k, i64 %i.k, i64 %i.j) ; 5 uses
  %i.l = trunc i64 %.0.i.i.i.i.i.i.i to i32
  %i.m = and i32 %i.l, 127                        ; 2 uses
  %i.n = and i64 %.0.i.i.i.i.i.i.i, -9223372036854775808
  %i.o = and i64 %.0.i.i.i.i.i.i.i, 9223372036854775807
  %i.p = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.o, i1 false) ; 2 uses
  %i.q = and i64 %i.p, 63
  %i.r = shl i64 %.0.i.i.i.i.i.i.i, %i.q
  %i.s = lshr i64 %i.r, 11
  %i.t = shl nuw nsw i64 %i.p, 52
  %i.u = or disjoint i64 %i.t, %i.n
  %i.v = and i64 %i.s, 4503599627370495
  %i.w = or disjoint i64 %i.v, %i.u
  %i.x = xor i64 %i.w, 4607182418800017408
  %i.y = bitcast i64 %i.x to double               ; 2 uses
  %i.z = and i64 %.0.i.i.i.i.i.i.i, 127           ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr @_ZN4absl12lts_2026052615random_internal26gaussian_distribution_base3zg_E, i64 %i.z
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !36
  %i.ac = fmul double %i.ab, %i.y                 ; 4 uses
  %i.ad = tail call noundef double @llvm.fabs.f64(double %i.ac)
  %i.ae = add nuw nsw i32 %i.m, 1
  %i.af = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr @_ZN4absl12lts_2026052615random_internal26gaussian_distribution_base3zg_E, i64 %i.af
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !36
  %i.ai = fcmp olt double %i.ad, %i.ah
  br i1 %i.ai, label %select.unfold.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = icmp eq i32 %i.m, 0
  br i1 %i.aj, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.c, %.preheader
  %.narrow.i.i.i.i.i.i1316.i = phi i64 [ %.narrow.i.i.i.i.i.i13.i, %.preheader ], [ %.narrow.i.i.i.i.i.i, %bb.c ]
  %i.ak = phi i64 [ %i.bl, %.preheader ], [ %i.h, %bb.c ]
  %i.al = zext i64 %.narrow.i.i.i.i.i.i1316.i to i128
  %i.am = shl nuw i128 %i.al, 64
  %i.an = zext i64 %i.ak to i128
  %i.ao = or disjoint i128 %i.am, %i.an
  %i.ap = mul i128 %i.ao, 47026247687942121848144207491837523525
  %i.aq = add i128 %i.ap, 1442695040888963407     ; 3 uses
  %i.ar = trunc i128 %i.aq to i64
  %i.as = lshr i128 %i.aq, 64
  %.tr.i.i.i.i.i.i.i = trunc nuw i128 %i.as to i64
  %.narrow.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i, 6364136223846793005 ; 3 uses
  %i.at = lshr i64 %.narrow.i.i.i.i.i.i.i, 58
  %i.au = xor i64 %.narrow.i.i.i.i.i.i.i, %i.ar   ; 2 uses
  %.0.i.i.i.i.i.i.i.i = tail call noundef i64 @llvm.fshr.i64(i64 %i.au, i64 %i.au, i64 %i.at) ; 2 uses
  %i.av = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.i.i.i.i.i.i.i.i, i1 false) ; 2 uses
  %i.aw = and i64 %i.av, 63
  %i.ax = shl i64 %.0.i.i.i.i.i.i.i.i, %i.aw
  %i.ay = lshr i64 %i.ax, 11
  %i.az = and i64 %i.ay, 4503599627370495
  %i.ba = shl nuw nsw i64 %i.av, 52
  %reass.sub46 = sub nsw i64 %i.az, %i.ba
  %i.bb = add nsw i64 %reass.sub46, 4602678819172646912
  %i.bc = bitcast i64 %i.bb to double
  %i.bd = tail call nnan double @llvm.log.f64(double %i.bc)
  %i.be = fmul nnan double %i.bd, f0x3FD2972A8AFC6175 ; 4 uses
  %i.bf = zext i64 %.narrow.i.i.i.i.i.i.i to i128
  %i.bg = shl nuw i128 %i.bf, 64
  %i.bh = and i128 %i.aq, 18446744073709551615
  %i.bi = or disjoint i128 %i.bg, %i.bh
  %i.bj = mul i128 %i.bi, 47026247687942121848144207491837523525
  %i.bk = add i128 %i.bj, 1442695040888963407     ; 2 uses
  %i.bl = trunc i128 %i.bk to i64                 ; 3 uses
  %i.bm = lshr i128 %i.bk, 64
  %.tr.i.i.i.i.i.i12.i = trunc nuw i128 %i.bm to i64
  %.narrow.i.i.i.i.i.i13.i = add i64 %.tr.i.i.i.i.i.i12.i, 6364136223846793005 ; 4 uses
  %i.bn = lshr i64 %.narrow.i.i.i.i.i.i13.i, 58
  %i.bo = xor i64 %.narrow.i.i.i.i.i.i13.i, %i.bl ; 2 uses
  %.0.i.i.i.i.i.i.i14.i = tail call noundef i64 @llvm.fshr.i64(i64 %i.bo, i64 %i.bo, i64 %i.bn) ; 2 uses
  %i.bp = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.i.i.i.i.i.i.i14.i, i1 false) ; 2 uses
  %i.bq = and i64 %i.bp, 63
  %i.br = shl i64 %.0.i.i.i.i.i.i.i14.i, %i.bq
  %i.bs = lshr i64 %i.br, 11
  %i.bt = and i64 %i.bs, 4503599627370495
  %i.bu = shl nuw nsw i64 %i.bp, 52
  %reass.sub47 = sub nsw i64 %i.bt, %i.bu
  %i.bv = add nsw i64 %reass.sub47, 4602678819172646912
  %i.bw = bitcast i64 %i.bv to double
  %i.bx = tail call double @llvm.log.f64(double %i.bw) ; 2 uses
  %i.by = fneg double %i.bx
  %i.bz = fsub double %i.by, %i.bx
  %i.ca = fmul double %i.be, %i.be
  %i.cb = fcmp olt double %i.bz, %i.ca
  br i1 %i.cb, label %.preheader, label %_ZN4absl12lts_2026052615random_internal26gaussian_distribution_base15zignor_fallbackINS0_14InsecureBitGenEEEdRT_b.exit, !llvm.loop !427

_ZN4absl12lts_2026052615random_internal26gaussian_distribution_base15zignor_fallbackINS0_14InsecureBitGenEEEdRT_b.exit: ; preds = %.preheader
  %i.cc = fcmp olt double %i.y, 0.000000e+00
  store i64 %i.bl, ptr %1, align 16, !tbaa !22
  store i64 %.narrow.i.i.i.i.i.i13.i, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !tbaa !22
  %i.cd = fadd double %i.be, f0xC00B8A7C476D2BE8
  %i.ce = fsub double f0x400B8A7C476D2BE8, %i.be
  %i.cf = select i1 %i.cc, double %i.cd, double %i.ce
  br label %select.unfold

bb.d:                                             ; preds = %bb.c
  %i.cg = zext i64 %.narrow.i.i.i.i.i.i to i128
  %i.ch = shl nuw i128 %i.cg, 64
  %i.ci = and i128 %i.g, 18446744073709551615
  %i.cj = or disjoint i128 %i.ch, %i.ci
  %i.ck = mul i128 %i.cj, 47026247687942121848144207491837523525
  %i.cl = add i128 %i.ck, 1442695040888963407     ; 2 uses
  %i.cm = trunc i128 %i.cl to i64                 ; 3 uses
  %i.cn = lshr i128 %i.cl, 64
  %.tr.i.i.i.i.i.i26 = trunc nuw i128 %i.cn to i64
  %.narrow.i.i.i.i.i.i27 = add i64 %.tr.i.i.i.i.i.i26, 6364136223846793005 ; 4 uses
  %i.co = lshr i64 %.narrow.i.i.i.i.i.i27, 58
  %i.cp = xor i64 %.narrow.i.i.i.i.i.i27, %i.cm   ; 2 uses
  %.0.i.i.i.i.i.i.i28 = tail call noundef i64 @llvm.fshr.i64(i64 %i.cp, i64 %i.cp, i64 %i.co) ; 2 uses
  %i.cq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.i.i.i.i.i.i.i28, i1 false) ; 2 uses
  %i.cr = and i64 %i.cq, 63
  %i.cs = shl i64 %.0.i.i.i.i.i.i.i28, %i.cr
  %i.ct = lshr i64 %i.cs, 11
  %i.cu = shl nuw nsw i64 %i.cq, 52
  %i.cv = and i64 %i.ct, 4503599627370495
  %reass.sub = sub nsw i64 %i.cv, %i.cu
  %i.cw = add nsw i64 %reass.sub, 4602678819172646912
  %i.cx = bitcast i64 %i.cw to double
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2026052615random_internal26gaussian_distribution_base3zg_E, i64 1032), i64 %i.af
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !36 ; 2 uses
end_hunk_2
