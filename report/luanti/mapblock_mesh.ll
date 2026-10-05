Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/mapblock_mesh?download=true
inline.NumInlined: 2550
inline.NumDeleted: 1173
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_Z19getSmoothLightSolidRKN4core8vector3dIsEES3_S3_P12MeshMakeData:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = load i16, ptr %i.d, align 2, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !29   ; 2 uses
  %i.h = add i16 %i.g, %i.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = load i16, ptr %i.i, align 2, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i16, ptr %i.k, align 2, !tbaa !30   ; 2 uses
  %i.m = add i16 %i.l, %i.j
  %.sroa.3.0.insert.ext.i = zext i16 %i.m to i48
  %.sroa.3.0.insert.shift.i = shl nuw i48 %.sroa.3.0.insert.ext.i, 32
  %.sroa.2.0.insert.ext.i = zext i16 %i.h to i48
  %.sroa.2.0.insert.shift.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i, 16
  %.sroa.2.0.insert.insert.i = or disjoint i48 %.sroa.3.0.insert.shift.i, %.sroa.2.0.insert.shift.i
  %.sroa.0.0.insert.ext.i = zext i16 %i.c to i48
  %.sroa.0.0.insert.insert.i = or disjoint i48 %.sroa.2.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  store i48 %.sroa.0.0.insert.insert.i, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.n = shl i16 %i.b, 1
  %i.o = shl i16 %i.g, 1
  %i.p = shl i16 %i.l, 1
  %i.q = load i16, ptr %2, align 2, !tbaa !28
  %i.r = sub i16 %i.q, %i.n
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.t = load i16, ptr %i.s, align 2, !tbaa !29
  %i.u = sub i16 %i.t, %i.o
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.w = load i16, ptr %i.v, align 2, !tbaa !30
  %i.x = sub i16 %i.w, %i.p
  %.sroa.3.0.insert.ext.i5 = zext i16 %i.x to i48
  %.sroa.3.0.insert.shift.i6 = shl nuw i48 %.sroa.3.0.insert.ext.i5, 32
  %.sroa.2.0.insert.ext.i7 = zext i16 %i.u to i48
  %.sroa.2.0.insert.shift.i8 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i7, 16
  %.sroa.2.0.insert.insert.i9 = or disjoint i48 %.sroa.3.0.insert.shift.i6, %.sroa.2.0.insert.shift.i8
  %.sroa.0.0.insert.ext.i10 = zext i16 %i.r to i48
  %.sroa.0.0.insert.insert.i11 = or disjoint i48 %.sroa.2.0.insert.insert.i9, %.sroa.0.0.insert.ext.i10
  store i48 %.sroa.0.0.insert.insert.i11, ptr %5, align 8
  %i.y = call noundef zeroext i16 @_Z25getSmoothLightTransparentRKN4core8vector3dIsEES3_P12MeshMakeData(ptr noundef nonnull align 2 dereferenceable(6) %4, ptr noundef nonnull align 2 dereferenceable(6) %5, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret i16 %i.y
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i16 @_Z25getSmoothLightTransparentRKN4core8vector3dIsEES3_P12MeshMakeData(ptr noundef nonnull align 2 dereferenceable(6) %0, ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(6) %1, ptr noundef %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i16, align 2                      ; 9 uses
  %i.d = alloca i16, align 2                      ; 6 uses
  %i.e = alloca i8, align 1                       ; 6 uses
  %i.f = alloca i16, align 2                      ; 11 uses
  %i.g = alloca i16, align 2                      ; 9 uses
  %i.h = alloca i8, align 1                       ; 6 uses
  %3 = alloca %class.anon.407, align 8            ; 24 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::allocator.52", align 1 ; 4 uses
  %6 = alloca %"struct.std::array", align 2       ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store i16 0, ptr %6, align 2, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i16 0, ptr %i.i, align 2, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i16 0, ptr %i.j, align 2, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 6
  %i.l = load i16, ptr %1, align 2, !tbaa !28     ; 4 uses
  store i16 %i.l, ptr %i.k, align 2, !tbaa !28
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i16 0, ptr %i.m, align 2, !tbaa !29
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 10
  store i16 0, ptr %i.n, align 2, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.q = load i16, ptr %i.p, align 2, !tbaa !29   ; 4 uses
  store i16 0, ptr %i.o, align 2, !tbaa !28
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 14
  store i16 %i.q, ptr %i.r, align 2, !tbaa !29
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
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
end_hunk_0
begin_hunk_1_@_ZN12MapBlockMeshC2EP6ClientP12MeshMakeData:bb.a

bb.n:                                             ; preds = %bb.m
  %i.cb = mul nuw nsw i32 %i.bu, %i.bu
  %i.cc = mul nuw nsw i32 %i.cb, %i.bu
  %i.cd = zext nneg i32 %i.cc to i64              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store ptr null, ptr %i.b, align 8, !tbaa !226
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !227 ; 3 uses
  %i.cg = load ptr, ptr %i.c, align 8, !tbaa !228 ; 2 uses
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = ashr exact i64 %i.cj, 3                 ; 3 uses
  %i.cl = icmp ult i64 %i.ck, %i.cd
  br i1 %i.cl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cm = sub nuw nsw i64 %i.cd, %i.ck
  invoke void @_ZNSt6vectorIP15MinimapMapblockSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr %i.cf, i64 noundef %i.cm, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZNSt6vectorIP15MinimapMapblockSaIS1_EE6resizeEmRKS1_.exit unwind label %bb.v

bb.p:                                             ; preds = %bb.n
  %i.cn = icmp ugt i64 %i.ck, %i.cd
  br i1 %i.cn, label %bb.q, label %_ZNSt6vectorIP15MinimapMapblockSaIS1_EE6resizeEmRKS1_.exit

bb.q:                                             ; preds = %bb.p
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cd ; 2 uses
  %.not.i.i129 = icmp eq ptr %i.cf, %i.co
  br i1 %.not.i.i129, label %_ZNSt6vectorIP15MinimapMapblockSaIS1_EE6resizeEmRKS1_.exit, label %_ZSt8_DestroyIPP15MinimapMapblockS1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPP15MinimapMapblockS1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.q
  store ptr %i.co, ptr %i.ce, align 8, !tbaa !227
  br label %_ZNSt6vectorIP15MinimapMapblockSaIS1_EE6resizeEmRKS1_.exit

_ZNSt6vectorIP15MinimapMapblockSaIS1_EE6resizeEmRKS1_.exit: ; preds = %_ZSt8_DestroyIPP15MinimapMapblockS1_EvT_S3_RSaIT0_E.exit.i.i, %bb.q, %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 6 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 10
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 72
  br label %.preheader363

.preheader363:                                    ; preds = %_ZNSt6vectorIP15MinimapMapblockSaIS1_EE6resizeEmRKS1_.exit, %bb.ab
  %storemerge484 = phi i16 [ 0, %_ZNSt6vectorIP15MinimapMapblockSaIS1_EE6resizeEmRKS1_.exit ], [ %i.fo, %bb.ab ] ; 3 uses
  %i.dc = add i16 %storemerge484, %.sroa.8318.0.copyload
  %i.dd = shl i16 %i.dc, 4
  %.sroa.3.0.insert.ext.i130 = zext i16 %i.dd to i48
  %.sroa.3.0.insert.shift.i131 = shl nuw i48 %.sroa.3.0.insert.ext.i130, 32
  %i.de = mul i16 %storemerge484, %i.br
  br label %.preheader

.preheader:                                       ; preds = %.preheader363, %bb.aa
  %storemerge118483 = phi i16 [ 0, %.preheader363 ], [ %i.fl, %bb.aa ] ; 3 uses
  %i.df = add i16 %storemerge118483, %.sroa.6316.0.copyload
  %i.dg = shl i16 %i.df, 4
  %.sroa.2.0.insert.ext.i132 = zext i16 %i.dg to i48
  %.sroa.2.0.insert.shift.i133 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i132, 16
  %.sroa.2.0.insert.insert.i134 = or disjoint i48 %.sroa.2.0.insert.shift.i133, %.sroa.3.0.insert.shift.i131
  %i.dh = add i16 %storemerge118483, %i.de
  %i.di = mul i16 %i.dh, %i.br
  br label %bb.r

bb.r:                                             ; preds = %.preheader, %bb.y
  %storemerge119482 = phi i16 [ 0, %.preheader ], [ %i.fi, %bb.y ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.dj = add i16 %storemerge119482, %.sroa.0314.0.copyload
  %i.dk = shl i16 %i.dj, 4
  %.sroa.0.0.insert.ext.i135 = zext i16 %i.dk to i48
  %.sroa.0.0.insert.insert.i136 = or disjoint i48 %.sroa.2.0.insert.insert.i134, %.sroa.0.0.insert.ext.i135
  store i48 %.sroa.0.0.insert.insert.i136, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(6) %6, i64 6, i1 false), !tbaa.struct !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.cp, ptr noundef nonnull align 8 dereferenceable(6) %6, i64 6, i1 false), !tbaa.struct !45
  %i.dl = load i16, ptr %i.cs, align 2, !tbaa !409
  %i.dm = sext i16 %i.dl to i32
  %i.dn = load i16, ptr %i.ct, align 4, !tbaa !51
  %i.do = sext i16 %i.dn to i32
  %i.dp = add nsw i32 %i.dm, 1
  %i.dq = sub nsw i32 %i.dp, %i.do
  %i.dr = load <2 x i16>, ptr %i.cp, align 2, !tbaa !42
  %i.ds = sext <2 x i16> %i.dr to <2 x i32>
  %i.dt = load <2 x i16>, ptr %5, align 4, !tbaa !42
  %i.du = sext <2 x i16> %i.dt to <2 x i32>
  %i.dv = add nsw <2 x i32> %i.ds, splat (i32 1)
  %i.dw = sub nsw <2 x i32> %i.dv, %i.du
  store <2 x i32> %i.dw, ptr %i.cq, align 4, !tbaa !46
  store i32 %i.dq, ptr %i.cr, align 4, !tbaa !46
  invoke void @_ZN16VoxelManipulator7addAreaERK9VoxelArea(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 4 dereferenceable(24) %5)
          to label %.noexc138 unwind label %bb.w

.noexc138:                                        ; preds = %bb.r
  %.sroa.0.0.copyload.i = load i48, ptr %6, align 8, !tbaa !42 ; 3 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i48 %.sroa.0.0.copyload.i to i16
  %.sroa.2.0.extract.shift.i.i = lshr i48 %.sroa.0.0.copyload.i, 16
  %.sroa.2.0.extract.trunc.i.i = trunc i48 %.sroa.2.0.extract.shift.i.i to i16
  %i.dx = ashr i48 %.sroa.0.0.copyload.i, 32
  %i.dy = trunc nsw i48 %i.dx to i32
  %i.dz = load i16, ptr %i.cv, align 4, !tbaa !51
  %i.ea = sext i16 %i.dz to i32
  %i.eb = sub nsw i32 %i.dy, %i.ea
  %i.ec = load i32, ptr %i.cx, align 8, !tbaa !48
  %i.ed = mul nsw i32 %i.eb, %i.ec
  %i.ee = load i32, ptr %i.cw, align 4, !tbaa !47
  %i.ef = sext i16 %.sroa.2.0.extract.trunc.i.i to i32
  %i.eg = load i16, ptr %i.cy, align 2, !tbaa !229
  %i.eh = sext i16 %i.eg to i32
  %i.ei = add i32 %i.ed, %i.ef
  %i.ej = sub i32 %i.ei, %i.eh
  %i.ek = mul i32 %i.ej, %i.ee
  %i.el = sext i16 %.sroa.0.0.extract.trunc.i.i to i32
  %i.em = load i16, ptr %i.cu, align 8, !tbaa !50
  %i.en = sext i16 %i.em to i32
  %i.eo = sub nsw i32 %i.el, %i.en
  %i.ep = add nsw i32 %i.eo, %i.ek
  %i.eq = load ptr, ptr %i.cz, align 8, !tbaa !53
  %i.er = sext i32 %i.ep to i64                   ; 2 uses
  %i.es = getelementptr inbounds i8, ptr %i.eq, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !49
  %i.eu = and i8 %i.et, 1
  %.not.i = icmp eq i8 %i.eu, 0
  br i1 %.not.i, label %bb.s, label %.thread

.thread:                                          ; preds = %.noexc138
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.y

bb.s:                                             ; preds = %.noexc138
  %i.ev = load ptr, ptr %i.da, align 8, !tbaa !52
  %i.ew = getelementptr inbounds [4 x i8], ptr %i.ev, i64 %i.er
  %i.ex = load i32, ptr %i.ew, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.ey = and i32 %i.ex, 65535
  %.not120 = icmp eq i32 %i.ey, 127
  br i1 %.not120, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ez = invoke noalias noundef nonnull dereferenceable(2048) ptr @_Znwm(i64 noundef 2048) #33
          to label %bb.u unwind label %bb.x       ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.fa = add i16 %storemerge119482, %i.di
  %i.fb = zext i16 %i.fa to i64
  %i.fc = load ptr, ptr %i.c, align 8, !tbaa !228
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.fb
  store ptr %i.ez, ptr %i.fd, align 8, !tbaa !226
  %i.fe = load ptr, ptr %i.db, align 8, !tbaa !44
  invoke void @_ZN15MinimapMapblock15getMinimapNodesEP16VoxelManipulatorPK14NodeDefManagerRKN4core8vector3dIsEE(ptr noundef nonnull align 4 dereferenceable(2048) %i.ez, ptr noundef nonnull %2, ptr noundef %i.fe, ptr noundef nonnull align 2 dereferenceable(6) %6)
          to label %bb.y unwind label %bb.x

bb.v:                                             ; preds = %bb.o
  %i.ff = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %bb.en

bb.w:                                             ; preds = %bb.r
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.x:                                             ; preds = %bb.u, %bb.t
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %.thread, %bb.u, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.fi = add i16 %storemerge119482, 1            ; 2 uses
  %i.fj = sext i16 %i.fi to i32
  %i.fk = icmp slt i32 %i.fj, %i.bu
  br i1 %i.fk, label %bb.r, label %bb.aa, !llvm.loop !373

bb.z:                                             ; preds = %bb.x, %bb.w
  %.pn121 = phi { ptr, i32 } [ %i.fh, %bb.x ], [ %i.fg, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.en

bb.aa:                                            ; preds = %bb.y
  %i.fl = add i16 %storemerge118483, 1            ; 2 uses
  %i.fm = sext i16 %i.fl to i32
  %i.fn = icmp slt i32 %i.fm, %i.bu
  br i1 %i.fn, label %.preheader, label %bb.ab, !llvm.loop !374

bb.ab:                                            ; preds = %bb.aa
  %i.fo = add i16 %storemerge484, 1               ; 2 uses
  %i.fp = sext i16 %i.fo to i32
  %i.fq = icmp slt i32 %i.fp, %i.bu
  br i1 %i.fq, label %.preheader363, label %_ZNK8MeshGrid9isMeshPosERN4core8vector3dIsEE.exit.thread, !llvm.loop !375

_ZNK8MeshGrid9isMeshPosERN4core8vector3dIsEE.exit.thread: ; preds = %bb.ab, %_ZN7irr_ptrIN5scene5SMeshEED2Ev.exit.1, %bb.d, %bb.m, %_ZNK8MeshGrid9isMeshPosERN4core8vector3dIsEE.exit
  %.sroa.045.0.copyload = load i48, ptr %i.bs, align 8 ; 3 uses
  %.sroa.3.0.extract.shift.i = lshr i48 %.sroa.045.0.copyload, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i48 %.sroa.3.0.extract.shift.i to i16 ; 3 uses
  %i.fr = add nsw i32 %i.bu, -1                   ; 2 uses
  %i.fs = sext i16 %.sroa.3.0.extract.trunc.i to i32
  %.lobit.i.i2.i = lshr i16 %.sroa.3.0.extract.trunc.i, 15
  %i.ft = zext nneg i16 %.lobit.i.i2.i to i32
  %i.fu = mul nuw nsw i32 %i.fr, %i.ft
  %i.fv = sub nsw i32 %i.fs, %i.fu
  %i.fw = sdiv i32 %i.fv, %i.bu
  %i.fx = trunc i32 %i.fw to i16
  %i.fy = mul i16 %i.br, %i.fx
  %i.fz = sub i16 %.sroa.3.0.extract.trunc.i, %i.fy
  %i.ga = shl i16 %i.fz, 4
  %i.gb = sitofp nsz i16 %i.ga to float
  %11 = bitcast i48 %.sroa.045.0.copyload to <3 x i16>
  %12 = shufflevector <3 x i16> %11, <3 x i16> poison, <2 x i32> <i32 0, i32 1>
  %i.gc = bitcast i48 %.sroa.045.0.copyload to <3 x i16>
  %i.gd = shufflevector <3 x i16> %i.gc, <3 x i16> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.ge = sext <2 x i16> %i.gd to <2 x i32>
  %i.gf = lshr <2 x i16> %i.gd, splat (i16 15)
  %i.gg = zext nneg <2 x i16> %i.gf to <2 x i32>
  %i.gh = insertelement <2 x i32> poison, i32 %i.fr, i64 0
  %i.gi = shufflevector <2 x i32> %i.gh, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.gj = mul nuw nsw <2 x i32> %i.gi, %i.gg
  %i.gk = sub nsw <2 x i32> %i.ge, %i.gj
  %i.gl = insertelement <2 x i32> poison, i32 %i.bu, i64 0
  %i.gm = shufflevector <2 x i32> %i.gl, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.gn = sdiv <2 x i32> %i.gk, %i.gm
  %i.go = trunc <2 x i32> %i.gn to <2 x i16>
  %i.gp = insertelement <2 x i16> poison, i16 %i.br, i64 0
  %i.gq = shufflevector <2 x i16> %i.gp, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.gr = mul <2 x i16> %i.gq, %i.go
  %i.gs = sub <2 x i16> %12, %i.gr
  %i.gt = shl <2 x i16> %i.gs, splat (i16 4)
  %i.gu = sitofp <2 x i16> %i.gt to <2 x float>
  %i.gv = fmul nnan nsz <2 x float> %i.gu, splat (float 1.000000e+01)
  %i.gw = fmul nnan nsz float %i.gb, 1.000000e+01
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %.sroa.038.0.copyload = load <2 x float>, ptr %i.k, align 4, !tbaa !75
  %.sroa.239.0.copyload = load float, ptr %i.r, align 4, !tbaa !75
  %i.gx = getelementptr inbounds nuw i8, ptr %7, i64 52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %7, i8 0, i64 52, i1 false)
  store <2 x float> %.sroa.038.0.copyload, ptr %i.gx, align 4, !tbaa !75
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 60
  store float %.sroa.239.0.copyload, ptr %.sroa.26.0..sroa_idx.i, align 4, !tbaa !75
  %i.gy = getelementptr inbounds nuw i8, ptr %7, i64 64
  store <2 x float> %i.gv, ptr %i.gy, align 8, !tbaa !75
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 72
  store float %i.gw, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  invoke void @_ZN21MapblockMeshGeneratorC1EP12MeshMakeDataP13MeshCollector(ptr noundef nonnull align 8 dereferenceable(496) %8, ptr noundef nonnull %2, ptr noundef nonnull %7)
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %_ZNK8MeshGrid9isMeshPosERN4core8vector3dIsEE.exit.thread
  invoke void @_ZN21MapblockMeshGenerator8generateEv(ptr noundef nonnull align 8 dereferenceable(496) %8)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.gz = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ha = load float, ptr %i.gz, align 8, !tbaa !412
  %i.hb = call nsz noundef float @llvm.sqrt.f32(float %i.ha)
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %i.hb, ptr %i.hc, align 8, !tbaa !413
  %i.hd = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.hj = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %9, i64 10
  %i.hl = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %9, i64 34
  %i.ho = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %9, i64 58
  %i.hr = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %9, i64 82
  %i.hu = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %9, i64 108
  %i.hw = getelementptr inbounds nuw i8, ptr %9, i64 124
  %i.hx = getelementptr inbounds nuw i8, ptr %9, i64 126
  %i.hy = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.hz = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ie = getelementptr inbounds nuw i8, ptr %9, i64 104
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 6 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 6 uses
  br label %bb.ah

bb.ae:                                            ; preds = %_ZN5scene5SMesh22setHardwareMappingHintENS_18E_HARDWARE_MAPPINGENS_13E_BUFFER_TYPEE.exit
  %i.ij = load i16, ptr %i.l, align 2, !tbaa !41
  invoke void @_ZN15MapBlockBspTree9buildTreeEPKSt6vectorI12MeshTriangleSaIS1_EEt(ptr noundef nonnull align 8 dereferenceable(36) %i.ac, ptr noundef nonnull %i.ab, i16 noundef zeroext %i.ij)
          to label %bb.ek unwind label %bb.ag

bb.af:                                            ; preds = %bb.ac, %_ZNK8MeshGrid9isMeshPosERN4core8vector3dIsEE.exit.thread
  %i.ik = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %.body

bb.ag:                                            ; preds = %bb.ae
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ah:                                            ; preds = %bb.ad, %_ZN5scene5SMesh22setHardwareMappingHintENS_18E_HARDWARE_MAPPINGENS_13E_BUFFER_TYPEE.exit
  %i.im = phi i1 [ true, %bb.ad ], [ false, %_ZN5scene5SMesh22setHardwareMappingHintENS_18E_HARDWARE_MAPPINGENS_13E_BUFFER_TYPEE.exit ]
  %indvars.iv.sroa.phi = phi ptr [ %7, %bb.ad ], [ %indvars.iv.sroa.gep755, %_ZN5scene5SMesh22setHardwareMappingHintENS_18E_HARDWARE_MAPPINGENS_13E_BUFFER_TYPEE.exit ] ; 8 uses
  %indvars.iv = phi i64 [ 0, %bb.ad ], [ 1, %_ZN5scene5SMesh22setHardwareMappingHintENS_18E_HARDWARE_MAPPINGENS_13E_BUFFER_TYPEE.exit ] ; 3 uses
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !224 ; 9 uses
  %i.ip = load ptr, ptr %indvars.iv.sroa.phi, align 8, !tbaa !231 ; 4 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %indvars.iv.sroa.phi, i64 8 ; 5 uses
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !231 ; 2 uses
  %.not76.i = icmp eq ptr %i.ip, %i.ir
  br i1 %.not76.i, label %"_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIP13PreMeshBufferSt6vectorIS2_SaIS2_EEEEZL18applyColorAndMergeRS6_E3$_0ET_SA_SA_T0_.exit.i.critedge", label %.lr.ph.i

.lr.ph80.i.preheader:                             ; preds = %_ZN13PreMeshBuffer14applyTileColorEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store ptr %i.hd, ptr %4, align 8, !tbaa !233
  store i64 1, ptr %i.he, align 8, !tbaa !234
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hf, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.hg, align 8, !tbaa !235
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hh, i8 0, i64 16, i1 false)
  br label %.lr.ph80.i

.lr.ph.i:                                         ; preds = %bb.ah, %_ZN13PreMeshBuffer14applyTileColorEv.exit.i
  %.sroa.055.077.i = phi ptr [ %i.md, %_ZN13PreMeshBuffer14applyTileColorEv.exit.i ], [ %i.ip, %bb.ah ] ; 5 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.055.077.i, i64 40 ; 2 uses
  %i.it = load i32, ptr %i.is, align 8, !tbaa !46 ; 4 uses
  %i.iu = icmp eq i32 %i.it, -1
  br i1 %i.iu, label %_ZN13PreMeshBuffer14applyTileColorEv.exit.i, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.055.077.i, i64 72
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !237 ; 8 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.055.077.i, i64 80
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !237 ; 3 uses
  %.not21.i.i = icmp eq ptr %i.iw, %i.iy
  br i1 %.not21.i.i, label %_ZN13PreMeshBuffer14applyTileColorEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ai
  %i.iz = lshr i32 %i.it, 16
  %i.ja = and i32 %i.iz, 255                      ; 2 uses
  %i.jb = lshr i32 %i.it, 8
  %i.jc = and i32 %i.jb, 255                      ; 2 uses
  %i.jd = and i32 %i.it, 255                      ; 2 uses
  %i.je = ptrtoaddr ptr %i.iy to i64
  %i.jf = ptrtoaddr ptr %i.iw to i64
  %i.jg = add i64 %i.je, -40
  %i.jh = sub i64 %i.jg, %i.jf                    ; 2 uses
  %i.ji = udiv i64 %i.jh, 40
  %i.jj = add nuw nsw i64 %i.ji, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.jh, 120
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %i.jj, 1152921504606846972     ; 3 uses
  %i.jk = mul i64 %n.vec, 40
  %i.jl = getelementptr i8, ptr %i.iw, i64 %i.jk
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ja, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert706 = insertelement <4 x i32> poison, i32 %i.jc, i64 0
  %broadcast.splat707 = shufflevector <4 x i32> %broadcast.splatinsert706, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert708 = insertelement <4 x i32> poison, i32 %i.jd, i64 0
  %broadcast.splat709 = shufflevector <4 x i32> %broadcast.splatinsert708, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jm = mul i64 %index, 40                      ; 4 uses
  %next.gep = getelementptr i8, ptr %i.iw, i64 %i.jm
  %i.jn = getelementptr i8, ptr %i.iw, i64 %i.jm
  %i.jo = getelementptr i8, ptr %i.iw, i64 %i.jm
  %i.jp = getelementptr i8, ptr %i.iw, i64 %i.jm
  %i.jq = getelementptr inbounds nuw i8, ptr %next.gep, i64 24 ; 2 uses
  %i.jr = getelementptr i8, ptr %i.jn, i64 64     ; 2 uses
  %i.js = getelementptr i8, ptr %i.jo, i64 104    ; 2 uses
  %i.jt = getelementptr i8, ptr %i.jp, i64 144    ; 2 uses
  %i.ju = load i32, ptr %i.jq, align 4, !tbaa !78
  %i.jv = load i32, ptr %i.jr, align 4, !tbaa !78
  %i.jw = load i32, ptr %i.js, align 4, !tbaa !78
  %i.jx = load i32, ptr %i.jt, align 4, !tbaa !78
  %i.jy = insertelement <4 x i32> poison, i32 %i.ju, i64 0
  %i.jz = insertelement <4 x i32> %i.jy, i32 %i.jv, i64 1
  %i.ka = insertelement <4 x i32> %i.jz, i32 %i.jw, i64 2
  %i.kb = insertelement <4 x i32> %i.ka, i32 %i.jx, i64 3 ; 4 uses
  %i.kc = and <4 x i32> %i.kb, splat (i32 -16777216)
  %i.kd = lshr <4 x i32> %i.kb, splat (i32 16)
  %i.ke = and <4 x i32> %i.kd, splat (i32 255)
  %i.kf = mul nuw nsw <4 x i32> %i.ke, %broadcast.splat
  %i.kg = trunc nuw <4 x i32> %i.kf to <4 x i16>
  %i.kh = udiv <4 x i16> %i.kg, splat (i16 255)
  %i.ki = zext nneg <4 x i16> %i.kh to <4 x i32>
  %i.kj = lshr <4 x i32> %i.kb, splat (i32 8)
  %i.kk = and <4 x i32> %i.kj, splat (i32 255)
  %i.kl = mul nuw nsw <4 x i32> %i.kk, %broadcast.splat707
  %i.km = trunc nuw <4 x i32> %i.kl to <4 x i16>
  %i.kn = udiv <4 x i16> %i.km, splat (i16 255)
  %i.ko = zext nneg <4 x i16> %i.kn to <4 x i32>
  %i.kp = and <4 x i32> %i.kb, splat (i32 255)
  %i.kq = mul nuw nsw <4 x i32> %i.kp, %broadcast.splat709
  %i.kr = trunc nuw <4 x i32> %i.kq to <4 x i16>
  %i.ks = udiv <4 x i16> %i.kr, splat (i16 255)
  %i.kt = zext nneg <4 x i16> %i.ks to <4 x i32>
  %i.ku = shl nuw nsw <4 x i32> %i.ki, splat (i32 16)
  %i.kv = and <4 x i32> %i.ku, splat (i32 16711680)
  %i.kw = shl nuw nsw <4 x i32> %i.ko, splat (i32 8)
  %i.kx = and <4 x i32> %i.kw, splat (i32 65280)
  %i.ky = or disjoint <4 x i32> %i.kc, %i.kt
  %i.kz = or disjoint <4 x i32> %i.ky, %i.kv
  %i.la = or disjoint <4 x i32> %i.kz, %i.kx      ; 4 uses
  %i.lb = extractelement <4 x i32> %i.la, i64 0
  store i32 %i.lb, ptr %i.jq, align 4, !tbaa !78
  %i.lc = extractelement <4 x i32> %i.la, i64 1
  store i32 %i.lc, ptr %i.jr, align 4, !tbaa !78
  %i.ld = extractelement <4 x i32> %i.la, i64 2
  store i32 %i.ld, ptr %i.js, align 4, !tbaa !78
  %i.le = extractelement <4 x i32> %i.la, i64 3
  store i32 %i.le, ptr %i.jt, align 4, !tbaa !78
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.lf = icmp eq i64 %index.next, %n.vec
  br i1 %i.lf, label %middle.block, label %vector.body, !llvm.loop !376

end_hunk_1
