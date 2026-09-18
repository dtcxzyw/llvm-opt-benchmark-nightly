Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/collision?download=true
inline.NumInlined: 591
inline.NumDeleted: 303
begin_hunk_0_@_Z20axisAlignedCollisionRKN4core8aabbox3dIfEES3_NS_8vector3dIfEEPf:bb.a
bb.h:                                             ; preds = %bb.g
  %i.cc = load float, ptr %i.z, align 4, !tbaa !19 ; 2 uses
  %i.cd = load <4 x float>, ptr %i.w, align 4, !tbaa !19
  %i.ce = shufflevector <4 x float> %i.cd, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.cf = insertelement <2 x float> poison, float %3, i64 0
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ch = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cg, <2 x float> %i.bt, <2 x float> %i.ce) ; 2 uses
  %i.ci = extractelement <2 x float> %i.ch, i64 1 ; 2 uses
  %i.cj = fcmp nsz olt float %i.ci, %i.cc
  %.sroa.speculated215 = select i1 %i.cj, float %i.cc, float %i.ci
  %i.ck = load float, ptr %i.ab, align 4, !tbaa !19 ; 2 uses
  %i.cl = extractelement <2 x float> %i.ch, i64 0 ; 2 uses
  %i.cm = fcmp nsz olt float %i.ck, %i.cl
  %.sroa.speculated211 = select i1 %i.cm, float %i.ck, float %i.cl
  %i.cn = fsub nsz float %.sroa.speculated215, %.sroa.speculated211
  %i.co = fcmp nsz olt float %i.cn, %i.ae
  br i1 %i.co, label %bb.w, label %.critedge

.critedge:                                        ; preds = %bb.g, %bb.h, %bb.f, %bb.e, %bb.a
  %.sroa.0104.0.vec.extract108 = extractelement <2 x float> %2, i64 0 ; 4 uses
  %i.cp = fcmp nsz une float %.sroa.0104.0.vec.extract108, 0.000000e+00
  br i1 %i.cp, label %bb.i, label %.critedge2

bb.i:                                             ; preds = %.critedge
  %i.cq = fsub nsz float %i.aj, %i.i
  %i.cr = tail call nsz noundef float @llvm.fabs.f32(float %.sroa.0104.0.vec.extract108)
  %i.cs = fdiv nsz float %i.cq, %i.cr             ; 4 uses
  store float %i.cs, ptr %4, align 4, !tbaa !19
  %i.ct = fcmp nsz olt float %i.cs, 0.000000e+00
  %.sroa.speculated207 = select i1 %i.ct, float 0.000000e+00, float %i.cs
  %i.cu = fcmp nsz ugt float %i.cs, %i.ap
  br i1 %i.cu, label %bb.w, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cv = load float, ptr %i.e, align 4, !tbaa !13 ; 2 uses
  %i.cw = load float, ptr %0, align 4, !tbaa !14  ; 2 uses
  %i.cx = fsub nsz float %i.cv, %i.cw
  %i.cy = fmul nsz float %i.cx, -5.000000e-01     ; 2 uses
  %i.cz = fcmp nsz olt float %i.cy, -2.000000e+00
  %.sroa.speculated202 = select i1 %i.cz, float -2.000000e+00, float %i.cy ; 2 uses
  %i.da = fcmp nsz ogt float %.sroa.0104.0.vec.extract108, 0.000000e+00
  br i1 %i.da, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.db = load float, ptr %i.a, align 4, !tbaa !13
  %i.dc = fsub nsz float %i.cw, %i.db
  %i.dd = fcmp nsz ogt float %i.dc, %.sroa.speculated202
  br i1 %i.dd, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.de = fcmp nsz olt float %.sroa.0104.0.vec.extract108, 0.000000e+00
  br i1 %i.de, label %bb.m, label %.critedge2

bb.m:                                             ; preds = %bb.l
  %i.df = load float, ptr %1, align 4, !tbaa !14
  %i.dg = fsub nsz float %i.df, %i.cv
  %i.dh = fcmp nsz ogt float %i.dg, %.sroa.speculated202
  br i1 %i.dh, label %bb.n, label %.critedge2

bb.n:                                             ; preds = %bb.m, %bb.k
  %i.di = load float, ptr %i.o, align 4, !tbaa !19 ; 2 uses
  %i.dj = load <4 x float>, ptr %i.l, align 4, !tbaa !19
  %i.dk = shufflevector <4 x float> %i.dj, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.dl = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dm = insertelement <2 x float> poison, float %.sroa.speculated207, i64 0
  %i.dn = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.do = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dl, <2 x float> %i.dn, <2 x float> %i.dk) ; 2 uses
  %i.dp = extractelement <2 x float> %i.do, i64 1 ; 2 uses
  %i.dq = fcmp nsz olt float %i.dp, %i.di
  %.sroa.speculated198 = select i1 %i.dq, float %i.di, float %i.dp
  %i.dr = load float, ptr %i.q, align 4, !tbaa !19 ; 2 uses
  %i.ds = extractelement <2 x float> %i.do, i64 0 ; 2 uses
  %i.dt = fcmp nsz olt float %i.dr, %i.ds
  %.sroa.speculated194 = select i1 %i.dt, float %i.dr, float %i.ds
  %i.du = fsub nsz float %.sroa.speculated198, %.sroa.speculated194
  %i.dv = fcmp nsz olt float %i.du, %i.t
  br i1 %i.dv, label %bb.o, label %.critedge2

bb.o:                                             ; preds = %bb.n
  %i.dw = load float, ptr %i.z, align 4, !tbaa !19 ; 2 uses
  %i.dx = load <4 x float>, ptr %i.w, align 4, !tbaa !19
  %i.dy = shufflevector <4 x float> %i.dx, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.dz = insertelement <2 x float> poison, float %3, i64 0
  %i.ea = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eb = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ea, <2 x float> %i.dn, <2 x float> %i.dy) ; 2 uses
  %i.ec = extractelement <2 x float> %i.eb, i64 1 ; 2 uses
  %i.ed = fcmp nsz olt float %i.ec, %i.dw
  %.sroa.speculated190 = select i1 %i.ed, float %i.dw, float %i.ec
  %i.ee = load float, ptr %i.ab, align 4, !tbaa !19 ; 2 uses
  %i.ef = extractelement <2 x float> %i.eb, i64 0 ; 2 uses
  %i.eg = fcmp nsz olt float %i.ee, %i.ef
  %.sroa.speculated186 = select i1 %i.eg, float %i.ee, float %i.ef
  %i.eh = fsub nsz float %.sroa.speculated190, %.sroa.speculated186
  %i.ei = fcmp nsz olt float %i.eh, %i.ae
  br i1 %i.ei, label %bb.w, label %.critedge2

.critedge2:                                       ; preds = %bb.n, %bb.o, %bb.m, %bb.l, %.critedge
  %i.ej = fcmp nsz une float %3, 0.000000e+00
  br i1 %i.ej, label %bb.p, label %.critedge4

bb.p:                                             ; preds = %.critedge2
  %i.ek = fsub nsz float %i.ao, %i.ae
  %i.el = tail call nsz noundef float @llvm.fabs.f32(float %3)
  %i.em = fdiv nsz float %i.ek, %i.el             ; 4 uses
  store float %i.em, ptr %4, align 4, !tbaa !19
  %i.en = fcmp nsz olt float %i.em, 0.000000e+00
  %.sroa.speculated182 = select i1 %i.en, float 0.000000e+00, float %i.em
  %i.eo = fcmp nsz ugt float %i.em, %i.ap
  br i1 %i.eo, label %.critedge4, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ep = load float, ptr %i.z, align 4, !tbaa !17 ; 2 uses
  %i.eq = load float, ptr %i.ab, align 4, !tbaa !18 ; 2 uses
  %i.er = fsub nsz float %i.ep, %i.eq
  %i.es = fmul nsz float %i.er, -5.000000e-01     ; 2 uses
  %i.et = fcmp nsz olt float %i.es, -2.000000e+00
  %.sroa.speculated177 = select i1 %i.et, float -2.000000e+00, float %i.es ; 2 uses
  %i.eu = fcmp nsz ogt float %3, 0.000000e+00
  br i1 %i.eu, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ev = load float, ptr %i.u, align 4, !tbaa !17
  %i.ew = fsub nsz float %i.eq, %i.ev
  %i.ex = fcmp nsz ogt float %i.ew, %.sroa.speculated177
  br i1 %i.ex, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ey = fcmp nsz olt float %3, 0.000000e+00
  br i1 %i.ey, label %bb.t, label %.critedge4

bb.t:                                             ; preds = %bb.s
  %i.ez = load float, ptr %i.w, align 4, !tbaa !18
  %i.fa = fsub nsz float %i.ez, %i.ep
  %i.fb = fcmp nsz ogt float %i.fa, %.sroa.speculated177
  br i1 %i.fb, label %bb.u, label %.critedge4

bb.u:                                             ; preds = %bb.t, %bb.r
  %i.fc = load float, ptr %i.e, align 4, !tbaa !19 ; 2 uses
  %i.fd = load <4 x float>, ptr %1, align 4, !tbaa !19
  %i.fe = shufflevector <4 x float> %i.fd, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.ff = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fg = insertelement <2 x float> poison, float %.sroa.speculated182, i64 0
  %i.fh = shufflevector <2 x float> %i.fg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fi = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ff, <2 x float> %i.fh, <2 x float> %i.fe) ; 2 uses
  %i.fj = extractelement <2 x float> %i.fi, i64 1 ; 2 uses
  %i.fk = fcmp nsz olt float %i.fj, %i.fc
  %.sroa.speculated173 = select i1 %i.fk, float %i.fc, float %i.fj
  %i.fl = load float, ptr %0, align 4, !tbaa !19  ; 2 uses
  %i.fm = extractelement <2 x float> %i.fi, i64 0 ; 2 uses
  %i.fn = fcmp nsz olt float %i.fl, %i.fm
  %.sroa.speculated169 = select i1 %i.fn, float %i.fl, float %i.fm
  %i.fo = fsub nsz float %.sroa.speculated173, %.sroa.speculated169
  %i.fp = fcmp nsz olt float %i.fo, %i.i
  br i1 %i.fp, label %bb.v, label %.critedge4

bb.v:                                             ; preds = %bb.u
  %i.fq = load float, ptr %i.o, align 4, !tbaa !19 ; 2 uses
  %i.fr = load <4 x float>, ptr %i.l, align 4, !tbaa !19
  %i.fs = shufflevector <4 x float> %i.fr, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.ft = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fu = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ft, <2 x float> %i.fh, <2 x float> %i.fs) ; 2 uses
  %i.fv = extractelement <2 x float> %i.fu, i64 1 ; 2 uses
  %i.fw = fcmp nsz olt float %i.fv, %i.fq
  %.sroa.speculated165 = select i1 %i.fw, float %i.fq, float %i.fv
  %i.fx = load float, ptr %i.q, align 4, !tbaa !19 ; 2 uses
  %i.fy = extractelement <2 x float> %i.fu, i64 0 ; 2 uses
  %i.fz = fcmp nsz olt float %i.fx, %i.fy
  %.sroa.speculated = select i1 %i.fz, float %i.fx, float %i.fy
  %i.ga = fsub nsz float %.sroa.speculated165, %.sroa.speculated
  %i.gb = fcmp nsz olt float %i.ga, %i.t
  br i1 %i.gb, label %bb.w, label %.critedge4

.critedge4:                                       ; preds = %bb.u, %bb.p, %bb.v, %bb.t, %bb.s, %.critedge2
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.i, %bb.o, %bb.b, %bb.h, %.critedge4
  %.0 = phi i8 [ 1, %bb.h ], [ -1, %bb.b ], [ -1, %bb.i ], [ -1, %.critedge4 ], [ 0, %bb.o ], [ 2, %bb.v ]
  ret i8 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: uwtable
define dso_local void @_Z19collisionMoveSimpleP11EnvironmentP8IGameDefRKN4core8aabbox3dIfEEffPNS3_8vector3dIfEESA_S9_P12ActiveObjectb10StepUpMode(ptr dead_on_unwind noalias nofree writable sret(%struct.collisionMoveResult) align 8 captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %3, float noundef %4, float noundef %5, ptr nofree noundef captures(none) %6, ptr nofree noundef captures(none) %7, <2 x float> %8, float %9, ptr noundef %10, i1 noundef zeroext %11, i8 noundef zeroext %12) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %13 = alloca %class.ScopeProfiler, align 8      ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %15 = alloca %"class.core::aabbox3d", align 4   ; 13 uses
  %i.d = alloca float, align 4                    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #6
  %i.e = load ptr, ptr @g_profiler, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #6
  %i.f = icmp eq ptr %1, null
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !24
  %i.h = icmp eq ptr %i.g, getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV17ServerEnvironment, i64 16)
  br i1 %i.h, label %.noexc.i, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %.noexc.i

.noexc.i:                                         ; preds = %bb.c, %bb.b
  %.not = phi ptr [ @.str, %bb.b ], [ @.str.1, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.i, ptr %14, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i64 29, ptr %i.c, align 8, !tbaa !29
  %i.j = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.j, ptr %14, align 8, !tbaa !31
  %i.k = load i64, ptr %i.c, align 8, !tbaa !29   ; 3 uses
  store i64 %i.k, ptr %i.i, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.j, ptr noundef nonnull align 1 dereferenceable(29) %.not, i64 29, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !33
  %i.m = load ptr, ptr %14, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  invoke void @_ZN13ScopeProfilerC1EP8ProfilerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17ScopeProfilerType13TimePrecision(ptr noundef nonnull align 8 dereferenceable(50) %13, ptr noundef %i.e, ptr noundef nonnull align 8 dereferenceable(32) %14, i8 noundef zeroext 2, i8 noundef signext 2)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %.noexc
  %i.o = load ptr, ptr %14, align 8, !tbaa !31    ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.i
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.q = load i64, ptr %i.i, align 8, !tbaa !32
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #6
  store i8 0, ptr %0, align 8, !tbaa !102
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 6 uses
  store i8 0, ptr %i.s, align 1, !tbaa !103
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 6 uses
  store i8 0, ptr %i.t, align 2, !tbaa !104
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  %i.v = load float, ptr %7, align 4, !tbaa !35   ; 2 uses
  %i.w = fcmp nsz oeq float %i.v, 0.000000e+00
  br i1 %i.w, label %bb.e, label %.critedge

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.y = load float, ptr %i.x, align 4, !tbaa !36
  %i.z = fcmp nsz oeq float %i.y, 0.000000e+00
  br i1 %i.z, label %_ZNK4core8vector3dIfEeqERKS1_.exit, label %.critedge

_ZNK4core8vector3dIfEeqERKS1_.exit:               ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !37
  %i.ac = fcmp nsz oeq float %i.ab, 0.000000e+00
  %.sroa.0744.0.vec.extract = extractelement <2 x float> %8, i64 0
  %i.ad = fcmp nsz oeq float %.sroa.0744.0.vec.extract, 0.000000e+00
  %or.cond813 = select i1 %i.ac, i1 %i.ad, i1 false
  %.sroa.0744.4.vec.extract = extractelement <2 x float> %8, i64 1
  %i.ae = fcmp nsz oeq float %.sroa.0744.4.vec.extract, 0.000000e+00
  %or.cond814 = select i1 %or.cond813, i1 %i.ae, i1 false
  %i.af = fcmp nsz oeq float %9, 0.000000e+00
  %or.cond815 = select i1 %or.cond814, i1 %i.af, i1 false
  br i1 %or.cond815, label %.critedge417, label %.critedge

bb.f:                                             ; preds = %.noexc.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437

bb.g:                                             ; preds = %.noexc
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = load ptr, ptr %14, align 8, !tbaa !31   ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.i
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i435

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i435: ; preds = %bb.g
  %i.ak = load i64, ptr %i.i, align 8, !tbaa !32
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i435, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.f ], [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i435 ], [ %i.ah, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #6
  br label %bb.cs

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e, %_ZNK4core8vector3dIfEeqERKS1_.exit
  %i.am = fcmp nsz ogt float %5, 2.500000e+00
  br i1 %i.am, label %bb.h, label %bb.s

bb.h:                                             ; preds = %.critedge
  %.b = load i1, ptr @_ZZ19collisionMoveSimpleP11EnvironmentP8IGameDefRKN4core8aabbox3dIfEEffPNS3_8vector3dIfEESA_S9_P12ActiveObjectb10StepUpModeE22time_notification_done, align 1
  br i1 %.b, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i1 true, ptr @_ZZ19collisionMoveSimpleP11EnvironmentP8IGameDefRKN4core8aabbox3dIfEEffPNS3_8vector3dIfEESA_S9_P12ActiveObjectb10StepUpModeE22time_notification_done, align 1
  %.not.i = icmp eq ptr @_ZTH13warningstream, null
  br i1 %.not.i, label %_ZTW13warningstream.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZTH13warningstream()
  br label %_ZTW13warningstream.exit

_ZTW13warningstream.exit:                         ; preds = %bb.i, %bb.j
  %i.an = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @warningstream) ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !112, !nonnull !43, !align !44 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !24
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = invoke noundef zeroext i1 %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.ao)
          to label %.noexc438 unwind label %bb.r, !inline_history !87

.noexc438:                                        ; preds = %_ZTW13warningstream.exit
  %.v.i = select i1 %i.ar, i64 976, i64 984
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 %.v.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.2, ptr %i.b, align 8, !tbaa !45
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.k unwind label %bb.r       ; 0 uses

bb.k:                                             ; preds = %.noexc438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !46 ; 5 uses
  %.not.i440 = icmp eq ptr %i.au, null
  br i1 %.not.i440, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !24
  %i.aw = getelementptr i8, ptr %i.av, i64 -24
  %i.ax = load i64, ptr %i.aw, align 8            ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !53
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.au)
          to label %.noexc441 unwind label %bb.r

.noexc441:                                        ; preds = %bb.m
  %.pre.i = load ptr, ptr %i.as, align 8, !tbaa !46 ; 2 uses
  %.pre = load ptr, ptr %.pre.i, align 8, !tbaa !24
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre959 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.n

bb.n:                                             ; preds = %.noexc441, %bb.l
  %i.bc = phi i64 [ %.pre959, %.noexc441 ], [ %i.ax, %bb.l ]
  %i.bd = phi ptr [ %.pre.i, %.noexc441 ], [ %i.au, %bb.l ] ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 %i.bc
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 240
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !118 ; 6 uses
  %.not.i.i.i603 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i603, label %bb.o, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.noexc604 unwind label %bb.r

.noexc604:                                        ; preds = %bb.o
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !123
  %.not.i1.i.i = icmp eq i8 %i.bi, 0
  br i1 %.not.i1.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 67
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !32
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.q:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bg)
          to label %.noexc605 unwind label %bb.r

.noexc605:                                        ; preds = %bb.q
  %i.bl = load ptr, ptr %i.bg, align 8, !tbaa !24
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = invoke noundef signext i8 %i.bn(ptr noundef nonnull align 8 dereferenceable(570) %i.bg, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.r, !inline_history !88

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc605, %bb.p
  %.0.i.i.i = phi i8 [ %i.bk, %bb.p ], [ %i.bo, %.noexc605 ]
  %i.bp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, i8 noundef signext %.0.i.i.i)
          to label %.noexc607 unwind label %bb.r

.noexc607:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bp)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit unwind label %bb.r ; 0 uses

bb.r:                                             ; preds = %.noexc607, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc605, %bb.q, %bb.o, %bb.m, %.noexc438, %_ZTW13warningstream.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %_ZN19collisionMoveResultD2Ev.exit

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %bb.k, %.noexc607, %bb.h
  store i8 1, ptr @g_collision_problems_encountered, align 1, !tbaa !124
  %.pre960 = load float, ptr %7, align 4, !tbaa !35
  br label %bb.t

bb.s:                                             ; preds = %.critedge
  store i1 false, ptr @_ZZ19collisionMoveSimpleP11EnvironmentP8IGameDefRKN4core8aabbox3dIfEEffPNS3_8vector3dIfEESA_S9_P12ActiveObjectb10StepUpModeE22time_notification_done, align 1
  br label %bb.t

bb.t:                                             ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit, %bb.s
  %i.bs = phi float [ %.pre960, %_ZN11StreamProxylsEPFRSoS0_E.exit ], [ %i.v, %bb.s ]
  %.0 = phi nsz float [ 2.500000e+00, %_ZN11StreamProxylsEPFRSoS0_E.exit ], [ %5, %bb.s ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 6 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 10 uses
  %i.bv = shufflevector <2 x float> %8, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 1>
  %i.bw = insertelement <4 x float> %i.bv, float %9, i64 2
  %i.bx = fmul nsz <4 x float> %i.bw, splat (float 5.000000e-01)
  %i.by = insertelement <4 x float> poison, float %.0, i64 0
  %i.bz = shufflevector <4 x float> %i.by, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ca = fmul nsz <4 x float> %i.bx, %i.bz
  %i.cb = load <2 x float>, ptr %i.bt, align 4, !tbaa !19 ; 2 uses
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cd = insertelement <4 x float> %i.cc, float %i.bs, i64 1
  %i.ce = shufflevector <2 x float> %i.cb, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.cf = shufflevector <4 x float> %i.cd, <4 x float> %i.ce, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cg = fadd nsz <4 x float> %i.cf, %i.ca       ; 3 uses
  %i.ch = extractelement <4 x float> %i.cg, i64 0 ; 2 uses
  %i.ci = fcmp nsz ogt float %i.ch, 5.000000e+03
  %..i3.i = select nsz i1 %i.ci, float 5.000000e+03, float %i.ch
  %i.cj = fcmp nsz olt <4 x float> %i.cg, splat (float -5.000000e+03)
  %i.ck = fmul nsz float %..i3.i, 1.000000e+04
  %i.cl = shufflevector <4 x float> %i.cg, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.cm = fcmp nsz ogt <2 x float> %i.cl, splat (float 5.000000e+03)
  %i.cn = select <2 x i1> %i.cm, <2 x float> splat (float 5.000000e+03), <2 x float> %i.cl
  %i.co = fmul nsz <2 x float> %i.cn, splat (float 1.000000e+04)
  %i.cp = call nsz <2 x float> @llvm.trunc.v2f32(<2 x float> %i.co)
  %i.cq = call nsz float @llvm.trunc.f32(float %i.ck)
  %i.cr = insertelement <4 x float> poison, float %i.cq, i64 0
  %i.cs = shufflevector <2 x float> %i.cp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ct = shufflevector <4 x float> %i.cr, <4 x float> %i.cs, <4 x i32> <i32 0, i32 4, i32 5, i32 0>
  %i.cu = fdiv nsz <4 x float> %i.ct, splat (float 1.000000e+04)
  %i.cv = select <4 x i1> %i.cj, <4 x float> splat (float -5.000000e+03), <4 x float> %i.cu ; 4 uses
  %i.cw = shufflevector <4 x float> %i.cv, <4 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %.b391 = load i1, ptr @_ZGVZ19collisionMoveSimpleP11EnvironmentP8IGameDefRKN4core8aabbox3dIfEEffPNS3_8vector3dIfEESA_S9_P12ActiveObjectb10StepUpModeE5cinfo, align 1
  br i1 %.b391, label %bb.v, label %bb.u, !prof !55

bb.u:                                             ; preds = %bb.t
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZZ19collisionMoveSimpleP11EnvironmentP8IGameDefRKN4core8aabbox3dIfEEffPNS3_8vector3dIfEESA_S9_P12ActiveObjectb10StepUpModeE5cinfo, i8 0, i64 24, i1 false)
  %i.cx = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EED2Ev, ptr nonnull @_ZZ19collisionMoveSimpleP11EnvironmentP8IGameDefRKN4core8aabbox3dIfEEffPNS3_8vector3dIfEESA_S9_P12ActiveObjectb10StepUpModeE5cinfo, ptr nonnull @__dso_handle) #6 ; 0 uses
  store i1 true, ptr @_ZGVZ19collisionMoveSimpleP11EnvironmentP8IGameDefRKN4core8aabbox3dIfEEffPNS3_8vector3dIfEESA_S9_P12ActiveObjectb10StepUpModeE5cinfo, align 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cy = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZ19collisionMoveSimpleP11EnvironmentP8IGameDefRKN4core8aabbox3dIfEEffPNS3_8vector3dIfEESA_S9_P12ActiveObjectb10StepUpModeE5cinfo) ; 6 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !58 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 4 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !59
  %.not.i.i = icmp eq ptr %i.db, %i.cz
  br i1 %.not.i.i, label %bb.w, label %_ZSt8_DestroyIPN12_GLOBAL__N_119NearbyCollisionInfoES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN12_GLOBAL__N_119NearbyCollisionInfoES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.v
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !59
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZSt8_DestroyIPN12_GLOBAL__N_119NearbyCollisionInfoES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.dc = fmul nsz <4 x float> %i.bz, %i.cv
  %i.dd = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dg = load float, ptr %i.df, align 4, !tbaa !37
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.di = load float, ptr %i.dh, align 4, !tbaa !35
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !36
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 3 uses
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !37
  %i.dn = load <3 x float>, ptr %6, align 4, !tbaa !19 ; 2 uses
  %i.do = shufflevector <3 x float> %i.dn, <3 x float> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 1> ; 4 uses
  %i.dp = fadd nsz <4 x float> %i.dc, %i.do       ; 4 uses
  %i.dq = fcmp nsz olt <4 x float> %i.do, %i.dp
  %i.dr = fcmp nsz ogt <4 x float> %i.do, %i.dp
  %i.ds = shufflevector <4 x i1> %i.dq, <4 x i1> %i.dr, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.dt = select <4 x i1> %i.ds, <4 x float> %i.do, <4 x float> %i.dp
  %i.du = fadd nsz <4 x float> %i.dt, <float f0x3DCCCCCC, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>
  %i.dv = load <2 x float>, ptr %3, align 4, !tbaa !19
  %i.dw = insertelement <4 x float> poison, float %i.dg, i64 2
  %i.dx = insertelement <4 x float> %i.dw, float %i.dk, i64 3
  %i.dy = shufflevector <2 x float> %i.dv, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.dz = shufflevector <4 x float> %i.dy, <4 x float> %i.dx, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ea = fadd nsz <4 x float> %i.dz, %i.du       ; 2 uses
  %i.eb = fcmp nsz ogt <4 x float> %i.ea, zeroinitializer
  %i.ec = select <4 x i1> %i.eb, <4 x float> splat (float 5.000000e+00), <4 x float> splat (float -5.000000e+00)
  %i.ed = fadd nsz <4 x float> %i.ea, %i.ec
  %i.ee = fdiv nsz <4 x float> %i.ed, splat (float 1.000000e+01) ; 2 uses
  %i.ef = shufflevector <3 x float> %i.dn, <3 x float> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.eg = shufflevector <4 x float> %i.dp, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.eh = fcmp nsz ogt <2 x float> %i.ef, %i.eg
  %i.ei = select <2 x i1> %i.eh, <2 x float> %i.ef, <2 x float> %i.eg
  %i.ej = insertelement <2 x float> poison, float %i.di, i64 0
  %i.ek = insertelement <2 x float> %i.ej, float %i.dm, i64 1
  %i.el = fadd nsz <2 x float> %i.ei, %i.ek       ; 2 uses
  %i.em = fcmp nsz ogt <2 x float> %i.el, zeroinitializer
  %i.en = select <2 x i1> %i.em, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.eo = fadd nsz <2 x float> %i.el, %i.en
  %i.ep = fdiv nsz <2 x float> %i.eo, splat (float 1.000000e+01)
  %i.eq = shufflevector <2 x float> %i.ep, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.er = shufflevector <4 x float> %i.ee, <4 x float> %i.eq, <4 x i32> <i32 1, i32 0, i32 2, i32 4>
  %i.es = fptosi <4 x float> %i.er to <4 x i16>
  %i.et = add <4 x i16> %i.es, <i16 -1, i16 -1, i16 -1, i16 1> ; 2 uses
  %.sroa.0.0.insert.insert.i475.v = shufflevector <4 x i16> %i.et, <4 x i16> poison, <3 x i32> <i32 0, i32 1, i32 2>
  %.sroa.0.0.insert.insert.i475 = bitcast <3 x i16> %.sroa.0.0.insert.insert.i475.v to i48
  %i.eu = shufflevector <4 x float> %i.ee, <4 x float> %i.eq, <2 x i32> <i32 3, i32 5>
  %i.ev = fptosi <2 x float> %i.eu to <2 x i16>
  %i.ew = add <2 x i16> %i.ev, splat (i16 1)
  %.sroa.2.0.insert.insert.i493.v = shufflevector <2 x i16> %i.ew, <2 x i16> <i16 0, i16 poison>, <3 x i32> <i32 2, i32 0, i32 1>
  %.sroa.2.0.insert.insert.i493 = bitcast <3 x i16> %.sroa.2.0.insert.insert.i493.v to i48
  %i.ex = extractelement <4 x i16> %i.et, i64 3
  %.sroa.0.0.insert.ext.i494 = zext i16 %i.ex to i48
  %.sroa.0.0.insert.insert.i495 = or disjoint i48 %.sroa.2.0.insert.insert.i493, %.sroa.0.0.insert.ext.i494
  %i.ey = invoke fastcc noundef zeroext i1 @_ZL19add_area_node_boxesN4core8vector3dIsEES1_P8IGameDefP11EnvironmentRSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS8_EE(i48 %.sroa.0.0.insert.insert.i475, i48 %.sroa.0.0.insert.insert.i495, ptr noundef %2, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %i.cy)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  br i1 %i.ey, label %.critedge420, label %bb.y

bb.y:                                             ; preds = %bb.x
  store <2 x float> zeroinitializer, ptr %7, align 4, !tbaa !19
  store float 0.000000e+00, ptr %i.bu, align 4, !tbaa !19
  br label %.critedge417

bb.z:                                             ; preds = %bb.w
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %_ZN19collisionMoveResultD2Ev.exit

.critedge420:                                     ; preds = %bb.x
  br i1 %11, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %.critedge420
  %.sroa.0176.0.copyload = load <2 x float>, ptr %6, align 4
  %.sroa.2177.0.copyload = load float, ptr %i.de, align 4, !tbaa !19
  %i.fa = extractelement <4 x float> %i.cv, i64 2
  invoke fastcc void @_ZL16add_object_boxesP11EnvironmentRKN4core8aabbox3dIfEEfNS1_8vector3dIfEES7_P12ActiveObjectRSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaISC_EE(ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(24) %3, float noundef %.0, <2 x float> %.sroa.0176.0.copyload, float %.sroa.2177.0.copyload, <2 x float> %i.cw, float %i.fa, ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(24) %i.cy)
          to label %bb.ac unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN19collisionMoveResultD2Ev.exit

bb.ac:                                            ; preds = %bb.aa, %.critedge420
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 4 ; 2 uses
  %17 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %18 = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %15, i64 20
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ff = extractelement <4 x float> %i.cv, i64 2
  br label %bb.an

bb.ad:                                            ; preds = %bb.cg
  store i8 %i.mz, ptr %i.s, align 1
  store i8 %i.my, ptr %i.t, align 2
  store ptr %i.mx, ptr %i.u, align 8
  %.not.i496 = icmp eq ptr @_ZTH13warningstream, null
  br i1 %.not.i496, label %_ZTW13warningstream.exit497, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_ZTH13warningstream()
  br label %_ZTW13warningstream.exit497

_ZTW13warningstream.exit497:                      ; preds = %bb.ad, %bb.ae
  %i.fg = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @warningstream) ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !112, !nonnull !43, !align !44 ; 2 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !24
  %i.fj = load ptr, ptr %i.fi, align 8
  %i.fk = invoke noundef zeroext i1 %i.fj(ptr noundef nonnull align 8 dereferenceable(8) %i.fh)
          to label %.noexc499 unwind label %bb.am, !inline_history !89

.noexc499:                                        ; preds = %_ZTW13warningstream.exit497
  %.v.i498 = select i1 %i.fk, i64 976, i64 984
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 %.v.i498 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.3, ptr %i.a, align 8, !tbaa !45
  %i.fm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fl, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.af unwind label %bb.am     ; 0 uses

bb.af:                                            ; preds = %.noexc499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.fn = load ptr, ptr %i.fl, align 8, !tbaa !46 ; 5 uses
  %.not.i501 = icmp eq ptr %i.fn, null
  br i1 %.not.i501, label %_ZN11StreamProxylsEPFRSoS0_E.exit505, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !24
  %i.fp = getelementptr i8, ptr %i.fo, i64 -24
  %i.fq = load i64, ptr %i.fp, align 8            ; 2 uses
  %i.fr = getelementptr inbounds i8, ptr %i.fn, i64 %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 32
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !53
  %i.fu = icmp eq i32 %i.ft, 0
  br i1 %i.fu, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.fn)
          to label %.noexc503 unwind label %bb.am

.noexc503:                                        ; preds = %bb.ah
  %.pre.i502 = load ptr, ptr %i.fl, align 8, !tbaa !46 ; 2 uses
  %.pre961 = load ptr, ptr %.pre.i502, align 8, !tbaa !24
  %.phi.trans.insert962 = getelementptr i8, ptr %.pre961, i64 -24
  %.pre963 = load i64, ptr %.phi.trans.insert962, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %.noexc503, %bb.ag
  %i.fv = phi i64 [ %.pre963, %.noexc503 ], [ %i.fq, %bb.ag ]
  %i.fw = phi ptr [ %.pre.i502, %.noexc503 ], [ %i.fn, %bb.ag ] ; 2 uses
  %i.fx = getelementptr inbounds i8, ptr %i.fw, i64 %i.fv
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 240
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !118 ; 6 uses
  %.not.i.i.i609 = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i609, label %bb.aj, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i610

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.noexc614 unwind label %bb.am

.noexc614:                                        ; preds = %bb.aj
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i610: ; preds = %bb.ai
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 56
  %i.gb = load i8, ptr %i.ga, align 8, !tbaa !123
  %.not.i1.i.i611 = icmp eq i8 %i.gb, 0
  br i1 %.not.i1.i.i611, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i610
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 67
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !32
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i612

bb.al:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i610
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.fz)
          to label %.noexc615 unwind label %bb.am

.noexc615:                                        ; preds = %bb.al
  %i.ge = load ptr, ptr %i.fz, align 8, !tbaa !24
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 48
  %i.gg = load ptr, ptr %i.gf, align 8
  %i.gh = invoke noundef signext i8 %i.gg(ptr noundef nonnull align 8 dereferenceable(570) %i.fz, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i612 unwind label %bb.am, !inline_history !88

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i612: ; preds = %.noexc615, %bb.ak
  %.0.i.i.i613 = phi i8 [ %i.gd, %bb.ak ], [ %i.gh, %.noexc615 ]
  %i.gi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.fw, i8 noundef signext %.0.i.i.i613)
          to label %.noexc617 unwind label %bb.am

.noexc617:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i612
  %i.gj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gi)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit505 unwind label %bb.am ; 0 uses

_ZN11StreamProxylsEPFRSoS0_E.exit505:             ; preds = %bb.af, %.noexc617
  store i8 1, ptr @g_collision_problems_encountered, align 1, !tbaa !124
  br label %bb.ch

bb.am:                                            ; preds = %.noexc617, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i612, %.noexc615, %bb.al, %bb.aj, %bb.ah, %.noexc499, %_ZTW13warningstream.exit497
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.an:                                            ; preds = %bb.ac, %bb.cg
  %i.gl = phi ptr [ null, %bb.ac ], [ %i.mw, %bb.cg ] ; 17 uses
  %.1880 = phi float [ %.0, %bb.ac ], [ %.2780796, %bb.cg ] ; 9 uses
  %.0365879 = phi i32 [ 0, %bb.ac ], [ %i.ny, %bb.cg ]
  %.sroa.15767.0878 = phi float [ %9, %bb.ac ], [ %.sroa.15767.1800, %bb.cg ] ; 9 uses
  %.sroa.0744.0877 = phi <2 x float> [ %8, %bb.ac ], [ %.sroa.0744.1799, %bb.cg ] ; 10 uses
  %.sroa.0713.0876 = phi <2 x float> [ %i.cw, %bb.ac ], [ %i.nt, %bb.cg ] ; 5 uses
  %.sroa.21.0875 = phi float [ %i.ff, %bb.ac ], [ %i.nx, %bb.cg ] ; 4 uses
  %i.gm = phi i8 [ 0, %bb.ac ], [ %i.mz, %bb.cg ] ; 8 uses
  %i.gn = phi i8 [ 0, %bb.ac ], [ %i.my, %bb.cg ] ; 8 uses
  %i.go = phi ptr [ null, %bb.ac ], [ %i.mx, %bb.cg ] ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %15, ptr noundef nonnull align 4 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !60
  %i.gp = load <2 x float>, ptr %6, align 4, !tbaa !19 ; 5 uses
  %19 = load float, ptr %16, align 4, !tbaa !36
  %20 = extractelement <2 x float> %i.gp, i64 1   ; 3 uses
  %21 = fadd nsz float %20, %19                   ; 4 uses
  store float %21, ptr %16, align 4, !tbaa !36
  %i.gq = load float, ptr %i.de, align 4, !tbaa !37 ; 4 uses
  %22 = load float, ptr %18, align 4, !tbaa !36
  %23 = fadd nsz float %20, %22                   ; 3 uses
  store float %23, ptr %18, align 4, !tbaa !36
  %24 = load <6 x float>, ptr %15, align 4, !tbaa !19
  %25 = shufflevector <6 x float> %24, <6 x float> poison, <4 x i32> <i32 0, i32 2, i32 3, i32 5>
  %26 = insertelement <2 x float> %i.gp, float %i.gq, i64 1
  %27 = shufflevector <2 x float> %26, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gr = fadd nsz <4 x float> %27, %25           ; 4 uses
  %28 = extractelement <4 x float> %i.gr, i64 0
  store float %28, ptr %15, align 4, !tbaa !35
  %29 = shufflevector <4 x float> %i.gr, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  store <2 x float> %29, ptr %17, align 4, !tbaa !19
  %30 = extractelement <4 x float> %i.gr, i64 3
  store float %30, ptr %i.fc, align 4, !tbaa !37
  %.val421 = load ptr, ptr %i.cy, align 8, !tbaa !58 ; 5 uses
  %.val422 = load ptr, ptr %i.da, align 8, !tbaa !59 ; 3 uses
  %i.gs = ptrtoint ptr %.val422 to i64
  %i.gt = ptrtoint ptr %.val421 to i64
  %i.gu = sub i64 %i.gs, %i.gt
  %i.gv = sdiv exact i64 %i.gu, 40
  %.not896 = icmp eq ptr %.val422, %.val421
  br i1 %.not896, label %.thread801, label %.lr.ph

._crit_edge:                                      ; preds = %bb.as
  %i.gw = icmp eq i8 %.2368, -1
  br i1 %i.gw, label %.thread801, label %bb.at

.lr.ph:                                           ; preds = %bb.an, %bb.as
  %i.gx = phi i64 [ %i.hi, %bb.as ], [ 0, %bb.an ]
  %.0366853 = phi i8 [ %.2368, %bb.as ], [ -1, %bb.an ] ; 3 uses
  %.0369852 = phi float [ %.2371, %bb.as ], [ %.1880, %bb.an ] ; 5 uses
  %.0372851 = phi i32 [ %.2374, %bb.as ], [ -1, %bb.an ] ; 3 uses
  %.0375849 = phi i32 [ %i.hh, %bb.as ], [ 0, %bb.an ] ; 2 uses
  %i.gy = getelementptr inbounds nuw [40 x i8], ptr %.val421, i64 %i.gx ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 39
  %i.ha = load i8, ptr %i.gz, align 1
  %i.hb = and i8 %i.ha, 2
  %.not405 = icmp eq i8 %i.hb, 0
  br i1 %.not405, label %bb.ao, label %bb.as

bb.ao:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store float %.0369852, ptr %i.d, align 4, !tbaa !19
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.hd = call noundef signext i8 @_Z20axisAlignedCollisionRKN4core8aabbox3dIfEES3_NS_8vector3dIfEEPf(ptr noundef nonnull align 4 dereferenceable(24) %i.hc, ptr noundef nonnull align 4 dereferenceable(24) %15, <2 x float> %.sroa.0713.0876, float %.sroa.21.0875, ptr noundef nonnull %i.d) ; 2 uses
  %i.he = icmp eq i8 %i.hd, -1
  br i1 %i.he, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hf = load float, ptr %i.d, align 4, !tbaa !19 ; 2 uses
  %i.hg = fcmp nsz ult float %i.hf, %.0369852
  br i1 %i.hg, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ao, %bb.ap, %bb.aq
  %.1373 = phi i32 [ %.0375849, %bb.aq ], [ %.0372851, %bb.ap ], [ %.0372851, %bb.ao ]
  %.1370 = phi nsz float [ %i.hf, %bb.aq ], [ %.0369852, %bb.ap ], [ %.0369852, %bb.ao ]
  %.1367 = phi i8 [ %i.hd, %bb.aq ], [ %.0366853, %bb.ap ], [ %.0366853, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph, %bb.ar
  %.2374 = phi i32 [ %.1373, %bb.ar ], [ %.0372851, %.lr.ph ] ; 2 uses
  %.2371 = phi nsz float [ %.1370, %bb.ar ], [ %.0369852, %.lr.ph ] ; 13 uses
  %.2368 = phi i8 [ %.1367, %bb.ar ], [ %.0366853, %.lr.ph ] ; 7 uses
  %i.hh = add i32 %.0375849, 1                    ; 2 uses
  %i.hi = zext i32 %i.hh to i64                   ; 2 uses
  %i.hj = icmp ugt i64 %i.gv, %i.hi
  br i1 %i.hj, label %.lr.ph, label %._crit_edge, !llvm.loop !90

.thread801:                                       ; preds = %bb.an, %._crit_edge
  store ptr %i.go, ptr %i.u, align 8
  %i.hk = fmul nsz float %.sroa.21.0875, %.1880
  %i.hl = insertelement <2 x float> poison, float %.1880, i64 0
  %i.hm = shufflevector <2 x float> %i.hl, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hn = fmul nsz <2 x float> %.sroa.0713.0876, %i.hm
  %i.ho = fadd nsz <2 x float> %i.hn, %i.gp
  store <2 x float> %i.ho, ptr %6, align 4, !tbaa !19
  %i.hp = fadd nsz float %i.hk, %i.gq
  store float %i.hp, ptr %i.de, align 4, !tbaa !37
  %i.hq = fmul nsz float %.sroa.15767.0878, %.1880
  %i.hr = fmul nsz <2 x float> %.sroa.0744.0877, %i.hm
  %i.hs = load <2 x float>, ptr %7, align 4, !tbaa !19
  %i.ht = fadd nsz <2 x float> %i.hr, %i.hs       ; 4 uses
  store <2 x float> %i.ht, ptr %7, align 4, !tbaa !19
  %i.hu = load float, ptr %i.bu, align 4, !tbaa !37
  %i.hv = fadd nsz float %i.hq, %i.hu             ; 3 uses
  %i.hw = fcmp nsz olt float %i.hv, -5.000000e+03
  %i.hx = fcmp nsz ogt float %i.hv, 5.000000e+03
  %..i6.i520 = select nsz i1 %i.hx, float 5.000000e+03, float %i.hv
  %i.hy = fcmp nsz olt <2 x float> %i.ht, splat (float -5.000000e+03)
  %i.hz = fcmp nsz ogt <2 x float> %i.ht, splat (float 5.000000e+03)
  %i.ia = select <2 x i1> %i.hz, <2 x float> splat (float 5.000000e+03), <2 x float> %i.ht
  %i.ib = fmul nsz <2 x float> %i.ia, splat (float 1.000000e+04)
  %i.ic = call nsz <2 x float> @llvm.trunc.v2f32(<2 x float> %i.ib)
  %i.id = fdiv nsz <2 x float> %i.ic, splat (float 1.000000e+04)
  %i.ie = select <2 x i1> %i.hy, <2 x float> splat (float -5.000000e+03), <2 x float> %i.id
  %i.if = fmul nsz float %..i6.i520, 1.000000e+04
  %i.ig = call nsz float @llvm.trunc.f32(float %i.if)
  %i.ih = fdiv nsz float %i.ig, 1.000000e+04
  %i.ii = select i1 %i.hw, float -5.000000e+03, float %i.ih
  store <2 x float> %i.ie, ptr %7, align 4
  store float %i.ii, ptr %i.bu, align 4, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #6
  br label %bb.ch

bb.at:                                            ; preds = %._crit_edge
  %i.ij = sext i32 %.2374 to i64
  %i.ik = getelementptr inbounds nuw [40 x i8], ptr %.val421, i64 %i.ij ; 9 uses
  %.not401 = icmp eq i8 %.2368, 1
  br i1 %.not401, label %_Z23wouldCollideWithCeilingRKSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EERKN4core8aabbox3dIfEEff.exit, label %31

31:                                               ; preds = %bb.at
  %32 = getelementptr inbounds nuw i8, ptr %i.ik, i64 24
  %33 = load float, ptr %32, align 4, !tbaa !15   ; 3 uses
  %34 = fcmp nsz olt float %21, %33
  %35 = fadd nsz float %4, %21
  %36 = fcmp nsz ogt float %35, %33
  %or.cond415.not1084.not = and i1 %34, %36
  br i1 %or.cond415.not1084.not, label %bb.au, label %_Z23wouldCollideWithCeilingRKSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EERKN4core8aabbox3dIfEEff.exit

bb.au:                                            ; preds = %31
  %37 = shufflevector <2 x float> %.sroa.0713.0876, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>
  %38 = insertelement <4 x float> poison, float %.sroa.21.0875, i64 0
  %39 = shufflevector <4 x float> %38, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 0>
  %40 = shufflevector <4 x float> %37, <4 x float> %39, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %41 = fsub nsz float %.1880, %.2371
  %42 = call nsz float @llvm.fabs.f32(float %41)
  %i.il = call nsz float @llvm.fmuladd.f32(float %42, float 1.000000e-01, float %.2371)
  %43 = insertelement <4 x float> poison, float %i.il, i64 0
  %44 = shufflevector <4 x float> %43, <4 x float> poison, <4 x i32> zeroinitializer
  %45 = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %40, <4 x float> %44, <4 x float> %i.gr) ; 4 uses
  %46 = fsub nsz float %33, %21
  %47 = fadd nsz float %23, %46
  %i.im = extractelement <4 x float> %45, i64 0
  %48 = extractelement <4 x float> %45, i64 1
  %49 = extractelement <4 x float> %45, i64 2
  %50 = extractelement <4 x float> %45, i64 3
  br label %bb.av

bb.av:                                            ; preds = %.critedge.i, %bb.au
  %.sroa.01.04.i = phi ptr [ %.val421, %bb.au ], [ %i.jd, %.critedge.i ] ; 6 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i, i64 8
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i, i64 12
  %i.ip = load float, ptr %i.io, align 4, !tbaa !16 ; 2 uses
  %i.iq = fcmp nsz ole float %23, %i.ip
  %i.ir = fcmp nsz ogt float %47, %i.ip
  %or.cond.i = and i1 %i.iq, %i.ir
  br i1 %or.cond.i, label %bb.aw, label %.critedge.i

bb.aw:                                            ; preds = %bb.av
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i, i64 20
  %i.it = load float, ptr %i.is, align 4, !tbaa !13
  %i.iu = fcmp nsz olt float %i.im, %i.it
  br i1 %i.iu, label %bb.ax, label %.critedge.i

bb.ax:                                            ; preds = %bb.aw
  %i.iv = load float, ptr %i.in, align 4, !tbaa !14
  %i.iw = fcmp nsz ogt float %49, %i.iv
  br i1 %i.iw, label %bb.ay, label %.critedge.i

bb.ay:                                            ; preds = %bb.ax
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i, i64 28
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !17
  %i.iz = fcmp nsz olt float %48, %i.iy
  br i1 %i.iz, label %bb.az, label %.critedge.i

bb.az:                                            ; preds = %bb.ay
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i, i64 16
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !18
  %i.jc = fcmp nsz ogt float %50, %i.jb
  br i1 %i.jc, label %_Z23wouldCollideWithCeilingRKSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EERKN4core8aabbox3dIfEEff.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i, i64 40 ; 2 uses
  %.not.not.i = icmp eq ptr %i.jd, %.val422
  br i1 %.not.not.i, label %_Z23wouldCollideWithCeilingRKSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EERKN4core8aabbox3dIfEEff.exit, label %bb.av

_Z23wouldCollideWithCeilingRKSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EERKN4core8aabbox3dIfEEff.exit: ; preds = %.critedge.i, %bb.az, %31, %bb.at
  %.0376 = phi i1 [ false, %bb.at ], [ false, %31 ], [ false, %bb.az ], [ true, %.critedge.i ] ; 3 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.ik, i64 38
  %i.jf = load i8, ptr %i.je, align 2, !tbaa !66
  %i.jg = uitofp nsz i8 %i.jf to float
  %i.jh = fdiv nsz float %i.jg, -1.000000e+02     ; 4 uses
  %i.ji = fcmp nsz olt float %.2371, 0.000000e+00
  br i1 %i.ji, label %bb.ba, label %bb.bf

bb.ba:                                            ; preds = %_Z23wouldCollideWithCeilingRKSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EERKN4core8aabbox3dIfEEff.exit
  br i1 %.0376, label %.thread782, label %bb.bb

.thread782:                                       ; preds = %bb.ba
  %.sroa.0.0.copyload1249 = load <3 x float>, ptr %7, align 4
  br label %bb.bi

bb.bb:                                            ; preds = %bb.ba
  switch i8 %.2368, label %default.unreachable [
    i8 0, label %bb.bc
    i8 1, label %bb.bd
    i8 2, label %bb.be
  ]

bb.bc:                                            ; preds = %bb.bb
  %.sroa.0713.0.vec.extract719 = extractelement <2 x float> %.sroa.0713.0876, i64 0
  %i.jj = extractelement <2 x float> %i.gp, i64 0
  %i.jk = call nsz float @llvm.fmuladd.f32(float %.sroa.0713.0.vec.extract719, float %.2371, float %i.jj)
  store float %i.jk, ptr %6, align 4, !tbaa !35
  br label %.thread

bb.bd:                                            ; preds = %bb.bb
  %.sroa.0713.4.vec.extract = extractelement <2 x float> %.sroa.0713.0876, i64 1
  %i.jl = call nsz float @llvm.fmuladd.f32(float %.sroa.0713.4.vec.extract, float %.2371, float %20)
  store float %i.jl, ptr %i.dd, align 4, !tbaa !36
  br label %.thread

bb.be:                                            ; preds = %bb.bb
  %i.jm = call nsz float @llvm.fmuladd.f32(float %.sroa.21.0875, float %.2371, float %i.gq)
  store float %i.jm, ptr %i.de, align 4, !tbaa !37
  br label %.thread

bb.bf:                                            ; preds = %_Z23wouldCollideWithCeilingRKSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EERKN4core8aabbox3dIfEEff.exit
  %i.jn = fcmp nsz ogt float %.2371, 0.000000e+00
  br i1 %i.jn, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.jo = fmul nsz float %.sroa.15767.0878, 5.000000e-01
  %i.jp = fmul nsz float %i.jo, %.2371
  %i.jq = load float, ptr %i.bu, align 4, !tbaa !37
  %i.jr = fadd nsz float %i.jp, %i.jq
  %i.js = fmul nsz float %.2371, %i.jr
  %i.jt = fmul nsz <2 x float> %.sroa.0744.0877, splat (float 5.000000e-01)
  %i.ju = insertelement <2 x float> poison, float %.2371, i64 0
  %i.jv = shufflevector <2 x float> %i.ju, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.jw = fmul nsz <2 x float> %i.jt, %i.jv
  %i.jx = load <2 x float>, ptr %7, align 4, !tbaa !19
  %i.jy = fadd nsz <2 x float> %i.jw, %i.jx
  %i.jz = fmul nsz <2 x float> %i.jv, %i.jy
  %i.ka = fadd nsz <2 x float> %i.gp, %i.jz
  store <2 x float> %i.ka, ptr %6, align 4, !tbaa !19
  %i.kb = fadd nsz float %i.gq, %i.js
  store float %i.kb, ptr %i.de, align 4, !tbaa !37
  %i.kc = fmul nsz float %.sroa.15767.0878, %.2371
  %i.kd = fmul nsz <2 x float> %.sroa.0744.0877, %i.jv
  %i.ke = load <2 x float>, ptr %7, align 4, !tbaa !19
  %i.kf = fadd nsz <2 x float> %i.kd, %i.ke       ; 4 uses
  store <2 x float> %i.kf, ptr %7, align 4, !tbaa !19
  %i.kg = load float, ptr %i.bu, align 4, !tbaa !37
  %i.kh = fadd nsz float %i.kc, %i.kg             ; 3 uses
  %i.ki = fcmp nsz olt float %i.kh, -5.000000e+03
  %i.kj = fcmp nsz ogt float %i.kh, 5.000000e+03
  %..i6.i558 = select nsz i1 %i.kj, float 5.000000e+03, float %i.kh
  %i.kk = fcmp nsz olt <2 x float> %i.kf, splat (float -5.000000e+03)
  %i.kl = fcmp nsz ogt <2 x float> %i.kf, splat (float 5.000000e+03)
  %i.km = select <2 x i1> %i.kl, <2 x float> splat (float 5.000000e+03), <2 x float> %i.kf
  %i.kn = fmul nsz <2 x float> %i.km, splat (float 1.000000e+04)
  %i.ko = call nsz <2 x float> @llvm.trunc.v2f32(<2 x float> %i.kn)
  %i.kp = fdiv nsz <2 x float> %i.ko, splat (float 1.000000e+04)
  %i.kq = select <2 x i1> %i.kk, <2 x float> splat (float -5.000000e+03), <2 x float> %i.kp
  %i.kr = fmul nsz float %..i6.i558, 1.000000e+04
  %i.ks = call nsz float @llvm.trunc.f32(float %i.kr)
  %i.kt = fdiv nsz float %i.ks, 1.000000e+04
  %i.ku = select i1 %i.ki, float -5.000000e+03, float %i.kt
  store <2 x float> %i.kq, ptr %7, align 4
  store float %i.ku, ptr %i.bu, align 4, !tbaa !19
  %i.kv = fsub nsz float %.1880, %.2371
  br label %bb.bh

default.unreachable:                              ; preds = %bb.bb
  unreachable

.thread:                                          ; preds = %bb.bd, %bb.bc, %bb.be
  %.sroa.0.0.copyload1248 = load <3 x float>, ptr %7, align 4
  br label %bb.bl

bb.bh:                                            ; preds = %bb.bf, %bb.bg
  %.2 = phi nsz float [ %.1880, %bb.bf ], [ %i.kv, %bb.bg ] ; 2 uses
  %.sroa.0.0.copyload = load <3 x float>, ptr %7, align 4 ; 2 uses
  br i1 %.0376, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %.thread782, %bb.bh
  %.sroa.0.0 = phi nsz <3 x float> [ %.sroa.0.0.copyload1249, %.thread782 ], [ %.sroa.0.0.copyload, %bb.bh ] ; 3 uses
  %.2788 = phi float [ %.1880, %.thread782 ], [ %.2, %bb.bh ] ; 4 uses
  switch i8 %12, label %bb.bl [
    i8 0, label %.thread789
    i8 1, label %bb.bj
    i8 2, label %bb.bk
  ]

bb.bj:                                            ; preds = %bb.bi
  %i.kw = load float, ptr %i.bt, align 4, !tbaa !36
  %i.kx = fcmp nsz ugt float %i.kw, 0.000000e+00
  br i1 %i.kx, label %bb.bl, label %.thread789

bb.bk:                                            ; preds = %bb.bi
  %i.ky = load float, ptr %i.bt, align 4, !tbaa !36
  %i.kz = fcmp nsz oeq float %i.ky, 0.000000e+00
  br i1 %i.kz, label %.thread789, label %bb.bl

.thread789:                                       ; preds = %bb.bj, %bb.bk, %bb.bi
  %i.la = getelementptr inbounds nuw i8, ptr %i.ik, i64 39 ; 2 uses
  %i.lb = load i8, ptr %i.la, align 1
  %i.lc = or i8 %i.lb, 2
  store i8 %i.lc, ptr %i.la, align 1
  br label %_ZNSt6vectorI13CollisionInfoSaIS0_EE9push_backERKS0_.exit

bb.bl:                                            ; preds = %bb.bj, %.thread, %bb.bi, %bb.bk, %bb.bh
  %.sroa.0.1 = phi nsz <3 x float> [ %.sroa.0.0, %bb.bi ], [ %.sroa.0.0, %bb.bj ], [ %.sroa.0.0, %bb.bk ], [ %.sroa.0.0.copyload1248, %.thread ], [ %.sroa.0.0.copyload, %bb.bh ] ; 2 uses
  %.2781 = phi float [ %.2788, %bb.bi ], [ %.2788, %bb.bj ], [ %.2788, %bb.bk ], [ %.1880, %.thread ], [ %.2, %bb.bh ] ; 3 uses
  %i.ld = fpext nsz float %i.jh to double
  %i.le = fcmp nsz olt double %i.ld, -1.000000e-04 ; 3 uses
  switch i8 %.2368, label %bb.bu [
    i8 0, label %bb.bm
    i8 1, label %bb.bq
  ]

bb.bm:                                            ; preds = %bb.bl
  br i1 %i.le, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %i.lf = load float, ptr %7, align 4, !tbaa !35  ; 2 uses
  %i.lg = call nsz float @llvm.fabs.f32(float %i.lf)
  %i.lh = fcmp nsz ogt float %i.lg, 3.000000e+01
  br i1 %i.lh, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.li = fmul nsz float %i.jh, %i.lf
  store float %i.li, ptr %7, align 4, !tbaa !35
  br label %bb.by

bb.bp:                                            ; preds = %bb.bn, %bb.bm
  store float 0.000000e+00, ptr %7, align 4, !tbaa !35
  %.sroa.0744.0.vec.insert = insertelement <2 x float> %.sroa.0744.0877, float 0.000000e+00, i64 0
  br label %bb.by

bb.bq:                                            ; preds = %bb.bl
  %i.lj = load float, ptr %i.bt, align 4, !tbaa !36 ; 3 uses
  %i.lk = call nsz float @llvm.fabs.f32(float %i.lj)
  %i.ll = fcmp nsz ogt float %i.lk, 3.000000e+01
  %or.cond1081 = select i1 %i.le, i1 %i.ll, i1 false
  br i1 %or.cond1081, label %bb.br, label %thread-pre-split

bb.br:                                            ; preds = %bb.bq
  %i.lm = fmul nsz float %i.jh, %i.lj
  store float %i.lm, ptr %i.bt, align 4, !tbaa !36
  br label %bb.by

thread-pre-split:                                 ; preds = %bb.bq
  %i.ln = fcmp nsz olt float %i.lj, 0.000000e+00
  br i1 %i.ln, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %thread-pre-split
  %.val429 = load ptr, ptr %i.ik, align 8, !tbaa !67
  %i.lo = icmp ne ptr %.val429, null
  %i.lp = zext i1 %i.lo to i8
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %thread-pre-split
  %i.lq = phi i8 [ %i.lp, %bb.bs ], [ %i.gn, %thread-pre-split ]
  %i.lr = phi i8 [ 1, %bb.bs ], [ %i.gm, %thread-pre-split ]
  store float 0.000000e+00, ptr %i.bt, align 4, !tbaa !36
  %.sroa.0744.4.vec.insert = insertelement <2 x float> %.sroa.0744.0877, float 0.000000e+00, i64 1
  br label %bb.by

bb.bu:                                            ; preds = %bb.bl
  br i1 %i.le, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  %i.ls = load float, ptr %i.bu, align 4, !tbaa !37 ; 2 uses
  %i.lt = call nsz float @llvm.fabs.f32(float %i.ls)
  %i.lu = fcmp nsz ogt float %i.lt, 3.000000e+01
  br i1 %i.lu, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.lv = fmul nsz float %i.jh, %i.ls
  store float %i.lv, ptr %i.bu, align 4, !tbaa !37
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv, %bb.bu
  store float 0.000000e+00, ptr %i.bu, align 4, !tbaa !37
  br label %bb.by

bb.by:                                            ; preds = %bb.bp, %bb.bo, %bb.bw, %bb.bx, %bb.br, %bb.bt
  %i.lw = phi i8 [ %i.gn, %bb.bw ], [ %i.gn, %bb.bx ], [ %i.gn, %bb.bo ], [ %i.gn, %bb.bp ], [ %i.gn, %bb.br ], [ %i.lq, %bb.bt ] ; 5 uses
  %i.lx = phi i8 [ %i.gm, %bb.bw ], [ %i.gm, %bb.bx ], [ %i.gm, %bb.bo ], [ %i.gm, %bb.bp ], [ %i.gm, %bb.br ], [ %i.lr, %bb.bt ] ; 5 uses
  %.sroa.0744.1 = phi nsz <2 x float> [ %.sroa.0744.0877, %bb.bw ], [ %.sroa.0744.0877, %bb.bx ], [ %.sroa.0744.0877, %bb.bo ], [ %.sroa.0744.0.vec.insert, %bb.bp ], [ %.sroa.0744.0877, %bb.br ], [ %.sroa.0744.4.vec.insert, %bb.bt ] ; 3 uses
  %.sroa.15767.1 = phi nsz float [ %.sroa.15767.0878, %bb.bw ], [ 0.000000e+00, %bb.bx ], [ %.sroa.15767.0878, %bb.bo ], [ %.sroa.15767.0878, %bb.bp ], [ %.sroa.15767.0878, %bb.br ], [ %.sroa.15767.0878, %bb.bt ] ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ik, i64 39
  %i.lz = load i8, ptr %i.ly, align 1
  %i.ma = trunc i8 %i.lz to i1
  %or.cond = or i1 %.0376, %i.ma
  br i1 %or.cond, label %_ZNSt6vectorI13CollisionInfoSaIS0_EE9push_backERKS0_.exit, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %.val431 = load ptr, ptr %i.ik, align 8, !tbaa !67 ; 3 uses
  %i.mb = icmp ne ptr %.val431, null
  %i.mc = zext i1 %i.mb to i8                     ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.ik, i64 32
  %.sroa.9652.2.copyload = load i16, ptr %i.md, align 8, !tbaa !68 ; 2 uses
  %.sroa.11.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ik, i64 34
  %.sroa.11.2.copyload = load i16, ptr %.sroa.11.2..sroa_idx, align 2, !tbaa !68 ; 2 uses
  %.sroa.12.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ik, i64 36
  %.sroa.12.2.copyload = load i16, ptr %.sroa.12.2..sroa_idx, align 4, !tbaa !68 ; 2 uses
  %.sroa.15661.sroa.0.0.copyload1247 = load <3 x float>, ptr %6, align 4 ; 2 uses
  %.sroa.17.sroa.0.0.copyload1244 = load <3 x float>, ptr %7, align 4 ; 2 uses
  %i.me = load ptr, ptr %i.fe, align 8, !tbaa !125
  %.not.i570 = icmp eq ptr %i.gl, %i.me
  br i1 %.not.i570, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  store i8 %i.mc, ptr %i.gl, align 8, !tbaa !127
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gl, i64 1
  store i8 %.2368, ptr %.sroa.7.0..sroa_idx, align 1, !tbaa !129
end_hunk_0
begin_hunk_1_@_ZL16add_object_boxesP11EnvironmentRKN4core8aabbox3dIfEEfNS1_8vector3dIfEES7_P12ActiveObjectRSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaISC_EE:bb.a
  %i.p = fadd nsz float %i.o, 1.500000e+01
  %i.q = fcmp nsz olt float %i.d, 0.000000e+00
  %i.r = select i1 %i.q, float 0.000000e+00, float %i.d
  %i.s = insertelement <2 x float> poison, float %2, i64 0
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> zeroinitializer
  %i.u = fmul nsz <2 x float> %i.t, %5            ; 4 uses
  %i.v = load <2 x float>, ptr %1, align 4, !tbaa !19
  %i.w = fadd nsz <2 x float> %3, %i.v
  %i.x = fadd nsz <2 x float> %i.w, splat (float -1.500000e+01)
  %i.y = fcmp nsz ogt <2 x float> %i.u, zeroinitializer
  %i.z = select <2 x i1> %i.y, <2 x float> zeroinitializer, <2 x float> %i.u
  %i.aa = fadd nsz <2 x float> %i.z, %i.x
  %i.ab = load <2 x float>, ptr %i.l, align 4, !tbaa !19
  %i.ac = fadd nsz <2 x float> %3, %i.ab
  %i.ad = fadd nsz <2 x float> %i.ac, splat (float 1.500000e+01)
  %i.ae = fcmp nsz olt <2 x float> %i.u, zeroinitializer
  %i.af = select <2 x i1> %i.ae, <2 x float> zeroinitializer, <2 x float> %i.u
  %i.ag = fadd nsz <2 x float> %i.af, %i.ad
  %i.ah = fadd nsz float %i.r, %i.p
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #6
  store <2 x float> %i.aa, ptr %11, align 8
  %.sroa.5105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store float %i.k, ptr %.sroa.5105.0..sroa_idx, align 8, !tbaa !19
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 12
  store <2 x float> %i.ag, ptr %i.ai, align 4
  %.sroa.591.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 20
  store float %i.ah, ptr %.sroa.591.0..sroa_idx, align 4, !tbaa !19
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %7, ptr %12, align 8, !tbaa !69
  %.sroa.5113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %9, ptr %.sroa.5113.0..sroa_idx, align 8, !tbaa !83
  store ptr @"_ZNSt17_Function_handlerIFbP18ServerActiveObjectEZL16add_object_boxesP11EnvironmentRKN4core8aabbox3dIfEEfNS5_8vector3dIfEESB_P12ActiveObjectRSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaISG_EEE3$_0E9_M_invokeERKSt9_Any_dataOS1_", ptr %i.ak, align 8, !tbaa !236
  store ptr @"_ZNSt17_Function_handlerIFbP18ServerActiveObjectEZL16add_object_boxesP11EnvironmentRKN4core8aabbox3dIfEEfNS5_8vector3dIfEESB_P12ActiveObjectRSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaISG_EEE3$_0E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation", ptr %i.aj, align 8, !tbaa !84
  invoke void @_ZN17ServerEnvironment16getObjectsInAreaERSt6vectorIP18ServerActiveObjectSaIS2_EERKN4core8aabbox3dIfEESt8functionIFbS2_EE(ptr noundef nonnull align 8 dereferenceable(3560) %0, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 4 dereferenceable(24) %11, ptr noundef nonnull align 8 %12)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !84 ; 2 uses
  %.not.i = icmp eq ptr %i.al, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = invoke noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #27
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #6
  %i.ap = load ptr, ptr %10, align 8, !tbaa !239  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIP18ServerActiveObjectSaIS1_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !240
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.au) #24
  br label %_ZNSt6vectorIP18ServerActiveObjectSaIS1_EED2Ev.exit

_ZNSt6vectorIP18ServerActiveObjectSaIS1_EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  br label %.thread

bb.h:                                             ; preds = %bb.c
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = load ptr, ptr %i.aj, align 8, !tbaa !84 ; 2 uses
  %.not.i78 = icmp eq ptr %i.aw, null
  br i1 %.not.i78, label %_ZNSt14_Function_baseD2Ev.exit79, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = invoke noundef zeroext i1 %i.aw(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit79 unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #27
  unreachable

_ZNSt14_Function_baseD2Ev.exit79:                 ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #6
  %i.ba = load ptr, ptr %10, align 8, !tbaa !239  ; 3 uses
  %.not.i.i.i80 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i80, label %_ZNSt6vectorIP18ServerActiveObjectSaIS1_EED2Ev.exit81, label %bb.k

bb.k:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit79
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !240
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bf) #24
  br label %_ZNSt6vectorIP18ServerActiveObjectSaIS1_EED2Ev.exit81

_ZNSt6vectorIP18ServerActiveObjectSaIS1_EED2Ev.exit81: ; preds = %_ZNSt14_Function_baseD2Ev.exit79, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #6
  resume { ptr, i32 } %i.av

.thread:                                          ; preds = %bb.b, %bb.a, %_ZNSt6vectorIP18ServerActiveObjectSaIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #6
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13ScopeProfilerD2Ev(ptr noundef nonnull align 8 dead_on_return(50) dereferenceable(50) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN13ScopeProfiler4stopEv(ptr noundef nonnull align 8 dereferenceable(50) %0) #6
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !32
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_Z28collision_check_intersectionP11EnvironmentP8IGameDefRKN4core8aabbox3dIfEERKNS3_8vector3dIfEEP12ActiveObjectb(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %3, ptr noundef %4, i1 noundef zeroext %5) local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %6 = alloca %class.ScopeProfiler, align 8       ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::vector.4", align 8     ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  %i.b = load ptr, ptr @g_profiler, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !24
  %i.e = icmp eq ptr %i.d, getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV17ServerEnvironment, i64 16)
  br i1 %i.e, label %.noexc.i, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %.noexc.i

.noexc.i:                                         ; preds = %bb.c, %bb.b
  %.not = phi ptr [ @.str.4, %bb.b ], [ @.str.5, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.f, ptr %7, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i64 38, ptr %i.a, align 8, !tbaa !29
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.g, ptr %7, align 8, !tbaa !31
  %i.h = load i64, ptr %i.a, align 8, !tbaa !29   ; 3 uses
  store i64 %i.h, ptr %i.f, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(38) %i.g, ptr noundef nonnull align 1 dereferenceable(38) %.not, i64 38, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.h, ptr %i.i, align 8, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  store i8 0, ptr %i.j, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  invoke void @_ZN13ScopeProfilerC1EP8ProfilerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17ScopeProfilerType13TimePrecision(ptr noundef nonnull align 8 dereferenceable(50) %6, ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(32) %7, i8 noundef zeroext 2, i8 noundef signext 2)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %.noexc
  %i.k = load ptr, ptr %7, align 8, !tbaa !31     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.f
  br i1 %i.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.m = load i64, ptr %i.f, align 8, !tbaa !32
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !37
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.w = load float, ptr %i.v, align 4, !tbaa !36
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.y = load float, ptr %i.x, align 4, !tbaa !37
  %i.z = load <2 x float>, ptr %2, align 4, !tbaa !19
  %i.aa = load <3 x float>, ptr %3, align 4, !tbaa !19 ; 2 uses
  %i.ab = shufflevector <3 x float> %i.aa, <3 x float> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 1>
  %i.ac = insertelement <4 x float> poison, float %i.s, i64 2
  %i.ad = insertelement <4 x float> %i.ac, float %i.w, i64 3
  %i.ae = shufflevector <2 x float> %i.z, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.af = shufflevector <4 x float> %i.ae, <4 x float> %i.ad, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ag = fadd nsz <4 x float> %i.ab, %i.af       ; 2 uses
  %i.ah = fcmp nsz ogt <4 x float> %i.ag, zeroinitializer
  %i.ai = select <4 x i1> %i.ah, <4 x float> splat (float 5.000000e+00), <4 x float> splat (float -5.000000e+00)
  %i.aj = fadd nsz <4 x float> %i.ag, %i.ai
  %i.ak = fdiv nsz <4 x float> %i.aj, splat (float 1.000000e+01) ; 2 uses
  %i.al = shufflevector <3 x float> %i.aa, <3 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.am = insertelement <2 x float> poison, float %i.u, i64 0
  %i.an = insertelement <2 x float> %i.am, float %i.y, i64 1
  %i.ao = fadd nsz <2 x float> %i.al, %i.an       ; 2 uses
  %i.ap = fcmp nsz ogt <2 x float> %i.ao, zeroinitializer
  %i.aq = select <2 x i1> %i.ap, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.ar = fadd nsz <2 x float> %i.ao, %i.aq
  %i.as = fdiv nsz <2 x float> %i.ar, splat (float 1.000000e+01)
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.au = shufflevector <4 x float> %i.ak, <4 x float> %i.at, <4 x i32> <i32 1, i32 0, i32 2, i32 4>
  %i.av = fptosi <4 x float> %i.au to <4 x i16>
  %i.aw = add <4 x i16> %i.av, <i16 -1, i16 -1, i16 -1, i16 1> ; 2 uses
  %.sroa.0.0.insert.insert.i100.v = shufflevector <4 x i16> %i.aw, <4 x i16> poison, <3 x i32> <i32 0, i32 1, i32 2>
  %.sroa.0.0.insert.insert.i100 = bitcast <3 x i16> %.sroa.0.0.insert.insert.i100.v to i48
  %i.ax = shufflevector <4 x float> %i.ak, <4 x float> %i.at, <2 x i32> <i32 3, i32 5>
  %i.ay = fptosi <2 x float> %i.ax to <2 x i16>
  %i.az = add <2 x i16> %i.ay, splat (i16 1)
  %.sroa.2.0.insert.insert.i118.v = shufflevector <2 x i16> %i.az, <2 x i16> <i16 0, i16 poison>, <3 x i32> <i32 2, i32 0, i32 1>
  %.sroa.2.0.insert.insert.i118 = bitcast <3 x i16> %.sroa.2.0.insert.insert.i118.v to i48
  %i.ba = extractelement <4 x i16> %i.aw, i64 3
  %.sroa.0.0.insert.ext.i119 = zext i16 %i.ba to i48
  %.sroa.0.0.insert.insert.i120 = or disjoint i48 %.sroa.2.0.insert.insert.i118, %.sroa.0.0.insert.ext.i119
  %i.bb = invoke fastcc noundef zeroext i1 @_ZL19add_area_node_boxesN4core8vector3dIsEES1_P8IGameDefP11EnvironmentRSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS8_EE(i48 %.sroa.0.0.insert.insert.i100, i48 %.sroa.0.0.insert.insert.i120, ptr noundef %1, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.h unwind label %bb.g

bb.e:                                             ; preds = %.noexc.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

bb.f:                                             ; preds = %.noexc
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = load ptr, ptr %7, align 8, !tbaa !31    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.f
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121: ; preds = %bb.f
  %i.bg = load i64, ptr %i.f, align 8, !tbaa !32
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121, %bb.e
  %.pn = phi { ptr, i32 } [ %i.bc, %bb.e ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121 ], [ %i.bd, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  br label %bb.t

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  br i1 %i.bb, label %bb.i, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.h
  %.val.i.pre = load ptr, ptr %8, align 8, !tbaa !58
  br label %.critedge

bb.i:                                             ; preds = %bb.h
  br i1 %5, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %.sroa.015.0.copyload = load <2 x float>, ptr %3, align 4
  %.sroa.216.0.copyload = load float, ptr %i.q, align 4, !tbaa !19
  invoke fastcc void @_ZL16add_object_boxesP11EnvironmentRKN4core8aabbox3dIfEEfNS1_8vector3dIfEES7_P12ActiveObjectRSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaISC_EE(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(24) %2, float noundef 0.000000e+00, <2 x float> %.sroa.015.0.copyload, float %.sroa.216.0.copyload, <2 x float> zeroinitializer, float 0.000000e+00, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.l:                                             ; preds = %bb.j, %bb.i
  %.sroa.0140.0.copyload = load float, ptr %2, align 4, !tbaa !19
  %.sroa.7.0.copyload = load float, ptr %i.p, align 4, !tbaa !19
  %.sroa.10.0.copyload = load float, ptr %i.r, align 4, !tbaa !19
  %.sroa.13.0.copyload = load float, ptr %i.t, align 4, !tbaa !19
  %i.bk = load float, ptr %3, align 4, !tbaa !35  ; 2 uses
  %i.bl = fadd nsz float %i.bk, 1.000000e+00
  %9 = fadd nsz float %.sroa.0140.0.copyload, %i.bl
  %i.bm = fadd nsz float %i.bk, -1.000000e+00
  %10 = load <2 x float>, ptr %i.v, align 4, !tbaa !19
  %11 = load <2 x float>, ptr %i.o, align 4, !tbaa !19 ; 3 uses
  %12 = extractelement <2 x float> %11, i64 0
  %i.bn = fadd nsz float %12, 1.000000e+00
  %13 = extractelement <2 x float> %11, i64 1
  %i.bo = fadd nsz float %13, 1.000000e+00
  %i.bp = fadd nsz float %.sroa.7.0.copyload, %i.bn
  %i.bq = fadd nsz float %.sroa.10.0.copyload, %i.bo
  %14 = fadd nsz <2 x float> %11, splat (float -1.000000e+00)
  %i.br = fadd nsz float %.sroa.13.0.copyload, %i.bm
  %15 = fadd nsz <2 x float> %10, %14             ; 2 uses
  %.val90 = load ptr, ptr %8, align 8, !tbaa !70  ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.val = load ptr, ptr %i.bs, align 8, !tbaa !70 ; 2 uses
  %.not162163 = icmp eq ptr %.val90, %.val
  br i1 %.not162163, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.l
  %16 = extractelement <2 x float> %15, i64 0
  %17 = extractelement <2 x float> %15, i64 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNK4core8aabbox3dIfE17intersectsWithBoxERKS1_.exit.thread
  %.sroa.0136.0164 = phi ptr [ %i.cl, %_ZNK4core8aabbox3dIfE17intersectsWithBoxERKS1_.exit.thread ], [ %.val90, %.lr.ph.preheader ] ; 7 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0136.0164, i64 8
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !14
  %i.bv = fcmp nsz ugt float %i.bu, %i.br
  br i1 %i.bv, label %_ZNK4core8aabbox3dIfE17intersectsWithBoxERKS1_.exit.thread, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0136.0164, i64 12
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !16
  %i.by = fcmp nsz ugt float %i.bx, %16
  br i1 %i.by, label %_ZNK4core8aabbox3dIfE17intersectsWithBoxERKS1_.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0136.0164, i64 16
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !18
  %i.cb = fcmp nsz ugt float %i.ca, %17
  br i1 %i.cb, label %_ZNK4core8aabbox3dIfE17intersectsWithBoxERKS1_.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0136.0164, i64 20
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !13
  %i.ce = fcmp nsz ult float %i.cd, %9
  br i1 %i.ce, label %_ZNK4core8aabbox3dIfE17intersectsWithBoxERKS1_.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0136.0164, i64 24
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !15
  %i.ch = fcmp nsz ult float %i.cg, %i.bp
  br i1 %i.ch, label %_ZNK4core8aabbox3dIfE17intersectsWithBoxERKS1_.exit.thread, label %_ZNK4core8aabbox3dIfE17intersectsWithBoxERKS1_.exit

_ZNK4core8aabbox3dIfE17intersectsWithBoxERKS1_.exit: ; preds = %bb.p
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0136.0164, i64 28
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !17
  %i.ck = fcmp nsz ult float %i.cj, %i.bq
  br i1 %i.ck, label %_ZNK4core8aabbox3dIfE17intersectsWithBoxERKS1_.exit.thread, label %.critedge

_ZNK4core8aabbox3dIfE17intersectsWithBoxERKS1_.exit.thread: ; preds = %.lr.ph, %bb.m, %bb.n, %bb.o, %bb.p, %_ZNK4core8aabbox3dIfE17intersectsWithBoxERKS1_.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0136.0164, i64 40 ; 2 uses
  %.not162 = icmp eq ptr %i.cl, %.val
  br i1 %.not162, label %.critedge, label %.lr.ph

.critedge:                                        ; preds = %_ZNK4core8aabbox3dIfE17intersectsWithBoxERKS1_.exit.thread, %_ZNK4core8aabbox3dIfE17intersectsWithBoxERKS1_.exit, %..critedge_crit_edge, %bb.l
  %.val.i = phi ptr [ %.val.i.pre, %..critedge_crit_edge ], [ %.val90, %bb.l ], [ %.val90, %_ZNK4core8aabbox3dIfE17intersectsWithBoxERKS1_.exit ], [ %.val90, %_ZNK4core8aabbox3dIfE17intersectsWithBoxERKS1_.exit.thread ] ; 3 uses
  %.5 = phi i1 [ true, %..critedge_crit_edge ], [ false, %bb.l ], [ false, %_ZNK4core8aabbox3dIfE17intersectsWithBoxERKS1_.exit.thread ], [ true, %_ZNK4core8aabbox3dIfE17intersectsWithBoxERKS1_.exit ]
  %.not.i.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %.critedge
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.val1.i = load ptr, ptr %i.cm, align 8, !tbaa !71
  %i.cn = ptrtoint ptr %.val1.i to i64
  %i.co = ptrtoint ptr %.val.i to i64
  %i.cp = sub i64 %i.cn, %i.co
  call void @_ZdlPvm(ptr noundef nonnull %.val.i, i64 noundef %i.cp) #24
  br label %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EED2Ev.exit

_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EED2Ev.exit: ; preds = %.critedge, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #6
  call void @_ZN13ScopeProfiler4stopEv(ptr noundef nonnull align 8 dereferenceable(50) %6) #6
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !31 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZN13ScopeProfilerD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EED2Ev.exit
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !32
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #24
  br label %_ZN13ScopeProfilerD2Ev.exit

_ZN13ScopeProfilerD2Ev.exit:                      ; preds = %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  ret i1 %.5

bb.r:                                             ; preds = %bb.g, %bb.k
  %.pn86.pn = phi { ptr, i32 } [ %i.bi, %bb.g ], [ %i.bj, %bb.k ]
  %.val.i132 = load ptr, ptr %8, align 8, !tbaa !58 ; 3 uses
  %.not.i.i.i133 = icmp eq ptr %.val.i132, null
  br i1 %.not.i.i.i133, label %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EED2Ev.exit135, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.val1.i134 = load ptr, ptr %i.cw, align 8, !tbaa !71
  %i.cx = ptrtoint ptr %.val1.i134 to i64
  %i.cy = ptrtoint ptr %.val.i132 to i64
  %i.cz = sub i64 %i.cx, %i.cy
  call void @_ZdlPvm(ptr noundef nonnull %.val.i132, i64 noundef %i.cz) #24
  br label %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EED2Ev.exit135

_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EED2Ev.exit135: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #6
  call void @_ZN13ScopeProfilerD2Ev(ptr noundef nonnull align 8 dead_on_return(50) dereferenceable(50) %6) #6
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EED2Ev.exit135, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123
  %.pn86.pn.pn = phi { ptr, i32 } [ %.pn86.pn, %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EED2Ev.exit135 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  resume { ptr, i32 } %.pn86.pn.pn
}

; Function Attrs: nofree nounwind uwtable
define internal void @__cxx_global_var_init() #10 section ".text.startup" comdat($_ZN13ModifySafeMapItSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS1_EEE10null_valueE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN13ModifySafeMapItSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS1_EEE10null_valueE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN13ModifySafeMapItSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS1_EEE10null_valueE, align 8
  %i.c = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS0_EED2Ev, ptr nonnull @_ZN13ModifySafeMapItSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS1_EEE10null_valueE, ptr nonnull @__dso_handle) #6 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !86     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteI18ServerActiveObjectEclEPS0_.exit

_ZNKSt14default_deleteI18ServerActiveObjectEclEPS0_.exit: ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(324) %i.a) #6, !inline_history !241
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteI18ServerActiveObjectEclEPS0_.exit, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #11

declare void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.trunc.f32(float) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !81     ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !242
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #24
  br label %_ZNSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

declare noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144), i48) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

declare noundef zeroext i8 @_ZNK7MapNode12getNeighborsEN4core8vector3dIsEEP3Map(ptr noundef nonnull align 4 dereferenceable(4), i48, ptr noundef) local_unnamed_addr #4

declare void @_ZNK7MapNode17getCollisionBoxesEPK14NodeDefManagerPSt6vectorIN4core8aabbox3dIfEESaIS6_EEh(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #12 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #6 ; 0 uses
  tail call void @_ZSt9terminatev() #27
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #13

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #16

declare void @_ZN8MapBlock19actuallyUpdateIsAirEv(ptr noundef nonnull align 8 dereferenceable(328)) local_unnamed_addr #4

declare noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN17ServerEnvironment16getObjectsInAreaERSt6vectorIP18ServerActiveObjectSaIS2_EERKN4core8aabbox3dIfEESt8functionIFbS2_EE(ptr noundef nonnull align 8 dereferenceable(3560) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef align 8 %3) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::function.277", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !84   ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFbP18ServerActiveObjectEEC2ERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = invoke noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.c, align 8, !tbaa !83
  store <2 x ptr> %i.f, ptr %i.b, align 8, !tbaa !83
  br label %_ZNSt8functionIFbP18ServerActiveObjectEEC2ERKS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !84   ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %common.resume unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
end_hunk_1
begin_hunk_2_@"_ZNSt17_Function_handlerIFbP18ServerActiveObjectEZL16add_object_boxesP11EnvironmentRKN4core8aabbox3dIfEEfNS5_8vector3dIfEESB_P12ActiveObjectRSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaISG_EEE3$_0E9_M_invokeERKSt9_Any_dataOS1_":bb.a
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #25
  unreachable

_ZNKSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.i
  %i.am = sdiv exact i64 %i.ak, 40                ; 3 uses
  %i.an = icmp eq ptr %i.y, %.val.i.i.i.i.i.i     ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = select i1 %i.an, i64 1, i64 %i.am
  %i.ao = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.am ; 2 uses
  %i.ap = icmp ult i64 %i.ao, %i.am
  %i.aq = call i64 @llvm.umin.i64(i64 %i.ao, i64 230584300921369395)
  %i.ar = select i1 %i.ap, i64 230584300921369395, i64 %i.aq ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.ar, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.as = mul nuw nsw i64 %i.ar, 40
  %i.at = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #26 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ak ; 3 uses
  store ptr %.val, ptr %i.au, align 8, !tbaa !67
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull readonly align 4 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !60
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  store i64 0, ptr %i.aw, align 8
  br i1 %i.an, label %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit38.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.03.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.at, %_ZNKSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ] ; 2 uses
  %.092.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i, %_ZNKSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.03.i.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(40) %.092.i.i.i.i.i.i.i.i.i, i64 40, i1 false), !tbaa.struct !80, !alias.scope !277
  %i.ax = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ax, %i.y
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit38.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit38.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNKSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %i.at, %_ZNKSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ], [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i, i64 40
  %.not.i39.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i39.i.i.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE17_M_realloc_insertIJRP12ActiveObjectiRN4core8aabbox3dIfEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit38.i.i.i.i.i.i
  %i.ba = load ptr, ptr %i.z, align 8, !tbaa !71
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.bc) #24
  br label %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE17_M_realloc_insertIJRP12ActiveObjectiRN4core8aabbox3dIfEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE17_M_realloc_insertIJRP12ActiveObjectiRN4core8aabbox3dIfEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.k, %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit38.i.i.i.i.i.i
  store ptr %i.at, ptr %i.w, align 8, !tbaa !58
  store ptr %i.az, ptr %i.x, align 8, !tbaa !59
  %i.bd = getelementptr inbounds nuw [40 x i8], ptr %i.at, i64 %i.ar
  store ptr %i.bd, ptr %i.z, align 8, !tbaa !71
  br label %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE12emplace_backIJRP12ActiveObjectiRN4core8aabbox3dIfEEEEERS1_DpOT_.exit.i.i.i.i

_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE12emplace_backIJRP12ActiveObjectiRN4core8aabbox3dIfEEEEERS1_DpOT_.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE17_M_realloc_insertIJRP12ActiveObjectiRN4core8aabbox3dIfEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i.i, %bb.h, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  br label %"_ZSt10__invoke_rIbRZL16add_object_boxesP11EnvironmentRKN4core8aabbox3dIfEEfNS2_8vector3dIfEES8_P12ActiveObjectRSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaISD_EEE3$_0JP18ServerActiveObjectEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESM_E4typeEOSN_DpOSO_.exit"

"_ZSt10__invoke_rIbRZL16add_object_boxesP11EnvironmentRKN4core8aabbox3dIfEEfNS2_8vector3dIfEES8_P12ActiveObjectRSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaISD_EEE3$_0JP18ServerActiveObjectEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESM_E4typeEOSN_DpOSO_.exit": ; preds = %bb.a, %bb.c, %bb.d, %bb.e, %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE12emplace_backIJRP12ActiveObjectiRN4core8aabbox3dIfEEEEERS1_DpOT_.exit.i.i.i.i
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbP18ServerActiveObjectEZL16add_object_boxesP11EnvironmentRKN4core8aabbox3dIfEEfNS5_8vector3dIfEESB_P12ActiveObjectRSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaISG_EEE3$_0E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #19 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZL16add_object_boxesP11EnvironmentRKN4core8aabbox3dIfEEfNS3_8vector3dIfEES9_P12ActiveObjectRSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaISE_EEE3$_0E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZL16add_object_boxesP11EnvironmentRKN4core8aabbox3dIfEEfNS1_8vector3dIfEES7_P12ActiveObjectRSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaISC_EEE3$_0", ptr %0, align 8, !tbaa !279
  br label %"_ZNSt14_Function_base13_Base_managerIZL16add_object_boxesP11EnvironmentRKN4core8aabbox3dIfEEfNS3_8vector3dIfEES9_P12ActiveObjectRSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaISE_EEE3$_0E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !83
  br label %"_ZNSt14_Function_base13_Base_managerIZL16add_object_boxesP11EnvironmentRKN4core8aabbox3dIfEEfNS3_8vector3dIfEES9_P12ActiveObjectRSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaISE_EEE3$_0E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !280
  br label %"_ZNSt14_Function_base13_Base_managerIZL16add_object_boxesP11EnvironmentRKN4core8aabbox3dIfEEfNS3_8vector3dIfEES9_P12ActiveObjectRSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaISE_EEE3$_0E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZL16add_object_boxesP11EnvironmentRKN4core8aabbox3dIfEEfNS3_8vector3dIfEES9_P12ActiveObjectRSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaISE_EEE3$_0E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: nounwind
declare void @_ZN13ScopeProfiler4stopEv(ptr noundef nonnull align 8 dereferenceable(50)) local_unnamed_addr #20

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #21

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #15

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !45     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  %i.c = load ptr, ptr %0, align 8, !tbaa !46     ; 9 uses
  %.not.i = icmp eq ptr %i.c, null                ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %_ZN11StreamProxylsIPKcEERS_OT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !53
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !46
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.k = phi ptr [ %.pre.i, %bb.d ], [ %i.c, %bb.c ]
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.9, i64 noundef 6) ; 0 uses
  br label %_ZN11StreamProxylsIPKcEERS_OT_.exit

bb.f:                                             ; preds = %bb.a
  br i1 %.not.i, label %_ZN11StreamProxylsIPKcEERS_OT_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.n = getelementptr i8, ptr %i.m, i64 -24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds i8, ptr %i.c, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !53
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.pre.i5 = load ptr, ptr %0, align 8, !tbaa !46 ; 3 uses
  %.pre = load ptr, ptr %1, align 8, !tbaa !45    ; 2 uses
  %.not.i.i6 = icmp eq ptr %.pre, null
  br i1 %.not.i.i6, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.t = load ptr, ptr %.pre.i5, align 8, !tbaa !24
  %i.u = getelementptr i8, ptr %i.t, i64 -24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds i8, ptr %.pre.i5, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !53
  %i.z = or i32 %i.y, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.w, i32 noundef %i.z)
  br label %_ZN11StreamProxylsIPKcEERS_OT_.exit

.thread:                                          ; preds = %bb.g, %bb.h
  %i.aa = phi ptr [ %.pre.i5, %bb.h ], [ %i.c, %bb.g ]
  %i.ab = phi ptr [ %.pre, %bb.h ], [ %i.a, %bb.g ] ; 2 uses
  %i.ac = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ab) #6
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull %i.ab, i64 noundef %i.ac) ; 0 uses
  br label %_ZN11StreamProxylsIPKcEERS_OT_.exit

_ZN11StreamProxylsIPKcEERS_OT_.exit:              ; preds = %.thread, %bb.i, %bb.f, %bb.e, %bb.b
  ret ptr %0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #4

declare extern_weak void @_ZTH13warningstream() #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.trunc.v2f32(<2 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #24 = { builtin nounwind }
attributes #25 = { noreturn }
attributes #26 = { builtin allocsize(0) }
attributes #27 = { noreturn nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !61}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"float", !6, i64 0}
!11 = !{!"_ZTSN4core8vector3dIfEE", !10, i64 0, !10, i64 4, !10, i64 8}
!12 = !{!"_ZTSN4core8aabbox3dIfEE", !11, i64 0, !11, i64 12}
!13 = !{!12, !10, i64 12}
!14 = !{!12, !10, i64 0}
!15 = !{!12, !10, i64 16}
!16 = !{!12, !10, i64 4}
!17 = !{!12, !10, i64 20}
!18 = !{!12, !10, i64 8}
!19 = !{!10, !10, i64 0}
!20 = !{!"any pointer", !6, i64 0}
!21 = !{!"p1 _ZTS8Profiler", !20, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"vtable pointer", !5, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"p1 omnipotent char", !20, i64 0}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !25, i64 0}
!27 = !{!26, !25, i64 0}
!28 = !{!"long", !6, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !26, i64 0, !28, i64 8, !6, i64 16}
!31 = !{!30, !25, i64 0}
!32 = !{!6, !6, i64 0}
!33 = !{!30, !28, i64 8}
!34 = !{!"bool", !6, i64 0}
!35 = !{!11, !10, i64 0}
!36 = !{!11, !10, i64 4}
!37 = !{!11, !10, i64 8}
!38 = !{!"p1 _ZTSNSt6locale5_ImplE", !20, i64 0}
!39 = !{!"_ZTSSt6locale", !38, i64 0}
!40 = !{!"_ZTSSt14_Function_base", !6, i64 0, !20, i64 16}
!41 = !{!"p1 _ZTSSo", !20, i64 0}
!42 = !{!"_ZTS11StreamProxy", !41, i64 0}
!43 = !{}
!44 = !{i64 8}
!45 = !{!25, !25, i64 0}
!46 = !{!42, !41, i64 0}
!47 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!48 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!49 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !20, i64 0}
!50 = !{!"_ZTSNSt8ios_base6_WordsE", !20, i64 0, !28, i64 8}
!51 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !20, i64 0}
!52 = !{!"_ZTSSt8ios_base", !28, i64 8, !28, i64 16, !47, i64 24, !48, i64 28, !48, i64 32, !49, i64 40, !50, i64 48, !6, i64 64, !7, i64 192, !51, i64 200, !39, i64 208}
!53 = !{!52, !48, i64 32}
!54 = !{!"p1 short", !20, i64 0}
!55 = !{!"branch_weights", i32 1023, i32 1}
!56 = !{!"p1 _ZTSN12_GLOBAL__N_119NearbyCollisionInfoE", !20, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE17_Vector_impl_dataE", !56, i64 0, !56, i64 8, !56, i64 16}
!58 = !{!57, !56, i64 0}
!59 = !{!57, !56, i64 8}
!60 = !{i64 0, i64 4, !19, i64 4, i64 4, !19, i64 8, i64 4, !19, i64 12, i64 4, !19, i64 16, i64 4, !19, i64 20, i64 4, !19}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!"p1 _ZTS12ActiveObject", !20, i64 0}
!63 = !{!"short", !6, i64 0}
!64 = !{!"_ZTSN4core8vector3dIsEE", !63, i64 0, !63, i64 2, !63, i64 4}
!65 = !{!"_ZTSN12_GLOBAL__N_119NearbyCollisionInfoE", !62, i64 0, !12, i64 8, !64, i64 32, !6, i64 38, !34, i64 39, !34, i64 39}
!66 = !{!65, !6, i64 38}
!67 = !{!65, !62, i64 0}
!68 = !{!63, !63, i64 0}
!69 = !{!62, !62, i64 0}
!70 = !{!56, !56, i64 0}
!71 = !{!57, !56, i64 16}
!72 = !{!"any p2 pointer", !20, i64 0}
!73 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !72, i64 0}
!74 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !20, i64 0}
!75 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !74, i64 0}
!76 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !10, i64 0, !28, i64 8}
!77 = !{!"p1 _ZTSN4core8aabbox3dIfEE", !20, i64 0}
!78 = !{!"_ZTSNSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE17_Vector_impl_dataE", !77, i64 0, !77, i64 8, !77, i64 16}
!79 = !{i8 0, i8 2}
!80 = !{i64 0, i64 8, !69, i64 8, i64 4, !19, i64 12, i64 4, !19, i64 16, i64 4, !19, i64 20, i64 4, !19, i64 24, i64 4, !19, i64 28, i64 4, !19, i64 32, i64 2, !68, i64 34, i64 2, !68, i64 36, i64 2, !68, i64 38, i64 1, !32, i64 39, i64 1, !32}
!81 = !{!78, !77, i64 0}
!82 = !{!"p1 _ZTSSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE", !20, i64 0}
!83 = !{!20, !20, i64 0}
!84 = !{!40, !20, i64 16}
!85 = !{!"p1 _ZTS18ServerActiveObject", !20, i64 0}
!86 = !{!85, !85, i64 0}
!87 = distinct !{null}
!88 = distinct !{null, null}
!89 = distinct !{null}
!90 = distinct !{!90, !61}
!91 = distinct !{!91, !"_ZSt19__relocate_object_aI13CollisionInfoS0_SaIS0_EEvPT_PT0_RT1_"}
!92 = distinct !{!92, !91, !"_ZSt19__relocate_object_aI13CollisionInfoS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!93 = distinct !{!93, !91, !"_ZSt19__relocate_object_aI13CollisionInfoS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!94 = distinct !{!94, !61}
!95 = distinct !{!95, !61}
!96 = !{!"p1 _ZTS13CollisionInfo", !20, i64 0}
!97 = !{!"_ZTSNSt12_Vector_baseI13CollisionInfoSaIS0_EE17_Vector_impl_dataE", !96, i64 0, !96, i64 8, !96, i64 16}
!98 = !{!"_ZTSNSt12_Vector_baseI13CollisionInfoSaIS0_EE12_Vector_implE", !97, i64 0}
!99 = !{!"_ZTSSt12_Vector_baseI13CollisionInfoSaIS0_EE", !98, i64 0}
!100 = !{!"_ZTSSt6vectorI13CollisionInfoSaIS0_EE", !99, i64 0}
!101 = !{!"_ZTS19collisionMoveResult", !34, i64 0, !34, i64 1, !34, i64 2, !100, i64 8}
!102 = !{!101, !34, i64 0}
!103 = !{!101, !34, i64 1}
!104 = !{!101, !34, i64 2}
!105 = !{!"p1 _ZTS9LogTarget", !20, i64 0}
!106 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !25, i64 8, !25, i64 16, !25, i64 24, !25, i64 32, !25, i64 40, !25, i64 48, !39, i64 56}
!107 = !{!"_ZTSSt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEEEE", !40, i64 0, !20, i64 24}
!108 = !{!"_ZTS18StringStreamBufferILj256ESt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEEEEE", !106, i64 0, !107, i64 64, !7, i64 96, !6, i64 100}
!109 = !{!"_ZTS17DummyStreamBuffer", !106, i64 0}
!110 = !{!"_ZTSSo"}
!111 = !{!"_ZTS9LogStream", !105, i64 0, !108, i64 8, !109, i64 368, !110, i64 432, !110, i64 704, !42, i64 976, !42, i64 984}
!112 = !{!111, !105, i64 0}
!113 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !20, i64 0}
!114 = !{!"p1 _ZTSSt5ctypeIcE", !20, i64 0}
!115 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !20, i64 0}
!116 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !20, i64 0}
!117 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !52, i64 0, !41, i64 216, !6, i64 224, !34, i64 225, !113, i64 232, !114, i64 240, !115, i64 248, !116, i64 256}
!118 = !{!117, !114, i64 240}
!119 = !{!"_ZTSNSt6locale5facetE", !7, i64 8}
!120 = !{!"p1 _ZTS15__locale_struct", !20, i64 0}
!121 = !{!"p1 int", !20, i64 0}
!122 = !{!"_ZTSSt5ctypeIcE", !119, i64 0, !120, i64 16, !34, i64 24, !121, i64 32, !121, i64 40, !54, i64 48, !6, i64 56, !6, i64 57, !6, i64 313, !6, i64 569}
!123 = !{!122, !6, i64 56}
!124 = !{!34, !34, i64 0}
!125 = !{!97, !96, i64 16}
!126 = !{!"_ZTS13CollisionType", !6, i64 0}
!127 = !{!126, !126, i64 0}
!128 = !{!"_ZTS13CollisionAxis", !6, i64 0}
!129 = !{!128, !128, i64 0}
!130 = !{!97, !96, i64 8}
!131 = !{i64 0, i64 1, !127, i64 1, i64 1, !129, i64 2, i64 2, !68, i64 4, i64 2, !68, i64 6, i64 2, !68, i64 8, i64 8, !69, i64 16, i64 4, !19, i64 20, i64 4, !19, i64 24, i64 4, !19, i64 28, i64 4, !19, i64 32, i64 4, !19, i64 36, i64 4, !19, i64 40, i64 4, !19, i64 44, i64 4, !19, i64 48, i64 4, !19}
!132 = !{!93, !92}
!133 = distinct !{!133, !"_ZSt19__relocate_object_aIN12_GLOBAL__N_119NearbyCollisionInfoES1_SaIS1_EEvPT_PT0_RT1_"}
!134 = distinct !{!134, !133, !"_ZSt19__relocate_object_aIN12_GLOBAL__N_119NearbyCollisionInfoES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!135 = distinct !{!135, !133, !"_ZSt19__relocate_object_aIN12_GLOBAL__N_119NearbyCollisionInfoES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!136 = distinct !{!136, !61}
!137 = distinct !{!137, !61}
!138 = distinct !{!138, !"_ZSt19__relocate_object_aIN12_GLOBAL__N_119NearbyCollisionInfoES1_SaIS1_EEvPT_PT0_RT1_"}
!139 = distinct !{!139, !138, !"_ZSt19__relocate_object_aIN12_GLOBAL__N_119NearbyCollisionInfoES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!140 = distinct !{!140, !138, !"_ZSt19__relocate_object_aIN12_GLOBAL__N_119NearbyCollisionInfoES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!141 = distinct !{!141, !"_ZSt19__relocate_object_aIN12_GLOBAL__N_119NearbyCollisionInfoES1_SaIS1_EEvPT_PT0_RT1_"}
!142 = distinct !{!142, !141, !"_ZSt19__relocate_object_aIN12_GLOBAL__N_119NearbyCollisionInfoES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!143 = distinct !{!143, !141, !"_ZSt19__relocate_object_aIN12_GLOBAL__N_119NearbyCollisionInfoES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!144 = distinct !{!144, !61}
!145 = distinct !{!145, !61}
!146 = distinct !{!146, !61}
!147 = !{!"p1 _ZTS15ContentFeatures", !20, i64 0}
!148 = !{!"_ZTSNSt12_Vector_baseI15ContentFeaturesSaIS0_EE17_Vector_impl_dataE", !147, i64 0, !147, i64 8, !147, i64 16}
!149 = !{!148, !147, i64 8}
!150 = !{!148, !147, i64 0}
!151 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !73, i64 0, !28, i64 8, !75, i64 16, !28, i64 24, !76, i64 32, !74, i64 48}
!152 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE", !151, i64 0}
!153 = !{!"_ZTS16ContentParamType", !6, i64 0}
!154 = !{!"_ZTS17ContentParamType2", !6, i64 0}
!155 = !{!"_ZTS12NodeDrawType", !6, i64 0}
!156 = !{!"_ZTS9AlphaMode", !6, i64 0}
!157 = !{!"_ZTSN5video6SColorE", !7, i64 0}
!158 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !20, i64 0}
!159 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !158, i64 0, !158, i64 8, !158, i64 16}
!160 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !159, i64 0}
!161 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !160, i64 0}
!162 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !161, i64 0}
!163 = !{!"_ZTSNSt12_Vector_baseItSaItEE17_Vector_impl_dataE", !54, i64 0, !54, i64 8, !54, i64 16}
!164 = !{!"_ZTSNSt12_Vector_baseItSaItEE12_Vector_implE", !163, i64 0}
!165 = !{!"_ZTSSt12_Vector_baseItSaItEE", !164, i64 0}
!166 = !{!"_ZTSSt6vectorItSaItEE", !165, i64 0}
end_hunk_2
