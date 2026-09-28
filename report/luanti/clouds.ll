Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/clouds?download=true
inline.NumInlined: 1459
inline.NumDeleted: 513
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN6CloudsD2Ev:bb.a

declare noundef i64 @_ZN8Settings29deregisterAllChangedCallbacksEPKv(ptr noundef nonnull align 8 dereferenceable(236), ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #23 ; 0 uses
  tail call void @_ZSt9terminatev() #24
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6CloudsD1Ev(ptr noundef nonnull align 8 dereferenceable(484) initializes((0, 8)) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN6CloudsD2Ev(ptr noundef nonnull align 8 dereferenceable(484) %0, ptr noundef nonnull @_ZTT6Clouds) #23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_ZTv0_n24_N6CloudsD1Ev(ptr noundef %0) unnamed_addr #10 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  tail call void @_ZN6CloudsD2Ev(ptr noundef nonnull align 8 dereferenceable(484) %i.d, ptr noundef nonnull @_ZTT6Clouds) #23, !inline_history !136
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6CloudsD0Ev(ptr noundef nonnull align 8 dereferenceable(484) initializes((0, 8)) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN6CloudsD2Ev(ptr noundef nonnull align 8 dereferenceable(484) %0, ptr noundef nonnull @_ZTT6Clouds) #23, !inline_history !136
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 504) #22
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_ZTv0_n24_N6CloudsD0Ev(ptr noundef %0) unnamed_addr #10 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 2 uses
  tail call void @_ZN6CloudsD2Ev(ptr noundef nonnull align 8 dereferenceable(484) %i.d, ptr noundef nonnull @_ZTT6Clouds) #23, !inline_history !198
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(484) %i.d, i64 noundef 504) #22, !inline_history !199
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6Clouds19OnRegisterSceneNodeEv(ptr noundef nonnull align 8 dereferenceable(484) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !56, !range !123, !noundef !135
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN5scene10ISceneNode19OnRegisterSceneNodeEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !52   ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull %0, i32 noundef 16) ; 0 uses
  %.pre = load i8, ptr %i.a, align 8, !tbaa !56, !range !123
  %i.j = trunc nuw i8 %.pre to i1
  br i1 %i.j, label %bb.c, label %_ZN5scene10ISceneNode19OnRegisterSceneNodeEv.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %.sroa.01.04.i = load ptr, ptr %i.k, align 8, !tbaa !29 ; 2 uses
  %.not5.i = icmp eq ptr %.sroa.01.04.i, %i.k
  br i1 %.not5.i, label %_ZN5scene10ISceneNode19OnRegisterSceneNodeEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.sroa.01.06.i = phi ptr [ %.sroa.01.0.i, %.lr.ph.i ], [ %.sroa.01.04.i, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !137  ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(218) %i.m), !inline_history !200
  %.sroa.01.0.i = load ptr, ptr %.sroa.01.06.i, align 8, !tbaa !29 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.01.0.i, %i.k
  br i1 %.not.i, label %_ZN5scene10ISceneNode19OnRegisterSceneNodeEv.exit, label %.lr.ph.i, !llvm.loop !4

_ZN5scene10ISceneNode19OnRegisterSceneNodeEv.exit: ; preds = %.lr.ph.i, %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5scene10ISceneNode19OnRegisterSceneNodeEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i8, ptr %i.a, align 8, !tbaa !56, !range !123, !noundef !135
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %.sroa.01.04 = load ptr, ptr %i.d, align 8, !tbaa !29 ; 2 uses
  %.not5 = icmp eq ptr %.sroa.01.04, %i.d
  br i1 %.not5, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.sroa.01.06 = phi ptr [ %.sroa.01.0, %.lr.ph ], [ %.sroa.01.04, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.01.06, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !137  ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(218) %i.f)
  %.sroa.01.0 = load ptr, ptr %.sroa.01.06, align 8, !tbaa !29 ; 2 uses
  %.not = icmp eq ptr %.sroa.01.0, %i.d
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !4

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN6Clouds10updateMeshEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(484) %0) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.d = load <4 x float>, ptr %i.c, align 8
  %i.e = shufflevector <4 x float> %i.d, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.g = load float, ptr %i.f, align 8, !tbaa !217
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.i = load <2 x float>, ptr %i.h, align 8, !tbaa !24 ; 4 uses
  %i.j = insertelement <2 x float> %i.e, float %i.g, i64 1
  %i.k = fsub nsz <2 x float> %i.j, %i.i
  %i.l = fdiv nsz <2 x float> %i.k, splat (float 6.400000e+02)
  %i.m = tail call nsz <2 x float> @llvm.floor.v2f32(<2 x float> %i.l)
  %i.n = fptosi <2 x float> %i.m to <2 x i16>     ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 372 ; 2 uses
  %i.p = load i8, ptr %i.o, align 4, !tbaa !125, !range !123, !noundef !135
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.s = load float, ptr %i.r, align 8, !tbaa !138
  %i.t = extractelement <2 x float> %i.i, i64 0
  %i.u = fsub nsz float %i.s, %i.t                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.w = load float, ptr %i.v, align 4, !tbaa !139
  %i.x = extractelement <2 x float> %i.i, i64 1
  %i.y = fsub nsz float %i.w, %i.x                ; 2 uses
  %i.z = fmul nsz float %i.y, %i.y
  %i.aa = tail call nsz float @llvm.fmuladd.f32(float %i.u, float %i.u, float %i.z)
  %i.ab = tail call nsz noundef float @llvm.sqrt.f32(float %i.aa)
  %i.ac = fcmp nsz ult float %i.ab, 5.000000e+01
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ae = load <2 x i16>, ptr %i.ad, align 8
  %i.af = icmp ne <2 x i16> %i.ae, %i.n           ; 2 uses
  %i.ag = extractelement <2 x i1> %i.af, i64 0
  %i.ah = extractelement <2 x i1> %i.af, i64 1
  %.not3.i = select i1 %i.ag, i1 true, i1 %i.ah
  br i1 %.not3.i, label %bb.d, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.aj = load i64, ptr %i.h, align 8             ; 2 uses
  store i64 %i.aj, ptr %i.ai, align 8, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.al = extractelement <2 x i16> %i.n, i64 1
  %i.am = extractelement <2 x i16> %i.n, i64 0
  store <2 x i16> %i.n, ptr %i.ak, align 8, !tbaa !115
  store i8 1, ptr %i.o, align 4, !tbaa !125
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 435 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !122, !range !123, !noundef !135
  %i.ap = trunc nuw i8 %i.ao to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 468 ; 2 uses
  %i.ar = load float, ptr %i.aq, align 4
  %i.as = fcmp nsz oge float %i.ar, f0x3C23D70A
  %i.at = select i1 %i.ap, i1 %i.as, i1 false
  %i.au = select i1 %i.at, i32 6, i32 1           ; 2 uses
  %i.av = trunc i64 %i.aj to i32
  %i.aw = bitcast i32 %i.av to float
  %i.ax = sitofp <2 x i16> %i.n to <2 x float>
  %i.ay = fmul nnan nsz <2 x float> %i.ax, splat (float 6.400000e+02)
  %i.az = insertelement <2 x float> %i.i, float %i.aw, i64 0
  %i.ba = fadd nsz <2 x float> %i.ay, %i.az       ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 464
  %.sroa.0216.0.copyload = load i32, ptr %i.bb, align 8, !tbaa !109 ; 3 uses
  %i.bc = lshr i32 %.sroa.0216.0.copyload, 16
  %i.bd = and i32 %i.bc, 255
  %i.be = uitofp nsz nneg i32 %i.bd to float
  %i.bf = lshr i32 %.sroa.0216.0.copyload, 8
  %i.bg = and i32 %i.bf, 255
  %i.bh = uitofp nsz nneg i32 %i.bg to float
  %2 = and i32 %.sroa.0216.0.copyload, 255
  %3 = uitofp nsz nneg i32 %2 to float
  %4 = fmul nnan nsz float %3, f0x3B808081        ; 2 uses
  %5 = fmul nnan nsz float %i.be, f0x3B808081     ; 2 uses
  %i.bi = fmul nnan nsz float %i.bh, f0x3B808081  ; 2 uses
  %i.bj = insertelement <2 x float> poison, float %5, i64 0
  %i.bk = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bl = insertelement <2 x float> poison, float %4, i64 0
  %i.bm = insertelement <3 x float> poison, float %5, i64 0
  %i.bn = shufflevector <2 x float> %i.bj, <2 x float> poison, <3 x i32> <i32 0, i32 0, i32 poison>
  %i.bo = tail call nnan nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bn, <3 x float> <float 2.500000e-01, float 5.000000e-01, float undef>, <3 x float> <float 7.500000e-01, float 5.000000e-01, float undef>)
  %i.bp = shufflevector <3 x float> %i.bm, <3 x float> %i.bo, <3 x i32> <i32 0, i32 3, i32 4>
  %i.bq = fmul nnan nsz <3 x float> %i.bp, splat (float 2.550000e+02)
  %i.br = fadd nsz <3 x float> %i.bq, splat (float 5.000000e-01)
  %i.bs = tail call nsz <3 x float> @llvm.floor.v3f32(<3 x float> %i.br)
  %i.bt = fptosi <3 x float> %i.bs to <3 x i32>
  %i.bu = insertelement <3 x float> poison, float %i.bi, i64 0
  %i.bv = shufflevector <2 x float> %i.bk, <2 x float> poison, <3 x i32> <i32 0, i32 0, i32 poison>
  %i.bw = tail call nnan nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bv, <3 x float> <float 2.500000e-01, float 5.000000e-01, float undef>, <3 x float> <float 7.500000e-01, float 5.000000e-01, float undef>)
  %i.bx = shufflevector <3 x float> %i.bu, <3 x float> %i.bw, <3 x i32> <i32 0, i32 3, i32 4>
  %i.by = fmul nnan nsz <3 x float> %i.bx, splat (float 2.550000e+02)
  %i.bz = fadd nsz <3 x float> %i.by, splat (float 5.000000e-01)
  %i.ca = tail call nsz <3 x float> @llvm.floor.v3f32(<3 x float> %i.bz)
  %i.cb = fptosi <3 x float> %i.ca to <3 x i32>
  %i.cc = insertelement <3 x float> poison, float %4, i64 0
  %i.cd = shufflevector <2 x float> %i.bl, <2 x float> poison, <3 x i32> <i32 0, i32 0, i32 poison>
  %i.ce = tail call nnan nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.cd, <3 x float> <float 2.500000e-01, float 5.000000e-01, float undef>, <3 x float> <float 7.500000e-01, float 5.000000e-01, float undef>)
  %i.cf = shufflevector <3 x float> %i.cc, <3 x float> %i.ce, <3 x i32> <i32 0, i32 3, i32 4>
  %i.cg = fmul nnan nsz <3 x float> %i.cf, splat (float 2.550000e+02)
  %i.ch = fadd nsz <3 x float> %i.cg, splat (float 5.000000e-01)
  %i.ci = tail call nsz <3 x float> @llvm.floor.v3f32(<3 x float> %i.ch)
  %i.cj = fptosi <3 x float> %i.ci to <3 x i32>
  %i.ck = shl <3 x i32> %i.bt, splat (i32 16)
  %i.cl = shl <3 x i32> %i.cb, splat (i32 8)
  %i.cm = and <3 x i32> %i.cl, splat (i32 65280)
  %i.cn = or disjoint <3 x i32> %i.cm, %i.ck
  %i.co = and <3 x i32> %i.cj, splat (i32 255)
  %i.cp = or disjoint <3 x i32> %i.cn, %i.co
  %i.cq = or <3 x i32> %i.cp, splat (i32 -16777216) ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 9 uses
  %i.cs = load i16, ptr %i.cr, align 8, !tbaa !124 ; 2 uses
  %i.ct = zext i16 %i.cs to i32                   ; 3 uses
  %i.cu = shl nuw nsw i32 %i.ct, 1
  %i.cv = mul nuw nsw i32 %i.cu, %i.ct            ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.cv, 0
  br i1 %.not.i.i.i, label %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cw = shl nuw nsw i32 %i.cv, 1
  %narrow = add nuw i32 %i.cw, 63
  %i.cx = zext i32 %narrow to i64                 ; 2 uses
  %i.cy = lshr i64 %i.cx, 3
  %i.cz = and i64 %i.cy, 536870904
  %i.da = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cz) #25 ; 3 uses
  %i.db = lshr i64 %i.cx, 6                       ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.db
  %.idx.i.i = shl nuw nsw i64 %i.db, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.da, i8 0, i64 %.idx.i.i, i1 false)
  %.pre = load i16, ptr %i.cr, align 8, !tbaa !124 ; 2 uses
  %.pre760 = zext i16 %.pre to i32
  br label %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit

_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit:               ; preds = %bb.e, %bb.d
  %.pre-phi = phi i32 [ %.pre760, %bb.e ], [ %i.ct, %bb.d ] ; 3 uses
  %i.dd = phi i16 [ %.pre, %bb.e ], [ %i.cs, %bb.d ] ; 2 uses
  %.sroa.20512.0 = phi ptr [ %i.dc, %bb.e ], [ null, %bb.d ] ; 4 uses
  %.sroa.0502.0 = phi ptr [ %i.da, %bb.e ], [ null, %bb.d ] ; 10 uses
  %i.de = sub i16 0, %i.dd                        ; 2 uses
  %i.df = sext i16 %i.de to i32                   ; 2 uses
  %i.dg = icmp sgt i32 %.pre-phi, %i.df
  br i1 %i.dg, label %.lr.ph638, label %._crit_edge639

.lr.ph638:                                        ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit
  %i.dh = sext i16 %i.am to i32
  %i.di = sext i16 %i.al to i32
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 452
  br label %bb.g

._crit_edge639:                                   ; preds = %._crit_edge, %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit
  %.lcssa634 = phi i32 [ %.pre-phi, %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit ], [ %.pre-phi761, %._crit_edge ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !116 ; 18 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 136
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !132 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 32 ; 12 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 144
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !133 ; 5 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 32 ; 17 uses
  %i.dt = shl nuw nsw i32 %i.au, 4
  %i.du = mul nuw nsw i32 %i.dt, %.lcssa634
  %i.dv = mul i32 %i.du, %.lcssa634               ; 2 uses
  %i.dw = zext i32 %i.dv to i64                   ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.do, i64 48 ; 15 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !142
  %i.dz = load ptr, ptr %i.dp, align 8, !tbaa !143 ; 2 uses
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = ptrtoint ptr %i.dz to i64               ; 2 uses
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = sdiv exact i64 %i.ec, 40
  %i.ee = icmp ult i64 %i.ed, %i.dw
  br i1 %i.ee, label %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE11_M_allocateEm.exit.i: ; preds = %._crit_edge639
  %i.ef = getelementptr inbounds nuw i8, ptr %i.do, i64 40 ; 3 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !144
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = sub i64 %i.eh, %i.eb
  %i.ej = mul nuw nsw i64 %i.dw, 40
  %i.ek = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ej) #25
          to label %.noexc unwind label %bb.o     ; 5 uses

.noexc:                                           ; preds = %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE11_M_allocateEm.exit.i
  %i.el = load ptr, ptr %i.dp, align 8, !tbaa !143 ; 5 uses
  %i.em = load ptr, ptr %i.ef, align 8, !tbaa !144 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.el, %i.em
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.eo, %.lr.ph.i.i.i.i ], [ %i.ek, %.noexc ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.en, %.lr.ph.i.i.i.i ], [ %i.el, %.noexc ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.012.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(40) %.0911.i.i.i.i, i64 40, i1 false), !tbaa.struct !145, !alias.scope !218
  %i.en = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %.not.i.i.i.i341 = icmp eq ptr %i.en, %i.em
  br i1 %.not.i.i.i.i341, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !204

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %.noexc
  %.not.i8.i = icmp eq ptr %i.el, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.ep = load ptr, ptr %i.dx, align 8, !tbaa !142
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = ptrtoint ptr %i.el to i64
  %i.es = sub i64 %i.eq, %i.er
  tail call void @_ZdlPvm(ptr noundef nonnull %i.el, i64 noundef %i.es) #22
  br label %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.ek, ptr %i.dp, align 8, !tbaa !143
  %i.et = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ei
  store ptr %i.et, ptr %i.ef, align 8, !tbaa !144
  %i.eu = getelementptr inbounds nuw [40 x i8], ptr %i.ek, i64 %i.dw
  store ptr %i.eu, ptr %i.dx, align 8, !tbaa !142
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE7reserveEm.exit

bb.g:                                             ; preds = %.lr.ph638, %._crit_edge
  %i.ev = phi i16 [ %i.dd, %.lr.ph638 ], [ %i.fj, %._crit_edge ] ; 3 uses
  %i.ew = phi i32 [ %.pre-phi, %.lr.ph638 ], [ %.pre-phi761, %._crit_edge ] ; 3 uses
  %i.ex = phi i32 [ %i.df, %.lr.ph638 ], [ %i.fl, %._crit_edge ] ; 2 uses
  %.0256637 = phi i16 [ %i.de, %.lr.ph638 ], [ %i.fk, %._crit_edge ]
  %i.ey = add nsw i32 %i.ew, %i.ex
  %i.ez = shl nuw nsw i32 %i.ew, 1
  %i.fa = mul i32 %i.ez, %i.ey
  %i.fb = add nsw i32 %i.fa, %i.ew
  %i.fc = sub i16 0, %i.ev                        ; 2 uses
  %i.fd = sext i16 %i.fc to i32                   ; 2 uses
  %i.fe = zext i16 %i.ev to i32                   ; 2 uses
  %i.ff = icmp slt i32 %i.fd, %i.fe
  br i1 %i.ff, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.fg = add nsw i32 %i.ex, %i.di
  %i.fh = sitofp nsz i32 %i.fg to float
  %i.fi = fmul nnan nsz float %i.fh, 3.200000e-01
  br label %bb.h

._crit_edge:                                      ; preds = %_ZNSt14_Bit_referenceaSEb.exit, %bb.g
  %.pre-phi761 = phi i32 [ %i.fe, %bb.g ], [ %i.gl, %_ZNSt14_Bit_referenceaSEb.exit ] ; 3 uses
  %i.fj = phi i16 [ %i.ev, %bb.g ], [ %i.gk, %_ZNSt14_Bit_referenceaSEb.exit ]
  %i.fk = add i16 %.0256637, 1                    ; 2 uses
  %i.fl = sext i16 %i.fk to i32                   ; 2 uses
  %i.fm = icmp sgt i32 %.pre-phi761, %i.fl
  br i1 %i.fm, label %bb.g, label %._crit_edge639, !llvm.loop !205

bb.h:                                             ; preds = %.lr.ph, %_ZNSt14_Bit_referenceaSEb.exit
  %i.fn = phi i32 [ %i.fd, %.lr.ph ], [ %i.gj, %_ZNSt14_Bit_referenceaSEb.exit ] ; 2 uses
  %.0257636 = phi i16 [ %i.fc, %.lr.ph ], [ %i.gi, %_ZNSt14_Bit_referenceaSEb.exit ]
  %i.fo = add nsw i32 %i.fn, %i.dh
  %i.fp = sitofp nsz i32 %i.fo to float
  %i.fq = fmul nnan nsz float %i.fp, 3.200000e-01
  %i.fr = load i32, ptr %i.dj, align 4, !tbaa !83
  %i.fs = invoke noundef float @_Z15noise2d_fractalffiifb(float noundef %i.fq, float noundef %i.fi, i32 noundef %i.fr, i32 noundef 3, float noundef 5.000000e-01, i1 noundef zeroext true)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ft = fdiv nsz float %i.fs, 1.750000e+00
  %i.fu = tail call nsz float @llvm.fmuladd.f32(float %i.ft, float 5.000000e-01, float 5.000000e-01)
  %i.fv = load float, ptr %i.dk, align 4, !tbaa !146
  %i.fw = fcmp nsz olt float %i.fu, %i.fv
  %i.fx = add i32 %i.fb, %i.fn                    ; 2 uses
  %i.fy = lshr i32 %i.fx, 6
  %.zext = zext nneg i32 %i.fy to i64
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0502.0, i64 %.zext ; 3 uses
  %i.ga = and i32 %i.fx, 63
  %i.gb = zext nneg i32 %i.ga to i64
  %i.gc = shl nuw i64 1, %i.gb                    ; 2 uses
  br i1 %i.fw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.gd = load i64, ptr %i.fz, align 8, !tbaa !112
  %i.ge = or i64 %i.gd, %i.gc
  br label %_ZNSt14_Bit_referenceaSEb.exit

bb.k:                                             ; preds = %bb.i
  %i.gf = xor i64 %i.gc, -1
  %i.gg = load i64, ptr %i.fz, align 8, !tbaa !112
  %i.gh = and i64 %i.gg, %i.gf
  br label %_ZNSt14_Bit_referenceaSEb.exit

_ZNSt14_Bit_referenceaSEb.exit:                   ; preds = %bb.j, %bb.k
  %storemerge = phi i64 [ %i.gh, %bb.k ], [ %i.ge, %bb.j ]
  store i64 %storemerge, ptr %i.fz, align 8, !tbaa !112
  %i.gi = add i16 %.0257636, 1                    ; 2 uses
  %i.gj = sext i16 %i.gi to i32                   ; 2 uses
  %i.gk = load i16, ptr %i.cr, align 8, !tbaa !124 ; 2 uses
  %i.gl = zext i16 %i.gk to i32                   ; 2 uses
  %i.gm = icmp slt i32 %i.gj, %i.gl
  br i1 %i.gm, label %bb.h, label %._crit_edge, !llvm.loop !206

bb.l:                                             ; preds = %bb.h
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %bb.da
end_hunk_0
