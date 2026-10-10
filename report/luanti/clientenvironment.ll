Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/clientenvironment?download=true
inline.NumInlined: 1021
inline.NumDeleted: 614
begin_hunk_0_@_ZN11StreamProxylsI16ActiveObjectTypeEERS_OT_:bb.a
bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = phi ptr [ %.pre, %bb.c ], [ %i.a, %bb.b ]
  %i.j = load i32, ptr %1, align 4, !tbaa !210
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i32 noundef %i.j) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local i64 @_ZN17ClientEnvironment17getClientEnvEventEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(440) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !211
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !211  ; 4 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z14fatal_error_fnPKcS0_jS0_(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 425, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN17ClientEnvironment17getClientEnvEventEv) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load i64, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !444
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -8
  %.not.i.i = icmp eq ptr %i.d, %i.h
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %_ZNSt5queueI14ClientEnvEventSt5dequeIS0_SaIS0_EEE3popEv.exit

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !445
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef 512) #30
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !92
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr %i.n, ptr %i.l, align 8, !tbaa !212
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !94   ; 3 uses
  store ptr %i.o, ptr %i.j, align 8, !tbaa !213
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 512
  store ptr %i.p, ptr %i.f, align 8, !tbaa !214
  br label %_ZNSt5queueI14ClientEnvEventSt5dequeIS0_SaIS0_EEE3popEv.exit

_ZNSt5queueI14ClientEnvEventSt5dequeIS0_SaIS0_EEE3popEv.exit: ; preds = %bb.d, %bb.e
  %storemerge.i.i = phi ptr [ %i.i, %bb.d ], [ %i.o, %bb.e ]
  store ptr %storemerge.i.i, ptr %i.b, align 8, !tbaa !215
  ret i64 %.sroa.0.0.copyload
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17ClientEnvironment24getSelectedActiveObjectsERKN4core6line3dIfEERSt6vectorI12PointedThingSaIS6_EERKSt8optionalI14PointabilitiesE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef nonnull align 4 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(232) %3) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.466", align 8   ; 10 uses
  %5 = alloca %"class.core::aabbox3d", align 4    ; 7 uses
  %6 = alloca %"class.core::vector3d.196", align 8 ; 11 uses
  %7 = alloca %"class.core::vector3d.196", align 8 ; 10 uses
  %8 = alloca %"class.core::vector3d.196", align 8 ; 9 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = alloca i16, align 2                      ; 5 uses
  %i.c = alloca float, align 4                    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @_ZN6client15ActiveObjectMgr26getActiveSelectableObjectsERKN4core6line3dIfEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.466") align 8 %4, ptr noundef nonnull align 8 dereferenceable(120) %i.d, ptr noundef nonnull align 4 dereferenceable(24) %1)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load <2 x float>, ptr %i.e, align 4, !tbaa !134
  %i.h = load <2 x float>, ptr %1, align 4, !tbaa !134
  %i.i = fsub nsz <2 x float> %i.g, %i.h          ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load float, ptr %i.j, align 4, !tbaa !446
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.m = load float, ptr %i.l, align 4, !tbaa !446
  %i.n = fsub nsz float %i.k, %i.m                ; 2 uses
  %i.o = load ptr, ptr %4, align 8, !tbaa !448    ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !448  ; 2 uses
  %.not119122 = icmp eq ptr %i.o, %i.q
  br i1 %.not119122, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 224
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.ao
  %.pre = load ptr, ptr %4, align 8, !tbaa !450
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.x = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.o, %bb.a ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI26DistanceSortedActiveObjectSaIS0_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !451
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #30
  br label %_ZNSt6vectorI26DistanceSortedActiveObjectSaIS0_EED2Ev.exit

_ZNSt6vectorI26DistanceSortedActiveObjectSaIS0_EED2Ev.exit: ; preds = %._crit_edge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void

bb.c:                                             ; preds = %.lr.ph, %bb.ao
  %.sroa.0116.0123 = phi ptr [ %i.o, %.lr.ph ], [ %i.fy, %bb.ao ] ; 2 uses
  %i.ad = load ptr, ptr %.sroa.0116.0123, align 8, !tbaa !453 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = invoke noundef zeroext i1 %i.ag(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull %5)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %i.ah, label %bb.f, label %bb.ao

bb.e:                                             ; preds = %bb.c
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store <2 x float> zeroinitializer, ptr %6, align 8, !tbaa !134
  store float 0.000000e+00, ptr %i.r, align 8, !tbaa !446
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  store <2 x float> zeroinitializer, ptr %7, align 8, !tbaa !134
  store float 0.000000e+00, ptr %i.s, align 8, !tbaa !446
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  store <2 x float> zeroinitializer, ptr %8, align 8, !tbaa !134
  store float 0.000000e+00, ptr %i.t, align 8, !tbaa !446
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 120
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = invoke { <2 x float>, float } %i.al(ptr noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %bb.g unwind label %bb.h       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %.fca.0.extract43 = extractvalue { <2 x float>, float } %i.am, 0
  %.fca.1.extract44 = extractvalue { <2 x float>, float } %i.am, 1
  %i.an = load <2 x float>, ptr %1, align 4, !tbaa !134
  %i.ao = fsub nsz <2 x float> %i.an, %.fca.0.extract43 ; 2 uses
  %i.ap = load float, ptr %i.l, align 4, !tbaa !446
  %i.aq = fsub nsz float %i.ap, %.fca.1.extract44 ; 2 uses
  %i.ar = call ptr @__dynamic_cast(ptr nonnull %i.ad, ptr nonnull @_ZTI18ClientActiveObject, ptr nonnull @_ZTI10GenericCAO, i64 0) #28 ; 11 uses
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %bb.t, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.i:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 412
  %i.au = load i8, ptr %i.at, align 4, !tbaa !472, !range !132, !noundef !133
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.j, label %bb.t

bb.j:                                             ; preds = %bb.i
  %i.aw = load ptr, ptr %i.ar, align 8, !tbaa !16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 136
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = invoke noundef ptr %i.ay(ptr noundef nonnull align 8 dereferenceable(1076) %i.ar)
          to label %bb.k unwind label %bb.r       ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 256
  %i.bc = load ptr, ptr %i.bb, align 8
  invoke void %i.bc(ptr noundef nonnull align 8 dereferenceable(218) %i.az)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.bd = load ptr, ptr %i.ad, align 8, !tbaa !16
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 136
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = invoke noundef ptr %i.bf(ptr noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %bb.m unwind label %bb.s       ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 80
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = invoke noundef nonnull align 4 dereferenceable(64) ptr %i.bj(ptr noundef nonnull align 8 dereferenceable(218) %i.bg)
          to label %bb.n unwind label %bb.s       ; 8 uses

bb.n:                                             ; preds = %bb.m
  %9 = load float, ptr %i.bk, align 4, !tbaa !134 ; 3 uses
  %10 = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %11 = load float, ptr %10, align 4, !tbaa !134  ; 3 uses
  %12 = fmul nsz float %11, %11
  %i.bl = call nsz float @llvm.fmuladd.f32(float %9, float %9, float %12)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !134 ; 3 uses
  %i.bo = call nsz float @llvm.fmuladd.f32(float %i.bn, float %i.bn, float %i.bl)
  %i.bp = call nsz noundef float @llvm.sqrt.f32(float %i.bo) ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.br = load <2 x float>, ptr %i.bq, align 4, !tbaa !134 ; 3 uses
  %i.bs = call nsz float @llvm.fabs.f32(float %i.bp)
  %i.bt = fcmp nsz ole float %i.bs, f0x358637BD
  %i.bu = fpext nsz float %i.bp to double
  %i.bv = fdiv nsz double 1.000000e+00, %i.bu
  %i.bw = select i1 %i.bt, double f0x37F0000010000010, double %i.bv ; 3 uses
  %i.bx = fpext nsz float %i.bn to double
  %i.by = fmul nsz double %i.bw, %i.bx            ; 2 uses
  %i.bz = fcmp nsz olt double %i.by, -1.000000e+00
  %i.ca = select i1 %i.bz, double -1.000000e+00, double %i.by ; 2 uses
  %i.cb = fcmp nsz olt double %i.ca, 1.000000e+00
  %i.cc = select i1 %i.cb, double %i.ca, double 1.000000e+00 ; 2 uses
  %i.cd = call nsz noundef double @llvm.fabs.f64(double %i.cc)
  %i.ce = fadd nsz double %i.cd, -1.000000e+00
  %i.cf = call nsz noundef double @llvm.fabs.f64(double %i.ce)
  %i.cg = fcmp nsz ugt double %i.cf, 1.000000e-08
  br i1 %i.cg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !134
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.cl = load <4 x float>, ptr %i.ck, align 4
  %i.cm = shufflevector <4 x float> %i.cl, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.cn = load <2 x float>, ptr %i.cj, align 4, !tbaa !134 ; 2 uses
  %i.co = shufflevector <2 x float> %i.br, <2 x float> %i.cn, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.cp = fmul nsz <2 x float> %i.co, %i.co
  %i.cq = shufflevector <2 x float> %i.br, <2 x float> %i.cn, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.cr = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cq, <2 x float> %i.cq, <2 x float> %i.cp)
  %i.cs = insertelement <2 x float> %i.cm, float %i.ci, i64 1 ; 3 uses
  %i.ct = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cs, <2 x float> %i.cs, <2 x float> %i.cr)
  %i.cu = call nsz <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.ct) ; 2 uses
  %i.cv = call nsz <2 x float> @llvm.fabs.v2f32(<2 x float> %i.cu)
  %i.cw = fcmp nsz ole <2 x float> %i.cv, splat (float f0x358637BD)
  %i.cx = fpext <2 x float> %i.cu to <2 x double>
  %i.cy = fdiv nsz <2 x double> splat (double 1.000000e+00), %i.cx
  %i.cz = select <2 x i1> %i.cw, <2 x double> splat (double f0x37F0000010000010), <2 x double> %i.cy
  %i.da = fpext <2 x float> %i.cs to <2 x double>
  %i.db = fmul nsz <2 x double> %i.cz, %i.da      ; 2 uses
  %i.dc = extractelement <2 x double> %i.db, i64 0
  %i.dd = extractelement <2 x double> %i.db, i64 1
  %i.de = call nsz double @llvm.atan2.f64(double %i.dc, double %i.dd)
  %13 = fpext nsz float %9 to double
  %14 = fmul nsz double %i.bw, %13
  %15 = fpext nsz float %11 to double
  %16 = fmul nsz double %i.bw, %15
  %i.df = call nsz double @llvm.atan2.f64(double %16, double %14)
  %i.dg = fptrunc nsz double %i.de to float
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bk, i64 20
  %i.di = load float, ptr %i.dh, align 4, !tbaa !134
  %i.dj = fpext nsz float %i.di to double
  %i.dk = extractelement <2 x float> %i.br, i64 0
  %i.dl = fneg nsz float %i.dk
  %i.dm = fpext nsz float %i.dl to double
  %i.dn = call nsz double @llvm.atan2.f64(double %i.dm, double %i.dj)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.025.i.i.i = phi float [ 0.000000e+00, %bb.p ], [ %i.dg, %bb.o ]
  %.0.i.i.i = phi nsz double [ %i.dn, %bb.p ], [ %i.df, %bb.o ]
  %i.do = call nsz double @llvm.asin.f64(double %i.cc)
  %i.dp = fptrunc nsz double %i.do to float
  %i.dq = fneg nsz float %i.dp
  %i.dr = fptrunc nsz double %.0.i.i.i to float
  %.sroa.032.0.vec.insert.i.i.i = insertelement <2 x float> poison, float %.025.i.i.i, i64 0
  %.sroa.032.4.vec.insert.i.i.i = insertelement <2 x float> %.sroa.032.0.vec.insert.i.i.i, float %i.dq, i64 1
  %i.ds = invoke noundef zeroext i1 @_Z16boxLineCollisionRKN4core8aabbox3dIfEENS_8vector3dIfEES5_S5_PS5_S6_S6_(ptr noundef nonnull align 4 dereferenceable(24) %5, <2 x float> %.sroa.032.4.vec.insert.i.i.i, float %i.dr, <2 x float> %i.ao, float %i.aq, <2 x float> %i.i, float %i.n, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8)
          to label %bb.u unwind label %bb.s

bb.r:                                             ; preds = %bb.t, %bb.k, %bb.j
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.s:                                             ; preds = %bb.q, %bb.m, %bb.l
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.t:                                             ; preds = %bb.i, %bb.g
  %i.dv = invoke noundef zeroext i1 @_Z16boxLineCollisionRKN4core8aabbox3dIfEENS_8vector3dIfEES5_PS5_S6_(ptr noundef nonnull align 4 dereferenceable(24) %5, <2 x float> %i.ao, float %i.aq, <2 x float> %i.i, float %i.n, ptr noundef nonnull %6, ptr noundef nonnull %7)
          to label %.split unwind label %bb.r

.split:                                           ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !473
  br i1 %i.dv, label %bb.v, label %bb.an

bb.u:                                             ; preds = %bb.q
  br i1 %i.ds, label %bb.v, label %bb.an

bb.v:                                             ; preds = %.split, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.dw = load i8, ptr %i.u, align 8, !tbaa !475, !range !132, !noundef !133
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %bb.w, label %bb.ad

bb.w:                                             ; preds = %bb.v
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  %i.dz = load i8, ptr %i.dy, align 8, !tbaa !499, !range !132, !noundef !133
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ar, i64 944
  %i.ec = invoke i16 @_ZNK14Pointabilities11matchPlayerERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_iEEE(ptr noundef nonnull align 8 dereferenceable(224) %3, ptr noundef nonnull align 8 dereferenceable(56) %i.eb)
          to label %bb.y unwind label %bb.z       ; 2 uses

bb.y:                                             ; preds = %bb.x
  %.sroa.0103.0.extract.trunc = trunc i16 %i.ec to i8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ar, i64 409
  %i.ee = and i16 %i.ec, 256
  %.not121 = icmp eq i16 %i.ee, 0
  %.val2.i = load i8, ptr %i.ed, align 1
  %.0.i = select i1 %.not121, i8 %.val2.i, i8 %.sroa.0103.0.extract.trunc
  br label %bb.ae

bb.z:                                             ; preds = %bb.x
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.aa:                                            ; preds = %bb.w
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ar, i64 944
  %i.ei = invoke i16 @_ZNK14Pointabilities11matchObjectERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt13unordered_mapIS5_iSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIS6_iEEE(ptr noundef nonnull align 8 dereferenceable(224) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.eg, ptr noundef nonnull align 8 dereferenceable(56) %i.eh)
          to label %bb.ab unwind label %bb.ac     ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  %.sroa.0102.0.extract.trunc = trunc i16 %i.ei to i8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ar, i64 409
  %i.ek = and i16 %i.ei, 256
  %.not120 = icmp eq i16 %i.ek, 0
  %.val2.i92 = load i8, ptr %i.ej, align 1
  %.0.i93 = select i1 %.not120, i8 %.val2.i92, i8 %.sroa.0102.0.extract.trunc
  br label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ad:                                            ; preds = %bb.v
  %i.em = getelementptr inbounds nuw i8, ptr %i.ar, i64 409
  %i.en = load i8, ptr %i.em, align 1, !tbaa !500
  br label %bb.ae

bb.ae:                                            ; preds = %bb.y, %bb.ab, %bb.ad
  %.0.i.sink = phi i8 [ %.0.i, %bb.y ], [ %.0.i93, %bb.ab ], [ %i.en, %bb.ad ] ; 2 uses
  store i8 %.0.i.sink, ptr %i.a, align 1, !tbaa !218
  %.not85 = icmp eq i8 %.0.i.sink, 0
  br i1 %.not85, label %bb.al, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eo = load ptr, ptr %i.ad, align 8, !tbaa !16
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 120
  %i.eq = load ptr, ptr %i.ep, align 8
  %i.er = invoke { <2 x float>, float } %i.eq(ptr noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %bb.ag unwind label %bb.aj     ; 2 uses

bb.ag:                                            ; preds = %bb.af
  %.fca.0.extract1 = extractvalue { <2 x float>, float } %i.er, 0
  %.fca.1.extract2 = extractvalue { <2 x float>, float } %i.er, 1
  %i.es = load <2 x float>, ptr %6, align 8, !tbaa !134
  %i.et = fadd nsz <2 x float> %.fca.0.extract1, %i.es ; 3 uses
  store <2 x float> %i.et, ptr %6, align 8, !tbaa !134
  %i.eu = load float, ptr %i.r, align 8, !tbaa !446
  %i.ev = fadd nsz float %.fca.1.extract2, %i.eu  ; 3 uses
  store float %i.ev, ptr %i.r, align 8, !tbaa !446
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ex = load i16, ptr %i.ew, align 8, !tbaa !168 ; 2 uses
  store i16 %i.ex, ptr %i.b, align 2, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.ey = load float, ptr %1, align 4, !tbaa !501
  %i.ez = extractelement <2 x float> %i.et, i64 0
  %i.fa = fsub nsz float %i.ez, %i.ey             ; 2 uses
  %i.fb = load float, ptr %i.f, align 4, !tbaa !146
  %i.fc = extractelement <2 x float> %i.et, i64 1
  %i.fd = fsub nsz float %i.fc, %i.fb             ; 2 uses
  %i.fe = load float, ptr %i.l, align 4, !tbaa !446
  %i.ff = fsub nsz float %i.ev, %i.fe             ; 2 uses
  %i.fg = fmul nsz float %i.fd, %i.fd
  %i.fh = call nsz float @llvm.fmuladd.f32(float %i.fa, float %i.fa, float %i.fg)
  %i.fi = call nsz noundef float @llvm.fmuladd.f32(float %i.ff, float %i.ff, float %i.fh) ; 2 uses
  store float %i.fi, ptr %i.c, align 4, !tbaa !134
  %i.fj = load ptr, ptr %i.v, align 8, !tbaa !221 ; 14 uses
  %i.fk = load ptr, ptr %i.w, align 8, !tbaa !222
  %.not.i = icmp eq ptr %i.fj, %i.fk
  br i1 %.not.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.sroa.09.0.copyload.i.i = load <2 x float>, ptr %6, align 8, !tbaa !134
  %.sroa.07.0.copyload.i.i = load <2 x float>, ptr %7, align 8, !tbaa !134
  %.sroa.28.0.copyload.i.i = load float, ptr %i.s, align 8, !tbaa !134
  %.sroa.05.0.copyload.i.i = load <2 x float>, ptr %8, align 8, !tbaa !134
  %.sroa.26.0.copyload.i.i = load float, ptr %i.t, align 8, !tbaa !134
  %i.fl = load i8, ptr %i.a, align 1, !tbaa !218
  store i8 2, ptr %i.fj, align 4, !tbaa !225
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 1
  store i8 %i.fl, ptr %i.fm, align 1, !tbaa !226
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 2
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.fn, i8 0, i64 18, i1 false)
  store i16 %i.ex, ptr %i.fo, align 4, !tbaa !227
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fj, i64 22
  store i16 0, ptr %i.fp, align 2, !tbaa !228
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  store <2 x float> %.sroa.09.0.copyload.i.i, ptr %i.fq, align 4, !tbaa !134
  %.sroa.212.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fj, i64 32
  store float %i.ev, ptr %.sroa.212.0..sroa_idx.i.i, align 4, !tbaa !134
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fj, i64 36
  store <2 x float> %.sroa.07.0.copyload.i.i, ptr %i.fr, align 4, !tbaa !134
  %.sroa.28.0..sroa_idx.i13.i = getelementptr inbounds nuw i8, ptr %i.fj, i64 44
  store float %.sroa.28.0.copyload.i.i, ptr %.sroa.28.0..sroa_idx.i13.i, align 4, !tbaa !134
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fj, i64 48
  store <2 x float> %.sroa.05.0.copyload.i.i, ptr %i.fs, align 4, !tbaa !134
  %.sroa.24.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fj, i64 56
  store float %.sroa.26.0.copyload.i.i, ptr %.sroa.24.0..sroa_idx.i.i, align 4, !tbaa !134
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fj, i64 60
  store float %i.fi, ptr %i.ft, align 4, !tbaa !229
  %i.fu = load ptr, ptr %i.v, align 8, !tbaa !221
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 64
  store ptr %i.fv, ptr %i.v, align 8, !tbaa !221
  br label %_ZNSt6vectorI12PointedThingSaIS0_EE12emplace_backIJtRN4core8vector3dIfEES7_S7_fR16PointabilityTypeEEERS0_DpOT_.exit

bb.ai:                                            ; preds = %bb.ag
  invoke void @_ZNSt6vectorI12PointedThingSaIS0_EE17_M_realloc_insertIJtRN4core8vector3dIfEES7_S7_fR16PointabilityTypeEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.fj, ptr noundef nonnull align 2 dereferenceable(2) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(12) %8, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %_ZNSt6vectorI12PointedThingSaIS0_EE12emplace_backIJtRN4core8vector3dIfEES7_S7_fR16PointabilityTypeEEERS0_DpOT_.exit unwind label %bb.ak

_ZNSt6vectorI12PointedThingSaIS0_EE12emplace_backIJtRN4core8vector3dIfEES7_S7_fR16PointabilityTypeEEERS0_DpOT_.exit: ; preds = %bb.ai, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %bb.al

bb.aj:                                            ; preds = %bb.af
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ak:                                            ; preds = %bb.ai
  %i.fx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
end_hunk_0
