Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/localplayer?download=true
inline.NumInlined: 802
inline.NumDeleted: 265
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN11LocalPlayer15updateSneakNodeEP3MapRKN4core8vector3dIfEES6_:bb.a
  %i.ii = select <2 x i1> %i.ih, <2 x float> %i.ig, <2 x float> %i.hs
  %i.ij = select <2 x i1> %i.ih, <2 x float> %i.ig, <2 x float> %i.hr ; 2 uses
  %i.ik = shufflevector <3 x float> %i.ib, <3 x float> poison, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.il = fcmp nsz ogt <2 x float> %i.ik, %i.ij   ; 2 uses
  %i.im = select <2 x i1> %i.il, <2 x float> %i.ik, <2 x float> %i.ii ; 2 uses
  %i.in = select <2 x i1> %i.il, <2 x float> %i.ik, <2 x float> %i.ij
  %i.io = select <4 x i1> %i.if, <4 x float> %i.ic, <4 x float> %i.hz ; 2 uses
  %i.ip = select <4 x i1> %i.if, <4 x float> %i.ic, <4 x float> %i.ia
  %.sroa.01.0.i148 = getelementptr inbounds nuw i8, ptr %.sroa.01.010.i144, i64 24 ; 2 uses
  %.not.i149 = icmp eq ptr %.sroa.01.0.i148, %.val102
  br i1 %.not.i149, label %_ZL18getNodeBoundingBoxRKSt6vectorIN4core8aabbox3dIfEESaIS2_EE.exit150, label %.lr.ph.i137, !llvm.loop !140

_ZL18getNodeBoundingBoxRKSt6vectorIN4core8aabbox3dIfEESaIS2_EE.exit150: ; preds = %.lr.ph.i137, %bb.ah, %bb.ag
  %i.iq = phi <4 x float> [ zeroinitializer, %bb.ag ], [ %i.hn, %bb.ah ], [ %i.io, %.lr.ph.i137 ]
  %i.ir = phi <2 x float> [ zeroinitializer, %bb.ag ], [ %i.ho, %bb.ah ], [ %i.im, %.lr.ph.i137 ]
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 628
  store <4 x float> %i.iq, ptr %i.is, align 4, !tbaa !34
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 644
  store <2 x float> %i.ir, ptr %.sroa.19.0..sroa_idx, align 4, !tbaa !34
  %i.it = load i8, ptr %i.bt, align 1, !tbaa !144, !range !85, !noundef !86
  %i.iu = trunc nuw i8 %i.it to i1
  br i1 %i.iu, label %bb.ai, label %bb.aw

bb.ai:                                            ; preds = %_ZL18getNodeBoundingBoxRKSt6vectorIN4core8aabbox3dIfEESaIS2_EE.exit150
  %i.iv = load i16, ptr %i.ag, align 2, !tbaa !70
  %i.iw = load i16, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !71
  %i.ix = add i16 %i.iw, 2
  %i.iy = load i16, ptr %.sroa.10.0..sroa_idx, align 2, !tbaa !72
  %.sroa.3.0.insert.ext.i151 = zext i16 %i.iy to i48
  %.sroa.3.0.insert.shift.i152 = shl nuw i48 %.sroa.3.0.insert.ext.i151, 32
  %.sroa.2.0.insert.ext.i153 = zext i16 %i.ix to i48
  %.sroa.2.0.insert.shift.i154 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i153, 16
  %.sroa.2.0.insert.insert.i155 = or disjoint i48 %.sroa.3.0.insert.shift.i152, %.sroa.2.0.insert.shift.i154
  %.sroa.0.0.insert.ext.i156 = zext i16 %i.iv to i48
  %.sroa.0.0.insert.insert.i157 = or disjoint i48 %.sroa.2.0.insert.insert.i155, %.sroa.0.0.insert.ext.i156
  %i.iz = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %1, i48 %.sroa.0.0.insert.insert.i157, ptr noundef nonnull %i.a)
          to label %bb.aj unwind label %bb.au     ; 2 uses

bb.aj:                                            ; preds = %bb.ai
  store i32 %i.iz, ptr %4, align 4
  %i.ja = load i8, ptr %i.a, align 1, !tbaa !91, !range !85, !noundef !86
  %i.jb = trunc nuw i8 %i.ja to i1
  br i1 %i.jb, label %bb.ak, label %bb.aw

bb.ak:                                            ; preds = %bb.aj
  %i.jc = and i32 %i.iz, 65535
  %i.jd = zext nneg i32 %i.jc to i64              ; 2 uses
  %i.je = load ptr, ptr %i.bp, align 8, !tbaa !92
  %i.jf = load ptr, ptr %i.bo, align 8, !tbaa !95 ; 3 uses
  %i.jg = ptrtoint ptr %i.je to i64
  %i.jh = ptrtoint ptr %i.jf to i64
  %i.ji = sub i64 %i.jg, %i.jh
  %i.jj = sdiv exact i64 %i.ji, 2080
  %i.jk = icmp ugt i64 %i.jj, %i.jd
  br i1 %i.jk, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.jl = getelementptr inbounds nuw [2080 x i8], ptr %i.jf, i64 %i.jd ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !19
  %i.jo = icmp eq i64 %i.jn, 0
  br i1 %i.jo, label %bb.am, label %_ZNK14NodeDefManager3getERK7MapNode.exit158

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jf, i64 260000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit158

_ZNK14NodeDefManager3getERK7MapNode.exit158:      ; preds = %bb.am, %bb.al
  %i.jq = phi ptr [ %i.jp, %bb.am ], [ %i.jl, %bb.al ]
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 1412
  %i.js = load i8, ptr %i.jr, align 4, !tbaa !96, !range !85, !noundef !86
  %i.jt = trunc nuw i8 %i.js to i1
  br i1 %i.jt, label %bb.an, label %bb.aw

bb.an:                                            ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit158
  %i.ju = load i16, ptr %i.ag, align 2, !tbaa !70
  %i.jv = load i16, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !71
  %i.jw = add i16 %i.jv, 3
  %i.jx = load i16, ptr %.sroa.10.0..sroa_idx, align 2, !tbaa !72
  %.sroa.3.0.insert.ext.i159 = zext i16 %i.jx to i48
  %.sroa.3.0.insert.shift.i160 = shl nuw i48 %.sroa.3.0.insert.ext.i159, 32
  %.sroa.2.0.insert.ext.i161 = zext i16 %i.jw to i48
  %.sroa.2.0.insert.shift.i162 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i161, 16
  %.sroa.2.0.insert.insert.i163 = or disjoint i48 %.sroa.3.0.insert.shift.i160, %.sroa.2.0.insert.shift.i162
  %.sroa.0.0.insert.ext.i164 = zext i16 %i.ju to i48
  %.sroa.0.0.insert.insert.i165 = or disjoint i48 %.sroa.2.0.insert.insert.i163, %.sroa.0.0.insert.ext.i164
  %i.jy = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %1, i48 %.sroa.0.0.insert.insert.i165, ptr noundef nonnull %i.a)
          to label %bb.ao unwind label %bb.av     ; 2 uses

bb.ao:                                            ; preds = %bb.an
  store i32 %i.jy, ptr %4, align 4
  %i.jz = load i8, ptr %i.a, align 1, !tbaa !91, !range !85, !noundef !86
  %i.ka = trunc nuw i8 %i.jz to i1
  br i1 %i.ka, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.kb = and i32 %i.jy, 65535
  %i.kc = zext nneg i32 %i.kb to i64              ; 2 uses
  %i.kd = load ptr, ptr %i.bp, align 8, !tbaa !92
  %i.ke = load ptr, ptr %i.bo, align 8, !tbaa !95 ; 3 uses
  %i.kf = ptrtoint ptr %i.kd to i64
  %i.kg = ptrtoint ptr %i.ke to i64
  %i.kh = sub i64 %i.kf, %i.kg
  %i.ki = sdiv exact i64 %i.kh, 2080
  %i.kj = icmp ugt i64 %i.ki, %i.kc
  br i1 %i.kj, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.kk = getelementptr inbounds nuw [2080 x i8], ptr %i.ke, i64 %i.kc ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !19
  %i.kn = icmp eq i64 %i.km, 0
  br i1 %i.kn, label %bb.ar, label %_ZNK14NodeDefManager3getERK7MapNode.exit166

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ke, i64 260000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit166

_ZNK14NodeDefManager3getERK7MapNode.exit166:      ; preds = %bb.ar, %bb.aq
  %i.kp = phi ptr [ %i.ko, %bb.ar ], [ %i.kk, %bb.aq ]
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 1412
  %i.kr = load i8, ptr %i.kq, align 4, !tbaa !96, !range !85, !noundef !86
  %i.ks = xor i8 %i.kr, 1
  br label %bb.as

bb.as:                                            ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit166, %bb.ao
  %i.kt = phi i8 [ 0, %bb.ao ], [ %i.ks, %_ZNK14NodeDefManager3getERK7MapNode.exit166 ]
  store i8 %i.kt, ptr %i.bn, align 1, !tbaa !134
  br label %bb.aw

bb.at:                                            ; preds = %.thread244
  %i.ku = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.au:                                            ; preds = %bb.ai
  %i.kv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.av:                                            ; preds = %bb.an
  %i.kw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.aw:                                            ; preds = %bb.aj, %_ZNK14NodeDefManager3getERK7MapNode.exit158, %bb.as, %_ZL18getNodeBoundingBoxRKSt6vectorIN4core8aabbox3dIfEESaIS2_EE.exit150
  %i.kx = load ptr, ptr %6, align 8, !tbaa !143   ; 3 uses
  %.not.i.i.i167 = icmp eq ptr %i.kx, null
  br i1 %.not.i.i.i167, label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EED2Ev.exit168, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ky = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !142
  %i.la = ptrtoint ptr %i.kz to i64
  %i.lb = ptrtoint ptr %i.kx to i64
  %i.lc = sub i64 %i.la, %i.lb
  call void @_ZdlPvm(ptr noundef nonnull %i.kx, i64 noundef %i.lc) #25
  br label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EED2Ev.exit168

_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EED2Ev.exit168: ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.bb

bb.ay:                                            ; preds = %bb.av, %bb.au, %bb.at
  %.pn = phi { ptr, i32 } [ %i.ku, %bb.at ], [ %i.kw, %bb.av ], [ %i.kv, %bb.au ]
  %i.ld = load ptr, ptr %6, align 8, !tbaa !143   ; 3 uses
  %.not.i.i.i169 = icmp eq ptr %i.ld, null
  br i1 %.not.i.i.i169, label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EED2Ev.exit170, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.le = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !142
  %i.lg = ptrtoint ptr %i.lf to i64
  %i.lh = ptrtoint ptr %i.ld to i64
  %i.li = sub i64 %i.lg, %i.lh
  call void @_ZdlPvm(ptr noundef nonnull %i.ld, i64 noundef %i.li) #25
  br label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EED2Ev.exit170

_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EED2Ev.exit170: ; preds = %bb.ay, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EED2Ev.exit170, %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EED2Ev.exit118
  %.pn98.pn = phi { ptr, i32 } [ %i.fd, %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EED2Ev.exit118 ], [ %.pn, %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EED2Ev.exit170 ]
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
  %3 = fmul nsz float %2, 5.000000e-01            ; 2 uses
  %4 = fmul nsz float %2, -5.000000e-01           ; 2 uses
  %i.b = select nsz i1 %i.a, float %3, float %4
  %i.c = fadd nsz float %.sroa.09.0.vec.extract, %i.b
  %i.d = fdiv nsz float %i.c, %2
  %i.e = fptosi float %i.d to i16
  %i.f = insertelement <2 x float> %0, float %1, i64 0 ; 2 uses
  %i.g = fcmp nsz ogt <2 x float> %i.f, zeroinitializer
  %5 = insertelement <2 x float> poison, float %3, i64 0
  %i.h = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = insertelement <2 x float> poison, float %4, i64 0
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer
  %i.i = select <2 x i1> %i.g, <2 x float> %i.h, <2 x float> %7
  %i.j = fadd nsz <2 x float> %i.f, %i.i
  %8 = insertelement <2 x float> poison, float %2, i64 0
  %9 = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> zeroinitializer
  %i.k = fdiv nsz <2 x float> %i.j, %9
  %i.l = fptosi <2 x float> %i.k to <2 x i16>
  %i.m = zext <2 x i16> %i.l to <2 x i48>
  %i.n = shl nuw <2 x i48> %i.m, <i48 32, i48 16>
  %.sroa.2.0.insert.insert = tail call i48 @llvm.vector.reduce.or.v2i48(<2 x i48> %i.n)
  %.sroa.0.0.insert.ext = zext i16 %i.e to i48
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
end_hunk_0
