Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/CDLOpGPU?download=true
inline.NumInlined: 177
inline.NumDeleted: 55
begin_hunk_0
@.str.32 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_522GetCDLGPUShaderProgramERSt10shared_ptrINS_16GpuShaderCreatorEERS0_IKNS_9CDLOpDataEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"struct.OpenColorIO_v2_5::RenderParams", align 4 ; 18 uses
  %3 = alloca %"class.OpenColorIO_v2_5::GpuShaderText", align 8 ; 58 uses
  %4 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %5 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %6 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %7 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 45 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %17 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %18 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %19 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %20 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %23 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %26 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %30 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %31 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %32 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %33 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %34 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %35 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %36 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %37 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %38 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %41 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %44 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %48 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %49 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %50 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %51 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %52 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @_ZN16OpenColorIO_v2_512RenderParamsC1Ev(ptr noundef nonnull align 4 dereferenceable(54) %2)
  call void @_ZN16OpenColorIO_v2_512RenderParams6updateERSt10shared_ptrIKNS_9CDLOpDataEE(ptr noundef nonnull align 4 dereferenceable(54) %2, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.e = load float, ptr %i.d, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.f = load ptr, ptr %0, align 8, !tbaa !27
  %i.g = call noundef i32 @_ZNK16OpenColorIO_v2_516GpuShaderCreator11getLanguageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #10
  call void @_ZN16OpenColorIO_v2_513GpuShaderTextC1ENS_11GpuLanguageE(ptr noundef nonnull align 8 dereferenceable(764) %3, i32 noundef %i.g)
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText6indentEv(ptr noundef nonnull align 8 dereferenceable(764) %3)
          to label %bb.b unwind label %bb.av

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText7newLineEv(ptr dead_on_unwind nonnull writable sret(%"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine") align 8 %4, ptr noundef nonnull align 8 dereferenceable(764) %3)
          to label %bb.c unwind label %bb.aw

bb.c:                                             ; preds = %bb.b
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str)
          to label %bb.d unwind label %bb.ax      ; 0 uses

bb.d:                                             ; preds = %bb.c
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText7newLineEv(ptr dead_on_unwind nonnull writable sret(%"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine") align 8 %5, ptr noundef nonnull align 8 dereferenceable(764) %3)
          to label %bb.e unwind label %bb.az

bb.e:                                             ; preds = %bb.d
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.1)
          to label %bb.f unwind label %bb.ba

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %1, align 8, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 168
  %i.l = load i32, ptr %i.k, align 8, !tbaa !50
  %i.m = invoke noundef ptr @_ZN16OpenColorIO_v2_59CDLOpData12GetStyleNameENS0_5StyleE(i32 noundef %i.l)
          to label %bb.g unwind label %bb.ba

bb.g:                                             ; preds = %bb.f
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef %i.m)
          to label %bb.h unwind label %bb.ba

bb.h:                                             ; preds = %bb.g
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.2)
          to label %bb.i unwind label %bb.ba      ; 0 uses

bb.i:                                             ; preds = %bb.h
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText7newLineEv(ptr dead_on_unwind nonnull writable sret(%"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine") align 8 %6, ptr noundef nonnull align 8 dereferenceable(764) %3)
          to label %bb.j unwind label %bb.bc

bb.j:                                             ; preds = %bb.i
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str)
          to label %bb.k unwind label %bb.bd      ; 0 uses

bb.k:                                             ; preds = %bb.j
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText7newLineEv(ptr dead_on_unwind nonnull writable sret(%"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine") align 8 %7, ptr noundef nonnull align 8 dereferenceable(764) %3)
          to label %bb.l unwind label %bb.bf

bb.l:                                             ; preds = %bb.k
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str.3)
          to label %bb.m unwind label %bb.bg      ; 0 uses

bb.m:                                             ; preds = %bb.l
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText6indentEv(ptr noundef nonnull align 8 dereferenceable(764) %3)
          to label %bb.n unwind label %bb.av

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  %i.r = load ptr, ptr %0, align 8, !tbaa !27
  %i.s = call noundef ptr @_ZNK16OpenColorIO_v2_516GpuShaderCreator12getPixelNameEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #10 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.t, ptr %8, align 8, !tbaa !51
  %i.u = icmp eq ptr %i.s, null
  br i1 %i.u, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.32) #11
          to label %.noexc unwind label %bb.bi

.noexc:                                           ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.v = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.s) #10 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i64 %i.v, ptr %i.a, align 8, !tbaa !52
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.p
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc154 unwind label %bb.bi ; 2 uses

.noexc154:                                        ; preds = %.noexc.i
  store ptr %i.x, ptr %8, align 8, !tbaa !13
  %i.y = load i64, ptr %i.a, align 8, !tbaa !52
  store i64 %i.y, ptr %i.t, align 8, !tbaa !14
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc154, %bb.p
  %i.z = phi ptr [ %i.x, %.noexc154 ], [ %i.t, %bb.p ] ; 2 uses
  switch i64 %i.v, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %._crit_edge.i.i155
  ]

bb.q:                                             ; preds = %._crit_edge.i.i
  %i.aa = load i8, ptr %i.s, align 1, !tbaa !14
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !14
  br label %._crit_edge.i.i155

bb.r:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr nonnull align 1 %i.s, i64 %i.v, i1 false)
  br label %._crit_edge.i.i155

._crit_edge.i.i155:                               ; preds = %bb.r, %bb.q, %._crit_edge.i.i
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !52  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !53
  %i.ad = load ptr, ptr %8, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.af, ptr %10, align 8, !tbaa !51
  store i32 1650946606, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 4, ptr %i.ag, align 8, !tbaa !53
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i8 0, ptr %i.ah, align 4, !tbaa !14
  call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %i.ai = load i64, ptr %i.ac, align 8, !tbaa !53, !noalias !62
  %i.aj = load ptr, ptr %8, align 8, !tbaa !13, !noalias !62
  %i.ak = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef 0, ptr noundef %i.aj, i64 noundef %i.ai)
          to label %.noexc159 unwind label %bb.bj ; 6 uses

.noexc159:                                        ; preds = %._crit_edge.i.i155
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store ptr %i.al, ptr %9, align 8, !tbaa !51, !alias.scope !62
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !13 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 5 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.s:                                             ; preds = %.noexc159
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !53 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 16
  call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.as, i1 false)
  br label %bb.t

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc159
  store ptr %i.am, ptr %9, align 8, !tbaa !13, !alias.scope !62
  %i.at = load i64, ptr %i.an, align 8, !tbaa !14
  store i64 %i.at, ptr %i.al, align 8, !tbaa !14, !alias.scope !62
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !53
  br label %bb.t

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.s
  %i.au = phi i64 [ %i.aq, %bb.s ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.au, ptr %i.aw, align 8, !tbaa !53, !alias.scope !62
  store ptr %i.an, ptr %i.ak, align 8, !tbaa !13
  store i64 0, ptr %i.av, align 8, !tbaa !53
  store i8 0, ptr %i.an, align 8, !tbaa !14
  %i.ax = load ptr, ptr %10, align 8, !tbaa !13   ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.af
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160: ; preds = %bb.t
  %i.az = load i64, ptr %i.af, align 8, !tbaa !14
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #10
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.bb, ptr %11, align 8, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.bb, ptr noundef nonnull align 1 dereferenceable(11) @.str.5, i64 11, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 11, ptr %i.bc, align 8, !tbaa !53
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 27
  store i8 0, ptr %i.bd, align 1, !tbaa !14
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText13declareFloat3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfff(ptr noundef nonnull align 8 dereferenceable(764) %3, ptr noundef nonnull align 8 dereferenceable(32) %11, float noundef 2.126000e-01, float noundef 7.152000e-01, float noundef 7.220000e-02)
          to label %bb.u unwind label %bb.bk

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.be = load ptr, ptr %11, align 8, !tbaa !13   ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.bb
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165: ; preds = %bb.u
  %i.bg = load i64, ptr %i.bb, align 8, !tbaa !14
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #10
  %i.bi = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.bi, ptr %12, align 8, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.bi, ptr noundef nonnull align 1 dereferenceable(5) @.str.6, i64 5, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 5, ptr %i.bj, align 8, !tbaa !53
  %i.bk = getelementptr inbounds nuw i8, ptr %12, i64 21
  store i8 0, ptr %i.bk, align 1, !tbaa !14
  %i.bl = load float, ptr %2, align 4, !tbaa !55
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !55
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !55
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText13declareFloat3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfff(ptr noundef nonnull align 8 dereferenceable(764) %3, ptr noundef nonnull align 8 dereferenceable(32) %12, float noundef %i.bl, float noundef %i.bn, float noundef %i.bp)
          to label %bb.v unwind label %bb.bl

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167
  %i.bq = load ptr, ptr %12, align 8, !tbaa !13   ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.bi
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172: ; preds = %bb.v
  %i.bs = load i64, ptr %i.bi, align 8, !tbaa !14
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #10
  %i.bu = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.bu, ptr %13, align 8, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.bu, ptr noundef nonnull align 1 dereferenceable(6) @.str.7, i64 6, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 6, ptr %i.bv, align 8, !tbaa !53
  %i.bw = getelementptr inbounds nuw i8, ptr %13, i64 22
  store i8 0, ptr %i.bw, align 2, !tbaa !14
  %i.bx = load float, ptr %i.b, align 4, !tbaa !55
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.bz = load float, ptr %i.by, align 4, !tbaa !55
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !55
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText13declareFloat3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfff(ptr noundef nonnull align 8 dereferenceable(764) %3, ptr noundef nonnull align 8 dereferenceable(32) %13, float noundef %i.bx, float noundef %i.bz, float noundef %i.cb)
          to label %bb.w unwind label %bb.bm

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174
  %i.cc = load ptr, ptr %13, align 8, !tbaa !13   ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.bu
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179: ; preds = %bb.w
  %i.ce = load i64, ptr %i.bu, align 8, !tbaa !14
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #10
  %i.cg = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.cg, ptr %14, align 8, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.cg, ptr noundef nonnull align 1 dereferenceable(5) @.str.8, i64 5, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 5, ptr %i.ch, align 8, !tbaa !53
  %i.ci = getelementptr inbounds nuw i8, ptr %14, i64 21
  store i8 0, ptr %i.ci, align 1, !tbaa !14
  %i.cj = load float, ptr %i.c, align 4, !tbaa !55
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !55
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !55
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText13declareFloat3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfff(ptr noundef nonnull align 8 dereferenceable(764) %3, ptr noundef nonnull align 8 dereferenceable(32) %14, float noundef %i.cj, float noundef %i.cl, float noundef %i.cn)
          to label %bb.x unwind label %bb.bn

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181
  %i.co = load ptr, ptr %14, align 8, !tbaa !13   ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.cg
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186: ; preds = %bb.x
  %i.cq = load i64, ptr %i.cg, align 8, !tbaa !14
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #10
  %i.cs = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  store ptr %i.cs, ptr %15, align 8, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.cs, ptr noundef nonnull align 1 dereferenceable(10) @.str.9, i64 10, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 10, ptr %i.ct, align 8, !tbaa !53
  %i.cu = getelementptr inbounds nuw i8, ptr %15, i64 26
  store i8 0, ptr %i.cu, align 2, !tbaa !14
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText10declareVarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEf(ptr noundef nonnull align 8 dereferenceable(764) %3, ptr noundef nonnull align 8 dereferenceable(32) %15, float noundef %i.e)
          to label %bb.y unwind label %bb.bo

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188
  %i.cv = load ptr, ptr %15, align 8, !tbaa !13   ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.cs
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193: ; preds = %bb.y
  %i.cx = load i64, ptr %i.cs, align 8, !tbaa !14
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #10
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.da = load i8, ptr %i.cz, align 4, !tbaa !56, !range !57, !noundef !58
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %bb.ef, label %bb.z

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #10
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText7newLineEv(ptr dead_on_unwind nonnull writable sret(%"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine") align 8 %16, ptr noundef nonnull align 8 dereferenceable(764) %3)
          to label %bb.aa unwind label %bb.bq

bb.aa:                                            ; preds = %bb.z
  %i.dc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.ab unwind label %bb.br

bb.ab:                                            ; preds = %bb.aa
  %i.dd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef nonnull @.str.10)
          to label %bb.ac unwind label %bb.br

bb.ac:                                            ; preds = %bb.ab
  %i.de = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.dd, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.ad unwind label %bb.br

bb.ad:                                            ; preds = %bb.ac
  %i.df = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.de, ptr noundef nonnull @.str.11)
          to label %bb.ae unwind label %bb.br     ; 0 uses

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #10
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText7newLineEv(ptr dead_on_unwind nonnull writable sret(%"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine") align 8 %17, ptr noundef nonnull align 8 dereferenceable(764) %3)
          to label %bb.af unwind label %bb.bt

bb.af:                                            ; preds = %bb.ae
  %i.dg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.ag unwind label %bb.bu

bb.ag:                                            ; preds = %bb.af
  %i.dh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.dg, ptr noundef nonnull @.str.10)
          to label %bb.ah unwind label %bb.bu

bb.ah:                                            ; preds = %bb.ag
  %i.di = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.ai unwind label %bb.bu

bb.ai:                                            ; preds = %bb.ah
  %i.dj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.di, ptr noundef nonnull @.str.12)
          to label %bb.aj unwind label %bb.bu     ; 0 uses

bb.aj:                                            ; preds = %bb.ai
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_522GetCDLGPUShaderProgramERSt10shared_ptrINS_16GpuShaderCreatorEERS0_IKNS_9CDLOpDataEE:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342: ; preds = %bb.il
  %i.sc = load i64, ptr %i.al, align 8, !tbaa !14
  %i.sd = add i64 %i.sc, 1
  call void @_ZdlPvm(ptr noundef %i.sa, i64 noundef %i.sd) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344: ; preds = %bb.il, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198
  %.pn148.pn.pn = phi { ptr, i32 } [ %i.ef, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198 ], [ %.pn148.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342 ], [ %.pn148.pn, %bb.il ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  %i.se = load ptr, ptr %8, align 8, !tbaa !13    ; 2 uses
  %i.sf = icmp eq ptr %i.se, %i.t
  br i1 %i.sf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344
  %i.sg = load i64, ptr %i.t, align 8, !tbaa !14
  %i.sh = add i64 %i.sg, 1
  call void @_ZdlPvm(ptr noundef %i.se, i64 noundef %i.sh) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345, %bb.bi
  %.pn148.pn.pn.pn = phi { ptr, i32 } [ %i.ee, %bb.bi ], [ %.pn148.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345 ], [ %.pn148.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  br label %bb.im

bb.im:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347, %bb.bh, %bb.be, %bb.bb, %bb.ay, %bb.av
  %.pn148.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn148.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347 ], [ %i.dv, %bb.av ], [ %.pn74, %bb.bh ], [ %.pn72, %bb.be ], [ %.pn70, %bb.bb ], [ %.pn, %bb.ay ]
  call void @_ZN16OpenColorIO_v2_513GpuShaderTextD2Ev(ptr noundef nonnull align 8 dead_on_return(764) dereferenceable(764) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  resume { ptr, i32 } %.pn148.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN16OpenColorIO_v2_512RenderParamsC1Ev(ptr noundef nonnull align 4 dereferenceable(54)) unnamed_addr #2

declare void @_ZN16OpenColorIO_v2_512RenderParams6updateERSt10shared_ptrIKNS_9CDLOpDataEE(ptr noundef nonnull align 4 dereferenceable(54), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: nounwind
declare noundef i32 @_ZNK16OpenColorIO_v2_516GpuShaderCreator11getLanguageEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare void @_ZN16OpenColorIO_v2_513GpuShaderTextC1ENS_11GpuLanguageE(ptr noundef nonnull align 8 dereferenceable(764), i32 noundef) unnamed_addr #2

declare void @_ZN16OpenColorIO_v2_513GpuShaderText6indentEv(ptr noundef nonnull align 8 dereferenceable(764)) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare void @_ZN16OpenColorIO_v2_513GpuShaderText7newLineEv(ptr dead_on_unwind writable sret(%"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine") align 8, ptr noundef nonnull align 8 dereferenceable(764)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef ptr @_ZN16OpenColorIO_v2_59CDLOpData12GetStyleNameENS0_5StyleE(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare noundef ptr @_ZNK16OpenColorIO_v2_516GpuShaderCreator12getPixelNameEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare void @_ZN16OpenColorIO_v2_513GpuShaderText13declareFloat3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfff(ptr noundef nonnull align 8 dereferenceable(764), ptr noundef nonnull align 8 dereferenceable(32), float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @_ZN16OpenColorIO_v2_513GpuShaderText10declareVarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEf(ptr noundef nonnull align 8 dereferenceable(764), ptr noundef nonnull align 8 dereferenceable(32), float noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZNK16OpenColorIO_v2_513GpuShaderText10float3DeclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(764), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZNK16OpenColorIO_v2_513GpuShaderText4lerpERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(764), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZN16OpenColorIO_v2_513GpuShaderText6dedentEv(ptr noundef nonnull align 8 dereferenceable(764)) local_unnamed_addr #2

declare void @_ZNK16OpenColorIO_v2_513GpuShaderText6stringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(764)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_513GpuShaderTextD2Ev(ptr noundef nonnull align 8 dead_on_return(764) dereferenceable(764) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.b = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 3 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !16
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.d = getelementptr i8, ptr %i.b, i64 -24      ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.g, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !13   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.l = load i64, ptr %i.j, align 8, !tbaa !14
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #12
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.g, align 8, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 448
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #10
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 496
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.o) #10
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.b, ptr %i.p, align 8, !tbaa !16
  %i.q = load i64, ptr %i.d, align 8
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 %i.q
  store ptr %i.c, ptr %i.r, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.s, align 8, !tbaa !16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !13   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.x = load i64, ptr %i.v, align 8, !tbaa !14
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #12
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit3

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit3: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.s, align 8, !tbaa !16
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.z) #10
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.aa) #10
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { nounwind }
attributes #11 = { noreturn }
attributes #12 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !9, i64 0}
!11 = !{!"long", !4, i64 0}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0, !11, i64 8, !4, i64 16}
!13 = !{!12, !9, i64 0}
!14 = !{!4, !4, i64 0}
!15 = !{!"vtable pointer", !3, i64 0}
!16 = !{!15, !15, i64 0}
!19 = !{!"float", !4, i64 0}
!20 = !{!"bool", !4, i64 0}
!21 = !{!"_ZTSN16OpenColorIO_v2_512RenderParamsE", !4, i64 0, !4, i64 16, !4, i64 32, !19, i64 48, !20, i64 52, !20, i64 53}
!22 = !{!21, !19, i64 48}
!23 = !{!"p1 _ZTSN16OpenColorIO_v2_516GpuShaderCreatorE", !8, i64 0}
!24 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !8, i64 0}
!25 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !24, i64 0}
!26 = !{!"_ZTSSt12__shared_ptrIN16OpenColorIO_v2_516GpuShaderCreatorELN9__gnu_cxx12_Lock_policyE2EE", !23, i64 0, !25, i64 8}
!27 = !{!26, !23, i64 0}
!28 = !{!"p1 _ZTSN16OpenColorIO_v2_59CDLOpDataE", !8, i64 0}
!29 = !{!"_ZTSSt12__shared_ptrIKN16OpenColorIO_v2_59CDLOpDataELN9__gnu_cxx12_Lock_policyE2EE", !28, i64 0, !25, i64 8}
!30 = !{!29, !28, i64 0}
!31 = !{!"_ZTSSt12__mutex_base", !4, i64 0}
!32 = !{!"_ZTSSt5mutex", !31, i64 0}
!33 = !{!"_ZTSN16OpenColorIO_v2_514FormatMetadataE"}
!34 = !{!"p1 _ZTSSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_E", !8, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_Vector_impl_dataE", !34, i64 0, !34, i64 8, !34, i64 16}
!36 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_Vector_implE", !35, i64 0}
!37 = !{!"_ZTSSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE", !36, i64 0}
!38 = !{!"_ZTSSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE", !37, i64 0}
!39 = !{!"p1 _ZTSN16OpenColorIO_v2_518FormatMetadataImplE", !8, i64 0}
!40 = !{!"_ZTSNSt12_Vector_baseIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE17_Vector_impl_dataE", !39, i64 0, !39, i64 8, !39, i64 16}
!41 = !{!"_ZTSNSt12_Vector_baseIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE12_Vector_implE", !40, i64 0}
!42 = !{!"_ZTSSt12_Vector_baseIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE", !41, i64 0}
!43 = !{!"_ZTSSt6vectorIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE", !42, i64 0}
!44 = !{!"_ZTSN16OpenColorIO_v2_518FormatMetadataImplE", !33, i64 0, !12, i64 8, !12, i64 40, !38, i64 72, !43, i64 96}
!45 = !{!"_ZTSN16OpenColorIO_v2_56OpDataE", !32, i64 8, !44, i64 48}
!46 = !{!"_ZTSN16OpenColorIO_v2_59CDLOpData5StyleE", !4, i64 0}
!47 = !{!"_ZTSN16OpenColorIO_v2_59CDLOpData13ChannelParamsE", !4, i64 0}
!48 = !{!"double", !4, i64 0}
!49 = !{!"_ZTSN16OpenColorIO_v2_59CDLOpDataE", !45, i64 0, !46, i64 168, !47, i64 176, !47, i64 200, !47, i64 224, !48, i64 248}
!50 = !{!49, !46, i64 168}
!51 = !{!10, !9, i64 0}
!52 = !{!11, !11, i64 0}
!53 = !{!12, !11, i64 8}
!55 = !{!19, !19, i64 0}
!56 = !{!21, !20, i64 52}
!57 = !{i8 0, i8 2}
!58 = !{}
!59 = !{!21, !20, i64 53}
!60 = distinct !{!60, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_"}
!61 = distinct !{!61, !60, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_: argument 0"}
!62 = !{!61}
end_hunk_1
