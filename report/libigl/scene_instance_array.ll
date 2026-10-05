Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/scene_instance_array?download=true
inline.NumInlined: 398
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK6embree8Geometry13vlinearBoundsERKNS_6Vec3faEffRKNS_12LinearSpace3IS1_EEmRKNS_4BBoxIfEE:.noexc.i
  store i8 0, ptr %i.h, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6embree12rtcore_errorE, i64 16), ptr %i.c, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 3, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  store ptr %i.k, ptr %i.j, align 8
  %i.l = load ptr, ptr %8, align 8                ; 2 uses
  %i.m = load i64, ptr %i.g, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.m, ptr %i.a, align 8
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %.noexc.i6, label %._crit_edge.i.i5

.noexc.i6:                                        ; preds = %.noexc
  %i.o = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc7 unwind label %.body   ; 2 uses

.noexc7:                                          ; preds = %.noexc.i6
  store ptr %i.o, ptr %i.j, align 8
  %i.p = load i64, ptr %i.a, align 8
  store i64 %i.p, ptr %i.k, align 8
  br label %._crit_edge.i.i5

._crit_edge.i.i5:                                 ; preds = %.noexc7, %.noexc
  %i.q = phi ptr [ %i.o, %.noexc7 ], [ %i.k, %.noexc ] ; 2 uses
  switch i64 %i.m, label %bb.b [
    i64 1, label %bb.a
    i64 0, label %bb.c
  ]

bb.a:                                             ; preds = %._crit_edge.i.i5
  %i.r = load i8, ptr %i.l, align 1
  store i8 %i.r, ptr %i.q, align 1
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.l, i64 %i.m, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i5, %bb.a, %bb.b
  %i.s = load i64, ptr %i.a, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.s, ptr %i.t, align 8
  %i.u = load ptr, ptr %i.j, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6embree12rtcore_errorE, ptr nonnull @_ZN6embree12rtcore_errorD2Ev) #26
          to label %bb.e unwind label %.body.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.noexc.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.body:                                            ; preds = %.noexc.i6
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(48) %i.c) #24
  %i.y = load ptr, ptr %8, align 8                ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.d
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.y) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.body.thread:                                     ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %8, align 8               ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.d
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread18: ; preds = %.body.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.d

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body.thread
  call void @_ZdlPv(ptr noundef %i.ab) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %.pn11 = phi { ptr, i32 } [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread ], [ %i.x, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @__cxa_free_exception(ptr %i.c) #24
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread18, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread18 ], [ %.pn11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn10

bb.e:                                             ; preds = %bb.c
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6embree13InstanceArray5buildEv(ptr noundef nonnull align 16 dereferenceable(200) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float>) #17

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0 align 2

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6embree12rtcore_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6embree12rtcore_errorE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN6embree12rtcore_errorD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef %i.b) #25, !inline_history !1115
  br label %_ZN6embree12rtcore_errorD2Ev.exit

_ZN6embree12rtcore_errorD2Ev.exit:                ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(48) %0) #24, !inline_history !1115
  tail call void @_ZdlPv(ptr noundef nonnull %0) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK6embree12rtcore_error4whatEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  ret ptr %i.b
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN6embreeL30motion_derivative_coefficientsEPKfPf(ptr nofree noundef nonnull readonly %0, ptr nofree noundef nonnull writeonly initializes((0, 672)) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load float, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load float, ptr %i.c, align 4
  %i.e = fsub float %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 154 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 131 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 15 uses
  %i.i = load float, ptr %i.h, align 4            ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 15 uses
  %i.k = load float, ptr %i.j, align 4            ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 129 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 15 uses
  %i.n = load float, ptr %i.m, align 4            ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 15 uses
  %i.p = load float, ptr %i.o, align 4            ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 128 uses
  %i.r = load <4 x float>, ptr %i.f, align 4      ; 4 uses
  %i.s = shufflevector <4 x float> %i.r, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 0, i32 1>
  %i.t = fmul <4 x float> %i.r, %i.s              ; 5 uses
  %i.u = fneg <4 x float> %i.t                    ; 4 uses
  %i.v = extractelement <4 x float> %i.u, i64 2
  %i.w = tail call float @llvm.fmuladd.f32(float %i.v, float %i.i, float %i.e)
  %i.x = extractelement <4 x float> %i.t, i64 2
  %i.y = tail call float @llvm.fmuladd.f32(float %i.x, float %i.k, float %i.w)
  %i.z = extractelement <4 x float> %i.t, i64 0
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.z, float %i.n, float %i.y)
  %i.ab = extractelement <4 x float> %i.u, i64 0
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.p, float %i.aa)
  %i.ad = extractelement <4 x float> %i.u, i64 1
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.n, float %i.ac)
  %i.af = extractelement <4 x float> %i.t, i64 1
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.af, float %i.p, float %i.ae)
  %i.ah = extractelement <4 x float> %i.u, i64 3
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.i, float %i.ag)
  %i.aj = extractelement <4 x float> %i.t, i64 3
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.k, float %i.ai)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 15 uses
  %i.am = load float, ptr %i.al, align 4          ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 15 uses
  %i.ao = load float, ptr %i.an, align 4          ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 139 uses
  %i.aq = load float, ptr %i.ap, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 128 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 129 uses
  %i.at = load <2 x float>, ptr %i.ar, align 4    ; 4 uses
  %i.au = load float, ptr %i.as, align 4          ; 3 uses
  %i.av = insertelement <4 x float> poison, float %i.aq, i64 0
  %i.aw = shufflevector <4 x float> %i.r, <4 x float> %i.av, <4 x i32> <i32 2, i32 3, i32 4, i32 4>
  %i.ax = shufflevector <2 x float> %i.at, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ay = shufflevector <4 x float> %i.r, <4 x float> %i.ax, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.az = fmul <4 x float> %i.aw, %i.ay           ; 5 uses
  %i.ba = extractelement <4 x float> %i.az, i64 0
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.am, float %i.ak)
  %i.bc = fneg <4 x float> %i.az                  ; 4 uses
  %i.bd = extractelement <4 x float> %i.bc, i64 0
  %i.be = tail call float @llvm.fmuladd.f32(float %i.bd, float %i.ao, float %i.bb)
  %i.bf = extractelement <4 x float> %i.az, i64 1
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.am, float %i.be)
  %i.bh = extractelement <4 x float> %i.bc, i64 1
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.ao, float %i.bg)
  %i.bj = extractelement <4 x float> %i.bc, i64 2
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.i, float %i.bi)
  %i.bl = extractelement <4 x float> %i.az, i64 2
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.bl, float %i.k, float %i.bk)
  %i.bn = extractelement <4 x float> %i.az, i64 3
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.n, float %i.bm)
  %i.bp = extractelement <4 x float> %i.bc, i64 3
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.p, float %i.bo)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 122 uses
  %i.bs = load float, ptr %i.br, align 4          ; 2 uses
  %i.bt = extractelement <2 x float> %i.at, i64 0
  %i.bu = fmul float %i.bt, %i.bs                 ; 2 uses
  %i.bv = fneg float %i.bu
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.bv, float %i.n, float %i.bq)
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.p, float %i.bw)
  %i.by = fmul float %i.au, %i.bs                 ; 2 uses
  %i.bz = fneg float %i.by
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.i, float %i.bx)
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.by, float %i.k, float %i.ca)
  %foldExtExtBinop = fmul <2 x float> %i.at, %i.at
  %i.cc = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.cd = tail call float @llvm.fmuladd.f32(float %i.cc, float %i.am, float %i.cb)
  %i.ce = fneg float %i.cc
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.ao, float %i.cd)
  %i.cg = fmul float %i.au, %i.au                 ; 2 uses
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.am, float %i.cf)
  %i.ci = fneg float %i.cg
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.ci, float %i.ao, float %i.ch)
  %i.ck = fsub float %i.cj, %i.am
  %i.cl = fadd float %i.ao, %i.ck
  store float %i.cl, ptr %1, align 4
  %i.cm = load float, ptr %i.g, align 4           ; 4 uses
  %i.cn = fmul float %i.cm, 2.000000e+00
  %i.co = fmul float %i.cm, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 47 uses
  %i.cq = load float, ptr %i.cp, align 4          ; 5 uses
  %i.cr = fmul float %i.cm, %i.cm
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 39 uses
  %i.ct = load float, ptr %i.cs, align 4          ; 5 uses
  %i.cu = fneg float %i.ct
  %i.cv = fmul float %i.cr, %i.cu
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.co, float %i.cq, float %i.cv)
  %i.cx = load float, ptr %i.l, align 4           ; 4 uses
  %i.cy = fmul float %i.cx, 2.000000e+00
  %i.cz = fmul float %i.cx, %i.cy
  %i.da = tail call float @llvm.fmuladd.f32(float %i.cz, float %i.cq, float %i.cw)
  %i.db = fneg float %i.cx
  %i.dc = fmul float %i.cx, %i.db
  %i.dd = tail call float @llvm.fmuladd.f32(float %i.dc, float %i.ct, float %i.da)
  %i.de = load float, ptr %i.ar, align 4          ; 4 uses
  %i.df = fmul float %i.de, 2.000000e+00
  %i.dg = fmul float %i.de, %i.df
  %i.dh = tail call float @llvm.fmuladd.f32(float %i.dg, float %i.cq, float %i.dd)
  %i.di = fneg float %i.de
  %i.dj = fmul float %i.de, %i.di
  %i.dk = tail call float @llvm.fmuladd.f32(float %i.dj, float %i.ct, float %i.dh)
  %i.dl = load float, ptr %i.as, align 4          ; 4 uses
  %i.dm = fmul float %i.dl, 2.000000e+00
  %i.dn = fmul float %i.dl, %i.dm
  %i.do = tail call float @llvm.fmuladd.f32(float %i.dn, float %i.cq, float %i.dk)
  %i.dp = fneg float %i.dl
  %i.dq = fmul float %i.dl, %i.dp
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.dq, float %i.ct, float %i.do)
  %i.ds = tail call float @llvm.fmuladd.f32(float %i.cq, float -2.000000e+00, float %i.dr)
  %i.dt = fadd float %i.ct, %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.dt, ptr %i.du, align 4
  %i.dv = load float, ptr %i.f, align 4           ; 2 uses
  %i.dw = fmul float %i.dv, 2.000000e+00
  %i.dx = load float, ptr %i.l, align 4           ; 6 uses
  %i.dy = fmul float %i.dw, %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 48 uses
  %i.ea = load float, ptr %i.dz, align 4          ; 4 uses
  %i.eb = fmul float %i.dv, %i.dx
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 39 uses
  %i.ed = load float, ptr %i.ec, align 4          ; 4 uses
  %i.ee = fneg float %i.ed
  %i.ef = fmul float %i.eb, %i.ee
  %i.eg = tail call float @llvm.fmuladd.f32(float %i.dy, float %i.ea, float %i.ef)
  %i.eh = load float, ptr %i.q, align 4           ; 2 uses
  %i.ei = fmul float %i.eh, 2.000000e+00
  %i.ej = load float, ptr %i.g, align 4           ; 5 uses
  %i.ek = fneg float %i.ej                        ; 2 uses
  %i.el = fmul float %i.ei, %i.ek
  %i.em = tail call float @llvm.fmuladd.f32(float %i.el, float %i.ea, float %i.eg)
  %i.en = fmul float %i.eh, %i.ej
  %i.eo = tail call float @llvm.fmuladd.f32(float %i.en, float %i.ed, float %i.em)
  %i.ep = fmul float %i.ej, 2.000000e+00
  %i.eq = fmul float %i.ej, %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 48 uses
  %i.es = load float, ptr %i.er, align 4          ; 5 uses
  %i.et = tail call float @llvm.fmuladd.f32(float %i.eq, float %i.es, float %i.eo)
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 39 uses
  %i.ev = load float, ptr %i.eu, align 4          ; 5 uses
  %i.ew = fmul float %i.ej, %i.ek
  %i.ex = tail call float @llvm.fmuladd.f32(float %i.ew, float %i.ev, float %i.et)
  %i.ey = fmul float %i.dx, 2.000000e+00
  %i.ez = fmul float %i.dx, %i.ey
  %i.fa = tail call float @llvm.fmuladd.f32(float %i.ez, float %i.es, float %i.ex)
  %i.fb = fneg float %i.dx
  %i.fc = fmul float %i.dx, %i.fb
  %i.fd = tail call float @llvm.fmuladd.f32(float %i.fc, float %i.ev, float %i.fa)
  %i.fe = load float, ptr %i.ap, align 4          ; 2 uses
  %i.ff = fmul float %i.fe, 2.000000e+00
  %i.fg = load float, ptr %i.as, align 4          ; 5 uses
  %i.fh = fmul float %i.ff, %i.fg
  %i.fi = tail call float @llvm.fmuladd.f32(float %i.fh, float %i.ea, float %i.fd)
  %i.fj = fneg float %i.fg                        ; 2 uses
  %i.fk = fmul float %i.fe, %i.fj
  %i.fl = tail call float @llvm.fmuladd.f32(float %i.fk, float %i.ed, float %i.fi)
  %i.fm = load float, ptr %i.br, align 4          ; 2 uses
  %i.fn = fmul float %i.fm, 2.000000e+00
  %i.fo = load float, ptr %i.ar, align 4          ; 5 uses
  %i.fp = fneg float %i.fo                        ; 2 uses
  %i.fq = fmul float %i.fn, %i.fp
  %i.fr = tail call float @llvm.fmuladd.f32(float %i.fq, float %i.ea, float %i.fl)
  %i.fs = fmul float %i.fm, %i.fo
  %i.ft = tail call float @llvm.fmuladd.f32(float %i.fs, float %i.ed, float %i.fr)
  %i.fu = fmul float %i.fo, 2.000000e+00
  %i.fv = fmul float %i.fo, %i.fu
  %i.fw = tail call float @llvm.fmuladd.f32(float %i.fv, float %i.es, float %i.ft)
  %i.fx = fmul float %i.fo, %i.fp
  %i.fy = tail call float @llvm.fmuladd.f32(float %i.fx, float %i.ev, float %i.fw)
  %i.fz = fmul float %i.fg, 2.000000e+00
  %i.ga = fmul float %i.fg, %i.fz
  %i.gb = tail call float @llvm.fmuladd.f32(float %i.ga, float %i.es, float %i.fy)
  %i.gc = fmul float %i.fg, %i.fj
  %i.gd = tail call float @llvm.fmuladd.f32(float %i.gc, float %i.ev, float %i.gb)
  %i.ge = tail call float @llvm.fmuladd.f32(float %i.es, float -2.000000e+00, float %i.gd)
  %i.gf = fadd float %i.ev, %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.gf, ptr %i.gg, align 4
  %i.gh = load float, ptr %i.f, align 4           ; 4 uses
  %i.gi = fmul float %i.gh, -2.000000e+00
  %i.gj = load float, ptr %i.g, align 4           ; 7 uses
  %i.gk = fmul float %i.gi, %i.gj
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 48 uses
  %i.gm = load float, ptr %i.gl, align 4          ; 4 uses
  %i.gn = fmul float %i.gh, %i.gj
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 39 uses
  %i.gp = load float, ptr %i.go, align 4          ; 4 uses
  %i.gq = fmul float %i.gn, %i.gp
  %i.gr = tail call float @llvm.fmuladd.f32(float %i.gk, float %i.gm, float %i.gq)
  %i.gs = fmul float %i.gh, 2.000000e+00
  %i.gt = load float, ptr %i.l, align 4           ; 6 uses
  %i.gu = fmul float %i.gs, %i.gt
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 48 uses
  %i.gw = load float, ptr %i.gv, align 4          ; 4 uses
  %i.gx = tail call float @llvm.fmuladd.f32(float %i.gu, float %i.gw, float %i.gr)
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 39 uses
  %i.gz = load float, ptr %i.gy, align 4          ; 4 uses
  %i.ha = fneg float %i.gt                        ; 3 uses
  %i.hb = fmul float %i.gh, %i.ha
  %i.hc = tail call float @llvm.fmuladd.f32(float %i.hb, float %i.gz, float %i.gx)
  %i.hd = load float, ptr %i.q, align 4           ; 3 uses
  %i.he = fmul float %i.hd, 2.000000e+00          ; 2 uses
  %i.hf = fneg float %i.gj                        ; 2 uses
  %i.hg = fmul float %i.he, %i.hf
  %i.hh = tail call float @llvm.fmuladd.f32(float %i.hg, float %i.gw, float %i.hc)
  %i.hi = fmul float %i.gj, %i.hd
  %i.hj = tail call float @llvm.fmuladd.f32(float %i.hi, float %i.gz, float %i.hh)
  %i.hk = fmul float %i.he, %i.ha
  %i.hl = tail call float @llvm.fmuladd.f32(float %i.hk, float %i.gm, float %i.hj)
  %i.hm = fmul float %i.gt, %i.hd
  %i.hn = tail call float @llvm.fmuladd.f32(float %i.hm, float %i.gp, float %i.hl)
  %i.ho = fmul float %i.gj, 2.000000e+00
  %i.hp = fmul float %i.gj, %i.ho
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 48 uses
  %i.hr = load float, ptr %i.hq, align 4          ; 5 uses
  %i.hs = tail call float @llvm.fmuladd.f32(float %i.hp, float %i.hr, float %i.hn)
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 39 uses
  %i.hu = load float, ptr %i.ht, align 4          ; 5 uses
  %i.hv = fmul float %i.gj, %i.hf
  %i.hw = tail call float @llvm.fmuladd.f32(float %i.hv, float %i.hu, float %i.hs)
  %i.hx = fmul float %i.gt, 2.000000e+00
  %i.hy = fmul float %i.gt, %i.hx
  %i.hz = tail call float @llvm.fmuladd.f32(float %i.hy, float %i.hr, float %i.hw)
  %i.ia = fmul float %i.gt, %i.ha
  %i.ib = tail call float @llvm.fmuladd.f32(float %i.ia, float %i.hu, float %i.hz)
  %i.ic = load float, ptr %i.ap, align 4          ; 3 uses
  %i.id = fmul float %i.ic, 2.000000e+00          ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6embreeL30motion_derivative_coefficientsEPKfPf:bb.a
  %i.jiy = load float, ptr %i.g, align 4          ; 6 uses
  %i.jiz = fmul float %i.jix, %i.jiy
  %i.jja = load float, ptr %i.hq, align 4         ; 4 uses
  %i.jjb = tail call float @llvm.fmuladd.f32(float %i.jiz, float %i.jja, float %i.jiw)
  %i.jjc = load float, ptr %i.ht, align 4         ; 4 uses
  %i.jjd = fneg float %i.jiy                      ; 2 uses
  %i.jje = fmul float %i.jio, %i.jjd
  %i.jjf = tail call float @llvm.fmuladd.f32(float %i.jje, float %i.jjc, float %i.jjb)
  %i.jjg = fmul float %i.jiq, 2.000000e+00        ; 2 uses
  %i.jjh = fmul float %i.jiq, %i.jjg
  %i.jji = load float, ptr %i.gl, align 4         ; 5 uses
  %i.jjj = tail call float @llvm.fmuladd.f32(float %i.jjh, float %i.jji, float %i.jjf)
  %i.jjk = load float, ptr %i.go, align 4         ; 5 uses
  %i.jjl = fneg float %i.jiq
  %i.jjm = fmul float %i.jiq, %i.jjl
  %i.jjn = tail call float @llvm.fmuladd.f32(float %i.jjm, float %i.jjk, float %i.jjj)
  %i.jjo = load float, ptr %i.l, align 4          ; 3 uses
  %i.jjp = fneg float %i.jjo                      ; 2 uses
  %i.jjq = fmul float %i.jjg, %i.jjp
  %i.jjr = tail call float @llvm.fmuladd.f32(float %i.jjq, float %i.jja, float %i.jjn)
  %i.jjs = fmul float %i.jiq, %i.jjo
  %i.jjt = tail call float @llvm.fmuladd.f32(float %i.jjs, float %i.jjc, float %i.jjr)
  %i.jju = fmul float %i.jiy, 2.000000e+00        ; 2 uses
  %i.jjv = fmul float %i.jiy, %i.jju
  %i.jjw = tail call float @llvm.fmuladd.f32(float %i.jjv, float %i.jji, float %i.jjt)
  %i.jjx = fmul float %i.jiy, %i.jjd
  %i.jjy = tail call float @llvm.fmuladd.f32(float %i.jjx, float %i.jjk, float %i.jjw)
  %i.jjz = fmul float %i.jju, %i.jjp
  %i.jka = tail call float @llvm.fmuladd.f32(float %i.jjz, float %i.jis, float %i.jjy)
  %i.jkb = fmul float %i.jiy, %i.jjo
  %i.jkc = tail call float @llvm.fmuladd.f32(float %i.jkb, float %i.jiu, float %i.jka)
  %i.jkd = load float, ptr %i.ap, align 4         ; 3 uses
  %i.jke = fmul float %i.jkd, 2.000000e+00        ; 2 uses
  %i.jkf = load float, ptr %i.br, align 4         ; 6 uses
  %i.jkg = fneg float %i.jkf                      ; 2 uses
  %i.jkh = fmul float %i.jke, %i.jkg
  %i.jki = tail call float @llvm.fmuladd.f32(float %i.jkh, float %i.jis, float %i.jkc)
  %i.jkj = fmul float %i.jkd, %i.jkf
  %i.jkk = tail call float @llvm.fmuladd.f32(float %i.jkj, float %i.jiu, float %i.jki)
  %i.jkl = load float, ptr %i.ar, align 4         ; 6 uses
  %i.jkm = fmul float %i.jke, %i.jkl
  %i.jkn = tail call float @llvm.fmuladd.f32(float %i.jkm, float %i.jja, float %i.jkk)
  %i.jko = fneg float %i.jkl                      ; 2 uses
  %i.jkp = fmul float %i.jkd, %i.jko
  %i.jkq = tail call float @llvm.fmuladd.f32(float %i.jkp, float %i.jjc, float %i.jkn)
  %i.jkr = fmul float %i.jkf, 2.000000e+00        ; 2 uses
  %i.jks = fmul float %i.jkf, %i.jkr
  %i.jkt = tail call float @llvm.fmuladd.f32(float %i.jks, float %i.jji, float %i.jkq)
  %i.jku = fmul float %i.jkf, %i.jkg
  %i.jkv = tail call float @llvm.fmuladd.f32(float %i.jku, float %i.jjk, float %i.jkt)
  %i.jkw = load float, ptr %i.as, align 4         ; 3 uses
  %i.jkx = fneg float %i.jkw                      ; 2 uses
  %i.jky = fmul float %i.jkr, %i.jkx
  %i.jkz = tail call float @llvm.fmuladd.f32(float %i.jky, float %i.jja, float %i.jkv)
  %i.jla = fmul float %i.jkf, %i.jkw
  %i.jlb = tail call float @llvm.fmuladd.f32(float %i.jla, float %i.jjc, float %i.jkz)
  %i.jlc = fmul float %i.jkl, 2.000000e+00        ; 2 uses
  %i.jld = fmul float %i.jkl, %i.jlc
  %i.jle = tail call float @llvm.fmuladd.f32(float %i.jld, float %i.jji, float %i.jlb)
  %i.jlf = fmul float %i.jkl, %i.jko
  %i.jlg = tail call float @llvm.fmuladd.f32(float %i.jlf, float %i.jjk, float %i.jle)
  %i.jlh = fmul float %i.jlc, %i.jkx
  %i.jli = tail call float @llvm.fmuladd.f32(float %i.jlh, float %i.jis, float %i.jlg)
  %i.jlj = fmul float %i.jkl, %i.jkw
  %i.jlk = tail call float @llvm.fmuladd.f32(float %i.jlj, float %i.jiu, float %i.jli)
  %i.jll = tail call float @llvm.fmuladd.f32(float %i.jji, float -2.000000e+00, float %i.jlk)
  %i.jlm = fadd float %i.jjk, %i.jll
  %i.jln = getelementptr inbounds nuw i8, ptr %1, i64 460
  store float %i.jlm, ptr %i.jln, align 4
  %i.jlo = load float, ptr %i.f, align 4
  %i.jlp = fneg float %i.jlo
  %i.jlq = load float, ptr %i.g, align 4
  %i.jlr = load float, ptr %i.q, align 4
  %i.jls = load float, ptr %i.l, align 4
  %i.jlt = fmul float %i.jlr, %i.jls
  %i.jlu = tail call float @llvm.fmuladd.f32(float %i.jlp, float %i.jlq, float %i.jlt)
  %i.jlv = load float, ptr %i.ap, align 4
  %i.jlw = load float, ptr %i.ar, align 4
  %i.jlx = fneg float %i.jlv
  %i.jly = tail call float @llvm.fmuladd.f32(float %i.jlx, float %i.jlw, float %i.jlu)
  %i.jlz = load float, ptr %i.br, align 4
  %i.jma = load float, ptr %i.as, align 4
  %i.jmb = tail call float @llvm.fmuladd.f32(float %i.jlz, float %i.jma, float %i.jly)
  %i.jmc = load float, ptr %i.cp, align 4
  %i.jmd = fmul float %i.jmb, %i.jmc
  %i.jme = getelementptr inbounds nuw i8, ptr %1, i64 464
  store float %i.jmd, ptr %i.jme, align 4
  %i.jmf = load float, ptr %i.f, align 4          ; 2 uses
  %i.jmg = load float, ptr %i.q, align 4          ; 2 uses
  %i.jmh = fmul float %i.jmf, %i.jmg
  %i.jmi = load float, ptr %i.dz, align 4         ; 4 uses
  %i.jmj = load float, ptr %i.g, align 4          ; 2 uses
  %i.jmk = fmul float %i.jmf, %i.jmj
  %i.jml = load float, ptr %i.er, align 4         ; 4 uses
  %i.jmm = fneg float %i.jml
  %i.jmn = fmul float %i.jmk, %i.jmm
  %i.jmo = tail call float @llvm.fmuladd.f32(float %i.jmh, float %i.jmi, float %i.jmn)
  %i.jmp = load float, ptr %i.l, align 4          ; 2 uses
  %i.jmq = fmul float %i.jmg, %i.jmp
  %i.jmr = tail call float @llvm.fmuladd.f32(float %i.jmq, float %i.jml, float %i.jmo)
  %i.jms = fmul float %i.jmj, %i.jmp
  %i.jmt = tail call float @llvm.fmuladd.f32(float %i.jms, float %i.jmi, float %i.jmr)
  %i.jmu = load float, ptr %i.ap, align 4         ; 2 uses
  %i.jmv = load float, ptr %i.br, align 4         ; 2 uses
  %i.jmw = fmul float %i.jmu, %i.jmv
  %i.jmx = tail call float @llvm.fmuladd.f32(float %i.jmw, float %i.jmi, float %i.jmt)
  %i.jmy = load float, ptr %i.ar, align 4         ; 2 uses
  %i.jmz = fneg float %i.jmy
  %i.jna = fmul float %i.jmu, %i.jmz
  %i.jnb = tail call float @llvm.fmuladd.f32(float %i.jna, float %i.jml, float %i.jmx)
  %i.jnc = load float, ptr %i.as, align 4         ; 2 uses
  %i.jnd = fmul float %i.jmv, %i.jnc
  %i.jne = tail call float @llvm.fmuladd.f32(float %i.jnd, float %i.jml, float %i.jnb)
  %i.jnf = fmul float %i.jmy, %i.jnc
  %i.jng = tail call float @llvm.fmuladd.f32(float %i.jnf, float %i.jmi, float %i.jne)
  %i.jnh = getelementptr inbounds nuw i8, ptr %1, i64 468
  store float %i.jng, ptr %i.jnh, align 4
  %i.jni = load float, ptr %i.f, align 4          ; 2 uses
  %i.jnj = load float, ptr %i.q, align 4          ; 4 uses
  %i.jnk = fmul float %i.jni, %i.jnj
  %i.jnl = load float, ptr %i.gv, align 4         ; 4 uses
  %i.jnm = load float, ptr %i.g, align 4          ; 4 uses
  %i.jnn = fmul float %i.jni, %i.jnm
  %i.jno = load float, ptr %i.hq, align 4         ; 4 uses
  %i.jnp = fneg float %i.jno
  %i.jnq = fmul float %i.jnn, %i.jnp
  %i.jnr = tail call float @llvm.fmuladd.f32(float %i.jnk, float %i.jnl, float %i.jnq)
  %i.jns = load float, ptr %i.gl, align 4         ; 5 uses
  %i.jnt = fneg float %i.jnj
  %i.jnu = fmul float %i.jnj, %i.jnt
  %i.jnv = tail call float @llvm.fmuladd.f32(float %i.jnu, float %i.jns, float %i.jnr)
  %i.jnw = load float, ptr %i.l, align 4          ; 2 uses
  %i.jnx = fmul float %i.jnj, %i.jnw
  %i.jny = tail call float @llvm.fmuladd.f32(float %i.jnx, float %i.jno, float %i.jnv)
  %i.jnz = fneg float %i.jnm
  %i.joa = fmul float %i.jnm, %i.jnz
  %i.job = tail call float @llvm.fmuladd.f32(float %i.joa, float %i.jns, float %i.jny)
  %i.joc = fmul float %i.jnm, %i.jnw
  %i.jod = tail call float @llvm.fmuladd.f32(float %i.joc, float %i.jnl, float %i.job)
  %i.joe = load float, ptr %i.ap, align 4         ; 2 uses
  %i.jof = load float, ptr %i.br, align 4         ; 4 uses
  %i.jog = fmul float %i.joe, %i.jof
  %i.joh = tail call float @llvm.fmuladd.f32(float %i.jog, float %i.jnl, float %i.jod)
  %i.joi = load float, ptr %i.ar, align 4         ; 3 uses
  %i.joj = fneg float %i.joi                      ; 2 uses
  %i.jok = fmul float %i.joe, %i.joj
  %i.jol = tail call float @llvm.fmuladd.f32(float %i.jok, float %i.jno, float %i.joh)
  %i.jom = fneg float %i.jof
  %i.jon = fmul float %i.jof, %i.jom
  %i.joo = tail call float @llvm.fmuladd.f32(float %i.jon, float %i.jns, float %i.jol)
  %i.jop = load float, ptr %i.as, align 4         ; 2 uses
  %i.joq = fmul float %i.jof, %i.jop
  %i.jor = tail call float @llvm.fmuladd.f32(float %i.joq, float %i.jno, float %i.joo)
  %i.jos = fmul float %i.joi, %i.joj
  %i.jot = tail call float @llvm.fmuladd.f32(float %i.jos, float %i.jns, float %i.jor)
  %i.jou = fmul float %i.joi, %i.jop
  %i.jov = tail call float @llvm.fmuladd.f32(float %i.jou, float %i.jnl, float %i.jot)
  %i.jow = fadd float %i.jns, %i.jov
  %i.jox = getelementptr inbounds nuw i8, ptr %1, i64 472
  store float %i.jow, ptr %i.jox, align 4
  %i.joy = getelementptr inbounds nuw i8, ptr %1, i64 476
  store float 0.000000e+00, ptr %i.joy, align 4
  %i.joz = load float, ptr %i.f, align 4          ; 2 uses
  %i.jpa = fmul float %i.joz, -2.000000e+00
  %i.jpb = load float, ptr %i.g, align 4          ; 2 uses
  %i.jpc = fmul float %i.jpa, %i.jpb
  %i.jpd = load float, ptr %i.cp, align 4         ; 4 uses
  %i.jpe = fmul float %i.joz, 2.000000e+00
  %i.jpf = fmul float %i.jpe, %i.jpb
  %i.jpg = load float, ptr %i.cs, align 4         ; 4 uses
  %i.jph = fmul float %i.jpf, %i.jpg
  %i.jpi = tail call float @llvm.fmuladd.f32(float %i.jpc, float %i.jpd, float %i.jph)
  %i.jpj = load float, ptr %i.q, align 4
  %i.jpk = fmul float %i.jpj, 2.000000e+00
  %i.jpl = load float, ptr %i.l, align 4
  %i.jpm = fmul float %i.jpk, %i.jpl              ; 2 uses
  %i.jpn = tail call float @llvm.fmuladd.f32(float %i.jpm, float %i.jpd, float %i.jpi)
  %i.jpo = fneg float %i.jpm
  %i.jpp = tail call float @llvm.fmuladd.f32(float %i.jpo, float %i.jpg, float %i.jpn)
  %i.jpq = load float, ptr %i.ap, align 4
  %i.jpr = fmul float %i.jpq, 2.000000e+00
  %i.jps = load float, ptr %i.ar, align 4
  %i.jpt = fmul float %i.jpr, %i.jps              ; 2 uses
  %i.jpu = fneg float %i.jpt
  %i.jpv = tail call float @llvm.fmuladd.f32(float %i.jpu, float %i.jpd, float %i.jpp)
  %i.jpw = tail call float @llvm.fmuladd.f32(float %i.jpt, float %i.jpg, float %i.jpv)
  %i.jpx = load float, ptr %i.br, align 4
  %i.jpy = fmul float %i.jpx, 2.000000e+00
  %i.jpz = load float, ptr %i.as, align 4
  %i.jqa = fmul float %i.jpy, %i.jpz              ; 2 uses
  %i.jqb = tail call float @llvm.fmuladd.f32(float %i.jqa, float %i.jpd, float %i.jpw)
  %i.jqc = fneg float %i.jqa
  %i.jqd = tail call float @llvm.fmuladd.f32(float %i.jqc, float %i.jpg, float %i.jqb)
  %i.jqe = getelementptr inbounds nuw i8, ptr %1, i64 480
  store float %i.jqd, ptr %i.jqe, align 4
  %i.jqf = load float, ptr %i.dz, align 4         ; 4 uses
  %i.jqg = load float, ptr %i.ec, align 4         ; 4 uses
  %i.jqh = fneg float %i.jqg
  %i.jqi = load float, ptr %i.er, align 4         ; 4 uses
  %i.jqj = load float, ptr %i.eu, align 4         ; 4 uses
  %i.jqk = load float, ptr %i.q, align 4
  %2 = load <8 x float>, ptr %i.f, align 4        ; 2 uses
  %i.jql = load float, ptr %i.br, align 4
  %i.jqm = shufflevector <8 x float> %2, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.jqn = fmul <4 x float> %i.jqm, splat (float 2.000000e+00) ; 3 uses
  %i.jqo = extractelement <4 x float> %i.jqn, i64 0
  %i.jqp = fmul float %i.jqo, %i.jqk              ; 2 uses
  %i.jqq = fmul float %i.jqp, %i.jqh
  %i.jqr = tail call float @llvm.fmuladd.f32(float %i.jqp, float %i.jqf, float %i.jqq)
  %i.jqs = shufflevector <8 x float> %2, <8 x float> poison, <4 x i32> <i32 2, i32 3, i32 3, i32 5>
  %i.jqt = fmul <4 x float> %i.jqn, %i.jqs        ; 5 uses
  %i.jqu = fneg <4 x float> %i.jqt                ; 4 uses
  %i.jqv = extractelement <4 x float> %i.jqu, i64 0
  %i.jqw = tail call float @llvm.fmuladd.f32(float %i.jqv, float %i.jqi, float %i.jqr)
  %i.jqx = extractelement <4 x float> %i.jqt, i64 0
  %i.jqy = tail call float @llvm.fmuladd.f32(float %i.jqx, float %i.jqj, float %i.jqw)
  %i.jqz = extractelement <4 x float> %i.jqt, i64 1
  %i.jra = tail call float @llvm.fmuladd.f32(float %i.jqz, float %i.jqi, float %i.jqy)
  %i.jrb = extractelement <4 x float> %i.jqu, i64 1
  %i.jrc = tail call float @llvm.fmuladd.f32(float %i.jrb, float %i.jqj, float %i.jra)
  %i.jrd = extractelement <4 x float> %i.jqt, i64 2
  %i.jre = tail call float @llvm.fmuladd.f32(float %i.jrd, float %i.jqf, float %i.jrc)
  %i.jrf = extractelement <4 x float> %i.jqu, i64 2
  %i.jrg = tail call float @llvm.fmuladd.f32(float %i.jrf, float %i.jqg, float %i.jre)
  %i.jrh = extractelement <4 x float> %i.jqt, i64 3
  %i.jri = tail call float @llvm.fmuladd.f32(float %i.jrh, float %i.jqf, float %i.jrg)
  %i.jrj = extractelement <4 x float> %i.jqu, i64 3
  %i.jrk = tail call float @llvm.fmuladd.f32(float %i.jrj, float %i.jqg, float %i.jri)
  %i.jrl = load float, ptr %i.ar, align 4         ; 2 uses
  %i.jrm = extractelement <4 x float> %i.jqn, i64 3
  %i.jrn = fmul float %i.jrm, %i.jrl              ; 2 uses
  %i.jro = fneg float %i.jrn
  %i.jrp = tail call float @llvm.fmuladd.f32(float %i.jro, float %i.jqi, float %i.jrk)
  %i.jrq = tail call float @llvm.fmuladd.f32(float %i.jrn, float %i.jqj, float %i.jrp)
  %i.jrr = fmul float %i.jql, 2.000000e+00
  %i.jrs = load float, ptr %i.as, align 4         ; 2 uses
  %i.jrt = fmul float %i.jrr, %i.jrs              ; 2 uses
  %i.jru = tail call float @llvm.fmuladd.f32(float %i.jrt, float %i.jqi, float %i.jrq)
  %i.jrv = fneg float %i.jrt
  %i.jrw = tail call float @llvm.fmuladd.f32(float %i.jrv, float %i.jqj, float %i.jru)
  %i.jrx = fmul float %i.jrl, 2.000000e+00
  %i.jry = fmul float %i.jrx, %i.jrs              ; 2 uses
  %i.jrz = tail call float @llvm.fmuladd.f32(float %i.jry, float %i.jqf, float %i.jrw)
  %i.jsa = fneg float %i.jry
  %i.jsb = tail call float @llvm.fmuladd.f32(float %i.jsa, float %i.jqg, float %i.jrz)
  %i.jsc = getelementptr inbounds nuw i8, ptr %1, i64 484
  store float %i.jsb, ptr %i.jsc, align 4
  %i.jsd = load float, ptr %i.f, align 4
  %i.jse = fmul float %i.jsd, 2.000000e+00        ; 2 uses
  %i.jsf = load float, ptr %i.q, align 4          ; 3 uses
  %i.jsg = fmul float %i.jse, %i.jsf              ; 2 uses
  %i.jsh = load float, ptr %i.gv, align 4         ; 4 uses
  %i.jsi = load float, ptr %i.gy, align 4         ; 4 uses
  %i.jsj = fneg float %i.jsi
  %i.jsk = fmul float %i.jsg, %i.jsj
  %i.jsl = tail call float @llvm.fmuladd.f32(float %i.jsg, float %i.jsh, float %i.jsk)
  %i.jsm = load float, ptr %i.hq, align 4         ; 4 uses
  %i.jsn = load float, ptr %i.ht, align 4         ; 4 uses
  %i.jso = fmul float %i.jsf, 2.000000e+00        ; 2 uses
  %i.jsp = fmul float %i.jsf, %i.jso              ; 2 uses
  %i.jsq = load float, ptr %i.gl, align 4         ; 5 uses
  %i.jsr = fneg float %i.jsp
  %i.jss = load float, ptr %i.go, align 4         ; 5 uses
  %i.jst = load float, ptr %i.ar, align 4         ; 3 uses
  %i.jsu = load <4 x float>, ptr %i.g, align 4    ; 4 uses
  %i.jsv = load float, ptr %i.l, align 4
  %i.jsw = extractelement <4 x float> %i.jsu, i64 0
  %i.jsx = fmul float %i.jse, %i.jsw              ; 2 uses
  %i.jsy = fneg float %i.jsx
  %i.jsz = tail call float @llvm.fmuladd.f32(float %i.jsy, float %i.jsm, float %i.jsl)
  %i.jta = tail call float @llvm.fmuladd.f32(float %i.jsx, float %i.jsn, float %i.jsz)
  %i.jtb = tail call float @llvm.fmuladd.f32(float %i.jsr, float %i.jsq, float %i.jta)
  %i.jtc = tail call float @llvm.fmuladd.f32(float %i.jsp, float %i.jss, float %i.jtb)
  %i.jtd = fmul float %i.jso, %i.jsv              ; 2 uses
  %i.jte = tail call float @llvm.fmuladd.f32(float %i.jtd, float %i.jsm, float %i.jtc)
  %i.jtf = fneg float %i.jtd
  %i.jtg = tail call float @llvm.fmuladd.f32(float %i.jtf, float %i.jsn, float %i.jte)
  %i.jth = fmul <4 x float> %i.jsu, <float 2.000000e+00, float poison, float 2.000000e+00, float 2.000000e+00> ; 2 uses
  %i.jti = shufflevector <4 x float> %i.jth, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 2, i32 3> ; 2 uses
  %foldExtExtBinop10195 = fmul <4 x float> %i.jsu, %i.jti
  %i.jtj = extractelement <4 x float> %foldExtExtBinop10195, i64 0 ; 2 uses
  %i.jtk = fneg float %i.jtj
  %i.jtl = tail call float @llvm.fmuladd.f32(float %i.jtk, float %i.jsq, float %i.jtg)
  %i.jtm = tail call float @llvm.fmuladd.f32(float %i.jtj, float %i.jss, float %i.jtl)
  %i.jtn = shufflevector <4 x float> %i.jsu, <4 x float> poison, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.jto = insertelement <3 x float> %i.jtn, float %i.jst, i64 2
  %i.jtp = shufflevector <3 x float> %i.jto, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.jtq = fmul <4 x float> %i.jtp, %i.jti        ; 5 uses
  %i.jtr = extractelement <4 x float> %i.jtq, i64 0
  %i.jts = tail call float @llvm.fmuladd.f32(float %i.jtr, float %i.jsh, float %i.jtm)
  %i.jtt = fneg <4 x float> %i.jtq                ; 4 uses
  %i.jtu = extractelement <4 x float> %i.jtt, i64 0
  %i.jtv = tail call float @llvm.fmuladd.f32(float %i.jtu, float %i.jsi, float %i.jts)
  %i.jtw = extractelement <4 x float> %i.jtq, i64 1
  %i.jtx = tail call float @llvm.fmuladd.f32(float %i.jtw, float %i.jsh, float %i.jtv)
  %i.jty = extractelement <4 x float> %i.jtt, i64 1
  %i.jtz = tail call float @llvm.fmuladd.f32(float %i.jty, float %i.jsi, float %i.jtx)
  %i.jua = extractelement <4 x float> %i.jtt, i64 2
  %i.jub = tail call float @llvm.fmuladd.f32(float %i.jua, float %i.jsm, float %i.jtz)
  %i.juc = extractelement <4 x float> %i.jtq, i64 2
  %i.jud = tail call float @llvm.fmuladd.f32(float %i.juc, float %i.jsn, float %i.jub)
  %i.jue = extractelement <4 x float> %i.jtt, i64 3
  %i.juf = tail call float @llvm.fmuladd.f32(float %i.jue, float %i.jsq, float %i.jud)
  %i.jug = extractelement <4 x float> %i.jtq, i64 3
  %i.juh = tail call float @llvm.fmuladd.f32(float %i.jug, float %i.jss, float %i.juf)
  %i.jui = load float, ptr %i.as, align 4         ; 2 uses
  %i.juj = extractelement <4 x float> %i.jth, i64 3
  %i.juk = fmul float %i.juj, %i.jui              ; 2 uses
  %i.jul = tail call float @llvm.fmuladd.f32(float %i.juk, float %i.jsm, float %i.juh)
  %i.jum = fneg float %i.juk
  %i.jun = tail call float @llvm.fmuladd.f32(float %i.jum, float %i.jsn, float %i.jul)
  %i.juo = fmul float %i.jst, 2.000000e+00        ; 2 uses
  %i.jup = fmul float %i.jst, %i.juo              ; 2 uses
  %i.juq = fneg float %i.jup
  %i.jur = tail call float @llvm.fmuladd.f32(float %i.juq, float %i.jsq, float %i.jun)
  %i.jus = tail call float @llvm.fmuladd.f32(float %i.jup, float %i.jss, float %i.jur)
  %i.jut = fmul float %i.juo, %i.jui              ; 2 uses
  %i.juu = tail call float @llvm.fmuladd.f32(float %i.jut, float %i.jsh, float %i.jus)
  %i.juv = fneg float %i.jut
  %i.juw = tail call float @llvm.fmuladd.f32(float %i.juv, float %i.jsi, float %i.juu)
  %i.jux = tail call float @llvm.fmuladd.f32(float %i.jsq, float 2.000000e+00, float %i.juw)
  %i.juy = tail call float @llvm.fmuladd.f32(float %i.jss, float -2.000000e+00, float %i.jux)
  %i.juz = getelementptr inbounds nuw i8, ptr %1, i64 488
  store float %i.juy, ptr %i.juz, align 4
  %i.jva = load float, ptr %i.f, align 4
  %i.jvb = fmul float %i.jva, 2.000000e+00
  %i.jvc = load float, ptr %i.g, align 4
  %i.jvd = fmul float %i.jvb, %i.jvc              ; 2 uses
  %i.jve = load float, ptr %i.cp, align 4         ; 4 uses
  %i.jvf = load float, ptr %i.cs, align 4         ; 4 uses
  %i.jvg = fneg float %i.jvf
  %i.jvh = fmul float %i.jvd, %i.jvg
  %i.jvi = tail call float @llvm.fmuladd.f32(float %i.jvd, float %i.jve, float %i.jvh)
  %i.jvj = load float, ptr %i.q, align 4
  %i.jvk = fmul float %i.jvj, 2.000000e+00
  %i.jvl = load float, ptr %i.l, align 4
  %i.jvm = fmul float %i.jvk, %i.jvl              ; 2 uses
  %i.jvn = fneg float %i.jvm
  %i.jvo = tail call float @llvm.fmuladd.f32(float %i.jvn, float %i.jve, float %i.jvi)
  %i.jvp = tail call float @llvm.fmuladd.f32(float %i.jvm, float %i.jvf, float %i.jvo)
  %i.jvq = load float, ptr %i.ap, align 4
  %i.jvr = fmul float %i.jvq, 2.000000e+00
  %i.jvs = load float, ptr %i.ar, align 4
  %i.jvt = fmul float %i.jvr, %i.jvs              ; 2 uses
  %i.jvu = tail call float @llvm.fmuladd.f32(float %i.jvt, float %i.jve, float %i.jvp)
  %i.jvv = fneg float %i.jvt
  %i.jvw = tail call float @llvm.fmuladd.f32(float %i.jvv, float %i.jvf, float %i.jvu)
  %i.jvx = load float, ptr %i.br, align 4
  %i.jvy = fmul float %i.jvx, 2.000000e+00
  %i.jvz = load float, ptr %i.as, align 4
  %i.jwa = fmul float %i.jvy, %i.jvz              ; 2 uses
  %i.jwb = fneg float %i.jwa
  %i.jwc = tail call float @llvm.fmuladd.f32(float %i.jwb, float %i.jve, float %i.jvw)
  %i.jwd = tail call float @llvm.fmuladd.f32(float %i.jwa, float %i.jvf, float %i.jwc)
  %i.jwe = getelementptr inbounds nuw i8, ptr %1, i64 492
  store float %i.jwd, ptr %i.jwe, align 4
  %i.jwf = load float, ptr %i.f, align 4          ; 2 uses
  %i.jwg = fmul float %i.jwf, -2.000000e+00
  %i.jwh = load float, ptr %i.dz, align 4         ; 4 uses
  %i.jwi = fmul float %i.jwf, 2.000000e+00        ; 2 uses
  %i.jwj = load float, ptr %i.ec, align 4         ; 4 uses
  %i.jwk = load float, ptr %i.er, align 4         ; 4 uses
  %i.jwl = load float, ptr %i.eu, align 4         ; 4 uses
  %i.jwm = load <4 x float>, ptr %i.q, align 4    ; 3 uses
  %i.jwn = load float, ptr %i.g, align 4
  %i.jwo = extractelement <4 x float> %i.jwm, i64 0 ; 2 uses
  %i.jwp = fmul float %i.jwg, %i.jwo
  %i.jwq = fmul float %i.jwi, %i.jwo
  %i.jwr = fmul float %i.jwq, %i.jwj
  %i.jws = tail call float @llvm.fmuladd.f32(float %i.jwp, float %i.jwh, float %i.jwr)
  %i.jwt = fmul float %i.jwi, %i.jwn              ; 2 uses
  %i.jwu = tail call float @llvm.fmuladd.f32(float %i.jwt, float %i.jwk, float %i.jws)
  %i.jwv = fneg float %i.jwt
  %i.jww = tail call float @llvm.fmuladd.f32(float %i.jwv, float %i.jwl, float %i.jwu)
  %i.jwx = fmul <4 x float> %i.jwm, <float 2.000000e+00, float 2.000000e+00, float poison, float 2.000000e+00>
  %i.jwy = shufflevector <4 x float> %i.jwx, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 3>
  %i.jwz = load <2 x float>, ptr %i.br, align 4   ; 2 uses
  %i.jxa = load float, ptr %i.ar, align 4
  %i.jxb = shufflevector <2 x float> %i.jwz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.jxc = shufflevector <4 x float> %i.jwm, <4 x float> %i.jxb, <4 x i32> <i32 2, i32 2, i32 4, i32 5>
  %i.jxd = fmul <4 x float> %i.jwy, %i.jxc        ; 5 uses
  %i.jxe = fneg <4 x float> %i.jxd                ; 4 uses
  %i.jxf = extractelement <4 x float> %i.jxe, i64 0
  %i.jxg = tail call float @llvm.fmuladd.f32(float %i.jxf, float %i.jwk, float %i.jww)
  %i.jxh = extractelement <4 x float> %i.jxd, i64 0
  %i.jxi = tail call float @llvm.fmuladd.f32(float %i.jxh, float %i.jwl, float %i.jxg)
  %i.jxj = extractelement <4 x float> %i.jxe, i64 1
  %i.jxk = tail call float @llvm.fmuladd.f32(float %i.jxj, float %i.jwh, float %i.jxi)
  %i.jxl = extractelement <4 x float> %i.jxd, i64 1
  %i.jxm = tail call float @llvm.fmuladd.f32(float %i.jxl, float %i.jwj, float %i.jxk)
  %i.jxn = extractelement <4 x float> %i.jxe, i64 2
  %i.jxo = tail call float @llvm.fmuladd.f32(float %i.jxn, float %i.jwh, float %i.jxm)
  %i.jxp = extractelement <4 x float> %i.jxd, i64 2
  %i.jxq = tail call float @llvm.fmuladd.f32(float %i.jxp, float %i.jwj, float %i.jxo)
  %i.jxr = extractelement <4 x float> %i.jxd, i64 3
  %i.jxs = tail call float @llvm.fmuladd.f32(float %i.jxr, float %i.jwk, float %i.jxq)
  %i.jxt = extractelement <4 x float> %i.jxe, i64 3
  %i.jxu = tail call float @llvm.fmuladd.f32(float %i.jxt, float %i.jwl, float %i.jxs)
  %i.jxv = extractelement <2 x float> %i.jwz, i64 0
  %i.jxw = fmul float %i.jxv, 2.000000e+00
  %i.jxx = load float, ptr %i.as, align 4         ; 2 uses
  %i.jxy = fmul float %i.jxw, %i.jxx              ; 2 uses
  %i.jxz = fneg float %i.jxy
  %i.jya = tail call float @llvm.fmuladd.f32(float %i.jxz, float %i.jwk, float %i.jxu)
  %i.jyb = tail call float @llvm.fmuladd.f32(float %i.jxy, float %i.jwl, float %i.jya)
  %i.jyc = fmul float %i.jxa, 2.000000e+00
  %i.jyd = fmul float %i.jyc, %i.jxx              ; 2 uses
  %i.jye = fneg float %i.jyd
  %i.jyf = tail call float @llvm.fmuladd.f32(float %i.jye, float %i.jwh, float %i.jyb)
  %i.jyg = tail call float @llvm.fmuladd.f32(float %i.jyd, float %i.jwj, float %i.jyf)
end_hunk_1
