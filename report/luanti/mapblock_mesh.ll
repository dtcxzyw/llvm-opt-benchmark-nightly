Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/mapblock_mesh?download=true
inline.NumInlined: 2550
inline.NumDeleted: 1173
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_Z25getSmoothLightTransparentRKN4core8vector3dIsEES3_P12MeshMakeData:bb.a
  store i16 0, ptr %i.s, align 2, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 18
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load i16, ptr %i.u, align 2, !tbaa !30   ; 4 uses
  store i16 0, ptr %i.t, align 2, !tbaa !28
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i16 0, ptr %i.w, align 2, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 22
  store i16 %i.v, ptr %i.x, align 2, !tbaa !30
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i16 %i.l, ptr %i.y, align 2, !tbaa !28
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 26
  store i16 %i.q, ptr %i.z, align 2, !tbaa !29
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i16 0, ptr %i.aa, align 2, !tbaa !30
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 30
  store i16 %i.l, ptr %i.ab, align 2, !tbaa !28
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i16 0, ptr %i.ac, align 2, !tbaa !29
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 34
  store i16 %i.v, ptr %i.ad, align 2, !tbaa !30
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 36
  store i16 0, ptr %i.ae, align 2, !tbaa !28
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 38
  store i16 %i.q, ptr %i.af, align 2, !tbaa !29
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i16 %i.v, ptr %i.ag, align 2, !tbaa !30
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 42
  store i16 %i.l, ptr %i.ah, align 2, !tbaa !28
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 44
  store i16 %i.q, ptr %i.ai, align 2, !tbaa !29
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 46
  store i16 %i.v, ptr %i.aj, align 2, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !44
  store ptr %i.al, ptr %i.b, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  store i16 0, ptr %i.c, align 2, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  store i16 0, ptr %i.d, align 2, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  store i8 0, ptr %i.e, align 1, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  store i16 0, ptr %i.f, align 2, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  store i16 0, ptr %i.g, align 2, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30
  store i8 0, ptr %i.h, align 1, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store ptr %i.c, ptr %3, align 8, !tbaa !61
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.a, ptr %i.am, align 8, !tbaa !344
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %0, ptr %i.an, align 8, !tbaa !345
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %6, ptr %i.ao, align 8, !tbaa !346
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.b, ptr %i.ap, align 8, !tbaa !347
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %i.e, ptr %i.aq, align 8, !tbaa !55
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %i.h, ptr %i.ar, align 8, !tbaa !348
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %i.f, ptr %i.as, align 8, !tbaa !61
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr %i.g, ptr %i.at, align 8, !tbaa !61
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 72
  store ptr %i.d, ptr %i.au, align 8, !tbaa !61
  %i.av = call fastcc noundef zeroext i1 @"_ZZL22getSmoothLightCombinedRKN4core8vector3dIsEERKSt5arrayIS1_Lm8EEP12MeshMakeDataENK3$_0clEhb"(ptr noundef nonnull align 8 dereferenceable(80) %3, i8 noundef zeroext 0, i1 noundef zeroext false) ; 0 uses
  %i.aw = call fastcc noundef zeroext i1 @"_ZZL22getSmoothLightCombinedRKN4core8vector3dIsEERKSt5arrayIS1_Lm8EEP12MeshMakeDataENK3$_0clEhb"(ptr noundef nonnull align 8 dereferenceable(80) %3, i8 noundef zeroext 1, i1 noundef zeroext false)
  %i.ax = xor i1 %i.aw, true                      ; 2 uses
  %i.ay = call fastcc noundef zeroext i1 @"_ZZL22getSmoothLightCombinedRKN4core8vector3dIsEERKSt5arrayIS1_Lm8EEP12MeshMakeDataENK3$_0clEhb"(ptr noundef nonnull align 8 dereferenceable(80) %3, i8 noundef zeroext 2, i1 noundef zeroext false)
  %i.az = xor i1 %i.ay, true                      ; 2 uses
  %i.ba = call fastcc noundef zeroext i1 @"_ZZL22getSmoothLightCombinedRKN4core8vector3dIsEERKSt5arrayIS1_Lm8EEP12MeshMakeDataENK3$_0clEhb"(ptr noundef nonnull align 8 dereferenceable(80) %3, i8 noundef zeroext 3, i1 noundef zeroext false)
  %i.bb = xor i1 %i.ba, true                      ; 2 uses
  %i.bc = and i1 %i.ax, %i.az                     ; 2 uses
  %i.bd = and i1 %i.ax, %i.bb                     ; 2 uses
  %i.be = and i1 %i.az, %i.bb                     ; 2 uses
  %i.bf = call fastcc noundef zeroext i1 @"_ZZL22getSmoothLightCombinedRKN4core8vector3dIsEERKSt5arrayIS1_Lm8EEP12MeshMakeDataENK3$_0clEhb"(ptr noundef nonnull align 8 dereferenceable(80) %3, i8 noundef zeroext 4, i1 noundef zeroext %i.bc)
  %i.bg = call fastcc noundef zeroext i1 @"_ZZL22getSmoothLightCombinedRKN4core8vector3dIsEERKSt5arrayIS1_Lm8EEP12MeshMakeDataENK3$_0clEhb"(ptr noundef nonnull align 8 dereferenceable(80) %3, i8 noundef zeroext 5, i1 noundef zeroext %i.bd)
  %.sroa.13.1.demorgan.i = or i1 %i.bf, %i.bg
  %i.bh = call fastcc noundef zeroext i1 @"_ZZL22getSmoothLightCombinedRKN4core8vector3dIsEERKSt5arrayIS1_Lm8EEP12MeshMakeDataENK3$_0clEhb"(ptr noundef nonnull align 8 dereferenceable(80) %3, i8 noundef zeroext 6, i1 noundef zeroext %i.be)
  %.sroa.13.2.demorgan.i = or i1 %i.bh, %.sroa.13.1.demorgan.i
  %.sroa.13.2.i = xor i1 %.sroa.13.2.demorgan.i, true
  %i.bi = call fastcc noundef zeroext i1 @"_ZZL22getSmoothLightCombinedRKN4core8vector3dIsEERKSt5arrayIS1_Lm8EEP12MeshMakeDataENK3$_0clEhb"(ptr noundef nonnull align 8 dereferenceable(80) %3, i8 noundef zeroext 7, i1 noundef zeroext %.sroa.13.2.i)
  br i1 %i.bi, label %.loopexit.loopexit.i, label %.loopexit.i

.loopexit.loopexit.i:                             ; preds = %bb.a
  %i.bj = load i16, ptr %i.c, align 2, !tbaa !42
  %i.bk = add i16 %i.bj, -3
  store i16 %i.bk, ptr %i.c, align 2, !tbaa !42
  %i.bl = xor i1 %i.bc, true
  %i.bm = call fastcc noundef zeroext i1 @"_ZZL22getSmoothLightCombinedRKN4core8vector3dIsEERKSt5arrayIS1_Lm8EEP12MeshMakeDataENK3$_0clEhb"(ptr noundef nonnull align 8 dereferenceable(80) %3, i8 noundef zeroext 4, i1 noundef zeroext %i.bl) ; 0 uses
  %i.bn = xor i1 %i.bd, true
  %i.bo = call fastcc noundef zeroext i1 @"_ZZL22getSmoothLightCombinedRKN4core8vector3dIsEERKSt5arrayIS1_Lm8EEP12MeshMakeDataENK3$_0clEhb"(ptr noundef nonnull align 8 dereferenceable(80) %3, i8 noundef zeroext 5, i1 noundef zeroext %i.bn) ; 0 uses
  %i.bp = xor i1 %i.be, true
  %i.bq = call fastcc noundef zeroext i1 @"_ZZL22getSmoothLightCombinedRKN4core8vector3dIsEERKSt5arrayIS1_Lm8EEP12MeshMakeDataENK3$_0clEhb"(ptr noundef nonnull align 8 dereferenceable(80) %3, i8 noundef zeroext 6, i1 noundef zeroext %i.bp) ; 0 uses
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %bb.a
  %i.br = load i16, ptr %i.d, align 2, !tbaa !42  ; 3 uses
  %i.bs = icmp eq i16 %i.br, 0
  br i1 %i.bs, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.loopexit.i
  %i.bt = load i16, ptr %i.f, align 2, !tbaa !42
  %i.bu = udiv i16 %i.bt, %i.br
  %i.bv = load i16, ptr %i.g, align 2, !tbaa !42
  %i.bw = udiv i16 %i.bv, %i.br
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.loopexit.i
  %i.bx = phi i16 [ %i.bw, %bb.b ], [ 0, %.loopexit.i ] ; 3 uses
  %.sink.i = phi i16 [ %i.bu, %bb.b ], [ 0, %.loopexit.i ]
  store i16 %i.bx, ptr %i.g, align 2, !tbaa !42
  %i.by = load i8, ptr %i.h, align 1, !tbaa !59, !range !68, !noundef !69
  %i.bz = trunc nuw i8 %i.by to i1
  %spec.store.select.i = select i1 %i.bz, i16 255, i16 %.sink.i ; 2 uses
  store i16 %spec.store.select.i, ptr %i.f, align 2, !tbaa !42
  %i.ca = load i8, ptr %i.e, align 1, !tbaa !49
  %spec.store.select.i.i = call i8 @llvm.umin.i8(i8 %i.ca, i8 15)
  %i.cb = load ptr, ptr @light_decode_table, align 8, !tbaa !55
  %i.cc = zext nneg i8 %spec.store.select.i.i to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cc ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !49
  %i.cf = zext i8 %i.ce to i16                    ; 3 uses
  %.not.not.i = icmp ugt i16 %spec.store.select.i, %i.cf ; 2 uses
  br i1 %.not.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i16 %i.cf, ptr %i.f, align 2, !tbaa !42
  %.pre.i = load i8, ptr %i.cd, align 1, !tbaa !49
  %.pre58.i = zext i8 %.pre.i to i16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pre-phi.i = phi i16 [ %.pre58.i, %bb.d ], [ %i.cf, %bb.c ] ; 3 uses
  %.not28.not.i = icmp ugt i16 %i.bx, %.pre-phi.i ; 2 uses
  br i1 %.not28.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i16 %.pre-phi.i, ptr %i.g, align 2, !tbaa !42
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.cg = phi i16 [ %.pre-phi.i, %bb.f ], [ %i.bx, %bb.e ]
  %i.ch = load i16, ptr %i.c, align 2, !tbaa !42
  %i.ci = icmp ugt i16 %i.ch, 4
  br i1 %i.ci, label %bb.h, label %_ZL22getSmoothLightCombinedRKN4core8vector3dIsEERKSt5arrayIS1_Lm8EEP12MeshMakeData.exit

bb.h:                                             ; preds = %bb.g
  %.b.i = load i1, ptr @_ZGVZL22getSmoothLightCombinedRKN4core8vector3dIsEERKSt5arrayIS1_Lm8EEP12MeshMakeDataE8ao_gamma, align 1
  br i1 %.b.i, label %bb.j, label %bb.i, !prof !349

bb.i:                                             ; preds = %bb.h
  %i.cj = load ptr, ptr @g_settings, align 8, !tbaa !351
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  %i.ck = invoke noundef float @_ZNK8Settings8getFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.cj, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_Z8rangelimIfddET_RKS0_RKT0_RKT1_.exit.i unwind label %bb.n ; 3 uses

_Z8rangelimIfddET_RKS0_RKT0_RKT1_.exit.i:         ; preds = %bb.i
  %i.cl = fcmp nsz olt float %i.ck, 2.500000e-01
  %i.cm = fcmp nsz ogt float %i.ck, 4.000000e+00
  %..i.i = select nsz i1 %i.cm, float 4.000000e+00, float %i.ck
  %.0.i.i = select nsz i1 %i.cl, float 2.500000e-01, float %..i.i
  %i.cn = load ptr, ptr %4, align 8, !tbaa !73    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_Z8rangelimIfddET_RKS0_RKT0_RKT1_.exit.i
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !49
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_Z8rangelimIfddET_RKS0_RKT0_RKT1_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.cs = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZL22getSmoothLightCombinedRKN4core8vector3dIsEERKSt5arrayIS1_Lm8EEP12MeshMakeDataE8ao_gamma)
  store float %.0.i.i, ptr %i.cs, align 4, !tbaa !75
  %i.ct = call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZL22getSmoothLightCombinedRKN4core8vector3dIsEERKSt5arrayIS1_Lm8EEP12MeshMakeDataE8ao_gamma) ; 0 uses
  store i1 true, ptr @_ZGVZL22getSmoothLightCombinedRKN4core8vector3dIsEERKSt5arrayIS1_Lm8EEP12MeshMakeDataE8ao_gamma, align 1
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.h
  %.b27.i = load i1, ptr @_ZGVZL22getSmoothLightCombinedRKN4core8vector3dIsEERKSt5arrayIS1_Lm8EEP12MeshMakeDataE12light_amount, align 1
  br i1 %.b27.i, label %bb.l, label %bb.k, !prof !349

bb.k:                                             ; preds = %bb.j
  %i.cu = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZL22getSmoothLightCombinedRKN4core8vector3dIsEERKSt5arrayIS1_Lm8EEP12MeshMakeDataE8ao_gamma)
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !75
  %i.cw = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZL22getSmoothLightCombinedRKN4core8vector3dIsEERKSt5arrayIS1_Lm8EEP12MeshMakeDataE12light_amount)
  %i.cx = insertelement <2 x float> poison, float %i.cv, i64 0
  %i.cy = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cz = fdiv nsz <2 x float> <float -1.000000e+00, float 1.000000e+00>, %i.cy ; 2 uses
  %i.da = extractelement <2 x float> %i.cz, i64 1
  %i.db = call nsz float @llvm.pow.f32(float 7.500000e-01, float %i.da)
  store float %i.db, ptr %i.cw, align 4, !tbaa !75
  %i.dc = fmul nsz <2 x float> %i.cz, <float 1.000000e+00, float -2.000000e+00>
  %i.dd = call nsz <2 x float> @llvm.exp2.v2f32(<2 x float> %i.dc)
  store <2 x float> %i.dd, ptr getelementptr inbounds nuw (i8, ptr @_ZZL22getSmoothLightCombinedRKN4core8vector3dIsEERKSt5arrayIS1_Lm8EEP12MeshMakeDataE12light_amount, i64 4), align 4, !tbaa !75
  %i.de = call ptr @llvm.invariant.start.p0(i64 12, ptr nonnull @_ZZL22getSmoothLightCombinedRKN4core8vector3dIsEERKSt5arrayIS1_Lm8EEP12MeshMakeDataE12light_amount) ; 0 uses
  store i1 true, ptr @_ZGVZL22getSmoothLightCombinedRKN4core8vector3dIsEERKSt5arrayIS1_Lm8EEP12MeshMakeDataE12light_amount, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.df = load i16, ptr %i.c, align 2, !tbaa !42
  %i.dg = add i16 %i.df, -5                       ; 2 uses
  br i1 %.not.not.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.dh = load i16, ptr %i.f, align 2, !tbaa !42
  %i.di = uitofp i16 %i.dh to float
  %i.dj = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZL22getSmoothLightCombinedRKN4core8vector3dIsEERKSt5arrayIS1_Lm8EEP12MeshMakeDataE12light_amount)
  %i.dk = zext i16 %i.dg to i64
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.dk
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !75
  %i.dn = fmul nsz float %i.dm, %i.di
  %i.do = fadd nsz float %i.dn, 5.000000e-01
  %i.dp = call nsz noundef float @llvm.floor.f32(float %i.do)
  %i.dq = fptosi float %i.dp to i32
  %i.dr = call i32 @llvm.smax.i32(i32 %i.dq, i32 0)
  %i.ds = call i32 @llvm.umin.i32(i32 %i.dr, i32 255)
  %i.dt = trunc nuw nsw i32 %i.ds to i16
  store i16 %i.dt, ptr %i.f, align 2, !tbaa !42
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.du = landingpad { ptr, i32 }
          cleanup
  %i.dv = load ptr, ptr %4, align 8, !tbaa !73    ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37.i: ; preds = %bb.n
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !49
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dz) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  resume { ptr, i32 } %i.du

bb.o:                                             ; preds = %bb.m, %bb.l
  %.pre57.i = load i16, ptr %i.g, align 2, !tbaa !42 ; 2 uses
  br i1 %.not28.not.i, label %bb.p, label %_ZL22getSmoothLightCombinedRKN4core8vector3dIsEERKSt5arrayIS1_Lm8EEP12MeshMakeData.exit

bb.p:                                             ; preds = %bb.o
  %i.ea = uitofp i16 %.pre57.i to float
  %i.eb = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZL22getSmoothLightCombinedRKN4core8vector3dIsEERKSt5arrayIS1_Lm8EEP12MeshMakeDataE12light_amount)
  %i.ec = zext i16 %i.dg to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.ec
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !75
  %i.ef = fmul nsz float %i.ee, %i.ea
  %i.eg = fadd nsz float %i.ef, 5.000000e-01
  %i.eh = call nsz noundef float @llvm.floor.f32(float %i.eg)
  %i.ei = fptosi float %i.eh to i32
  %i.ej = call i32 @llvm.smax.i32(i32 %i.ei, i32 0)
  %i.ek = call i32 @llvm.umin.i32(i32 %i.ej, i32 255)
  %i.el = trunc nuw nsw i32 %i.ek to i16
  br label %_ZL22getSmoothLightCombinedRKN4core8vector3dIsEERKSt5arrayIS1_Lm8EEP12MeshMakeData.exit

_ZL22getSmoothLightCombinedRKN4core8vector3dIsEERKSt5arrayIS1_Lm8EEP12MeshMakeData.exit: ; preds = %bb.g, %bb.o, %bb.p
  %i.em = phi i16 [ %.pre57.i, %bb.o ], [ %i.el, %bb.p ], [ %i.cg, %bb.g ]
  %i.en = load i16, ptr %i.f, align 2, !tbaa !42
  %i.eo = shl i16 %i.em, 8
  %i.ep = or i16 %i.eo, %i.en
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  ret i16 %i.ep
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_Z18get_sunlight_colorPN5video7SColorfEj(ptr nofree noundef writeonly captures(none) initializes((0, 12)) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = uitofp nsz i32 %1 to float
  %i.c = insertelement <2 x float> poison, float %i.b, i64 0
  %i.d = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> zeroinitializer
  %i.e = fmul nnan nsz <2 x float> %i.d, <float 1.000000e+00, float 9.800000e-01>
  %i.f = fdiv nsz <2 x float> %i.e, splat (float 1.000000e+03)
  %i.g = fadd nsz <2 x float> %i.f, <float -4.000000e-02, float 7.800000e-02> ; 2 uses
  %i.h = extractelement <2 x float> %i.g, i64 0
  store float %i.h, ptr %0, align 4, !tbaa !352
  store <2 x float> %i.g, ptr %i.a, align 4, !tbaa !75
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z17final_color_blendPN5video6SColorEtj(ptr nofree noundef captures(none) %0, i16 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %3 = alloca %"class.video::SColorf", align 16   ; 4 uses
  %4 = alloca %"class.video::SColor", align 4     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.a = uitofp nsz i32 %2 to float
  %i.b = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.a, i64 0
  %i.c = shufflevector <4 x float> %i.b, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.d = fmul nnan <4 x float> %i.c, <float 1.000000e+00, float 1.000000e+00, float 9.800000e-01, float -0.000000e+00>
  %i.e = fdiv <4 x float> %i.d, <float 1.000000e+03, float 1.000000e+03, float 1.000000e+03, float 1.000000e+00>
  %i.f = fadd nsz <4 x float> %i.e, <float -4.000000e-02, float -4.000000e-02, float 7.800000e-02, float 1.000000e+00>
  store <4 x float> %i.f, ptr %3, align 16, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.g = zext i16 %1 to i32                       ; 2 uses
  %i.h = and i32 %i.g, 255
  %i.i = lshr i32 %i.g, 8                         ; 2 uses
  %.0.i = tail call i32 @llvm.usub.sat.i32(i32 %i.h, i32 %i.i) ; 2 uses
  %i.j = add nuw nsw i32 %.0.i, %i.i              ; 3 uses
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %_Z12encode_lightth.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = trunc nuw nsw i32 %.0.i to i16
  %.lhs.trunc.i = mul nuw i16 %i.k, 255
  %.rhs.trunc.i = trunc nuw nsw i32 %i.j to i16
  %i.l = udiv i16 %.lhs.trunc.i, %.rhs.trunc.i
  %.zext.i = zext i16 %i.l to i32
  %i.m = shl i32 %.zext.i, 24
  br label %_Z12encode_lightth.exit

_Z12encode_lightth.exit:                          ; preds = %bb.a, %bb.b
  %.019.i = phi i32 [ %i.m, %bb.b ], [ 0, %bb.a ]
  %i.n = lshr i32 %i.j, 1                         ; 3 uses
  %i.o = shl nuw nsw i32 %i.n, 16
  %i.p = or disjoint i32 %.019.i, %i.o
  %i.q = shl nuw nsw i32 %i.n, 8
  %i.r = or disjoint i32 %i.p, %i.q
  %i.s = or disjoint i32 %i.r, %i.n
  store i32 %i.s, ptr %4, align 4
  call void @_Z17final_color_blendPN5video6SColorERKS0_RKNS_7SColorfE(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z17final_color_blendPN5video6SColorERKS0_RKNS_7SColorfE(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZ17final_color_blendPN5video6SColorERKS0_RKNS_7SColorfEE15artificialColor acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !353

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZ17final_color_blendPN5video6SColorERKS0_RKNS_7SColorfEE15artificialColor) #30
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store <4 x float> <float 1.040000e+00, float 1.040000e+00, float 1.040000e+00, float 1.000000e+00>, ptr @_ZZ17final_color_blendPN5video6SColorERKS0_RKNS_7SColorfEE15artificialColor, align 16, !tbaa !75
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZ17final_color_blendPN5video6SColorERKS0_RKNS_7SColorfEE15artificialColor) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZ17final_color_blendPN5video6SColorERKS0_RKNS_7SColorfEE15artificialColor) #30
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0.copyload = load i32, ptr %1, align 4, !tbaa !46 ; 4 uses
  %i.e = and i32 %.sroa.0.0.copyload, 255
  %i.f = uitofp nsz nneg i32 %i.e to float
  %i.g = fmul nnan nsz float %i.f, f0x3B808081
  %i.h = lshr i32 %.sroa.0.0.copyload, 24
  %i.i = uitofp nsz nneg i32 %i.h to float
  %i.j = fmul nnan nsz float %i.i, f0x3B808081    ; 3 uses
  %i.k = fsub nsz float 1.000000e+00, %i.j        ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load float, ptr %i.l, align 4, !tbaa !354
  %i.n = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZ17final_color_blendPN5video6SColorERKS0_RKNS_7SColorfEE15artificialColor, i64 8), align 8, !tbaa !354
  %i.o = fmul nsz float %i.k, %i.n
  %i.p = tail call nsz float @llvm.fmuladd.f32(float %i.j, float %i.m, float %i.o)
  %i.q = fmul nsz float %i.g, %i.p
  %i.r = fmul nsz float %i.q, 2.000000e+00        ; 2 uses
  %i.s = load i32, ptr %0, align 4, !tbaa !78
  %i.t = lshr i32 %.sroa.0.0.copyload, 16
  %i.u = and i32 %i.t, 255
  %i.v = uitofp nsz nneg i32 %i.u to float
  %i.w = lshr i32 %.sroa.0.0.copyload, 8
  %i.x = and i32 %i.w, 255
  %i.y = uitofp nsz nneg i32 %i.x to float
  %i.z = insertelement <2 x float> poison, float %i.v, i64 0
  %i.aa = insertelement <2 x float> %i.z, float %i.y, i64 1
  %i.ab = fmul nnan nsz <2 x float> %i.aa, splat (float f0x3B808081)
  %i.ac = load <2 x float>, ptr %2, align 4, !tbaa !75
  %i.ad = load <2 x float>, ptr @_ZZ17final_color_blendPN5video6SColorERKS0_RKNS_7SColorfEE15artificialColor, align 16, !tbaa !75
  %i.ae = insertelement <2 x float> poison, float %i.k, i64 0
end_hunk_0
