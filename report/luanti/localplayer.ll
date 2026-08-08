inline.NumInlined: 802
inline.NumDeleted: 265
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN11LocalPlayer15updateSneakNodeEP3MapRKN4core8vector3dIfEES6_:bb.a
  %i.is = load i8, ptr %i.bt, align 1, !tbaa !144, !range !85, !noundef !86
  %i.it = trunc nuw i8 %i.is to i1
  br i1 %i.it, label %bb.ai, label %bb.aw

bb.ai:                                            ; preds = %_ZL18getNodeBoundingBoxRKSt6vectorIN4core8aabbox3dIfEESaIS2_EE.exit150
  %i.iu = load i16, ptr %i.ag, align 2, !tbaa !70
  %i.iv = load i16, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !71
  %i.iw = add i16 %i.iv, 2
  %i.ix = load i16, ptr %.sroa.10.0..sroa_idx, align 2, !tbaa !72
  %.sroa.3.0.insert.ext.i151 = zext i16 %i.ix to i48
  %.sroa.3.0.insert.shift.i152 = shl nuw i48 %.sroa.3.0.insert.ext.i151, 32
  %.sroa.2.0.insert.ext.i153 = zext i16 %i.iw to i48
  %.sroa.2.0.insert.shift.i154 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i153, 16
  %.sroa.2.0.insert.insert.i155 = or disjoint i48 %.sroa.3.0.insert.shift.i152, %.sroa.2.0.insert.shift.i154
  %.sroa.0.0.insert.ext.i156 = zext i16 %i.iu to i48
  %.sroa.0.0.insert.insert.i157 = or disjoint i48 %.sroa.2.0.insert.insert.i155, %.sroa.0.0.insert.ext.i156
  %i.iy = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %1, i48 %.sroa.0.0.insert.insert.i157, ptr noundef nonnull %i.a)
          to label %bb.aj unwind label %bb.au     ; 2 uses

bb.aj:                                            ; preds = %bb.ai
  store i32 %i.iy, ptr %4, align 4
  %i.iz = load i8, ptr %i.a, align 1, !tbaa !91, !range !85, !noundef !86
  %i.ja = trunc nuw i8 %i.iz to i1
  br i1 %i.ja, label %bb.ak, label %bb.aw

bb.ak:                                            ; preds = %bb.aj
  %i.jb = and i32 %i.iy, 65535
  %i.jc = zext nneg i32 %i.jb to i64              ; 2 uses
  %i.jd = load ptr, ptr %i.bp, align 8, !tbaa !92
  %i.je = load ptr, ptr %i.bo, align 8, !tbaa !95 ; 3 uses
  %i.jf = ptrtoint ptr %i.jd to i64
  %i.jg = ptrtoint ptr %i.je to i64
  %i.jh = sub i64 %i.jf, %i.jg
  %i.ji = sdiv exact i64 %i.jh, 2080
  %i.jj = icmp ugt i64 %i.ji, %i.jc
  br i1 %i.jj, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.jk = getelementptr inbounds nuw [2080 x i8], ptr %i.je, i64 %i.jc ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !19
  %i.jn = icmp eq i64 %i.jm, 0
  br i1 %i.jn, label %bb.am, label %_ZNK14NodeDefManager3getERK7MapNode.exit158

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.jo = getelementptr inbounds nuw i8, ptr %i.je, i64 260000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit158

_ZNK14NodeDefManager3getERK7MapNode.exit158:      ; preds = %bb.am, %bb.al
  %i.jp = phi ptr [ %i.jo, %bb.am ], [ %i.jk, %bb.al ]
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 1412
  %i.jr = load i8, ptr %i.jq, align 4, !tbaa !96, !range !85, !noundef !86
  %i.js = trunc nuw i8 %i.jr to i1
  br i1 %i.js, label %bb.an, label %bb.aw

bb.an:                                            ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit158
  %i.jt = load i16, ptr %i.ag, align 2, !tbaa !70
  %i.ju = load i16, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !71
  %i.jv = add i16 %i.ju, 3
  %i.jw = load i16, ptr %.sroa.10.0..sroa_idx, align 2, !tbaa !72
  %.sroa.3.0.insert.ext.i159 = zext i16 %i.jw to i48
  %.sroa.3.0.insert.shift.i160 = shl nuw i48 %.sroa.3.0.insert.ext.i159, 32
  %.sroa.2.0.insert.ext.i161 = zext i16 %i.jv to i48
  %.sroa.2.0.insert.shift.i162 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i161, 16
  %.sroa.2.0.insert.insert.i163 = or disjoint i48 %.sroa.3.0.insert.shift.i160, %.sroa.2.0.insert.shift.i162
  %.sroa.0.0.insert.ext.i164 = zext i16 %i.jt to i48
  %.sroa.0.0.insert.insert.i165 = or disjoint i48 %.sroa.2.0.insert.insert.i163, %.sroa.0.0.insert.ext.i164
  %i.jx = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %1, i48 %.sroa.0.0.insert.insert.i165, ptr noundef nonnull %i.a)
          to label %bb.ao unwind label %bb.av     ; 2 uses

bb.ao:                                            ; preds = %bb.an
  store i32 %i.jx, ptr %4, align 4
  %i.jy = load i8, ptr %i.a, align 1, !tbaa !91, !range !85, !noundef !86
  %i.jz = trunc nuw i8 %i.jy to i1
  br i1 %i.jz, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.ka = and i32 %i.jx, 65535
  %i.kb = zext nneg i32 %i.ka to i64              ; 2 uses
  %i.kc = load ptr, ptr %i.bp, align 8, !tbaa !92
  %i.kd = load ptr, ptr %i.bo, align 8, !tbaa !95 ; 3 uses
  %i.ke = ptrtoint ptr %i.kc to i64
  %i.kf = ptrtoint ptr %i.kd to i64
  %i.kg = sub i64 %i.ke, %i.kf
  %i.kh = sdiv exact i64 %i.kg, 2080
  %i.ki = icmp ugt i64 %i.kh, %i.kb
  br i1 %i.ki, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.kj = getelementptr inbounds nuw [2080 x i8], ptr %i.kd, i64 %i.kb ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !19
  %i.km = icmp eq i64 %i.kl, 0
  br i1 %i.km, label %bb.ar, label %_ZNK14NodeDefManager3getERK7MapNode.exit166

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kd, i64 260000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit166

_ZNK14NodeDefManager3getERK7MapNode.exit166:      ; preds = %bb.ar, %bb.aq
  %i.ko = phi ptr [ %i.kn, %bb.ar ], [ %i.kj, %bb.aq ]
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 1412
  %i.kq = load i8, ptr %i.kp, align 4, !tbaa !96, !range !85, !noundef !86
  %i.kr = xor i8 %i.kq, 1
  br label %bb.as

bb.as:                                            ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit166, %bb.ao
  %i.ks = phi i8 [ 0, %bb.ao ], [ %i.kr, %_ZNK14NodeDefManager3getERK7MapNode.exit166 ]
  store i8 %i.ks, ptr %i.bn, align 1, !tbaa !134
  br label %bb.aw

bb.at:                                            ; preds = %.thread244
  %i.kt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.au:                                            ; preds = %bb.ai
  %i.ku = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.av:                                            ; preds = %bb.an
  %i.kv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.aw:                                            ; preds = %bb.aj, %_ZNK14NodeDefManager3getERK7MapNode.exit158, %bb.as, %_ZL18getNodeBoundingBoxRKSt6vectorIN4core8aabbox3dIfEESaIS2_EE.exit150
  %i.kw = load ptr, ptr %6, align 8, !tbaa !143   ; 3 uses
  %.not.i.i.i167 = icmp eq ptr %i.kw, null
  br i1 %.not.i.i.i167, label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EED2Ev.exit168, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.kx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !142
  %i.kz = ptrtoint ptr %i.ky to i64
  %i.la = ptrtoint ptr %i.kw to i64
  %i.lb = sub i64 %i.kz, %i.la
  call void @_ZdlPvm(ptr noundef nonnull %i.kw, i64 noundef %i.lb) #25
  br label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EED2Ev.exit168

_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EED2Ev.exit168: ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.bb

bb.ay:                                            ; preds = %bb.av, %bb.au, %bb.at
  %.pn = phi { ptr, i32 } [ %i.kt, %bb.at ], [ %i.kv, %bb.av ], [ %i.ku, %bb.au ]
  %i.lc = load ptr, ptr %6, align 8, !tbaa !143   ; 3 uses
  %.not.i.i.i169 = icmp eq ptr %i.lc, null
  br i1 %.not.i.i.i169, label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EED2Ev.exit170, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ld = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !142
  %i.lf = ptrtoint ptr %i.le to i64
  %i.lg = ptrtoint ptr %i.lc to i64
  %i.lh = sub i64 %i.lf, %i.lg
  call void @_ZdlPvm(ptr noundef nonnull %i.lc, i64 noundef %i.lh) #25
  br label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EED2Ev.exit170

_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EED2Ev.exit170: ; preds = %bb.ay, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EED2Ev.exit170, %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EED2Ev.exit118
  %.pn98.pn = phi { ptr, i32 } [ %i.fc, %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EED2Ev.exit118 ], [ %.pn, %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EED2Ev.exit170 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %.pn98.pn

bb.bb:                                            ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit, %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EED2Ev.exit168, %bb.i
  %.1 = phi i1 [ true, %_ZNK14NodeDefManager3getERK7MapNode.exit ], [ false, %bb.i ], [ true, %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EED2Ev.exit168 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret i1 %.1
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local i48 @_Z10floatToIntN4core8vector3dIfEEf(<2 x float> %0, float %1, float noundef %2) local_unnamed_addr #11 comdat {
bb.a:
  %.sroa.09.0.vec.extract = extractelement <2 x float> %0, i64 0 ; 2 uses
  %i.a = fcmp nsz ogt float %.sroa.09.0.vec.extract, 0.000000e+00
  %i.b = fmul nsz float %2, 5.000000e-01          ; 2 uses
  %i.c = fmul nsz float %2, -5.000000e-01         ; 2 uses
  %i.d = select nsz i1 %i.a, float %i.b, float %i.c
  %i.e = fadd nsz float %.sroa.09.0.vec.extract, %i.d
  %i.f = fdiv nsz float %i.e, %2
  %i.g = fptosi float %i.f to i16
  %i.h = insertelement <2 x float> %0, float %1, i64 0 ; 2 uses
  %i.i = fcmp nsz ogt <2 x float> %i.h, zeroinitializer
  %i.j = insertelement <2 x float> poison, float %i.b, i64 0
  %i.k = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> zeroinitializer
  %i.l = insertelement <2 x float> poison, float %i.c, i64 0
  %i.m = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> zeroinitializer
  %i.n = select <2 x i1> %i.i, <2 x float> %i.k, <2 x float> %i.m
  %i.o = fadd nsz <2 x float> %i.h, %i.n
  %i.p = insertelement <2 x float> poison, float %2, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = fdiv nsz <2 x float> %i.o, %i.q
  %i.s = fptosi <2 x float> %i.r to <2 x i16>
  %i.t = zext <2 x i16> %i.s to <2 x i48>
  %i.u = shl nuw <2 x i48> %i.t, <i48 32, i48 16>
  %.sroa.2.0.insert.insert = tail call i48 @llvm.vector.reduce.or.v2i48(<2 x i48> %i.u)
  %.sroa.0.0.insert.ext = zext i16 %i.g to i48
  %.sroa.0.0.insert.insert = or disjoint i48 %.sroa.2.0.insert.insert, %.sroa.0.0.insert.ext
  ret i48 %.sroa.0.0.insert.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

declare i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144), i48, ptr noundef) local_unnamed_addr #4

declare void @_ZNK7MapNode17getCollisionBoxesEPK14NodeDefManagerPSt6vectorIN4core8aabbox3dIfEESaIS6_EEh(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #12

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11LocalPlayer4moveEfP11EnvironmentPSt6vectorI13CollisionInfoSaIS3_EE(ptr noundef nonnull align 8 dereferenceable(864) %0, float noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.core::vector3d", align 16   ; 22 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = alloca i8, align 1                       ; 11 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %7 = alloca %struct.collisionMoveResult, align 8 ; 16 uses
  %8 = alloca %"class.core::vector3d", align 8    ; 7 uses
  %9 = alloca %"class.core::vector3d", align 4    ; 6 uses
  %10 = alloca %struct.CollisionInfo, align 8     ; 11 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %.not344 = icmp eq ptr %3, null                 ; 3 uses
  br i1 %.not344, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %3, align 8, !tbaa !151
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !151
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 604
  %.sroa.0263.0.copyload = load <2 x float>, ptr %i.g, align 4 ; 2 uses
  %.sroa.2264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 612
  %.sroa.2264.0.copyload = load float, ptr %.sroa.2264.0..sroa_idx, align 4, !tbaa !34
  %.sroa.09.0.vec.extract.i = extractelement <2 x float> %.sroa.0263.0.copyload, i64 0 ; 2 uses
  %i.h = fcmp nsz ogt float %.sroa.09.0.vec.extract.i, 0.000000e+00
  %i.i = select nsz i1 %i.h, float 5.000000e+00, float -5.000000e+00
  %i.j = fadd nsz float %.sroa.09.0.vec.extract.i, %i.i
  %i.k = fdiv nsz float %i.j, 1.000000e+01
  %i.l = fptosi float %i.k to i16
  %i.m = insertelement <2 x float> %.sroa.0263.0.copyload, float %.sroa.2264.0.copyload, i64 0 ; 2 uses
  %i.n = fcmp nsz ogt <2 x float> %i.m, zeroinitializer
  %i.o = select <2 x i1> %i.n, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.p = fadd nsz <2 x float> %i.m, %i.o
  %i.q = fdiv nsz <2 x float> %i.p, splat (float 1.000000e+01)
  %i.r = fptosi <2 x float> %i.q to <2 x i16>
  %i.s = zext <2 x i16> %i.r to <2 x i48>
  %i.t = shl nuw <2 x i48> %i.s, <i48 32, i48 16>
  %.sroa.2.0.insert.insert.i = tail call i48 @llvm.vector.reduce.or.v2i48(<2 x i48> %i.t)
  %.sroa.0.0.insert.ext.i = zext i16 %i.l to i48
  %.sroa.0.0.insert.insert.i = or disjoint i48 %.sroa.2.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 616
  store i48 %.sroa.0.0.insert.insert.i, ptr %i.u, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 278
  %i.w = load i8, ptr %i.v, align 2, !tbaa !153, !range !85, !noundef !86
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN11LocalPlayer8old_moveEfP11EnvironmentPSt6vectorI13CollisionInfoSaIS3_EE(ptr noundef nonnull align 8 dereferenceable(864) %0, float noundef %1, ptr noundef %2, ptr noundef %3)
  br label %bb.eh

bb.f:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %2, align 8, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef nonnull align 8 dereferenceable(144) ptr %i.aa(ptr noundef nonnull align 8 dereferenceable(88) %2) ; 9 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 6 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !81
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !31
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call noundef ptr %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.ae), !inline_history !83 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 604 ; 4 uses
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.aj, align 4
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 612 ; 2 uses
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !34
  store <2 x float> %.sroa.01.0.copyload.i, ptr %4, align 16
  %.sroa.2243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 10 uses
  store float %.sroa.22.0.copyload.i, ptr %.sroa.2243.0..sroa_idx, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 4 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !80 ; 3 uses
  %.not.i = icmp eq ptr %i.al, null
  br i1 %.not.i, label %_ZNK11LocalPlayer9getParentEv.exit.thread, label %_ZNK11LocalPlayer9getParentEv.exit

_ZNK11LocalPlayer9getParentEv.exit:               ; preds = %bb.f
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !31
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 160
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call noundef ptr %i.ao(ptr noundef nonnull align 8 dereferenceable(1076) %i.al), !inline_history !154
  %.not345 = icmp eq ptr %i.ap, null
  br i1 %.not345, label %_ZNK11LocalPlayer9getParentEv.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZNK11LocalPlayer9getParentEv.exit
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !80
  %i.ar = tail call { <2 x float>, float } @_ZNK10GenericCAO11getPositionEv(ptr noundef nonnull align 8 dereferenceable(1076) %i.aq) ; 2 uses
  %.fca.0.extract236 = extractvalue { <2 x float>, float } %i.ar, 0
  %.fca.1.extract237 = extractvalue { <2 x float>, float } %i.ar, 1
  store <2 x float> %.fca.0.extract236, ptr %i.aj, align 4
  store float %.fca.1.extract237, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !34
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 652
  store i8 0, ptr %i.as, align 4, !tbaa !84
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 760
  store <2 x float> zeroinitializer, ptr %i.at, align 8, !tbaa !34
  %.sroa.5723.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 768
  store float 0.000000e+00, ptr %.sroa.5723.0..sroa_idx, align 8, !tbaa !34
  br label %bb.eg

_ZNK11LocalPlayer9getParentEv.exit.thread:        ; preds = %bb.f, %_ZNK11LocalPlayer9getParentEv.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.av = load ptr, ptr %i.ac, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.aw, ptr %5, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.aw, ptr noundef nonnull align 1 dereferenceable(3) @.str.10, i64 3, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 3, ptr %i.ax, align 8, !tbaa !19
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 19
  store i8 0, ptr %i.ay, align 1, !tbaa !15
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 1384
  %i.ba = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS5_(ptr noundef nonnull align 8 dereferenceable(56) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %_ZNK11LocalPlayer9getParentEv.exit.thread
  %.not.i.i.i.i = icmp ne ptr %i.ba, null
  %i.bb = load ptr, ptr %5, align 8, !tbaa !9     ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.aw
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.bd = load i64, ptr %i.aw, align 8, !tbaa !15
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.bf = load ptr, ptr %i.ac, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.bg, ptr %6, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.bg, ptr noundef nonnull align 1 dereferenceable(6) @.str.6, i64 6, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 6, ptr %i.bh, align 8, !tbaa !19
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 22
  store i8 0, ptr %i.bi, align 2, !tbaa !15
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 1384
  %i.bk = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS5_(ptr noundef nonnull align 8 dereferenceable(56) %i.bj, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.not.i.i.i.i402.not = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i402.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 798
  %i.bm = load i8, ptr %i.bl, align 2, !tbaa !29, !range !85, !noundef !86
  %i.bn = trunc nuw i8 %i.bm to i1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bo = phi i1 [ false, %bb.i ], [ %i.bn, %bb.j ]
  %i.bp = load ptr, ptr %6, align 8, !tbaa !9     ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.bg
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit407, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i405

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i405: ; preds = %bb.k
  %i.br = load i64, ptr %i.bg, align 8, !tbaa !15
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit407

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit407: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i405
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.bt = load i8, ptr %i.au, align 8, !tbaa !20, !range !85, !noundef !86
  %i.bu = trunc nuw i8 %i.bt to i1
  %i.bv = and i1 %.not.i.i.i.i, %i.bu             ; 4 uses
  %or.cond = select i1 %i.bo, i1 %i.bv, i1 false
  br i1 %or.cond, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit407
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.by = load float, ptr %i.bx, align 8, !tbaa !90
  %i.bz = fmul nsz float %1, %i.by
  %i.ca = load <2 x float>, ptr %i.bw, align 8, !tbaa !34
  %i.cb = insertelement <2 x float> poison, float %1, i64 0
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cd = fmul nsz <2 x float> %i.cc, %i.ca
  %i.ce = load <2 x float>, ptr %4, align 16, !tbaa !34
  %i.cf = fadd nsz <2 x float> %i.cd, %i.ce
  store <2 x float> %i.cf, ptr %4, align 16, !tbaa !34
  %i.cg = load float, ptr %.sroa.2243.0..sroa_idx, align 8, !tbaa !90
  %i.ch = fadd nsz float %i.bz, %i.cg
  store float %i.ch, ptr %.sroa.2243.0..sroa_idx, align 8, !tbaa !90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.aj, ptr noundef nonnull align 16 dereferenceable(12) %4, i64 12, i1 false), !tbaa.struct !155
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 652
  store i8 0, ptr %i.ci, align 4, !tbaa !84
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 418
  store i8 0, ptr %i.cj, align 2, !tbaa !156
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 760
  store <2 x float> zeroinitializer, ptr %i.ck, align 8, !tbaa !34
  %.sroa.5716.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 768
  store float 0.000000e+00, ptr %.sroa.5716.0..sroa_idx, align 8, !tbaa !34
  br label %bb.eg

bb.m:                                             ; preds = %_ZNK11LocalPlayer9getParentEv.exit.thread
  %i.cl = landingpad { ptr, i32 }
          cleanup
  %i.cm = load ptr, ptr %5, align 8, !tbaa !9     ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.aw
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i410

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i410: ; preds = %bb.m
  %i.co = load i64, ptr %i.aw, align 8, !tbaa !15
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i410
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.el

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cq = landingpad { ptr, i32 }
          cleanup
  %i.cr = load ptr, ptr %6, align 8, !tbaa !9     ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.bg
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i413

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i413: ; preds = %bb.n
  %i.ct = load i64, ptr %i.bg, align 8, !tbaa !15
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i413
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.el

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit407
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 7 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 364 ; 9 uses
end_hunk_0
begin_hunk_1_@_ZN11LocalPlayer10accelerateERKN4core8vector3dIfEEffb:bb.a
  %i.ag = insertelement <2 x double> poison, double %sin.i29, i64 0
  %i.ah = insertelement <2 x double> %i.ag, double %cos.i30, i64 1 ; 2 uses
  %i.ai = insertelement <2 x double> poison, double %i.af, i64 0
  %i.aj = insertelement <2 x double> %i.ai, double %i.ae, i64 1
  %i.ak = fmul nsz <2 x double> %i.ah, %i.aj
  %i.al = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.am = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer
  %i.an = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ao = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.am, <2 x double> %i.an, <2 x double> %i.ak)
  %i.ap = fptrunc <2 x double> %i.ao to <2 x float>
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.aq = phi <2 x float> [ %i.ap, %bb.b ], [ %i.z, %bb.a ]
  %i.ar = load float, ptr %1, align 4, !tbaa !88
  %i.as = fsub nsz float %i.ar, %i.v              ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.au = load <2 x float>, ptr %i.at, align 4, !tbaa !34
  %i.av = fsub nsz <2 x float> %i.au, %i.aq       ; 4 uses
  %i.aw = fcmp nsz ogt float %2, 0.000000e+00
  br i1 %i.aw, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ax = fmul nsz <2 x float> %i.av, <float 0.000000e+00, float 1.000000e+00> ; 5 uses
  %foldExtExtBinop = fmul ninf nsz <2 x float> %i.ax, %i.ax
  %i.ay = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.az = tail call nsz float @llvm.fmuladd.f32(float %i.as, float %i.as, float %i.ay)
  %i.ba = extractelement <2 x float> %i.av, i64 1 ; 4 uses
  %i.bb = tail call nsz float @llvm.fmuladd.f32(float %i.ba, float %i.ba, float %i.az) ; 3 uses
  %i.bc = tail call nsz noundef float @llvm.sqrt.f32(float %i.bb)
  %i.bd = fcmp nsz ogt float %i.bc, %2
  br i1 %i.bd, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.as, i64 0
  %i.be = shufflevector <2 x float> %.sroa.0.0.vec.insert.i, <2 x float> %i.ax, <2 x i32> <i32 0, i32 2>
  %i.bf = fcmp nsz oeq float %i.bb, 0.000000e+00
  br i1 %i.bf, label %_ZN4core8vector3dIfE9normalizeEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bg = fpext nsz float %i.bb to double
  %i.bh = tail call nsz double @llvm.sqrt.f64(double %i.bg)
  %i.bi = fdiv nsz double 1.000000e+00, %i.bh     ; 2 uses
  %i.bj = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bk = insertelement <2 x float> %i.bj, float %i.as, i64 0
  %i.bl = fpext <2 x float> %i.bk to <2 x double>
  %i.bm = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.bn = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bo = fmul nsz <2 x double> %i.bn, %i.bl
  %i.bp = fptrunc <2 x double> %i.bo to <2 x float>
  %i.bq = fpext nsz float %i.ba to double
  %i.br = fmul nsz double %i.bi, %i.bq
  %i.bs = fptrunc nsz double %i.br to float
  br label %_ZN4core8vector3dIfE9normalizeEv.exit

_ZN4core8vector3dIfE9normalizeEv.exit:            ; preds = %bb.e, %bb.f
  %.sroa.055.0 = phi nsz <2 x float> [ %i.be, %bb.e ], [ %i.bp, %bb.f ] ; 2 uses
  %.sroa.13.0 = phi nsz float [ %i.ba, %bb.e ], [ %i.bs, %bb.f ]
  %.sroa.055.0.vec.extract60 = extractelement <2 x float> %.sroa.055.0, i64 0
  %i.bt = fmul nsz float %2, %.sroa.055.0.vec.extract60
  %i.bu = insertelement <2 x float> poison, float %2, i64 0
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bw = shufflevector <2 x float> %.sroa.055.0, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bx = insertelement <2 x float> %i.bw, float %.sroa.13.0, i64 1
  %i.by = fmul nsz <2 x float> %i.bv, %i.bx
  br label %bb.g

bb.g:                                             ; preds = %_ZN4core8vector3dIfE9normalizeEv.exit, %bb.d, %bb.c
  %.sroa.073.1 = phi nsz float [ 0.000000e+00, %bb.c ], [ %i.bt, %_ZN4core8vector3dIfE9normalizeEv.exit ], [ %i.as, %bb.d ]
  %i.bz = phi <2 x float> [ zeroinitializer, %bb.c ], [ %i.by, %_ZN4core8vector3dIfE9normalizeEv.exit ], [ %i.ax, %bb.d ] ; 4 uses
  %i.ca = fcmp nsz ogt float %3, 0.000000e+00
  %i.cb = extractelement <2 x float> %i.bz, i64 0 ; 3 uses
  br i1 %i.ca, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.cc = extractelement <2 x float> %i.av, i64 0 ; 2 uses
  %i.cd = fcmp nsz ogt float %i.cc, %3
  br i1 %i.cd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ce = fadd nsz float %3, %i.cb
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.cf = fneg nsz float %3
  %i.cg = fcmp nsz olt float %i.cc, %i.cf
  br i1 %i.cg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ch = fsub nsz float %i.cb, %3
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %foldExtExtBinop111 = fadd nsz <2 x float> %i.av, %i.bz
  %i.ci = extractelement <2 x float> %foldExtExtBinop111, i64 0
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.l, %bb.k, %bb.g
  %.sroa.11.2 = phi nsz float [ %i.ce, %bb.i ], [ %i.ch, %bb.k ], [ %i.ci, %bb.l ], [ %i.cb, %bb.g ] ; 2 uses
  %i.cj = insertelement <2 x float> %i.bz, float %.sroa.11.2, i64 0
  br i1 %4, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ck = fpext nsz float %i.d to double
  %i.cl = fmul nsz double %i.ck, f0x3F91DF46A2529D39
  %sincos.i39 = tail call nsz { double, double } @llvm.sincos.f64(double %i.cl) ; 2 uses
  %sin.i40 = extractvalue { double, double } %sincos.i39, 0
  %cos.i41 = extractvalue { double, double } %sincos.i39, 1
  %i.cm = fpext nsz float %.sroa.11.2 to double
  %i.cn = extractelement <2 x float> %i.bz, i64 1
  %i.co = fpext nsz float %i.cn to double         ; 2 uses
  %i.cp = fneg nsz double %i.co
  %i.cq = insertelement <2 x double> poison, double %sin.i40, i64 0
  %i.cr = insertelement <2 x double> %i.cq, double %cos.i41, i64 1 ; 2 uses
  %i.cs = insertelement <2 x double> poison, double %i.cp, i64 0
  %i.ct = insertelement <2 x double> %i.cs, double %i.co, i64 1
  %i.cu = fmul nsz <2 x double> %i.cr, %i.ct
  %i.cv = insertelement <2 x double> poison, double %i.cm, i64 0
  %i.cw = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cx = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cy = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cw, <2 x double> %i.cx, <2 x double> %i.cu)
  %i.cz = fptrunc <2 x double> %i.cy to <2 x float>
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.da = phi <2 x float> [ %i.cz, %bb.n ], [ %i.cj, %bb.m ] ; 2 uses
  %i.db = fpext nsz float %i.b to double
  %i.dc = fmul nsz double %i.db, f0x3F91DF46A2529D39
  %sincos.i42 = tail call nsz { double, double } @llvm.sincos.f64(double %i.dc) ; 2 uses
  %sin.i43 = extractvalue { double, double } %sincos.i42, 0
  %cos.i44 = extractvalue { double, double } %sincos.i42, 1
  %i.dd = fpext nsz float %.sroa.073.1 to double
  %i.de = extractelement <2 x float> %i.da, i64 1
  %i.df = fpext nsz float %i.de to double         ; 2 uses
  %i.dg = fneg nsz double %i.df
  %i.dh = insertelement <2 x double> poison, double %cos.i44, i64 0
  %i.di = insertelement <2 x double> %i.dh, double %sin.i43, i64 1 ; 2 uses
  %i.dj = insertelement <2 x double> poison, double %i.df, i64 0
  %i.dk = insertelement <2 x double> %i.dj, double %i.dg, i64 1
  %i.dl = fmul nsz <2 x double> %i.di, %i.dk
  %i.dm = insertelement <2 x double> poison, double %i.dd, i64 0
  %i.dn = shufflevector <2 x double> %i.dm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.do = shufflevector <2 x double> %i.di, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.dp = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dn, <2 x double> %i.do, <2 x double> %i.dl)
  %i.dq = fptrunc <2 x double> %i.dp to <2 x float> ; 2 uses
  %i.dr = extractelement <2 x float> %i.dq, i64 1
  %i.ds = fadd nsz float %.sroa.0101.0.copyload, %i.dr
  store float %i.ds, ptr %i.e, align 8, !tbaa !88
  %i.dt = extractelement <2 x float> %i.da, i64 0
  %i.du = fadd nsz float %.sroa.7.0.copyload, %i.dt
  store float %i.du, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !89
  %i.dv = extractelement <2 x float> %i.dq, i64 0
  %i.dw = fadd nsz float %.sroa.11104.0.copyload, %i.dv
  store float %i.dw, ptr %.sroa.11104.0..sroa_idx, align 8, !tbaa !90
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i48 @_ZN11LocalPlayer18getStandingNodePosEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(864) %0) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.b = load i8, ptr %i.a, align 4, !tbaa !84, !range !85, !noundef !86
  %i.c = trunc nuw i8 %i.b to i1
  %.sroa.0.0.in.v = select i1 %i.c, i64 622, i64 616
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.in.v
  %.sroa.0.0 = load i48, ptr %.sroa.0.0.in, align 2
  ret i48 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i48 @_ZN11LocalPlayer18getFootstepNodePosEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(864) %0) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 604
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.a, align 4 ; 3 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 612
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !34 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 724
  %i.c = load float, ptr %i.b, align 4, !tbaa !146
  %.sroa.060.4.vec.extract = extractelement <2 x float> %.sroa.01.0.copyload.i, i64 1
  %i.d = fadd nsz float %.sroa.060.4.vec.extract, %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.f = load i8, ptr %i.e, align 4, !tbaa !161, !range !85, !noundef !86
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.060.0.vec.extract = extractelement <2 x float> %.sroa.01.0.copyload.i, i64 0 ; 2 uses
  %i.h = fcmp nsz ogt float %.sroa.060.0.vec.extract, 0.000000e+00
  %i.i = select nsz i1 %i.h, float 5.000000e+00, float -5.000000e+00
  %i.j = insertelement <2 x float> poison, float %i.d, i64 0
  %i.k = insertelement <2 x float> %i.j, float %.sroa.22.0.copyload.i, i64 1 ; 2 uses
  %i.l = fcmp nsz ogt <2 x float> %i.k, zeroinitializer
  %i.m = fadd nsz float %.sroa.060.0.vec.extract, %i.i
  %i.n = fdiv nsz float %i.m, 1.000000e+01
  %i.o = fptosi float %i.n to i16
  %i.p = select <2 x i1> %i.l, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.q = fadd nsz <2 x float> %i.k, %i.p
  %i.r = fdiv nsz <2 x float> %i.q, splat (float 1.000000e+01)
  %i.s = fptosi <2 x float> %i.r to <2 x i16>
  %i.t = zext <2 x i16> %i.s to <2 x i48>
  %i.u = shl nuw <2 x i48> %i.t, <i48 16, i48 32>
  %.sroa.2.0.insert.insert.i = tail call i48 @llvm.vector.reduce.or.v2i48(<2 x i48> %i.u)
  %.sroa.0.0.insert.ext.i = zext i16 %i.o to i48
  %.sroa.0.0.insert.insert.i = or disjoint i48 %.sroa.2.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 418
  %i.w = load i8, ptr %i.v, align 2, !tbaa !156, !range !85, !noundef !86
  %i.x = trunc nuw i8 %i.w to i1
  %i.y = insertelement <2 x float> %.sroa.01.0.copyload.i, float %.sroa.22.0.copyload.i, i64 1 ; 2 uses
  %i.z = fcmp nsz ogt <2 x float> %i.y, zeroinitializer
  %i.aa = select <2 x i1> %i.z, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.ab = fadd nsz <2 x float> %i.y, %i.aa
  %i.ac = fdiv nsz <2 x float> %i.ab, splat (float 1.000000e+01) ; 2 uses
  %i.ad = extractelement <2 x float> %i.ac, i64 0
  %i.ae = fptosi float %i.ad to i16
  %i.af = extractelement <2 x float> %i.ac, i64 1
  %i.ag = fptosi float %i.af to i16
  %.sroa.3.0.insert.ext.i34 = zext i16 %i.ag to i48
  %.sroa.3.0.insert.shift.i35 = shl nuw i48 %.sroa.3.0.insert.ext.i34, 32 ; 2 uses
  %.sroa.0.0.insert.ext.i39 = zext i16 %i.ae to i48 ; 2 uses
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ah = fadd nsz float %i.d, -5.000000e-01      ; 2 uses
  %i.ai = fcmp nsz ogt float %i.ah, 0.000000e+00
  %i.aj = select nsz i1 %i.ai, float 5.000000e+00, float -5.000000e+00
  %i.ak = fadd nsz float %i.ah, %i.aj
  %i.al = fdiv nsz float %i.ak, 1.000000e+01
  %i.am = fptosi float %i.al to i16
  %.sroa.2.0.insert.ext.i36 = zext i16 %i.am to i48
  %.sroa.2.0.insert.shift.i37 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i36, 16
  %.sroa.2.0.insert.insert.i38 = or disjoint i48 %.sroa.2.0.insert.shift.i37, %.sroa.3.0.insert.shift.i35
  %.sroa.0.0.insert.insert.i40 = or disjoint i48 %.sroa.2.0.insert.insert.i38, %.sroa.0.0.insert.ext.i39
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.an = fadd nsz float %i.d, -5.000000e+00      ; 2 uses
  %i.ao = fcmp nsz ogt float %i.an, 0.000000e+00
  %i.ap = select nsz i1 %i.ao, float 5.000000e+00, float -5.000000e+00
  %i.aq = fadd nsz float %i.an, %i.ap
  %i.ar = fdiv nsz float %i.aq, 1.000000e+01
  %i.as = fptosi float %i.ar to i16
  %.sroa.2.0.insert.ext.i49 = zext i16 %i.as to i48
  %.sroa.2.0.insert.shift.i50 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i49, 16
  %.sroa.2.0.insert.insert.i51 = or disjoint i48 %.sroa.2.0.insert.shift.i50, %.sroa.3.0.insert.shift.i35
  %.sroa.0.0.insert.insert.i53 = or disjoint i48 %.sroa.2.0.insert.insert.i51, %.sroa.0.0.insert.ext.i39
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.sroa.025.0 = phi i48 [ %.sroa.0.0.insert.insert.i, %bb.b ], [ %.sroa.0.0.insert.insert.i40, %bb.d ], [ %.sroa.0.0.insert.insert.i53, %bb.e ]
  ret i48 %.sroa.025.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i48 @_ZNK11LocalPlayer16getLightPositionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(864) %0) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 604
  %i.b = load float, ptr %i.a, align 4, !tbaa !88 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.d = fcmp nsz ogt float %i.b, 0.000000e+00
  %i.e = select nsz i1 %i.d, float 5.000000e+00, float -5.000000e+00
  %i.f = fadd nsz float %i.b, %i.e
  %i.g = fdiv nsz float %i.f, 1.000000e+01
  %i.h = fptosi float %i.g to i16
  %i.i = load <2 x float>, ptr %i.c, align 8, !tbaa !34
  %i.j = fadd nsz <2 x float> %i.i, <float 1.500000e+01, float -0.000000e+00> ; 2 uses
  %i.k = fcmp nsz ogt <2 x float> %i.j, zeroinitializer
  %i.l = select <2 x i1> %i.k, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.m = fadd nsz <2 x float> %i.j, %i.l
  %i.n = fdiv nsz <2 x float> %i.m, splat (float 1.000000e+01)
  %i.o = fptosi <2 x float> %i.n to <2 x i16>
  %i.p = zext <2 x i16> %i.o to <2 x i48>
  %i.q = shl nuw <2 x i48> %i.p, <i48 16, i48 32>
  %.sroa.2.0.insert.insert.i = tail call i48 @llvm.vector.reduce.or.v2i48(<2 x i48> %i.q)
  %.sroa.0.0.insert.ext.i = zext i16 %i.h to i48
  %.sroa.0.0.insert.insert.i = or disjoint i48 %.sroa.2.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  ret i48 %.sroa.0.0.insert.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, float } @_ZNK11LocalPlayer12getEyeOffsetEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(864) %0) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.b = load float, ptr %i.a, align 8, !tbaa !293
  %i.c = fmul nsz float %i.b, 1.000000e+01
  %.sroa.0.4.vec.insert = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.c, i64 1
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.0.4.vec.insert, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float 0.000000e+00, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11LocalPlayer6isDeadEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(864) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z14fatal_error_fnPKcS0_jS0_(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 778, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK11LocalPlayer6isDeadEv) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZNK10GenericCAO10isImmortalEv(ptr noundef nonnull align 8 dereferenceable(1076) %i.b)
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.e = load i16, ptr %i.d, align 8, !tbaa !294
  %i.f = icmp eq i16 %i.e, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = phi i1 [ false, %bb.c ], [ %i.f, %bb.d ]
  ret i1 %i.g
}

; Function Attrs: noreturn
declare void @_Z14fatal_error_fnPKcS0_jS0_(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #17

declare noundef zeroext i1 @_ZNK10GenericCAO10isImmortalEv(ptr noundef nonnull align 8 dereferenceable(1076)) local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define internal void @__cxx_global_var_init.18() #18 section ".text.startup" comdat($_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, align 8
  %i.c = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS0_EED2Ev, ptr nonnull @_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, ptr nonnull @__dso_handle) #26 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !295    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteI18ClientActiveObjectEclEPS0_.exit

_ZNKSt14default_deleteI18ClientActiveObjectEclEPS0_.exit: ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(32) %i.a) #26, !inline_history !297
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteI18ClientActiveObjectEclEPS0_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #12

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS5_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !298
  %.not = icmp ugt i64 %i.b, 20
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.06.016 = load ptr, ptr %i.c, align 8, !tbaa !300 ; 3 uses
  %.not1117 = icmp eq ptr %.sroa.06.016, null
  br i1 %.not1117, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !19
  %.fr24 = freeze i64 %i.e                        ; 3 uses
  %i.f = icmp eq i64 %.fr24, 0
  %i.g = load ptr, ptr %1, align 8
  br i1 %i.f, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10.us
  %.sroa.06.018.us = phi ptr [ %.sroa.06.0.us, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10.us ], [ %.sroa.06.016, %.lr.ph ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.018.us, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !19
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10.us

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10.us: ; preds = %.lr.ph.split.us
  %.sroa.06.0.us = load ptr, ptr %.sroa.06.018.us, align 8, !tbaa !300 ; 2 uses
  %.not11.us = icmp eq ptr %.sroa.06.0.us, null
  br i1 %.not11.us, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %.lr.ph.split.us, !llvm.loop !301

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10
  %.sroa.06.018 = phi ptr [ %.sroa.06.0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10 ], [ %.sroa.06.016, %.lr.ph ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.018, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !19
  %i.m = icmp eq i64 %.fr24, %i.l
  br i1 %i.m, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit: ; preds = %.lr.ph.split
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.06.018, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !9
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.g, ptr %i.o, i64 %.fr24)
  %i.p = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.p, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10: ; preds = %.lr.ph.split, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit
  %.sroa.06.0 = load ptr, ptr %.sroa.06.018, align 8, !tbaa !300 ; 2 uses
  %.not11 = icmp eq ptr %.sroa.06.0, null
  br i1 %.not11, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %.lr.ph.split, !llvm.loop !301

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %1, align 8, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !19
  %i.t = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.q, i64 noundef %i.s, i64 noundef 3339675911)
          to label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit unwind label %bb.d ; 3 uses

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #27
  unreachable

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit: ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !302  ; 3 uses
  %i.y = urem i64 %i.t, %i.x                      ; 3 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !303
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.y
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !304 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !300 ; 3 uses
  %i.ad = load i64, ptr %i.r, align 8
  %.fr22.i.i = freeze i64 %i.ad                   ; 3 uses
  %i.ae = icmp eq i64 %.fr22.i.i, 0
  %i.af = load ptr, ptr %1, align 8
  %.phi.trans.insert25.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %.pre26.i.i = load i64, ptr %.phi.trans.insert25.i.i, align 8, !tbaa !305 ; 2 uses
  br i1 %i.ae, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.e, %bb.g
  %i.ag = phi i64 [ %i.an, %bb.g ], [ %.pre26.i.i, %bb.e ]
  %.0.us.i.i = phi ptr [ %i.al, %bb.g ], [ %i.ac, %bb.e ] ; 3 uses
  %i.ah = icmp eq i64 %i.t, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.us.i.i

bb.f:                                             ; preds = %.split.us.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !19
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.us.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.us.i.i: ; preds = %bb.f, %.split.us.i.i
  %i.al = load ptr, ptr %.0.us.i.i, align 8, !tbaa !300 ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.al, null
  br i1 %.not18.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.us.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = load i64, ptr %i.am, align 8, !tbaa !305 ; 2 uses
  %i.ao = urem i64 %i.an, %i.x
  %.not19.us.i.i = icmp eq i64 %i.ao, %i.y
  br i1 %.not19.us.i.i, label %.split.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, !llvm.loop !307

.split.i.i:                                       ; preds = %bb.e, %bb.i
  %i.ap = phi i64 [ %i.az, %bb.i ], [ %.pre26.i.i, %bb.e ]
  %.0.i.i = phi ptr [ %i.ax, %bb.i ], [ %i.ac, %bb.e ] ; 4 uses
end_hunk_1
begin_hunk_2_@_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_:bb.a
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.y
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !304 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !300 ; 3 uses
  %i.ad = load i64, ptr %i.r, align 8
  %.fr22.i.i = freeze i64 %i.ad                   ; 3 uses
  %i.ae = icmp eq i64 %.fr22.i.i, 0
  %i.af = load ptr, ptr %1, align 8
  %.phi.trans.insert25.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %.pre26.i.i = load i64, ptr %.phi.trans.insert25.i.i, align 8, !tbaa !305 ; 2 uses
  br i1 %i.ae, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.e, %bb.g
  %i.ag = phi i64 [ %i.an, %bb.g ], [ %.pre26.i.i, %bb.e ]
  %.0.us.i.i = phi ptr [ %i.al, %bb.g ], [ %i.ac, %bb.e ] ; 3 uses
  %i.ah = icmp eq i64 %i.t, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i

bb.f:                                             ; preds = %.split.us.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !19
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i: ; preds = %bb.f, %.split.us.i.i
  %i.al = load ptr, ptr %.0.us.i.i, align 8, !tbaa !300 ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.al, null
  br i1 %.not18.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = load i64, ptr %i.am, align 8, !tbaa !305 ; 2 uses
  %i.ao = urem i64 %i.an, %i.x
  %.not19.us.i.i = icmp eq i64 %i.ao, %i.y
  br i1 %.not19.us.i.i, label %.split.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, !llvm.loop !312

.split.i.i:                                       ; preds = %bb.e, %bb.i
  %i.ap = phi i64 [ %i.az, %bb.i ], [ %.pre26.i.i, %bb.e ]
  %.0.i.i = phi ptr [ %i.ax, %bb.i ], [ %i.ac, %bb.e ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.ar = icmp eq i64 %i.t, %i.ap
  br i1 %i.ar, label %bb.h, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i

bb.h:                                             ; preds = %.split.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !19
  %i.au = icmp eq i64 %.fr22.i.i, %i.at
  br i1 %i.au, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i: ; preds = %bb.h
  %i.av = load ptr, ptr %i.aq, align 8, !tbaa !9
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.af, ptr %i.av, i64 %.fr22.i.i)
  %i.aw = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.aw, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i, %bb.h, %.split.i.i
  %i.ax = load ptr, ptr %.0.i.i, align 8, !tbaa !300 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.ax, null
  br i1 %.not18.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !305 ; 2 uses
  %i.ba = urem i64 %i.az, %i.x
  %.not19.i.i = icmp eq i64 %i.ba, %i.y
  br i1 %.not19.i.i, label %.split.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, !llvm.loop !312

_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10.us, %.lr.ph.split.us, %bb.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i, %bb.g, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i, %bb.f, %bb.b, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %.sroa.06.1 = phi ptr [ null, %bb.b ], [ null, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10.us ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i ], [ %.0.us.i.i, %bb.f ], [ null, %bb.g ], [ %.0.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i ], [ null, %bb.i ], [ %.sroa.06.018.us, %.lr.ph.split.us ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10 ], [ %.sroa.06.018, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit ]
  ret ptr %.sroa.06.1
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #12

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #17

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_localplayer.cpp() #20 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL20PlayerSettings_namesB5cxx11, i64 16), ptr @_ZL20PlayerSettings_namesB5cxx11, align 16, !tbaa !18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) getelementptr inbounds nuw (i8, ptr @_ZL20PlayerSettings_namesB5cxx11, i64 16), ptr noundef nonnull align 1 dereferenceable(9) @.str, i64 9, i1 false)
  store i64 9, ptr getelementptr inbounds nuw (i8, ptr @_ZL20PlayerSettings_namesB5cxx11, i64 8), align 8, !tbaa !19
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL20PlayerSettings_namesB5cxx11, i64 25), align 1, !tbaa !15
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL20PlayerSettings_namesB5cxx11, i64 48), ptr getelementptr inbounds nuw (i8, ptr @_ZL20PlayerSettings_namesB5cxx11, i64 32), align 16, !tbaa !18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @_ZL20PlayerSettings_namesB5cxx11, i64 48), ptr noundef nonnull align 1 dereferenceable(10) @.str.1, i64 10, i1 false)
  store i64 10, ptr getelementptr inbounds nuw (i8, ptr @_ZL20PlayerSettings_namesB5cxx11, i64 40), align 8, !tbaa !19
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL20PlayerSettings_namesB5cxx11, i64 58), align 2, !tbaa !15
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL20PlayerSettings_namesB5cxx11, i64 80), ptr getelementptr inbounds nuw (i8, ptr @_ZL20PlayerSettings_namesB5cxx11, i64 64), align 16, !tbaa !18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) getelementptr inbounds nuw (i8, ptr @_ZL20PlayerSettings_namesB5cxx11, i64 80), ptr noundef nonnull align 1 dereferenceable(9) @.str.2, i64 9, i1 false)
  store i64 9, ptr getelementptr inbounds nuw (i8, ptr @_ZL20PlayerSettings_namesB5cxx11, i64 72), align 8, !tbaa !19
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL20PlayerSettings_namesB5cxx11, i64 89), align 1, !tbaa !15
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL20PlayerSettings_namesB5cxx11, i64 112), ptr getelementptr inbounds nuw (i8, ptr @_ZL20PlayerSettings_namesB5cxx11, i64 96), align 16, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 18, ptr %i.a, align 8, !tbaa !25
  %i.b = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL20PlayerSettings_namesB5cxx11, i64 96), ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %__cxx_global_var_init.exit unwind label %bb.b ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL20PlayerSettings_namesB5cxx11, i64 64), align 16, !tbaa !9 ; 2 uses
  %i.e = icmp eq ptr %i.d, getelementptr inbounds nuw (i8, ptr @_ZL20PlayerSettings_namesB5cxx11, i64 80)
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL20PlayerSettings_namesB5cxx11, i64 80), align 16, !tbaa !15
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL20PlayerSettings_namesB5cxx11, i64 32), align 16, !tbaa !9 ; 2 uses
  %i.i = icmp eq ptr %i.h, getelementptr inbounds nuw (i8, ptr @_ZL20PlayerSettings_namesB5cxx11, i64 48)
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL20PlayerSettings_namesB5cxx11, i64 48), align 16, !tbaa !15
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i
  %i.l = load ptr, ptr @_ZL20PlayerSettings_namesB5cxx11, align 16, !tbaa !9 ; 2 uses
  %i.m = icmp eq ptr %i.l, getelementptr inbounds nuw (i8, ptr @_ZL20PlayerSettings_namesB5cxx11, i64 16)
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i
  %i.n = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL20PlayerSettings_namesB5cxx11, i64 16), align 16, !tbaa !15
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2.i
  resume { ptr, i32 } %i.c

__cxx_global_var_init.exit:                       ; preds = %bb.a
  store ptr %i.b, ptr getelementptr inbounds nuw (i8, ptr @_ZL20PlayerSettings_namesB5cxx11, i64 96), align 16, !tbaa !9
  %i.p = load i64, ptr %i.a, align 8, !tbaa !25   ; 3 uses
  store i64 %i.p, ptr getelementptr inbounds nuw (i8, ptr @_ZL20PlayerSettings_namesB5cxx11, i64 112), align 16, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.b, ptr noundef nonnull align 1 dereferenceable(18) @.str.3, i64 18, i1 false)
  store i64 %i.p, ptr getelementptr inbounds nuw (i8, ptr @_ZL20PlayerSettings_namesB5cxx11, i64 104), align 8, !tbaa !19
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL20PlayerSettings_namesB5cxx11, i64 96), align 16, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  store i8 0, ptr %i.r, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL20PlayerSettings_namesB5cxx11, i64 144), ptr getelementptr inbounds nuw (i8, ptr @_ZL20PlayerSettings_namesB5cxx11, i64 128), align 16, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(15) getelementptr inbounds nuw (i8, ptr @_ZL20PlayerSettings_namesB5cxx11, i64 144), ptr noundef nonnull align 1 dereferenceable(15) @.str.4, i64 15, i1 false)
  store i64 15, ptr getelementptr inbounds nuw (i8, ptr @_ZL20PlayerSettings_namesB5cxx11, i64 136), align 8, !tbaa !19
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL20PlayerSettings_namesB5cxx11, i64 159), align 1, !tbaa !15
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL20PlayerSettings_namesB5cxx11, i64 176), ptr getelementptr inbounds nuw (i8, ptr @_ZL20PlayerSettings_namesB5cxx11, i64 160), align 16, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(13) getelementptr inbounds nuw (i8, ptr @_ZL20PlayerSettings_namesB5cxx11, i64 176), ptr noundef nonnull align 1 dereferenceable(13) @.str.5, i64 13, i1 false)
  store i64 13, ptr getelementptr inbounds nuw (i8, ptr @_ZL20PlayerSettings_namesB5cxx11, i64 168), align 8, !tbaa !19
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL20PlayerSettings_namesB5cxx11, i64 189), align 1, !tbaa !15
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL20PlayerSettings_namesB5cxx11, i64 208), ptr getelementptr inbounds nuw (i8, ptr @_ZL20PlayerSettings_namesB5cxx11, i64 192), align 16, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) getelementptr inbounds nuw (i8, ptr @_ZL20PlayerSettings_namesB5cxx11, i64 208), ptr noundef nonnull align 1 dereferenceable(6) @.str.6, i64 6, i1 false)
  store i64 6, ptr getelementptr inbounds nuw (i8, ptr @_ZL20PlayerSettings_namesB5cxx11, i64 200), align 8, !tbaa !19
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL20PlayerSettings_namesB5cxx11, i64 214), align 2, !tbaa !15
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL20PlayerSettings_namesB5cxx11, i64 240), ptr getelementptr inbounds nuw (i8, ptr @_ZL20PlayerSettings_namesB5cxx11, i64 224), align 16, !tbaa !18
  store i64 8101260404706276705, ptr getelementptr inbounds nuw (i8, ptr @_ZL20PlayerSettings_namesB5cxx11, i64 240), align 16
  store i64 8, ptr getelementptr inbounds nuw (i8, ptr @_ZL20PlayerSettings_namesB5cxx11, i64 232), align 8, !tbaa !19
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL20PlayerSettings_namesB5cxx11, i64 248), align 8, !tbaa !15
  %i.s = call i32 @__cxa_atexit(ptr nonnull @__cxx_global_array_dtor, ptr null, ptr nonnull @__dso_handle) #26 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.sincos.f64(double) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i48 @llvm.vector.reduce.or.v2i48(<2 x i48>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #12

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #25 = { builtin nounwind }
attributes #26 = { nounwind }
attributes #27 = { noreturn nounwind }
attributes #28 = { noreturn }
attributes #29 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !12, i64 0}
!10 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0, !14, i64 8, !7, i64 16}
!11 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!12 = !{!"p1 omnipotent char", !13, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"long", !7, i64 0}
!15 = !{!7, !7, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"p1 _ZTS8Settings", !13, i64 0}
!18 = !{!11, !12, i64 0}
!19 = !{!10, !14, i64 8}
!20 = !{!21, !22, i64 0}
!21 = !{!"_ZTS14PlayerSettings", !22, i64 0, !22, i64 1, !22, i64 2, !22, i64 3, !22, i64 4, !22, i64 5, !22, i64 6, !22, i64 7}
!22 = !{!"bool", !7, i64 0}
!23 = !{!21, !22, i64 1}
!24 = !{!21, !22, i64 2}
!25 = !{!14, !14, i64 0}
!26 = !{!21, !22, i64 3}
!27 = !{!21, !22, i64 4}
!28 = !{!21, !22, i64 5}
!29 = !{!21, !22, i64 6}
!30 = !{!21, !22, i64 7}
!31 = !{!32, !32, i64 0}
!32 = !{!"vtable pointer", !8, i64 0}
!33 = distinct !{null}
!34 = !{!35, !35, i64 0}
!35 = !{!"float", !7, i64 0}
!36 = !{!37, !35, i64 480}
!37 = !{!"_ZTS11LocalPlayer", !38, i64 0, !51, i64 416, !22, i64 418, !22, i64 419, !22, i64 420, !7, i64 421, !22, i64 422, !22, i64 423, !22, i64 424, !35, i64 428, !40, i64 432, !40, i64 444, !35, i64 456, !35, i64 460, !6, i64 464, !7, i64 468, !7, i64 469, !22, i64 470, !35, i64 472, !35, i64 476, !35, i64 480, !22, i64 484, !58, i64 488, !35, i64 492, !10, i64 496, !10, i64 528, !10, i64 560, !59, i64 592, !35, i64 596, !35, i64 600, !40, i64 604, !60, i64 616, !60, i64 622, !61, i64 628, !22, i64 652, !22, i64 653, !35, i64 656, !22, i64 660, !60, i64 662, !10, i64 672, !22, i64 704, !22, i64 705, !22, i64 706, !51, i64 708, !35, i64 712, !35, i64 716, !61, i64 720, !35, i64 744, !35, i64 748, !22, i64 752, !35, i64 756, !40, i64 760, !62, i64 776, !63, i64 784, !21, i64 792, !64, i64 800}
!38 = !{!"_ZTS6Player", !39, i64 8, !40, i64 12, !40, i64 24, !40, i64 36, !41, i64 48, !35, i64 88, !35, i64 92, !35, i64 96, !35, i64 100, !35, i64 104, !35, i64 108, !35, i64 112, !35, i64 116, !35, i64 120, !35, i64 124, !35, i64 128, !35, i64 132, !7, i64 136, !35, i64 168, !10, i64 176, !10, i64 208, !49, i64 240, !50, i64 264, !6, i64 320, !6, i64 324, !10, i64 328, !40, i64 360, !51, i64 372, !52, i64 376, !53, i64 392}
!39 = !{!"_ZTS10CameraMode", !7, i64 0}
!40 = !{!"_ZTSN4core8vector3dIfEE", !35, i64 0, !35, i64 4, !35, i64 8}
!41 = !{!"_ZTS9Inventory", !42, i64 0, !48, i64 24, !22, i64 32}
!42 = !{!"_ZTSSt6vectorIP13InventoryListSaIS1_EE", !43, i64 0}
!43 = !{!"_ZTSSt12_Vector_baseIP13InventoryListSaIS1_EE", !44, i64 0}
!44 = !{!"_ZTSNSt12_Vector_baseIP13InventoryListSaIS1_EE12_Vector_implE", !45, i64 0}
!45 = !{!"_ZTSNSt12_Vector_baseIP13InventoryListSaIS1_EE17_Vector_impl_dataE", !46, i64 0, !46, i64 8, !46, i64 16}
!46 = !{!"p2 _ZTS13InventoryList", !47, i64 0}
!47 = !{!"any p2 pointer", !13, i64 0}
!48 = !{!"p1 _ZTS15IItemDefManager", !13, i64 0}
!49 = !{!"_ZTS13PlayerControl", !7, i64 0, !22, i64 1, !22, i64 2, !22, i64 3, !22, i64 4, !22, i64 5, !22, i64 6, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20}
!50 = !{!"_ZTS21PlayerPhysicsOverride", !35, i64 0, !35, i64 4, !35, i64 8, !22, i64 12, !22, i64 13, !22, i64 14, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36, !35, i64 40, !35, i64 44, !35, i64 48, !35, i64 52}
!51 = !{!"short", !7, i64 0}
!52 = !{!"_ZTS13PlayerFovSpec", !35, i64 0, !22, i64 4, !35, i64 8}
!53 = !{!"_ZTSSt6vectorIP10HudElementSaIS1_EE", !54, i64 0}
!54 = !{!"_ZTSSt12_Vector_baseIP10HudElementSaIS1_EE", !55, i64 0}
!55 = !{!"_ZTSNSt12_Vector_baseIP10HudElementSaIS1_EE12_Vector_implE", !56, i64 0}
!56 = !{!"_ZTSNSt12_Vector_baseIP10HudElementSaIS1_EE17_Vector_impl_dataE", !57, i64 0, !57, i64 8, !57, i64 16}
!57 = !{!"p2 _ZTS10HudElement", !47, i64 0}
!58 = !{!"_ZTS20LocalPlayerAnimation", !7, i64 0}
!59 = !{!"_ZTSN5video6SColorE", !6, i64 0}
!60 = !{!"_ZTSN4core8vector3dIsEE", !51, i64 0, !51, i64 2, !51, i64 4}
!61 = !{!"_ZTSN4core8aabbox3dIfEE", !40, i64 0, !40, i64 12}
!62 = !{!"p1 _ZTS10GenericCAO", !13, i64 0}
!63 = !{!"p1 _ZTS6Client", !13, i64 0}
!64 = !{!"_ZTS8Lighting", !65, i64 0, !35, i64 24, !35, i64 28, !35, i64 32, !59, i64 36, !35, i64 40, !35, i64 44, !35, i64 48, !40, i64 52}
!65 = !{!"_ZTS12AutoExposure", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20}
!66 = !{!37, !22, i64 484}
!67 = !{!37, !58, i64 488}
!68 = !{!37, !35, i64 492}
!69 = !{!59, !6, i64 0}
!70 = !{!60, !51, i64 0}
!71 = !{!60, !51, i64 2}
!72 = !{!60, !51, i64 4}
!73 = !{!37, !35, i64 656}
!74 = !{!37, !22, i64 660}
!75 = !{!37, !22, i64 704}
!76 = !{!37, !22, i64 705}
!77 = !{!37, !22, i64 706}
!78 = !{!37, !51, i64 708}
!79 = !{!37, !22, i64 752}
!80 = !{!37, !62, i64 776}
!81 = !{!37, !63, i64 784}
!82 = !{!64, !35, i64 32}
!83 = distinct !{null}
!84 = !{!37, !22, i64 652}
!85 = !{i8 0, i8 2}
!86 = !{}
!87 = !{!37, !35, i64 644}
!88 = !{!40, !35, i64 0}
!89 = !{!40, !35, i64 4}
!90 = !{!40, !35, i64 8}
!91 = !{!22, !22, i64 0}
!92 = !{!93, !94, i64 8}
!93 = !{!"_ZTSNSt12_Vector_baseI15ContentFeaturesSaIS0_EE17_Vector_impl_dataE", !94, i64 0, !94, i64 8, !94, i64 16}
!94 = !{!"p1 _ZTS15ContentFeatures", !13, i64 0}
!95 = !{!93, !94, i64 0}
!96 = !{!97, !22, i64 1412}
!97 = !{!"_ZTS15ContentFeatures", !22, i64 0, !22, i64 1, !22, i64 2, !22, i64 3, !10, i64 8, !98, i64 40, !104, i64 96, !105, i64 97, !106, i64 98, !10, i64 104, !35, i64 136, !7, i64 144, !7, i64 528, !7, i64 912, !107, i64 1296, !59, i64 1300, !10, i64 1304, !7, i64 1336, !7, i64 1337, !108, i64 1344, !113, i64 1368, !59, i64 1392, !22, i64 1396, !7, i64 1397, !7, i64 1398, !118, i64 1400, !22, i64 1408, !22, i64 1409, !7, i64 1410, !22, i64 1411, !22, i64 1412, !119, i64 1413, !22, i64 1414, !22, i64 1415, !22, i64 1416, !22, i64 1417, !6, i64 1420, !10, i64 1424, !7, i64 1456, !120, i64 1457, !22, i64 1458, !10, i64 1464, !51, i64 1496, !10, i64 1504, !51, i64 1536, !7, i64 1538, !22, i64 1539, !7, i64 1540, !7, i64 1541, !22, i64 1542, !121, i64 1544, !121, i64 1664, !121, i64 1784, !133, i64 1904, !133, i64 1960, !133, i64 2016, !22, i64 2072, !22, i64 2073}
!98 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE", !99, i64 0}
!99 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !100, i64 0, !14, i64 8, !101, i64 16, !14, i64 24, !103, i64 32, !102, i64 48}
!100 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !47, i64 0}
!101 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !102, i64 0}
!102 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !13, i64 0}
!103 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !35, i64 0, !14, i64 8}
!104 = !{!"_ZTS16ContentParamType", !7, i64 0}
!105 = !{!"_ZTS17ContentParamType2", !7, i64 0}
!106 = !{!"_ZTS12NodeDrawType", !7, i64 0}
!107 = !{!"_ZTS9AlphaMode", !7, i64 0}
!108 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !109, i64 0}
!109 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !110, i64 0}
!110 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !111, i64 0}
!111 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !112, i64 0, !112, i64 8, !112, i64 16}
!112 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0}
!113 = !{!"_ZTSSt6vectorItSaItEE", !114, i64 0}
!114 = !{!"_ZTSSt12_Vector_baseItSaItEE", !115, i64 0}
!115 = !{!"_ZTSNSt12_Vector_baseItSaItEE12_Vector_implE", !116, i64 0}
!116 = !{!"_ZTSNSt12_Vector_baseItSaItEE17_Vector_impl_dataE", !117, i64 0, !117, i64 8, !117, i64 16}
!117 = !{!"p1 short", !13, i64 0}
!118 = !{!"p1 _ZTS11NodeVisuals", !13, i64 0}
!119 = !{!"_ZTS16PointabilityType", !7, i64 0}
!120 = !{!"_ZTS10LiquidType", !7, i64 0}
!121 = !{!"_ZTS7NodeBox", !122, i64 0, !123, i64 8, !61, i64 32, !61, i64 56, !61, i64 80, !128, i64 104}
!122 = !{!"_ZTS11NodeBoxType", !7, i64 0}
!123 = !{!"_ZTSSt6vectorIN4core8aabbox3dIfEESaIS2_EE", !124, i64 0}
!124 = !{!"_ZTSSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE", !125, i64 0}
!125 = !{!"_ZTSNSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE12_Vector_implE", !126, i64 0}
!126 = !{!"_ZTSNSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE17_Vector_impl_dataE", !127, i64 0, !127, i64 8, !127, i64 16}
!127 = !{!"p1 _ZTSN4core8aabbox3dIfEE", !13, i64 0}
!128 = !{!"_ZTSSt10shared_ptrI16NodeBoxConnectedE", !129, i64 0}
!129 = !{!"_ZTSSt12__shared_ptrI16NodeBoxConnectedLN9__gnu_cxx12_Lock_policyE2EE", !130, i64 0, !131, i64 8}
!130 = !{!"p1 _ZTS16NodeBoxConnected", !13, i64 0}
!131 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !132, i64 0}
!132 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0}
!133 = !{!"_ZTS9SoundSpec", !10, i64 0, !35, i64 32, !35, i64 36, !35, i64 40, !35, i64 44, !22, i64 48, !22, i64 49}
!134 = !{!37, !22, i64 653}
!135 = !{!51, !51, i64 0}
!136 = !{!127, !127, i64 0}
!137 = !{!138}
!138 = distinct !{!138, !139, !"_ZL18getNodeBoundingBoxRKSt6vectorIN4core8aabbox3dIfEESaIS2_EE: argument 0"}
!139 = distinct !{!139, !"_ZL18getNodeBoundingBoxRKSt6vectorIN4core8aabbox3dIfEESaIS2_EE"}
!140 = distinct !{!140, !141}
!141 = !{!"llvm.loop.mustprogress"}
!142 = !{!126, !127, i64 16}
!143 = !{!126, !127, i64 0}
!144 = !{!38, !22, i64 277}
!145 = !{!37, !35, i64 736}
!146 = !{!37, !35, i64 724}
!147 = distinct !{!147, !141}
!148 = !{!149}
!149 = distinct !{!149, !150, !"_ZL18getNodeBoundingBoxRKSt6vectorIN4core8aabbox3dIfEESaIS2_EE: argument 0"}
!150 = distinct !{!150, !"_ZL18getNodeBoundingBoxRKSt6vectorIN4core8aabbox3dIfEESaIS2_EE"}
!151 = !{!152, !152, i64 0}
!152 = !{!"p1 _ZTS13CollisionInfo", !13, i64 0}
!153 = !{!38, !22, i64 278}
!154 = !{ptr @_ZNK11LocalPlayer9getParentEv}
!155 = !{i64 0, i64 4, !34, i64 4, i64 4, !34, i64 8, i64 4, !34}
!156 = !{!37, !22, i64 418}
!157 = !{!37, !22, i64 419}
!158 = !{!97, !22, i64 1458}
!159 = !{!97, !7, i64 1456}
end_hunk_2
