Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/clientmap?download=true
inline.NumInlined: 4211
inline.NumDeleted: 1666
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN9ClientMap9renderMapEPN5video12IVideoDriverEi
define dso_local void @_ZN9ClientMap9renderMapEPN5video12IVideoDriverEi(ptr noundef nonnull align 8 dereferenceable(656) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
.invoke:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"struct.std::_Hashtable<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, CachedMeshBuffer>, std::allocator<std::pair<const std::__cxx11::basic_string<char>, CachedMeshBuffer>>, std::__detail::_Select1st, std::equal_to<std::__cxx11::basic_string<char>>, std::hash<std::__cxx11::basic_string<char>>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node", align 8 ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %.sroa.03.i.i22.i.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.0.i23.i.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.03.i.i12.i.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.03.i.i.i.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.0.i.i.i.i.i = alloca [16 x i8], align 8  ; 4 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %8 = alloca %class.TimeTaker, align 8           ; 16 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %class.anon, align 4               ; 23 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %12 = alloca %class.TimeTaker, align 8          ; 16 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.core::CMatrix4", align 4   ; 12 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.f = icmp eq i32 %2, 16                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #2
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.g, ptr %7, align 8, !tbaa !177
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 9 uses
  store i64 0, ptr %i.h, align 8, !tbaa !176
  store i8 0, ptr %i.g, align 8, !tbaa !65
  %i.i = icmp eq i32 %2, 8                        ; 3 uses
  %i.j = select i1 %i.i, ptr @.str.21, ptr @.str.22
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %i.j, i64 noundef 18)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.a ; 0 uses

bb.a:                                             ; preds = %.invoke
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.gp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %.invoke
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !154  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 712
  %i.p = load float, ptr %i.o, align 8, !tbaa !785
  %i.q = invoke noundef i32 @_ZN6Client13getCrackLevelEv(ptr noundef nonnull align 8 dereferenceable(1674) %i.n)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !154
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 128
  %i.t = invoke noundef i32 @_ZN11Environment16getDayNightRatioEv(ptr noundef nonnull align 8 dereferenceable(88) %i.s)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 416
  %.sroa.0652.0.copyload = load float, ptr %i.u, align 8, !tbaa !82
  %.sroa.5653.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 420
  %.sroa.5653.0.copyload = load float, ptr %.sroa.5653.0..sroa_idx, align 4, !tbaa !82
  %.sroa.6654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 424
  %.sroa.6654.0.copyload = load float, ptr %.sroa.6654.0..sroa_idx, align 8, !tbaa !82
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !154
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1672
  %.sroa.0.0.copyload.i = load i16, ptr %i.w, align 8, !tbaa !162 ; 4 uses
  br i1 %i.f, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN9ClientMap28updateTransparentMeshBuffersEv(ptr noundef nonnull align 8 dereferenceable(656) %0)
          to label %._crit_edge.i.i unwind label %bb.g

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.gp

bb.f:                                             ; preds = %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.gp

bb.g:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.gp

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #2
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #2
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.aa, ptr %9, align 8, !tbaa !177
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.ab, align 8, !tbaa !176
  store i8 0, ptr %i.aa, align 8, !tbaa !65
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.ac, ptr %8, align 8, !tbaa !177
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.ad, align 8, !tbaa !176
  store i8 0, ptr %i.ac, align 8, !tbaa !65
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr null, ptr %i.ae, align 8, !tbaa !438
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i8 1, ptr %i.af, align 8, !tbaa !439
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(50) %8, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i, %._crit_edge.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load ptr, ptr %8, align 8, !tbaa !64    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.ac
  br i1 %i.ai, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  %i.aj = load i64, ptr %i.ac, align 8, !tbaa !65
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #34
  br label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i: ; preds = %._crit_edge.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 49
  store i8 1, ptr %i.al, align 1, !tbaa !440
  invoke void @_ZN9TimeTaker5startEv(ptr noundef nonnull align 8 dereferenceable(50) %8)
          to label %_ZN9TimeTakerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPm13TimePrecision.exit unwind label %bb.h

_ZN9TimeTakerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPm13TimePrecision.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i
  %i.am = load ptr, ptr %9, align 8, !tbaa !64    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.aa
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN9TimeTakerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPm13TimePrecision.exit
  %i.ao = load i64, ptr %i.aa, align 8, !tbaa !65
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN9TimeTakerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPm13TimePrecision.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #2
  %i.aq = load i8, ptr @__tls_guard, align 1
  %i.ar = icmp eq i8 %i.aq, 0
  br i1 %i.ar, label %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit, label %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit.thread, !prof !441

_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.as = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN12_GLOBAL__N_118tl_meshbuflistmapsE)
  br label %_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit

_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit:    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store i8 1, ptr @__tls_guard, align 1
  %i.at = call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @__tls_guard) ; 0 uses
  call fastcc void @__cxx_global_var_init()
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN12_GLOBAL__N_121tl_drawdescriptorlistE, i8 0, i64 24, i1 false)
  %i.au = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EED2Ev, ptr nonnull @_ZN12_GLOBAL__N_121tl_drawdescriptorlistE, ptr nonnull @__dso_handle) #2 ; 0 uses
  %.pr = load i8, ptr @__tls_guard, align 1
  %i.av = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN12_GLOBAL__N_118tl_meshbuflistmapsE) ; 2 uses
  %i.aw = icmp eq i8 %.pr, 0
  br i1 %i.aw, label %bb.i, label %_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit, !prof !442

bb.i:                                             ; preds = %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit
  store i8 1, ptr @__tls_guard, align 1
  %i.ax = call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @__tls_guard) ; 0 uses
  call fastcc void @__cxx_global_var_init()
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN12_GLOBAL__N_121tl_drawdescriptorlistE, i8 0, i64 24, i1 false)
  %i.ay = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EED2Ev, ptr nonnull @_ZN12_GLOBAL__N_121tl_drawdescriptorlistE, ptr nonnull @__dso_handle) #2 ; 0 uses
  br label %_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit

_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit: ; preds = %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit.thread, %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit, %bb.i
  %i.az = phi ptr [ %i.as, %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit.thread ], [ %i.av, %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit ], [ %i.av, %bb.i ] ; 3 uses
  %i.ba = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN12_GLOBAL__N_121tl_drawdescriptorlistE) ; 18 uses
  call fastcc void @_ZN12_GLOBAL__N_115MeshBufListMaps5clearEv(ptr noundef nonnull align 8 dereferenceable(112) %i.az)
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !48 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 26 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !443
  %.not.i.i = icmp eq ptr %i.bd, %i.bb
  br i1 %.not.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPN12_GLOBAL__N_114DrawDescriptorES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN12_GLOBAL__N_114DrawDescriptorES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !443
  br label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE5clearEv.exit

_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE5clearEv.exit: ; preds = %_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit, %_ZSt8_DestroyIPN12_GLOBAL__N_114DrawDescriptorES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #2
  %i.be = load ptr, ptr %i.m, align 8, !tbaa !154
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 624
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !444 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !786)
  invoke void @_ZNK6Camera20getFrustumCullPlanesEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::array.470") align 4 %10, ptr noundef nonnull align 8 dereferenceable(536) %i.bg)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE5clearEv.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 84
  %.sroa.01.0.copyload.i = load i48, ptr %i.bi, align 4, !tbaa !162, !noalias !786 ; 2 uses
  %.sroa.3.0.extract.shift.i.i = lshr i48 %.sroa.01.0.copyload.i, 32
  %.sroa.3.0.extract.trunc.i.i = trunc nuw i48 %.sroa.3.0.extract.shift.i.i to i16
  %i.bj = sitofp nsz i16 %.sroa.3.0.extract.trunc.i.i to float
  %24 = bitcast i48 %.sroa.01.0.copyload.i to <3 x i16>
  %25 = shufflevector <3 x i16> %24, <3 x i16> poison, <2 x i32> <i32 0, i32 1>
  %i.bk = sitofp <2 x i16> %25 to <2 x float>
  %i.bl = fmul nnan nsz <2 x float> %i.bk, splat (float 1.000000e+01)
  %i.bm = fmul nnan nsz float %i.bj, 1.000000e+01
  store <2 x float> %i.bl, ptr %i.bh, align 4, !alias.scope !786
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 72 ; 2 uses
  store float %i.bm, ptr %.sroa.2.0..sroa_idx.i, align 4, !alias.scope !786
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !165 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %.not686965 = icmp eq ptr %i.bo, %i.bp
  br i1 %.not686965, label %..preheader_crit_edge, label %.lr.ph968

..preheader_crit_edge:                            ; preds = %bb.j
  %.pre1080 = zext i16 %.sroa.0.0.copyload.i to i32 ; 2 uses
  %.pre1081 = add nsw i32 %.pre1080, -1
  %.pre1083 = shl i16 %.sroa.0.0.copyload.i, 4
  br label %.preheader

.lr.ph968:                                        ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %10, i64 68
  %i.br = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.bs = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 12
  %.014.ptr.1.i = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 20
  %i.bv = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 28
  %.014.ptr.2.i = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 36
  %i.by = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.bz = getelementptr inbounds nuw i8, ptr %10, i64 44
  %.014.ptr.3.i = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 52
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.cc = getelementptr inbounds nuw i8, ptr %10, i64 60
  %i.cd = zext i16 %.sroa.0.0.copyload.i to i32   ; 4 uses
  %i.ce = add nsw i32 %i.cd, -1                   ; 4 uses
  %i.cf = shl i16 %.sroa.0.0.copyload.i, 4        ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 444
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.ck = insertelement <2 x i16> poison, i16 %i.cf, i64 0
  %i.cl = shufflevector <2 x i16> %i.ck, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.cm = insertelement <2 x i32> poison, i32 %i.cd, i64 0
  %i.cn = shufflevector <2 x i32> %i.cm, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %bb.l

.preheader.loopexit:                              ; preds = %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit.thread
  %i.co = uitofp nsz i32 %.5178 to float
  br label %.preheader

.preheader:                                       ; preds = %..preheader_crit_edge, %.preheader.loopexit
  %.pre-phi1084 = phi i16 [ %.pre1083, %..preheader_crit_edge ], [ %i.cf, %.preheader.loopexit ] ; 2 uses
  %.pre-phi1082 = phi i32 [ %.pre1081, %..preheader_crit_edge ], [ %i.ce, %.preheader.loopexit ] ; 3 uses
  %.pre-phi = phi i32 [ %.pre1080, %..preheader_crit_edge ], [ %i.cd, %.preheader.loopexit ] ; 2 uses
  %.0173.lcssa = phi float [ 0.000000e+00, %..preheader_crit_edge ], [ %i.co, %.preheader.loopexit ]
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 6 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 444
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 12 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 7 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.db = insertelement <2 x i16> poison, i16 %.pre-phi1084, i64 0
  %i.dc = shufflevector <2 x i16> %i.db, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.dd = insertelement <2 x i32> poison, i32 %.pre-phi, i64 0
  %i.de = shufflevector <2 x i32> %i.dd, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %bb.ah

.body:                                            ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.df = load ptr, ptr %9, align 8, !tbaa !64    ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.aa
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253: ; preds = %.body
  %i.dh = load i64, ptr %i.aa, align 8, !tbaa !65
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #2
  br label %bb.go

bb.k:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE5clearEv.exit
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %.body287

bb.l:                                             ; preds = %.lr.ph968, %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit.thread
  %.0173967 = phi i32 [ 0, %.lr.ph968 ], [ %.5178, %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit.thread ] ; 12 uses
  %.sroa.0646.0966 = phi ptr [ %i.bo, %.lr.ph968 ], [ %i.jb, %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit.thread ] ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0646.0966, i64 32
  %.sroa.095.0.copyload = load i48, ptr %i.dk, align 8, !tbaa !162 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0646.0966, i64 40
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !206 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !445 ; 9 uses
  %.not219 = icmp eq ptr %i.dn, null
  br i1 %.not219, label %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %.sroa.0.0.copyload.i256 = load i48, ptr %i.do, align 8, !tbaa !162 ; 3 uses
  %.sroa.013.0.extract.trunc.i = trunc i48 %.sroa.0.0.copyload.i256 to i16
  %.sroa.2.0.extract.shift.i = lshr i48 %.sroa.0.0.copyload.i256, 16
  %.sroa.2.0.extract.trunc.i = trunc i48 %.sroa.2.0.extract.shift.i to i16
  %.sroa.3.0.extract.shift.i = lshr i48 %.sroa.0.0.copyload.i256, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i48 %.sroa.3.0.extract.shift.i to i16
  %i.dp = sitofp nsz i16 %.sroa.013.0.extract.trunc.i to float
  %i.dq = sitofp nsz i16 %.sroa.2.0.extract.trunc.i to float
  %i.dr = sitofp nsz i16 %.sroa.3.0.extract.trunc.i to float
  %i.ds = fmul nnan nsz float %i.dp, 1.000000e+01
  %i.dt = fmul nnan nsz float %i.dq, 1.000000e+01
  %i.du = fmul nnan nsz float %i.dr, 1.000000e+01
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dn, i64 60
  %.sroa.01.0.copyload.i257 = load <2 x float>, ptr %i.dv, align 4, !tbaa !82 ; 2 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 68
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !82
  %.sroa.0640.0.vec.extract = extractelement <2 x float> %.sroa.01.0.copyload.i257, i64 0
  %i.dw = fadd nsz float %.sroa.0640.0.vec.extract, %i.ds ; 2 uses
  %.sroa.0640.4.vec.extract = extractelement <2 x float> %.sroa.01.0.copyload.i257, i64 1
  %i.dx = fadd nsz float %.sroa.0640.4.vec.extract, %i.dt ; 2 uses
  %i.dy = fadd nsz float %.sroa.22.0.copyload.i, %i.du ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dn, i64 56
  %i.ea = load float, ptr %i.dz, align 8, !tbaa !480 ; 5 uses
  %i.eb = load float, ptr %i.bh, align 4, !tbaa !481
  %i.ec = fsub nsz float %i.dw, %i.eb             ; 4 uses
  %i.ed = load float, ptr %i.bq, align 4, !tbaa !482
  %i.ee = fsub nsz float %i.dx, %i.ed             ; 4 uses
  %i.ef = load float, ptr %.sroa.2.0..sroa_idx.i, align 4, !tbaa !483
  %i.eg = fsub nsz float %i.dy, %i.ef             ; 4 uses
  %i.eh = load float, ptr %10, align 4, !tbaa !481
  %i.ei = load float, ptr %i.br, align 4, !tbaa !482
  %i.ej = fmul nsz float %i.ee, %i.ei
  %i.ek = call nsz float @llvm.fmuladd.f32(float %i.ec, float %i.eh, float %i.ej)
  %i.el = load float, ptr %i.bs, align 4, !tbaa !483
  %i.em = call nsz noundef float @llvm.fmuladd.f32(float %i.eg, float %i.el, float %i.ek)
  %i.en = load float, ptr %i.bt, align 4, !tbaa !485
  %i.eo = fadd nsz float %i.en, %i.em
  %i.ep = fcmp nsz ogt float %i.eo, %i.ea
  br i1 %i.ep, label %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.eq = load float, ptr %.014.ptr.1.i, align 4, !tbaa !481
  %i.er = load float, ptr %i.bu, align 4, !tbaa !482
  %i.es = fmul nsz float %i.ee, %i.er
  %i.et = call nsz float @llvm.fmuladd.f32(float %i.ec, float %i.eq, float %i.es)
  %i.eu = load float, ptr %i.bv, align 4, !tbaa !483
  %i.ev = call nsz noundef float @llvm.fmuladd.f32(float %i.eg, float %i.eu, float %i.et)
  %i.ew = load float, ptr %i.bw, align 4, !tbaa !485
  %i.ex = fadd nsz float %i.ew, %i.ev
  %i.ey = fcmp nsz ogt float %i.ex, %i.ea
  br i1 %i.ey, label %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ez = load float, ptr %.014.ptr.2.i, align 4, !tbaa !481
  %i.fa = load float, ptr %i.bx, align 4, !tbaa !482
  %i.fb = fmul nsz float %i.ee, %i.fa
  %i.fc = call nsz float @llvm.fmuladd.f32(float %i.ec, float %i.ez, float %i.fb)
  %i.fd = load float, ptr %i.by, align 4, !tbaa !483
  %i.fe = call nsz noundef float @llvm.fmuladd.f32(float %i.eg, float %i.fd, float %i.fc)
  %i.ff = load float, ptr %i.bz, align 4, !tbaa !485
  %i.fg = fadd nsz float %i.ff, %i.fe
  %i.fh = fcmp nsz ogt float %i.fg, %i.ea
  br i1 %i.fh, label %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit.thread, label %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit

_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit: ; preds = %bb.o
  %i.fi = load float, ptr %.014.ptr.3.i, align 4, !tbaa !481
  %i.fj = load float, ptr %i.ca, align 4, !tbaa !482
  %i.fk = fmul nsz float %i.ee, %i.fj
  %i.fl = call nsz float @llvm.fmuladd.f32(float %i.ec, float %i.fi, float %i.fk)
  %i.fm = load float, ptr %i.cb, align 4, !tbaa !483
  %i.fn = call nsz noundef float @llvm.fmuladd.f32(float %i.eg, float %i.fm, float %i.fl)
  %i.fo = load float, ptr %i.cc, align 4, !tbaa !485
  %i.fp = fadd nsz float %i.fo, %i.fn
  %i.fq = fcmp nsz ogt float %i.fp, %i.ea
  br i1 %i.fq, label %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit.thread, label %bb.q

bb.p:                                             ; preds = %_ZN12MapBlockMesh27decreaseAnimationForceTimerEv.exit.thread
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %.body287

bb.q:                                             ; preds = %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit
  br i1 %i.i, label %bb.r, label %_ZN12MapBlockMesh27decreaseAnimationForceTimerEv.exit

bb.r:                                             ; preds = %bb.q
  %i.fs = fsub nsz float %.sroa.0652.0.copyload, %i.dw ; 2 uses
  %i.ft = fsub nsz float %.sroa.5653.0.copyload, %i.dx ; 2 uses
  %i.fu = fsub nsz float %.sroa.6654.0.copyload, %i.dy ; 2 uses
  %i.fv = fmul nsz float %i.ft, %i.ft
  %i.fw = call nsz float @llvm.fmuladd.f32(float %i.fs, float %i.fs, float %i.fv)
  %i.fx = call nsz noundef float @llvm.fmuladd.f32(float %i.fu, float %i.fu, float %i.fw)
  %i.fy = fadd nsz float %i.ea, 5.000000e+02      ; 2 uses
  %square = fmul nsz float %i.fy, %i.fy
end_hunk_0
begin_hunk_1_@_ZN9ClientMap14updateDrawListEv:.noexc.i
  %i.cd = sdiv i32 %i.ca, 16
  %i.ce = trunc nsw i32 %i.cd to i16
  %i.cf = add nsw i16 %i.ce, -3                   ; 4 uses
  %i.cg = insertelement <2 x i32> poison, i32 %i.bz, i64 0
  %i.ch = shufflevector <2 x i32> %i.cg, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ci = sub nsw <2 x i32> %i.cb, %i.ch
  %i.cj = sdiv <2 x i32> %i.ci, splat (i32 16)
  %i.ck = trunc <2 x i32> %i.cj to <2 x i16>
  %i.cl = add nsw <2 x i16> %i.ck, splat (i16 -3) ; 5 uses
  %i.cm = sdiv i32 %i.cc, 16
  %i.cn = trunc nsw i32 %i.cm to i16
  %i.co = add nsw i16 %i.cn, 1                    ; 4 uses
  %i.cp = add nsw <2 x i32> %i.ch, %i.cb
  %i.cq = sdiv <2 x i32> %i.cp, splat (i32 16)
  %i.cr = trunc <2 x i32> %i.cq to <2 x i16>
  %i.cs = add nsw <2 x i16> %i.cr, splat (i16 1)  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #2
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !154
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 1672
  %.sroa.0.0.copyload.i = load i16, ptr %i.cv, align 8, !tbaa !162 ; 2 uses
  store i16 %.sroa.0.0.copyload.i, ptr %6, align 2
  %i.cw = icmp ult i16 %.sroa.0.0.copyload.i, 4   ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bv, i64 5
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !565, !range !174, !noundef !175
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.da = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.0845.0.insert.insert860, ptr noundef null)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.db = and i32 %i.da, 65535                    ; 2 uses
  %i.dc = icmp eq i32 %i.db, 127
  br i1 %i.dc, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !566 ; 2 uses
  %i.df = zext nneg i32 %i.db to i64              ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !569
  %i.dj = load ptr, ptr %i.dg, align 8, !tbaa !570 ; 3 uses
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = sdiv exact i64 %i.dm, 2080
  %i.do = icmp ugt i64 %i.dn, %i.df
  br i1 %i.do, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.dp = getelementptr inbounds nuw [2080 x i8], ptr %i.dj, i64 %i.df ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !176
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %bb.h, label %_ZNK14NodeDefManager3getERK7MapNode.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dj, i64 260000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit

_ZNK14NodeDefManager3getERK7MapNode.exit:         ; preds = %bb.h, %bb.g
  %i.du = phi ptr [ %i.dt, %bb.h ], [ %i.dp, %bb.g ]
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 1400
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !594
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 1248
  %i.dy = load i8, ptr %i.dx, align 8, !tbaa !598
  %i.dz = icmp eq i8 %i.dy, 2
  br i1 %i.dz, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit, %bb.e
  br label %bb.m

bb.j:                                             ; preds = %.noexc.i
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit361

bb.k:                                             ; preds = %.noexc
  %i.eb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ec = load ptr, ptr %5, align 8, !tbaa !64    ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.u
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit361, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i359

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i359: ; preds = %bb.k
  %i.ee = load i64, ptr %i.u, align 8, !tbaa !65
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.ef) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit361

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit361: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i359, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ea, %bb.j ], [ %i.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i359 ], [ %i.eb, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #2
  br label %bb.fg

bb.l:                                             ; preds = %bb.d
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ff

bb.m:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit, %bb.i, %bb.c
  %.1271 = phi i1 [ %i.cw, %bb.c ], [ false, %bb.i ], [ %i.cw, %_ZNK14NodeDefManager3getERK7MapNode.exit ] ; 3 uses
  %i.eh = add nsw i32 %i.by, -15
  %i.ei = icmp slt i16 %i.bj, 0
  %i.ej = select i1 %i.ei, i32 %i.eh, i32 %i.by
  %i.ek = sdiv i32 %i.ej, 16                      ; 3 uses
  %i.el = add nsw <2 x i32> %i.cb, splat (i32 -15)
  %i.em = icmp slt i16 %i.bs, 0
  %i.en = icmp slt i48 %.sroa.12.0.insert.shift901, 0
  %i.eo = insertelement <2 x i1> poison, i1 %i.em, i64 0
  %i.ep = insertelement <2 x i1> %i.eo, i1 %i.en, i64 1
  %i.eq = select <2 x i1> %i.ep, <2 x i32> %i.el, <2 x i32> %i.cb
  %i.er = sdiv <2 x i32> %i.eq, splat (i32 16)    ; 4 uses
  %i.es = extractelement <2 x i32> %i.er, i64 1
  %.mask.i = and i32 %i.es, 65535
  %.sroa.3.0.insert.ext.i362 = zext nneg i32 %.mask.i to i48
  %.sroa.3.0.insert.shift.i363 = shl nuw i48 %.sroa.3.0.insert.ext.i362, 32
  %i.et = extractelement <2 x i32> %i.er, i64 0
  %i.eu = shl nsw i32 %i.et, 16
  %.sroa.2.0.insert.shift.i364 = zext i32 %i.eu to i48
  %.mask5.i = and i32 %i.ek, 65535
  %.sroa.0.0.insert.ext.i366 = zext nneg i32 %.mask5.i to i48
  %i.ev = or disjoint i48 %.sroa.3.0.insert.shift.i363, %.sroa.0.0.insert.ext.i366
  %.sroa.0.0.insert.insert.i367 = or disjoint i48 %i.ev, %.sroa.2.0.insert.shift.i364
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #2
  store i48 %.sroa.0.0.insert.insert.i367, ptr %7, align 8, !tbaa !162
  %i.ew = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  store i32 0, ptr %i.ew, align 8, !tbaa !163
  %i.ex = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr null, ptr %i.ex, align 8, !tbaa !164
  %i.ey = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  store ptr %i.ew, ptr %i.ey, align 8, !tbaa !165
  %i.ez = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  store ptr %i.ew, ptr %i.ez, align 8, !tbaa !166
  %i.fa = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  store i64 0, ptr %i.fa, align 8, !tbaa !167
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull align 8 dereferenceable(48) %7, i64 6, i1 false), !tbaa.struct !599
  %i.fb = load ptr, ptr %i.ai, align 8, !tbaa !164
  invoke void @_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_EN9ClientMap16MapBlockComparerESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef %i.fb)
          to label %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_EN9ClientMap16MapBlockComparerESaIS7_EE5clearEv.exit.i.i.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fc = landingpad { ptr, i32 }
          catch ptr null
  %i.fd = extractvalue { ptr, i32 } %i.fc, 0
  call void @__clang_call_terminate(ptr %i.fd) #35
  unreachable

_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_EN9ClientMap16MapBlockComparerESaIS7_EE5clearEv.exit.i.i.i: ; preds = %bb.m
  store ptr null, ptr %i.ai, align 8, !tbaa !164
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !165
  store ptr %i.ah, ptr %i.am, align 8, !tbaa !166
  store i64 0, ptr %i.an, align 8, !tbaa !167
  %i.fe = load ptr, ptr %i.ex, align 8, !tbaa !600 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.fe, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockN9ClientMap16MapBlockComparerESaISt4pairIKS2_S4_EEEaSEOSB_.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_EN9ClientMap16MapBlockComparerESaIS7_EE5clearEv.exit.i.i.i
  %i.ff = load i32, ptr %i.ew, align 8, !tbaa !163
  store i32 %i.ff, ptr %i.ah, align 8, !tbaa !163
  store ptr %i.fe, ptr %i.ai, align 8, !tbaa !164
  %i.fg = load <2 x ptr>, ptr %i.ey, align 8, !tbaa !600
  store <2 x ptr> %i.fg, ptr %i.af, align 8, !tbaa !600
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  store ptr %i.ah, ptr %i.fh, align 8, !tbaa !849
  %i.fi = load i64, ptr %i.fa, align 8, !tbaa !167
  store i64 %i.fi, ptr %i.an, align 8, !tbaa !167
  store ptr null, ptr %i.ex, align 8, !tbaa !164
  store ptr %i.ew, ptr %i.ey, align 8, !tbaa !165
  store ptr %i.ew, ptr %i.ez, align 8, !tbaa !166
  store i64 0, ptr %i.fa, align 8, !tbaa !167
  br label %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockN9ClientMap16MapBlockComparerESaISt4pairIKS2_S4_EEEaSEOSB_.exit

_ZNSt3mapIN4core8vector3dIsEEP8MapBlockN9ClientMap16MapBlockComparerESaISt4pairIKS2_S4_EEEaSEOSB_.exit: ; preds = %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_EN9ClientMap16MapBlockComparerESaIS7_EE5clearEv.exit.i.i.i, %bb.o
  invoke void @_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_EN9ClientMap16MapBlockComparerESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef null)
          to label %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockN9ClientMap16MapBlockComparerESaISt4pairIKS2_S4_EEED2Ev.exit unwind label %bb.p

bb.p:                                             ; preds = %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockN9ClientMap16MapBlockComparerESaISt4pairIKS2_S4_EEEaSEOSB_.exit
  %i.fj = landingpad { ptr, i32 }
          catch ptr null
  %i.fk = extractvalue { ptr, i32 } %i.fj, 0
  call void @__clang_call_terminate(ptr %i.fk) #35
  unreachable

_ZNSt3mapIN4core8vector3dIsEEP8MapBlockN9ClientMap16MapBlockComparerESaISt4pairIKS2_S4_EEED2Ev.exit: ; preds = %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockN9ClientMap16MapBlockComparerESaISt4pairIKS2_S4_EEEaSEOSB_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #2
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #2
  %i.fl = load ptr, ptr %i.ct, align 8, !tbaa !154
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 624
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !444 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !850)
  invoke void @_ZNK6Camera20getFrustumCullPlanesEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::array.470") align 4 %8, ptr noundef nonnull align 8 dereferenceable(536) %i.fn)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockN9ClientMap16MapBlockComparerESaISt4pairIKS2_S4_EEED2Ev.exit
  %i.fo = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 84
  %.sroa.01.0.copyload.i = load i48, ptr %i.fp, align 4, !tbaa !162, !noalias !850 ; 2 uses
  %.sroa.3.0.extract.shift.i.i = lshr i48 %.sroa.01.0.copyload.i, 32
  %.sroa.3.0.extract.trunc.i.i = trunc nuw i48 %.sroa.3.0.extract.shift.i.i to i16
  %i.fq = sitofp nsz i16 %.sroa.3.0.extract.trunc.i.i to float
  %22 = bitcast i48 %.sroa.01.0.copyload.i to <3 x i16>
  %23 = shufflevector <3 x i16> %22, <3 x i16> poison, <2 x i32> <i32 0, i32 1>
  %i.fr = sitofp <2 x i16> %23 to <2 x float>
  %i.fs = fmul nnan nsz <2 x float> %i.fr, splat (float 1.000000e+01)
  %i.ft = fmul nnan nsz float %i.fq, 1.000000e+01
  store <2 x float> %i.fs, ptr %i.fo, align 4, !alias.scope !850
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 3 uses
  store float %i.ft, ptr %.sroa.2.0..sroa_idx.i, align 4, !alias.scope !850
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #2
  %i.fu = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 8 uses
  store i32 0, ptr %i.fu, align 8, !tbaa !163
  %i.fv = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store ptr null, ptr %i.fv, align 8, !tbaa !164
  %i.fw = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  store ptr %i.fu, ptr %i.fw, align 8, !tbaa !165
  %i.fx = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %i.fu, ptr %i.fx, align 8, !tbaa !166
  %i.fy = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
  store i64 0, ptr %i.fy, align 8, !tbaa !167
  %i.fz = load ptr, ptr %i.bu, align 8, !tbaa !486, !nonnull !175, !align !487
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 4
  %i.gb = load i8, ptr %i.ga, align 4, !tbaa !489, !range !174, !noundef !175
  %i.gc = trunc nuw i8 %i.gb to i1
  br i1 %i.gc, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 654
  %i.ge = load i8, ptr %i.gd, align 2, !tbaa !184, !range !174, !noundef !175
  %i.gf = trunc nuw i8 %i.ge to i1
  br i1 %i.gf, label %bb.s, label %bb.bu

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.0812.0991 = load ptr, ptr %i.gg, align 8, !tbaa !243 ; 2 uses
  %.not917992 = icmp eq ptr %.sroa.0812.0991, null
  br i1 %.not917992, label %.noexc.i370, label %.lr.ph998

.lr.ph998:                                        ; preds = %bb.s
  %i.gh = sext i16 %i.cf to i32
  %i.gi = sext i16 %i.co to i32
  %i.gj = extractelement <2 x i16> %i.cl, i64 1
  %i.gk = sext i16 %i.gj to i32
  %i.gl = extractelement <2 x i16> %i.cs, i64 1
  %i.gm = sext i16 %i.gl to i32
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.go = getelementptr inbounds nuw i8, ptr %8, i64 68
  %i.gp = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.gq = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.gr = getelementptr inbounds nuw i8, ptr %8, i64 12
  %.014.ptr.1.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.gs = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.gt = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.gu = getelementptr inbounds nuw i8, ptr %8, i64 28
  %.014.ptr.2.i = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.gv = getelementptr inbounds nuw i8, ptr %8, i64 36
  %i.gw = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.gx = getelementptr inbounds nuw i8, ptr %8, i64 44
  %.014.ptr.3.i = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.gy = getelementptr inbounds nuw i8, ptr %8, i64 52
  %i.gz = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.ha = getelementptr inbounds nuw i8, ptr %8, i64 60
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 655
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 6 uses
  br label %bb.u

.noexc.i370.loopexit:                             ; preds = %.loopexit
  %i.hd = uitofp nsz i32 %.3276 to float
  %i.he = uitofp nsz i32 %i.ht to float
  br label %.noexc.i370

.noexc.i370:                                      ; preds = %.noexc.i370.loopexit, %bb.s
  %.0273.lcssa = phi float [ 0.000000e+00, %bb.s ], [ %i.hd, %.noexc.i370.loopexit ]
  %.0272.lcssa = phi float [ 0.000000e+00, %bb.s ], [ %i.he, %.noexc.i370.loopexit ]
  %.0260.lcssa = phi i32 [ 0, %bb.s ], [ %.4264, %.noexc.i370.loopexit ]
  %.0249.lcssa = phi i32 [ 0, %bb.s ], [ %.4253, %.noexc.i370.loopexit ]
  %i.hf = load ptr, ptr @g_profiler, align 8, !tbaa !493
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #2
  %i.hg = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.hg, ptr %10, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #2
  store i64 22, ptr %i.j, align 8, !tbaa !178
  %i.hh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef 0)
          to label %.noexc371 unwind label %bb.bq ; 2 uses

.noexc371:                                        ; preds = %.noexc.i370
  store ptr %i.hh, ptr %10, align 8, !tbaa !64
  %i.hi = load i64, ptr %i.j, align 8, !tbaa !178 ; 3 uses
  store i64 %i.hi, ptr %i.hg, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.hh, ptr noundef nonnull align 1 dereferenceable(22) @.str.13, i64 22, i1 false)
  %i.hj = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.hi, ptr %i.hj, align 8, !tbaa !176
  %i.hk = load ptr, ptr %10, align 8, !tbaa !64
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.hi
  store i8 0, ptr %i.hl, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #2
  invoke void @_ZN8Profiler3avgERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEf(ptr noundef nonnull align 8 dereferenceable(144) %i.hf, ptr noundef nonnull align 8 dereferenceable(32) %10, float noundef %.0273.lcssa)
          to label %bb.bo unwind label %bb.br

bb.t:                                             ; preds = %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockN9ClientMap16MapBlockComparerESaISt4pairIKS2_S4_EEED2Ev.exit
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %bb.fe

bb.u:                                             ; preds = %.lr.ph998, %.loopexit
  %.sroa.0812.0997 = phi ptr [ %.sroa.0812.0991, %.lr.ph998 ], [ %.sroa.0812.0, %.loopexit ] ; 2 uses
  %.0249996 = phi i32 [ 0, %.lr.ph998 ], [ %.4253, %.loopexit ] ; 4 uses
  %.0260995 = phi i32 [ 0, %.lr.ph998 ], [ %.4264, %.loopexit ] ; 4 uses
  %.0272994 = phi i32 [ 0, %.lr.ph998 ], [ %i.ht, %.loopexit ]
  %.0273993 = phi i32 [ 0, %.lr.ph998 ], [ %.3276, %.loopexit ] ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.0812.0997, i64 16
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !256 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 72
  %.sroa.0.0.copyload.i373 = load i32, ptr %i.hp, align 8, !tbaa !162 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 32
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !602
  %i.hs = trunc i64 %i.hr to i32
  %i.ht = add i32 %.0272994, %i.hs                ; 2 uses
  %i.hu = load ptr, ptr %i.bu, align 8, !tbaa !486, !nonnull !175, !align !487
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 4
  %i.hw = load i8, ptr %i.hv, align 4, !tbaa !489, !range !174, !noundef !175
  %i.hx = trunc nuw i8 %i.hw to i1
  br i1 %i.hx, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %sext = shl i32 %.sroa.0.0.copyload.i373, 16
  %i.hy = ashr exact i32 %sext, 16                ; 2 uses
  %i.hz = icmp slt i32 %i.hy, %i.gh
  %i.ia = icmp sgt i32 %i.hy, %i.gi
  %or.cond352 = select i1 %i.hz, i1 true, i1 %i.ia
  br i1 %or.cond352, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ib = ashr i32 %.sroa.0.0.copyload.i373, 16   ; 2 uses
  %i.ic = icmp slt i32 %i.ib, %i.gk
  %i.id = icmp sgt i32 %i.ib, %i.gm
  %or.cond356 = select i1 %i.ic, i1 true, i1 %i.id
  br i1 %or.cond356, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ho, i64 24
  %.sroa.0808.0981 = load ptr, ptr %i.ie, align 8, !tbaa !243 ; 2 uses
  %.not919982 = icmp eq ptr %.sroa.0808.0981, null
  br i1 %.not919982, label %.loopexit, label %.lr.ph987

.lr.ph987:                                        ; preds = %bb.x, %bb.bn
  %.sroa.0808.0986 = phi ptr [ %.sroa.0808.0, %bb.bn ], [ %.sroa.0808.0981, %bb.x ] ; 2 uses
  %.1250985 = phi i32 [ %.3252, %bb.bn ], [ %.0249996, %bb.x ] ; 7 uses
  %.1261984 = phi i32 [ %.3263, %bb.bn ], [ %.0260995, %bb.x ] ; 7 uses
  %.1274983 = phi i32 [ %.2275, %bb.bn ], [ %.0273993, %bb.x ] ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.0808.0986, i64 16
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !241 ; 13 uses
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !445 ; 4 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 10 ; 2 uses
  %.sroa.0.0.copyload.i374 = load i48, ptr %i.ii, align 2, !tbaa !162 ; 4 uses
  %.sroa.0789.0.extract.trunc = trunc i48 %.sroa.0.0.copyload.i374 to i16 ; 2 uses
  %.sroa.6790.0.extract.shift = lshr i48 %.sroa.0.0.copyload.i374, 16
  %.sroa.6790.0.extract.trunc = trunc i48 %.sroa.6790.0.extract.shift to i16 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %.sroa.0.0.copyload.i375 = load i48, ptr %i.ij, align 8, !tbaa !162 ; 2 uses
  %i.ik = icmp ne ptr %i.ih, null                 ; 3 uses
  %.sroa.3.0.extract.shift.i378 = lshr i48 %.sroa.0.0.copyload.i375, 32
  %.sroa.3.0.extract.trunc.i379 = trunc nuw i48 %.sroa.3.0.extract.shift.i378 to i16
  %i.il = bitcast i48 %.sroa.0.0.copyload.i375 to <3 x i16>
  %i.im = shufflevector <3 x i16> %i.il, <3 x i16> poison, <2 x i32> <i32 0, i32 1>
  %i.in = sitofp <2 x i16> %i.im to <2 x float>
  %i.io = sitofp nsz i16 %.sroa.3.0.extract.trunc.i379 to float
  %i.ip = fmul nnan nsz <2 x float> %i.in, splat (float 1.000000e+01)
  %i.iq = fmul nnan nsz float %i.io, 1.000000e+01
  br i1 %i.ik, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph987
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ih, i64 60
  %.sroa.01.0.copyload.i380 = load <2 x float>, ptr %i.ir, align 4, !tbaa !82
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ih, i64 68
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !82
  %i.is = getelementptr inbounds nuw i8, ptr %i.ih, i64 56
  %i.it = load float, ptr %i.is, align 8, !tbaa !480
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph987, %bb.y
  %.sroa.22.0.copyload.i.pn = phi float [ %.sroa.22.0.copyload.i, %bb.y ], [ 7.500000e+01, %.lr.ph987 ]
  %.sroa.01.0.copyload.i380.pn = phi <2 x float> [ %.sroa.01.0.copyload.i380, %bb.y ], [ splat (float 7.500000e+01), %.lr.ph987 ]
  %.0280 = phi nsz float [ %i.it, %bb.y ], [ 0.000000e+00, %.lr.ph987 ] ; 2 uses
  %.sroa.0792.0 = fadd nsz <2 x float> %i.ip, %.sroa.01.0.copyload.i380.pn ; 3 uses
  %.sroa.10796.0 = fadd nsz float %i.iq, %.sroa.22.0.copyload.i.pn ; 2 uses
  %i.iu = load ptr, ptr %i.bu, align 8, !tbaa !486, !nonnull !175, !align !487 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 4
  %i.iw = load i8, ptr %i.iv, align 4, !tbaa !489, !range !174, !noundef !175
  %i.ix = trunc nuw i8 %i.iw to i1                ; 2 uses
  %.pre1020 = extractelement <2 x float> %.sroa.0792.0, i64 0 ; 2 uses
  br i1 %i.ix, label %._crit_edge1019, label %bb.aa

._crit_edge1019:                                  ; preds = %bb.z
  %.pre1021 = extractelement <2 x float> %.sroa.0792.0, i64 1
  br label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.iy = load float, ptr %i.be, align 8, !tbaa !481
  %i.iz = fsub nsz float %.pre1020, %i.iy         ; 2 uses
  %.sroa.0792.4.vec.extract = extractelement <2 x float> %.sroa.0792.0, i64 1 ; 2 uses
  %i.ja = load float, ptr %i.gn, align 4, !tbaa !482
  %i.jb = fsub nsz float %.sroa.0792.4.vec.extract, %i.ja ; 2 uses
  %i.jc = load float, ptr %.sroa.2209.0..sroa_idx, align 8, !tbaa !483
end_hunk_1
