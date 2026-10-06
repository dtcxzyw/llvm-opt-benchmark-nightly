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
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 129 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 15 uses
  %i.i = load float, ptr %i.h, align 4            ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 15 uses
  %i.k = load float, ptr %i.j, align 4            ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 126 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 15 uses
  %i.n = load float, ptr %i.m, align 4            ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 15 uses
  %i.p = load float, ptr %i.o, align 4            ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 129 uses
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
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 141 uses
  %i.aq = load float, ptr %i.ap, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 130 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 132 uses
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
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 125 uses
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
  %i.jjp = load float, ptr %i.g, align 4          ; 6 uses
  %i.jjq = fmul float %i.jjo, %i.jjp
  %i.jjr = load float, ptr %i.hq, align 4         ; 4 uses
  %i.jjs = tail call float @llvm.fmuladd.f32(float %i.jjq, float %i.jjr, float %i.jjn)
  %i.jjt = load float, ptr %i.ht, align 4         ; 4 uses
  %i.jju = fneg float %i.jjp                      ; 2 uses
  %i.jjv = fmul float %i.jjf, %i.jju
  %i.jjw = tail call float @llvm.fmuladd.f32(float %i.jjv, float %i.jjt, float %i.jjs)
  %i.jjx = fmul float %i.jjh, 2.000000e+00        ; 2 uses
  %i.jjy = fmul float %i.jjh, %i.jjx
  %i.jjz = load float, ptr %i.gl, align 4         ; 5 uses
  %i.jka = tail call float @llvm.fmuladd.f32(float %i.jjy, float %i.jjz, float %i.jjw)
  %i.jkb = load float, ptr %i.go, align 4         ; 5 uses
  %i.jkc = fneg float %i.jjh
  %i.jkd = fmul float %i.jjh, %i.jkc
  %i.jke = tail call float @llvm.fmuladd.f32(float %i.jkd, float %i.jkb, float %i.jka)
  %i.jkf = load float, ptr %i.l, align 4          ; 3 uses
  %i.jkg = fneg float %i.jkf                      ; 2 uses
  %i.jkh = fmul float %i.jjx, %i.jkg
  %i.jki = tail call float @llvm.fmuladd.f32(float %i.jkh, float %i.jjr, float %i.jke)
  %i.jkj = fmul float %i.jjh, %i.jkf
  %i.jkk = tail call float @llvm.fmuladd.f32(float %i.jkj, float %i.jjt, float %i.jki)
  %i.jkl = fmul float %i.jjp, 2.000000e+00        ; 2 uses
  %i.jkm = fmul float %i.jjp, %i.jkl
  %i.jkn = tail call float @llvm.fmuladd.f32(float %i.jkm, float %i.jjz, float %i.jkk)
  %i.jko = fmul float %i.jjp, %i.jju
  %i.jkp = tail call float @llvm.fmuladd.f32(float %i.jko, float %i.jkb, float %i.jkn)
  %i.jkq = fmul float %i.jkl, %i.jkg
  %i.jkr = tail call float @llvm.fmuladd.f32(float %i.jkq, float %i.jjj, float %i.jkp)
  %i.jks = fmul float %i.jjp, %i.jkf
  %i.jkt = tail call float @llvm.fmuladd.f32(float %i.jks, float %i.jjl, float %i.jkr)
  %i.jku = load float, ptr %i.ap, align 4         ; 3 uses
  %i.jkv = fmul float %i.jku, 2.000000e+00        ; 2 uses
  %i.jkw = load float, ptr %i.br, align 4         ; 6 uses
  %i.jkx = fneg float %i.jkw                      ; 2 uses
  %i.jky = fmul float %i.jkv, %i.jkx
  %i.jkz = tail call float @llvm.fmuladd.f32(float %i.jky, float %i.jjj, float %i.jkt)
  %i.jla = fmul float %i.jku, %i.jkw
  %i.jlb = tail call float @llvm.fmuladd.f32(float %i.jla, float %i.jjl, float %i.jkz)
  %i.jlc = load float, ptr %i.ar, align 4         ; 6 uses
  %i.jld = fmul float %i.jkv, %i.jlc
  %i.jle = tail call float @llvm.fmuladd.f32(float %i.jld, float %i.jjr, float %i.jlb)
  %i.jlf = fneg float %i.jlc                      ; 2 uses
  %i.jlg = fmul float %i.jku, %i.jlf
  %i.jlh = tail call float @llvm.fmuladd.f32(float %i.jlg, float %i.jjt, float %i.jle)
  %i.jli = fmul float %i.jkw, 2.000000e+00        ; 2 uses
  %i.jlj = fmul float %i.jkw, %i.jli
  %i.jlk = tail call float @llvm.fmuladd.f32(float %i.jlj, float %i.jjz, float %i.jlh)
  %i.jll = fmul float %i.jkw, %i.jkx
  %i.jlm = tail call float @llvm.fmuladd.f32(float %i.jll, float %i.jkb, float %i.jlk)
  %i.jln = load float, ptr %i.as, align 4         ; 3 uses
  %i.jlo = fneg float %i.jln                      ; 2 uses
  %i.jlp = fmul float %i.jli, %i.jlo
  %i.jlq = tail call float @llvm.fmuladd.f32(float %i.jlp, float %i.jjr, float %i.jlm)
  %i.jlr = fmul float %i.jkw, %i.jln
  %i.jls = tail call float @llvm.fmuladd.f32(float %i.jlr, float %i.jjt, float %i.jlq)
  %i.jlt = fmul float %i.jlc, 2.000000e+00        ; 2 uses
  %i.jlu = fmul float %i.jlc, %i.jlt
  %i.jlv = tail call float @llvm.fmuladd.f32(float %i.jlu, float %i.jjz, float %i.jls)
  %i.jlw = fmul float %i.jlc, %i.jlf
  %i.jlx = tail call float @llvm.fmuladd.f32(float %i.jlw, float %i.jkb, float %i.jlv)
  %i.jly = fmul float %i.jlt, %i.jlo
  %i.jlz = tail call float @llvm.fmuladd.f32(float %i.jly, float %i.jjj, float %i.jlx)
  %i.jma = fmul float %i.jlc, %i.jln
  %i.jmb = tail call float @llvm.fmuladd.f32(float %i.jma, float %i.jjl, float %i.jlz)
  %i.jmc = tail call float @llvm.fmuladd.f32(float %i.jjz, float -2.000000e+00, float %i.jmb)
  %i.jmd = fadd float %i.jkb, %i.jmc
  %i.jme = getelementptr inbounds nuw i8, ptr %1, i64 460
  store float %i.jmd, ptr %i.jme, align 4
  %i.jmf = load float, ptr %i.f, align 4
  %i.jmg = fneg float %i.jmf
  %i.jmh = load float, ptr %i.g, align 4
  %i.jmi = load float, ptr %i.q, align 4
  %i.jmj = load float, ptr %i.l, align 4
  %i.jmk = fmul float %i.jmi, %i.jmj
  %i.jml = tail call float @llvm.fmuladd.f32(float %i.jmg, float %i.jmh, float %i.jmk)
  %i.jmm = load float, ptr %i.ap, align 4
  %i.jmn = load float, ptr %i.ar, align 4
  %i.jmo = fneg float %i.jmm
  %i.jmp = tail call float @llvm.fmuladd.f32(float %i.jmo, float %i.jmn, float %i.jml)
  %i.jmq = load float, ptr %i.br, align 4
  %i.jmr = load float, ptr %i.as, align 4
  %i.jms = tail call float @llvm.fmuladd.f32(float %i.jmq, float %i.jmr, float %i.jmp)
  %i.jmt = load float, ptr %i.cp, align 4
  %i.jmu = fmul float %i.jms, %i.jmt
  %i.jmv = getelementptr inbounds nuw i8, ptr %1, i64 464
  store float %i.jmu, ptr %i.jmv, align 4
  %i.jmw = load float, ptr %i.f, align 4          ; 2 uses
  %i.jmx = load float, ptr %i.q, align 4          ; 2 uses
  %i.jmy = fmul float %i.jmw, %i.jmx
  %i.jmz = load float, ptr %i.dz, align 4         ; 4 uses
  %i.jna = load float, ptr %i.g, align 4          ; 2 uses
  %i.jnb = fmul float %i.jmw, %i.jna
  %i.jnc = load float, ptr %i.er, align 4         ; 4 uses
  %i.jnd = fneg float %i.jnc
  %i.jne = fmul float %i.jnb, %i.jnd
  %i.jnf = tail call float @llvm.fmuladd.f32(float %i.jmy, float %i.jmz, float %i.jne)
  %i.jng = load float, ptr %i.l, align 4          ; 2 uses
  %i.jnh = fmul float %i.jmx, %i.jng
  %i.jni = tail call float @llvm.fmuladd.f32(float %i.jnh, float %i.jnc, float %i.jnf)
  %i.jnj = fmul float %i.jna, %i.jng
  %i.jnk = tail call float @llvm.fmuladd.f32(float %i.jnj, float %i.jmz, float %i.jni)
  %i.jnl = load float, ptr %i.ap, align 4         ; 2 uses
  %i.jnm = load float, ptr %i.br, align 4         ; 2 uses
  %i.jnn = fmul float %i.jnl, %i.jnm
  %i.jno = tail call float @llvm.fmuladd.f32(float %i.jnn, float %i.jmz, float %i.jnk)
  %i.jnp = load float, ptr %i.ar, align 4         ; 2 uses
  %i.jnq = fneg float %i.jnp
  %i.jnr = fmul float %i.jnl, %i.jnq
  %i.jns = tail call float @llvm.fmuladd.f32(float %i.jnr, float %i.jnc, float %i.jno)
  %i.jnt = load float, ptr %i.as, align 4         ; 2 uses
  %i.jnu = fmul float %i.jnm, %i.jnt
  %i.jnv = tail call float @llvm.fmuladd.f32(float %i.jnu, float %i.jnc, float %i.jns)
  %i.jnw = fmul float %i.jnp, %i.jnt
  %i.jnx = tail call float @llvm.fmuladd.f32(float %i.jnw, float %i.jmz, float %i.jnv)
  %i.jny = getelementptr inbounds nuw i8, ptr %1, i64 468
  store float %i.jnx, ptr %i.jny, align 4
  %i.jnz = load float, ptr %i.f, align 4          ; 2 uses
  %i.joa = load float, ptr %i.q, align 4          ; 4 uses
  %i.job = fmul float %i.jnz, %i.joa
  %i.joc = load float, ptr %i.gv, align 4         ; 4 uses
  %i.jod = load float, ptr %i.g, align 4          ; 4 uses
  %i.joe = fmul float %i.jnz, %i.jod
  %i.jof = load float, ptr %i.hq, align 4         ; 4 uses
  %i.jog = fneg float %i.jof
  %i.joh = fmul float %i.joe, %i.jog
  %i.joi = tail call float @llvm.fmuladd.f32(float %i.job, float %i.joc, float %i.joh)
  %i.joj = load float, ptr %i.gl, align 4         ; 5 uses
  %i.jok = fneg float %i.joa
  %i.jol = fmul float %i.joa, %i.jok
  %i.jom = tail call float @llvm.fmuladd.f32(float %i.jol, float %i.joj, float %i.joi)
  %i.jon = load float, ptr %i.l, align 4          ; 2 uses
  %i.joo = fmul float %i.joa, %i.jon
  %i.jop = tail call float @llvm.fmuladd.f32(float %i.joo, float %i.jof, float %i.jom)
  %i.joq = fneg float %i.jod
  %i.jor = fmul float %i.jod, %i.joq
  %i.jos = tail call float @llvm.fmuladd.f32(float %i.jor, float %i.joj, float %i.jop)
  %i.jot = fmul float %i.jod, %i.jon
  %i.jou = tail call float @llvm.fmuladd.f32(float %i.jot, float %i.joc, float %i.jos)
  %i.jov = load float, ptr %i.ap, align 4         ; 2 uses
  %i.jow = load float, ptr %i.br, align 4         ; 4 uses
  %i.jox = fmul float %i.jov, %i.jow
  %i.joy = tail call float @llvm.fmuladd.f32(float %i.jox, float %i.joc, float %i.jou)
  %i.joz = load float, ptr %i.ar, align 4         ; 3 uses
  %i.jpa = fneg float %i.joz                      ; 2 uses
  %i.jpb = fmul float %i.jov, %i.jpa
  %i.jpc = tail call float @llvm.fmuladd.f32(float %i.jpb, float %i.jof, float %i.joy)
  %i.jpd = fneg float %i.jow
  %i.jpe = fmul float %i.jow, %i.jpd
  %i.jpf = tail call float @llvm.fmuladd.f32(float %i.jpe, float %i.joj, float %i.jpc)
  %i.jpg = load float, ptr %i.as, align 4         ; 2 uses
  %i.jph = fmul float %i.jow, %i.jpg
  %i.jpi = tail call float @llvm.fmuladd.f32(float %i.jph, float %i.jof, float %i.jpf)
  %i.jpj = fmul float %i.joz, %i.jpa
  %i.jpk = tail call float @llvm.fmuladd.f32(float %i.jpj, float %i.joj, float %i.jpi)
  %i.jpl = fmul float %i.joz, %i.jpg
  %i.jpm = tail call float @llvm.fmuladd.f32(float %i.jpl, float %i.joc, float %i.jpk)
  %i.jpn = fadd float %i.joj, %i.jpm
  %i.jpo = getelementptr inbounds nuw i8, ptr %1, i64 472
  store float %i.jpn, ptr %i.jpo, align 4
  %i.jpp = getelementptr inbounds nuw i8, ptr %1, i64 476
  store float 0.000000e+00, ptr %i.jpp, align 4
  %i.jpq = load float, ptr %i.f, align 4          ; 2 uses
  %i.jpr = fmul float %i.jpq, -2.000000e+00
  %i.jps = load float, ptr %i.g, align 4          ; 2 uses
  %i.jpt = fmul float %i.jpr, %i.jps
  %i.jpu = load float, ptr %i.cp, align 4         ; 4 uses
  %i.jpv = fmul float %i.jpq, 2.000000e+00
  %i.jpw = fmul float %i.jpv, %i.jps
  %i.jpx = load float, ptr %i.cs, align 4         ; 4 uses
  %i.jpy = fmul float %i.jpw, %i.jpx
  %i.jpz = tail call float @llvm.fmuladd.f32(float %i.jpt, float %i.jpu, float %i.jpy)
  %i.jqa = load float, ptr %i.q, align 4
  %i.jqb = fmul float %i.jqa, 2.000000e+00
  %i.jqc = load float, ptr %i.l, align 4
  %i.jqd = fmul float %i.jqb, %i.jqc              ; 2 uses
  %i.jqe = tail call float @llvm.fmuladd.f32(float %i.jqd, float %i.jpu, float %i.jpz)
  %i.jqf = fneg float %i.jqd
  %i.jqg = tail call float @llvm.fmuladd.f32(float %i.jqf, float %i.jpx, float %i.jqe)
  %i.jqh = load float, ptr %i.ap, align 4
  %i.jqi = fmul float %i.jqh, 2.000000e+00
  %i.jqj = load float, ptr %i.ar, align 4
  %i.jqk = fmul float %i.jqi, %i.jqj              ; 2 uses
  %i.jql = fneg float %i.jqk
  %i.jqm = tail call float @llvm.fmuladd.f32(float %i.jql, float %i.jpu, float %i.jqg)
  %i.jqn = tail call float @llvm.fmuladd.f32(float %i.jqk, float %i.jpx, float %i.jqm)
  %i.jqo = load float, ptr %i.br, align 4
  %i.jqp = fmul float %i.jqo, 2.000000e+00
  %i.jqq = load float, ptr %i.as, align 4
  %i.jqr = fmul float %i.jqp, %i.jqq              ; 2 uses
  %i.jqs = tail call float @llvm.fmuladd.f32(float %i.jqr, float %i.jpu, float %i.jqn)
  %i.jqt = fneg float %i.jqr
  %i.jqu = tail call float @llvm.fmuladd.f32(float %i.jqt, float %i.jpx, float %i.jqs)
  %i.jqv = getelementptr inbounds nuw i8, ptr %1, i64 480
  store float %i.jqu, ptr %i.jqv, align 4
  %i.jqw = load float, ptr %i.dz, align 4         ; 4 uses
  %i.jqx = load float, ptr %i.ec, align 4         ; 4 uses
  %i.jqy = fneg float %i.jqx
  %i.jqz = load float, ptr %i.er, align 4         ; 4 uses
  %i.jra = load float, ptr %i.eu, align 4         ; 4 uses
  %2 = load <4 x float>, ptr %i.f, align 4        ; 2 uses
  %i.jrb = load float, ptr %i.q, align 4
  %3 = load <4 x float>, ptr %i.ap, align 4       ; 2 uses
  %i.jrc = load float, ptr %i.br, align 4
  %i.jrd = shufflevector <4 x float> %2, <4 x float> %3, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.jre = fmul <4 x float> %i.jrd, splat (float 2.000000e+00) ; 3 uses
  %i.jrf = extractelement <4 x float> %i.jre, i64 0
  %i.jrg = fmul float %i.jrf, %i.jrb              ; 2 uses
  %i.jrh = fmul float %i.jrg, %i.jqy
  %i.jri = tail call float @llvm.fmuladd.f32(float %i.jrg, float %i.jqw, float %i.jrh)
  %i.jrj = shufflevector <4 x float> %2, <4 x float> %3, <4 x i32> <i32 2, i32 3, i32 3, i32 5>
  %i.jrk = fmul <4 x float> %i.jre, %i.jrj        ; 5 uses
  %i.jrl = fneg <4 x float> %i.jrk                ; 4 uses
  %i.jrm = extractelement <4 x float> %i.jrl, i64 0
  %i.jrn = tail call float @llvm.fmuladd.f32(float %i.jrm, float %i.jqz, float %i.jri)
  %i.jro = extractelement <4 x float> %i.jrk, i64 0
  %i.jrp = tail call float @llvm.fmuladd.f32(float %i.jro, float %i.jra, float %i.jrn)
  %i.jrq = extractelement <4 x float> %i.jrk, i64 1
  %i.jrr = tail call float @llvm.fmuladd.f32(float %i.jrq, float %i.jqz, float %i.jrp)
  %i.jrs = extractelement <4 x float> %i.jrl, i64 1
  %i.jrt = tail call float @llvm.fmuladd.f32(float %i.jrs, float %i.jra, float %i.jrr)
  %i.jru = extractelement <4 x float> %i.jrk, i64 2
  %i.jrv = tail call float @llvm.fmuladd.f32(float %i.jru, float %i.jqw, float %i.jrt)
  %i.jrw = extractelement <4 x float> %i.jrl, i64 2
  %i.jrx = tail call float @llvm.fmuladd.f32(float %i.jrw, float %i.jqx, float %i.jrv)
  %i.jry = extractelement <4 x float> %i.jrk, i64 3
  %i.jrz = tail call float @llvm.fmuladd.f32(float %i.jry, float %i.jqw, float %i.jrx)
  %i.jsa = extractelement <4 x float> %i.jrl, i64 3
  %i.jsb = tail call float @llvm.fmuladd.f32(float %i.jsa, float %i.jqx, float %i.jrz)
  %i.jsc = load float, ptr %i.ar, align 4         ; 2 uses
  %i.jsd = extractelement <4 x float> %i.jre, i64 3
  %i.jse = fmul float %i.jsd, %i.jsc              ; 2 uses
  %i.jsf = fneg float %i.jse
  %i.jsg = tail call float @llvm.fmuladd.f32(float %i.jsf, float %i.jqz, float %i.jsb)
  %i.jsh = tail call float @llvm.fmuladd.f32(float %i.jse, float %i.jra, float %i.jsg)
  %i.jsi = fmul float %i.jrc, 2.000000e+00
  %i.jsj = load float, ptr %i.as, align 4         ; 2 uses
  %i.jsk = fmul float %i.jsi, %i.jsj              ; 2 uses
  %i.jsl = tail call float @llvm.fmuladd.f32(float %i.jsk, float %i.jqz, float %i.jsh)
  %i.jsm = fneg float %i.jsk
  %i.jsn = tail call float @llvm.fmuladd.f32(float %i.jsm, float %i.jra, float %i.jsl)
  %i.jso = fmul float %i.jsc, 2.000000e+00
  %i.jsp = fmul float %i.jso, %i.jsj              ; 2 uses
  %i.jsq = tail call float @llvm.fmuladd.f32(float %i.jsp, float %i.jqw, float %i.jsn)
  %i.jsr = fneg float %i.jsp
  %i.jss = tail call float @llvm.fmuladd.f32(float %i.jsr, float %i.jqx, float %i.jsq)
  %i.jst = getelementptr inbounds nuw i8, ptr %1, i64 484
  store float %i.jss, ptr %i.jst, align 4
  %i.jsu = load float, ptr %i.f, align 4
  %i.jsv = fmul float %i.jsu, 2.000000e+00        ; 2 uses
  %i.jsw = load float, ptr %i.q, align 4          ; 3 uses
  %i.jsx = fmul float %i.jsv, %i.jsw              ; 2 uses
  %i.jsy = load float, ptr %i.gv, align 4         ; 4 uses
  %i.jsz = load float, ptr %i.gy, align 4         ; 4 uses
  %i.jta = fneg float %i.jsz
  %i.jtb = fmul float %i.jsx, %i.jta
  %i.jtc = tail call float @llvm.fmuladd.f32(float %i.jsx, float %i.jsy, float %i.jtb)
  %i.jtd = load float, ptr %i.hq, align 4         ; 4 uses
  %i.jte = load float, ptr %i.ht, align 4         ; 4 uses
  %i.jtf = fmul float %i.jsw, 2.000000e+00        ; 2 uses
  %i.jtg = fmul float %i.jsw, %i.jtf              ; 2 uses
  %i.jth = load float, ptr %i.gl, align 4         ; 5 uses
  %i.jti = fneg float %i.jtg
  %i.jtj = load float, ptr %i.go, align 4         ; 5 uses
  %i.jtk = load float, ptr %i.ar, align 4         ; 3 uses
  %i.jtl = load <4 x float>, ptr %i.g, align 4    ; 4 uses
  %i.jtm = load float, ptr %i.l, align 4
  %i.jtn = extractelement <4 x float> %i.jtl, i64 0
  %i.jto = fmul float %i.jsv, %i.jtn              ; 2 uses
  %i.jtp = fneg float %i.jto
  %i.jtq = tail call float @llvm.fmuladd.f32(float %i.jtp, float %i.jtd, float %i.jtc)
  %i.jtr = tail call float @llvm.fmuladd.f32(float %i.jto, float %i.jte, float %i.jtq)
  %i.jts = tail call float @llvm.fmuladd.f32(float %i.jti, float %i.jth, float %i.jtr)
  %i.jtt = tail call float @llvm.fmuladd.f32(float %i.jtg, float %i.jtj, float %i.jts)
  %i.jtu = fmul float %i.jtf, %i.jtm              ; 2 uses
  %i.jtv = tail call float @llvm.fmuladd.f32(float %i.jtu, float %i.jtd, float %i.jtt)
  %i.jtw = fneg float %i.jtu
  %i.jtx = tail call float @llvm.fmuladd.f32(float %i.jtw, float %i.jte, float %i.jtv)
  %i.jty = fmul <4 x float> %i.jtl, <float 2.000000e+00, float poison, float 2.000000e+00, float 2.000000e+00> ; 2 uses
  %i.jtz = shufflevector <4 x float> %i.jty, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 2, i32 3> ; 2 uses
  %foldExtExtBinop10201 = fmul <4 x float> %i.jtl, %i.jtz
  %i.jua = extractelement <4 x float> %foldExtExtBinop10201, i64 0 ; 2 uses
  %i.jub = fneg float %i.jua
  %i.juc = tail call float @llvm.fmuladd.f32(float %i.jub, float %i.jth, float %i.jtx)
  %i.jud = tail call float @llvm.fmuladd.f32(float %i.jua, float %i.jtj, float %i.juc)
  %i.jue = shufflevector <4 x float> %i.jtl, <4 x float> poison, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.juf = insertelement <3 x float> %i.jue, float %i.jtk, i64 2
  %i.jug = shufflevector <3 x float> %i.juf, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.juh = fmul <4 x float> %i.jug, %i.jtz        ; 5 uses
  %i.jui = extractelement <4 x float> %i.juh, i64 0
  %i.juj = tail call float @llvm.fmuladd.f32(float %i.jui, float %i.jsy, float %i.jud)
  %i.juk = fneg <4 x float> %i.juh                ; 4 uses
  %i.jul = extractelement <4 x float> %i.juk, i64 0
  %i.jum = tail call float @llvm.fmuladd.f32(float %i.jul, float %i.jsz, float %i.juj)
  %i.jun = extractelement <4 x float> %i.juh, i64 1
  %i.juo = tail call float @llvm.fmuladd.f32(float %i.jun, float %i.jsy, float %i.jum)
  %i.jup = extractelement <4 x float> %i.juk, i64 1
  %i.juq = tail call float @llvm.fmuladd.f32(float %i.jup, float %i.jsz, float %i.juo)
  %i.jur = extractelement <4 x float> %i.juk, i64 2
  %i.jus = tail call float @llvm.fmuladd.f32(float %i.jur, float %i.jtd, float %i.juq)
  %i.jut = extractelement <4 x float> %i.juh, i64 2
  %i.juu = tail call float @llvm.fmuladd.f32(float %i.jut, float %i.jte, float %i.jus)
  %i.juv = extractelement <4 x float> %i.juk, i64 3
  %i.juw = tail call float @llvm.fmuladd.f32(float %i.juv, float %i.jth, float %i.juu)
  %i.jux = extractelement <4 x float> %i.juh, i64 3
  %i.juy = tail call float @llvm.fmuladd.f32(float %i.jux, float %i.jtj, float %i.juw)
  %i.juz = load float, ptr %i.as, align 4         ; 2 uses
  %i.jva = extractelement <4 x float> %i.jty, i64 3
  %i.jvb = fmul float %i.jva, %i.juz              ; 2 uses
  %i.jvc = tail call float @llvm.fmuladd.f32(float %i.jvb, float %i.jtd, float %i.juy)
  %i.jvd = fneg float %i.jvb
  %i.jve = tail call float @llvm.fmuladd.f32(float %i.jvd, float %i.jte, float %i.jvc)
  %i.jvf = fmul float %i.jtk, 2.000000e+00        ; 2 uses
  %i.jvg = fmul float %i.jtk, %i.jvf              ; 2 uses
  %i.jvh = fneg float %i.jvg
  %i.jvi = tail call float @llvm.fmuladd.f32(float %i.jvh, float %i.jth, float %i.jve)
  %i.jvj = tail call float @llvm.fmuladd.f32(float %i.jvg, float %i.jtj, float %i.jvi)
  %i.jvk = fmul float %i.jvf, %i.juz              ; 2 uses
  %i.jvl = tail call float @llvm.fmuladd.f32(float %i.jvk, float %i.jsy, float %i.jvj)
  %i.jvm = fneg float %i.jvk
  %i.jvn = tail call float @llvm.fmuladd.f32(float %i.jvm, float %i.jsz, float %i.jvl)
  %i.jvo = tail call float @llvm.fmuladd.f32(float %i.jth, float 2.000000e+00, float %i.jvn)
  %i.jvp = tail call float @llvm.fmuladd.f32(float %i.jtj, float -2.000000e+00, float %i.jvo)
  %i.jvq = getelementptr inbounds nuw i8, ptr %1, i64 488
  store float %i.jvp, ptr %i.jvq, align 4
  %i.jvr = load float, ptr %i.f, align 4
  %i.jvs = fmul float %i.jvr, 2.000000e+00
  %i.jvt = load float, ptr %i.g, align 4
  %i.jvu = fmul float %i.jvs, %i.jvt              ; 2 uses
  %i.jvv = load float, ptr %i.cp, align 4         ; 4 uses
  %i.jvw = load float, ptr %i.cs, align 4         ; 4 uses
  %i.jvx = fneg float %i.jvw
  %i.jvy = fmul float %i.jvu, %i.jvx
  %i.jvz = tail call float @llvm.fmuladd.f32(float %i.jvu, float %i.jvv, float %i.jvy)
  %i.jwa = load float, ptr %i.q, align 4
  %i.jwb = fmul float %i.jwa, 2.000000e+00
  %i.jwc = load float, ptr %i.l, align 4
  %i.jwd = fmul float %i.jwb, %i.jwc              ; 2 uses
  %i.jwe = fneg float %i.jwd
  %i.jwf = tail call float @llvm.fmuladd.f32(float %i.jwe, float %i.jvv, float %i.jvz)
  %i.jwg = tail call float @llvm.fmuladd.f32(float %i.jwd, float %i.jvw, float %i.jwf)
  %i.jwh = load float, ptr %i.ap, align 4
  %i.jwi = fmul float %i.jwh, 2.000000e+00
  %i.jwj = load float, ptr %i.ar, align 4
  %i.jwk = fmul float %i.jwi, %i.jwj              ; 2 uses
  %i.jwl = tail call float @llvm.fmuladd.f32(float %i.jwk, float %i.jvv, float %i.jwg)
  %i.jwm = fneg float %i.jwk
  %i.jwn = tail call float @llvm.fmuladd.f32(float %i.jwm, float %i.jvw, float %i.jwl)
  %i.jwo = load float, ptr %i.br, align 4
  %i.jwp = fmul float %i.jwo, 2.000000e+00
  %i.jwq = load float, ptr %i.as, align 4
  %i.jwr = fmul float %i.jwp, %i.jwq              ; 2 uses
  %i.jws = fneg float %i.jwr
  %i.jwt = tail call float @llvm.fmuladd.f32(float %i.jws, float %i.jvv, float %i.jwn)
  %i.jwu = tail call float @llvm.fmuladd.f32(float %i.jwr, float %i.jvw, float %i.jwt)
  %i.jwv = getelementptr inbounds nuw i8, ptr %1, i64 492
  store float %i.jwu, ptr %i.jwv, align 4
  %i.jww = load float, ptr %i.f, align 4          ; 2 uses
  %i.jwx = fmul float %i.jww, -2.000000e+00
  %i.jwy = load float, ptr %i.dz, align 4         ; 4 uses
  %i.jwz = fmul float %i.jww, 2.000000e+00        ; 2 uses
  %i.jxa = load float, ptr %i.ec, align 4         ; 4 uses
  %i.jxb = load float, ptr %i.er, align 4         ; 4 uses
  %i.jxc = load float, ptr %i.eu, align 4         ; 4 uses
  %i.jxd = load <4 x float>, ptr %i.q, align 4    ; 3 uses
  %i.jxe = load float, ptr %i.g, align 4
  %i.jxf = extractelement <4 x float> %i.jxd, i64 0 ; 2 uses
  %i.jxg = fmul float %i.jwx, %i.jxf
  %i.jxh = fmul float %i.jwz, %i.jxf
  %i.jxi = fmul float %i.jxh, %i.jxa
  %i.jxj = tail call float @llvm.fmuladd.f32(float %i.jxg, float %i.jwy, float %i.jxi)
  %i.jxk = fmul float %i.jwz, %i.jxe              ; 2 uses
  %i.jxl = tail call float @llvm.fmuladd.f32(float %i.jxk, float %i.jxb, float %i.jxj)
  %i.jxm = fneg float %i.jxk
  %i.jxn = tail call float @llvm.fmuladd.f32(float %i.jxm, float %i.jxc, float %i.jxl)
  %i.jxo = fmul <4 x float> %i.jxd, <float 2.000000e+00, float 2.000000e+00, float poison, float 2.000000e+00>
  %i.jxp = shufflevector <4 x float> %i.jxo, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 3>
  %i.jxq = load <2 x float>, ptr %i.br, align 4   ; 2 uses
  %i.jxr = load float, ptr %i.ar, align 4
  %i.jxs = shufflevector <2 x float> %i.jxq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.jxt = shufflevector <4 x float> %i.jxd, <4 x float> %i.jxs, <4 x i32> <i32 2, i32 2, i32 4, i32 5>
  %i.jxu = fmul <4 x float> %i.jxp, %i.jxt        ; 5 uses
  %i.jxv = fneg <4 x float> %i.jxu                ; 4 uses
  %i.jxw = extractelement <4 x float> %i.jxv, i64 0
  %i.jxx = tail call float @llvm.fmuladd.f32(float %i.jxw, float %i.jxb, float %i.jxn)
  %i.jxy = extractelement <4 x float> %i.jxu, i64 0
  %i.jxz = tail call float @llvm.fmuladd.f32(float %i.jxy, float %i.jxc, float %i.jxx)
  %i.jya = extractelement <4 x float> %i.jxv, i64 1
  %i.jyb = tail call float @llvm.fmuladd.f32(float %i.jya, float %i.jwy, float %i.jxz)
  %i.jyc = extractelement <4 x float> %i.jxu, i64 1
  %i.jyd = tail call float @llvm.fmuladd.f32(float %i.jyc, float %i.jxa, float %i.jyb)
  %i.jye = extractelement <4 x float> %i.jxv, i64 2
  %i.jyf = tail call float @llvm.fmuladd.f32(float %i.jye, float %i.jwy, float %i.jyd)
  %i.jyg = extractelement <4 x float> %i.jxu, i64 2
  %i.jyh = tail call float @llvm.fmuladd.f32(float %i.jyg, float %i.jxa, float %i.jyf)
  %i.jyi = extractelement <4 x float> %i.jxu, i64 3
  %i.jyj = tail call float @llvm.fmuladd.f32(float %i.jyi, float %i.jxb, float %i.jyh)
  %i.jyk = extractelement <4 x float> %i.jxv, i64 3
  %i.jyl = tail call float @llvm.fmuladd.f32(float %i.jyk, float %i.jxc, float %i.jyj)
  %i.jym = extractelement <2 x float> %i.jxq, i64 0
  %i.jyn = fmul float %i.jym, 2.000000e+00
  %i.jyo = load float, ptr %i.as, align 4         ; 2 uses
  %i.jyp = fmul float %i.jyn, %i.jyo              ; 2 uses
  %i.jyq = fneg float %i.jyp
  %i.jyr = tail call float @llvm.fmuladd.f32(float %i.jyq, float %i.jxb, float %i.jyl)
  %i.jys = tail call float @llvm.fmuladd.f32(float %i.jyp, float %i.jxc, float %i.jyr)
  %i.jyt = fmul float %i.jxr, 2.000000e+00
  %i.jyu = fmul float %i.jyt, %i.jyo              ; 2 uses
  %i.jyv = fneg float %i.jyu
  %i.jyw = tail call float @llvm.fmuladd.f32(float %i.jyv, float %i.jwy, float %i.jys)
  %i.jyx = tail call float @llvm.fmuladd.f32(float %i.jyu, float %i.jxa, float %i.jyw)
end_hunk_1
