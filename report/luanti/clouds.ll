Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/clouds?download=true
inline.NumInlined: 1459
inline.NumDeleted: 513
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@__cxa_begin_catch
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
  %i.bi = and i32 %.sroa.0216.0.copyload, 255
  %i.bj = uitofp nsz nneg i32 %i.bi to float
  %i.bk = fmul nnan nsz float %i.bj, f0x3B808081  ; 2 uses
  %i.bl = fmul nnan nsz float %i.be, f0x3B808081  ; 2 uses
  %i.bm = fmul nnan nsz float %i.bh, f0x3B808081  ; 2 uses
  %i.bn = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.bo = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.bp = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.bq = insertelement <3 x float> poison, float %i.bl, i64 0
  %i.br = shufflevector <2 x float> %i.bn, <2 x float> poison, <3 x i32> <i32 0, i32 0, i32 poison>
  %i.bs = tail call nnan nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.br, <3 x float> <float 2.500000e-01, float 5.000000e-01, float poison>, <3 x float> <float 7.500000e-01, float 5.000000e-01, float poison>)
  %i.bt = shufflevector <3 x float> %i.bq, <3 x float> %i.bs, <3 x i32> <i32 0, i32 3, i32 4>
  %i.bu = fmul nnan nsz <3 x float> %i.bt, splat (float 2.550000e+02)
  %i.bv = fadd nsz <3 x float> %i.bu, splat (float 5.000000e-01)
  %i.bw = tail call nsz <3 x float> @llvm.floor.v3f32(<3 x float> %i.bv)
  %i.bx = fptosi <3 x float> %i.bw to <3 x i32>
  %i.by = insertelement <3 x float> poison, float %i.bm, i64 0
  %i.bz = shufflevector <2 x float> %i.bo, <2 x float> poison, <3 x i32> <i32 0, i32 0, i32 poison>
  %i.ca = tail call nnan nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bz, <3 x float> <float 2.500000e-01, float 5.000000e-01, float poison>, <3 x float> <float 7.500000e-01, float 5.000000e-01, float poison>)
  %i.cb = shufflevector <3 x float> %i.by, <3 x float> %i.ca, <3 x i32> <i32 0, i32 3, i32 4>
  %i.cc = fmul nnan nsz <3 x float> %i.cb, splat (float 2.550000e+02)
  %i.cd = fadd nsz <3 x float> %i.cc, splat (float 5.000000e-01)
  %i.ce = tail call nsz <3 x float> @llvm.floor.v3f32(<3 x float> %i.cd)
  %i.cf = fptosi <3 x float> %i.ce to <3 x i32>
  %i.cg = insertelement <3 x float> poison, float %i.bk, i64 0
  %i.ch = shufflevector <2 x float> %i.bp, <2 x float> poison, <3 x i32> <i32 0, i32 0, i32 poison>
  %i.ci = tail call nnan nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ch, <3 x float> <float 2.500000e-01, float 5.000000e-01, float poison>, <3 x float> <float 7.500000e-01, float 5.000000e-01, float poison>)
  %i.cj = shufflevector <3 x float> %i.cg, <3 x float> %i.ci, <3 x i32> <i32 0, i32 3, i32 4>
  %i.ck = fmul nnan nsz <3 x float> %i.cj, splat (float 2.550000e+02)
  %i.cl = fadd nsz <3 x float> %i.ck, splat (float 5.000000e-01)
  %i.cm = tail call nsz <3 x float> @llvm.floor.v3f32(<3 x float> %i.cl)
  %i.cn = fptosi <3 x float> %i.cm to <3 x i32>
  %i.co = shl <3 x i32> %i.bx, splat (i32 16)
  %i.cp = shl <3 x i32> %i.cf, splat (i32 8)
  %i.cq = and <3 x i32> %i.cp, splat (i32 65280)
  %i.cr = or disjoint <3 x i32> %i.cq, %i.co
  %i.cs = and <3 x i32> %i.cn, splat (i32 255)
  %i.ct = or disjoint <3 x i32> %i.cr, %i.cs
  %i.cu = or <3 x i32> %i.ct, splat (i32 -16777216) ; 6 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 9 uses
  %i.cw = load i16, ptr %i.cv, align 8, !tbaa !124 ; 2 uses
  %i.cx = zext i16 %i.cw to i32                   ; 3 uses
  %i.cy = shl nuw nsw i32 %i.cx, 1
  %i.cz = mul nuw nsw i32 %i.cy, %i.cx            ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.cz, 0
  br i1 %.not.i.i.i, label %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.da = shl nuw nsw i32 %i.cz, 1
  %narrow = add nuw i32 %i.da, 63
  %i.db = zext i32 %narrow to i64                 ; 2 uses
  %i.dc = lshr i64 %i.db, 3
  %i.dd = and i64 %i.dc, 536870904
  %i.de = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dd) #25 ; 3 uses
  %i.df = lshr i64 %i.db, 6                       ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.df
  %.idx.i.i = shl nuw nsw i64 %i.df, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.de, i8 0, i64 %.idx.i.i, i1 false)
  %.pre = load i16, ptr %i.cv, align 8, !tbaa !124 ; 2 uses
  %.pre760 = zext i16 %.pre to i32
  br label %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit

_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit:               ; preds = %bb.e, %bb.d
  %.pre-phi = phi i32 [ %.pre760, %bb.e ], [ %i.cx, %bb.d ] ; 3 uses
  %i.dh = phi i16 [ %.pre, %bb.e ], [ %i.cw, %bb.d ] ; 2 uses
  %.sroa.20512.0 = phi ptr [ %i.dg, %bb.e ], [ null, %bb.d ] ; 4 uses
  %.sroa.0502.0 = phi ptr [ %i.de, %bb.e ], [ null, %bb.d ] ; 10 uses
  %i.di = sub i16 0, %i.dh                        ; 2 uses
  %i.dj = sext i16 %i.di to i32                   ; 2 uses
  %i.dk = icmp sgt i32 %.pre-phi, %i.dj
  br i1 %i.dk, label %.lr.ph638, label %._crit_edge639

.lr.ph638:                                        ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit
  %i.dl = sext i16 %i.am to i32
  %i.dm = sext i16 %i.al to i32
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 452
  br label %bb.g

._crit_edge639:                                   ; preds = %._crit_edge, %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit
  %.lcssa634 = phi i32 [ %.pre-phi, %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit ], [ %.pre-phi761, %._crit_edge ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !116 ; 18 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 136
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !132 ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 32 ; 12 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 144
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !133 ; 5 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 32 ; 17 uses
  %i.dx = shl nuw nsw i32 %i.au, 4
  %i.dy = mul nuw nsw i32 %i.dx, %.lcssa634
  %i.dz = mul i32 %i.dy, %.lcssa634               ; 2 uses
  %i.ea = zext i32 %i.dz to i64                   ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ds, i64 48 ; 15 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !142
  %i.ed = load ptr, ptr %i.dt, align 8, !tbaa !143 ; 2 uses
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = ptrtoint ptr %i.ed to i64               ; 2 uses
  %i.eg = sub i64 %i.ee, %i.ef
  %i.eh = sdiv exact i64 %i.eg, 40
  %i.ei = icmp ult i64 %i.eh, %i.ea
  br i1 %i.ei, label %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE11_M_allocateEm.exit.i: ; preds = %._crit_edge639
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ds, i64 40 ; 3 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !144
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = sub i64 %i.el, %i.ef
  %i.en = mul nuw nsw i64 %i.ea, 40
  %i.eo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.en) #25
          to label %.noexc unwind label %bb.o     ; 5 uses

.noexc:                                           ; preds = %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE11_M_allocateEm.exit.i
  %i.ep = load ptr, ptr %i.dt, align 8, !tbaa !143 ; 5 uses
  %i.eq = load ptr, ptr %i.ej, align 8, !tbaa !144 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ep, %i.eq
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.es, %.lr.ph.i.i.i.i ], [ %i.eo, %.noexc ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.er, %.lr.ph.i.i.i.i ], [ %i.ep, %.noexc ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.012.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(40) %.0911.i.i.i.i, i64 40, i1 false), !tbaa.struct !145, !alias.scope !218
  %i.er = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %.not.i.i.i.i341 = icmp eq ptr %i.er, %i.eq
  br i1 %.not.i.i.i.i341, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !204

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %.noexc
  %.not.i8.i = icmp eq ptr %i.ep, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.et = load ptr, ptr %i.eb, align 8, !tbaa !142
  %i.eu = ptrtoint ptr %i.et to i64
  %i.ev = ptrtoint ptr %i.ep to i64
  %i.ew = sub i64 %i.eu, %i.ev
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ep, i64 noundef %i.ew) #22
  br label %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.eo, ptr %i.dt, align 8, !tbaa !143
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.em
  store ptr %i.ex, ptr %i.ej, align 8, !tbaa !144
  %i.ey = getelementptr inbounds nuw [40 x i8], ptr %i.eo, i64 %i.ea
  store ptr %i.ey, ptr %i.eb, align 8, !tbaa !142
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE7reserveEm.exit

bb.g:                                             ; preds = %.lr.ph638, %._crit_edge
  %i.ez = phi i16 [ %i.dh, %.lr.ph638 ], [ %i.fn, %._crit_edge ] ; 3 uses
  %i.fa = phi i32 [ %.pre-phi, %.lr.ph638 ], [ %.pre-phi761, %._crit_edge ] ; 3 uses
  %i.fb = phi i32 [ %i.dj, %.lr.ph638 ], [ %i.fp, %._crit_edge ] ; 2 uses
  %.0256637 = phi i16 [ %i.di, %.lr.ph638 ], [ %i.fo, %._crit_edge ]
  %i.fc = add nsw i32 %i.fa, %i.fb
  %i.fd = shl nuw nsw i32 %i.fa, 1
  %i.fe = mul i32 %i.fd, %i.fc
  %i.ff = add nsw i32 %i.fe, %i.fa
  %i.fg = sub i16 0, %i.ez                        ; 2 uses
  %i.fh = sext i16 %i.fg to i32                   ; 2 uses
  %i.fi = zext i16 %i.ez to i32                   ; 2 uses
  %i.fj = icmp slt i32 %i.fh, %i.fi
  br i1 %i.fj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.fk = add nsw i32 %i.fb, %i.dm
  %i.fl = sitofp nsz i32 %i.fk to float
  %i.fm = fmul nnan nsz float %i.fl, 3.200000e-01
  br label %bb.h

._crit_edge:                                      ; preds = %_ZNSt14_Bit_referenceaSEb.exit, %bb.g
  %.pre-phi761 = phi i32 [ %i.fi, %bb.g ], [ %i.gp, %_ZNSt14_Bit_referenceaSEb.exit ] ; 3 uses
  %i.fn = phi i16 [ %i.ez, %bb.g ], [ %i.go, %_ZNSt14_Bit_referenceaSEb.exit ]
  %i.fo = add i16 %.0256637, 1                    ; 2 uses
  %i.fp = sext i16 %i.fo to i32                   ; 2 uses
  %i.fq = icmp sgt i32 %.pre-phi761, %i.fp
  br i1 %i.fq, label %bb.g, label %._crit_edge639, !llvm.loop !205

bb.h:                                             ; preds = %.lr.ph, %_ZNSt14_Bit_referenceaSEb.exit
  %i.fr = phi i32 [ %i.fh, %.lr.ph ], [ %i.gn, %_ZNSt14_Bit_referenceaSEb.exit ] ; 2 uses
  %.0257636 = phi i16 [ %i.fg, %.lr.ph ], [ %i.gm, %_ZNSt14_Bit_referenceaSEb.exit ]
  %i.fs = add nsw i32 %i.fr, %i.dl
  %i.ft = sitofp nsz i32 %i.fs to float
  %i.fu = fmul nnan nsz float %i.ft, 3.200000e-01
  %i.fv = load i32, ptr %i.dn, align 4, !tbaa !83
  %i.fw = invoke noundef float @_Z15noise2d_fractalffiifb(float noundef %i.fu, float noundef %i.fm, i32 noundef %i.fv, i32 noundef 3, float noundef 5.000000e-01, i1 noundef zeroext true)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.fx = fdiv nsz float %i.fw, 1.750000e+00
  %i.fy = tail call nsz float @llvm.fmuladd.f32(float %i.fx, float 5.000000e-01, float 5.000000e-01)
  %i.fz = load float, ptr %i.do, align 4, !tbaa !146
  %i.ga = fcmp nsz olt float %i.fy, %i.fz
  %i.gb = add i32 %i.ff, %i.fr                    ; 2 uses
  %i.gc = lshr i32 %i.gb, 6
  %.zext = zext nneg i32 %i.gc to i64
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0502.0, i64 %.zext ; 3 uses
  %i.ge = and i32 %i.gb, 63
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = shl nuw i64 1, %i.gf                    ; 2 uses
  br i1 %i.ga, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.gh = load i64, ptr %i.gd, align 8, !tbaa !112
  %i.gi = or i64 %i.gh, %i.gg
  br label %_ZNSt14_Bit_referenceaSEb.exit

bb.k:                                             ; preds = %bb.i
  %i.gj = xor i64 %i.gg, -1
  %i.gk = load i64, ptr %i.gd, align 8, !tbaa !112
  %i.gl = and i64 %i.gk, %i.gj
  br label %_ZNSt14_Bit_referenceaSEb.exit

_ZNSt14_Bit_referenceaSEb.exit:                   ; preds = %bb.j, %bb.k
  %storemerge = phi i64 [ %i.gl, %bb.k ], [ %i.gi, %bb.j ]
  store i64 %storemerge, ptr %i.gd, align 8, !tbaa !112
  %i.gm = add i16 %.0257636, 1                    ; 2 uses
  %i.gn = sext i16 %i.gm to i32                   ; 2 uses
  %i.go = load i16, ptr %i.cv, align 8, !tbaa !124 ; 2 uses
  %i.gp = zext i16 %i.go to i32                   ; 2 uses
  %i.gq = icmp slt i32 %i.gn, %i.gp
  br i1 %i.gq, label %bb.h, label %._crit_edge, !llvm.loop !206

bb.l:                                             ; preds = %bb.h
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE13_M_deallocateEPS1_m.exit.i, %._crit_edge639
end_hunk_0
