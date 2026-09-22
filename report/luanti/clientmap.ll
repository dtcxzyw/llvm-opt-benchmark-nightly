Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/clientmap?download=true
inline.NumInlined: 4211
inline.NumDeleted: 1666
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN9ClientMap20updateDrawListShadowEN4core8vector3dIfEES2_ff:.noexc.i
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139

bb.ag:                                            ; preds = %.noexc122
  %i.gi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gj = load ptr, ptr %10, align 8, !tbaa !64   ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.ey
  br i1 %i.gk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137: ; preds = %bb.ag
  %i.gl = load i64, ptr %i.ey, align 8, !tbaa !65
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gm) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137, %bb.af
  %.pn79 = phi { ptr, i32 } [ %i.gh, %bb.af ], [ %i.gi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137 ], [ %i.gi, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #2
  br label %.body

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142

bb.ai:                                            ; preds = %.noexc129
  %i.go = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gp = load ptr, ptr %11, align 8, !tbaa !64   ; 2 uses
  %i.gq = icmp eq ptr %i.gp, %i.fl
  br i1 %i.gq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140: ; preds = %bb.ai
  %i.gr = load i64, ptr %i.fl, align 8, !tbaa !65
  %i.gs = add i64 %i.gr, 1
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gs) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140, %bb.ah
  %.pn81 = phi { ptr, i32 } [ %i.gn, %bb.ah ], [ %i.go, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140 ], [ %i.go, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #2
  br label %.body

.body:                                            ; preds = %bb.z, %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE10_Auto_nodeD2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142
  %.pn86.pn.pn.pn = phi { ptr, i32 } [ %i.eo, %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE10_Auto_nodeD2Ev.exit.i ], [ %.pn77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136 ], [ %.pn81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142 ], [ %.pn79, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139 ], [ %i.es, %bb.z ]
  call void @_ZN13ScopeProfilerD2Ev(ptr noundef nonnull align 8 dead_on_return(50) dereferenceable(50) %7) #2
  br label %bb.aj

bb.aj:                                            ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98
  %.pn86.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn86.pn.pn.pn, %.body ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #2
  resume { ptr, i32 } %.pn86.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9ClientMap13reportMetricsEmjj(ptr nofree nonnull readnone align 8 captures(none) %0, i64 %1, i32 %2, i32 noundef %3) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = load ptr, ptr @g_profiler, align 8, !tbaa !493
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #2
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #2
  store i64 35, ptr %i.a, align 8, !tbaa !178
  %i.d = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !64
  %i.e = load i64, ptr %i.a, align 8, !tbaa !178  ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %i.d, ptr noundef nonnull align 1 dereferenceable(35) @.str.42, i64 35, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !176
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  store i8 0, ptr %i.g, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #2
  %i.h = uitofp nsz i32 %3 to float
  invoke void @_ZN8Profiler3avgERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEf(ptr noundef nonnull align 8 dereferenceable(144) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %4, float noundef %i.h)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc.i
  %i.i = load ptr, ptr %4, align 8, !tbaa !64     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.c
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.c, align 8, !tbaa !65
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #2
  ret void

bb.b:                                             ; preds = %.noexc.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %4, align 8, !tbaa !64     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.c
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.b
  %i.p = load i64, ptr %i.c, align 8, !tbaa !65
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #2
  resume { ptr, i32 } %i.m
}

declare void @_ZN12MapBlockMesh24updateTransparentBuffersEN4core8vector3dIfEENS1_IsEEb(ptr noundef nonnull align 8 dereferenceable(249), <2 x float>, float, i48, i1 noundef zeroext) local_unnamed_addr #7

declare void @_ZN12MapBlockMesh29consolidateTransparentBuffersEv(ptr noundef nonnull align 8 dereferenceable(249)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #22

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5scene10ISceneNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #35
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5scene10ISceneNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #35
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5scene10ISceneNode9OnAnimateEj(ptr noundef nonnull align 8 dereferenceable(218) %0, i32 noundef %1) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i8, ptr %i.a, align 8, !tbaa !112, !range !174, !noundef !175
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp ne ptr %i.e, %i.d
  %or.cond.not = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !58
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(218) %0)
  %.sroa.04.010 = load ptr, ptr %i.d, align 8, !tbaa !86 ; 2 uses
  %.not11 = icmp eq ptr %.sroa.04.010, %i.d
  br i1 %.not11, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.sroa.04.012 = phi ptr [ %.sroa.04.0, %.lr.ph ], [ %.sroa.04.010, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.04.012, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !257  ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(218) %i.k, i32 noundef %1)
  %.sroa.04.0 = load ptr, ptr %.sroa.04.012, align 8, !tbaa !86 ; 2 uses
  %.not = icmp eq ptr %.sroa.04.0, %i.d
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZNK5scene10ISceneNode7getNameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5scene10ISceneNode7setNameERKSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_copy_assignERKS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5scene10ISceneNode25getTransformedBoundingBoxEv(ptr dead_on_unwind noalias writable sret(%"class.core::aabbox3d") align 4 %0, ptr noundef nonnull align 8 dereferenceable(218) %1) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !58
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 4 dereferenceable(24) ptr %i.c(ptr noundef nonnull align 8 dereferenceable(218) %1)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(24) %i.d, i64 24, i1 false), !tbaa.struct !651
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.j = load <6 x float>, ptr %0, align 4, !tbaa !82 ; 10 uses
  %i.k = load <3 x float>, ptr %i.g, align 8, !tbaa !82 ; 2 uses
  %2 = shufflevector <3 x float> %i.k, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.l = load <3 x float>, ptr %i.e, align 8, !tbaa !82
  %3 = shufflevector <3 x float> %i.l, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 3 uses
  %i.m = shufflevector <6 x float> %i.j, <6 x float> poison, <4 x i32> zeroinitializer
  %i.n = fmul nsz <4 x float> %i.m, %3            ; 2 uses
  %4 = shufflevector <6 x float> %i.j, <6 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.o = shufflevector <6 x float> %i.j, <6 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.p = fmul nsz <4 x float> %i.o, %3            ; 2 uses
  %5 = shufflevector <6 x float> %i.j, <6 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 0>
  %i.q = fcmp nsz olt <4 x float> %i.n, %i.p      ; 2 uses
  %i.r = load <3 x float>, ptr %i.h, align 8, !tbaa !82
  %6 = shufflevector <3 x float> %i.r, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 3 uses
  %i.s = shufflevector <6 x float> %i.j, <6 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.t = fmul nsz <4 x float> %i.s, %6            ; 2 uses
  %7 = shufflevector <6 x float> %i.j, <6 x float> poison, <4 x i32> <i32 1, i32 4, i32 poison, i32 poison> ; 2 uses
  %8 = shufflevector <4 x float> %7, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.u = shufflevector <6 x float> %i.j, <6 x float> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %i.v = fmul nsz <4 x float> %i.u, %6            ; 2 uses
  %9 = shufflevector <4 x float> %7, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 0>
  %i.w = fcmp nsz olt <4 x float> %i.t, %i.v      ; 2 uses
  %i.x = load <3 x float>, ptr %i.i, align 8, !tbaa !82
  %10 = shufflevector <3 x float> %i.x, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 3 uses
  %i.y = shufflevector <6 x float> %i.j, <6 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.z = fmul nsz <4 x float> %i.y, %10           ; 2 uses
  %11 = shufflevector <6 x float> %i.j, <6 x float> poison, <4 x i32> <i32 2, i32 5, i32 poison, i32 poison> ; 2 uses
  %12 = shufflevector <4 x float> %11, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.aa = shufflevector <6 x float> %i.j, <6 x float> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  %i.ab = fmul nsz <4 x float> %i.aa, %10         ; 2 uses
  %13 = shufflevector <4 x float> %11, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 0>
  %i.ac = fcmp nsz olt <4 x float> %i.z, %i.ab    ; 2 uses
  %.v = select <4 x i1> %i.q, <4 x float> %4, <4 x float> %5
  %i.ad = fmul nsz <4 x float> %.v, %3
  %.v1 = select <4 x i1> %i.w, <4 x float> %8, <4 x float> %9
  %i.ae = fmul nsz <4 x float> %.v1, %6
  %.v2 = select <4 x i1> %i.ac, <4 x float> %12, <4 x float> %13
  %i.af = fmul nsz <4 x float> %.v2, %10
  %i.ag = fadd nsz <4 x float> %2, %i.ad
  %i.ah = fadd nsz <4 x float> %i.ae, %i.ag
  %i.ai = fadd nsz <4 x float> %i.af, %i.ah
  store <4 x float> %i.ai, ptr %0, align 4, !tbaa !82
  %14 = shufflevector <4 x i1> %i.q, <4 x i1> poison, <2 x i32> <i32 1, i32 2>
  %15 = shufflevector <4 x float> %i.p, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %16 = shufflevector <4 x float> %i.n, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.aj = select <2 x i1> %14, <2 x float> %15, <2 x float> %16
  %17 = shufflevector <4 x i1> %i.w, <4 x i1> poison, <2 x i32> <i32 1, i32 2>
  %18 = shufflevector <4 x float> %i.v, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %19 = shufflevector <4 x float> %i.t, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ak = select <2 x i1> %17, <2 x float> %18, <2 x float> %19
  %20 = shufflevector <4 x i1> %i.ac, <4 x i1> poison, <2 x i32> <i32 1, i32 2>
  %21 = shufflevector <4 x float> %i.ab, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %22 = shufflevector <4 x float> %i.z, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.al = select <2 x i1> %20, <2 x float> %21, <2 x float> %22
  %i.am = shufflevector <3 x float> %i.k, <3 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.an = fadd nsz <2 x float> %i.am, %i.aj
  %i.ao = fadd nsz <2 x float> %i.ak, %i.an
  %i.ap = fadd nsz <2 x float> %i.al, %i.ao
  store <2 x float> %i.ap, ptr %i.f, align 4, !tbaa !82
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5scene10ISceneNode30getTransformedBoundingBoxEdgesERN4core5arrayINS1_8vector3dIfEEEE(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !654  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !655    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 12                  ; 2 uses
  %i.h = icmp ult i64 %i.g, 8
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw nsw i64 8, %i.g
  tail call void @_ZNSt6vectorIN4core8vector3dIfEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(25) %1, i64 noundef %i.i)
  br label %_ZN4core5arrayINS_8vector3dIfEEE8set_usedEj.exit

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.f, 96
  br i1 %.not, label %_ZN4core5arrayINS_8vector3dIfEEE8set_usedEj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, %i.j
  br i1 %.not.i.i.i, label %_ZN4core5arrayINS_8vector3dIfEEE8set_usedEj.exit, label %_ZSt8_DestroyIPN4core8vector3dIfEES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN4core8vector3dIfEES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %bb.d
  store ptr %i.j, ptr %i.a, align 8, !tbaa !654
  br label %_ZN4core5arrayINS_8vector3dIfEEE8set_usedEj.exit

_ZN4core5arrayINS_8vector3dIfEEE8set_usedEj.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPN4core8vector3dIfEES2_EvT_S4_RSaIT0_E.exit.i.i.i
  %i.k = load ptr, ptr %0, align 8, !tbaa !58
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef nonnull align 4 dereferenceable(24) ptr %i.m(ptr noundef nonnull align 8 dereferenceable(218) %0) ; 4 uses
  %i.o = load ptr, ptr %1, align 8, !tbaa !974    ; 18 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 36
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 44
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.ae = load <2 x float>, ptr %i.n, align 4, !tbaa !82
  %i.af = load <2 x float>, ptr %i.p, align 4, !tbaa !82 ; 2 uses
  %i.ag = load <2 x float>, ptr %i.q, align 4, !tbaa !82
  %i.ah = load <2 x float>, ptr %i.r, align 4, !tbaa !82 ; 2 uses
  %i.ai = fadd nsz <2 x float> %i.ae, %i.af
  %i.aj = fadd nsz <2 x float> %i.ag, %i.ah
  %i.ak = fmul nsz <2 x float> %i.ai, splat (float 5.000000e-01) ; 3 uses
  %i.al = fmul nsz <2 x float> %i.aj, splat (float 5.000000e-01) ; 3 uses
  %i.am = fsub nsz <2 x float> %i.ak, %i.af       ; 2 uses
  %i.an = fsub nsz <2 x float> %i.al, %i.ah       ; 2 uses
  %foldExtExtBinop = fadd nsz <2 x float> %i.ak, %i.am ; 2 uses
  %i.ao = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 5 uses
  %i.ap = fadd nsz <2 x float> %i.al, %i.an       ; 5 uses
  store float %i.ao, ptr %i.o, align 4, !tbaa !481
  %i.aq = extractelement <2 x float> %i.ap, i64 0 ; 3 uses
  store float %i.aq, ptr %i.s, align 4, !tbaa !482
  %i.ar = extractelement <2 x float> %i.ap, i64 1 ; 3 uses
  store float %i.ar, ptr %i.t, align 4, !tbaa !483
  store float %i.ao, ptr %i.u, align 4, !tbaa !481
  %i.as = fsub nsz <2 x float> %i.ak, %i.am       ; 3 uses
  %i.at = extractelement <2 x float> %i.as, i64 1 ; 3 uses
  store float %i.at, ptr %i.v, align 4, !tbaa !482
  store float %i.ar, ptr %i.w, align 4, !tbaa !483
  %foldExtExtBinop10 = fsub nsz <2 x float> %i.al, %i.an
  %i.au = extractelement <2 x float> %foldExtExtBinop10, i64 1 ; 4 uses
  store float %i.ao, ptr %i.x, align 4, !tbaa !481
  store float %i.aq, ptr %i.y, align 4, !tbaa !482
  store float %i.au, ptr %i.z, align 4, !tbaa !483
  store float %i.ao, ptr %i.aa, align 4, !tbaa !481
  store float %i.at, ptr %i.ab, align 4, !tbaa !482
  store float %i.au, ptr %i.ac, align 4, !tbaa !483
  %i.av = shufflevector <2 x float> %i.as, <2 x float> %i.ap, <8 x i32> <i32 0, i32 2, i32 3, i32 0, i32 1, i32 3, i32 0, i32 2>
  store <8 x float> %i.av, ptr %i.ad, align 4, !tbaa !82
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  store float %i.au, ptr %i.aw, align 4, !tbaa !483
  %i.ax = getelementptr inbounds nuw i8, ptr %i.o, i64 84
  %i.ay = extractelement <2 x float> %i.as, i64 0
  store float %i.ay, ptr %i.ax, align 4, !tbaa !481
  %i.az = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  store float %i.at, ptr %i.az, align 4, !tbaa !482
  %i.ba = getelementptr inbounds nuw i8, ptr %i.o, i64 92
  store float %i.au, ptr %i.ba, align 4, !tbaa !483
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 8 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 8 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 8 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 8 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 8 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 8 uses
  %i.bj = load <2 x float>, ptr %i.bb, align 8, !tbaa !82
  %i.bk = load <2 x float>, ptr %i.bc, align 8, !tbaa !82
  %i.bl = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = fmul nsz <2 x float> %i.bl, %i.bk
  %i.bn = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bn, <2 x float> %i.bj, <2 x float> %i.bm)
  %i.bp = load <2 x float>, ptr %i.bd, align 8, !tbaa !82
  %i.bq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.br = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> %i.bp, <2 x float> %i.bo)
  %i.bs = load <2 x float>, ptr %i.be, align 8, !tbaa !82
  %i.bt = fadd nsz <2 x float> %i.br, %i.bs
  %i.bu = load float, ptr %i.bf, align 8, !tbaa !82
  %i.bv = load float, ptr %i.bg, align 8, !tbaa !82
  %i.bw = fmul nsz float %i.aq, %i.bv
  %i.bx = tail call nsz float @llvm.fmuladd.f32(float %i.ao, float %i.bu, float %i.bw)
  %i.by = load float, ptr %i.bh, align 8, !tbaa !82
  %i.bz = tail call nsz float @llvm.fmuladd.f32(float %i.ar, float %i.by, float %i.bx)
  %i.ca = load float, ptr %i.bi, align 8, !tbaa !82
  %i.cb = fadd nsz float %i.ca, %i.bz
  store <2 x float> %i.bt, ptr %i.o, align 4
  store float %i.cb, ptr %i.t, align 4, !tbaa !82
  %i.cc = load ptr, ptr %1, align 8, !tbaa !655   ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 12 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 20 ; 2 uses
  %i.cg = load float, ptr %i.ce, align 4, !tbaa !482 ; 2 uses
  %i.ch = load float, ptr %i.cd, align 4, !tbaa !481 ; 2 uses
  %i.ci = load float, ptr %i.cf, align 4, !tbaa !483 ; 2 uses
  %i.cj = load <2 x float>, ptr %i.bb, align 8, !tbaa !82
  %i.ck = load <2 x float>, ptr %i.bc, align 8, !tbaa !82
  %i.cl = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cn = fmul nsz <2 x float> %i.cm, %i.ck
  %i.co = insertelement <2 x float> poison, float %i.ch, i64 0
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cq = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cp, <2 x float> %i.cj, <2 x float> %i.cn)
  %i.cr = load <2 x float>, ptr %i.bd, align 8, !tbaa !82
  %i.cs = insertelement <2 x float> poison, float %i.ci, i64 0
  %i.ct = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cu = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ct, <2 x float> %i.cr, <2 x float> %i.cq)
  %i.cv = load <2 x float>, ptr %i.be, align 8, !tbaa !82
  %i.cw = fadd nsz <2 x float> %i.cu, %i.cv
  %i.cx = load float, ptr %i.bf, align 8, !tbaa !82
  %i.cy = load float, ptr %i.bg, align 8, !tbaa !82
  %i.cz = fmul nsz float %i.cg, %i.cy
  %i.da = tail call nsz float @llvm.fmuladd.f32(float %i.ch, float %i.cx, float %i.cz)
  %i.db = load float, ptr %i.bh, align 8, !tbaa !82
  %i.dc = tail call nsz float @llvm.fmuladd.f32(float %i.ci, float %i.db, float %i.da)
  %i.dd = load float, ptr %i.bi, align 8, !tbaa !82
  %i.de = fadd nsz float %i.dd, %i.dc
  store <2 x float> %i.cw, ptr %i.cd, align 4
  store float %i.de, ptr %i.cf, align 4, !tbaa !82
  %i.df = load ptr, ptr %1, align 8, !tbaa !655   ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 28
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 32 ; 2 uses
  %i.dj = load float, ptr %i.dh, align 4, !tbaa !482 ; 2 uses
  %i.dk = load float, ptr %i.dg, align 4, !tbaa !481 ; 2 uses
  %i.dl = load float, ptr %i.di, align 4, !tbaa !483 ; 2 uses
  %i.dm = load <2 x float>, ptr %i.bb, align 8, !tbaa !82
  %i.dn = load <2 x float>, ptr %i.bc, align 8, !tbaa !82
  %i.do = insertelement <2 x float> poison, float %i.dj, i64 0
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dq = fmul nsz <2 x float> %i.dp, %i.dn
  %i.dr = insertelement <2 x float> poison, float %i.dk, i64 0
  %i.ds = shufflevector <2 x float> %i.dr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dt = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ds, <2 x float> %i.dm, <2 x float> %i.dq)
  %i.du = load <2 x float>, ptr %i.bd, align 8, !tbaa !82
  %i.dv = insertelement <2 x float> poison, float %i.dl, i64 0
  %i.dw = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dx = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dw, <2 x float> %i.du, <2 x float> %i.dt)
  %i.dy = load <2 x float>, ptr %i.be, align 8, !tbaa !82
  %i.dz = fadd nsz <2 x float> %i.dx, %i.dy
  %i.ea = load float, ptr %i.bf, align 8, !tbaa !82
  %i.eb = load float, ptr %i.bg, align 8, !tbaa !82
  %i.ec = fmul nsz float %i.dj, %i.eb
  %i.ed = tail call nsz float @llvm.fmuladd.f32(float %i.dk, float %i.ea, float %i.ec)
  %i.ee = load float, ptr %i.bh, align 8, !tbaa !82
  %i.ef = tail call nsz float @llvm.fmuladd.f32(float %i.dl, float %i.ee, float %i.ed)
  %i.eg = load float, ptr %i.bi, align 8, !tbaa !82
  %i.eh = fadd nsz float %i.eg, %i.ef
  store <2 x float> %i.dz, ptr %i.dg, align 4
  store float %i.eh, ptr %i.di, align 4, !tbaa !82
  %i.ei = load ptr, ptr %1, align 8, !tbaa !655   ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 36 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 40
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 44 ; 2 uses
  %i.em = load float, ptr %i.ek, align 4, !tbaa !482 ; 2 uses
  %i.en = load float, ptr %i.ej, align 4, !tbaa !481 ; 2 uses
  %i.eo = load float, ptr %i.el, align 4, !tbaa !483 ; 2 uses
end_hunk_0
