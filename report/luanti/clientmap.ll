Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/clientmap?download=true
inline.NumInlined: 4211
inline.NumDeleted: 1666
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN9ClientMap6renderEv:bb.a
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 216
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef i32 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  tail call void @_ZN9ClientMap9renderMapEPN5video12IVideoDriverEi(ptr noundef nonnull align 8 dereferenceable(656) %0, ptr noundef nonnull %i.f, i32 noundef %i.o)
  ret void
}

; Function Attrs: uwtable
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
  %.str.21..str.22 = select i1 %i.i, ptr @.str.21, ptr @.str.22
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %.str.21..str.22, i64 noundef 18)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.d ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %.invoke
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !154  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 712
  %i.n = load float, ptr %i.m, align 8, !tbaa !785
  %i.o = invoke noundef i32 @_ZN6Client13getCrackLevelEv(ptr noundef nonnull align 8 dereferenceable(1674) %i.l)
          to label %bb.a unwind label %bb.d

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !154
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 128
  %i.r = invoke noundef i32 @_ZN11Environment16getDayNightRatioEv(ptr noundef nonnull align 8 dereferenceable(88) %i.q)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 416
  %.sroa.0649.0.copyload = load float, ptr %i.s, align 8, !tbaa !82
  %.sroa.5650.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 420
  %.sroa.5650.0.copyload = load float, ptr %.sroa.5650.0..sroa_idx, align 4, !tbaa !82
  %.sroa.6651.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 424
  %.sroa.6651.0.copyload = load float, ptr %.sroa.6651.0..sroa_idx, align 8, !tbaa !82
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !154
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1672
  %.sroa.0.0.copyload.i = load i16, ptr %i.u, align 8, !tbaa !162 ; 4 uses
  br i1 %i.f, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN9ClientMap28updateTransparentMeshBuffersEv(ptr noundef nonnull align 8 dereferenceable(656) %0)
          to label %._crit_edge.i.i unwind label %bb.d

bb.d:                                             ; preds = %.invoke, %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.fs

._crit_edge.i.i:                                  ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #2
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #2
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.w, ptr %9, align 8, !tbaa !177
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.x, align 8, !tbaa !176
  store i8 0, ptr %i.w, align 8, !tbaa !65
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.y, ptr %8, align 8, !tbaa !177
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.z, align 8, !tbaa !176
  store i8 0, ptr %i.y, align 8, !tbaa !65
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr null, ptr %i.aa, align 8, !tbaa !438
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i8 1, ptr %i.ab, align 8, !tbaa !439
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(50) %8, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i, %._crit_edge.i.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %8, align 8, !tbaa !64    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.y
  br i1 %i.ae, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.af = load i64, ptr %i.y, align 8, !tbaa !65
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #34
  br label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i: ; preds = %._crit_edge.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 49
  store i8 1, ptr %i.ah, align 1, !tbaa !440
  invoke void @_ZN9TimeTaker5startEv(ptr noundef nonnull align 8 dereferenceable(50) %8)
          to label %_ZN9TimeTakerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPm13TimePrecision.exit unwind label %bb.e

_ZN9TimeTakerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPm13TimePrecision.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i
  %i.ai = load ptr, ptr %9, align 8, !tbaa !64    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.w
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN9TimeTakerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPm13TimePrecision.exit
  %i.ak = load i64, ptr %i.w, align 8, !tbaa !65
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN9TimeTakerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPm13TimePrecision.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #2
  %i.am = load i8, ptr @__tls_guard, align 1
  %i.an = icmp eq i8 %i.am, 0
  br i1 %i.an, label %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit, label %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit.thread, !prof !441

_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ao = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN12_GLOBAL__N_118tl_meshbuflistmapsE)
  br label %_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit

_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit:    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store i8 1, ptr @__tls_guard, align 1
  %i.ap = call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @__tls_guard) ; 0 uses
  call fastcc void @__cxx_global_var_init()
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN12_GLOBAL__N_121tl_drawdescriptorlistE, i8 0, i64 24, i1 false)
  %i.aq = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EED2Ev, ptr nonnull @_ZN12_GLOBAL__N_121tl_drawdescriptorlistE, ptr nonnull @__dso_handle) #2 ; 0 uses
  %.pr = load i8, ptr @__tls_guard, align 1
  %i.ar = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN12_GLOBAL__N_118tl_meshbuflistmapsE) ; 2 uses
  %i.as = icmp eq i8 %.pr, 0
  br i1 %i.as, label %bb.f, label %_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit, !prof !442

bb.f:                                             ; preds = %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit
  store i8 1, ptr @__tls_guard, align 1
  %i.at = call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @__tls_guard) ; 0 uses
  call fastcc void @__cxx_global_var_init()
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN12_GLOBAL__N_121tl_drawdescriptorlistE, i8 0, i64 24, i1 false)
  %i.au = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EED2Ev, ptr nonnull @_ZN12_GLOBAL__N_121tl_drawdescriptorlistE, ptr nonnull @__dso_handle) #2 ; 0 uses
  br label %_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit

_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit: ; preds = %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit.thread, %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit, %bb.f
  %i.av = phi ptr [ %i.ao, %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit.thread ], [ %i.ar, %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit ], [ %i.ar, %bb.f ] ; 3 uses
  %i.aw = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN12_GLOBAL__N_121tl_drawdescriptorlistE) ; 18 uses
  call fastcc void @_ZN12_GLOBAL__N_115MeshBufListMaps5clearEv(ptr noundef nonnull align 8 dereferenceable(112) %i.av)
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !48 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 26 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !443
  %.not.i.i = icmp eq ptr %i.az, %i.ax
  br i1 %.not.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPN12_GLOBAL__N_114DrawDescriptorES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN12_GLOBAL__N_114DrawDescriptorES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !443
  br label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE5clearEv.exit

_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE5clearEv.exit: ; preds = %_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit, %_ZSt8_DestroyIPN12_GLOBAL__N_114DrawDescriptorES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #2
  %i.ba = load ptr, ptr %i.k, align 8, !tbaa !154
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 624
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !444 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !786)
  invoke void @_ZNK6Camera20getFrustumCullPlanesEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::array.470") align 4 %10, ptr noundef nonnull align 8 dereferenceable(536) %i.bc)
          to label %bb.g unwind label %.loopexit.split-lp712.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE5clearEv.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 84
  %.sroa.01.0.copyload.i = load i48, ptr %i.be, align 4, !tbaa !162, !noalias !786 ; 2 uses
  %.sroa.3.0.extract.shift.i.i = lshr i48 %.sroa.01.0.copyload.i, 32
  %.sroa.3.0.extract.trunc.i.i = trunc nuw i48 %.sroa.3.0.extract.shift.i.i to i16
  %i.bf = sitofp nsz i16 %.sroa.3.0.extract.trunc.i.i to float
  %i.bg = bitcast i48 %.sroa.01.0.copyload.i to <3 x i16>
  %i.bh = shufflevector <3 x i16> %i.bg, <3 x i16> poison, <2 x i32> <i32 0, i32 1>
  %i.bi = sitofp nsz <2 x i16> %i.bh to <2 x float>
  %i.bj = fmul nnan nsz <2 x float> %i.bi, splat (float 1.000000e+01)
  %i.bk = fmul nnan nsz float %i.bf, 1.000000e+01
  store <2 x float> %i.bj, ptr %i.bd, align 4, !alias.scope !786
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 72 ; 2 uses
  store float %i.bk, ptr %.sroa.2.0..sroa_idx.i, align 4, !alias.scope !786
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !165 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %.not683919 = icmp eq ptr %i.bm, %i.bn
  br i1 %.not683919, label %..preheader_crit_edge, label %.lr.ph922

..preheader_crit_edge:                            ; preds = %bb.g
  %.pre1039 = zext i16 %.sroa.0.0.copyload.i to i32 ; 2 uses
  %.pre1040 = add nsw i32 %.pre1039, -1
  %.pre1042 = shl i16 %.sroa.0.0.copyload.i, 4
  br label %.preheader

.lr.ph922:                                        ; preds = %bb.g
  %i.bo = getelementptr inbounds nuw i8, ptr %10, i64 68
  %i.bp = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.bq = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %10, i64 12
  %.014.ptr.1.i = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %10, i64 20
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 28
  %.014.ptr.2.i = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.bv = getelementptr inbounds nuw i8, ptr %10, i64 36
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 44
  %.014.ptr.3.i = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.by = getelementptr inbounds nuw i8, ptr %10, i64 52
  %i.bz = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 60
  %i.cb = zext i16 %.sroa.0.0.copyload.i to i32   ; 4 uses
  %i.cc = add nsw i32 %i.cb, -1                   ; 4 uses
  %i.cd = shl i16 %.sroa.0.0.copyload.i, 4        ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 444
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.cg = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.ci = insertelement <2 x i16> poison, i16 %i.cd, i64 0
  %i.cj = shufflevector <2 x i16> %i.ci, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.ck = insertelement <2 x i32> poison, i32 %i.cb, i64 0
  %i.cl = shufflevector <2 x i32> %i.ck, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %bb.h

.preheader.loopexit:                              ; preds = %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit.thread
  %i.cm = uitofp nsz i32 %.5178 to float
  br label %.preheader

.preheader:                                       ; preds = %..preheader_crit_edge, %.preheader.loopexit
  %.pre-phi1043 = phi i16 [ %.pre1042, %..preheader_crit_edge ], [ %i.cd, %.preheader.loopexit ] ; 2 uses
  %.pre-phi1041 = phi i32 [ %.pre1040, %..preheader_crit_edge ], [ %i.cc, %.preheader.loopexit ] ; 3 uses
  %.pre-phi = phi i32 [ %.pre1039, %..preheader_crit_edge ], [ %i.cb, %.preheader.loopexit ] ; 2 uses
  %.0173.lcssa = phi float [ 0.000000e+00, %..preheader_crit_edge ], [ %i.cm, %.preheader.loopexit ]
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 6 uses
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 444
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.cs = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 12 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 7 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cz = insertelement <2 x i16> poison, i16 %.pre-phi1043, i64 0
  %i.da = shufflevector <2 x i16> %i.cz, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.db = insertelement <2 x i32> poison, i32 %.pre-phi, i64 0
  %i.dc = shufflevector <2 x i32> %i.db, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %bb.ab

.body:                                            ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.dd = load ptr, ptr %9, align 8, !tbaa !64    ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.w
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253: ; preds = %.body
  %i.df = load i64, ptr %i.w, align 8, !tbaa !65
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #2
  br label %bb.fr

bb.h:                                             ; preds = %.lr.ph922, %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit.thread
  %.0173921 = phi i32 [ 0, %.lr.ph922 ], [ %.5178, %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit.thread ] ; 12 uses
  %.sroa.0643.0920 = phi ptr [ %i.bm, %.lr.ph922 ], [ %i.ix, %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit.thread ] ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0643.0920, i64 32
  %.sroa.095.0.copyload = load i48, ptr %i.dh, align 8, !tbaa !162 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0643.0920, i64 40
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !206 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !445 ; 9 uses
  %.not219 = icmp eq ptr %i.dk, null
  br i1 %.not219, label %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %.sroa.0.0.copyload.i256 = load i48, ptr %i.dl, align 8, !tbaa !162 ; 3 uses
  %.sroa.013.0.extract.trunc.i = trunc i48 %.sroa.0.0.copyload.i256 to i16
  %.sroa.2.0.extract.shift.i = lshr i48 %.sroa.0.0.copyload.i256, 16
  %.sroa.2.0.extract.trunc.i = trunc i48 %.sroa.2.0.extract.shift.i to i16
  %.sroa.3.0.extract.shift.i = lshr i48 %.sroa.0.0.copyload.i256, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i48 %.sroa.3.0.extract.shift.i to i16
  %i.dm = sitofp nsz i16 %.sroa.013.0.extract.trunc.i to float
  %i.dn = sitofp nsz i16 %.sroa.2.0.extract.trunc.i to float
  %i.do = sitofp nsz i16 %.sroa.3.0.extract.trunc.i to float
  %i.dp = fmul nnan nsz float %i.dm, 1.000000e+01
  %i.dq = fmul nnan nsz float %i.dn, 1.000000e+01
  %i.dr = fmul nnan nsz float %i.do, 1.000000e+01
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dk, i64 60
  %.sroa.01.0.copyload.i257 = load <2 x float>, ptr %i.ds, align 4, !tbaa !82 ; 2 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 68
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !82
  %.sroa.0637.0.vec.extract = extractelement <2 x float> %.sroa.01.0.copyload.i257, i64 0
  %i.dt = fadd nsz float %.sroa.0637.0.vec.extract, %i.dp ; 2 uses
  %.sroa.0637.4.vec.extract = extractelement <2 x float> %.sroa.01.0.copyload.i257, i64 1
  %i.du = fadd nsz float %.sroa.0637.4.vec.extract, %i.dq ; 2 uses
  %i.dv = fadd nsz float %.sroa.22.0.copyload.i, %i.dr ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dk, i64 56
  %i.dx = load float, ptr %i.dw, align 8, !tbaa !480 ; 5 uses
  %i.dy = load float, ptr %i.bd, align 4, !tbaa !481
  %i.dz = fsub nsz float %i.dt, %i.dy             ; 4 uses
  %i.ea = load float, ptr %i.bo, align 4, !tbaa !482
  %i.eb = fsub nsz float %i.du, %i.ea             ; 4 uses
  %i.ec = load float, ptr %.sroa.2.0..sroa_idx.i, align 4, !tbaa !483
  %i.ed = fsub nsz float %i.dv, %i.ec             ; 4 uses
  %i.ee = load float, ptr %10, align 4, !tbaa !481
  %i.ef = load float, ptr %i.bp, align 4, !tbaa !482
  %i.eg = fmul nsz float %i.eb, %i.ef
  %i.eh = call nsz float @llvm.fmuladd.f32(float %i.dz, float %i.ee, float %i.eg)
  %i.ei = load float, ptr %i.bq, align 4, !tbaa !483
  %i.ej = call nsz noundef float @llvm.fmuladd.f32(float %i.ed, float %i.ei, float %i.eh)
  %i.ek = load float, ptr %i.br, align 4, !tbaa !485
  %i.el = fadd nsz float %i.ek, %i.ej
  %i.em = fcmp nsz ogt float %i.el, %i.dx
  br i1 %i.em, label %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.en = load float, ptr %.014.ptr.1.i, align 4, !tbaa !481
  %i.eo = load float, ptr %i.bs, align 4, !tbaa !482
  %i.ep = fmul nsz float %i.eb, %i.eo
  %i.eq = call nsz float @llvm.fmuladd.f32(float %i.dz, float %i.en, float %i.ep)
  %i.er = load float, ptr %i.bt, align 4, !tbaa !483
  %i.es = call nsz noundef float @llvm.fmuladd.f32(float %i.ed, float %i.er, float %i.eq)
  %i.et = load float, ptr %i.bu, align 4, !tbaa !485
  %i.eu = fadd nsz float %i.et, %i.es
  %i.ev = fcmp nsz ogt float %i.eu, %i.dx
  br i1 %i.ev, label %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ew = load float, ptr %.014.ptr.2.i, align 4, !tbaa !481
  %i.ex = load float, ptr %i.bv, align 4, !tbaa !482
  %i.ey = fmul nsz float %i.eb, %i.ex
  %i.ez = call nsz float @llvm.fmuladd.f32(float %i.dz, float %i.ew, float %i.ey)
  %i.fa = load float, ptr %i.bw, align 4, !tbaa !483
  %i.fb = call nsz noundef float @llvm.fmuladd.f32(float %i.ed, float %i.fa, float %i.ez)
  %i.fc = load float, ptr %i.bx, align 4, !tbaa !485
  %i.fd = fadd nsz float %i.fc, %i.fb
  %i.fe = fcmp nsz ogt float %i.fd, %i.dx
  br i1 %i.fe, label %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit.thread, label %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit

_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit: ; preds = %bb.k
  %i.ff = load float, ptr %.014.ptr.3.i, align 4, !tbaa !481
  %i.fg = load float, ptr %i.by, align 4, !tbaa !482
  %i.fh = fmul nsz float %i.eb, %i.fg
  %i.fi = call nsz float @llvm.fmuladd.f32(float %i.dz, float %i.ff, float %i.fh)
  %i.fj = load float, ptr %i.bz, align 4, !tbaa !483
  %i.fk = call nsz noundef float @llvm.fmuladd.f32(float %i.ed, float %i.fj, float %i.fi)
  %i.fl = load float, ptr %i.ca, align 4, !tbaa !485
  %i.fm = fadd nsz float %i.fl, %i.fk
  %i.fn = fcmp nsz ogt float %i.fm, %i.dx
  br i1 %i.fn, label %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit
  br i1 %i.i, label %bb.m, label %_ZN12MapBlockMesh27decreaseAnimationForceTimerEv.exit

bb.m:                                             ; preds = %bb.l
  %i.fo = fsub nsz float %.sroa.0649.0.copyload, %i.dt ; 2 uses
  %i.fp = fsub nsz float %.sroa.5650.0.copyload, %i.du ; 2 uses
  %i.fq = fsub nsz float %.sroa.6651.0.copyload, %i.dv ; 2 uses
  %i.fr = fmul nsz float %i.fp, %i.fp
  %i.fs = call nsz float @llvm.fmuladd.f32(float %i.fo, float %i.fo, float %i.fr)
  %i.ft = call nsz noundef float @llvm.fmuladd.f32(float %i.fq, float %i.fq, float %i.fs)
  %i.fu = fadd nsz float %i.dx, 5.000000e+02      ; 2 uses
  %square = fmul nsz float %i.fu, %i.fu
  %i.fv = fcmp nsz oge float %i.ft, %square       ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.dk, i64 76 ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !787 ; 3 uses
  %i.fy = icmp ne i32 %i.fx, 0
  %or.cond = and i1 %i.fv, %i.fy
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.fz = load ptr, ptr %i.ch, align 8, !tbaa !486, !nonnull !175, !align !487
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 4
  %i.gb = load i8, ptr %i.ga, align 4, !tbaa !489, !range !174, !noundef !175
  %i.gc = trunc nuw i8 %i.gb to i1
  %i.gd = select i1 %i.gc, i32 200, i32 50
  %i.ge = icmp ult i32 %.0173921, %i.gd
  br i1 %i.ge, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.gf = invoke noundef zeroext i1 @_ZN12MapBlockMesh7animateEbfij(ptr noundef nonnull align 8 dereferenceable(249) %i.dk, i1 noundef zeroext %i.fv, float noundef %i.n, i32 noundef %i.o, i32 noundef %i.r)
          to label %bb.p unwind label %.loopexit.split-lp712.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  %i.gg = zext i1 %i.gf to i32
  %spec.select = add i32 %.0173921, %i.gg
  br label %_ZN12MapBlockMesh27decreaseAnimationForceTimerEv.exit.thread

bb.q:                                             ; preds = %bb.n
  %i.gh = icmp sgt i32 %i.fx, 0
  br i1 %i.gh, label %bb.r, label %_ZN12MapBlockMesh27decreaseAnimationForceTimerEv.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.gi = add nsw i32 %i.fx, -1
  store i32 %i.gi, ptr %i.fw, align 4, !tbaa !787
  br label %_ZN12MapBlockMesh27decreaseAnimationForceTimerEv.exit.thread

_ZN12MapBlockMesh27decreaseAnimationForceTimerEv.exit: ; preds = %bb.l
  br i1 %i.f, label %bb.s, label %_ZN12MapBlockMesh27decreaseAnimationForceTimerEv.exit.thread

bb.s:                                             ; preds = %_ZN12MapBlockMesh27decreaseAnimationForceTimerEv.exit
  %i.gj = getelementptr inbounds nuw i8, ptr %i.dk, i64 224
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !490 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.dk, i64 232
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !490 ; 2 uses
  %.not687917 = icmp eq ptr %i.gk, %i.gm
  br i1 %.not687917, label %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s
  %.sroa.2.0.extract.shift.i.i260 = lshr i48 %.sroa.095.0.copyload, 16
  %.sroa.3.0.extract.shift.i.i262 = lshr i48 %.sroa.095.0.copyload, 32
  %.sroa.3.0.extract.trunc.i.i263 = trunc nuw i48 %.sroa.3.0.extract.shift.i.i262 to i16 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i48 %.sroa.095.0.copyload to i16 ; 2 uses
  %.sroa.2.0.extract.trunc.i.i261 = trunc i48 %.sroa.2.0.extract.shift.i.i260 to i16 ; 2 uses
  %i.gn = sext i16 %.sroa.0.0.extract.trunc.i.i to i32
  %.lobit.i.i.i.i = lshr i16 %.sroa.0.0.extract.trunc.i.i, 15
  %i.go = zext nneg i16 %.lobit.i.i.i.i to i32
  %i.gp = mul nuw nsw i32 %i.cc, %i.go
  %i.gq = sub nsw i32 %i.gn, %i.gp
  %i.gr = sext i16 %.sroa.2.0.extract.trunc.i.i261 to i32
  %.lobit.i.i1.i.i = lshr i16 %.sroa.2.0.extract.trunc.i.i261, 15
  %i.gs = zext nneg i16 %.lobit.i.i1.i.i to i32
  %i.gt = mul nuw nsw i32 %i.cc, %i.gs
  %i.gu = sub nsw i32 %i.gr, %i.gt
  %i.gv = insertelement <2 x i32> poison, i32 %i.gq, i64 0
  %i.gw = insertelement <2 x i32> %i.gv, i32 %i.gu, i64 1
  %i.gx = sdiv <2 x i32> %i.gw, %i.cl
  %i.gy = trunc <2 x i32> %i.gx to <2 x i16>
  %i.gz = sext i16 %.sroa.3.0.extract.trunc.i.i263 to i32
  %.lobit.i.i2.i.i = lshr i16 %.sroa.3.0.extract.trunc.i.i263, 15
  %i.ha = zext nneg i16 %.lobit.i.i2.i.i to i32
  %i.hb = mul nuw nsw i32 %i.cc, %i.ha
  %i.hc = sub nsw i32 %i.gz, %i.hb
  %i.hd = sdiv i32 %i.hc, %i.cb
  %i.he = trunc i32 %i.hd to i16
  %i.hf = mul <2 x i16> %i.cj, %i.gy
  %i.hg = mul i16 %i.cd, %i.he
  %.pre = load ptr, ptr %i.ay, align 8, !tbaa !443
  %.pre1032 = load ptr, ptr %i.cg, align 8, !tbaa !49
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJN4core8vector3dIfEEPK17PartialMeshBufferEEERS1_DpOT_.exit
  %i.hh = phi ptr [ %.pre1032, %.lr.ph ], [ %i.iu, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJN4core8vector3dIfEEPK17PartialMeshBufferEEERS1_DpOT_.exit ] ; 4 uses
  %i.hi = phi ptr [ %.pre, %.lr.ph ], [ %i.iv, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJN4core8vector3dIfEEPK17PartialMeshBufferEEERS1_DpOT_.exit ] ; 5 uses
  %.sroa.0634.0918 = phi ptr [ %i.gk, %.lr.ph ], [ %i.iw, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJN4core8vector3dIfEEPK17PartialMeshBufferEEERS1_DpOT_.exit ] ; 3 uses
  %i.hj = load i16, ptr %i.cf, align 8, !tbaa !159
  %i.hk = sub i16 %i.hg, %i.hj
  %i.hl = sitofp nsz i16 %i.hk to float
  %i.hm = load <2 x i16>, ptr %i.ce, align 4, !tbaa !162
  %i.hn = sub <2 x i16> %i.hf, %i.hm
  %i.ho = sitofp nsz <2 x i16> %i.hn to <2 x float>
  %i.hp = fmul nnan nsz <2 x float> %i.ho, splat (float 1.000000e+01) ; 2 uses
  %i.hq = fmul nnan nsz float %i.hl, 1.000000e+01 ; 2 uses
  %.not.i = icmp eq ptr %i.hi, %i.hh
  br i1 %.not.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store <2 x float> %i.hp, ptr %i.hi, align 8, !tbaa !82
  %.sroa.23.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  store float %i.hq, ptr %.sroa.23.0..sroa_idx.i.i, align 8, !tbaa !82
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hi, i64 12 ; 2 uses
  %i.hs = load i8, ptr %i.hr, align 4
  %i.ht = and i8 %i.hs, -4
  %i.hu = or disjoint i8 %i.ht, 2
  store i8 %i.hu, ptr %i.hr, align 4
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  store ptr %.sroa.0634.0918, ptr %i.hv, align 8, !tbaa !65
  %i.hw = load ptr, ptr %i.ay, align 8, !tbaa !443
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 24 ; 2 uses
  store ptr %i.hx, ptr %i.ay, align 8, !tbaa !443
  %.pre1031 = load ptr, ptr %i.cg, align 8, !tbaa !49
  br label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJN4core8vector3dIfEEPK17PartialMeshBufferEEERS1_DpOT_.exit

bb.v:                                             ; preds = %bb.t
  %.val.i.i = load ptr, ptr %i.aw, align 8, !tbaa !48 ; 5 uses
  %i.hy = ptrtoint ptr %i.hh to i64
  %i.hz = ptrtoint ptr %.val.i.i to i64           ; 2 uses
  %i.ia = sub i64 %i.hy, %i.hz                    ; 3 uses
  %i.ib = icmp eq i64 %i.ia, 9223372036854775800
  br i1 %i.ib, label %bb.w, label %_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #36
          to label %.noexc266 unwind label %.loopexit.split-lp712.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc266:                                        ; preds = %bb.w
  unreachable

_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.v
  %i.ic = sdiv exact i64 %i.ia, 24                ; 3 uses
  %i.id = icmp eq ptr %i.hh, %.val.i.i            ; 2 uses
  %.sroa.speculated.i.i.i = select i1 %i.id, i64 1, i64 %i.ic
  %i.ie = add nsw i64 %.sroa.speculated.i.i.i, %i.ic ; 2 uses
  %i.if = icmp ult i64 %i.ie, %i.ic
  %i.ig = call i64 @llvm.umin.i64(i64 %i.ie, i64 384307168202282325)
  %i.ih = select i1 %i.if, i64 384307168202282325, i64 %i.ig ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ih, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ii = mul nuw nsw i64 %i.ih, 24
  %i.ij = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ii) #38
          to label %.noexc267 unwind label %.loopexit.split-lp712.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc267:                                        ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.ia ; 4 uses
  store <2 x float> %i.hp, ptr %i.ik, align 8, !tbaa !82
  %.sroa.23.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  store float %i.hq, ptr %.sroa.23.0..sroa_idx.i.i.i, align 8, !tbaa !82
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 12
  store i8 2, ptr %i.il, align 4
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  store ptr %.sroa.0634.0918, ptr %i.im, align 8, !tbaa !65
  br i1 %i.id, label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc267, %.lr.ph.i.i.i.i.i
  %.03.i.i.i.i.i = phi ptr [ %i.io, %.lr.ph.i.i.i.i.i ], [ %i.ij, %.noexc267 ] ; 2 uses
  %.092.i.i.i.i.i = phi ptr [ %i.in, %.lr.ph.i.i.i.i.i ], [ %.val.i.i, %.noexc267 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.03.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.092.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !491, !alias.scope !788
  %i.in = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 24 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.in, %i.hh
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !6

_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc267
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ij, %.noexc267 ], [ %i.io, %.lr.ph.i.i.i.i.i ]
  %i.ip = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i38.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i38.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJN4core8vector3dIfEEPK17PartialMeshBufferEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i
  %i.iq = load ptr, ptr %i.cg, align 8, !tbaa !49
  %i.ir = ptrtoint ptr %i.iq to i64
  %i.is = sub i64 %i.ir, %i.hz
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i, i64 noundef %i.is) #34
  br label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJN4core8vector3dIfEEPK17PartialMeshBufferEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJN4core8vector3dIfEEPK17PartialMeshBufferEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.x, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i
  store ptr %i.ij, ptr %i.aw, align 8, !tbaa !48
  store ptr %i.ip, ptr %i.ay, align 8, !tbaa !443
  %i.it = getelementptr inbounds nuw [24 x i8], ptr %i.ij, i64 %i.ih ; 2 uses
  store ptr %i.it, ptr %i.cg, align 8, !tbaa !49
  br label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJN4core8vector3dIfEEPK17PartialMeshBufferEEERS1_DpOT_.exit

_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJN4core8vector3dIfEEPK17PartialMeshBufferEEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJN4core8vector3dIfEEPK17PartialMeshBufferEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.u
  %i.iu = phi ptr [ %i.it, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJN4core8vector3dIfEEPK17PartialMeshBufferEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.pre1031, %bb.u ]
  %i.iv = phi ptr [ %i.ip, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJN4core8vector3dIfEEPK17PartialMeshBufferEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.hx, %bb.u ]
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.0634.0918, i64 16 ; 2 uses
  %.not687 = icmp eq ptr %i.iw, %i.gm
  br i1 %.not687, label %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit.thread, label %bb.t

_ZN12MapBlockMesh27decreaseAnimationForceTimerEv.exit.thread: ; preds = %bb.p, %bb.q, %bb.r, %_ZN12MapBlockMesh27decreaseAnimationForceTimerEv.exit
  %.3176678 = phi i32 [ %.0173921, %_ZN12MapBlockMesh27decreaseAnimationForceTimerEv.exit ], [ %.0173921, %bb.r ], [ %.0173921, %bb.q ], [ %spec.select, %bb.p ]
  invoke fastcc void @_ZN12_GLOBAL__N_115MeshBufListMaps12addFromBlockEN4core8vector3dIsEEP12MapBlockMeshPN5video12IVideoDriverE(ptr noundef nonnull align 8 dereferenceable(112) %i.av, i48 %.sroa.095.0.copyload, ptr noundef nonnull %i.dk, ptr noundef %1)
          to label %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit.thread unwind label %.loopexit.split-lp712.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit.thread: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJN4core8vector3dIfEEPK17PartialMeshBufferEEERS1_DpOT_.exit, %bb.s, %bb.j, %bb.i, %bb.k, %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit, %_ZN12MapBlockMesh27decreaseAnimationForceTimerEv.exit.thread, %bb.h
  %.5178 = phi i32 [ %.0173921, %bb.h ], [ %.0173921, %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit ], [ %.3176678, %_ZN12MapBlockMesh27decreaseAnimationForceTimerEv.exit.thread ], [ %.0173921, %bb.j ], [ %.0173921, %bb.k ], [ %.0173921, %bb.i ], [ %.0173921, %bb.s ], [ %.0173921, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJN4core8vector3dIfEEPK17PartialMeshBufferEEERS1_DpOT_.exit ] ; 2 uses
  %i.ix = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0643.0920) #37 ; 2 uses
  %.not683 = icmp eq ptr %i.ix, %i.bn
  br i1 %.not683, label %.preheader.loopexit, label %bb.h

bb.y:                                             ; preds = %._crit_edge
  %i.iy = load ptr, ptr @g_profiler, align 8, !tbaa !493
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #2
  call void @llvm.experimental.noalias.scope.decl(metadata !789)
  %i.iz = load ptr, ptr %7, align 8, !tbaa !64, !noalias !789
  %i.ja = load i64, ptr %i.h, align 8, !tbaa !176, !noalias !789 ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  store ptr %i.jb, ptr %11, align 8, !tbaa !177, !alias.scope !790
  %i.jc = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store i64 0, ptr %i.jc, align 8, !tbaa !176, !alias.scope !790
  store i8 0, ptr %i.jb, align 8, !tbaa !65, !alias.scope !790
  %i.jd = add i64 %i.ja, 15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.jd)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.je = load i64, ptr %i.jc, align 8, !tbaa !176, !alias.scope !790
  %i.jf = sub i64 4611686018427387903, %i.je
  %i.jg = icmp ult i64 %i.jf, %i.ja
  br i1 %i.jg, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.z
  %i.jh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %i.iz, i64 noundef %i.ja)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.aa ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ji = load i64, ptr %i.jc, align 8, !tbaa !176, !alias.scope !790
  %i.jj = add i64 %i.ji, -4611686018427387889
  %i.jk = icmp ult i64 %i.jj, 15
  br i1 %i.jk, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #36
          to label %.cont.i.i unwind label %bb.aa

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.jl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.23, i64 noundef 15)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.aa ; 0 uses

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.y
  %i.jm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jn = load ptr, ptr %11, align 8, !tbaa !64, !alias.scope !790 ; 2 uses
  %i.jo = icmp eq ptr %i.jn, %i.jb
  br i1 %i.jo, label %.body268, label %.body268.sink.split

bb.ab:                                            ; preds = %.preheader, %._crit_edge
  %.0170.idx930 = phi i64 [ 0, %.preheader ], [ %.0170.add, %._crit_edge ] ; 2 uses
  %.0171929 = phi i32 [ 0, %.preheader ], [ %.1172.lcssa, %._crit_edge ] ; 2 uses
  %.0170.ptr = getelementptr inbounds nuw i8, ptr %i.av, i64 %.0170.idx930
  %i.jp = getelementptr inbounds nuw i8, ptr %.0170.ptr, i64 16
  %.sroa.0629.0923 = load ptr, ptr %i.jp, align 8, !tbaa !243 ; 2 uses
  %.not684924 = icmp eq ptr %.sroa.0629.0923, null
  br i1 %.not684924, label %._crit_edge, label %.lr.ph927

._crit_edge:                                      ; preds = %bb.db, %bb.ab
  %.1172.lcssa = phi i32 [ %.0171929, %bb.ab ], [ %i.apk, %bb.db ] ; 2 uses
  %.0170.add = add nuw nsw i64 %.0170.idx930, 56  ; 2 uses
  %.not185 = icmp eq i64 %.0170.add, 112
  br i1 %.not185, label %bb.y, label %bb.ab

.lr.ph927:                                        ; preds = %bb.ab, %bb.db
  %.sroa.0629.0926 = phi ptr [ %.sroa.0629.0, %bb.db ], [ %.sroa.0629.0923, %bb.ab ] ; 3 uses
  %.1172925 = phi i32 [ %i.apk, %bb.db ], [ %.0171929, %bb.ab ]
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.0629.0926, i64 136 ; 3 uses
  %i.jr = load ptr, ptr @g_settings, align 8, !tbaa !171
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #2
  store ptr %i.co, ptr %5, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #2
  store i64 24, ptr %i.e, align 8, !tbaa !178
  %i.js = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc.i270 unwind label %bb.af ; 2 uses

.noexc.i270:                                      ; preds = %.lr.ph927
  store ptr %i.js, ptr %5, align 8, !tbaa !64
  %i.jt = load i64, ptr %i.e, align 8, !tbaa !178 ; 3 uses
  store i64 %i.jt, ptr %i.co, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.js, ptr noundef nonnull align 1 dereferenceable(24) @.str.55, i64 24, i1 false)
  store i64 %i.jt, ptr %i.cp, align 8, !tbaa !176
  %i.ju = load ptr, ptr %5, align 8, !tbaa !64
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 %i.jt
  store i8 0, ptr %i.jv, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #2
  %i.jw = invoke noundef i32 @_ZNK8Settings6getU32ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.jr, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.ac unwind label %bb.ag     ; 2 uses

bb.ac:                                            ; preds = %.noexc.i270
  %i.jx = load ptr, ptr %5, align 8, !tbaa !64    ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN9ClientMap9renderMapEPN5video12IVideoDriverEi:.invoke
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.020.i.ptr.i.i.i.i, i64 16, i1 false)
  %i.nj = getelementptr i8, ptr %.pn19.i.i.i.i.i, i64 16
  %.val2.i7.i.i.i.i.i.i = load ptr, ptr %i.nj, align 8, !tbaa !500 ; 2 uses
  %i.nk = icmp ult ptr %.val.i.i.i.i.i.i, %.val2.i7.i.i.i.i.i.i
  br i1 %i.nk, label %.lr.ph.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.al, %.lr.ph.i.i.i.i.i.i
  %i.nl = phi ptr [ %.val2.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.val2.i7.i.i.i.i.i.i, %bb.al ]
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.08.020.i.ptr.i.i.i.i, %bb.al ] ; 4 uses
  %.sroa.0.0.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 -24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !501
  %i.nm = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 16
  store ptr %i.nl, ptr %i.nm, align 8, !tbaa !500
  %i.nn = getelementptr i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 -32
  %.val2.i.i.i.i.i.i.i = load ptr, ptr %i.nn, align 8, !tbaa !500 ; 2 uses
  %i.no = icmp ult ptr %.val.i.i.i.i.i.i, %.val2.i.i.i.i.i.i.i
  br i1 %i.no, label %.lr.ph.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i.i.i.i.i", !llvm.loop !730

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i, %bb.al
  %.sroa.04.0.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.08.020.i.ptr.i.i.i.i, %bb.al ], [ %.sroa.0.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.04.0.lcssa.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.03.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !501
  %i.np = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i.i.i.i.i, i64 16
  store ptr %.val.i.i.i.i.i.i, ptr %i.np, align 8, !tbaa !500
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i.i.i.i.i)
  %.val1.i.pre.i.i.i.i.i = load ptr, ptr %i.ml, align 8, !tbaa !500
  br label %bb.am

bb.am:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i.i.i.i
  %.val1.i24.i.i.i.i.i = phi ptr [ %.val.i.i.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i.i.i.i ], [ %.val1.i.pre.i.i.i.i.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i.i.i.i.i" ]
  %.sroa.08.020.i.add.i.i.i.i = add nuw nsw i64 %.sroa.08.020.i.idx.i.i.i.i, 24 ; 2 uses
  %.not.i.i.i.i.i277 = icmp eq i64 %.sroa.08.020.i.add.i.i.i.i, 384
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i.i.i277, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_S1I_.exit.i.i.i.i", label %bb.ak, !llvm.loop !731

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_S1I_.exit.i.i.i.i": ; preds = %bb.am
  %i.nq = getelementptr inbounds nuw i8, ptr %.sroa.0194.1.i, i64 384 ; 2 uses
  %.not6.i.i.i.i.i = icmp eq ptr %i.nq, %.sroa.13.1.i
  br i1 %.not6.i.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISM_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISS_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS13_ESt8equal_toIS13_ESaIS2_IKS13_S14_EEEEUlRKSW_RKT0_E_EvSW_SW_S1G_.exit.i", label %.lr.ph.i13.i.i.i.i

.lr.ph.i13.i.i.i.i:                               ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_S1I_.exit.i.i.i.i", %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i15.i.i.i.i"
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.ny, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i15.i.i.i.i" ], [ %i.nq, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_S1I_.exit.i.i.i.i" ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i12.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i12.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.07.i.i.i.i.i, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8 ; 3 uses
  %i.nr = getelementptr i8, ptr %.sroa.0.07.i.i.i.i.i, i64 -8
  %.val2.i7.i.i14.i.i.i.i = load ptr, ptr %i.nr, align 8, !tbaa !500 ; 2 uses
  %i.ns = icmp ult ptr %.sroa.4.0.copyload.i.i.i.i.i.i, %.val2.i7.i.i14.i.i.i.i
  br i1 %i.ns, label %.lr.ph.i.i18.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i15.i.i.i.i"

.lr.ph.i.i18.i.i.i.i:                             ; preds = %.lr.ph.i13.i.i.i.i, %.lr.ph.i.i18.i.i.i.i
  %i.nt = phi ptr [ %.val2.i.i.i21.i.i.i.i, %.lr.ph.i.i18.i.i.i.i ], [ %.val2.i7.i.i14.i.i.i.i, %.lr.ph.i13.i.i.i.i ]
  %.sroa.04.08.i.i19.i.i.i.i = phi ptr [ %.sroa.0.0.i.i20.i.i.i.i, %.lr.ph.i.i18.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i, %.lr.ph.i13.i.i.i.i ] ; 4 uses
  %.sroa.0.0.i.i20.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.04.08.i.i19.i.i.i.i, i64 -24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i19.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i20.i.i.i.i, i64 12, i1 false), !tbaa.struct !501
  %i.nu = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i19.i.i.i.i, i64 16
  store ptr %i.nt, ptr %i.nu, align 8, !tbaa !500
  %i.nv = getelementptr i8, ptr %.sroa.04.08.i.i19.i.i.i.i, i64 -32
  %.val2.i.i.i21.i.i.i.i = load ptr, ptr %i.nv, align 8, !tbaa !500 ; 2 uses
  %i.nw = icmp ult ptr %.sroa.4.0.copyload.i.i.i.i.i.i, %.val2.i.i.i21.i.i.i.i
  br i1 %i.nw, label %.lr.ph.i.i18.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i15.i.i.i.i", !llvm.loop !730

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i15.i.i.i.i": ; preds = %.lr.ph.i.i18.i.i.i.i, %.lr.ph.i13.i.i.i.i
  %.sroa.04.0.lcssa.i.i16.i.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i.i, %.lr.ph.i13.i.i.i.i ], [ %.sroa.0.0.i.i20.i.i.i.i, %.lr.ph.i.i18.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.04.0.lcssa.i.i16.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.03.i.i12.i.i.i.i, i64 12, i1 false), !tbaa.struct !501
  %i.nx = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i16.i.i.i.i, i64 16
  store ptr %.sroa.4.0.copyload.i.i.i.i.i.i, ptr %i.nx, align 8, !tbaa !500
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i12.i.i.i.i)
  %i.ny = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i17.i.i.i.i = icmp eq ptr %i.ny, %.sroa.13.1.i
  br i1 %.not.i17.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISM_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISS_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS13_ESt8equal_toIS13_ESaIS2_IKS13_S14_EEEEUlRKSW_RKT0_E_EvSW_SW_S1G_.exit.i", label %.lr.ph.i13.i.i.i.i, !llvm.loop !732

.preheader.i24.i.i.i.i:                           ; preds = %bb.aj
  %.sroa.08.017.i25.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0194.1.i, i64 24 ; 2 uses
  %.not18.i26.i.i.i.i = icmp eq ptr %.sroa.08.017.i25.i.i.i.i, %.sroa.13.1.i
  br i1 %.not18.i26.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISM_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISS_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS13_ESt8equal_toIS13_ESaIS2_IKS13_S14_EEEEUlRKSW_RKT0_E_EvSW_SW_S1G_.exit.i", label %.lr.ph.i27.i.i.i.i

.lr.ph.i27.i.i.i.i:                               ; preds = %.preheader.i24.i.i.i.i
  %i.nz = getelementptr i8, ptr %.sroa.0194.1.i, i64 16 ; 3 uses
  %.val1.i.pre22.i28.i.i.i.i = load ptr, ptr %i.nz, align 8, !tbaa !500
  br label %bb.an

bb.an:                                            ; preds = %bb.aq, %.lr.ph.i27.i.i.i.i
  %.val1.i.i29.i.i.i.i = phi ptr [ %.val1.i.pre22.i28.i.i.i.i, %.lr.ph.i27.i.i.i.i ], [ %.val1.i24.i37.i.i.i.i, %bb.aq ]
  %.sroa.08.020.i30.i.i.i.i = phi ptr [ %.sroa.08.017.i25.i.i.i.i, %.lr.ph.i27.i.i.i.i ], [ %.sroa.08.0.i38.i.i.i.i, %bb.aq ] ; 8 uses
  %.pn19.i31.i.i.i.i = phi ptr [ %.sroa.0194.1.i, %.lr.ph.i27.i.i.i.i ], [ %.sroa.08.020.i30.i.i.i.i, %bb.aq ] ; 3 uses
  %i.oa = getelementptr i8, ptr %.pn19.i31.i.i.i.i, i64 40
  %.val.i.i32.i.i.i.i = load ptr, ptr %i.oa, align 8, !tbaa !500 ; 6 uses
  %i.ob = icmp ult ptr %.val.i.i32.i.i.i.i, %.val1.i.i29.i.i.i.i
  br i1 %i.ob, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i23.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i23.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.020.i30.i.i.i.i, i64 16, i1 false)
  %i.oc = ptrtoint ptr %.sroa.08.020.i30.i.i.i.i to i64
  %i.od = sub i64 %i.oc, %i.me                    ; 2 uses
  %i.oe = icmp sgt i64 %i.od, 0
  br i1 %i.oe, label %.lr.ph.preheader.i.i.i.i.i.i45.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i44.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i45.i.i.i.i:           ; preds = %bb.ao
  %i.of = getelementptr inbounds nuw i8, ptr %.pn19.i31.i.i.i.i, i64 48
  %i.og = udiv exact i64 %i.od, 24
  br label %.lr.ph.i.i.i.i.i.i46.i.i.i.i

.lr.ph.i.i.i.i.i.i46.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i46.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i45.i.i.i.i
  %.010.i.i.i.i.i.i47.i.i.i.i = phi i64 [ %i.om, %.lr.ph.i.i.i.i.i.i46.i.i.i.i ], [ %i.og, %.lr.ph.preheader.i.i.i.i.i.i45.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i.i48.i.i.i.i = phi ptr [ %i.oi, %.lr.ph.i.i.i.i.i.i46.i.i.i.i ], [ %i.of, %.lr.ph.preheader.i.i.i.i.i.i45.i.i.i.i ] ; 2 uses
  %.078.i.i.i.i.i.i49.i.i.i.i = phi ptr [ %i.oh, %.lr.ph.i.i.i.i.i.i46.i.i.i.i ], [ %.sroa.08.020.i30.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i45.i.i.i.i ] ; 2 uses
  %i.oh = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i49.i.i.i.i, i64 -24 ; 2 uses
  %i.oi = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i48.i.i.i.i, i64 -24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.oi, ptr noundef nonnull align 8 dereferenceable(24) %i.oh, i64 12, i1 false), !tbaa.struct !501
  %i.oj = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i49.i.i.i.i, i64 -8
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !56
  %i.ol = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i48.i.i.i.i, i64 -8
  store ptr %i.ok, ptr %i.ol, align 8, !tbaa !500
  %i.om = add nsw i64 %.010.i.i.i.i.i.i47.i.i.i.i, -1
  %i.on = icmp samesign ugt i64 %.010.i.i.i.i.i.i47.i.i.i.i, 1
  br i1 %i.on, label %.lr.ph.i.i.i.i.i.i46.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i44.i.i.i.i, !llvm.loop !7

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i44.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i46.i.i.i.i, %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0194.1.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0.i23.i.i.i.i, i64 12, i1 false), !tbaa.struct !501
  store ptr %.val.i.i32.i.i.i.i, ptr %i.nz, align 8, !tbaa !500
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i23.i.i.i.i)
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i22.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i22.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.020.i30.i.i.i.i, i64 16, i1 false)
  %i.oo = getelementptr i8, ptr %.pn19.i31.i.i.i.i, i64 16
  %.val2.i7.i.i33.i.i.i.i = load ptr, ptr %i.oo, align 8, !tbaa !500 ; 2 uses
  %i.op = icmp ult ptr %.val.i.i32.i.i.i.i, %.val2.i7.i.i33.i.i.i.i
  br i1 %i.op, label %.lr.ph.i.i40.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i34.i.i.i.i"

.lr.ph.i.i40.i.i.i.i:                             ; preds = %bb.ap, %.lr.ph.i.i40.i.i.i.i
  %i.oq = phi ptr [ %.val2.i.i.i43.i.i.i.i, %.lr.ph.i.i40.i.i.i.i ], [ %.val2.i7.i.i33.i.i.i.i, %bb.ap ]
  %.sroa.04.08.i.i41.i.i.i.i = phi ptr [ %.sroa.0.0.i.i42.i.i.i.i, %.lr.ph.i.i40.i.i.i.i ], [ %.sroa.08.020.i30.i.i.i.i, %bb.ap ] ; 4 uses
  %.sroa.0.0.i.i42.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.04.08.i.i41.i.i.i.i, i64 -24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i41.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i42.i.i.i.i, i64 12, i1 false), !tbaa.struct !501
  %i.or = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i41.i.i.i.i, i64 16
  store ptr %i.oq, ptr %i.or, align 8, !tbaa !500
  %i.os = getelementptr i8, ptr %.sroa.04.08.i.i41.i.i.i.i, i64 -32
  %.val2.i.i.i43.i.i.i.i = load ptr, ptr %i.os, align 8, !tbaa !500 ; 2 uses
  %i.ot = icmp ult ptr %.val.i.i32.i.i.i.i, %.val2.i.i.i43.i.i.i.i
  br i1 %i.ot, label %.lr.ph.i.i40.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i34.i.i.i.i", !llvm.loop !730

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i34.i.i.i.i": ; preds = %.lr.ph.i.i40.i.i.i.i, %bb.ap
  %.sroa.04.0.lcssa.i.i35.i.i.i.i = phi ptr [ %.sroa.08.020.i30.i.i.i.i, %bb.ap ], [ %.sroa.0.0.i.i42.i.i.i.i, %.lr.ph.i.i40.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.04.0.lcssa.i.i35.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.03.i.i22.i.i.i.i, i64 12, i1 false), !tbaa.struct !501
  %i.ou = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i35.i.i.i.i, i64 16
  store ptr %.val.i.i32.i.i.i.i, ptr %i.ou, align 8, !tbaa !500
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i22.i.i.i.i)
  %.val1.i.pre.i36.i.i.i.i = load ptr, ptr %i.nz, align 8, !tbaa !500
  br label %bb.aq

bb.aq:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i34.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i44.i.i.i.i
  %.val1.i24.i37.i.i.i.i = phi ptr [ %.val.i.i32.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i44.i.i.i.i ], [ %.val1.i.pre.i36.i.i.i.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i34.i.i.i.i" ]
  %.sroa.08.0.i38.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.020.i30.i.i.i.i, i64 24 ; 2 uses
  %.not.i39.i.i.i.i = icmp eq ptr %.sroa.08.0.i38.i.i.i.i, %.sroa.13.1.i
  br i1 %.not.i39.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISM_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISS_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS13_ESt8equal_toIS13_ESaIS2_IKS13_S14_EEEEUlRKSW_RKT0_E_EvSW_SW_S1G_.exit.i", label %bb.an, !llvm.loop !731

bb.ar:                                            ; preds = %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12emplace_backIJRS3_RS6_EEERS7_DpOT_.exit.i, %.lr.ph291.i
  %.sroa.0192.0289.i = phi ptr [ %.pre.i, %.lr.ph291.i ], [ %i.ov, %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12emplace_backIJRS3_RS6_EEERS7_DpOT_.exit.i ] ; 2 uses
  %.sroa.21207.0288.i = phi ptr [ null, %.lr.ph291.i ], [ %.sroa.21207.1.i, %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12emplace_backIJRS3_RS6_EEERS7_DpOT_.exit.i ] ; 8 uses
  %.sroa.13.0287.i = phi ptr [ null, %.lr.ph291.i ], [ %.sroa.13.1.i, %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12emplace_backIJRS3_RS6_EEERS7_DpOT_.exit.i ] ; 7 uses
  %.sroa.0194.0286.i = phi ptr [ null, %.lr.ph291.i ], [ %.sroa.0194.1.i, %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12emplace_backIJRS3_RS6_EEERS7_DpOT_.exit.i ] ; 9 uses
  %i.ov = getelementptr inbounds i8, ptr %.sroa.0192.0289.i, i64 -16 ; 3 uses
  %.sroa.024.0.copyload.i = load i48, ptr %i.ov, align 8, !tbaa !162 ; 3 uses
  %.sroa.2.0.extract.shift.i.i.i = lshr i48 %.sroa.024.0.copyload.i, 16
  %.sroa.3.0.extract.shift.i.i.i = lshr i48 %.sroa.024.0.copyload.i, 32
  %.sroa.3.0.extract.trunc.i.i.i = trunc nuw i48 %.sroa.3.0.extract.shift.i.i.i to i16 ; 2 uses
  %i.ow = sext i16 %.sroa.3.0.extract.trunc.i.i.i to i32
  %.lobit.i.i2.i.i.i = lshr i16 %.sroa.3.0.extract.trunc.i.i.i, 15
  %i.ox = zext nneg i16 %.lobit.i.i2.i.i.i to i32
  %i.oy = mul nuw nsw i32 %.pre-phi1041, %i.ox
  %i.oz = sub nsw i32 %i.ow, %i.oy
  %i.pa = sdiv i32 %i.oz, %.pre-phi
  %i.pb = trunc i32 %i.pa to i16
  %i.pc = mul i16 %.pre-phi1043, %i.pb
  %i.pd = load i16, ptr %i.cr, align 8, !tbaa !159
  %i.pe = sub i16 %i.pc, %i.pd
  %i.pf = sitofp nsz i16 %i.pe to float
  %.sroa.0.0.extract.trunc.i.i.i = trunc i48 %.sroa.024.0.copyload.i to i16 ; 2 uses
  %.sroa.2.0.extract.trunc.i.i.i = trunc i48 %.sroa.2.0.extract.shift.i.i.i to i16 ; 2 uses
  %i.pg = sext i16 %.sroa.0.0.extract.trunc.i.i.i to i32
  %.lobit.i.i.i.i.i = lshr i16 %.sroa.0.0.extract.trunc.i.i.i, 15
  %i.ph = zext nneg i16 %.lobit.i.i.i.i.i to i32
  %i.pi = mul nuw nsw i32 %.pre-phi1041, %i.ph
  %i.pj = sub nsw i32 %i.pg, %i.pi
  %i.pk = sext i16 %.sroa.2.0.extract.trunc.i.i.i to i32
  %.lobit.i.i1.i.i.i = lshr i16 %.sroa.2.0.extract.trunc.i.i.i, 15
  %i.pl = zext nneg i16 %.lobit.i.i1.i.i.i to i32
  %i.pm = mul nuw nsw i32 %.pre-phi1041, %i.pl
  %i.pn = sub nsw i32 %i.pk, %i.pm
  %i.po = insertelement <2 x i32> poison, i32 %i.pj, i64 0
  %i.pp = insertelement <2 x i32> %i.po, i32 %i.pn, i64 1
  %i.pq = sdiv <2 x i32> %i.pp, %i.dc
  %i.pr = trunc <2 x i32> %i.pq to <2 x i16>
  %i.ps = mul <2 x i16> %i.da, %i.pr
  %i.pt = load <2 x i16>, ptr %i.cq, align 4, !tbaa !162
  %i.pu = sub <2 x i16> %i.ps, %i.pt
  %i.pv = sitofp nsz <2 x i16> %i.pu to <2 x float>
  %i.pw = fmul nnan nsz <2 x float> %i.pv, splat (float 1.000000e+01) ; 4 uses
  %i.px = fmul nnan nsz float %i.pf, 1.000000e+01 ; 4 uses
  %i.py = getelementptr inbounds i8, ptr %.sroa.0192.0289.i, i64 -8
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !498 ; 6 uses
  br i1 %i.kp, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !58
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 16
  %i.qc = load ptr, ptr %i.qb, align 8
  %i.qd = invoke noundef ptr %i.qc(ptr noundef nonnull align 8 dereferenceable(8) %i.pz)
          to label %.noexc96.i unwind label %.loopexit.split-lp248.i.loopexit.split-lp.loopexit.split-lp, !inline_history !8 ; 2 uses

.noexc96.i:                                       ; preds = %bb.as
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !58
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 16
  %i.qg = load ptr, ptr %i.qf, align 8
  %i.qh = invoke noundef i32 %i.qg(ptr noundef nonnull align 8 dereferenceable(28) %i.qd)
          to label %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit.i unwind label %.loopexit.split-lp248.i.loopexit.split-lp.loopexit.split-lp, !inline_history !8

_ZNK5scene11IMeshBuffer14getVertexCountEv.exit.i: ; preds = %.noexc96.i
  %.not80.i = icmp ult i32 %i.qh, %i.jw
  br i1 %.not80.i, label %bb.ax, label %bb.at

bb.at:                                            ; preds = %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit.i, %bb.ar
  %i.qi = load ptr, ptr %i.ay, align 8, !tbaa !443 ; 8 uses
  %i.qj = load ptr, ptr %i.cs, align 8, !tbaa !49
  %.not.i592 = icmp eq ptr %i.qi, %i.qj
  br i1 %.not.i592, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  store <2 x float> %i.pw, ptr %i.qi, align 8, !tbaa !82
  %.sroa.23.0..sroa_idx.i.i596 = getelementptr inbounds nuw i8, ptr %i.qi, i64 8
  store float %i.px, ptr %.sroa.23.0..sroa_idx.i.i596, align 8, !tbaa !82
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qi, i64 12 ; 2 uses
  %i.ql = load i8, ptr %i.qk, align 4
  %i.qm = and i8 %i.ql, -4
  %i.qn = or disjoint i8 %i.qm, 1
  store i8 %i.qn, ptr %i.qk, align 4
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qi, i64 16
  store ptr %i.pz, ptr %i.qo, align 8, !tbaa !65
  %i.qp = load ptr, ptr %i.ay, align 8, !tbaa !443
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 24
  store ptr %i.qq, ptr %i.ay, align 8, !tbaa !443
  br label %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12emplace_backIJRS3_RS6_EEERS7_DpOT_.exit.i

bb.av:                                            ; preds = %bb.at
  %.val.i.i597 = load ptr, ptr %i.aw, align 8, !tbaa !48 ; 5 uses
  %i.qr = ptrtoint ptr %i.qi to i64
  %i.qs = ptrtoint ptr %.val.i.i597 to i64        ; 2 uses
  %i.qt = sub i64 %i.qr, %i.qs                    ; 3 uses
  %i.qu = icmp eq i64 %i.qt, 9223372036854775800
  br i1 %i.qu, label %.invoke1378, label %_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i598

_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i598: ; preds = %bb.av
  %i.qv = sdiv exact i64 %i.qt, 24                ; 3 uses
  %i.qw = icmp eq ptr %i.qi, %.val.i.i597         ; 2 uses
  %.sroa.speculated.i.i.i599 = select i1 %i.qw, i64 1, i64 %i.qv
  %i.qx = add nsw i64 %.sroa.speculated.i.i.i599, %i.qv ; 2 uses
  %i.qy = icmp ult i64 %i.qx, %i.qv
  %i.qz = call i64 @llvm.umin.i64(i64 %i.qx, i64 384307168202282325)
  %i.ra = select i1 %i.qy, i64 384307168202282325, i64 %i.qz ; 3 uses
  %.not.i.i.i600 = icmp ne i64 %i.ra, 0
  call void @llvm.assume(i1 %.not.i.i.i600)
  %i.rb = mul nuw nsw i64 %i.ra, 24
  %i.rc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rb) #38
          to label %.noexc613 unwind label %.loopexit.split-lp248.i.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc613:                                        ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i598
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 %i.qt ; 4 uses
  store <2 x float> %i.pw, ptr %i.rd, align 8, !tbaa !82
  %.sroa.23.0..sroa_idx.i.i.i604 = getelementptr inbounds nuw i8, ptr %i.rd, i64 8
  store float %i.px, ptr %.sroa.23.0..sroa_idx.i.i.i604, align 8, !tbaa !82
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 12
  store i8 1, ptr %i.re, align 4
  %i.rf = getelementptr inbounds nuw i8, ptr %i.rd, i64 16
  store ptr %i.pz, ptr %i.rf, align 8, !tbaa !65
  br i1 %i.qw, label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i609, label %.lr.ph.i.i.i.i.i605

.lr.ph.i.i.i.i.i605:                              ; preds = %.noexc613, %.lr.ph.i.i.i.i.i605
  %.03.i.i.i.i.i606 = phi ptr [ %i.rh, %.lr.ph.i.i.i.i.i605 ], [ %i.rc, %.noexc613 ] ; 2 uses
  %.092.i.i.i.i.i607 = phi ptr [ %i.rg, %.lr.ph.i.i.i.i.i605 ], [ %.val.i.i597, %.noexc613 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.03.i.i.i.i.i606, ptr noundef nonnull readonly align 8 dereferenceable(24) %.092.i.i.i.i.i607, i64 24, i1 false), !tbaa.struct !491, !alias.scope !793
  %i.rg = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i607, i64 24 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i606, i64 24 ; 2 uses
  %.not.i.i.i.i.i608 = icmp eq ptr %i.rg, %i.qi
  br i1 %.not.i.i.i.i.i608, label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i609, label %.lr.ph.i.i.i.i.i605, !llvm.loop !6

_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i609: ; preds = %.lr.ph.i.i.i.i.i605, %.noexc613
  %.0.lcssa.i.i.i.i.i610 = phi ptr [ %i.rc, %.noexc613 ], [ %i.rh, %.lr.ph.i.i.i.i.i605 ]
  %i.ri = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i610, i64 24
  %.not.i38.i.i611 = icmp eq ptr %.val.i.i597, null
  br i1 %.not.i38.i.i611, label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i609
  %i.rj = load ptr, ptr %i.cs, align 8, !tbaa !49
  %i.rk = ptrtoint ptr %i.rj to i64
  %i.rl = sub i64 %i.rk, %i.qs
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i597, i64 noundef %i.rl) #34
  br label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.aw, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i609
  store ptr %i.rc, ptr %i.aw, align 8, !tbaa !48
  store ptr %i.ri, ptr %i.ay, align 8, !tbaa !443
  %i.rm = getelementptr inbounds nuw [24 x i8], ptr %i.rc, i64 %i.ra
  store ptr %i.rm, ptr %i.cs, align 8, !tbaa !49
  br label %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12emplace_backIJRS3_RS6_EEERS7_DpOT_.exit.i

.loopexit.split-lp248.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.as, %.noexc96.i, %_ZNKSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i, %_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i598, %.invoke1378
  %lpad.loopexit.split-lp1426 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp248.i

bb.ax:                                            ; preds = %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit.i
  %.not.i98.i = icmp eq ptr %.sroa.13.0287.i, %.sroa.21207.0288.i
  br i1 %.not.i98.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  store <2 x float> %i.pw, ptr %.sroa.13.0287.i, align 8, !tbaa !82
  %.sroa.8.0..sroa.13.0287.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.13.0287.i, i64 8
  store float %i.px, ptr %.sroa.8.0..sroa.13.0287.i.sroa_idx, align 8, !tbaa !82
  %i.rn = getelementptr inbounds nuw i8, ptr %.sroa.13.0287.i, i64 16
  store ptr %i.pz, ptr %i.rn, align 8, !tbaa !500
  %i.ro = getelementptr inbounds nuw i8, ptr %.sroa.13.0287.i, i64 24
  br label %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12emplace_backIJRS3_RS6_EEERS7_DpOT_.exit.i

bb.az:                                            ; preds = %bb.ax
  %i.rp = ptrtoint ptr %.sroa.21207.0288.i to i64
  %i.rq = ptrtoint ptr %.sroa.0194.0286.i to i64
  %i.rr = sub i64 %i.rp, %i.rq                    ; 4 uses
  %i.rs = icmp eq i64 %i.rr, 9223372036854775800
  br i1 %i.rs, label %.invoke1378, label %_ZNKSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i

.invoke1378:                                      ; preds = %bb.av, %bb.az
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #36
          to label %.cont unwind label %.loopexit.split-lp248.i.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke1378
  unreachable

_ZNKSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.az
  %i.rt = sdiv exact i64 %i.rr, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.rt, i64 1)
  %i.ru = add nsw i64 %.sroa.speculated.i.i.i.i, %i.rt ; 2 uses
  %i.rv = icmp ult i64 %i.ru, %i.rt
  %i.rw = call i64 @llvm.umin.i64(i64 %i.ru, i64 384307168202282325)
  %i.rx = select i1 %i.rv, i64 384307168202282325, i64 %i.rw ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.rx, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ry = mul nuw nsw i64 %i.rx, 24
  %i.rz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ry) #38
          to label %.noexc101.i unwind label %.loopexit.split-lp248.i.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc101.i:                                      ; preds = %_ZNKSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 %i.rr ; 3 uses
  store <2 x float> %i.pw, ptr %i.sa, align 8, !tbaa !82
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sa, i64 8
  store float %i.px, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !82
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 16
  store ptr %i.pz, ptr %i.sb, align 8, !tbaa !500
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.0194.0286.i, %.sroa.21207.0288.i
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit33.i.i.i, label %.lr.ph.i.i.i.i.i99.i

.lr.ph.i.i.i.i.i99.i:                             ; preds = %.noexc101.i, %.lr.ph.i.i.i.i.i99.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.sd, %.lr.ph.i.i.i.i.i99.i ], [ %i.rz, %.noexc101.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.sc, %.lr.ph.i.i.i.i.i99.i ], [ %.sroa.0194.0286.i, %.noexc101.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !alias.scope !794
  %i.sc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.sc, %.sroa.21207.0288.i
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit33.i.i.i, label %.lr.ph.i.i.i.i.i99.i, !llvm.loop !9

_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit33.i.i.i: ; preds = %.lr.ph.i.i.i.i.i99.i, %.noexc101.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.rz, %.noexc101.i ], [ %i.sd, %.lr.ph.i.i.i.i.i99.i ]
  %i.se = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24
  %.not.i34.i.i.i = icmp eq ptr %.sroa.0194.0286.i, null
  br i1 %.not.i34.i.i.i, label %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE17_M_realloc_insertIJRS3_RS6_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit33.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0194.0286.i, i64 noundef %i.rr) #34
  br label %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE17_M_realloc_insertIJRS3_RS6_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i

_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE17_M_realloc_insertIJRS3_RS6_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i: ; preds = %bb.ba, %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit33.i.i.i
  %i.sf = getelementptr inbounds nuw [24 x i8], ptr %i.rz, i64 %i.rx
  br label %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12emplace_backIJRS3_RS6_EEERS7_DpOT_.exit.i

_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12emplace_backIJRS3_RS6_EEERS7_DpOT_.exit.i: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.au, %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE17_M_realloc_insertIJRS3_RS6_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i, %bb.ay
  %.sroa.0194.1.i = phi ptr [ %.sroa.0194.0286.i, %bb.ay ], [ %i.rz, %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE17_M_realloc_insertIJRS3_RS6_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i ], [ %.sroa.0194.0286.i, %bb.au ], [ %.sroa.0194.0286.i, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 18 uses
  %.sroa.13.1.i = phi ptr [ %i.ro, %bb.ay ], [ %i.se, %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE17_M_realloc_insertIJRS3_RS6_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i ], [ %.sroa.13.0287.i, %bb.au ], [ %.sroa.13.0287.i, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 12 uses
  %.sroa.21207.1.i = phi ptr [ %.sroa.21207.0288.i, %bb.ay ], [ %i.sf, %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE17_M_realloc_insertIJRS3_RS6_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i ], [ %.sroa.21207.0288.i, %bb.au ], [ %.sroa.21207.0288.i, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 6 uses
  %i.sg = load ptr, ptr %i.jq, align 8, !tbaa !496, !noalias !792
  %.not233.i = icmp eq ptr %i.ov, %i.sg
  br i1 %.not233.i, label %._crit_edge292.i, label %bb.ar, !llvm.loop !739

"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISM_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISS_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS13_ESt8equal_toIS13_ESaIS2_IKS13_S14_EEEEUlRKSW_RKT0_E_EvSW_SW_S1G_.exit.i": ; preds = %bb.aq, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i15.i.i.i.i", %.preheader.i24.i.i.i.i, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_S1I_.exit.i.i.i.i", %"._crit_edge292._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISM_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISS_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS13_ESt8equal_toIS13_ESaIS2_IKS13_S14_EEEEUlRKSW_RKT0_E_EvSW_SW_S1G_.exit_crit_edge.i"
  %.not.i.i413.i = phi i1 [ true, %"._crit_edge292._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISM_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISS_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS13_ESt8equal_toIS13_ESaIS2_IKS13_S14_EEEEUlRKSW_RKT0_E_EvSW_SW_S1G_.exit_crit_edge.i" ], [ false, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i15.i.i.i.i" ], [ false, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_S1I_.exit.i.i.i.i" ], [ false, %.preheader.i24.i.i.i.i ], [ false, %bb.aq ] ; 2 uses
  %.sroa.21207.0.lcssa406.i = phi ptr [ %.sroa.21207.0.lcssa407.i, %"._crit_edge292._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISM_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISS_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS13_ESt8equal_toIS13_ESaIS2_IKS13_S14_EEEEUlRKSW_RKT0_E_EvSW_SW_S1G_.exit_crit_edge.i" ], [ %.sroa.21207.1.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i15.i.i.i.i" ], [ %.sroa.21207.1.i, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_S1I_.exit.i.i.i.i" ], [ %.sroa.21207.1.i, %.preheader.i24.i.i.i.i ], [ %.sroa.21207.1.i, %bb.aq ] ; 2 uses
  %.sroa.13.0.lcssa405.i = phi ptr [ %.sroa.13.0.lcssa404.i, %"._crit_edge292._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISM_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISS_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS13_ESt8equal_toIS13_ESaIS2_IKS13_S14_EEEEUlRKSW_RKT0_E_EvSW_SW_S1G_.exit_crit_edge.i" ], [ %.sroa.13.1.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i15.i.i.i.i" ], [ %.sroa.13.1.i, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_S1I_.exit.i.i.i.i" ], [ %.sroa.13.1.i, %.preheader.i24.i.i.i.i ], [ %.sroa.13.1.i, %bb.aq ] ; 2 uses
  %.sroa.0194.0.lcssa397.i = phi ptr [ %.sroa.13.0.lcssa404.i, %"._crit_edge292._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISM_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISS_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS13_ESt8equal_toIS13_ESaIS2_IKS13_S14_EEEEUlRKSW_RKT0_E_EvSW_SW_S1G_.exit_crit_edge.i" ], [ %.sroa.0194.1.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i15.i.i.i.i" ], [ %.sroa.0194.1.i, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_S1I_.exit.i.i.i.i" ], [ %.sroa.0194.1.i, %.preheader.i24.i.i.i.i ], [ %.sroa.0194.1.i, %bb.aq ] ; 6 uses
  %.0227.lcssa381395.i = phi i32 [ %.0227.lcssa381396.i, %"._crit_edge292._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISM_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISS_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS13_ESt8equal_toIS13_ESaIS2_IKS13_S14_EEEEUlRKSW_RKT0_E_EvSW_SW_S1G_.exit_crit_edge.i" ], [ %.1228.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i15.i.i.i.i" ], [ %.1228.i, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_S1I_.exit.i.i.i.i" ], [ %.1228.i, %.preheader.i24.i.i.i.i ], [ %.1228.i, %bb.aq ]
end_hunk_1
begin_hunk_2_@_ZN9ClientMap9renderMapEPN5video12IVideoDriverEi:.invoke
  %i.bga = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bgb = load ptr, ptr %22, align 8, !tbaa !64  ; 2 uses
  %i.bgc = icmp eq ptr %i.bgb, %i.bdv
  br i1 %i.bgc, label %.body445, label %.body445.sink.split

.body445.sink.split:                              ; preds = %bb.fj, %bb.fb
  %.sink1398 = phi ptr [ %i.beh, %bb.fb ], [ %i.bgb, %bb.fj ]
  %.pn204.ph = phi { ptr, i32 } [ %i.beg, %bb.fb ], [ %i.bga, %bb.fj ]
  %i.bgd = load i64, ptr %i.bdv, align 8, !tbaa !65
  %i.bge = add i64 %i.bgd, 1
  call void @_ZdlPvm(ptr noundef %.sink1398, i64 noundef %i.bge) #34
  br label %.body445

.body445:                                         ; preds = %.body445.sink.split, %bb.fj, %bb.fb
  %.pn204 = phi { ptr, i32 } [ %i.beg, %bb.fb ], [ %i.bga, %bb.fj ], [ %.pn204.ph, %.body445.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #2
  br label %.body394

bb.fk:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit461
  %i.bgf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bgg = load ptr, ptr %23, align 8, !tbaa !64  ; 2 uses
  %i.bgh = icmp eq ptr %i.bgg, %i.bet
  br i1 %i.bgh, label %.body459, label %.body459.sink.split

.body459.sink.split:                              ; preds = %bb.fk, %bb.ff
  %.sink1401 = phi ptr [ %i.bff, %bb.ff ], [ %i.bgg, %bb.fk ]
  %.pn206.ph = phi { ptr, i32 } [ %i.bfe, %bb.ff ], [ %i.bgf, %bb.fk ]
  %i.bgi = load i64, ptr %i.bet, align 8, !tbaa !65
  %i.bgj = add i64 %i.bgi, 1
  call void @_ZdlPvm(ptr noundef %.sink1401, i64 noundef %i.bgj) #34
  br label %.body459

.body459:                                         ; preds = %.body459.sink.split, %bb.fk, %bb.ff
  %.pn206 = phi { ptr, i32 } [ %i.bfe, %bb.ff ], [ %i.bgf, %bb.fk ], [ %.pn206.ph, %.body459.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #2
  br label %.body394

bb.fl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit464, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #2
  %i.bgk = invoke noundef i64 @_ZN9TimeTaker4stopEb(ptr noundef nonnull align 8 dereferenceable(50) %12, i1 noundef zeroext false)
          to label %bb.fm unwind label %bb.fn     ; 0 uses

bb.fm:                                            ; preds = %bb.fl
  %i.bgl = load ptr, ptr %12, align 8, !tbaa !64  ; 2 uses
  %i.bgm = icmp eq ptr %i.bgl, %i.apt
  br i1 %i.bgm, label %_ZN9TimeTakerD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i477

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i477: ; preds = %bb.fm
  %i.bgn = load i64, ptr %i.apt, align 8, !tbaa !65
  %i.bgo = add i64 %i.bgn, 1
  call void @_ZdlPvm(ptr noundef %i.bgl, i64 noundef %i.bgo) #34
  br label %_ZN9TimeTakerD2Ev.exit

bb.fn:                                            ; preds = %bb.fl
  %i.bgp = landingpad { ptr, i32 }
          catch ptr null
  %i.bgq = extractvalue { ptr, i32 } %i.bgp, 0
  call void @__clang_call_terminate(ptr %i.bgq) #35
  unreachable

_ZN9TimeTakerD2Ev.exit:                           ; preds = %bb.fm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i477
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #2
  %i.bgr = invoke noundef i64 @_ZN9TimeTaker4stopEb(ptr noundef nonnull align 8 dereferenceable(50) %8, i1 noundef zeroext false)
          to label %bb.fo unwind label %bb.fp     ; 0 uses

bb.fo:                                            ; preds = %_ZN9TimeTakerD2Ev.exit
  %i.bgs = load ptr, ptr %8, align 8, !tbaa !64   ; 2 uses
  %i.bgt = icmp eq ptr %i.bgs, %i.y
  br i1 %i.bgt, label %_ZN9TimeTakerD2Ev.exit483, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i480

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i480: ; preds = %bb.fo
  %i.bgu = load i64, ptr %i.y, align 8, !tbaa !65
  %i.bgv = add i64 %i.bgu, 1
  call void @_ZdlPvm(ptr noundef %i.bgs, i64 noundef %i.bgv) #34
  br label %_ZN9TimeTakerD2Ev.exit483

bb.fp:                                            ; preds = %_ZN9TimeTakerD2Ev.exit
  %i.bgw = landingpad { ptr, i32 }
          catch ptr null
  %i.bgx = extractvalue { ptr, i32 } %i.bgw, 0
  call void @__clang_call_terminate(ptr %i.bgx) #35
  unreachable

_ZN9TimeTakerD2Ev.exit483:                        ; preds = %bb.fo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i480
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #2
  %i.bgy = load ptr, ptr %7, align 8, !tbaa !64   ; 2 uses
  %i.bgz = icmp eq ptr %i.bgy, %i.g
  br i1 %i.bgz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit486, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i484

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i484: ; preds = %_ZN9TimeTakerD2Ev.exit483
  %i.bha = load i64, ptr %i.g, align 8, !tbaa !65
  %i.bhb = add i64 %i.bha, 1
  call void @_ZdlPvm(ptr noundef %i.bgy, i64 noundef %i.bhb) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit486

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit486: ; preds = %_ZN9TimeTakerD2Ev.exit483, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i484
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #2
  ret void

.body394:                                         ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, %.body367, %.body459, %.body445, %.body431, %.body417, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408, %.body353, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375, %.body314
  %.pn215.pn = phi { ptr, i32 } [ %.pn196, %.body367 ], [ %.pn190, %.body314 ], [ %.pn206, %.body459 ], [ %.pn204, %.body445 ], [ %.pn202, %.body431 ], [ %.pn200, %.body417 ], [ %.pn198, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408 ], [ %.pn194, %.body353 ], [ %.pn192, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375 ], [ %i.bax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i ], [ %lpad.loopexit.split-lp1405, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #2
  call void @_ZN9TimeTakerD2Ev(ptr noundef nonnull align 8 dead_on_return(50) dereferenceable(50) %12) #2
  br label %bb.fq

bb.fq:                                            ; preds = %.body394, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322
  %.pn215.pn.pn = phi { ptr, i32 } [ %.pn215.pn, %.body394 ], [ %i.apx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #2
  br label %.body287

.body287:                                         ; preds = %.loopexit.split-lp712.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.da, %.loopexit.split-lp248.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.i, %bb.fq, %.body268
  %.pn224.pn.pn.pn = phi { ptr, i32 } [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.i ], [ %.pn81.pn.pn.i, %.loopexit.split-lp248.i ], [ %.pn215.pn.pn, %bb.fq ], [ %.pn186, %.body268 ], [ %.pn81.pn.pn.i, %bb.da ], [ %lpad.loopexit.split-lp1504, %.loopexit.split-lp712.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #2
  call void @_ZN9TimeTakerD2Ev(ptr noundef nonnull align 8 dead_on_return(50) dereferenceable(50) %8) #2
  br label %bb.fr

bb.fr:                                            ; preds = %.body287, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255
  %.pn224.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn224.pn.pn.pn, %.body287 ], [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #2
  br label %bb.fs

bb.fs:                                            ; preds = %bb.d, %bb.fr
  %.pn224.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.v, %bb.d ], [ %.pn224.pn.pn.pn.pn, %bb.fr ]
  %i.bhc = load ptr, ptr %7, align 8, !tbaa !64   ; 2 uses
  %i.bhd = icmp eq ptr %i.bhc, %i.g
  br i1 %i.bhd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit489, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i487

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i487: ; preds = %bb.fs
  %i.bhe = load i64, ptr %i.g, align 8, !tbaa !65
  %i.bhf = add i64 %i.bhe, 1
  call void @_ZdlPvm(ptr noundef %i.bhc, i64 noundef %i.bhf) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit489

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit489: ; preds = %bb.fs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i487
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #2
  resume { ptr, i32 } %.pn224.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: uwtable
define dso_local void @_ZThn144_N9ClientMap6renderEv(ptr noundef %0) unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -144
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !108  ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c), !inline_history !843 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !58
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(64) %i.h), !inline_history !843
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !108  ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !58
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 216
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef i32 %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.l), !inline_history !843
  tail call void @_ZN9ClientMap9renderMapEPN5video12IVideoDriverEi(ptr noundef nonnull align 8 dereferenceable(656) %i.a, ptr noundef nonnull %i.g, i32 noundef %i.p)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN9ClientMap20getBlocksInViewRangeEN4core8vector3dIsEEPS2_S3_f(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(656) %0, i48 %1, ptr nofree noundef writeonly captures(none) initializes((0, 6)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 6)) %3, float noundef %4) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = fcmp nsz ugt float %4, 0.000000e+00
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !486, !nonnull !175, !align !487
  %i.d = load float, ptr %i.c, align 4, !tbaa !564
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi nsz float [ %i.d, %bb.b ], [ %4, %bb.a ]
  %.sroa.3.0.extract.shift = lshr i48 %1, 16
  %.sroa.3.0.extract.trunc = trunc i48 %.sroa.3.0.extract.shift to i16
  %.sroa.08.0.extract.trunc = trunc i48 %1 to i16
  %i.e = fptosi float %.0 to i16
  %i.f = sext i16 %.sroa.08.0.extract.trunc to i32 ; 2 uses
  %i.g = sext i16 %i.e to i32                     ; 6 uses
  %i.h = sub nsw i32 %i.f, %i.g
  %i.i = sext i16 %.sroa.3.0.extract.trunc to i32 ; 2 uses
  %i.j = ashr i48 %1, 32
  %i.k = trunc nsw i48 %i.j to i32                ; 2 uses
  %i.l = add nsw i32 %i.g, %i.f
  %i.m = sdiv i32 %i.h, 16
  %i.n = trunc nsw i32 %i.m to i16
  %i.o = add nsw i16 %i.n, -3
  store i16 %i.o, ptr %2, align 2, !tbaa !162
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.p = sub nsw i32 %i.i, %i.g
  %i.q = sub nsw i32 %i.k, %i.g
  %i.r = insertelement <2 x i32> poison, i32 %i.p, i64 0
  %i.s = insertelement <2 x i32> %i.r, i32 %i.q, i64 1
  %i.t = sdiv <2 x i32> %i.s, splat (i32 16)
  %i.u = trunc nsw <2 x i32> %i.t to <2 x i16>
  %i.v = add nsw <2 x i16> %i.u, splat (i16 -3)
  store <2 x i16> %i.v, ptr %.sroa.415.0..sroa_idx, align 2, !tbaa !162
  %i.w = sdiv i32 %i.l, 16
  %i.x = trunc nsw i32 %i.w to i16
  %i.y = add nsw i16 %i.x, 1
  store i16 %i.y, ptr %3, align 2, !tbaa !162
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.z = add nsw i32 %i.g, %i.i
  %i.aa = add nsw i32 %i.g, %i.k
  %i.ab = insertelement <2 x i32> poison, i32 %i.z, i64 0
  %i.ac = insertelement <2 x i32> %i.ab, i32 %i.aa, i64 1
  %i.ad = sdiv <2 x i32> %i.ac, splat (i32 16)
  %i.ae = trunc nsw <2 x i32> %i.ad to <2 x i16>
  %i.af = add nsw <2 x i16> %i.ae, splat (i16 1)
  store <2 x i16> %i.af, ptr %.sroa.4.0..sroa_idx, align 2, !tbaa !162
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9ClientMap14updateDrawListEv(ptr noundef nonnull align 8 dereferenceable(656) %0) local_unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %1 = alloca %"class.core::vector3d.48", align 8 ; 4 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.core::vector3d.48", align 8 ; 4 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.core::vector3d.48", align 8 ; 4 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %4 = alloca %class.ScopeProfiler, align 8       ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %struct.MeshGrid, align 2           ; 15 uses
  %7 = alloca %"class.std::map", align 8          ; 10 uses
  %8 = alloca %class.anon, align 4                ; 40 uses
  %9 = alloca %"class.std::set.514", align 8      ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.l = alloca i32, align 4                      ; 6 uses
  %12 = alloca %"class.std::queue.578", align 8   ; 19 uses
  %13 = alloca %"class.core::vector3d.48", align 8 ; 9 uses
  %14 = alloca %class.MapBlockFlags, align 8      ; 23 uses
  %15 = alloca %"class.core::vector3d.48", align 8 ; 12 uses
  %i.m = alloca i8, align 1                       ; 5 uses
  %i.n = alloca i8, align 1                       ; 5 uses
  %i.o = alloca i8, align 1                       ; 5 uses
  %i.p = alloca i16, align 2                      ; 8 uses
  %i.q = alloca i8, align 1                       ; 7 uses
  %i.r = alloca i8, align 1                       ; 5 uses
  %i.s = alloca i8, align 1                       ; 5 uses
  %16 = alloca %class.anon.591, align 8           ; 17 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #2
  %i.t = load ptr, ptr @g_profiler, align 8, !tbaa !493
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #2
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.u, ptr %5, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #2
  store i64 20, ptr %i.k, align 8, !tbaa !178
  %i.v = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.v, ptr %5, align 8, !tbaa !64
  %i.w = load i64, ptr %i.k, align 8, !tbaa !178  ; 3 uses
  store i64 %i.w, ptr %i.u, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.v, ptr noundef nonnull align 1 dereferenceable(20) @.str.12, i64 20, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !176
  %i.y = load ptr, ptr %5, align 8, !tbaa !64
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #2
  invoke void @_ZN13ScopeProfilerC1EP8ProfilerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17ScopeProfilerType13TimePrecision(ptr noundef nonnull align 8 dereferenceable(50) %4, ptr noundef %i.t, ptr noundef nonnull align 8 dereferenceable(32) %5, i8 noundef zeroext 2, i8 noundef signext 1)
          to label %bb.a unwind label %bb.k

bb.a:                                             ; preds = %.noexc
  %i.aa = load ptr, ptr %5, align 8, !tbaa !64    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.u
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.ac = load i64, ptr %i.u, align 8, !tbaa !65
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #2
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 4 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !165 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 8 uses
  %.not16.i = icmp eq ptr %i.ag, %i.ah
  br i1 %.not16.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 5 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !164
  invoke void @_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_EN9ClientMap16MapBlockComparerESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef %i.aj)
          to label %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockN9ClientMap16MapBlockComparerESaISt4pairIKS2_S4_EEE5clearEv.exit.i unwind label %bb.b

bb.b:                                             ; preds = %._crit_edge.i
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #35
  unreachable

_ZNSt3mapIN4core8vector3dIsEEP8MapBlockN9ClientMap16MapBlockComparerESaISt4pairIKS2_S4_EEE5clearEv.exit.i: ; preds = %._crit_edge.i
  store ptr null, ptr %i.ai, align 8, !tbaa !164
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !165
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  store ptr %i.ah, ptr %i.am, align 8, !tbaa !166
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 4 uses
  store i64 0, ptr %i.an, align 8, !tbaa !167
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 5 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !203 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 8 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !203 ; 2 uses
  %.not1518.i = icmp eq ptr %i.ap, %i.ar
  br i1 %.not1518.i, label %bb.c, label %.lr.ph20.i

.lr.ph.i:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.lr.ph.i
  %.sroa.012.017.i = phi ptr [ %i.ax, %.lr.ph.i ], [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.012.017.i, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !206
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 22 ; 2 uses
  %i.av = load i16, ptr %i.au, align 2, !tbaa !239
  %i.aw = add i16 %i.av, -1
  store i16 %i.aw, ptr %i.au, align 2, !tbaa !239
  %i.ax = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.012.017.i) #37 ; 2 uses
  %.not.i = icmp eq ptr %i.ax, %i.ah
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

_ZSt8_DestroyIPP8MapBlockS1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %.lr.ph20.i
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !240
  br label %bb.c

.lr.ph20.i:                                       ; preds = %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockN9ClientMap16MapBlockComparerESaISt4pairIKS2_S4_EEE5clearEv.exit.i, %.lr.ph20.i
  %.sroa.08.019.i = phi ptr [ %i.bc, %.lr.ph20.i ], [ %i.ap, %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockN9ClientMap16MapBlockComparerESaISt4pairIKS2_S4_EEE5clearEv.exit.i ] ; 2 uses
  %i.ay = load ptr, ptr %.sroa.08.019.i, align 8, !tbaa !241
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 22 ; 2 uses
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !239
  %i.bb = add i16 %i.ba, -1
  store i16 %i.bb, ptr %i.az, align 2, !tbaa !239
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.08.019.i, i64 8 ; 2 uses
  %.not15.i = icmp eq ptr %i.bc, %i.ar
  br i1 %.not15.i, label %_ZSt8_DestroyIPP8MapBlockS1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph20.i

bb.c:                                             ; preds = %_ZSt8_DestroyIPP8MapBlockS1_EvT_S3_RSaIT0_E.exit.i.i.i, %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockN9ClientMap16MapBlockComparerESaISt4pairIKS2_S4_EEE5clearEv.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 584
  store i8 0, ptr %i.bd, align 8, !tbaa !242
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %.sroa.0208.0.copyload = load <2 x float>, ptr %i.be, align 8, !tbaa !82 ; 2 uses
  %.sroa.2209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %.sroa.2209.0.copyload = load float, ptr %.sroa.2209.0..sroa_idx, align 8, !tbaa !82
  %.sroa.09.0.vec.extract.i = extractelement <2 x float> %.sroa.0208.0.copyload, i64 0 ; 2 uses
  %i.bf = fcmp nsz ogt float %.sroa.09.0.vec.extract.i, 0.000000e+00
  %i.bg = select nsz i1 %i.bf, float 5.000000e+00, float -5.000000e+00
  %i.bh = fadd nsz float %.sroa.09.0.vec.extract.i, %i.bg
  %i.bi = fdiv nsz float %i.bh, 1.000000e+01
  %i.bj = fptosi float %i.bi to i16               ; 5 uses
  %i.bk = shufflevector <2 x float> %.sroa.0208.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bl = insertelement <2 x float> %i.bk, float %.sroa.2209.0.copyload, i64 1 ; 2 uses
  %i.bm = fcmp nsz ogt <2 x float> %i.bl, zeroinitializer
  %i.bn = select <2 x i1> %i.bm, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.bo = fadd nsz <2 x float> %i.bl, %i.bn
  %i.bp = fdiv nsz <2 x float> %i.bo, splat (float 1.000000e+01)
  %i.bq = fptosi <2 x float> %i.bp to <2 x i16>   ; 5 uses
  %i.br = extractelement <2 x i16> %i.bq, i64 1
  %.sroa.12.0.insert.ext899 = zext i16 %i.br to i48
  %.sroa.12.0.insert.shift900 = shl nuw i48 %.sroa.12.0.insert.ext899, 32 ; 2 uses
  %i.bs = extractelement <2 x i16> %i.bq, i64 0   ; 2 uses
  %.sroa.11860.0.insert.ext877 = zext i16 %i.bs to i48
  %.sroa.11860.0.insert.shift878 = shl nuw nsw i48 %.sroa.11860.0.insert.ext877, 16
  %.sroa.0844.0.insert.ext857 = zext i16 %i.bj to i48
  %i.bt = or disjoint i48 %.sroa.11860.0.insert.shift878, %.sroa.0844.0.insert.ext857
  %.sroa.0844.0.insert.insert859 = or disjoint i48 %i.bt, %.sroa.12.0.insert.shift900 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 5 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !486, !nonnull !175, !align !487 ; 2 uses
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !564
  %i.bx = fptosi float %i.bw to i16
  %i.by = sext i16 %i.bj to i32                   ; 4 uses
  %i.bz = sext i16 %i.bx to i32                   ; 3 uses
  %i.ca = sub nsw i32 %i.by, %i.bz
  %i.cb = sext <2 x i16> %i.bq to <2 x i32>       ; 4 uses
  %i.cc = add nsw i32 %i.by, %i.bz
  %i.cd = sdiv i32 %i.ca, 16
  %i.ce = trunc nsw i32 %i.cd to i16
  %i.cf = add nsw i16 %i.ce, -3                   ; 4 uses
  %i.cg = insertelement <2 x i32> poison, i32 %i.bz, i64 0
  %i.ch = shufflevector <2 x i32> %i.cg, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ci = sub nsw <2 x i32> %i.cb, %i.ch
  %i.cj = sdiv <2 x i32> %i.ci, splat (i32 16)
  %i.ck = trunc nsw <2 x i32> %i.cj to <2 x i16>
  %i.cl = add nsw <2 x i16> %i.ck, splat (i16 -3) ; 5 uses
  %i.cm = sdiv i32 %i.cc, 16
  %i.cn = trunc nsw i32 %i.cm to i16
  %i.co = add nsw i16 %i.cn, 1                    ; 4 uses
  %i.cp = add nsw <2 x i32> %i.ch, %i.cb
  %i.cq = sdiv <2 x i32> %i.cp, splat (i32 16)
  %i.cr = trunc nsw <2 x i32> %i.cq to <2 x i16>
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
  %i.da = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.0844.0.insert.insert859, ptr noundef null)
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
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360

bb.k:                                             ; preds = %.noexc
  %i.eb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ec = load ptr, ptr %5, align 8, !tbaa !64    ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.u
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358: ; preds = %bb.k
  %i.ee = load i64, ptr %i.u, align 8, !tbaa !65
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.ef) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ea, %bb.j ], [ %i.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358 ], [ %i.eb, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #2
  br label %bb.fc

bb.l:                                             ; preds = %bb.d
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

bb.m:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit, %bb.i, %bb.c
  %.1271 = phi i1 [ %i.cw, %bb.c ], [ false, %bb.i ], [ %i.cw, %_ZNK14NodeDefManager3getERK7MapNode.exit ] ; 3 uses
  %i.eh = add nsw i32 %i.by, -15
  %i.ei = icmp slt i16 %i.bj, 0
  %i.ej = select i1 %i.ei, i32 %i.eh, i32 %i.by
  %i.ek = sdiv i32 %i.ej, 16                      ; 3 uses
  %i.el = add nsw <2 x i32> %i.cb, splat (i32 -15)
  %i.em = icmp slt i16 %i.bs, 0
  %i.en = icmp slt i48 %.sroa.12.0.insert.shift900, 0
  %i.eo = insertelement <2 x i1> poison, i1 %i.em, i64 0
  %i.ep = insertelement <2 x i1> %i.eo, i1 %i.en, i64 1
  %i.eq = select <2 x i1> %i.ep, <2 x i32> %i.el, <2 x i32> %i.cb
  %i.er = sdiv <2 x i32> %i.eq, splat (i32 16)    ; 4 uses
  %i.es = extractelement <2 x i32> %i.er, i64 1
  %.mask.i = and i32 %i.es, 65535
  %.sroa.3.0.insert.ext.i361 = zext nneg i32 %.mask.i to i48
  %.sroa.3.0.insert.shift.i362 = shl nuw i48 %.sroa.3.0.insert.ext.i361, 32
  %i.et = extractelement <2 x i32> %i.er, i64 0
  %i.eu = shl nsw i32 %i.et, 16
  %.sroa.2.0.insert.shift.i363 = zext i32 %i.eu to i48
  %.mask5.i = and i32 %i.ek, 65535
  %.sroa.0.0.insert.ext.i365 = zext nneg i32 %.mask5.i to i48
  %i.ev = or disjoint i48 %.sroa.3.0.insert.shift.i362, %.sroa.0.0.insert.ext.i365
  %.sroa.0.0.insert.insert.i366 = or disjoint i48 %i.ev, %.sroa.2.0.insert.shift.i363
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #2
  store i48 %.sroa.0.0.insert.insert.i366, ptr %7, align 8, !tbaa !162
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
  %i.fr = bitcast i48 %.sroa.01.0.copyload.i to <3 x i16>
  %i.fs = shufflevector <3 x i16> %i.fr, <3 x i16> poison, <2 x i32> <i32 0, i32 1>
  %i.ft = sitofp nsz <2 x i16> %i.fs to <2 x float>
  %i.fu = fmul nnan nsz <2 x float> %i.ft, splat (float 1.000000e+01)
  %i.fv = fmul nnan nsz float %i.fq, 1.000000e+01
  store <2 x float> %i.fu, ptr %i.fo, align 4, !alias.scope !850
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 3 uses
  store float %i.fv, ptr %.sroa.2.0..sroa_idx.i, align 4, !alias.scope !850
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #2
  %i.fw = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 8 uses
  store i32 0, ptr %i.fw, align 8, !tbaa !163
  %i.fx = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store ptr null, ptr %i.fx, align 8, !tbaa !164
  %i.fy = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  store ptr %i.fw, ptr %i.fy, align 8, !tbaa !165
  %i.fz = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %i.fw, ptr %i.fz, align 8, !tbaa !166
  %i.ga = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
  store i64 0, ptr %i.ga, align 8, !tbaa !167
  %i.gb = load ptr, ptr %i.bu, align 8, !tbaa !486, !nonnull !175, !align !487
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 4
  %i.gd = load i8, ptr %i.gc, align 4, !tbaa !489, !range !174, !noundef !175
  %i.ge = trunc nuw i8 %i.gd to i1
  br i1 %i.ge, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 654
  %i.gg = load i8, ptr %i.gf, align 2, !tbaa !184, !range !174, !noundef !175
  %i.gh = trunc nuw i8 %i.gg to i1
  br i1 %i.gh, label %bb.s, label %bb.bt

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.0811.0980 = load ptr, ptr %i.gi, align 8, !tbaa !243 ; 2 uses
  %.not916981 = icmp eq ptr %.sroa.0811.0980, null
  br i1 %.not916981, label %.noexc.i369, label %.lr.ph987

.lr.ph987:                                        ; preds = %bb.s
  %i.gj = sext i16 %i.cf to i32
  %i.gk = sext i16 %i.co to i32
  %i.gl = extractelement <2 x i16> %i.cl, i64 1
  %i.gm = sext i16 %i.gl to i32
  %i.gn = extractelement <2 x i16> %i.cs, i64 1
  %i.go = sext i16 %i.gn to i32
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.gq = getelementptr inbounds nuw i8, ptr %8, i64 68
  %i.gr = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.gs = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.gt = getelementptr inbounds nuw i8, ptr %8, i64 12
  %.014.ptr.1.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.gu = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.gv = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.gw = getelementptr inbounds nuw i8, ptr %8, i64 28
  %.014.ptr.2.i = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.gx = getelementptr inbounds nuw i8, ptr %8, i64 36
  %i.gy = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.gz = getelementptr inbounds nuw i8, ptr %8, i64 44
  %.014.ptr.3.i = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.ha = getelementptr inbounds nuw i8, ptr %8, i64 52
  %i.hb = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.hc = getelementptr inbounds nuw i8, ptr %8, i64 60
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 655
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 6 uses
  br label %bb.u

.noexc.i369.loopexit:                             ; preds = %.loopexit919
  %i.hf = uitofp nsz i32 %.3276 to float
  %i.hg = uitofp nsz i32 %i.hv to float
  br label %.noexc.i369

.noexc.i369:                                      ; preds = %.noexc.i369.loopexit, %bb.s
  %.0273.lcssa = phi float [ 0.000000e+00, %bb.s ], [ %i.hf, %.noexc.i369.loopexit ]
  %.0272.lcssa = phi float [ 0.000000e+00, %bb.s ], [ %i.hg, %.noexc.i369.loopexit ]
  %.0260.lcssa = phi i32 [ 0, %bb.s ], [ %.4264, %.noexc.i369.loopexit ]
  %.0249.lcssa = phi i32 [ 0, %bb.s ], [ %.4253, %.noexc.i369.loopexit ]
  %i.hh = load ptr, ptr @g_profiler, align 8, !tbaa !493
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #2
  %i.hi = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.hi, ptr %10, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #2
  store i64 22, ptr %i.j, align 8, !tbaa !178
  %i.hj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef 0)
          to label %.noexc370 unwind label %bb.bp ; 2 uses

.noexc370:                                        ; preds = %.noexc.i369
  store ptr %i.hj, ptr %10, align 8, !tbaa !64
  %i.hk = load i64, ptr %i.j, align 8, !tbaa !178 ; 3 uses
  store i64 %i.hk, ptr %i.hi, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.hj, ptr noundef nonnull align 1 dereferenceable(22) @.str.13, i64 22, i1 false)
  %i.hl = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.hk, ptr %i.hl, align 8, !tbaa !176
  %i.hm = load ptr, ptr %10, align 8, !tbaa !64
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.hk
  store i8 0, ptr %i.hn, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #2
  invoke void @_ZN8Profiler3avgERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEf(ptr noundef nonnull align 8 dereferenceable(144) %i.hh, ptr noundef nonnull align 8 dereferenceable(32) %10, float noundef %.0273.lcssa)
          to label %bb.bn unwind label %bb.bq

bb.t:                                             ; preds = %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockN9ClientMap16MapBlockComparerESaISt4pairIKS2_S4_EEED2Ev.exit
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %bb.fa

bb.u:                                             ; preds = %.lr.ph987, %.loopexit919
  %.sroa.0811.0986 = phi ptr [ %.sroa.0811.0980, %.lr.ph987 ], [ %.sroa.0811.0, %.loopexit919 ] ; 2 uses
  %.0249985 = phi i32 [ 0, %.lr.ph987 ], [ %.4253, %.loopexit919 ] ; 4 uses
  %.0260984 = phi i32 [ 0, %.lr.ph987 ], [ %.4264, %.loopexit919 ] ; 4 uses
  %.0272983 = phi i32 [ 0, %.lr.ph987 ], [ %i.hv, %.loopexit919 ]
  %.0273982 = phi i32 [ 0, %.lr.ph987 ], [ %.3276, %.loopexit919 ] ; 4 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.0811.0986, i64 16
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !256 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 72
  %.sroa.0.0.copyload.i372 = load i32, ptr %i.hr, align 8, !tbaa !162 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 32
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !602
  %i.hu = trunc i64 %i.ht to i32
  %i.hv = add i32 %.0272983, %i.hu                ; 2 uses
  %i.hw = load ptr, ptr %i.bu, align 8, !tbaa !486, !nonnull !175, !align !487
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  %i.hy = load i8, ptr %i.hx, align 4, !tbaa !489, !range !174, !noundef !175
  %i.hz = trunc nuw i8 %i.hy to i1
  br i1 %i.hz, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ia = shl i32 %.sroa.0.0.copyload.i372, 16
  %i.ib = ashr exact i32 %i.ia, 16                ; 2 uses
  %i.ic = icmp slt i32 %i.ib, %i.gj
  %i.id = icmp sgt i32 %i.ib, %i.gk
  %or.cond351 = select i1 %i.ic, i1 true, i1 %i.id
  br i1 %or.cond351, label %.loopexit919, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ie = ashr i32 %.sroa.0.0.copyload.i372, 16   ; 2 uses
  %i.if = icmp slt i32 %i.ie, %i.gm
  %i.ig = icmp sgt i32 %i.ie, %i.go
  %or.cond355 = select i1 %i.if, i1 true, i1 %i.ig
  br i1 %or.cond355, label %.loopexit919, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hq, i64 24
  %.sroa.0807.0970 = load ptr, ptr %i.ih, align 8, !tbaa !243 ; 2 uses
  %.not918971 = icmp eq ptr %.sroa.0807.0970, null
  br i1 %.not918971, label %.loopexit919, label %.lr.ph976

.lr.ph976:                                        ; preds = %bb.x, %bb.bm
  %.sroa.0807.0975 = phi ptr [ %.sroa.0807.0, %bb.bm ], [ %.sroa.0807.0970, %bb.x ] ; 2 uses
  %.1250974 = phi i32 [ %.3252, %bb.bm ], [ %.0249985, %bb.x ] ; 7 uses
  %.1261973 = phi i32 [ %.3263, %bb.bm ], [ %.0260984, %bb.x ] ; 7 uses
  %.1274972 = phi i32 [ %.2275, %bb.bm ], [ %.0273982, %bb.x ] ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.0807.0975, i64 16
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !241 ; 13 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !445 ; 4 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 10 ; 2 uses
  %.sroa.0.0.copyload.i373 = load i48, ptr %i.il, align 2, !tbaa !162 ; 4 uses
  %.sroa.0788.0.extract.trunc = trunc i48 %.sroa.0.0.copyload.i373 to i16 ; 2 uses
  %.sroa.6789.0.extract.shift = lshr i48 %.sroa.0.0.copyload.i373, 16
  %.sroa.6789.0.extract.trunc = trunc i48 %.sroa.6789.0.extract.shift to i16 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %.sroa.0.0.copyload.i374 = load i48, ptr %i.im, align 8, !tbaa !162 ; 2 uses
  %i.in = icmp ne ptr %i.ik, null                 ; 3 uses
  %.sroa.3.0.extract.shift.i377 = lshr i48 %.sroa.0.0.copyload.i374, 32
  %.sroa.3.0.extract.trunc.i378 = trunc nuw i48 %.sroa.3.0.extract.shift.i377 to i16
  %i.io = bitcast i48 %.sroa.0.0.copyload.i374 to <3 x i16>
  %i.ip = shufflevector <3 x i16> %i.io, <3 x i16> poison, <2 x i32> <i32 0, i32 1>
  %i.iq = sitofp nsz <2 x i16> %i.ip to <2 x float>
  %i.ir = sitofp nsz i16 %.sroa.3.0.extract.trunc.i378 to float
  %i.is = fmul nnan nsz <2 x float> %i.iq, splat (float 1.000000e+01)
  %i.it = fmul nnan nsz float %i.ir, 1.000000e+01
  br i1 %i.in, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph976
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ik, i64 60
  %.sroa.01.0.copyload.i379 = load <2 x float>, ptr %i.iu, align 4, !tbaa !82
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ik, i64 68
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !82
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ik, i64 56
  %i.iw = load float, ptr %i.iv, align 8, !tbaa !480
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph976, %bb.y
  %.sroa.22.0.copyload.i.pn = phi float [ %.sroa.22.0.copyload.i, %bb.y ], [ 7.500000e+01, %.lr.ph976 ]
  %.sroa.01.0.copyload.i379.pn = phi <2 x float> [ %.sroa.01.0.copyload.i379, %bb.y ], [ splat (float 7.500000e+01), %.lr.ph976 ]
  %.0280 = phi nsz float [ %i.iw, %bb.y ], [ 0.000000e+00, %.lr.ph976 ] ; 2 uses
  %.sroa.0791.0 = fadd nsz <2 x float> %i.is, %.sroa.01.0.copyload.i379.pn ; 3 uses
  %.sroa.10795.0 = fadd nsz float %i.it, %.sroa.22.0.copyload.i.pn ; 2 uses
  %i.ix = load ptr, ptr %i.bu, align 8, !tbaa !486, !nonnull !175, !align !487 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 4
  %i.iz = load i8, ptr %i.iy, align 4, !tbaa !489, !range !174, !noundef !175
  %i.ja = trunc nuw i8 %i.iz to i1                ; 2 uses
  %.pre1011 = extractelement <2 x float> %.sroa.0791.0, i64 0 ; 2 uses
  br i1 %i.ja, label %._crit_edge1010, label %bb.aa

._crit_edge1010:                                  ; preds = %bb.z
  %.pre1012 = extractelement <2 x float> %.sroa.0791.0, i64 1
  br label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.jb = load float, ptr %i.be, align 8, !tbaa !481
  %i.jc = fsub nsz float %.pre1011, %i.jb         ; 2 uses
  %.sroa.0791.4.vec.extract = extractelement <2 x float> %.sroa.0791.0, i64 1 ; 2 uses
  %i.jd = load float, ptr %i.gp, align 4, !tbaa !482
  %i.je = fsub nsz float %.sroa.0791.4.vec.extract, %i.jd ; 2 uses
  %i.jf = load float, ptr %.sroa.2209.0..sroa_idx, align 8, !tbaa !483
  %i.jg = fsub nsz float %.sroa.10795.0, %i.jf    ; 2 uses
  %i.jh = fmul nsz float %i.je, %i.je
  %i.ji = call nsz float @llvm.fmuladd.f32(float %i.jc, float %i.jc, float %i.jh)
  %i.jj = call nsz float @llvm.fmuladd.f32(float %i.jg, float %i.jg, float %i.ji)
  %i.jk = call nsz noundef float @llvm.sqrt.f32(float %i.jj)
  %i.jl = load float, ptr %i.ix, align 4, !tbaa !564
  %i.jm = call nsz float @llvm.fmuladd.f32(float %i.jl, float 1.000000e+01, float %.0280)
  %i.jn = fcmp nsz ogt float %i.jk, %i.jm
  br i1 %i.jn, label %bb.bm, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge1010, %bb.aa
  %.sroa.017.4.vec.extract.i.pre-phi = phi float [ %.pre1012, %._crit_edge1010 ], [ %.sroa.0791.4.vec.extract, %bb.aa ]
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ij, i64 40
  store float 0.000000e+00, ptr %i.jo, align 8, !tbaa !603
  %i.jp = add i32 %.1274972, 1                    ; 6 uses
  %i.jq = fadd nsz float %.0280, 3.000000e+02     ; 4 uses
  %i.jr = load float, ptr %i.fo, align 4, !tbaa !481
  %i.js = fsub nsz float %.pre1011, %i.jr         ; 4 uses
  %i.jt = load float, ptr %i.gq, align 4, !tbaa !482
  %i.ju = fsub nsz float %.sroa.017.4.vec.extract.i.pre-phi, %i.jt ; 4 uses
  %i.jv = load float, ptr %.sroa.2.0..sroa_idx.i, align 4, !tbaa !483
  %i.jw = fsub nsz float %.sroa.10795.0, %i.jv    ; 4 uses
  %i.jx = load float, ptr %8, align 4, !tbaa !481
  %i.jy = load float, ptr %i.gr, align 4, !tbaa !482
  %i.jz = fmul nsz float %i.ju, %i.jy
  %i.ka = call nsz float @llvm.fmuladd.f32(float %i.js, float %i.jx, float %i.jz)
  %i.kb = load float, ptr %i.gs, align 4, !tbaa !483
  %i.kc = call nsz noundef float @llvm.fmuladd.f32(float %i.jw, float %i.kb, float %i.ka)
  %i.kd = load float, ptr %i.gt, align 4, !tbaa !485
  %i.ke = fadd nsz float %i.kd, %i.kc
  %i.kf = fcmp nsz ogt float %i.ke, %i.jq
  br i1 %i.kf, label %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.kg = load float, ptr %.014.ptr.1.i, align 4, !tbaa !481
  %i.kh = load float, ptr %i.gu, align 4, !tbaa !482
  %i.ki = fmul nsz float %i.ju, %i.kh
  %i.kj = call nsz float @llvm.fmuladd.f32(float %i.js, float %i.kg, float %i.ki)
  %i.kk = load float, ptr %i.gv, align 4, !tbaa !483
  %i.kl = call nsz noundef float @llvm.fmuladd.f32(float %i.jw, float %i.kk, float %i.kj)
  %i.km = load float, ptr %i.gw, align 4, !tbaa !485
  %i.kn = fadd nsz float %i.km, %i.kl
  %i.ko = fcmp nsz ogt float %i.kn, %i.jq
  br i1 %i.ko, label %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.kp = load float, ptr %.014.ptr.2.i, align 4, !tbaa !481
  %i.kq = load float, ptr %i.gx, align 4, !tbaa !482
  %i.kr = fmul nsz float %i.ju, %i.kq
  %i.ks = call nsz float @llvm.fmuladd.f32(float %i.js, float %i.kp, float %i.kr)
  %i.kt = load float, ptr %i.gy, align 4, !tbaa !483
  %i.ku = call nsz noundef float @llvm.fmuladd.f32(float %i.jw, float %i.kt, float %i.ks)
  %i.kv = load float, ptr %i.gz, align 4, !tbaa !485
  %i.kw = fadd nsz float %i.kv, %i.ku
  %i.kx = fcmp nsz ogt float %i.kw, %i.jq
  br i1 %i.kx, label %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit.thread, label %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit

_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit: ; preds = %bb.ad
  %i.ky = load float, ptr %.014.ptr.3.i, align 4, !tbaa !481
  %i.kz = load float, ptr %i.ha, align 4, !tbaa !482
  %i.la = fmul nsz float %i.ju, %i.kz
  %i.lb = call nsz float @llvm.fmuladd.f32(float %i.js, float %i.ky, float %i.la)
  %i.lc = load float, ptr %i.hb, align 4, !tbaa !483
  %i.ld = call nsz noundef float @llvm.fmuladd.f32(float %i.jw, float %i.lc, float %i.lb)
  %i.le = load float, ptr %i.hc, align 4, !tbaa !485
  %i.lf = fadd nsz float %i.le, %i.ld
  %i.lg = fcmp nsz ogt float %i.lf, %i.jq
  br i1 %i.lg, label %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit.thread, label %bb.ae

_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit.thread: ; preds = %bb.ac, %bb.ab, %bb.ad, %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit
  %i.lh = add i32 %.1261973, 1
  br label %bb.bm

bb.ae:                                            ; preds = %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit
  %.not = xor i1 %i.ja, true
  %or.cond = select i1 %.not, i1 %.1271, i1 false
  br i1 %or.cond, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  %i.li = load i8, ptr %i.hd, align 1, !tbaa !185, !range !174, !noundef !175
  %i.lj = trunc nuw i8 %i.li to i1
  br i1 %i.lj, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.lk = load i16, ptr %6, align 2, !tbaa !604
  %i.ll = invoke noundef zeroext i1 @_ZN9ClientMap14isMeshOccludedEP8MapBlocktN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(656) %0, ptr noundef nonnull %i.ij, i16 noundef zeroext %i.lk, i48 %.sroa.0844.0.insert.insert859)
          to label %bb.ah unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.ll, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.lm = add i32 %.1250974, 1
  br label %bb.bm

bb.aj:                                            ; preds = %bb.ah, %bb.af, %bb.ae
  %i.ln = load i16, ptr %6, align 2, !tbaa !604   ; 5 uses
  %i.lo = icmp ugt i16 %i.ln, 1
  br i1 %i.lo, label %bb.ak, label %bb.bf

bb.ak:                                            ; preds = %bb.aj
  %i.lp = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #38
          to label %.noexc710 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc710:                                        ; preds = %bb.ak
  %.sroa.3.0.extract.shift.i398 = lshr i48 %.sroa.0.0.copyload.i373, 32
  %.sroa.3.0.extract.trunc.i399 = trunc nuw i48 %.sroa.3.0.extract.shift.i398 to i16 ; 2 uses
  %i.lq = sext i16 %.sroa.3.0.extract.trunc.i399 to i32
  %i.lr = zext i16 %i.ln to i32                   ; 4 uses
  %i.ls = add nsw i32 %i.lr, -1                   ; 3 uses
  %.lobit.i.i2.i = lshr i16 %.sroa.3.0.extract.trunc.i399, 15
  %i.lt = zext nneg i16 %.lobit.i.i2.i to i32
  %i.lu = mul nuw nsw i32 %i.ls, %i.lt
  %i.lv = sub nsw i32 %i.lq, %i.lu
  %i.lw = sdiv i32 %i.lv, %i.lr
  %i.lx = trunc i32 %i.lw to i16
  %i.ly = mul i16 %i.ln, %i.lx                    ; 4 uses
  %.sroa.3.0.insert.ext.i400 = zext i16 %i.ly to i48
  %.sroa.3.0.insert.shift.i401 = shl nuw i48 %.sroa.3.0.insert.ext.i400, 32
  %i.lz = sext i16 %.sroa.6789.0.extract.trunc to i32 ; 2 uses
  %.lobit.i.i1.i = lshr i16 %.sroa.6789.0.extract.trunc, 15
  %i.ma = zext nneg i16 %.lobit.i.i1.i to i32
  %i.mb = mul nuw nsw i32 %i.ls, %i.ma
  %i.mc = sub nsw i32 %i.lz, %i.mb
  %i.md = sdiv i32 %i.mc, %i.lr
  %i.me = trunc i32 %i.md to i16
  %i.mf = mul i16 %i.ln, %i.me                    ; 7 uses
  %.sroa.2.0.insert.ext.i402 = zext i16 %i.mf to i48
  %.sroa.2.0.insert.shift.i403 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i402, 16
  %i.mg = sext i16 %.sroa.0788.0.extract.trunc to i32 ; 2 uses
  %.lobit.i.i.i = lshr i16 %.sroa.0788.0.extract.trunc, 15
  %i.mh = zext nneg i16 %.lobit.i.i.i to i32
  %i.mi = mul nuw nsw i32 %i.ls, %i.mh
  %i.mj = sub nsw i32 %i.mg, %i.mi
  %i.mk = sdiv i32 %i.mj, %i.lr
  %i.ml = trunc i32 %i.mk to i16
  %i.mm = mul i16 %i.ln, %i.ml                    ; 7 uses
  %.sroa.0.0.insert.ext.i405 = zext i16 %i.mm to i48
  %i.mn = or disjoint i48 %.sroa.3.0.insert.shift.i401, %.sroa.0.0.insert.ext.i405
  %.sroa.0.0.insert.insert.i406 = or disjoint i48 %i.mn, %.sroa.2.0.insert.shift.i403
  %i.mo = getelementptr inbounds nuw i8, ptr %i.lp, i64 32
  store i48 %.sroa.0.0.insert.insert.i406, ptr %i.mo, align 2, !tbaa !162
  %.02126.i.i = load ptr, ptr %i.fx, align 8, !tbaa !600 ; 2 uses
  %.not27.i.i = icmp eq ptr %.02126.i.i, null
  br i1 %.not27.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc710, %.lr.ph.i.i.backedge
  %.02128.i.i = phi ptr [ %.02128.i.i.be, %.lr.ph.i.i.backedge ], [ %.02126.i.i, %.noexc710 ] ; 8 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %.02128.i.i, i64 32
  %i.mq = load i16, ptr %i.mp, align 2, !tbaa !157 ; 3 uses
  %i.mr = icmp slt i16 %i.mm, %i.mq
  br i1 %i.mr, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i.i
  %i.ms = icmp eq i16 %i.mm, %i.mq
  br i1 %i.ms, label %bb.am, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.thread.i

bb.am:                                            ; preds = %bb.al
  %i.mt = getelementptr inbounds nuw i8, ptr %.02128.i.i, i64 34
  %i.mu = load i16, ptr %i.mt, align 2, !tbaa !158 ; 2 uses
  %i.mv = icmp slt i16 %i.mf, %i.mu
  br i1 %i.mv, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i, label %bb.an
end_hunk_2
begin_hunk_3_@_ZN9ClientMap14updateDrawListEv:.noexc.i
  %.sroa.0.0.insert.insert.i457 = or disjoint i48 %.sroa.2.0.insert.insert.i455, %.sroa.0.0.insert.ext.i456
  store i48 %.sroa.0.0.insert.insert.i457, ptr %13, align 8
  %.mask.i463 = shl nsw i32 %i.sj, 6
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #2
  %i.sq = sext i16 %i.cf to i32
  %.lobit.i.i475 = lshr i16 %i.cf, 15
  %i.sr = zext nneg i16 %.lobit.i.i475 to i32
  %i.ss = mul nuw nsw i32 %i.rt, %i.sr
  %i.st = sub nsw i32 %i.sq, %i.ss
  %i.su = sdiv i32 %i.st, %i.rs
  %i.sv = sext <2 x i16> %i.cl to <2 x i32>
  %i.sw = sext i16 %i.co to i32
  %.lobit.i.i491 = lshr i16 %i.co, 15
  %i.sx = zext nneg i16 %.lobit.i.i491 to i32
  %i.sy = mul nuw nsw i32 %i.rt, %i.sx
  %i.sz = sub nsw i32 %i.sw, %i.sy
  %i.ta = sdiv i32 %i.sz, %i.rs
  %i.tb = sext <2 x i16> %i.cs to <2 x i32>
  %i.tc = extractelement <2 x i16> %i.cs, i64 0   ; 2 uses
  %.lobit.i1.i492 = lshr i16 %i.tc, 15
  %i.td = extractelement <2 x i16> %i.cs, i64 1   ; 2 uses
  %.lobit.i2.i493 = lshr i16 %i.td, 15
  %.sroa.0773.0.extract.trunc = trunc i32 %i.ta to i16
  %.sroa.021.0.extract.trunc.i = trunc i32 %i.su to i16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %14, i8 0, i64 24, i1 false)
  %i.te = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 3 uses
  store i16 %.sroa.021.0.extract.trunc.i, ptr %i.te, align 8, !tbaa !162
  %.sroa.322.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %14, i64 26 ; 3 uses
  %.sroa.4.0..sroa_idx.i513 = getelementptr inbounds nuw i8, ptr %14, i64 28
  %i.tf = lshr <2 x i16> %i.cl, splat (i16 15)
  %i.tg = zext nneg <2 x i16> %i.tf to <2 x i32>
  %i.th = mul nuw nsw <2 x i32> %i.sd, %i.tg
  %i.ti = sub nsw <2 x i32> %i.sv, %i.th
  %i.tj = sdiv <2 x i32> %i.ti, %i.sh
  %i.tk = trunc <2 x i32> %i.tj to <2 x i16>      ; 2 uses
  store <2 x i16> %i.tk, ptr %.sroa.322.0..sroa_idx.i, align 2, !tbaa !162
  %i.tl = getelementptr inbounds nuw i8, ptr %14, i64 30 ; 3 uses
  %reass.sub = sub i16 %.sroa.0773.0.extract.trunc, %.sroa.021.0.extract.trunc.i
  %i.tm = add i16 %reass.sub, 1
  %i.tn = sdiv i16 %i.tm, 8
  %i.to = zext nneg i16 %.lobit.i1.i492 to i32
  %i.tp = mul nuw nsw i32 %i.rt, %i.to
  %i.tq = zext nneg i16 %.lobit.i2.i493 to i32
  %i.tr = mul nuw nsw i32 %i.rt, %i.tq
  %i.ts = insertelement <2 x i32> poison, i32 %i.tp, i64 0
  %i.tt = insertelement <2 x i32> %i.ts, i32 %i.tr, i64 1
  %i.tu = sub nsw <2 x i32> %i.tb, %i.tt
  %i.tv = sdiv <2 x i32> %i.tu, %i.sh
  %i.tw = trunc <2 x i32> %i.tv to <2 x i16>
  %i.tx = sub <2 x i16> %i.tw, %i.tk
  %i.ty = add <2 x i16> %i.tx, splat (i16 1)
  %i.tz = sdiv <2 x i16> %i.ty, splat (i16 8)     ; 2 uses
  %i.ua = add nsw i16 %i.tn, 1                    ; 2 uses
  %i.ub = extractelement <2 x i16> %i.tz, i64 0
  %i.uc = add nsw i16 %i.ub, 1                    ; 2 uses
  %i.ud = extractelement <2 x i16> %i.tz, i64 1
  %i.ue = add nsw i16 %i.ud, 1                    ; 2 uses
  %.sroa.3.0.insert.ext.i10.i = zext i16 %i.ue to i48
  %.sroa.3.0.insert.shift.i11.i = shl nuw i48 %.sroa.3.0.insert.ext.i10.i, 32
  %.sroa.2.0.insert.ext.i12.i = zext i16 %i.uc to i48
  %.sroa.2.0.insert.shift.i13.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i12.i, 16
  %.sroa.0.0.insert.ext.i15.i = zext i16 %i.ua to i48
  %i.uf = or disjoint i48 %.sroa.3.0.insert.shift.i11.i, %.sroa.0.0.insert.ext.i15.i
  %.sroa.0.0.insert.insert.i16.i = or disjoint i48 %i.uf, %.sroa.2.0.insert.shift.i13.i
  store i48 %.sroa.0.0.insert.insert.i16.i, ptr %i.tl, align 2
  %i.ug = sext i16 %i.ua to i64
  %i.uh = sext i16 %i.uc to i64
  %i.ui = sext i16 %i.ue to i64
  %i.uj = shl nsw i64 %i.ug, 32
  %i.uk = mul nsw i64 %i.uj, %i.uh
  %sext.i = mul i64 %i.uk, %i.ui                  ; 4 uses
  %.not.i514 = icmp eq i64 %sext.i, 0
  br i1 %.not.i514, label %_ZN13MapBlockFlagsC2EN4core8vector3dIsEES2_.exit, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ul = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.un = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.uo = icmp ugt i64 %i.ul, 1152921504606846975
  br i1 %i.uo, label %bb.bw, label %_ZNKSt6vectorISt10unique_ptrIN13MapBlockFlags5ChunkESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.bw:                                            ; preds = %bb.bv
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #36
          to label %.noexc714 unwind label %bb.bx

.noexc714:                                        ; preds = %bb.bw
  unreachable

_ZNKSt6vectorISt10unique_ptrIN13MapBlockFlags5ChunkESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.bv
  %i.up = ashr exact i64 %sext.i, 29
  %i.uq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.up) #38
          to label %_ZNSt12_Vector_baseISt10unique_ptrIN13MapBlockFlags5ChunkESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit37.i unwind label %bb.bx ; 3 uses

_ZNSt12_Vector_baseISt10unique_ptrIN13MapBlockFlags5ChunkESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit37.i: ; preds = %_ZNKSt6vectorISt10unique_ptrIN13MapBlockFlags5ChunkESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.ur = ashr exact i64 %sext.i, 29
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.uq, i8 0, i64 %i.ur, i1 false), !tbaa !852
  store ptr %i.uq, ptr %14, align 8, !tbaa !608
  %i.us = getelementptr inbounds nuw [8 x i8], ptr %i.uq, i64 %i.ul ; 2 uses
  store ptr %i.us, ptr %i.um, align 8, !tbaa !609
  store ptr %i.us, ptr %i.un, align 8, !tbaa !610
  br label %_ZN13MapBlockFlagsC2EN4core8vector3dIsEES2_.exit

bb.bx:                                            ; preds = %_ZNKSt6vectorISt10unique_ptrIN13MapBlockFlags5ChunkESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i, %bb.bw
  %i.ut = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10unique_ptrIN13MapBlockFlags5ChunkESt14default_deleteIS2_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(36) %14) #2
  br label %.body

_ZN13MapBlockFlagsC2EN4core8vector3dIsEES2_.exit: ; preds = %bb.bu, %_ZNSt12_Vector_baseISt10unique_ptrIN13MapBlockFlags5ChunkESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit37.i
  %i.uu = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 5 uses
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !615 ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !616
  %i.uy = getelementptr inbounds i8, ptr %i.ux, i64 -6
  %.not.i.i = icmp eq ptr %i.uv, %i.uy
  br i1 %.not.i.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %_ZN13MapBlockFlagsC2EN4core8vector3dIsEES2_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.uv, ptr noundef nonnull align 8 dereferenceable(6) %13, i64 6, i1 false), !tbaa.struct !599
  %i.uz = load ptr, ptr %i.uu, align 8, !tbaa !615
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 6
  store ptr %i.va, ptr %i.uu, align 8, !tbaa !615
  br label %_ZNSt5queueIN4core8vector3dIsEESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit

bb.bz:                                            ; preds = %_ZN13MapBlockFlagsC2EN4core8vector3dIsEES2_.exit
  invoke void @_ZNSt5dequeIN4core8vector3dIsEESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %12, ptr noundef nonnull align 2 dereferenceable(6) %13)
          to label %_ZNSt5queueIN4core8vector3dIsEESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit unwind label %bb.cj

_ZNSt5queueIN4core8vector3dIsEESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit: ; preds = %bb.by, %bb.bz
  %i.vb = load i16, ptr %i.te, align 8, !tbaa !157
  %i.vc = sub i16 %i.ry, %i.vb
  %i.vd = sdiv i16 %i.vc, 8
  %i.ve = load <2 x i16>, ptr %.sroa.322.0..sroa_idx.i, align 2, !tbaa !162
  %i.vf = sub <2 x i16> %i.sm, %i.ve
  %i.vg = sdiv <2 x i16> %i.vf, splat (i16 8)     ; 2 uses
  %i.vh = sext i16 %i.vd to i64
  %i.vi = extractelement <2 x i16> %i.vg, i64 0
  %i.vj = sext i16 %i.vi to i64
  %i.vk = load i16, ptr %i.tl, align 2, !tbaa !621
  %i.vl = sext i16 %i.vk to i64
  %i.vm = extractelement <2 x i16> %i.vg, i64 1
  %i.vn = sext i16 %i.vm to i64
  %i.vo = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 2 uses
  %i.vp = load i16, ptr %i.vo, align 8, !tbaa !622
  %i.vq = sext i16 %i.vp to i64
  %i.vr = mul nsw i64 %i.vq, %i.vn
  %reass.add.i = add nsw i64 %i.vr, %i.vj
  %reass.mul.i = mul nsw i64 %reass.add.i, %i.vl
  %i.vs = add nsw i64 %reass.mul.i, %i.vh
  %sext.i520 = shl i64 %i.vs, 32
  %i.vt = ashr exact i64 %sext.i520, 32           ; 2 uses
  %i.vu = load ptr, ptr %14, align 8, !tbaa !608
  %i.vv = getelementptr inbounds nuw [8 x i8], ptr %i.vu, i64 %i.vt
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !623 ; 2 uses
  %.not.i521 = icmp eq ptr %i.vw, null
  br i1 %.not.i521, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %_ZNSt5queueIN4core8vector3dIsEESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit
  %i.vx = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #38
          to label %.noexc523 unwind label %bb.cj ; 4 uses

.noexc523:                                        ; preds = %bb.ca
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.vx, i8 0, i64 512, i1 false)
  %i.vy = load ptr, ptr %14, align 8, !tbaa !608
  %i.vz = getelementptr inbounds nuw [8 x i8], ptr %i.vy, i64 %i.vt ; 2 uses
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !623 ; 2 uses
  store ptr %i.vx, ptr %i.vz, align 8, !tbaa !623
  %.not.i.i.i522 = icmp eq ptr %i.wa, null
  br i1 %.not.i.i.i522, label %bb.cb, label %_ZNKSt14default_deleteIN13MapBlockFlags5ChunkEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN13MapBlockFlags5ChunkEEclEPS1_.exit.i.i.i: ; preds = %.noexc523
  call void @_ZdlPvm(ptr noundef nonnull %i.wa, i64 noundef 512) #34
  br label %bb.cb

bb.cb:                                            ; preds = %_ZNSt5queueIN4core8vector3dIsEESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit, %.noexc523, %_ZNKSt14default_deleteIN13MapBlockFlags5ChunkEEclEPS1_.exit.i.i.i
  %.0.i = phi ptr [ %i.vw, %_ZNSt5queueIN4core8vector3dIsEESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit ], [ %i.vx, %.noexc523 ], [ %i.vx, %_ZNKSt14default_deleteIN13MapBlockFlags5ChunkEEclEPS1_.exit.i.i.i ]
  %i.wb = and i32 %i.rx, 7
  %i.wc = zext nneg i32 %i.wb to i64
  %i.wd = shl nsw i32 %i.sk, 3
  %i.we = and i32 %i.wd, 56
  %i.wf = zext nneg i32 %i.we to i64
  %i.wg = and i32 %.mask.i463, 448
  %i.wh = zext nneg i32 %i.wg to i64
  %i.wi = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.wf
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 %i.wc
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 %i.wh
  store i8 7, ptr %i.wk, align 1, !tbaa !65
  %i.wl = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.wm = load ptr, ptr %i.uu, align 8, !tbaa !624
  %i.wn = load ptr, ptr %i.wl, align 8, !tbaa !624 ; 2 uses
  %i.wo = icmp eq ptr %i.wm, %i.wn
  br i1 %i.wo, label %.noexc.i653, label %.lr.ph

.lr.ph:                                           ; preds = %bb.cb
  %i.wp = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 2 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %15, i64 2 ; 3 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %15, i64 4 ; 2 uses
  %i.wu = sitofp nsz i16 %i.bj to float
  %i.wv = sitofp nsz <2 x i16> %i.bq to <2 x float>
  %i.ww = fmul nnan nsz float %i.wu, 1.000000e+01
  %i.wx = fmul nnan nsz <2 x float> %i.wv, splat (float 1.000000e+01) ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %8, i64 68
  %i.wz = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.xa = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.xb = getelementptr inbounds nuw i8, ptr %8, i64 12
  %.014.ptr.1.i605 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.xc = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.xd = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.xe = getelementptr inbounds nuw i8, ptr %8, i64 28
  %.014.ptr.2.i606 = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.xf = getelementptr inbounds nuw i8, ptr %8, i64 36
  %i.xg = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.xh = getelementptr inbounds nuw i8, ptr %8, i64 44
  %.014.ptr.3.i607 = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.xi = getelementptr inbounds nuw i8, ptr %8, i64 52
  %i.xj = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.xk = getelementptr inbounds nuw i8, ptr %8, i64 60
  %i.xl = getelementptr inbounds nuw i8, ptr %13, i64 2
  %i.xm = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.xn = getelementptr inbounds nuw i8, ptr %0, i64 655
  %i.xo = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.xp = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.xq = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.xr = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.xs = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.xt = getelementptr inbounds nuw i8, ptr %16, i64 48
  %i.xu = getelementptr inbounds nuw i8, ptr %16, i64 56
  %i.xv = getelementptr inbounds nuw i8, ptr %16, i64 64
  %i.xw = getelementptr inbounds nuw i8, ptr %16, i64 72
  %i.xx = getelementptr inbounds nuw i8, ptr %16, i64 80
  %i.xy = getelementptr inbounds nuw i8, ptr %16, i64 88
  %i.xz = extractelement <2 x float> %i.wx, i64 0
  %i.ya = extractelement <2 x float> %i.wx, i64 1
  %i.yb = extractelement <2 x i16> %i.cl, i64 0
  %i.yc = extractelement <2 x i16> %i.cl, i64 1
  br label %bb.cc

bb.cc:                                            ; preds = %.lr.ph, %bb.dz
  %i.yd = phi ptr [ %i.wn, %.lr.ph ], [ %i.aio, %bb.dz ] ; 3 uses
  %.5254967 = phi i32 [ 0, %.lr.ph ], [ %.9258, %bb.dz ] ; 5 uses
  %.5265966 = phi i32 [ 0, %.lr.ph ], [ %.8268, %bb.dz ] ; 5 uses
  %.0281965 = phi i32 [ 0, %.lr.ph ], [ %.1282, %bb.dz ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %15, ptr noundef nonnull align 2 dereferenceable(6) %i.yd, i64 6, i1 false), !tbaa.struct !599
  %i.ye = load ptr, ptr %i.wp, align 8, !tbaa !853
  %i.yf = getelementptr inbounds i8, ptr %i.ye, i64 -6
  %.not.i.i524 = icmp eq ptr %i.yd, %i.yf
  br i1 %.not.i.i524, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yd, i64 6
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cc
  %i.yh = load ptr, ptr %i.wq, align 8, !tbaa !854
  call void @_ZdlPvm(ptr noundef %i.yh, i64 noundef 510) #34
  %i.yi = load ptr, ptr %i.wr, align 8, !tbaa !625
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 8 ; 2 uses
  store ptr %i.yj, ptr %i.wr, align 8, !tbaa !626
  %i.yk = load ptr, ptr %i.yj, align 8, !tbaa !627 ; 3 uses
  store ptr %i.yk, ptr %i.wq, align 8, !tbaa !628
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 510
  store ptr %i.yl, ptr %i.wp, align 8, !tbaa !629
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %storemerge.i.i = phi ptr [ %i.yg, %bb.cd ], [ %i.yk, %bb.ce ]
  store ptr %storemerge.i.i, ptr %i.wl, align 8, !tbaa !630
  %.sroa.098.0.copyload = load i48, ptr %15, align 8, !tbaa !162 ; 3 uses
  %.sroa.0.0.extract.trunc.i525 = trunc i48 %.sroa.098.0.copyload to i16 ; 2 uses
  %.sroa.2.0.extract.shift.i526 = lshr i48 %.sroa.098.0.copyload, 16
  %.sroa.2.0.extract.trunc.i527 = trunc i48 %.sroa.2.0.extract.shift.i526 to i16 ; 2 uses
  %.sroa.3.0.extract.shift.i528 = lshr i48 %.sroa.098.0.copyload, 32
  %.sroa.3.0.extract.trunc.i529 = trunc nuw i48 %.sroa.3.0.extract.shift.i528 to i16 ; 2 uses
  %i.ym = sext i16 %.sroa.0.0.extract.trunc.i525 to i32
  %.lobit.i.i530 = lshr i16 %.sroa.0.0.extract.trunc.i525, 15
  %i.yn = zext nneg i16 %.lobit.i.i530 to i32
  %i.yo = load i16, ptr %6, align 2, !tbaa !604
  %i.yp = zext i16 %i.yo to i32                   ; 4 uses
  %i.yq = add nsw i32 %i.yp, -1                   ; 3 uses
  %i.yr = mul nuw nsw i32 %i.yq, %i.yn
  %i.ys = sub nsw i32 %i.ym, %i.yr
  %i.yt = sdiv i32 %i.ys, %i.yp                   ; 2 uses
  %i.yu = sext i16 %.sroa.2.0.extract.trunc.i527 to i32
  %.lobit.i1.i531 = lshr i16 %.sroa.2.0.extract.trunc.i527, 15
  %i.yv = zext nneg i16 %.lobit.i1.i531 to i32
  %i.yw = mul nuw nsw i32 %i.yq, %i.yv
  %i.yx = sub nsw i32 %i.yu, %i.yw
  %i.yy = sdiv i32 %i.yx, %i.yp                   ; 2 uses
  %i.yz = sext i16 %.sroa.3.0.extract.trunc.i529 to i32
  %.lobit.i2.i532 = lshr i16 %.sroa.3.0.extract.trunc.i529, 15
  %i.za = zext nneg i16 %.lobit.i2.i532 to i32
  %i.zb = mul nuw nsw i32 %i.yq, %i.za
  %i.zc = sub nsw i32 %i.yz, %i.zb
  %i.zd = sdiv i32 %i.zc, %i.yp                   ; 2 uses
  %.mask.i533 = shl nsw i32 %i.zd, 6
  %.sroa.017.0.extract.trunc.i541 = trunc i32 %i.yt to i16
  %.sroa.2.0.extract.trunc.i543 = trunc i32 %i.yy to i16
  %.sroa.3.0.extract.trunc.i545 = trunc i32 %i.zd to i16
  %i.ze = load i16, ptr %i.te, align 8, !tbaa !157
  %i.zf = sub i16 %.sroa.017.0.extract.trunc.i541, %i.ze
  %i.zg = load i16, ptr %.sroa.322.0..sroa_idx.i, align 2, !tbaa !158
  %i.zh = sub i16 %.sroa.2.0.extract.trunc.i543, %i.zg
  %i.zi = load i16, ptr %.sroa.4.0..sroa_idx.i513, align 4, !tbaa !159
  %i.zj = sub i16 %.sroa.3.0.extract.trunc.i545, %i.zi
  %i.zk = sdiv i16 %i.zf, 8
  %i.zl = sdiv i16 %i.zh, 8
  %i.zm = sdiv i16 %i.zj, 8
  %i.zn = sext i16 %i.zk to i64
  %i.zo = sext i16 %i.zl to i64
  %i.zp = load i16, ptr %i.tl, align 2, !tbaa !621
  %i.zq = sext i16 %i.zp to i64
  %i.zr = sext i16 %i.zm to i64
  %i.zs = load i16, ptr %i.vo, align 8, !tbaa !622
  %i.zt = sext i16 %i.zs to i64
  %i.zu = mul nsw i64 %i.zt, %i.zr
  %reass.add.i546 = add nsw i64 %i.zu, %i.zo
  %reass.mul.i547 = mul nsw i64 %reass.add.i546, %i.zq
  %i.zv = add nsw i64 %reass.mul.i547, %i.zn
  %sext.i548 = shl i64 %i.zv, 32
  %i.zw = ashr exact i64 %sext.i548, 32           ; 2 uses
  %i.zx = load ptr, ptr %14, align 8, !tbaa !608
  %i.zy = getelementptr inbounds nuw [8 x i8], ptr %i.zx, i64 %i.zw
  %i.zz = load ptr, ptr %i.zy, align 8, !tbaa !623 ; 2 uses
  %.not.i549 = icmp eq ptr %i.zz, null
  br i1 %.not.i549, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.aaa = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #38
          to label %.noexc553 unwind label %bb.cz ; 4 uses

.noexc553:                                        ; preds = %bb.cg
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.aaa, i8 0, i64 512, i1 false)
  %i.aab = load ptr, ptr %14, align 8, !tbaa !608
  %i.aac = getelementptr inbounds nuw [8 x i8], ptr %i.aab, i64 %i.zw ; 2 uses
  %i.aad = load ptr, ptr %i.aac, align 8, !tbaa !623 ; 2 uses
  store ptr %i.aaa, ptr %i.aac, align 8, !tbaa !623
  %.not.i.i.i551 = icmp eq ptr %i.aad, null
  br i1 %.not.i.i.i551, label %bb.ch, label %_ZNKSt14default_deleteIN13MapBlockFlags5ChunkEEclEPS1_.exit.i.i.i552

_ZNKSt14default_deleteIN13MapBlockFlags5ChunkEEclEPS1_.exit.i.i.i552: ; preds = %.noexc553
  call void @_ZdlPvm(ptr noundef nonnull %i.aad, i64 noundef 512) #34
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cf, %.noexc553, %_ZNKSt14default_deleteIN13MapBlockFlags5ChunkEEclEPS1_.exit.i.i.i552
  %.0.i550 = phi ptr [ %i.zz, %bb.cf ], [ %i.aaa, %.noexc553 ], [ %i.aaa, %_ZNKSt14default_deleteIN13MapBlockFlags5ChunkEEclEPS1_.exit.i.i.i552 ]
  %i.aae = and i32 %i.yt, 7
  %i.aaf = zext nneg i32 %i.aae to i64
  %i.aag = shl nsw i32 %i.yy, 3
  %i.aah = and i32 %i.aag, 56
  %i.aai = zext nneg i32 %i.aah to i64
  %i.aaj = and i32 %.mask.i533, 448
  %i.aak = zext nneg i32 %i.aaj to i64
  %i.aal = getelementptr inbounds nuw i8, ptr %.0.i550, i64 %i.aai
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aal, i64 %i.aaf
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 %i.aak ; 3 uses
  %i.aao = load i8, ptr %i.aan, align 1, !tbaa !65 ; 2 uses
  %.not301 = icmp sgt i8 %i.aao, -1
  br i1 %.not301, label %bb.ck, label %bb.dz, !llvm.loop !847

bb.ci:                                            ; preds = %bb.bt
  %i.aap = landingpad { ptr, i32 }
          cleanup
  br label %bb.ek

bb.cj:                                            ; preds = %bb.ca, %bb.bz
  %i.aaq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ej

bb.ck:                                            ; preds = %bb.ch
  %i.aar = or disjoint i8 %i.aao, -128
  store i8 %i.aar, ptr %i.aan, align 1, !tbaa !65
  %i.aas = add i32 %.0281965, 1                   ; 4 uses
  %.sroa.082.0.copyload = load i48, ptr %15, align 8, !tbaa !162
  %i.aat = invoke noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.082.0.copyload)
          to label %bb.cl unwind label %bb.cz     ; 7 uses

bb.cl:                                            ; preds = %bb.ck
  %i.aau = icmp ne ptr %i.aat, null               ; 3 uses
  br i1 %i.aau, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.aav = load ptr, ptr %i.aat, align 8, !tbaa !445
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.aaw = phi ptr [ %i.aav, %bb.cm ], [ null, %bb.cl ] ; 4 uses
  %i.aax = load i16, ptr %15, align 8, !tbaa !157 ; 2 uses
  %i.aay = shl i16 %i.aax, 4                      ; 2 uses
  %i.aaz = load <2 x i16>, ptr %i.ws, align 2, !tbaa !162 ; 3 uses
  %i.aba = shl <2 x i16> %i.aaz, splat (i16 4)    ; 3 uses
  %.not302 = icmp eq ptr %i.aaw, null             ; 2 uses
  %i.abb = shufflevector <2 x i16> %i.aba, <2 x i16> poison, <2 x i32> <i32 poison, i32 0>
  %i.abc = insertelement <2 x i16> %i.abb, i16 %i.aay, i64 0
  %i.abd = sitofp nsz <2 x i16> %i.abc to <2 x float>
  %i.abe = extractelement <2 x i16> %i.aba, i64 1
  %i.abf = sitofp nsz i16 %i.abe to float
  %i.abg = fmul nnan nsz <2 x float> %i.abd, splat (float 1.000000e+01)
  %i.abh = fmul nnan nsz float %i.abf, 1.000000e+01
  br i1 %.not302, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.abi = getelementptr inbounds nuw i8, ptr %i.aaw, i64 60
  %.sroa.01.0.copyload.i572 = load <2 x float>, ptr %i.abi, align 4, !tbaa !82
  %.sroa.22.0..sroa_idx.i573 = getelementptr inbounds nuw i8, ptr %i.aaw, i64 68
  %.sroa.22.0.copyload.i574 = load float, ptr %.sroa.22.0..sroa_idx.i573, align 4, !tbaa !82
  %i.abj = getelementptr inbounds nuw i8, ptr %i.aaw, i64 56
  %i.abk = load float, ptr %i.abj, align 8, !tbaa !480
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cn
  %i.abl = load i16, ptr %6, align 2, !tbaa !604  ; 2 uses
  %i.abm = zext i16 %i.abl to i32
  %i.abn = shl nuw nsw i32 %i.abm, 4
  %i.abo = uitofp nneg i32 %i.abn to float
  %i.abp = call nnan nsz float @llvm.fmuladd.f32(float %i.abo, float 5.000000e-01, float -5.000000e-01)
  %i.abq = fmul nnan nsz float %i.abp, 1.000000e+01 ; 2 uses
  %i.abr = insertelement <2 x float> poison, float %i.abq, i64 0
  %i.abs = shufflevector <2 x float> %i.abr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abt = uitofp i16 %i.abl to float
  %i.abu = fmul nnan nsz float %i.abt, 8.700000e-01
  %i.abv = fmul nnan nsz float %i.abu, 1.600000e+01
  %i.abw = fmul nnan nsz float %i.abv, 1.000000e+01
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.pn1110 = phi float [ %i.abq, %bb.cp ], [ %.sroa.22.0.copyload.i574, %bb.co ]
  %.pn1119 = phi <2 x float> [ %i.abs, %bb.cp ], [ %.sroa.01.0.copyload.i572, %bb.co ]
  %.0283 = phi nsz float [ %i.abw, %bb.cp ], [ %i.abk, %bb.co ] ; 2 uses
  %.sroa.0768.0 = fadd nsz <2 x float> %i.abg, %.pn1119 ; 2 uses
  %.sroa.10772.0 = fadd nsz float %i.abh, %.pn1110 ; 2 uses
  %.sroa.0768.0.vec.extract = extractelement <2 x float> %.sroa.0768.0, i64 0 ; 2 uses
  %i.abx = fsub nsz float %.sroa.0768.0.vec.extract, %i.ww ; 2 uses
  %.sroa.0768.4.vec.extract = extractelement <2 x float> %.sroa.0768.0, i64 1 ; 2 uses
  %i.aby = fsub nsz float %.sroa.0768.4.vec.extract, %i.xz ; 2 uses
  %i.abz = fsub nsz float %.sroa.10772.0, %i.ya   ; 2 uses
  %i.aca = fmul nsz float %i.aby, %i.aby
  %i.acb = call nsz float @llvm.fmuladd.f32(float %i.abx, float %i.abx, float %i.aca)
  %i.acc = call nsz float @llvm.fmuladd.f32(float %i.abz, float %i.abz, float %i.acb)
  %i.acd = call nsz noundef float @llvm.sqrt.f32(float %i.acc)
  %i.ace = load ptr, ptr %i.bu, align 8, !tbaa !486, !nonnull !175, !align !487
  %i.acf = load float, ptr %i.ace, align 4, !tbaa !564
  %i.acg = call nsz float @llvm.fmuladd.f32(float %i.acf, float 1.000000e+01, float %.0283)
  %i.ach = fcmp nsz ogt float %i.acd, %i.acg
  br i1 %i.ach, label %bb.dz, label %bb.cr, !llvm.loop !847

bb.cr:                                            ; preds = %bb.cq
  %i.aci = fadd nsz float %.0283, 3.000000e+02    ; 4 uses
  %i.acj = load float, ptr %i.fo, align 4, !tbaa !481
  %i.ack = fsub nsz float %.sroa.0768.0.vec.extract, %i.acj ; 4 uses
  %i.acl = load float, ptr %i.wy, align 4, !tbaa !482
  %i.acm = fsub nsz float %.sroa.0768.4.vec.extract, %i.acl ; 4 uses
  %i.acn = load float, ptr %.sroa.2.0..sroa_idx.i, align 4, !tbaa !483
  %i.aco = fsub nsz float %.sroa.10772.0, %i.acn  ; 4 uses
  %i.acp = load float, ptr %8, align 4, !tbaa !481
  %i.acq = load float, ptr %i.wz, align 4, !tbaa !482
  %i.acr = fmul nsz float %i.acm, %i.acq
  %i.acs = call nsz float @llvm.fmuladd.f32(float %i.ack, float %i.acp, float %i.acr)
  %i.act = load float, ptr %i.xa, align 4, !tbaa !483
  %i.acu = call nsz noundef float @llvm.fmuladd.f32(float %i.aco, float %i.act, float %i.acs)
  %i.acv = load float, ptr %i.xb, align 4, !tbaa !485
  %i.acw = fadd nsz float %i.acv, %i.acu
  %i.acx = fcmp nsz ogt float %i.acw, %i.aci
  br i1 %i.acx, label %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit609.thread, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.acy = load float, ptr %.014.ptr.1.i605, align 4, !tbaa !481
  %i.acz = load float, ptr %i.xc, align 4, !tbaa !482
  %i.ada = fmul nsz float %i.acm, %i.acz
  %i.adb = call nsz float @llvm.fmuladd.f32(float %i.ack, float %i.acy, float %i.ada)
  %i.adc = load float, ptr %i.xd, align 4, !tbaa !483
  %i.add = call nsz noundef float @llvm.fmuladd.f32(float %i.aco, float %i.adc, float %i.adb)
  %i.ade = load float, ptr %i.xe, align 4, !tbaa !485
  %i.adf = fadd nsz float %i.ade, %i.add
  %i.adg = fcmp nsz ogt float %i.adf, %i.aci
  br i1 %i.adg, label %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit609.thread, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.adh = load float, ptr %.014.ptr.2.i606, align 4, !tbaa !481
  %i.adi = load float, ptr %i.xf, align 4, !tbaa !482
  %i.adj = fmul nsz float %i.acm, %i.adi
  %i.adk = call nsz float @llvm.fmuladd.f32(float %i.ack, float %i.adh, float %i.adj)
  %i.adl = load float, ptr %i.xg, align 4, !tbaa !483
  %i.adm = call nsz noundef float @llvm.fmuladd.f32(float %i.aco, float %i.adl, float %i.adk)
  %i.adn = load float, ptr %i.xh, align 4, !tbaa !485
  %i.ado = fadd nsz float %i.adn, %i.adm
  %i.adp = fcmp nsz ogt float %i.ado, %i.aci
  br i1 %i.adp, label %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit609.thread, label %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit609

_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit609: ; preds = %bb.ct
  %i.adq = load float, ptr %.014.ptr.3.i607, align 4, !tbaa !481
  %i.adr = load float, ptr %i.xi, align 4, !tbaa !482
  %i.ads = fmul nsz float %i.acm, %i.adr
  %i.adt = call nsz float @llvm.fmuladd.f32(float %i.ack, float %i.adq, float %i.ads)
  %i.adu = load float, ptr %i.xj, align 4, !tbaa !483
  %i.adv = call nsz noundef float @llvm.fmuladd.f32(float %i.aco, float %i.adu, float %i.adt)
  %i.adw = load float, ptr %i.xk, align 4, !tbaa !485
  %i.adx = fadd nsz float %i.adw, %i.adv
  %i.ady = fcmp nsz ogt float %i.adx, %i.aci
  br i1 %i.ady, label %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit609.thread, label %bb.cu

_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit609.thread: ; preds = %bb.cs, %bb.cr, %bb.ct, %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit609
  %i.adz = add i32 %.5265966, 1
  br label %bb.dz, !llvm.loop !847

bb.cu:                                            ; preds = %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit609
  %i.aea = load i16, ptr %13, align 8, !tbaa !157
  %i.aeb = sub i16 %i.aax, %i.aea                 ; 4 uses
  %i.aec = load i16, ptr %i.xl, align 2, !tbaa !158
  %i.aed = extractelement <2 x i16> %i.aaz, i64 0
  %i.aee = sub i16 %i.aed, %i.aec                 ; 4 uses
  %i.aef = load i16, ptr %i.xm, align 4, !tbaa !159
  %i.aeg = extractelement <2 x i16> %i.aaz, i64 1
  %i.aeh = sub i16 %i.aeg, %i.aef                 ; 4 uses
  %i.aei = load i8, ptr %i.aan, align 1, !tbaa !65 ; 2 uses
  br i1 %.1271, label %bb.cv, label %bb.da

bb.cv:                                            ; preds = %bb.cu
  %i.aej = and i8 %i.aei, 7
  %i.aek = load i8, ptr %i.xn, align 1, !tbaa !185, !range !174, !noundef !175
  %i.ael = trunc nuw i8 %i.aek to i1
  %or.cond9 = and i1 %i.aau, %i.ael
  %i.aem = icmp ne i8 %i.aej, 7
  %or.cond12 = select i1 %or.cond9, i1 %i.aem, i1 false
  br i1 %or.cond12, label %bb.cw, label %bb.da

bb.cw:                                            ; preds = %bb.cv
  %i.aen = load i16, ptr %6, align 2, !tbaa !604
  %i.aeo = invoke noundef zeroext i1 @_ZN9ClientMap14isMeshOccludedEP8MapBlocktN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(656) %0, ptr noundef nonnull %i.aat, i16 noundef zeroext %i.aen, i48 %.sroa.0844.0.insert.insert859)
          to label %bb.cx unwind label %bb.cz

bb.cx:                                            ; preds = %bb.cw
  br i1 %i.aeo, label %bb.cy, label %bb.da

bb.cy:                                            ; preds = %bb.cx
  %i.aep = add i32 %.5254967, 1
  br label %bb.dz, !llvm.loop !847

bb.cz:                                            ; preds = %bb.ck, %bb.cg, %bb.db, %bb.cw
  %i.aeq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

bb.da:                                            ; preds = %bb.cx, %bb.cv, %bb.cu
  br i1 %.not302, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.aat, ptr %i.g, align 8, !tbaa !241
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aat, i64 22 ; 2 uses
  %i.aes = load i16, ptr %i.aer, align 2, !tbaa !239
  %i.aet = add i16 %i.aes, 1
  store i16 %i.aet, ptr %i.aer, align 2, !tbaa !239
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #2
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aat, i64 10
  %.sroa.0.0.copyload.i.i617 = load i48, ptr %i.aeu, align 2, !tbaa !162
  store i48 %.sroa.0.0.copyload.i.i617, ptr %2, align 8
  %i.aev = invoke { ptr, i8 } @_ZNSt3mapIN4core8vector3dIsEEP8MapBlockN9ClientMap16MapBlockComparerESaISt4pairIKS2_S4_EEE7emplaceIJS2_RS4_EEES7_ISt17_Rb_tree_iteratorIS9_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull align 2 dereferenceable(6) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %"_ZZN9ClientMap14updateDrawListEvENK3$_0clEP8MapBlock.exit619" unwind label %bb.cz ; 0 uses

"_ZZN9ClientMap14updateDrawListEvENK3$_0clEP8MapBlock.exit619": ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.dc

bb.dc:                                            ; preds = %"_ZZN9ClientMap14updateDrawListEvENK3$_0clEP8MapBlock.exit619", %bb.da
  %i.aew = icmp eq i16 %i.aeb, 0
  %i.aex = select i1 %i.aew, i8 3, i8 0
  %i.aey = icmp eq i16 %i.aee, 0
  %i.aez = select i1 %i.aey, i8 12, i8 0
  %i.afa = or disjoint i8 %i.aez, %i.aex
  %i.afb = icmp eq i16 %i.aeh, 0
  %i.afc = select i1 %i.afb, i8 48, i8 0
  %i.afd = or disjoint i8 %i.afa, %i.afc          ; 2 uses
  %i.afe = icmp sgt i16 %i.aeb, 0
  %i.aff = select i1 %i.afe, i8 1, i8 2
  %i.afg = icmp sgt i16 %i.aee, 0
  %i.afh = select i1 %i.afg, i8 4, i8 8
  %i.afi = or disjoint i8 %i.afh, %i.aff
  %i.afj = icmp sgt i16 %i.aeh, 0
  %i.afk = select i1 %i.afj, i8 16, i8 32
  %i.afl = or disjoint i8 %i.afi, %i.afk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #2
  %or.cond14 = and i1 %.1271, %i.aau
  br i1 %or.cond14, label %bb.dd, label %._crit_edge1009

bb.dd:                                            ; preds = %bb.dc
  %i.afm = getelementptr inbounds nuw i8, ptr %i.aat, i64 8
  %i.afn = load i8, ptr %i.afm, align 8, !tbaa !855
  %i.afo = xor i8 %i.afn, -1
  br label %._crit_edge1009

._crit_edge1009:                                  ; preds = %bb.dc, %bb.dd
  %i.afp = phi i8 [ %i.afo, %bb.dd ], [ 63, %bb.dc ] ; 2 uses
  store i8 %i.afp, ptr %i.m, align 1, !tbaa !65
end_hunk_3
begin_hunk_4_@_ZN9ClientMap14touchMapBlocksEv:bb.a
  %i.c = alloca i64, align 8                      ; 5 uses
  %1 = alloca %class.ScopeProfiler, align 8       ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !486, !nonnull !175, !align !487
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i8, ptr %i.f, align 4, !tbaa !489, !range !174, !noundef !175
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 654
  %i.j = load i8, ptr %i.i, align 2, !range !174
  %i.k = trunc nuw i8 %i.j to i1
  %or.cond = select i1 %i.h, i1 true, i1 %i.k
  br i1 %or.cond, label %bb.q, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #2
  %i.l = load ptr, ptr @g_profiler, align 8, !tbaa !493
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #2
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.m, ptr %2, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #2
  store i64 20, ptr %i.c, align 8, !tbaa !178
  %i.n = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc unwind label %bb.c     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.n, ptr %2, align 8, !tbaa !64
  %i.o = load i64, ptr %i.c, align 8, !tbaa !178  ; 3 uses
  store i64 %i.o, ptr %i.m, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.n, ptr noundef nonnull align 1 dereferenceable(20) @.str.20, i64 20, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !176
  %i.q = load ptr, ptr %2, align 8, !tbaa !64
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #2
  invoke void @_ZN13ScopeProfilerC1EP8ProfilerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17ScopeProfilerType13TimePrecision(ptr noundef nonnull align 8 dereferenceable(50) %1, ptr noundef %i.l, ptr noundef nonnull align 8 dereferenceable(32) %2, i8 noundef zeroext 2, i8 noundef signext 1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %.noexc
  %i.s = load ptr, ptr %2, align 8, !tbaa !64     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.m
  br i1 %i.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.u = load i64, ptr %i.m, align 8, !tbaa !65
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #34
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #2
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %.sroa.256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 424
  %.sroa.256.0.copyload = load float, ptr %.sroa.256.0..sroa_idx, align 8, !tbaa !82 ; 2 uses
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !486, !nonnull !175, !align !487 ; 2 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !564 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.0162.0177 = load ptr, ptr %i.z, align 8, !tbaa !243 ; 2 uses
  %.not171178 = icmp eq ptr %.sroa.0162.0177, null
  br i1 %.not171178, label %.noexc.i107, label %.lr.ph182

.lr.ph182:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.aa = load <2 x float>, ptr %i.w, align 8
  %i.ab = insertelement <2 x float> %i.aa, float %.sroa.256.0.copyload, i64 1 ; 2 uses
  %i.ac = fcmp nsz ogt <2 x float> %i.ab, zeroinitializer
  %i.ad = select <2 x i1> %i.ac, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.ae = fadd nsz <2 x float> %i.ab, %i.ad
  %i.af = fdiv nsz <2 x float> %i.ae, splat (float 1.000000e+01)
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ah = fptosi <4 x float> %i.ag to <4 x i16>
  %i.ai = sext <4 x i16> %i.ah to <4 x i32>       ; 2 uses
  %i.aj = fptosi float %i.y to i16
  %i.ak = sext i16 %i.aj to i32
  %i.al = insertelement <4 x i32> poison, i32 %i.ak, i64 0
  %i.am = shufflevector <4 x i32> %i.al, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.an = sub nsw <4 x i32> %i.ai, %i.am
  %i.ao = add nsw <4 x i32> %i.am, %i.ai
  %i.ap = shufflevector <4 x i32> %i.an, <4 x i32> %i.ao, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aq = sdiv <4 x i32> %i.ap, splat (i32 16)
  %i.ar = add nsw <4 x i32> %i.aq, <i32 -3, i32 -3, i32 1, i32 1> ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.at = load i8, ptr %i.as, align 4, !tbaa !489, !range !174, !noundef !175
  %i.au = trunc nuw i8 %i.at to i1
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.aw = extractelement <4 x i32> %i.ar, i64 0
  %i.ax = extractelement <4 x i32> %i.ar, i64 1
  %i.ay = extractelement <4 x i32> %i.ar, i64 2
  %i.az = extractelement <4 x i32> %i.ar, i64 3
  br label %bb.e

.noexc.i107.loopexit:                             ; preds = %.loopexit
  %i.ba = uitofp nsz i32 %.375 to float
  %i.bb = uitofp nsz i32 %i.bv to float
  br label %.noexc.i107

.noexc.i107:                                      ; preds = %.noexc.i107.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %.072.lcssa = phi float [ 0.000000e+00, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ %i.ba, %.noexc.i107.loopexit ]
  %.071.lcssa = phi float [ 0.000000e+00, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ %i.bb, %.noexc.i107.loopexit ]
  %i.bc = load ptr, ptr @g_profiler, align 8, !tbaa !493
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #2
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.bd, ptr %3, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #2
  store i64 22, ptr %i.b, align 8, !tbaa !178
  %i.be = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc108 unwind label %bb.r  ; 2 uses

.noexc108:                                        ; preds = %.noexc.i107
  store ptr %i.be, ptr %3, align 8, !tbaa !64
  %i.bf = load i64, ptr %i.b, align 8, !tbaa !178 ; 3 uses
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.be, ptr noundef nonnull align 1 dereferenceable(22) @.str.13, i64 22, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !176
  %i.bh = load ptr, ptr %3, align 8, !tbaa !64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bf
  store i8 0, ptr %i.bi, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #2
  invoke void @_ZN8Profiler3avgERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEf(ptr noundef nonnull align 8 dereferenceable(144) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %3, float noundef %.072.lcssa)
          to label %bb.o unwind label %bb.s

bb.c:                                             ; preds = %.noexc.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

bb.d:                                             ; preds = %.noexc
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bl = load ptr, ptr %2, align 8, !tbaa !64    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.m
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110: ; preds = %bb.d
  %i.bn = load i64, ptr %i.m, align 8, !tbaa !65
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110, %bb.c
  %.pn = phi { ptr, i32 } [ %i.bj, %bb.c ], [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110 ], [ %i.bk, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #2
  br label %bb.w

bb.e:                                             ; preds = %.lr.ph182, %.loopexit
  %.sroa.0162.0181 = phi ptr [ %.sroa.0162.0177, %.lr.ph182 ], [ %.sroa.0162.0, %.loopexit ] ; 2 uses
  %.071180 = phi i32 [ 0, %.lr.ph182 ], [ %i.bv, %.loopexit ]
  %.072179 = phi i32 [ 0, %.lr.ph182 ], [ %.375, %.loopexit ] ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0162.0181, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !256 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 72
  %.sroa.0.0.copyload.i = load i32, ptr %i.br, align 8, !tbaa !162 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !602
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = add i32 %.071180, %i.bu                 ; 2 uses
  br i1 %i.au, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bw = shl i32 %.sroa.0.0.copyload.i, 16
  %i.bx = ashr exact i32 %i.bw, 16                ; 2 uses
  %i.by = icmp slt i32 %i.bx, %i.aw
  %i.bz = icmp sgt i32 %i.bx, %i.ay
  %or.cond101 = select i1 %i.by, i1 true, i1 %i.bz
  br i1 %or.cond101, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ca = ashr i32 %.sroa.0.0.copyload.i, 16      ; 2 uses
  %i.cb = icmp slt i32 %i.ca, %i.ax
  %i.cc = icmp sgt i32 %i.ca, %i.az
  %or.cond105 = select i1 %i.cb, i1 true, i1 %i.cc
  br i1 %or.cond105, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %.sroa.0158.0173 = load ptr, ptr %i.cd, align 8, !tbaa !243 ; 2 uses
  %.not172174 = icmp eq ptr %.sroa.0158.0173, null
  br i1 %.not172174, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.ce = load float, ptr %i.w, align 8, !tbaa !481
  %i.cf = load float, ptr %i.av, align 4, !tbaa !482
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.n
  %.sroa.0158.0176 = phi ptr [ %.sroa.0158.0173, %.lr.ph ], [ %.sroa.0158.0, %bb.n ] ; 2 uses
  %.173175 = phi i32 [ %.072179, %.lr.ph ], [ %.274, %bb.n ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0158.0176, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !241 ; 3 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !445 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %.sroa.0.0.copyload.i113 = load i48, ptr %i.cj, align 8, !tbaa !162 ; 2 uses
  %.not = icmp eq ptr %i.ci, null
  %.sroa.3.0.extract.shift.i121 = lshr i48 %.sroa.0.0.copyload.i113, 32
  %.sroa.3.0.extract.trunc.i122 = trunc nuw i48 %.sroa.3.0.extract.shift.i121 to i16
  %i.ck = bitcast i48 %.sroa.0.0.copyload.i113 to <3 x i16>
  %i.cl = shufflevector <3 x i16> %i.ck, <3 x i16> poison, <2 x i32> <i32 0, i32 1>
  %i.cm = sitofp nsz <2 x i16> %i.cl to <2 x float>
  %i.cn = sitofp nsz i16 %.sroa.3.0.extract.trunc.i122 to float
  %i.co = fmul nnan nsz <2 x float> %i.cm, splat (float 1.000000e+01) ; 2 uses
  %i.cp = fmul nnan nsz float %i.cn, 1.000000e+01 ; 2 uses
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ci, i64 60
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.cq, align 4, !tbaa !82
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 68
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !82
  %i.cr = fadd nsz <2 x float> %i.co, %.sroa.01.0.copyload.i
  %i.cs = fadd nsz float %i.cp, %.sroa.22.0.copyload.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ci, i64 56
  %i.cu = load float, ptr %i.ct, align 8, !tbaa !480
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.cv = fadd nsz <2 x float> %i.co, splat (float 7.500000e+01)
  %i.cw = fadd nsz float %i.cp, 7.500000e+01
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.sroa.9.0 = phi nsz float [ %i.cw, %bb.k ], [ %i.cs, %bb.j ]
  %.sroa.0154.0 = phi nsz <2 x float> [ %i.cv, %bb.k ], [ %i.cr, %bb.j ] ; 2 uses
  %.078 = phi nsz float [ 0.000000e+00, %bb.k ], [ %i.cu, %bb.j ]
  %.sroa.0154.0.vec.extract = extractelement <2 x float> %.sroa.0154.0, i64 0
  %i.cx = fsub nsz float %.sroa.0154.0.vec.extract, %i.ce ; 2 uses
  %.sroa.0154.4.vec.extract = extractelement <2 x float> %.sroa.0154.0, i64 1
  %i.cy = fsub nsz float %.sroa.0154.4.vec.extract, %i.cf ; 2 uses
  %i.cz = fsub nsz float %.sroa.9.0, %.sroa.256.0.copyload ; 2 uses
  %i.da = fmul nsz float %i.cy, %i.cy
  %i.db = call nsz float @llvm.fmuladd.f32(float %i.cx, float %i.cx, float %i.da)
  %i.dc = call nsz float @llvm.fmuladd.f32(float %i.cz, float %i.cz, float %i.db)
  %i.dd = call nsz noundef float @llvm.sqrt.f32(float %i.dc)
  %i.de = call nsz float @llvm.fmuladd.f32(float %i.y, float 1.000000e+01, float %.078)
  %i.df = fcmp nsz ogt float %i.dd, %i.de
  br i1 %i.df, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  store float 0.000000e+00, ptr %i.dg, align 8, !tbaa !603
  %i.dh = add i32 %.173175, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.274 = phi i32 [ %i.dh, %bb.m ], [ %.173175, %bb.l ] ; 2 uses
  %.sroa.0158.0 = load ptr, ptr %.sroa.0158.0176, align 8, !tbaa !243 ; 2 uses
  %.not172 = icmp eq ptr %.sroa.0158.0, null
  br i1 %.not172, label %.loopexit, label %bb.i

.loopexit:                                        ; preds = %bb.n, %bb.h, %bb.f, %bb.g
  %.375 = phi i32 [ %.072179, %bb.f ], [ %.072179, %bb.g ], [ %.072179, %bb.h ], [ %.274, %bb.n ] ; 2 uses
  %.sroa.0162.0 = load ptr, ptr %.sroa.0162.0181, align 8, !tbaa !243 ; 2 uses
  %.not171 = icmp eq ptr %.sroa.0162.0, null
  br i1 %.not171, label %.noexc.i107.loopexit, label %bb.e

bb.o:                                             ; preds = %.noexc108
  %i.di = load ptr, ptr %3, align 8, !tbaa !64    ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.bd
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131: ; preds = %bb.o
  %i.dk = load i64, ptr %i.bd, align 8, !tbaa !65
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #2
  %i.dm = load ptr, ptr @g_profiler, align 8, !tbaa !493
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #2
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.dn, ptr %4, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #2
  store i64 20, ptr %i.a, align 8, !tbaa !178
  %i.do = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc136 unwind label %bb.t  ; 2 uses

.noexc136:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133
  store ptr %i.do, ptr %4, align 8, !tbaa !64
  %i.dp = load i64, ptr %i.a, align 8, !tbaa !178 ; 3 uses
  store i64 %i.dp, ptr %i.dn, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.do, ptr noundef nonnull align 1 dereferenceable(20) @.str.14, i64 20, i1 false)
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !176
  %i.dr = load ptr, ptr %4, align 8, !tbaa !64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dp
  store i8 0, ptr %i.ds, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #2
  invoke void @_ZN8Profiler3avgERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEf(ptr noundef nonnull align 8 dereferenceable(144) %i.dm, ptr noundef nonnull align 8 dereferenceable(32) %4, float noundef %.071.lcssa)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %.noexc136
  %i.dt = load ptr, ptr %4, align 8, !tbaa !64    ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.dn
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %bb.p
  %i.dv = load i64, ptr %i.dn, align 8, !tbaa !65
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #2
  call void @_ZN13ScopeProfiler4stopEv(ptr noundef nonnull align 8 dereferenceable(50) %1) #2
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !64 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ea = icmp eq ptr %i.dy, %i.dz
  br i1 %i.ea, label %_ZN13ScopeProfilerD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140
  %i.eb = load i64, ptr %i.dz, align 8, !tbaa !65
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.ec) #34
  br label %_ZN13ScopeProfilerD2Ev.exit

_ZN13ScopeProfilerD2Ev.exit:                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #2
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %_ZN13ScopeProfilerD2Ev.exit
  ret void

bb.r:                                             ; preds = %.noexc.i107
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

bb.s:                                             ; preds = %.noexc108
  %i.ee = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ef = load ptr, ptr %3, align 8, !tbaa !64    ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.bd
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141: ; preds = %bb.s
  %i.eh = load i64, ptr %i.bd, align 8, !tbaa !65
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ei) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141, %bb.r
  %.pn83 = phi { ptr, i32 } [ %i.ed, %bb.r ], [ %i.ee, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141 ], [ %i.ee, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #2
  br label %bb.v

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

bb.u:                                             ; preds = %.noexc136
  %i.ek = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.el = load ptr, ptr %4, align 8, !tbaa !64    ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.dn
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %bb.u
  %i.en = load i64, ptr %i.dn, align 8, !tbaa !65
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.eo) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144, %bb.t
  %.pn85 = phi { ptr, i32 } [ %i.ej, %bb.t ], [ %i.ek, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144 ], [ %i.ek, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #2
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143
  %.pn91.pn.pn.pn = phi { ptr, i32 } [ %.pn83, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143 ], [ %.pn85, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146 ]
  call void @_ZN13ScopeProfilerD2Ev(ptr noundef nonnull align 8 dead_on_return(50) dereferenceable(50) %1) #2
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112
  %.pn91.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn91.pn.pn.pn, %bb.v ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #2
  resume { ptr, i32 } %.pn91.pn.pn.pn.pn
}

declare noundef i32 @_ZN6Client13getCrackLevelEv(ptr noundef nonnull align 8 dereferenceable(1674)) local_unnamed_addr #7

declare noundef i32 @_ZN11Environment16getDayNightRatioEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9ClientMap28updateTransparentMeshBuffersEv(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(656) %0) local_unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %1 = alloca %class.ScopeProfiler, align 8       ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #2
  %i.d = load ptr, ptr @g_profiler, align 8, !tbaa !493
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #2
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #2
  store i64 32, ptr %i.c, align 8, !tbaa !178
  %i.f = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.f, ptr %2, align 8, !tbaa !64
  %i.g = load i64, ptr %i.c, align 8, !tbaa !178  ; 3 uses
  store i64 %i.g, ptr %i.e, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.f, ptr noundef nonnull align 1 dereferenceable(32) @.str.43, i64 32, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.g, ptr %i.h, align 8, !tbaa !176
  %i.i = load ptr, ptr %2, align 8, !tbaa !64
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g
  store i8 0, ptr %i.j, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #2
  invoke void @_ZN13ScopeProfilerC1EP8ProfilerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17ScopeProfilerType13TimePrecision(ptr noundef nonnull align 8 dereferenceable(50) %1, ptr noundef %i.d, ptr noundef nonnull align 8 dereferenceable(32) %2, i8 noundef zeroext 2, i8 noundef signext 1)
          to label %bb.a unwind label %bb.g

bb.a:                                             ; preds = %.noexc
  %i.k = load ptr, ptr %2, align 8, !tbaa !64     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.e
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.m = load i64, ptr %i.e, align 8, !tbaa !65
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #2
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.p = load i16, ptr %i.o, align 4, !tbaa !183
  %.fr = freeze i16 %i.p                          ; 2 uses
  %i.q = uitofp i16 %.fr to float
  %i.r = fmul nnan nsz float %i.q, 1.000000e+01
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !165  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 3 uses
  %.not109112 = icmp eq ptr %i.t, %i.u
  br i1 %.not109112, label %.noexc.i71, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.not108 = icmp eq i16 %.fr, 0
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 651
  br i1 %.not108, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.e
  %.050114.us = phi i32 [ %.353.us, %bb.e ], [ 0, %.lr.ph ] ; 3 uses
  %.sroa.0104.0113.us = phi ptr [ %i.al, %bb.e ], [ %i.t, %.lr.ph ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0104.0113.us, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !206
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !445 ; 4 uses
  %.not.us = icmp eq ptr %i.ac, null
  br i1 %.not.us, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.ad = load i8, ptr %i.v, align 8, !tbaa !161, !range !174, !noundef !175
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %.thread.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 224
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 232
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !876
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !877
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %.thread.us, label %bb.e

.thread.us:                                       ; preds = %bb.c, %bb.b
  invoke void @_ZN12MapBlockMesh29consolidateTransparentBuffersEv(ptr noundef nonnull align 8 dereferenceable(249) %i.ac)
          to label %bb.d unwind label %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %.thread.us
  %i.ak = add i32 %.050114.us, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.lr.ph.split.us
  %.353.us = phi i32 [ %.050114.us, %.lr.ph.split.us ], [ %.050114.us, %bb.c ], [ %i.ak, %bb.d ] ; 2 uses
  %i.al = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0104.0113.us) #37 ; 2 uses
  %.not109.us = icmp eq ptr %i.al, %i.u
  br i1 %.not109.us, label %.noexc.i71, label %.lr.ph.split.us, !llvm.loop !875

.noexc.i71.loopexit119:                           ; preds = %bb.n
  %i.am = uitofp nsz i32 %.349 to float
  br label %.noexc.i71

.noexc.i71:                                       ; preds = %bb.e, %.noexc.i71.loopexit119, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.050.lcssa = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.353, %.noexc.i71.loopexit119 ], [ %.353.us, %bb.e ]
  %.046.lcssa = phi float [ 0.000000e+00, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.am, %.noexc.i71.loopexit119 ], [ 0.000000e+00, %bb.e ]
  %i.an = load ptr, ptr @g_profiler, align 8, !tbaa !493
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #2
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.ao, ptr %3, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #2
  store i64 32, ptr %i.b, align 8, !tbaa !178
  %i.ap = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc72 unwind label %bb.q   ; 2 uses

.noexc72:                                         ; preds = %.noexc.i71
  store ptr %i.ap, ptr %3, align 8, !tbaa !64
  %i.aq = load i64, ptr %i.b, align 8, !tbaa !178 ; 3 uses
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ap, ptr noundef nonnull align 1 dereferenceable(32) @.str.44, i64 32, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !176
  %i.as = load ptr, ptr %3, align 8, !tbaa !64
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  store i8 0, ptr %i.at, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #2
  invoke void @_ZN8Profiler3avgERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEf(ptr noundef nonnull align 8 dereferenceable(144) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %3, float noundef %.046.lcssa)
          to label %bb.o unwind label %bb.r

bb.f:                                             ; preds = %.noexc.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

bb.g:                                             ; preds = %.noexc
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = load ptr, ptr %2, align 8, !tbaa !64    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.e
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %bb.g
  %i.ay = load i64, ptr %i.e, align 8, !tbaa !65
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74, %bb.f
  %.pn = phi { ptr, i32 } [ %i.au, %bb.f ], [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74 ], [ %i.av, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #2
  br label %bb.u

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.n
  %.046115 = phi i32 [ %.349, %bb.n ], [ 0, %.lr.ph ] ; 4 uses
  %.050114 = phi i32 [ %.353, %bb.n ], [ 0, %.lr.ph ] ; 4 uses
  %.sroa.0104.0113 = phi ptr [ %i.co, %bb.n ], [ %i.t, %.lr.ph ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0104.0113, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !206 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !445 ; 8 uses
  %.not = icmp eq ptr %i.bc, null
  br i1 %.not, label %bb.n, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split
  %i.bd = load i8, ptr %i.v, align 8, !tbaa !161, !range !174, !noundef !175
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 224
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 232
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !876
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !877
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %.sroa.0.0.copyload.i = load i48, ptr %i.bk, align 8, !tbaa !162 ; 2 uses
  %.sroa.3.0.extract.shift.i = lshr i48 %.sroa.0.0.copyload.i, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i48 %.sroa.3.0.extract.shift.i to i16
  %i.bl = sitofp nsz i16 %.sroa.3.0.extract.trunc.i to float
  %i.bm = fmul nnan nsz float %i.bl, 1.000000e+01
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bc, i64 60
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.bn, align 4, !tbaa !82
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 68
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !82
  %i.bo = bitcast i48 %.sroa.0.0.copyload.i to <3 x i16>
  %i.bp = shufflevector <3 x i16> %i.bo, <3 x i16> poison, <2 x i32> <i32 0, i32 1>
  %i.bq = sitofp nsz <2 x i16> %i.bp to <2 x float>
  %i.br = fmul nnan nsz <2 x float> %i.bq, splat (float 1.000000e+01)
  %i.bs = fadd nsz <2 x float> %.sroa.01.0.copyload.i, %i.br ; 2 uses
  %i.bt = fadd nsz float %.sroa.22.0.copyload.i, %i.bm
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  %i.bv = load float, ptr %i.bu, align 8, !tbaa !480
  %i.bw = load float, ptr %i.w, align 8, !tbaa !481
  %i.bx = extractelement <2 x float> %i.bs, i64 0
  %i.by = fsub nsz float %i.bw, %i.bx             ; 2 uses
  %i.bz = load float, ptr %i.x, align 4, !tbaa !482
  %i.ca = extractelement <2 x float> %i.bs, i64 1
  %i.cb = fsub nsz float %i.bz, %i.ca             ; 2 uses
  %i.cc = load float, ptr %i.y, align 8, !tbaa !483 ; 2 uses
  %i.cd = fsub nsz float %i.cc, %i.bt             ; 2 uses
  %i.ce = fmul nsz float %i.cb, %i.cb
  %i.cf = call nsz float @llvm.fmuladd.f32(float %i.by, float %i.by, float %i.ce)
  %i.cg = call nsz noundef float @llvm.fmuladd.f32(float %i.cd, float %i.cd, float %i.cf)
  %i.ch = fadd nsz float %i.r, %i.bv              ; 2 uses
  %square = fmul nsz float %i.ch, %i.ch
  %i.ci = fcmp nsz ule float %i.cg, %square
  br i1 %i.ci, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %.sroa.03.0.copyload = load <2 x float>, ptr %i.w, align 8, !tbaa !82
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bb, i64 10
  %.sroa.0.0.copyload.i79 = load i48, ptr %i.cj, align 2, !tbaa !162
  %i.ck = load i8, ptr %i.z, align 1, !tbaa !182, !range !174, !noundef !175
  %i.cl = trunc nuw i8 %i.ck to i1
  invoke void @_ZN12MapBlockMesh24updateTransparentBuffersEN4core8vector3dIfEENS1_IsEEb(ptr noundef nonnull align 8 dereferenceable(249) %i.bc, <2 x float> %.sroa.03.0.copyload, float %i.cc, i48 %.sroa.0.0.copyload.i79, i1 noundef zeroext %i.cl)
          to label %bb.l unwind label %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %bb.k
  %i.cm = add i32 %.046115, 1
  br label %bb.n

.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.thread.us, %bb.k, %.thread
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.split

.thread:                                          ; preds = %bb.j
  invoke void @_ZN12MapBlockMesh29consolidateTransparentBuffersEv(ptr noundef nonnull align 8 dereferenceable(249) %i.bc)
          to label %bb.m unwind label %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %.thread
  %i.cn = add i32 %.050114, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.i, %bb.m, %bb.l, %.lr.ph.split
  %.353 = phi i32 [ %.050114, %.lr.ph.split ], [ %.050114, %bb.i ], [ %.050114, %bb.l ], [ %i.cn, %bb.m ] ; 2 uses
  %.349 = phi i32 [ %.046115, %.lr.ph.split ], [ %.046115, %bb.i ], [ %i.cm, %bb.l ], [ %.046115, %bb.m ] ; 2 uses
  %i.co = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0104.0113) #37 ; 2 uses
  %.not109 = icmp eq ptr %i.co, %i.u
  br i1 %.not109, label %.noexc.i71.loopexit119, label %.lr.ph.split, !llvm.loop !875

bb.o:                                             ; preds = %.noexc72
  %i.cp = load ptr, ptr %3, align 8, !tbaa !64    ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.ao
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %bb.o
  %i.cr = load i64, ptr %i.ao, align 8, !tbaa !65
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #2
  %i.ct = load ptr, ptr @g_profiler, align 8, !tbaa !493
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #2
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.cu, ptr %4, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #2
  store i64 34, ptr %i.a, align 8, !tbaa !178
  %i.cv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc86 unwind label %bb.s   ; 3 uses

.noexc86:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83
  store ptr %i.cv, ptr %4, align 8, !tbaa !64
  %i.cw = load i64, ptr %i.a, align 8, !tbaa !178 ; 3 uses
  store i64 %i.cw, ptr %i.cu, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(34) %i.cv, ptr noundef nonnull align 1 dereferenceable(34) @.str.45, i64 34, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !176
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cw
  store i8 0, ptr %i.cy, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #2
  %i.cz = uitofp nsz i32 %.050.lcssa to float
  invoke void @_ZN8Profiler3avgERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEf(ptr noundef nonnull align 8 dereferenceable(144) %i.ct, ptr noundef nonnull align 8 dereferenceable(32) %4, float noundef %i.cz)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %.noexc86
  %i.da = load ptr, ptr %4, align 8, !tbaa !64    ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.cu
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %bb.p
  %i.dc = load i64, ptr %i.cu, align 8, !tbaa !65
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #2
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 456
  store i8 0, ptr %i.de, align 8, !tbaa !161
  call void @_ZN13ScopeProfiler4stopEv(ptr noundef nonnull align 8 dereferenceable(50) %1) #2
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !64 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.di = icmp eq ptr %i.dg, %i.dh
  br i1 %i.di, label %_ZN13ScopeProfilerD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90
  %i.dj = load i64, ptr %i.dh, align 8, !tbaa !65
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dk) #34
  br label %_ZN13ScopeProfilerD2Ev.exit

_ZN13ScopeProfilerD2Ev.exit:                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #2
  ret void

bb.q:                                             ; preds = %.noexc.i71
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

bb.r:                                             ; preds = %.noexc72
  %i.dm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dn = load ptr, ptr %3, align 8, !tbaa !64    ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.ao
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %bb.r
  %i.dp = load i64, ptr %i.ao, align 8, !tbaa !65
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dq) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91, %bb.q
  %.pn58 = phi { ptr, i32 } [ %i.dl, %bb.q ], [ %i.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %i.dm, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #2
  br label %.split

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

bb.t:                                             ; preds = %.noexc86
  %i.ds = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dt = load ptr, ptr %4, align 8, !tbaa !64    ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.cu
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %bb.t
  %i.dv = load i64, ptr %i.cu, align 8, !tbaa !65
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94, %bb.s
  %.pn60 = phi { ptr, i32 } [ %i.dr, %bb.s ], [ %i.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94 ], [ %i.ds, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #2
  br label %.split

.split:                                           ; preds = %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93
  %.pn66.pn = phi { ptr, i32 } [ %.pn58, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ], [ %.pn60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96 ], [ %lpad.loopexit.split-lp, %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN13ScopeProfilerD2Ev(ptr noundef nonnull align 8 dead_on_return(50) dereferenceable(50) %1) #2
  br label %bb.u

bb.u:                                             ; preds = %.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %.pn66.pn.pn = phi { ptr, i32 } [ %.pn66.pn, %.split ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #2
  resume { ptr, i32 } %.pn66.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_115MeshBufListMaps5clearEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !638  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt13unordered_mapIN5video9SMaterialESt6vectorISt4pairIN4core8vector3dIsEEPN5scene11IMeshBufferEESaISA_EESt4hashIS1_ESt8equal_toIS1_ESaIS3_IKS1_SC_EEE5clearEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.noexc.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.noexc.i.i ], [ %i.b, %bb.a ] ; 8 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !243 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 136
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !640  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIN4core8vector3dIsEEPN5scene11IMeshBufferEESaIS7_EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 152
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !641
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
end_hunk_4
begin_hunk_5_@_ZN9ClientMap22invalidateMapBlockMeshEP12MapBlockMesh:bb.a
"_ZZN9ClientMap22invalidateMapBlockMeshEP12MapBlockMeshENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit": ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_RKT0_.exit.i
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.039.0133, i64 40 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !51 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.039.0133, i64 48 ; 3 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !51 ; 2 uses
  %.not7.i = icmp eq ptr %i.dh, %i.dj
  br i1 %.not7.i, label %_ZN16CachedMeshBuffer4dropEv.exit, label %.lr.ph.i33

._crit_edge.i:                                    ; preds = %_ZNK17IReferenceCounted4dropEv.exit.i
  %.pre.i = load ptr, ptr %i.dg, align 8, !tbaa !53 ; 2 uses
  %.pre9.i = load ptr, ptr %i.di, align 8, !tbaa !54
  %i.dk = icmp eq ptr %.pre9.i, %.pre.i
  br i1 %i.dk, label %_ZN16CachedMeshBuffer4dropEv.exit, label %_ZSt8_DestroyIPPN5scene11IMeshBufferES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPPN5scene11IMeshBufferES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %._crit_edge.i
  store ptr %.pre.i, ptr %i.di, align 8, !tbaa !54
  br label %_ZN16CachedMeshBuffer4dropEv.exit

.lr.ph.i33:                                       ; preds = %"_ZZN9ClientMap22invalidateMapBlockMeshEP12MapBlockMeshENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit", %_ZNK17IReferenceCounted4dropEv.exit.i
  %.sroa.04.08.i = phi ptr [ %i.dw, %_ZNK17IReferenceCounted4dropEv.exit.i ], [ %i.dh, %"_ZZN9ClientMap22invalidateMapBlockMeshEP12MapBlockMeshENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit" ] ; 2 uses
  %i.dl = load ptr, ptr %.sroa.04.08.i, align 8, !tbaa !56 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !58
  %i.dn = getelementptr i8, ptr %i.dm, i64 -24
  %i.do = load i64, ptr %i.dn, align 8
  %i.dp = getelementptr inbounds i8, ptr %i.dl, i64 %i.do ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !60
  %i.ds = add nsw i32 %i.dr, -1                   ; 2 uses
  store i32 %i.ds, ptr %i.dq, align 8, !tbaa !60
  %.not.i.i = icmp eq i32 %i.ds, 0
  br i1 %.not.i.i, label %bb.w, label %_ZNK17IReferenceCounted4dropEv.exit.i

bb.w:                                             ; preds = %.lr.ph.i33
  %i.dt = load ptr, ptr %i.dp, align 8, !tbaa !58
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(12) %i.dp) #2, !inline_history !3
  br label %_ZNK17IReferenceCounted4dropEv.exit.i

_ZNK17IReferenceCounted4dropEv.exit.i:            ; preds = %bb.w, %.lr.ph.i33
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 8 ; 2 uses
  %.not.i34 = icmp eq ptr %i.dw, %i.dj
  br i1 %.not.i34, label %._crit_edge.i, label %.lr.ph.i33

_ZN16CachedMeshBuffer4dropEv.exit:                ; preds = %_ZSt8_DestroyIPPN5scene11IMeshBufferES2_EvT_S4_RSaIT0_E.exit.i.i.i, %._crit_edge.i, %"_ZZN9ClientMap22invalidateMapBlockMeshEP12MapBlockMeshENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit"
  %i.dx = load i64, ptr %i.bx, align 8, !tbaa !169
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.039.0133, i64 72
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !254
  %i.ea = urem i64 %i.dz, %i.dx                   ; 2 uses
  %i.eb = load ptr, ptr %i.bo, align 8, !tbaa !168
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.ea
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !252
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %_ZN16CachedMeshBuffer4dropEv.exit
  %.0.i.i.i.i = phi ptr [ %i.ed, %_ZN16CachedMeshBuffer4dropEv.exit ], [ %i.ee, %bb.x ] ; 2 uses
  %i.ee = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !243 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ee, %.sroa.039.0133
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16CachedMeshBufferESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5eraseENSB_14_Node_iteratorIS9_Lb0ELb1EEE.exit.i, label %bb.x, !llvm.loop !17

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16CachedMeshBufferESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5eraseENSB_14_Node_iteratorIS9_Lb0ELb1EEE.exit.i: ; preds = %bb.x
  %i.ef = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16CachedMeshBufferESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseEmPNSB_15_Hash_node_baseEPNSB_10_Hash_nodeIS9_Lb1EEE(ptr noundef nonnull align 8 dereferenceable(56) %i.bo, i64 noundef %i.ea, ptr noundef nonnull %.0.i.i.i.i, ptr noundef nonnull %.sroa.039.0133)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEE5eraseENSt8__detail14_Node_iteratorISD_Lb0ELb1EEE.exit unwind label %bb.y

bb.y:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16CachedMeshBufferESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5eraseENSB_14_Node_iteratorIS9_Lb0ELb1EEE.exit.i
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit71

.loopexit:                                        ; preds = %.lr.ph.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_RKT0_.exit.thread.i, %bb.n
  %i.eh = load ptr, ptr %.sroa.039.0133, align 8, !tbaa !243
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEE5eraseENSt8__detail14_Node_iteratorISD_Lb0ELb1EEE.exit

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEE5eraseENSt8__detail14_Node_iteratorISD_Lb0ELb1EEE.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16CachedMeshBufferESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5eraseENSB_14_Node_iteratorIS9_Lb0ELb1EEE.exit.i, %.loopexit
  %.sroa.039.1 = phi ptr [ %i.eh, %.loopexit ], [ %i.ef, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16CachedMeshBufferESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5eraseENSB_14_Node_iteratorIS9_Lb0ELb1EEE.exit.i ] ; 2 uses
  %.not68 = icmp eq ptr %.sroa.039.1, null
  br i1 %.not68, label %.loopexit69, label %bb.n, !llvm.loop !891

.loopexit69:                                      ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEE5eraseENSt8__detail14_Node_iteratorISD_Lb0ELb1EEE.exit, %bb.m, %._crit_edge.1
  %.not.i.i.i36 = icmp eq ptr %.sroa.0.1.lcssa.1, null
  br i1 %.not.i.i.i36, label %_ZNSt6vectorIPvSaIS0_EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %.loopexit69
  %i.ei = ptrtoint ptr %.sroa.16.1.lcssa.1 to i64
  %i.ej = ptrtoint ptr %.sroa.0.1.lcssa.1 to i64
  %i.ek = sub i64 %i.ei, %i.ej
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1.lcssa.1, i64 noundef %i.ek) #34
  br label %_ZNSt6vectorIPvSaIS0_EED2Ev.exit

_ZNSt6vectorIPvSaIS0_EED2Ev.exit:                 ; preds = %.loopexit69, %bb.z
  call void @_ZNSt5arrayISt13unordered_mapIN5video9SMaterialESt6vectorISt4pairIN4core8vector3dIsEEPN5scene11IMeshBufferEESaISB_EESt4hashIS2_ESt8equal_toIS2_ESaIS4_IKS2_SD_EEELm2EED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %2) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #2
  ret void

.loopexit71:                                      ; preds = %.loopexit71.loopexit, %.loopexit71.loopexit.split-lp, %.loopexit.split-lp, %bb.y
  %.sroa.0.3 = phi ptr [ %.sroa.0.1.lcssa.1, %bb.y ], [ %.sroa.0.2100.lcssa, %.loopexit.split-lp ], [ %.sroa.0.2100, %.loopexit71.loopexit ], [ %.sroa.0.2100.1, %.loopexit71.loopexit.split-lp ] ; 3 uses
  %.sroa.16.3 = phi ptr [ %.sroa.16.1.lcssa.1, %bb.y ], [ %.sroa.16.2102.lcssa, %.loopexit.split-lp ], [ %.sroa.16.2102, %.loopexit71.loopexit ], [ %.sroa.16.2102.1, %.loopexit71.loopexit.split-lp ]
  %.pn25 = phi { ptr, i32 } [ %i.eg, %bb.y ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit148, %.loopexit71.loopexit ], [ %lpad.loopexit.split-lp149, %.loopexit71.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i37 = icmp eq ptr %.sroa.0.3, null
  br i1 %.not.i.i.i37, label %_ZNSt6vectorIPvSaIS0_EED2Ev.exit38, label %bb.aa

bb.aa:                                            ; preds = %.loopexit71
  %i.el = ptrtoint ptr %.sroa.16.3 to i64
  %i.em = ptrtoint ptr %.sroa.0.3 to i64
  %i.en = sub i64 %i.el, %i.em
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.3, i64 noundef %i.en) #34
  br label %_ZNSt6vectorIPvSaIS0_EED2Ev.exit38

_ZNSt6vectorIPvSaIS0_EED2Ev.exit38:               ; preds = %bb.aa, %.loopexit71, %bb.d
  %.pn25.pn = phi { ptr, i32 } [ %i.t, %bb.d ], [ %.pn25, %.loopexit71 ], [ %.pn25, %bb.aa ]
  call void @_ZNSt5arrayISt13unordered_mapIN5video9SMaterialESt6vectorISt4pairIN4core8vector3dIsEEPN5scene11IMeshBufferEESaISB_EESt4hashIS2_ESt8equal_toIS2_ESaIS4_IKS2_SD_EEELm2EED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %2) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #2
  resume { ptr, i32 } %.pn25.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9ClientMap23getBackgroundBrightnessEfjiPb(ptr noundef nonnull align 8 dereferenceable(656) %0, float noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %class.ScopeProfiler, align 8       ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.core::vector3d", align 4    ; 6 uses
  %8 = alloca %"class.core::CMatrix4", align 8    ; 16 uses
  %9 = alloca %"class.core::vector3d", align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #2
  %i.b = load ptr, ptr @g_profiler, align 8, !tbaa !493
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #2
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.c, ptr %6, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #2
  store i64 27, ptr %i.a, align 8, !tbaa !178
  %i.d = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.b     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.d, ptr %6, align 8, !tbaa !64
  %i.e = load i64, ptr %i.a, align 8, !tbaa !178  ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.d, ptr noundef nonnull align 1 dereferenceable(27) @.str.33, i64 27, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !176
  %i.g = load ptr, ptr %6, align 8, !tbaa !64
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.e
  store i8 0, ptr %i.h, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #2
  invoke void @_ZN13ScopeProfilerC1EP8ProfilerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17ScopeProfilerType13TimePrecision(ptr noundef nonnull align 8 dereferenceable(50) %5, ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(32) %6, i8 noundef zeroext 2, i8 noundef signext 1)
          to label %bb.a unwind label %bb.c

bb.a:                                             ; preds = %.noexc
  %i.i = load ptr, ptr %6, align 8, !tbaa !64     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.c
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.c, align 8, !tbaa !65
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #2
  %i.m = load float, ptr @_ZZN9ClientMap23getBackgroundBrightnessEfjiPbE12z_directions, align 16, !tbaa !481
  %i.n = fcmp nsz olt float %i.m, -9.900000e+01
  br i1 %i.n, label %.preheader, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i

bb.b:                                             ; preds = %.noexc.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

bb.c:                                             ; preds = %.noexc
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %6, align 8, !tbaa !64     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !tbaa !65
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103, %bb.b
  %.pn = phi { ptr, i32 } [ %i.o, %bb.b ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103 ], [ %i.p, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #2
  br label %bb.aj

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %i.u = invoke noundef i32 @_Z12myrand_rangeii(i32 noundef -100, i32 noundef 100)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %.preheader
  %i.v = invoke noundef i32 @_Z12myrand_rangeii(i32 noundef -100, i32 noundef 100)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.w = insertelement <2 x i32> poison, i32 %i.u, i64 0
  %i.x = insertelement <2 x i32> %i.w, i32 %i.v, i64 1
  %i.y = sitofp nsz <2 x i32> %i.x to <2 x double>
  %i.z = fmul nnan nsz <2 x double> %i.y, <double 2.000000e-02, double 1.000000e-02>
  %i.aa = fptrunc nsz <2 x double> %i.z to <2 x float> ; 3 uses
  %i.ab = extractelement <2 x float> %i.aa, i64 0 ; 2 uses
  %i.ac = call nsz float @llvm.fmuladd.f32(float %i.ab, float %i.ab, float 1.000000e+00)
  %i.ad = extractelement <2 x float> %i.aa, i64 1 ; 2 uses
  %i.ae = call nsz float @llvm.fmuladd.f32(float %i.ad, float %i.ad, float %i.ac)
  %i.af = fpext nsz float %i.ae to double
  %i.ag = call nsz double @llvm.sqrt.f64(double %i.af)
  %i.ah = fdiv nsz double 1.000000e+00, %i.ag     ; 2 uses
  %i.ai = fpext nnan nsz <2 x float> %i.aa to <2 x double>
  %i.aj = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.ak = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.al = fmul nsz <2 x double> %i.ak, %i.ai      ; 2 uses
  %i.am = extractelement <2 x double> %i.al, i64 1
  %i.an = fptrunc nsz double %i.am to float
  %i.ao = getelementptr inbounds nuw [12 x i8], ptr @_ZZN9ClientMap23getBackgroundBrightnessEfjiPbE12z_directions, i64 %indvars.iv ; 2 uses
  %i.ap = insertelement <2 x double> %i.al, double %i.ah, i64 1
  %i.aq = fptrunc nsz <2 x double> %i.ap to <2 x float>
  store <2 x float> %i.aq, ptr %i.ao, align 4, !tbaa !82
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store float %i.an, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !82
  %i.ar = invoke noundef i32 @_Z12myrand_rangeii(i32 noundef 0, i32 noundef 100)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.as = sitofp nsz i32 %i.ar to double
  %i.at = fmul nnan nsz double %i.as, 1.000000e-02
  %i.au = fptrunc nsz double %i.at to float
  %i.av = getelementptr inbounds nuw [4 x i8], ptr @_ZZN9ClientMap23getBackgroundBrightnessEfjiPbE9z_offsets, i64 %indvars.iv
  store float %i.au, ptr %i.av, align 4, !tbaa !82
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 50
  br i1 %exitcond.not, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, label %.preheader, !llvm.loop !893

bb.g:                                             ; preds = %.preheader, %bb.d, %bb.e
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit118

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ax = fpext nsz float %1 to double            ; 2 uses
  %i.ay = fmul nsz double %i.ax, 8.000000e-01
  %i.az = fptrunc nsz double %i.ay to float       ; 2 uses
  %i.ba = fcmp nsz ogt float %i.az, 3.500000e+02
  %spec.store.select = select i1 %i.ba, float 3.500000e+02, float %i.az
  %i.bb = invoke noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #38
          to label %_ZNSt6vectorIiSaIiEE7reserveEm.exit unwind label %bb.z ; 3 uses

_ZNSt6vectorIiSaIiEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 200
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 60
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 36
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.bq = fcmp nsz ogt float %1, 3.500000e+02
  %i.br = fdiv nnan nsz float %1, 3.500000e+01
  %i.bs = fmul nnan nsz float %i.br, 1.500000e+00
  %.085 = select nsz i1 %i.bq, float %i.bs, float 1.500000e+01 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 3 uses
  %i.bv = sub i32 1000, %2                        ; 2 uses
  %i.bw = insertelement <2 x float> poison, float %.085, i64 0
  %i.bx = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit, %bb.w
  %indvars.iv214 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %indvars.iv.next215, %bb.w ] ; 3 uses
  %.074194 = phi i32 [ 0, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %spec.select146.ph, %bb.w ] ; 2 uses
  %.sroa.24.0192 = phi ptr [ %i.bc, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %.sroa.24.1.ph, %bb.w ] ; 5 uses
  %.sroa.15.0191 = phi ptr [ %i.bb, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %.sroa.15.1.ph, %bb.w ] ; 4 uses
  %.sroa.0122.0190 = phi ptr [ %i.bb, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %.sroa.0122.1.ph, %bb.w ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #2
  %i.by = getelementptr inbounds nuw [12 x i8], ptr @_ZZN9ClientMap23getBackgroundBrightnessEfjiPbE12z_directions, i64 %indvars.iv214
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(12) %i.by, i64 12, i1 false), !tbaa.struct !501
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.bd, i8 0, i64 56, i1 false)
  store float 1.000000e+00, ptr %i.be, align 4, !tbaa !82
  store float 1.000000e+00, ptr %i.bf, align 8, !tbaa !82
  store float 1.000000e+00, ptr %i.bg, align 4, !tbaa !82
  store float 1.000000e+00, ptr %8, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #2
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %9, align 8, !tbaa !82
  store float 0.000000e+00, ptr %i.bh, align 8, !tbaa !483
  %i.bz = invoke noundef nonnull align 4 dereferenceable(64) ptr @_ZN4core8CMatrix4IfE17buildRotateFromToERKNS_8vector3dIfEES5_(ptr noundef nonnull align 4 dereferenceable(64) %8, ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %7)
          to label %bb.i unwind label %bb.p       ; 0 uses

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #2
  %i.ca = load <2 x float>, ptr %8, align 8
  %i.cb = load <2 x float>, ptr %i.bk, align 8
  %i.cc = load <2 x float>, ptr %i.bm, align 8
  %i.cd = load float, ptr %i.bd, align 4, !tbaa !82
  %i.ce = load float, ptr %i.bg, align 4, !tbaa !82
  %i.cf = load float, ptr %i.bn, align 4, !tbaa !82
  %i.cg = load float, ptr %i.bo, align 8, !tbaa !82
  %i.ch = load float, ptr %i.bp, align 8, !tbaa !82
  %i.ci = load float, ptr %i.bf, align 8, !tbaa !82
  %i.cj = load float, ptr %i.bi, align 4, !tbaa !481 ; 2 uses
  %i.ck = load float, ptr %i.bj, align 8, !tbaa !482 ; 2 uses
  %i.cl = load float, ptr %i.bl, align 4, !tbaa !483 ; 2 uses
  %i.cm = fmul nsz float %i.ck, %i.ce
  %i.cn = call nsz float @llvm.fmuladd.f32(float %i.cj, float %i.cd, float %i.cm)
  %i.co = call nsz float @llvm.fmuladd.f32(float %i.cl, float %i.cf, float %i.cn) ; 4 uses
  %i.cp = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cr = insertelement <2 x float> %i.cb, float %i.ch, i64 1
  %i.cs = fmul nsz <2 x float> %i.cq, %i.cr
  %i.ct = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.cu = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cv = insertelement <2 x float> %i.ca, float %i.cg, i64 1
  %i.cw = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cu, <2 x float> %i.cv, <2 x float> %i.cs)
  %i.cx = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.cy = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cz = insertelement <2 x float> %i.cc, float %i.ci, i64 1
  %i.da = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cy, <2 x float> %i.cz, <2 x float> %i.cw) ; 4 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr @_ZZN9ClientMap23getBackgroundBrightnessEfjiPbE9z_offsets, i64 %indvars.iv214
  %i.dc = load float, ptr %i.db, align 4, !tbaa !82
  %i.dd = fmul nsz float %.085, %i.dc
  %i.de = fpext nsz float %i.dd to double
  %i.df = call nsz double @llvm.fmuladd.f64(double %i.ax, double 6.000000e-01, double %i.de)
  %i.dg = fptrunc nsz double %i.df to float       ; 3 uses
  %i.dh = load ptr, ptr %i.bu, align 8, !tbaa !566
  %i.di = fmul nsz float %i.co, %i.co
  %i.dj = extractelement <2 x float> %i.da, i64 0 ; 2 uses
  %i.dk = call nsz float @llvm.fmuladd.f32(float %i.dj, float %i.dj, float %i.di)
  %i.dl = extractelement <2 x float> %i.da, i64 1 ; 2 uses
  %i.dm = call nsz float @llvm.fmuladd.f32(float %i.dl, float %i.dl, float %i.dk) ; 2 uses
  %i.dn = fcmp nsz oeq float %i.dm, 0.000000e+00
  br i1 %i.dn, label %_ZN4core8vector3dIfE9normalizeEv.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.do = fpext nsz float %i.dm to double
  %i.dp = call nsz double @llvm.sqrt.f64(double %i.do)
  %i.dq = fdiv nsz double 1.000000e+00, %i.dp     ; 2 uses
  %i.dr = fpext nsz <2 x float> %i.da to <2 x double>
  %i.ds = fpext nsz float %i.co to double
  %i.dt = fmul nsz double %i.dq, %i.ds
  %i.du = fptrunc nsz double %i.dt to float
  %i.dv = insertelement <2 x double> poison, double %i.dq, i64 0
  %i.dw = shufflevector <2 x double> %i.dv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dx = fmul nsz <2 x double> %i.dw, %i.dr
  %i.dy = fptrunc nsz <2 x double> %i.dx to <2 x float>
  br label %_ZN4core8vector3dIfE9normalizeEv.exit.i

_ZN4core8vector3dIfE9normalizeEv.exit.i:          ; preds = %bb.j, %bb.i
  %.sroa.0183.4.vec.extract193.pre-phi.i = phi float [ %i.co, %bb.i ], [ %i.du, %bb.j ] ; 3 uses
  %i.dz = phi <2 x float> [ %i.da, %bb.i ], [ %i.dy, %bb.j ] ; 4 uses
  %.sroa.0169.0.copyload.i = load <2 x float>, ptr %i.bt, align 8, !tbaa !82 ; 2 uses
  %.sroa.14.0.copyload.i = load float, ptr %.sroa.14.0..sroa_idx.i, align 8, !tbaa !82
  %i.ea = fmul nsz float %.sroa.0183.4.vec.extract193.pre-phi.i, %i.dg
  %.sroa.0169.4.vec.extract.i = extractelement <2 x float> %.sroa.0169.0.copyload.i, i64 1 ; 3 uses
  %i.eb = fadd nsz float %i.ea, %.sroa.0169.4.vec.extract.i ; 3 uses
  %i.ec = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.ed = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ee = fmul nsz <2 x float> %i.dz, %i.ed
  %i.ef = insertelement <2 x float> %.sroa.0169.0.copyload.i, float %.sroa.14.0.copyload.i, i64 1 ; 3 uses
  %i.eg = fadd nsz <2 x float> %i.ee, %i.ef       ; 4 uses
  %.sroa.0169.4.vec.insert.i = insertelement <2 x float> %i.eg, float %i.eb, i64 1
  %i.eh = fcmp nsz ogt float %.sroa.0169.4.vec.extract.i, 0.000000e+00
  %i.ei = select nsz i1 %i.eh, float 5.000000e+00, float -5.000000e+00
  %i.ej = fadd nsz float %.sroa.0169.4.vec.extract.i, %i.ei
  %i.ek = fdiv nsz float %i.ej, 1.000000e+01
  %i.el = fptosi float %i.ek to i16
  %i.em = fcmp nsz ogt <2 x float> %i.ef, zeroinitializer
  %i.en = select <2 x i1> %i.em, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.eo = fadd nsz <2 x float> %i.ef, %i.en
  %i.ep = fdiv nsz <2 x float> %i.eo, splat (float 1.000000e+01)
  %.sroa.2.0.insert.ext.i.i = zext i16 %i.el to i48
  %.sroa.2.0.insert.shift.i.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i.i, 16
  %i.eq = fptosi <2 x float> %i.ep to <2 x i16>   ; 2 uses
  %i.er = extractelement <2 x i16> %i.eq, i64 1
  %i.es = zext i16 %i.er to i48
  %.sroa.3.0.insert.shift.i.i = shl nuw i48 %i.es, 32
  %.sroa.2.0.insert.insert.i.i = or disjoint i48 %.sroa.3.0.insert.shift.i.i, %.sroa.2.0.insert.shift.i.i
  %i.et = extractelement <2 x i16> %i.eq, i64 0
  %i.eu = zext i16 %i.et to i48
  %.sroa.0.0.insert.insert.i.i = or disjoint i48 %.sroa.2.0.insert.insert.i.i, %i.eu
  %i.ev = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.0.0.insert.insert.i.i, ptr noundef null)
          to label %.noexc107 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc107:                                        ; preds = %_ZN4core8vector3dIfE9normalizeEv.exit.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dh, i64 336 ; 2 uses
  %i.ex = and i32 %i.ev, 65535
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ey
  %.sroa.0.0.copyload.i.i.i = load i8, ptr %i.ez, align 1, !tbaa !65
  %i.fa = and i8 %.sroa.0.0.copyload.i.i.i, 80
  %.0107.i = icmp eq i8 %i.fa, 16
  %i.fb = fcmp nsz ogt <2 x float> %i.eg, zeroinitializer
  %i.fc = fcmp nsz ogt float %i.eb, 0.000000e+00
  %i.fd = select nsz i1 %i.fc, float 5.000000e+00, float -5.000000e+00
  %i.fe = fadd nsz float %i.eb, %i.fd
  %i.ff = fdiv nsz float %i.fe, 1.000000e+01
  %i.fg = fptosi float %i.ff to i16
  %i.fh = select <2 x i1> %i.fb, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.fi = fadd nsz <2 x float> %i.eg, %i.fh
  %i.fj = fdiv nsz <2 x float> %i.fi, splat (float 1.000000e+01)
  %.sroa.2.0.insert.ext.i125.i = zext i16 %i.fg to i48
  %.sroa.2.0.insert.shift.i126.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i125.i, 16
  %i.fk = fptosi <2 x float> %i.fj to <2 x i16>   ; 2 uses
  %i.fl = extractelement <2 x i16> %i.fk, i64 1
  %i.fm = zext i16 %i.fl to i48
  %.sroa.3.0.insert.shift.i124.i = shl nuw i48 %i.fm, 32
  %.sroa.2.0.insert.insert.i127.i = or disjoint i48 %.sroa.3.0.insert.shift.i124.i, %.sroa.2.0.insert.shift.i126.i
  %i.fn = extractelement <2 x i16> %i.fk, i64 0
  %i.fo = zext i16 %i.fn to i48
  %.sroa.0.0.insert.insert.i129.i = or disjoint i48 %.sroa.2.0.insert.insert.i127.i, %i.fo
  %i.fp = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.0.0.insert.insert.i129.i, ptr noundef null)
          to label %.noexc108 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc108:                                        ; preds = %.noexc107
  %i.fq = and i32 %i.fp, 65535
  %i.fr = icmp eq i32 %i.fq, 127
  %i.fs = extractelement <2 x float> %i.eg, i64 1
  br i1 %i.fr, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.noexc108
  %i.ft = extractelement <2 x float> %i.dz, i64 1
  %i.fu = fmul nsz float %i.ft, 2.000000e+00
  %i.fv = fmul nsz float %i.fu, 2.000000e+01
  %i.fw = insertelement <2 x float> %i.dz, float %.sroa.0183.4.vec.extract193.pre-phi.i, i64 1
  %i.fx = fmul nsz <2 x float> %i.fw, splat (float 2.000000e+00)
  %i.fy = fmul nsz <2 x float> %i.fx, splat (float 2.000000e+01)
  %i.fz = load <2 x float>, ptr %i.bt, align 8, !tbaa !82
  %i.ga = fadd nsz <2 x float> %i.fy, %i.fz
  %i.gb = load float, ptr %.sroa.14.0..sroa_idx.i, align 8, !tbaa !483
  %i.gc = fadd nsz float %i.fv, %i.gb
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.noexc108
  %.sroa.0169.0.i = phi nsz <2 x float> [ %i.ga, %bb.k ], [ %.sroa.0169.4.vec.insert.i, %.noexc108 ]
  %.sroa.14.0.i = phi nsz float [ %i.gc, %bb.k ], [ %i.fs, %.noexc108 ]
  %.0101.i = phi nsz float [ 2.000000e+01, %bb.k ], [ %i.dg, %.noexc108 ] ; 2 uses
  %.096.i = phi nsz float [ 0.000000e+00, %bb.k ], [ %spec.store.select, %.noexc108 ]
  %i.gd = fcmp nsz olt float %.0101.i, %1
  br i1 %i.gd, label %.lr.ph.i, label %_ZL20getVisibleBrightnessP3MapRKN4core8vector3dIfEES3_ffffPK14NodeDefManagerjfPiPb.exit.thread

.lr.ph.i:                                         ; preds = %bb.l
  %i.ge = fmul nsz float %.085, %.sroa.0183.4.vec.extract193.pre-phi.i
  %i.gf = fmul nsz <2 x float> %i.bx, %i.dz
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.lr.ph.i
  %.0 = phi i8 [ 0, %.lr.ph.i ], [ %.1, %bb.o ]   ; 4 uses
  %.097224.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.ph.i, %bb.o ] ; 3 uses
  %.098223.i = phi i32 [ 0, %.lr.ph.i ], [ %.199.ph.i, %bb.o ] ; 3 uses
  %.1102222.i = phi float [ %.0101.i, %.lr.ph.i ], [ %i.gh, %bb.o ]
  %.0103221.i = phi i32 [ 0, %.lr.ph.i ], [ %.1104.ph.i, %bb.o ] ; 2 uses
  %.0105220.i = phi i1 [ false, %.lr.ph.i ], [ %.1106.ph.i, %bb.o ] ; 2 uses
  %.0108219.i = phi i1 [ false, %.lr.ph.i ], [ %.1109.i, %bb.o ]
  %.0111218.i = phi i32 [ 0, %.lr.ph.i ], [ %i.id, %bb.o ] ; 2 uses
  %.sroa.14.1217.i = phi float [ %.sroa.14.0.i, %.lr.ph.i ], [ %i.if, %bb.o ]
  %.sroa.0169.1216.i = phi <2 x float> [ %.sroa.0169.0.i, %.lr.ph.i ], [ %.sroa.0169.4.vec.insert181.i, %bb.o ] ; 2 uses
  %.sroa.0169.4.vec.extract179.i = extractelement <2 x float> %.sroa.0169.1216.i, i64 1
  %i.gg = fadd nsz float %i.ge, %.sroa.0169.4.vec.extract179.i ; 3 uses
  %i.gh = fadd nsz float %.085, %.1102222.i       ; 3 uses
  %i.gi = fcmp nsz ogt float %i.gg, 0.000000e+00
  %i.gj = select nsz i1 %i.gi, float 5.000000e+00, float -5.000000e+00
  %i.gk = fadd nsz float %i.gg, %i.gj
  %i.gl = fdiv nsz float %i.gk, 1.000000e+01
  %i.gm = fptosi float %i.gl to i16
  %i.gn = insertelement <2 x float> %.sroa.0169.1216.i, float %.sroa.14.1217.i, i64 1
  %i.go = fadd nsz <2 x float> %i.gf, %i.gn       ; 4 uses
  %.sroa.0169.4.vec.insert181.i = insertelement <2 x float> %i.go, float %i.gg, i64 1
  %i.gp = fcmp nsz ogt <2 x float> %i.go, zeroinitializer
  %i.gq = select <2 x i1> %i.gp, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.gr = fadd nsz <2 x float> %i.go, %i.gq
  %i.gs = fdiv nsz <2 x float> %i.gr, splat (float 1.000000e+01)
  %.sroa.2.0.insert.ext.i150.i = zext i16 %i.gm to i48
  %.sroa.2.0.insert.shift.i151.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i150.i, 16
  %i.gt = fptosi <2 x float> %i.gs to <2 x i16>   ; 2 uses
  %i.gu = extractelement <2 x i16> %i.gt, i64 1
  %i.gv = zext i16 %i.gu to i48
  %.sroa.3.0.insert.shift.i149.i = shl nuw i48 %i.gv, 32
  %.sroa.2.0.insert.insert.i152.i = or disjoint i48 %.sroa.2.0.insert.shift.i151.i, %.sroa.3.0.insert.shift.i149.i
  %i.gw = extractelement <2 x i16> %i.gt, i64 0
  %i.gx = zext i16 %i.gw to i48
  %.sroa.0.0.insert.insert.i154.i = or disjoint i48 %.sroa.2.0.insert.insert.i152.i, %i.gx
  %i.gy = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.0.0.insert.insert.i154.i, ptr noundef null)
          to label %.noexc109 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc109:                                        ; preds = %bb.m
  %i.gz = and i32 %i.gy, 65535
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ha
  %.sroa.0.0.copyload.i.i155.i = load i8, ptr %i.hb, align 1, !tbaa !65 ; 4 uses
  %i.hc = icmp eq i32 %.0111218.i, 0
  %or.cond.not212.not215.i = select i1 %.0107.i, i1 %i.hc, i1 false
  %i.hd = and i8 %.sroa.0.0.copyload.i.i155.i, 16
  %.not115.i = icmp ne i8 %i.hd, 0
  %i.he = and i8 %.sroa.0.0.copyload.i.i155.i, 64
  %i.hf = and i8 %.sroa.0.0.copyload.i.i155.i, 80
  %i.hg = icmp eq i8 %i.hf, 16
  %or.cond119.i = and i1 %or.cond.not212.not215.i, %i.hg
  %.1109.i = select i1 %or.cond119.i, i1 true, i1 %.0108219.i ; 2 uses
  %i.hh = icmp ne i8 %i.he, 0
  %or.cond3.i = select i1 %i.hh, i1 true, i1 %.1109.i
  %or.cond211.i = select i1 %.not115.i, i1 %or.cond3.i, i1 false
  br i1 %or.cond211.i, label %_ZNK7MapNode13getLightBlendEj20ContentLightingFlags.exit.i, label %bb.n

bb.n:                                             ; preds = %.noexc109
  %i.hi = add nsw i32 %.0103221.i, 1
  %i.hj = icmp sgt i32 %.0103221.i, 2
  br i1 %i.hj, label %._crit_edge.i, label %bb.o

_ZNK7MapNode13getLightBlendEj20ContentLightingFlags.exit.i: ; preds = %.noexc109
  %.sroa.4.0.extract.shift.i = lshr i32 %i.gy, 16
  %.sroa.4.0.extract.trunc.i = trunc i32 %.sroa.4.0.extract.shift.i to i8 ; 2 uses
  %i.hk = fcmp nsz ult float %i.gh, %.096.i
  %i.hl = trunc nuw i8 %.0 to i1
  %i.hm = select i1 %i.hk, i1 true, i1 %i.hl
  %or.cond = select i1 %i.hm, i1 true, i1 %.0105220.i
  %.pre = and i8 %.sroa.4.0.extract.trunc.i, 15
  %.pre222 = and i8 %.sroa.0.0.copyload.i.i155.i, 15 ; 2 uses
  %.pre224 = call noundef i8 @llvm.umax.i8(i8 %.pre222, i8 %.pre) ; 2 uses
  %i.hn = icmp eq i8 %.pre224, 15
  %spec.select156 = zext i1 %i.hn to i8
  %.3 = select i1 %or.cond, i8 %.0, i8 %spec.select156
  %i.ho = lshr i8 %.sroa.4.0.extract.trunc.i, 4
  %i.hp = call i8 @llvm.umax.i8(i8 %.pre222, i8 %i.ho)
  %i.hq = zext nneg i8 %.pre224 to i32
  %i.hr = mul i32 %2, %i.hq
  %i.hs = zext nneg i8 %i.hp to i32
  %i.ht = mul i32 %i.bv, %i.hs
  %i.hu = add i32 %i.ht, %i.hr
  %i.hv = udiv i32 %i.hu, 1000
  %spec.store.select.i.i.i = call i32 @llvm.umin.i32(i32 %i.hv, i32 15)
  %i.hw = zext nneg i32 %spec.store.select.i.i.i to i64
  %i.hx = load ptr, ptr @light_decode_table, align 8, !tbaa !192
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.hw
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !65
  %i.ia = zext i8 %i.hz to i32
  %i.ib = add nsw i32 %.097224.i, %i.ia
  %i.ic = add nsw i32 %.098223.i, 1
  br label %bb.o

bb.o:                                             ; preds = %_ZNK7MapNode13getLightBlendEj20ContentLightingFlags.exit.i, %bb.n
  %.1 = phi i8 [ %.3, %_ZNK7MapNode13getLightBlendEj20ContentLightingFlags.exit.i ], [ %.0, %bb.n ] ; 2 uses
  %.1106.ph.i = phi i1 [ %.0105220.i, %_ZNK7MapNode13getLightBlendEj20ContentLightingFlags.exit.i ], [ true, %bb.n ]
  %.1104.ph.i = phi i32 [ 0, %_ZNK7MapNode13getLightBlendEj20ContentLightingFlags.exit.i ], [ %i.hi, %bb.n ]
  %.199.ph.i = phi i32 [ %i.ic, %_ZNK7MapNode13getLightBlendEj20ContentLightingFlags.exit.i ], [ %.098223.i, %bb.n ] ; 2 uses
  %.1.ph.i = phi i32 [ %i.ib, %_ZNK7MapNode13getLightBlendEj20ContentLightingFlags.exit.i ], [ %.097224.i, %bb.n ] ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN9ClientMap23getBackgroundBrightnessEfjiPb:.noexc.i
  %i.jp = trunc i64 %i.jo to i32                  ; 2 uses
  %i.jq = add i32 %.082, %i.jp                    ; 2 uses
  %i.jr = icmp ugt i32 %i.jq, %i.jp
  br i1 %i.jr, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.ac
  %i.js = and i64 %i.jo, 4294967295               ; 4 uses
  %wide.trip.count = zext i32 %i.jq to i64        ; 2 uses
  %i.jt = sub nsw i64 %wide.trip.count, %i.js     ; 3 uses
  %min.iters.check = icmp ult i64 %i.jt, 8
  br i1 %min.iters.check, label %.lr.ph.preheader276, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.jt, -8                      ; 3 uses
  %i.ju = add nsw i64 %i.js, %n.vec
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0122.2, i64 %i.js
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.jy, %vector.body ]
  %vec.phi274 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.jz, %vector.body ]
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %index ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  %wide.load = load <4 x i32>, ptr %i.jw, align 4, !tbaa !247
  %wide.load275 = load <4 x i32>, ptr %i.jx, align 4, !tbaa !247
  %i.jy = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.jz = add <4 x i32> %wide.load275, %vec.phi274 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ka = icmp eq i64 %index.next, %n.vec
  br i1 %i.ka, label %middle.block, label %vector.body, !llvm.loop !896

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.jz, %i.jy
  %i.kb = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.jt, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader276

.lr.ph.preheader276:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv218.ph = phi i64 [ %i.js, %.lr.ph.preheader ], [ %i.ju, %middle.block ]
  %.084195.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.kb, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.lcssa = phi i32 [ %i.kb, %middle.block ], [ %i.kf, %.lr.ph ]
  %i.kc = icmp eq i32 %.082, 0
  br i1 %i.kc, label %._crit_edge.thread, label %bb.ag

.lr.ph:                                           ; preds = %.lr.ph.preheader276, %.lr.ph
  %indvars.iv218 = phi i64 [ %indvars.iv.next219, %.lr.ph ], [ %indvars.iv218.ph, %.lr.ph.preheader276 ] ; 2 uses
  %.084195 = phi i32 [ %i.kf, %.lr.ph ], [ %.084195.ph, %.lr.ph.preheader276 ]
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0122.2, i64 %indvars.iv218
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !247
  %i.kf = add nsw i32 %i.ke, %.084195             ; 2 uses
  %indvars.iv.next219 = add nuw nsw i64 %indvars.iv218, 1 ; 2 uses
  %exitcond221.not = icmp eq i64 %indvars.iv.next219, %wide.trip.count
  br i1 %exitcond221.not, label %._crit_edge, label %.lr.ph, !llvm.loop !897

._crit_edge.thread:                               ; preds = %bb.ac, %._crit_edge
  %.sroa.04.0.copyload = load <2 x float>, ptr %i.bt, align 8, !tbaa !82 ; 2 uses
  %.sroa.25.0.copyload = load float, ptr %.sroa.14.0..sroa_idx.i, align 8, !tbaa !82
  %.sroa.09.4.vec.extract.i = extractelement <2 x float> %.sroa.04.0.copyload, i64 1 ; 2 uses
  %i.kg = fcmp nsz ogt float %.sroa.09.4.vec.extract.i, 0.000000e+00
  %i.kh = select nsz i1 %i.kg, float 5.000000e+00, float -5.000000e+00
  %i.ki = fadd nsz float %.sroa.09.4.vec.extract.i, %i.kh
  %i.kj = fdiv nsz float %i.ki, 1.000000e+01
  %i.kk = fptosi float %i.kj to i16
  %i.kl = insertelement <2 x float> %.sroa.04.0.copyload, float %.sroa.25.0.copyload, i64 1 ; 2 uses
  %i.km = fcmp nsz ogt <2 x float> %i.kl, zeroinitializer
  %i.kn = select <2 x i1> %i.km, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.ko = fadd nsz <2 x float> %i.kl, %i.kn
  %i.kp = fdiv nsz <2 x float> %i.ko, splat (float 1.000000e+01)
  %.sroa.2.0.insert.ext.i = zext i16 %i.kk to i48
  %.sroa.2.0.insert.shift.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i, 16
  %i.kq = fptosi <2 x float> %i.kp to <2 x i16>   ; 2 uses
  %i.kr = extractelement <2 x i16> %i.kq, i64 1
  %i.ks = zext i16 %i.kr to i48
  %.sroa.3.0.insert.shift.i = shl nuw i48 %i.ks, 32
  %.sroa.2.0.insert.insert.i = or disjoint i48 %.sroa.3.0.insert.shift.i, %.sroa.2.0.insert.shift.i
  %i.kt = extractelement <2 x i16> %i.kq, i64 0
  %i.ku = zext i16 %i.kt to i48
  %.sroa.0.0.insert.insert.i = or disjoint i48 %.sroa.2.0.insert.insert.i, %i.ku
  %i.kv = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.0.0.insert.insert.i, ptr noundef null)
          to label %bb.ad unwind label %bb.af     ; 2 uses

bb.ad:                                            ; preds = %._crit_edge.thread
  %i.kw = load ptr, ptr %i.bu, align 8, !tbaa !566
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 336
  %i.ky = and i32 %i.kv, 65535
  %i.kz = zext nneg i32 %i.ky to i64
  %i.la = getelementptr inbounds nuw i8, ptr %i.kx, i64 %i.kz
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.la, align 1, !tbaa !65 ; 2 uses
  %i.lb = and i8 %.sroa.0.0.copyload.i.i, 16
  %.not = icmp eq i8 %i.lb, 0
  br i1 %.not, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.sroa.5.0.extract.shift = lshr i32 %i.kv, 16
  %.sroa.5.0.extract.trunc = trunc i32 %.sroa.5.0.extract.shift to i8 ; 2 uses
  %i.lc = and i8 %.sroa.5.0.extract.trunc, 15
  %i.ld = and i8 %.sroa.0.0.copyload.i.i, 15      ; 2 uses
  %i.le = call noundef i8 @llvm.umax.i8(i8 %i.ld, i8 %i.lc)
  %i.lf = lshr i8 %.sroa.5.0.extract.trunc, 4
  %i.lg = call i8 @llvm.umax.i8(i8 %i.ld, i8 %i.lf)
  %i.lh = zext nneg i8 %i.le to i32
  %i.li = mul i32 %2, %i.lh
  %i.lj = zext nneg i8 %i.lg to i32
  %i.lk = mul i32 %i.bv, %i.lj
  %i.ll = add i32 %i.lk, %i.li
  %i.lm = udiv i32 %i.ll, 1000
  %spec.store.select.i.i = call i32 @llvm.umin.i32(i32 %i.lm, i32 15)
  %i.ln = zext nneg i32 %spec.store.select.i.i to i64
  %i.lo = load ptr, ptr @light_decode_table, align 8, !tbaa !192
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.ln
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !65
  %i.lr = zext i8 %i.lq to i32
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.af:                                            ; preds = %._crit_edge.thread
  %i.ls = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %._crit_edge
  %i.lt = sdiv i32 %.lcssa, %.082
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.ae, %bb.ad, %bb.ag
  %.180 = phi i32 [ %i.lt, %bb.ag ], [ %i.lr, %bb.ae ], [ %3, %bb.ad ]
  store i8 %.276, ptr %4, align 1, !tbaa !644
  %i.lu = ptrtoint ptr %.sroa.24.2 to i64
  %i.lv = sub i64 %i.lu, %.pre228
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0122.2, i64 noundef %i.lv) #34
  call void @_ZN13ScopeProfiler4stopEv(ptr noundef nonnull align 8 dereferenceable(50) %5) #2
  %i.lw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !64 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.lz = icmp eq ptr %i.lx, %i.ly
  br i1 %i.lz, label %_ZN13ScopeProfilerD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ma = load i64, ptr %i.ly, align 8, !tbaa !65
  %i.mb = add i64 %i.ma, 1
  call void @_ZdlPvm(ptr noundef %i.lx, i64 noundef %i.mb) #34
  br label %_ZN13ScopeProfilerD2Ev.exit

_ZN13ScopeProfilerD2Ev.exit:                      ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #2
  ret i32 %.180

bb.ah:                                            ; preds = %bb.z, %bb.af, %.loopexit.split-lp
  %.sroa.0122.4 = phi ptr [ %.sroa.0122.0190, %.loopexit.split-lp ], [ %.sroa.0122.2, %bb.af ], [ %.sroa.0122.3, %bb.z ] ; 3 uses
  %.sroa.24.4 = phi ptr [ %.sroa.24.0192, %.loopexit.split-lp ], [ %.sroa.24.2, %bb.af ], [ %.sroa.24.3, %bb.z ]
  %.pn95.pn.pn = phi { ptr, i32 } [ %.pn92.pn, %.loopexit.split-lp ], [ %i.ls, %bb.af ], [ %i.ji, %bb.z ] ; 2 uses
  %.not.i.i.i117 = icmp eq ptr %.sroa.0122.4, null
  br i1 %.not.i.i.i117, label %_ZNSt6vectorIiSaIiEED2Ev.exit118, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.mc = ptrtoint ptr %.sroa.24.4 to i64
  %i.md = ptrtoint ptr %.sroa.0122.4 to i64
  %i.me = sub i64 %i.mc, %i.md
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0122.4, i64 noundef %i.me) #34
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit118

_ZNSt6vectorIiSaIiEED2Ev.exit118:                 ; preds = %bb.ai, %bb.ah, %bb.g
  %.pn99.pn = phi { ptr, i32 } [ %.pn95.pn.pn, %bb.ai ], [ %i.aw, %bb.g ], [ %.pn95.pn.pn, %bb.ah ]
  call void @_ZN13ScopeProfilerD2Ev(ptr noundef nonnull align 8 dead_on_return(50) dereferenceable(50) %5) #2
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit118, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105
  %.pn99.pn.pn = phi { ptr, i32 } [ %.pn99.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit118 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #2
  resume { ptr, i32 } %.pn99.pn.pn
}

declare noundef i32 @_Z12myrand_rangeii(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(64) ptr @_ZN4core8CMatrix4IfE17buildRotateFromToERKNS_8vector3dIfEES5_(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(12) %2) local_unnamed_addr #21 comdat align 2 {
bb.a:
  %.sroa.065.0.copyload = load float, ptr %1, align 4, !tbaa !82 ; 3 uses
  %.sroa.768.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.058.0.copyload = load float, ptr %2, align 4, !tbaa !82 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.a = load <2 x float>, ptr %.sroa.768.0..sroa_idx, align 4, !tbaa !82 ; 6 uses
  %i.b = load <2 x float>, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !82 ; 6 uses
  %foldExtExtBinop = fmul nsz <2 x float> %i.a, %i.a
  %i.c = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.d = tail call nsz float @llvm.fmuladd.f32(float %.sroa.065.0.copyload, float %.sroa.065.0.copyload, float %i.c)
  %i.e = extractelement <2 x float> %i.a, i64 1   ; 2 uses
  %i.f = tail call nsz float @llvm.fmuladd.f32(float %i.e, float %i.e, float %i.d) ; 2 uses
  %i.g = fcmp nsz oeq float %i.f, 0.000000e+00
  %i.h = shufflevector <2 x float> %i.a, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.i = insertelement <2 x float> %i.h, float %.sroa.065.0.copyload, i64 1 ; 2 uses
  br i1 %i.g, label %_ZN4core8vector3dIfE9normalizeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = fpext nsz float %i.f to double
  %i.k = tail call nsz double @llvm.sqrt.f64(double %i.j)
  %i.l = fdiv nsz double 1.000000e+00, %i.k
  %i.m = fpext nsz <2 x float> %i.i to <2 x double>
  %i.n = fpext nsz <2 x float> %i.a to <2 x double>
  %i.o = insertelement <2 x double> poison, double %i.l, i64 0
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.q = fmul nsz <2 x double> %i.p, %i.m
  %i.r = fmul nsz <2 x double> %i.p, %i.n
  %i.s = fptrunc nsz <2 x double> %i.q to <2 x float>
  %i.t = fptrunc nsz <2 x double> %i.r to <2 x float>
  br label %_ZN4core8vector3dIfE9normalizeEv.exit

_ZN4core8vector3dIfE9normalizeEv.exit:            ; preds = %bb.a, %bb.b
  %i.u = phi <2 x float> [ %i.i, %bb.a ], [ %i.s, %bb.b ] ; 3 uses
  %i.v = phi <2 x float> [ %i.a, %bb.a ], [ %i.t, %bb.b ] ; 3 uses
  %foldExtExtBinop77 = fmul nsz <2 x float> %i.b, %i.b
  %i.w = extractelement <2 x float> %foldExtExtBinop77, i64 0
  %i.x = tail call nsz float @llvm.fmuladd.f32(float %.sroa.058.0.copyload, float %.sroa.058.0.copyload, float %i.w)
  %i.y = extractelement <2 x float> %i.b, i64 1   ; 2 uses
  %i.z = tail call nsz float @llvm.fmuladd.f32(float %i.y, float %i.y, float %i.x) ; 2 uses
  %i.aa = fcmp nsz oeq float %i.z, 0.000000e+00
  %i.ab = shufflevector <2 x float> %i.b, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ac = insertelement <2 x float> %i.ab, float %.sroa.058.0.copyload, i64 1 ; 2 uses
  br i1 %i.aa, label %_ZN4core8vector3dIfE9normalizeEv.exit35, label %bb.c

bb.c:                                             ; preds = %_ZN4core8vector3dIfE9normalizeEv.exit
  %i.ad = fpext nsz float %i.z to double
  %i.ae = tail call nsz double @llvm.sqrt.f64(double %i.ad)
  %i.af = fdiv nsz double 1.000000e+00, %i.ae
  %i.ag = fpext nsz <2 x float> %i.ac to <2 x double>
  %i.ah = fpext nsz <2 x float> %i.b to <2 x double>
  %i.ai = insertelement <2 x double> poison, double %i.af, i64 0
  %i.aj = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ak = fmul nsz <2 x double> %i.aj, %i.ag
  %i.al = fmul nsz <2 x double> %i.aj, %i.ah
  %i.am = fptrunc nsz <2 x double> %i.al to <2 x float>
  %i.an = fptrunc nsz <2 x double> %i.ak to <2 x float>
  br label %_ZN4core8vector3dIfE9normalizeEv.exit35

_ZN4core8vector3dIfE9normalizeEv.exit35:          ; preds = %_ZN4core8vector3dIfE9normalizeEv.exit, %bb.c
  %i.ao = phi <2 x float> [ %i.b, %_ZN4core8vector3dIfE9normalizeEv.exit ], [ %i.am, %bb.c ] ; 4 uses
  %i.ap = phi <2 x float> [ %i.ac, %_ZN4core8vector3dIfE9normalizeEv.exit ], [ %i.an, %bb.c ] ; 2 uses
  %i.aq = fneg nsz <2 x float> %i.v
  %i.ar = fmul nsz <2 x float> %i.ap, %i.aq
  %i.as = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> %i.u, <2 x float> %i.ar) ; 4 uses
  %i.at = extractelement <2 x float> %i.u, i64 1  ; 2 uses
  %i.au = fneg nsz float %i.at
  %i.av = extractelement <2 x float> %i.ao, i64 0
  %i.aw = fmul nsz float %i.av, %i.au
  %i.ax = extractelement <2 x float> %i.ap, i64 1 ; 2 uses
  %i.ay = extractelement <2 x float> %i.v, i64 0
  %i.az = tail call nsz float @llvm.fmuladd.f32(float %i.ax, float %i.ay, float %i.aw) ; 6 uses
  %i.ba = extractelement <2 x float> %i.as, i64 1 ; 4 uses
  %i.bb = fmul nsz float %i.ba, %i.ba
  %i.bc = extractelement <2 x float> %i.as, i64 0 ; 4 uses
  %i.bd = tail call nsz float @llvm.fmuladd.f32(float %i.bc, float %i.bc, float %i.bb)
  %i.be = tail call nsz float @llvm.fmuladd.f32(float %i.az, float %i.az, float %i.bd) ; 2 uses
  %i.bf = fcmp nsz oeq float %i.be, 0.000000e+00
  br i1 %i.bf, label %_ZN4core8vector3dIfE9normalizeEv.exit36, label %bb.d

bb.d:                                             ; preds = %_ZN4core8vector3dIfE9normalizeEv.exit35
  %i.bg = fpext nsz float %i.be to double
  %i.bh = tail call nsz double @llvm.sqrt.f64(double %i.bg)
  %i.bi = fdiv nsz double 1.000000e+00, %i.bh     ; 2 uses
  %i.bj = fpext nsz <2 x float> %i.as to <2 x double>
  %i.bk = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.bl = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bm = fmul nsz <2 x double> %i.bl, %i.bj
  %i.bn = fptrunc nsz <2 x double> %i.bm to <2 x float>
  %i.bo = fpext nsz float %i.az to double
  %i.bp = fmul nsz double %i.bi, %i.bo
  %i.bq = fptrunc nsz double %i.bp to float
  br label %_ZN4core8vector3dIfE9normalizeEv.exit36

_ZN4core8vector3dIfE9normalizeEv.exit36:          ; preds = %_ZN4core8vector3dIfE9normalizeEv.exit35, %bb.d
  %.sroa.13.0 = phi nsz float [ %i.az, %_ZN4core8vector3dIfE9normalizeEv.exit35 ], [ %i.bq, %bb.d ] ; 3 uses
  %.sroa.0.0 = phi nsz <2 x float> [ %i.as, %_ZN4core8vector3dIfE9normalizeEv.exit35 ], [ %i.bn, %bb.d ] ; 2 uses
  %foldExtExtBinop79 = fmul nsz <2 x float> %i.v, %i.ao
  %i.br = extractelement <2 x float> %foldExtExtBinop79, i64 0
  %i.bs = tail call nsz float @llvm.fmuladd.f32(float %i.at, float %i.ax, float %i.br)
  %i.bt = extractelement <2 x float> %i.ao, i64 1
  %i.bu = extractelement <2 x float> %i.u, i64 0
  %i.bv = tail call nsz noundef float @llvm.fmuladd.f32(float %i.bu, float %i.bt, float %i.bs) ; 4 uses
  %i.bw = fsub nsz float 1.000000e+00, %i.bv      ; 3 uses
  %.sroa.0.0.vec.extract47 = extractelement <2 x float> %.sroa.0.0, i64 0 ; 3 uses
  %i.bx = fmul nsz float %i.bw, %.sroa.0.0.vec.extract47 ; 2 uses
  %.sroa.0.4.vec.extract54 = extractelement <2 x float> %.sroa.0.0, i64 1 ; 3 uses
  %i.by = fmul nsz float %i.bw, %.sroa.0.4.vec.extract54 ; 2 uses
  %i.bz = fmul nsz float %i.bw, %.sroa.13.0       ; 2 uses
  %i.ca = tail call nsz float @llvm.fmuladd.f32(float %i.bx, float %.sroa.0.0.vec.extract47, float %i.bv)
  store float %i.ca, ptr %0, align 4, !tbaa !82
  %i.cb = tail call nsz float @llvm.fmuladd.f32(float %i.by, float %.sroa.0.4.vec.extract54, float %i.bv)
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.cb, ptr %i.cc, align 4, !tbaa !82
  %i.cd = tail call nsz float @llvm.fmuladd.f32(float %i.bz, float %.sroa.13.0, float %i.bv)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.cd, ptr %i.ce, align 4, !tbaa !82
  %i.cf = fmul nsz float %.sroa.0.4.vec.extract54, %i.bx ; 2 uses
  %i.cg = fmul nsz float %i.bz, %.sroa.0.0.vec.extract47 ; 2 uses
  %i.ch = fmul nsz float %.sroa.13.0, %i.by       ; 2 uses
  %i.ci = fsub nsz float %i.cf, %i.az
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.ci, ptr %i.cj, align 4, !tbaa !82
  %i.ck = fadd nsz float %i.ba, %i.cg
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.ck, ptr %i.cl, align 4, !tbaa !82
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float 0.000000e+00, ptr %i.cm, align 4, !tbaa !82
  %i.cn = fadd nsz float %i.az, %i.cf
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.cn, ptr %i.co, align 4, !tbaa !82
  %i.cp = fsub nsz float %i.ch, %i.bc
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.cp, ptr %i.cq, align 4, !tbaa !82
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float 0.000000e+00, ptr %i.cr, align 4, !tbaa !82
  %i.cs = fsub nsz float %i.cg, %i.ba
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.cs, ptr %i.ct, align 4, !tbaa !82
  %i.cu = fadd nsz float %i.bc, %i.ch
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.cu, ptr %i.cv, align 4, !tbaa !82
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cw, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.cx, align 4, !tbaa !82
  ret ptr %0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #19

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9ClientMap12renderPostFxE10CameraMode(ptr noundef nonnull align 8 dereferenceable(656) %0, i32 noundef %1) local_unnamed_addr #18 align 2 {
bb.a:
  %2 = alloca %"class.core::rect", align 4        ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 416
  %.sroa.07.0.copyload = load <2 x float>, ptr %i.a, align 8, !tbaa !82 ; 2 uses
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 424
  %.sroa.28.0.copyload = load float, ptr %.sroa.28.0..sroa_idx, align 8, !tbaa !82
  %.sroa.09.0.vec.extract.i = extractelement <2 x float> %.sroa.07.0.copyload, i64 0 ; 2 uses
  %i.b = fcmp nsz ogt float %.sroa.09.0.vec.extract.i, 0.000000e+00
  %i.c = select nsz i1 %i.b, float 5.000000e+00, float -5.000000e+00
  %i.d = fadd nsz float %.sroa.09.0.vec.extract.i, %i.c
  %i.e = fdiv nsz float %i.d, 1.000000e+01
  %i.f = fptosi float %i.e to i16
  %i.g = insertelement <2 x float> %.sroa.07.0.copyload, float %.sroa.28.0.copyload, i64 0 ; 2 uses
  %i.h = fcmp nsz ogt <2 x float> %i.g, zeroinitializer
  %i.i = select <2 x i1> %i.h, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.j = fadd nsz <2 x float> %i.g, %i.i
  %i.k = fdiv nsz <2 x float> %i.j, splat (float 1.000000e+01)
  %i.l = fptosi <2 x float> %i.k to <2 x i16>
  %i.m = zext <2 x i16> %i.l to <2 x i48>
  %i.n = shl nuw <2 x i48> %i.m, <i48 32, i48 16>
  %.sroa.2.0.insert.insert.i = tail call i48 @llvm.vector.reduce.or.v2i48(<2 x i48> %i.n)
  %.sroa.0.0.insert.ext.i = zext i16 %i.f to i48
  %.sroa.0.0.insert.insert.i = or disjoint i48 %.sroa.2.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  %i.o = tail call i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.0.0.insert.insert.i, ptr noundef null)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !566  ; 2 uses
  %i.r = and i32 %i.o, 65535
  %i.s = zext nneg i32 %i.r to i64                ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !569
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !570  ; 3 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = sdiv exact i64 %i.z, 2080
  %i.ab = icmp ugt i64 %i.aa, %i.s
  br i1 %i.ab, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw [2080 x i8], ptr %i.w, i64 %i.s ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !176
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.c, label %_ZNK14NodeDefManager3getERK7MapNode.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 260000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit

_ZNK14NodeDefManager3getERK7MapNode.exit:         ; preds = %bb.b, %bb.c
  %i.ah = phi ptr [ %i.ag, %bb.c ], [ %i.ac, %bb.b ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1392
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !247 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 1396
  %i.al = load i8, ptr %i.ak, align 4, !tbaa !898, !range !174, !noundef !175
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit
  %i.an = lshr i32 %i.aj, 16
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !160 ; 3 uses
  %i.aq = lshr i32 %i.aj, 8
  %i.ar = and i32 %i.aj, 255
  %i.as = and i32 %i.ap, 255
  %i.at = mul nuw nsw i32 %i.as, %i.ar
  %i.au = uitofp nsz nneg i32 %i.at to float
  %i.av = fdiv nsz float %i.au, 2.550000e+02
  %i.aw = fadd nsz float %i.av, 5.000000e-01
  %i.ax = tail call nsz noundef float @llvm.floor.f32(float %i.aw)
  %i.ay = fptosi float %i.ax to i32
  %i.az = and i32 %i.an, 255
  %i.ba = lshr i32 %i.ap, 16
  %i.bb = and i32 %i.ba, 255
  %i.bc = mul nuw nsw i32 %i.bb, %i.az
  %i.bd = uitofp nsz nneg i32 %i.bc to float
  %i.be = and i32 %i.aq, 255
  %i.bf = lshr i32 %i.ap, 8
  %i.bg = and i32 %i.bf, 255
  %i.bh = mul nuw nsw i32 %i.bg, %i.be
  %i.bi = uitofp nsz nneg i32 %i.bh to float
  %i.bj = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bk = insertelement <2 x float> %i.bj, float %i.bd, i64 1
  %i.bl = fdiv nsz <2 x float> %i.bk, splat (float 2.550000e+02)
  %i.bm = fadd nsz <2 x float> %i.bl, splat (float 5.000000e-01)
  %i.bn = tail call nsz <2 x float> @llvm.floor.v2f32(<2 x float> %i.bm)
  %i.bo = insertelement <4 x i32> poison, i32 %i.ay, i64 0
  %i.bp = insertelement <4 x i32> %i.bo, i32 %i.aj, i64 1
  %i.bq = shufflevector <2 x float> %i.bn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.br = fptosi <4 x float> %i.bq to <4 x i32>
  %i.bs = shufflevector <4 x i32> %i.bp, <4 x i32> %i.br, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bt = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.bs, <4 x i32> <i32 255, i32 2147483647, i32 255, i32 255>)
  %i.bu = shl nuw nsw <4 x i32> %i.bt, <i32 0, i32 0, i32 8, i32 16>
  %i.bv = and <4 x i32> %i.bu, <i32 255, i32 -16777216, i32 65280, i32 16711680>
  %i.bw = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.bv)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK14NodeDefManager3getERK7MapNode.exit
  %.sroa.014.0 = phi i32 [ %i.bw, %bb.d ], [ %i.aj, %_ZNK14NodeDefManager3getERK7MapNode.exit ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ah, i64 1400
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !594
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 1248
  %i.ca = load i8, ptr %i.bz, align 8, !tbaa !598
  %i.cb = icmp eq i8 %i.ca, 2
  %i.cc = icmp eq i32 %1, 1
  %or.cond = and i1 %i.cc, %i.cb
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !486, !nonnull !175, !align !487
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 5
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !565, !range !174, !noundef !175
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not = icmp ult i32 %.sroa.014.0, 16777216
  br i1 %.not, label %bb.h, label %.thread

.thread:                                          ; preds = %bb.f, %bb.g
  %.sroa.014.126 = phi i32 [ %.sroa.014.0, %bb.g ], [ -16777216, %bb.f ]
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !108 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !58
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = tail call noundef ptr %i.cm(ptr noundef nonnull align 8 dereferenceable(8) %i.cj) ; 4 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !58
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 488
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = tail call noundef nonnull align 4 dereferenceable(8) ptr %i.cq(ptr noundef nonnull align 8 dereferenceable(8) %i.cn)
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 8
end_hunk_6
begin_hunk_7_@_ZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNS0_9SMaterialEbEEiii:.invoke
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit, label %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit.thread, !prof !441

_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.q = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN12_GLOBAL__N_118tl_meshbuflistmapsE)
  br label %_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit

_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit:    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  store i8 1, ptr @__tls_guard, align 1
  %i.r = call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @__tls_guard) ; 0 uses
  call fastcc void @__cxx_global_var_init()
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN12_GLOBAL__N_121tl_drawdescriptorlistE, i8 0, i64 24, i1 false)
  %i.s = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EED2Ev, ptr nonnull @_ZN12_GLOBAL__N_121tl_drawdescriptorlistE, ptr nonnull @__dso_handle) #2 ; 0 uses
  %.pr = load i8, ptr @__tls_guard, align 1
  %i.t = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN12_GLOBAL__N_118tl_meshbuflistmapsE) ; 2 uses
  %i.u = icmp eq i8 %.pr, 0
  br i1 %i.u, label %bb.a, label %_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit, !prof !442

bb.a:                                             ; preds = %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit
  store i8 1, ptr @__tls_guard, align 1
  %i.v = call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @__tls_guard) ; 0 uses
  call fastcc void @__cxx_global_var_init()
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN12_GLOBAL__N_121tl_drawdescriptorlistE, i8 0, i64 24, i1 false)
  %i.w = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EED2Ev, ptr nonnull @_ZN12_GLOBAL__N_121tl_drawdescriptorlistE, ptr nonnull @__dso_handle) #2 ; 0 uses
  br label %_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit

_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit: ; preds = %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit.thread, %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit, %bb.a
  %i.x = phi ptr [ %i.q, %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit.thread ], [ %i.t, %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit ], [ %i.t, %bb.a ] ; 3 uses
  %i.y = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN12_GLOBAL__N_121tl_drawdescriptorlistE) ; 14 uses
  call fastcc void @_ZN12_GLOBAL__N_115MeshBufListMaps5clearEv(ptr noundef nonnull align 8 dereferenceable(112) %i.x)
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !48   ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 17 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !443 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, %i.z
  br i1 %.not.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPN12_GLOBAL__N_114DrawDescriptorES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN12_GLOBAL__N_114DrawDescriptorES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !443
  br label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE5clearEv.exit

_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE5clearEv.exit: ; preds = %_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit, %_ZSt8_DestroyIPN12_GLOBAL__N_114DrawDescriptorES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.ac = phi ptr [ %i.ab, %_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit ], [ %i.z, %_ZSt8_DestroyIPN12_GLOBAL__N_114DrawDescriptorES1_EvT_S3_RSaIT0_E.exit.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !167 ; 2 uses
  %i.af = sext i32 %5 to i64
  %i.ag = udiv i64 %i.ae, %i.af
  %i.ah = add i64 %i.ag, 1                        ; 2 uses
  %i.ai = sext i32 %4 to i64
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = select i1 %.not, i64 %i.aj, i64 0       ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE5clearEv.exit
  %i.al = add nsw i32 %5, -1
  %.not113 = icmp eq i32 %4, %i.al
  br i1 %.not113, label %.thread850, label %bb.fe

bb.c:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE5clearEv.exit
  %i.am = add nsw i32 %4, 1
  %i.an = sext i32 %i.am to i64
  %i.ao = mul i64 %i.ah, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !165 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %.not376582 = icmp eq ptr %i.aq, %i.ar
  br i1 %.not376582, label %.._crit_edge_crit_edge, label %.lr.ph585.split.us.preheader

.thread850:                                       ; preds = %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !165 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %.not376582851 = icmp eq ptr %i.at, %i.au
  br i1 %.not376582851, label %.._crit_edge_crit_edge, label %.lr.ph585.split.preheader

.._crit_edge_crit_edge:                           ; preds = %.thread850, %bb.c
  %.pre715 = zext i16 %.sroa.0.0.copyload.i to i32 ; 2 uses
  %.pre716 = add nsw i32 %.pre715, -1
  %.pre718 = shl i16 %.sroa.0.0.copyload.i, 4
  br label %._crit_edge

.lr.ph585.split.preheader:                        ; preds = %.thread850
  %i.av = zext i16 %.sroa.0.0.copyload.i to i32   ; 5 uses
  %i.aw = add nsw i32 %i.av, -1                   ; 5 uses
  %i.ax = shl i16 %.sroa.0.0.copyload.i, 4        ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 444
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ba = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 4 uses
  %i.bb = insertelement <2 x i16> poison, i16 %i.ax, i64 0
  %i.bc = shufflevector <2 x i16> %i.bb, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.bd = insertelement <2 x i32> poison, i32 %i.av, i64 0
  %i.be = shufflevector <2 x i32> %i.bd, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %.lr.ph585.split

.lr.ph585.split.us.preheader:                     ; preds = %bb.c
  %i.bf = zext i16 %.sroa.0.0.copyload.i to i32   ; 3 uses
  %i.bg = add nsw i32 %i.bf, -1                   ; 2 uses
  %i.bh = shl i16 %.sroa.0.0.copyload.i, 4        ; 2 uses
  br label %.lr.ph585.split.us

.lr.ph585.split.us:                               ; preds = %.lr.ph585.split.us.preheader, %bb.g
  %.0108584.us = phi i64 [ %i.bj, %bb.g ], [ 0, %.lr.ph585.split.us.preheader ]
  %.sroa.0357.0583.us = phi ptr [ %i.bo, %bb.g ], [ %i.aq, %.lr.ph585.split.us.preheader ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0357.0583.us, i64 32
  %i.bj = add i64 %.0108584.us, 1                 ; 3 uses
  %.not114.us = icmp ugt i64 %i.bj, %i.ak
  br i1 %.not114.us, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.lr.ph585.split.us
  %i.bk = icmp ugt i64 %i.bj, %i.ao
  br i1 %i.bk, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0357.0583.us, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !206
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !445 ; 2 uses
  %.not115.us = icmp eq ptr %i.bn, null
  br i1 %.not115.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.042.0.copyload.us = load i48, ptr %i.bi, align 8, !tbaa !162
  invoke fastcc void @_ZN12_GLOBAL__N_115MeshBufListMaps12addFromBlockEN4core8vector3dIsEEP12MapBlockMeshPN5video12IVideoDriverE(ptr noundef nonnull align 8 dereferenceable(112) %i.x, i48 %.sroa.042.0.copyload.us, ptr noundef nonnull %i.bn, ptr noundef %1)
          to label %bb.g unwind label %.loopexit.split-lp412.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.f, %bb.e, %.lr.ph585.split.us
  %i.bo = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0357.0583.us) #37 ; 2 uses
  %.not376.us = icmp eq ptr %i.bo, %i.ar
  br i1 %.not376.us, label %._crit_edge, label %.lr.ph585.split.us

.lr.ph585.split:                                  ; preds = %.lr.ph585.split.preheader, %.loopexit425
  %.val.i.i707 = phi ptr [ %.val.i.i708, %.loopexit425 ], [ %i.z, %.lr.ph585.split.preheader ] ; 4 uses
  %i.bp = phi ptr [ %i.ek, %.loopexit425 ], [ %i.ac, %.lr.ph585.split.preheader ] ; 4 uses
  %.0108584 = phi i64 [ %i.br, %.loopexit425 ], [ 0, %.lr.ph585.split.preheader ]
  %.sroa.0357.0583 = phi ptr [ %i.el, %.loopexit425 ], [ %i.at, %.lr.ph585.split.preheader ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0357.0583, i64 32
  %i.br = add i64 %.0108584, 1                    ; 3 uses
  %.not114 = icmp ugt i64 %i.br, %i.ak
  br i1 %.not114, label %bb.h, label %.loopexit425

bb.h:                                             ; preds = %.lr.ph585.split
  %i.bs = icmp ugt i64 %i.br, %i.ae
  br i1 %i.bs, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.042.0.copyload = load i48, ptr %i.bq, align 8, !tbaa !162 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0357.0583, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !206
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !445 ; 3 uses
  %.not115 = icmp eq ptr %i.bv, null
  br i1 %.not115, label %.loopexit425, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 224
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !490 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 232
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !490 ; 2 uses
  %.not377580 = icmp eq ptr %i.bx, %i.bz
  br i1 %.not377580, label %.loopexit425, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %.sroa.2.0.extract.shift.i.i = lshr i48 %.sroa.042.0.copyload, 16
  %.sroa.3.0.extract.shift.i.i = lshr i48 %.sroa.042.0.copyload, 32
  %.sroa.3.0.extract.trunc.i.i = trunc nuw i48 %.sroa.3.0.extract.shift.i.i to i16 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i48 %.sroa.042.0.copyload to i16 ; 2 uses
  %.sroa.2.0.extract.trunc.i.i = trunc i48 %.sroa.2.0.extract.shift.i.i to i16 ; 2 uses
  %i.ca = sext i16 %.sroa.0.0.extract.trunc.i.i to i32
  %.lobit.i.i.i.i = lshr i16 %.sroa.0.0.extract.trunc.i.i, 15
  %i.cb = zext nneg i16 %.lobit.i.i.i.i to i32
  %i.cc = mul nuw nsw i32 %i.aw, %i.cb
  %i.cd = sub nsw i32 %i.ca, %i.cc
  %i.ce = sext i16 %.sroa.2.0.extract.trunc.i.i to i32
  %.lobit.i.i1.i.i = lshr i16 %.sroa.2.0.extract.trunc.i.i, 15
  %i.cf = zext nneg i16 %.lobit.i.i1.i.i to i32
  %i.cg = mul nuw nsw i32 %i.aw, %i.cf
  %i.ch = sub nsw i32 %i.ce, %i.cg
  %i.ci = insertelement <2 x i32> poison, i32 %i.cd, i64 0
  %i.cj = insertelement <2 x i32> %i.ci, i32 %i.ch, i64 1
  %i.ck = sdiv <2 x i32> %i.cj, %i.be
  %i.cl = trunc <2 x i32> %i.ck to <2 x i16>
  %i.cm = sext i16 %.sroa.3.0.extract.trunc.i.i to i32
  %.lobit.i.i2.i.i = lshr i16 %.sroa.3.0.extract.trunc.i.i, 15
  %i.cn = zext nneg i16 %.lobit.i.i2.i.i to i32
  %i.co = mul nuw nsw i32 %i.aw, %i.cn
  %i.cp = sub nsw i32 %i.cm, %i.co
  %i.cq = sdiv i32 %i.cp, %i.av
  %i.cr = trunc i32 %i.cq to i16
  %i.cs = mul <2 x i16> %i.bc, %i.cl
  %i.ct = mul i16 %i.ax, %i.cr
  %.pre705 = load ptr, ptr %i.ba, align 8, !tbaa !49
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJN4core8vector3dIfEEPK17PartialMeshBufferEEERS1_DpOT_.exit
  %.val.i.i = phi ptr [ %.val.i.i707, %.lr.ph ], [ %.val.i.i709, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJN4core8vector3dIfEEPK17PartialMeshBufferEEERS1_DpOT_.exit ] ; 6 uses
  %i.cu = phi ptr [ %.pre705, %.lr.ph ], [ %i.eh, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJN4core8vector3dIfEEPK17PartialMeshBufferEEERS1_DpOT_.exit ] ; 4 uses
  %i.cv = phi ptr [ %i.bp, %.lr.ph ], [ %i.ei, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJN4core8vector3dIfEEPK17PartialMeshBufferEEERS1_DpOT_.exit ] ; 5 uses
  %.sroa.0353.0581 = phi ptr [ %i.bx, %.lr.ph ], [ %i.ej, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJN4core8vector3dIfEEPK17PartialMeshBufferEEERS1_DpOT_.exit ] ; 3 uses
  %i.cw = load i16, ptr %i.az, align 8, !tbaa !159
  %i.cx = sub i16 %i.ct, %i.cw
  %i.cy = sitofp nsz i16 %i.cx to float
  %i.cz = load <2 x i16>, ptr %i.ay, align 4, !tbaa !162
  %i.da = sub <2 x i16> %i.cs, %i.cz
  %i.db = sitofp nsz <2 x i16> %i.da to <2 x float>
  %i.dc = fmul nnan nsz <2 x float> %i.db, splat (float 1.000000e+01) ; 2 uses
  %i.dd = fmul nnan nsz float %i.cy, 1.000000e+01 ; 2 uses
  %.not.i = icmp eq ptr %i.cv, %i.cu
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store <2 x float> %i.dc, ptr %i.cv, align 8, !tbaa !82
  %.sroa.23.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store float %i.dd, ptr %.sroa.23.0..sroa_idx.i.i, align 8, !tbaa !82
  %i.de = getelementptr inbounds nuw i8, ptr %i.cv, i64 12 ; 2 uses
  %i.df = load i8, ptr %i.de, align 4
  %i.dg = and i8 %i.df, -4
  %i.dh = or disjoint i8 %i.dg, 2
  store i8 %i.dh, ptr %i.de, align 4
  %i.di = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store ptr %.sroa.0353.0581, ptr %i.di, align 8, !tbaa !65
  %i.dj = load ptr, ptr %i.aa, align 8, !tbaa !443
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24 ; 2 uses
  store ptr %i.dk, ptr %i.aa, align 8, !tbaa !443
  %.pre = load ptr, ptr %i.ba, align 8, !tbaa !49
  br label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJN4core8vector3dIfEEPK17PartialMeshBufferEEERS1_DpOT_.exit

bb.m:                                             ; preds = %bb.k
  %i.dl = ptrtoint ptr %i.cu to i64
  %i.dm = ptrtoint ptr %.val.i.i to i64           ; 2 uses
  %i.dn = sub i64 %i.dl, %i.dm                    ; 3 uses
  %i.do = icmp eq i64 %i.dn, 9223372036854775800
  br i1 %i.do, label %bb.n, label %_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #36
          to label %.noexc unwind label %.loopexit.split-lp412.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.n
  unreachable

_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.m
  %i.dp = sdiv exact i64 %i.dn, 24                ; 3 uses
  %i.dq = icmp eq ptr %i.cu, %.val.i.i            ; 2 uses
  %.sroa.speculated.i.i.i = select i1 %i.dq, i64 1, i64 %i.dp
  %i.dr = add nsw i64 %.sroa.speculated.i.i.i, %i.dp ; 2 uses
  %i.ds = icmp ult i64 %i.dr, %i.dp
  %i.dt = call i64 @llvm.umin.i64(i64 %i.dr, i64 384307168202282325)
  %i.du = select i1 %i.ds, i64 384307168202282325, i64 %i.dt ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.du, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.dv = mul nuw nsw i64 %i.du, 24
  %i.dw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dv) #38
          to label %.noexc160 unwind label %.loopexit.split-lp412.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc160:                                        ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dn ; 4 uses
  store <2 x float> %i.dc, ptr %i.dx, align 8, !tbaa !82
  %.sroa.23.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store float %i.dd, ptr %.sroa.23.0..sroa_idx.i.i.i, align 8, !tbaa !82
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 12
  store i8 2, ptr %i.dy, align 4
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  store ptr %.sroa.0353.0581, ptr %i.dz, align 8, !tbaa !65
  br i1 %i.dq, label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc160, %.lr.ph.i.i.i.i.i
  %.03.i.i.i.i.i = phi ptr [ %i.eb, %.lr.ph.i.i.i.i.i ], [ %i.dw, %.noexc160 ] ; 2 uses
  %.092.i.i.i.i.i = phi ptr [ %i.ea, %.lr.ph.i.i.i.i.i ], [ %.val.i.i, %.noexc160 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.03.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.092.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !491, !alias.scope !947
  %i.ea = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 24 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ea, %i.cu
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !6

_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc160
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.dw, %.noexc160 ], [ %i.eb, %.lr.ph.i.i.i.i.i ]
  %i.ec = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i38.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i38.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJN4core8vector3dIfEEPK17PartialMeshBufferEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i
  %i.ed = load ptr, ptr %i.ba, align 8, !tbaa !49
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = sub i64 %i.ee, %i.dm
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i, i64 noundef %i.ef) #34
  br label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJN4core8vector3dIfEEPK17PartialMeshBufferEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJN4core8vector3dIfEEPK17PartialMeshBufferEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.o, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i
  store ptr %i.dw, ptr %i.y, align 8, !tbaa !48
  store ptr %i.ec, ptr %i.aa, align 8, !tbaa !443
  %i.eg = getelementptr inbounds nuw [24 x i8], ptr %i.dw, i64 %i.du ; 2 uses
  store ptr %i.eg, ptr %i.ba, align 8, !tbaa !49
  br label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJN4core8vector3dIfEEPK17PartialMeshBufferEEERS1_DpOT_.exit

_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJN4core8vector3dIfEEPK17PartialMeshBufferEEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJN4core8vector3dIfEEPK17PartialMeshBufferEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.l
  %.val.i.i709 = phi ptr [ %i.dw, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJN4core8vector3dIfEEPK17PartialMeshBufferEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.val.i.i, %bb.l ] ; 2 uses
  %i.eh = phi ptr [ %i.eg, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJN4core8vector3dIfEEPK17PartialMeshBufferEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.pre, %bb.l ]
  %i.ei = phi ptr [ %i.ec, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJN4core8vector3dIfEEPK17PartialMeshBufferEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.dk, %bb.l ] ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0353.0581, i64 16 ; 2 uses
  %.not377 = icmp eq ptr %i.ej, %i.bz
  br i1 %.not377, label %.loopexit425, label %bb.k

.loopexit425:                                     ; preds = %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJN4core8vector3dIfEEPK17PartialMeshBufferEEERS1_DpOT_.exit, %bb.j, %.lr.ph585.split, %bb.i
  %.val.i.i708 = phi ptr [ %.val.i.i707, %bb.i ], [ %.val.i.i707, %bb.j ], [ %.val.i.i707, %.lr.ph585.split ], [ %.val.i.i709, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJN4core8vector3dIfEEPK17PartialMeshBufferEEERS1_DpOT_.exit ]
  %i.ek = phi ptr [ %i.bp, %bb.i ], [ %i.bp, %bb.j ], [ %i.bp, %.lr.ph585.split ], [ %i.ei, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJN4core8vector3dIfEEPK17PartialMeshBufferEEERS1_DpOT_.exit ]
  %i.el = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0357.0583) #37 ; 2 uses
  %.not376 = icmp eq ptr %i.el, %i.au
  br i1 %.not376, label %._crit_edge, label %.lr.ph585.split

._crit_edge:                                      ; preds = %.loopexit425, %bb.h, %bb.g, %bb.d, %.._crit_edge_crit_edge
  %.pre-phi719 = phi i16 [ %.pre718, %.._crit_edge_crit_edge ], [ %i.bh, %bb.g ], [ %i.bh, %bb.d ], [ %i.ax, %bb.h ], [ %i.ax, %.loopexit425 ] ; 2 uses
  %.pre-phi717 = phi i32 [ %.pre716, %.._crit_edge_crit_edge ], [ %i.bg, %bb.g ], [ %i.bg, %bb.d ], [ %i.aw, %bb.h ], [ %i.aw, %.loopexit425 ] ; 3 uses
  %.pre-phi = phi i32 [ %.pre715, %.._crit_edge_crit_edge ], [ %i.bf, %bb.g ], [ %i.bf, %bb.d ], [ %i.av, %bb.h ], [ %i.av, %.loopexit425 ] ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 444
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.er = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 6 uses
  %i.es = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  %i.et = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 7 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ey = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ez = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.fa = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.fb = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.fc = insertelement <2 x i16> poison, i16 %.pre-phi719, i64 0
  %i.fd = shufflevector <2 x i16> %i.fc, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.fe = insertelement <2 x i32> poison, i32 %.pre-phi, i64 0
  %i.ff = shufflevector <2 x i32> %i.fe, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %bb.p

._crit_edge.i.i:                                  ; preds = %._crit_edge593
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #2
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #2
  %i.fg = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.fg, ptr %12, align 8, !tbaa !177
  %i.fh = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.fh, align 8, !tbaa !176
  store i8 0, ptr %i.fg, align 8, !tbaa !65
  %i.fi = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.fi, ptr %11, align 8, !tbaa !177
  %i.fj = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.fj, align 8, !tbaa !176
  store i8 0, ptr %i.fi, align 8, !tbaa !65
  %i.fk = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr null, ptr %i.fk, align 8, !tbaa !438
  %i.fl = getelementptr inbounds nuw i8, ptr %11, i64 48
  store i8 1, ptr %i.fl, align 8, !tbaa !439
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(50) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i unwind label %bb.co

bb.p:                                             ; preds = %._crit_edge, %._crit_edge593
  %.0107.idx594 = phi i64 [ 0, %._crit_edge ], [ %.0107.add, %._crit_edge593 ] ; 2 uses
  %.0107.ptr = getelementptr inbounds nuw i8, ptr %i.x, i64 %.0107.idx594
  %i.fm = getelementptr inbounds nuw i8, ptr %.0107.ptr, i64 16
  %.sroa.0348.0588 = load ptr, ptr %i.fm, align 8, !tbaa !243 ; 2 uses
  %.not378589 = icmp eq ptr %.sroa.0348.0588, null
  br i1 %.not378589, label %._crit_edge593, label %.lr.ph592

._crit_edge593:                                   ; preds = %bb.cn, %bb.p
  %.0107.add = add nuw nsw i64 %.0107.idx594, 56  ; 2 uses
  %.not118 = icmp eq i64 %.0107.add, 112
  br i1 %.not118, label %._crit_edge.i.i, label %bb.p

.lr.ph592:                                        ; preds = %bb.p, %bb.cn
  %.sroa.0348.0590 = phi ptr [ %.sroa.0348.0, %bb.cn ], [ %.sroa.0348.0588, %bb.p ] ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.0348.0590, i64 136 ; 3 uses
  %i.fo = load ptr, ptr @g_settings, align 8, !tbaa !171
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #2
  store ptr %i.en, ptr %7, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #2
  store i64 24, ptr %i.d, align 8, !tbaa !178
  %i.fp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc.i162 unwind label %bb.t ; 2 uses

.noexc.i162:                                      ; preds = %.lr.ph592
  store ptr %i.fp, ptr %7, align 8, !tbaa !64
  %i.fq = load i64, ptr %i.d, align 8, !tbaa !178 ; 3 uses
  store i64 %i.fq, ptr %i.en, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.fp, ptr noundef nonnull align 1 dereferenceable(24) @.str.55, i64 24, i1 false)
  store i64 %i.fq, ptr %i.eo, align 8, !tbaa !176
  %i.fr = load ptr, ptr %7, align 8, !tbaa !64
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fq
  store i8 0, ptr %i.fs, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #2
  %i.ft = invoke noundef i32 @_ZNK8Settings6getU32ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.fo, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.q unwind label %bb.u       ; 2 uses

bb.q:                                             ; preds = %.noexc.i162
  %i.fu = load ptr, ptr %7, align 8, !tbaa !64    ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.en
  br i1 %i.fv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.q
  %i.fw = load i64, ptr %i.en, align 8, !tbaa !65
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fx) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
end_hunk_7
begin_hunk_8_@_ZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNS0_9SMaterialEbEEiii:.invoke
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.020.i.ptr.i.i.i.i, i64 16, i1 false)
  %i.ji = getelementptr i8, ptr %.pn19.i.i.i.i.i, i64 16
  %.val2.i7.i.i.i.i.i.i = load ptr, ptr %i.ji, align 8, !tbaa !500 ; 2 uses
  %i.jj = icmp ult ptr %.val.i.i.i.i.i.i, %.val2.i7.i.i.i.i.i.i
  br i1 %i.jj, label %.lr.ph.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.z, %.lr.ph.i.i.i.i.i.i
  %i.jk = phi ptr [ %.val2.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.val2.i7.i.i.i.i.i.i, %bb.z ]
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.08.020.i.ptr.i.i.i.i, %bb.z ] ; 4 uses
  %.sroa.0.0.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 -24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !501
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 16
  store ptr %i.jk, ptr %i.jl, align 8, !tbaa !500
  %i.jm = getelementptr i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 -32
  %.val2.i.i.i.i.i.i.i = load ptr, ptr %i.jm, align 8, !tbaa !500 ; 2 uses
  %i.jn = icmp ult ptr %.val.i.i.i.i.i.i, %.val2.i.i.i.i.i.i.i
  br i1 %i.jn, label %.lr.ph.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i.i.i.i.i", !llvm.loop !910

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i, %bb.z
  %.sroa.04.0.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.08.020.i.ptr.i.i.i.i, %bb.z ], [ %.sroa.0.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.04.0.lcssa.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.03.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !501
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i.i.i.i.i, i64 16
  store ptr %.val.i.i.i.i.i.i, ptr %i.jo, align 8, !tbaa !500
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i.i.i.i.i)
  %.val1.i.pre.i.i.i.i.i = load ptr, ptr %i.ik, align 8, !tbaa !500
  br label %bb.aa

bb.aa:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i.i.i.i
  %.val1.i24.i.i.i.i.i = phi ptr [ %.val.i.i.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i.i.i.i ], [ %.val1.i.pre.i.i.i.i.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i.i.i.i.i" ]
  %.sroa.08.020.i.add.i.i.i.i = add nuw nsw i64 %.sroa.08.020.i.idx.i.i.i.i, 24 ; 2 uses
  %.not.i.i.i.i.i169 = icmp eq i64 %.sroa.08.020.i.add.i.i.i.i, 384
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i.i.i169, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S1N_.exit.i.i.i.i", label %bb.y, !llvm.loop !911

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S1N_.exit.i.i.i.i": ; preds = %bb.aa
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.0203.1.i, i64 384 ; 2 uses
  %.not6.i.i.i.i.i = icmp eq ptr %i.jp, %.sroa.13.1.i
  br i1 %.not6.i.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSH_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISR_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISX_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS18_ESt8equal_toIS18_ESaIS2_IKS18_S19_EEEEUlRKS11_RKT0_E_EvS11_S11_S1L_.exit.i", label %.lr.ph.i13.i.i.i.i

.lr.ph.i13.i.i.i.i:                               ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S1N_.exit.i.i.i.i", %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i15.i.i.i.i"
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.jx, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i15.i.i.i.i" ], [ %i.jp, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S1N_.exit.i.i.i.i" ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i12.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i12.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.07.i.i.i.i.i, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8 ; 3 uses
  %i.jq = getelementptr i8, ptr %.sroa.0.07.i.i.i.i.i, i64 -8
  %.val2.i7.i.i14.i.i.i.i = load ptr, ptr %i.jq, align 8, !tbaa !500 ; 2 uses
  %i.jr = icmp ult ptr %.sroa.4.0.copyload.i.i.i.i.i.i, %.val2.i7.i.i14.i.i.i.i
  br i1 %i.jr, label %.lr.ph.i.i18.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i15.i.i.i.i"

.lr.ph.i.i18.i.i.i.i:                             ; preds = %.lr.ph.i13.i.i.i.i, %.lr.ph.i.i18.i.i.i.i
  %i.js = phi ptr [ %.val2.i.i.i21.i.i.i.i, %.lr.ph.i.i18.i.i.i.i ], [ %.val2.i7.i.i14.i.i.i.i, %.lr.ph.i13.i.i.i.i ]
  %.sroa.04.08.i.i19.i.i.i.i = phi ptr [ %.sroa.0.0.i.i20.i.i.i.i, %.lr.ph.i.i18.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i, %.lr.ph.i13.i.i.i.i ] ; 4 uses
  %.sroa.0.0.i.i20.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.04.08.i.i19.i.i.i.i, i64 -24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i19.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i20.i.i.i.i, i64 12, i1 false), !tbaa.struct !501
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i19.i.i.i.i, i64 16
  store ptr %i.js, ptr %i.jt, align 8, !tbaa !500
  %i.ju = getelementptr i8, ptr %.sroa.04.08.i.i19.i.i.i.i, i64 -32
  %.val2.i.i.i21.i.i.i.i = load ptr, ptr %i.ju, align 8, !tbaa !500 ; 2 uses
  %i.jv = icmp ult ptr %.sroa.4.0.copyload.i.i.i.i.i.i, %.val2.i.i.i21.i.i.i.i
  br i1 %i.jv, label %.lr.ph.i.i18.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i15.i.i.i.i", !llvm.loop !910

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i15.i.i.i.i": ; preds = %.lr.ph.i.i18.i.i.i.i, %.lr.ph.i13.i.i.i.i
  %.sroa.04.0.lcssa.i.i16.i.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i.i, %.lr.ph.i13.i.i.i.i ], [ %.sroa.0.0.i.i20.i.i.i.i, %.lr.ph.i.i18.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.04.0.lcssa.i.i16.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.03.i.i12.i.i.i.i, i64 12, i1 false), !tbaa.struct !501
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i16.i.i.i.i, i64 16
  store ptr %.sroa.4.0.copyload.i.i.i.i.i.i, ptr %i.jw, align 8, !tbaa !500
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i12.i.i.i.i)
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i17.i.i.i.i = icmp eq ptr %i.jx, %.sroa.13.1.i
  br i1 %.not.i17.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSH_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISR_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISX_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS18_ESt8equal_toIS18_ESaIS2_IKS18_S19_EEEEUlRKS11_RKT0_E_EvS11_S11_S1L_.exit.i", label %.lr.ph.i13.i.i.i.i, !llvm.loop !912

.preheader.i24.i.i.i.i:                           ; preds = %bb.x
  %.sroa.08.017.i25.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0203.1.i, i64 24 ; 2 uses
  %.not18.i26.i.i.i.i = icmp eq ptr %.sroa.08.017.i25.i.i.i.i, %.sroa.13.1.i
  br i1 %.not18.i26.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSH_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISR_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISX_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS18_ESt8equal_toIS18_ESaIS2_IKS18_S19_EEEEUlRKS11_RKT0_E_EvS11_S11_S1L_.exit.i", label %.lr.ph.i27.i.i.i.i

.lr.ph.i27.i.i.i.i:                               ; preds = %.preheader.i24.i.i.i.i
  %i.jy = getelementptr i8, ptr %.sroa.0203.1.i, i64 16 ; 3 uses
  %.val1.i.pre22.i28.i.i.i.i = load ptr, ptr %i.jy, align 8, !tbaa !500
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ae, %.lr.ph.i27.i.i.i.i
  %.val1.i.i29.i.i.i.i = phi ptr [ %.val1.i.pre22.i28.i.i.i.i, %.lr.ph.i27.i.i.i.i ], [ %.val1.i24.i37.i.i.i.i, %bb.ae ]
  %.sroa.08.020.i30.i.i.i.i = phi ptr [ %.sroa.08.017.i25.i.i.i.i, %.lr.ph.i27.i.i.i.i ], [ %.sroa.08.0.i38.i.i.i.i, %bb.ae ] ; 8 uses
  %.pn19.i31.i.i.i.i = phi ptr [ %.sroa.0203.1.i, %.lr.ph.i27.i.i.i.i ], [ %.sroa.08.020.i30.i.i.i.i, %bb.ae ] ; 3 uses
  %i.jz = getelementptr i8, ptr %.pn19.i31.i.i.i.i, i64 40
  %.val.i.i32.i.i.i.i = load ptr, ptr %i.jz, align 8, !tbaa !500 ; 6 uses
  %i.ka = icmp ult ptr %.val.i.i32.i.i.i.i, %.val1.i.i29.i.i.i.i
  br i1 %i.ka, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i23.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i23.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.020.i30.i.i.i.i, i64 16, i1 false)
  %i.kb = ptrtoint ptr %.sroa.08.020.i30.i.i.i.i to i64
  %i.kc = sub i64 %i.kb, %i.id                    ; 2 uses
  %i.kd = icmp sgt i64 %i.kc, 0
  br i1 %i.kd, label %.lr.ph.preheader.i.i.i.i.i.i45.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i44.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i45.i.i.i.i:           ; preds = %bb.ac
  %i.ke = getelementptr inbounds nuw i8, ptr %.pn19.i31.i.i.i.i, i64 48
  %i.kf = udiv exact i64 %i.kc, 24
  br label %.lr.ph.i.i.i.i.i.i46.i.i.i.i

.lr.ph.i.i.i.i.i.i46.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i46.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i45.i.i.i.i
  %.010.i.i.i.i.i.i47.i.i.i.i = phi i64 [ %i.kl, %.lr.ph.i.i.i.i.i.i46.i.i.i.i ], [ %i.kf, %.lr.ph.preheader.i.i.i.i.i.i45.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i.i48.i.i.i.i = phi ptr [ %i.kh, %.lr.ph.i.i.i.i.i.i46.i.i.i.i ], [ %i.ke, %.lr.ph.preheader.i.i.i.i.i.i45.i.i.i.i ] ; 2 uses
  %.078.i.i.i.i.i.i49.i.i.i.i = phi ptr [ %i.kg, %.lr.ph.i.i.i.i.i.i46.i.i.i.i ], [ %.sroa.08.020.i30.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i45.i.i.i.i ] ; 2 uses
  %i.kg = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i49.i.i.i.i, i64 -24 ; 2 uses
  %i.kh = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i48.i.i.i.i, i64 -24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kh, ptr noundef nonnull align 8 dereferenceable(24) %i.kg, i64 12, i1 false), !tbaa.struct !501
  %i.ki = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i49.i.i.i.i, i64 -8
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !56
  %i.kk = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i48.i.i.i.i, i64 -8
  store ptr %i.kj, ptr %i.kk, align 8, !tbaa !500
  %i.kl = add nsw i64 %.010.i.i.i.i.i.i47.i.i.i.i, -1
  %i.km = icmp samesign ugt i64 %.010.i.i.i.i.i.i47.i.i.i.i, 1
  br i1 %i.km, label %.lr.ph.i.i.i.i.i.i46.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i44.i.i.i.i, !llvm.loop !7

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i44.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i46.i.i.i.i, %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0203.1.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0.i23.i.i.i.i, i64 12, i1 false), !tbaa.struct !501
  store ptr %.val.i.i32.i.i.i.i, ptr %i.jy, align 8, !tbaa !500
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i23.i.i.i.i)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i22.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i22.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.020.i30.i.i.i.i, i64 16, i1 false)
  %i.kn = getelementptr i8, ptr %.pn19.i31.i.i.i.i, i64 16
  %.val2.i7.i.i33.i.i.i.i = load ptr, ptr %i.kn, align 8, !tbaa !500 ; 2 uses
  %i.ko = icmp ult ptr %.val.i.i32.i.i.i.i, %.val2.i7.i.i33.i.i.i.i
  br i1 %i.ko, label %.lr.ph.i.i40.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i34.i.i.i.i"

.lr.ph.i.i40.i.i.i.i:                             ; preds = %bb.ad, %.lr.ph.i.i40.i.i.i.i
  %i.kp = phi ptr [ %.val2.i.i.i43.i.i.i.i, %.lr.ph.i.i40.i.i.i.i ], [ %.val2.i7.i.i33.i.i.i.i, %bb.ad ]
  %.sroa.04.08.i.i41.i.i.i.i = phi ptr [ %.sroa.0.0.i.i42.i.i.i.i, %.lr.ph.i.i40.i.i.i.i ], [ %.sroa.08.020.i30.i.i.i.i, %bb.ad ] ; 4 uses
  %.sroa.0.0.i.i42.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.04.08.i.i41.i.i.i.i, i64 -24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i41.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i42.i.i.i.i, i64 12, i1 false), !tbaa.struct !501
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i41.i.i.i.i, i64 16
  store ptr %i.kp, ptr %i.kq, align 8, !tbaa !500
  %i.kr = getelementptr i8, ptr %.sroa.04.08.i.i41.i.i.i.i, i64 -32
  %.val2.i.i.i43.i.i.i.i = load ptr, ptr %i.kr, align 8, !tbaa !500 ; 2 uses
  %i.ks = icmp ult ptr %.val.i.i32.i.i.i.i, %.val2.i.i.i43.i.i.i.i
  br i1 %i.ks, label %.lr.ph.i.i40.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i34.i.i.i.i", !llvm.loop !910

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i34.i.i.i.i": ; preds = %.lr.ph.i.i40.i.i.i.i, %bb.ad
  %.sroa.04.0.lcssa.i.i35.i.i.i.i = phi ptr [ %.sroa.08.020.i30.i.i.i.i, %bb.ad ], [ %.sroa.0.0.i.i42.i.i.i.i, %.lr.ph.i.i40.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.04.0.lcssa.i.i35.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.03.i.i22.i.i.i.i, i64 12, i1 false), !tbaa.struct !501
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i35.i.i.i.i, i64 16
  store ptr %.val.i.i32.i.i.i.i, ptr %i.kt, align 8, !tbaa !500
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i22.i.i.i.i)
  %.val1.i.pre.i36.i.i.i.i = load ptr, ptr %i.jy, align 8, !tbaa !500
  br label %bb.ae

bb.ae:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i34.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i44.i.i.i.i
  %.val1.i24.i37.i.i.i.i = phi ptr [ %.val.i.i32.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i44.i.i.i.i ], [ %.val1.i.pre.i36.i.i.i.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i34.i.i.i.i" ]
  %.sroa.08.0.i38.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.020.i30.i.i.i.i, i64 24 ; 2 uses
  %.not.i39.i.i.i.i = icmp eq ptr %.sroa.08.0.i38.i.i.i.i, %.sroa.13.1.i
  br i1 %.not.i39.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSH_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISR_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISX_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS18_ESt8equal_toIS18_ESaIS2_IKS18_S19_EEEEUlRKS11_RKT0_E_EvS11_S11_S1L_.exit.i", label %bb.ab, !llvm.loop !911

bb.af:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEERS1_DpOT_.exit.i, %.lr.ph283.i
  %.sroa.0201.0281.i = phi ptr [ %.pre.i, %.lr.ph283.i ], [ %i.ku, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEERS1_DpOT_.exit.i ] ; 2 uses
  %.sroa.21.0280.i = phi ptr [ null, %.lr.ph283.i ], [ %.sroa.21.1.i, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEERS1_DpOT_.exit.i ] ; 8 uses
  %.sroa.13.0279.i = phi ptr [ null, %.lr.ph283.i ], [ %.sroa.13.1.i, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEERS1_DpOT_.exit.i ] ; 7 uses
  %.sroa.0203.0278.i = phi ptr [ null, %.lr.ph283.i ], [ %.sroa.0203.1.i, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEERS1_DpOT_.exit.i ] ; 9 uses
  %i.ku = getelementptr inbounds i8, ptr %.sroa.0201.0281.i, i64 -16 ; 3 uses
  %.sroa.024.0.copyload.i = load i48, ptr %i.ku, align 8, !tbaa !162 ; 3 uses
  %.sroa.2.0.extract.shift.i.i.i = lshr i48 %.sroa.024.0.copyload.i, 16
  %.sroa.3.0.extract.shift.i.i.i = lshr i48 %.sroa.024.0.copyload.i, 32
  %.sroa.3.0.extract.trunc.i.i.i = trunc nuw i48 %.sroa.3.0.extract.shift.i.i.i to i16 ; 2 uses
  %i.kv = sext i16 %.sroa.3.0.extract.trunc.i.i.i to i32
  %.lobit.i.i2.i.i.i = lshr i16 %.sroa.3.0.extract.trunc.i.i.i, 15
  %i.kw = zext nneg i16 %.lobit.i.i2.i.i.i to i32
  %i.kx = mul nuw nsw i32 %.pre-phi717, %i.kw
  %i.ky = sub nsw i32 %i.kv, %i.kx
  %i.kz = sdiv i32 %i.ky, %.pre-phi
  %i.la = trunc i32 %i.kz to i16
  %i.lb = mul i16 %.pre-phi719, %i.la
  %i.lc = load i16, ptr %i.eq, align 8, !tbaa !159
  %i.ld = sub i16 %i.lb, %i.lc
  %i.le = sitofp nsz i16 %i.ld to float
  %.sroa.0.0.extract.trunc.i.i.i = trunc i48 %.sroa.024.0.copyload.i to i16 ; 2 uses
  %.sroa.2.0.extract.trunc.i.i.i = trunc i48 %.sroa.2.0.extract.shift.i.i.i to i16 ; 2 uses
  %i.lf = sext i16 %.sroa.0.0.extract.trunc.i.i.i to i32
  %.lobit.i.i.i.i.i = lshr i16 %.sroa.0.0.extract.trunc.i.i.i, 15
  %i.lg = zext nneg i16 %.lobit.i.i.i.i.i to i32
  %i.lh = mul nuw nsw i32 %.pre-phi717, %i.lg
  %i.li = sub nsw i32 %i.lf, %i.lh
  %i.lj = sext i16 %.sroa.2.0.extract.trunc.i.i.i to i32
  %.lobit.i.i1.i.i.i = lshr i16 %.sroa.2.0.extract.trunc.i.i.i, 15
  %i.lk = zext nneg i16 %.lobit.i.i1.i.i.i to i32
  %i.ll = mul nuw nsw i32 %.pre-phi717, %i.lk
  %i.lm = sub nsw i32 %i.lj, %i.ll
  %i.ln = insertelement <2 x i32> poison, i32 %i.li, i64 0
  %i.lo = insertelement <2 x i32> %i.ln, i32 %i.lm, i64 1
  %i.lp = sdiv <2 x i32> %i.lo, %i.ff
  %i.lq = trunc <2 x i32> %i.lp to <2 x i16>
  %i.lr = mul <2 x i16> %i.fd, %i.lq
  %i.ls = load <2 x i16>, ptr %i.ep, align 4, !tbaa !162
  %i.lt = sub <2 x i16> %i.lr, %i.ls
  %i.lu = sitofp nsz <2 x i16> %i.lt to <2 x float>
  %i.lv = fmul nnan nsz <2 x float> %i.lu, splat (float 1.000000e+01) ; 4 uses
  %i.lw = fmul nnan nsz float %i.le, 1.000000e+01 ; 4 uses
  %i.lx = getelementptr inbounds i8, ptr %.sroa.0201.0281.i, i64 -8
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !498 ; 6 uses
  br i1 %i.gm, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !58
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 16
  %i.mb = load ptr, ptr %i.ma, align 8
  %i.mc = invoke noundef ptr %i.mb(ptr noundef nonnull align 8 dereferenceable(8) %i.ly)
          to label %.noexc96.i unwind label %.loopexit.split-lp241.i.loopexit.split-lp.loopexit.split-lp, !inline_history !8 ; 2 uses

.noexc96.i:                                       ; preds = %bb.ag
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !58
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 16
  %i.mf = load ptr, ptr %i.me, align 8
  %i.mg = invoke noundef i32 %i.mf(ptr noundef nonnull align 8 dereferenceable(28) %i.mc)
          to label %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit.i unwind label %.loopexit.split-lp241.i.loopexit.split-lp.loopexit.split-lp, !inline_history !8

_ZNK5scene11IMeshBuffer14getVertexCountEv.exit.i: ; preds = %.noexc96.i
  %.not80.i = icmp ult i32 %i.mg, %i.ft
  br i1 %.not80.i, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit.i, %bb.af
  %i.mh = load ptr, ptr %i.aa, align 8, !tbaa !443 ; 8 uses
  %i.mi = load ptr, ptr %i.er, align 8, !tbaa !49
  %.not.i98.i = icmp eq ptr %i.mh, %i.mi
  br i1 %.not.i98.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store <2 x float> %i.lv, ptr %i.mh, align 8, !tbaa !82
  %.sroa.23.0..sroa_idx.i.i.i164 = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  store float %i.lw, ptr %.sroa.23.0..sroa_idx.i.i.i164, align 8, !tbaa !82
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mh, i64 12 ; 2 uses
  %i.mk = load i8, ptr %i.mj, align 4
  %i.ml = and i8 %i.mk, -4
  %i.mm = or disjoint i8 %i.ml, 1
  store i8 %i.mm, ptr %i.mj, align 4
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  store ptr %i.ly, ptr %i.mn, align 8, !tbaa !65
  %i.mo = load ptr, ptr %i.aa, align 8, !tbaa !443
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 24
  store ptr %i.mp, ptr %i.aa, align 8, !tbaa !443
  br label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEERS1_DpOT_.exit.i

bb.aj:                                            ; preds = %bb.ah
  %.val.i.i.i = load ptr, ptr %i.y, align 8, !tbaa !48 ; 5 uses
  %i.mq = ptrtoint ptr %i.mh to i64
  %i.mr = ptrtoint ptr %.val.i.i.i to i64         ; 2 uses
  %i.ms = sub i64 %i.mq, %i.mr                    ; 3 uses
  %i.mt = icmp eq i64 %i.ms, 9223372036854775800
  br i1 %i.mt, label %.invoke1030, label %_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

.invoke1030:                                      ; preds = %bb.aj, %bb.an
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #36
          to label %.cont unwind label %.loopexit.split-lp241.i.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke1030
  unreachable

_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.aj
  %i.mu = sdiv exact i64 %i.ms, 24                ; 3 uses
  %i.mv = icmp eq ptr %i.mh, %.val.i.i.i          ; 2 uses
  %.sroa.speculated.i.i.i.i = select i1 %i.mv, i64 1, i64 %i.mu
  %i.mw = add nsw i64 %.sroa.speculated.i.i.i.i, %i.mu ; 2 uses
  %i.mx = icmp ult i64 %i.mw, %i.mu
  %i.my = call i64 @llvm.umin.i64(i64 %i.mw, i64 384307168202282325)
  %i.mz = select i1 %i.mx, i64 384307168202282325, i64 %i.my ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.mz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.na = mul nuw nsw i64 %i.mz, 24
  %i.nb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.na) #38
          to label %.noexc101.i unwind label %.loopexit.split-lp241.i.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc101.i:                                      ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 %i.ms ; 4 uses
  store <2 x float> %i.lv, ptr %i.nc, align 8, !tbaa !82
  %.sroa.23.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.nc, i64 8
  store float %i.lw, ptr %.sroa.23.0..sroa_idx.i.i.i.i, align 8, !tbaa !82
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 12
  store i8 1, ptr %i.nd, align 4
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nc, i64 16
  store ptr %i.ly, ptr %i.ne, align 8, !tbaa !65
  br i1 %i.mv, label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i.i, label %.lr.ph.i.i.i.i.i99.i

.lr.ph.i.i.i.i.i99.i:                             ; preds = %.noexc101.i, %.lr.ph.i.i.i.i.i99.i
  %.03.i.i.i.i.i.i = phi ptr [ %i.ng, %.lr.ph.i.i.i.i.i99.i ], [ %i.nb, %.noexc101.i ] ; 2 uses
  %.092.i.i.i.i.i.i = phi ptr [ %i.nf, %.lr.ph.i.i.i.i.i99.i ], [ %.val.i.i.i, %.noexc101.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.03.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.092.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !491, !alias.scope !950
  %i.nf = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.nf, %i.mh
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i.i, label %.lr.ph.i.i.i.i.i99.i, !llvm.loop !6

_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i.i: ; preds = %.lr.ph.i.i.i.i.i99.i, %.noexc101.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.nb, %.noexc101.i ], [ %i.ng, %.lr.ph.i.i.i.i.i99.i ]
  %i.nh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24
  %.not.i38.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i38.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i.i
  %i.ni = load ptr, ptr %i.er, align 8, !tbaa !49
  %i.nj = ptrtoint ptr %i.ni to i64
  %i.nk = sub i64 %i.nj, %i.mr
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.nk) #34
  br label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.ak, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i.i
  store ptr %i.nb, ptr %i.y, align 8, !tbaa !48
  store ptr %i.nh, ptr %i.aa, align 8, !tbaa !443
  %i.nl = getelementptr inbounds nuw [24 x i8], ptr %i.nb, i64 %i.mz
  store ptr %i.nl, ptr %i.er, align 8, !tbaa !49
  br label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEERS1_DpOT_.exit.i

.loopexit.split-lp241.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ag, %.noexc96.i, %_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %_ZNKSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i, %.invoke1030
  %lpad.loopexit.split-lp1076 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp241.i

bb.al:                                            ; preds = %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit.i
  %.not.i102.i = icmp eq ptr %.sroa.13.0279.i, %.sroa.21.0280.i
  br i1 %.not.i102.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  store <2 x float> %i.lv, ptr %.sroa.13.0279.i, align 8, !tbaa !82
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.13.0279.i, i64 8
  store float %i.lw, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !82
  %i.nm = getelementptr inbounds nuw i8, ptr %.sroa.13.0279.i, i64 16
  store ptr %i.ly, ptr %i.nm, align 8, !tbaa !500
  %i.nn = getelementptr inbounds nuw i8, ptr %.sroa.13.0279.i, i64 24
  br label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEERS1_DpOT_.exit.i

bb.an:                                            ; preds = %bb.al
  %i.no = ptrtoint ptr %.sroa.21.0280.i to i64
  %i.np = ptrtoint ptr %.sroa.0203.0278.i to i64
  %i.nq = sub i64 %i.no, %i.np                    ; 4 uses
  %i.nr = icmp eq i64 %i.nq, 9223372036854775800
  br i1 %i.nr, label %.invoke1030, label %_ZNKSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i

_ZNKSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.an
  %i.ns = sdiv exact i64 %i.nq, 24                ; 3 uses
  %.sroa.speculated.i.i.i103.i = call i64 @llvm.umax.i64(i64 %i.ns, i64 1)
  %i.nt = add nsw i64 %.sroa.speculated.i.i.i103.i, %i.ns ; 2 uses
  %i.nu = icmp ult i64 %i.nt, %i.ns
  %i.nv = call i64 @llvm.umin.i64(i64 %i.nt, i64 384307168202282325)
  %i.nw = select i1 %i.nu, i64 384307168202282325, i64 %i.nv ; 3 uses
  %.not.i.i.i104.i = icmp ne i64 %i.nw, 0
  call void @llvm.assume(i1 %.not.i.i.i104.i)
  %i.nx = mul nuw nsw i64 %i.nw, 24
  %i.ny = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nx) #38
          to label %.noexc109.i unwind label %.loopexit.split-lp241.i.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc109.i:                                      ; preds = %_ZNKSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 %i.nq ; 3 uses
  store <2 x float> %i.lv, ptr %i.nz, align 8, !tbaa !82
  %.sroa.8.0..sroa_idx198.i = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  store float %i.lw, ptr %.sroa.8.0..sroa_idx198.i, align 8, !tbaa !82
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 16
  store ptr %i.ly, ptr %i.oa, align 8, !tbaa !500
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.0203.0278.i, %.sroa.21.0280.i
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit33.i.i.i, label %.lr.ph.i.i.i.i.i105.i

.lr.ph.i.i.i.i.i105.i:                            ; preds = %.noexc109.i, %.lr.ph.i.i.i.i.i105.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.oc, %.lr.ph.i.i.i.i.i105.i ], [ %i.ny, %.noexc109.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ob, %.lr.ph.i.i.i.i.i105.i ], [ %.sroa.0203.0278.i, %.noexc109.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !alias.scope !951
  %i.ob = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i106.i = icmp eq ptr %i.ob, %.sroa.21.0280.i
  br i1 %.not.i.i.i.i.i106.i, label %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit33.i.i.i, label %.lr.ph.i.i.i.i.i105.i, !llvm.loop !9

_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit33.i.i.i: ; preds = %.lr.ph.i.i.i.i.i105.i, %.noexc109.i
  %.0.lcssa.i.i.i.i.i107.i = phi ptr [ %i.ny, %.noexc109.i ], [ %i.oc, %.lr.ph.i.i.i.i.i105.i ]
  %i.od = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i107.i, i64 24
  %.not.i34.i.i.i = icmp eq ptr %.sroa.0203.0278.i, null
  br i1 %.not.i34.i.i.i, label %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE17_M_realloc_insertIJRS3_RS6_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit33.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0203.0278.i, i64 noundef %i.nq) #34
  br label %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE17_M_realloc_insertIJRS3_RS6_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i

_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE17_M_realloc_insertIJRS3_RS6_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i: ; preds = %bb.ao, %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit33.i.i.i
  %i.oe = getelementptr inbounds nuw [24 x i8], ptr %i.ny, i64 %i.nw
  br label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEERS1_DpOT_.exit.i

_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEERS1_DpOT_.exit.i: ; preds = %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE17_M_realloc_insertIJRS3_RS6_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i, %bb.am, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.ai
  %.sroa.0203.1.i = phi ptr [ %.sroa.0203.0278.i, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.0203.0278.i, %bb.ai ], [ %i.ny, %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE17_M_realloc_insertIJRS3_RS6_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i ], [ %.sroa.0203.0278.i, %bb.am ] ; 18 uses
  %.sroa.13.1.i = phi ptr [ %.sroa.13.0279.i, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.13.0279.i, %bb.ai ], [ %i.od, %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE17_M_realloc_insertIJRS3_RS6_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i ], [ %i.nn, %bb.am ] ; 12 uses
  %.sroa.21.1.i = phi ptr [ %.sroa.21.0280.i, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.21.0280.i, %bb.ai ], [ %i.oe, %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE17_M_realloc_insertIJRS3_RS6_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i ], [ %.sroa.21.0280.i, %bb.am ] ; 6 uses
  %i.of = load ptr, ptr %i.fn, align 8, !tbaa !496, !noalias !949
  %.not226.i = icmp eq ptr %i.ku, %i.of
  br i1 %.not226.i, label %._crit_edge284.i, label %bb.af, !llvm.loop !919

"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSH_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISR_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISX_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS18_ESt8equal_toIS18_ESaIS2_IKS18_S19_EEEEUlRKS11_RKT0_E_EvS11_S11_S1L_.exit.i": ; preds = %bb.ae, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i15.i.i.i.i", %.preheader.i24.i.i.i.i, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S1N_.exit.i.i.i.i", %"._crit_edge284._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSH_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISR_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISX_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS18_ESt8equal_toIS18_ESaIS2_IKS18_S19_EEEEUlRKS11_RKT0_E_EvS11_S11_S1L_.exit_crit_edge.i"
  %.not.i.i404.i = phi i1 [ true, %"._crit_edge284._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSH_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISR_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISX_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS18_ESt8equal_toIS18_ESaIS2_IKS18_S19_EEEEUlRKS11_RKT0_E_EvS11_S11_S1L_.exit_crit_edge.i" ], [ false, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i15.i.i.i.i" ], [ false, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S1N_.exit.i.i.i.i" ], [ false, %.preheader.i24.i.i.i.i ], [ false, %bb.ae ] ; 2 uses
  %.sroa.21.0.lcssa397.i = phi ptr [ %.sroa.21.0.lcssa398.i, %"._crit_edge284._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSH_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISR_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISX_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS18_ESt8equal_toIS18_ESaIS2_IKS18_S19_EEEEUlRKS11_RKT0_E_EvS11_S11_S1L_.exit_crit_edge.i" ], [ %.sroa.21.1.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i15.i.i.i.i" ], [ %.sroa.21.1.i, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S1N_.exit.i.i.i.i" ], [ %.sroa.21.1.i, %.preheader.i24.i.i.i.i ], [ %.sroa.21.1.i, %bb.ae ] ; 2 uses
  %.sroa.13.0.lcssa396.i = phi ptr [ %.sroa.13.0.lcssa395.i, %"._crit_edge284._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSH_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISR_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISX_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS18_ESt8equal_toIS18_ESaIS2_IKS18_S19_EEEEUlRKS11_RKT0_E_EvS11_S11_S1L_.exit_crit_edge.i" ], [ %.sroa.13.1.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i15.i.i.i.i" ], [ %.sroa.13.1.i, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S1N_.exit.i.i.i.i" ], [ %.sroa.13.1.i, %.preheader.i24.i.i.i.i ], [ %.sroa.13.1.i, %bb.ae ] ; 2 uses
  %.sroa.0203.0.lcssa388.i = phi ptr [ %.sroa.13.0.lcssa395.i, %"._crit_edge284._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSH_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISR_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISX_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS18_ESt8equal_toIS18_ESaIS2_IKS18_S19_EEEEUlRKS11_RKT0_E_EvS11_S11_S1L_.exit_crit_edge.i" ], [ %.sroa.0203.1.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i15.i.i.i.i" ], [ %.sroa.0203.1.i, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S1N_.exit.i.i.i.i" ], [ %.sroa.0203.1.i, %.preheader.i24.i.i.i.i ], [ %.sroa.0203.1.i, %bb.ae ] ; 6 uses
  %.pre-phi328.i = phi i64 [ 0, %"._crit_edge284._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSH_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISR_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISX_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS18_ESt8equal_toIS18_ESaIS2_IKS18_S19_EEEEUlRKS11_RKT0_E_EvS11_S11_S1L_.exit_crit_edge.i" ], [ %i.if, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i15.i.i.i.i" ], [ %i.if, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S1N_.exit.i.i.i.i" ], [ %i.if, %.preheader.i24.i.i.i.i ], [ %i.if, %bb.ae ]
end_hunk_8
begin_hunk_9_@_ZN5video9SMaterialD2Ev:bb.a
bb.e:                                             ; preds = %_ZN5video14SMaterialLayerD2Ev.exit.2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 64) #34
  br label %_ZN5video14SMaterialLayerD2Ev.exit.3

_ZN5video14SMaterialLayerD2Ev.exit.3:             ; preds = %bb.e, %_ZN5video14SMaterialLayerD2Ev.exit.2
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9ClientMap20updateDrawListShadowEN4core8vector3dIfEES2_ff(ptr noundef nonnull align 8 dereferenceable(656) %0, <2 x float> %1, float %2, <2 x float> %3, float %4, float noundef %5, float noundef %6) local_unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %7 = alloca %class.ScopeProfiler, align 8       ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #2
  %i.e = load ptr, ptr @g_profiler, align 8, !tbaa !493
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #2
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.f, ptr %8, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #2
  store i64 26, ptr %i.d, align 8, !tbaa !178
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.g, ptr %8, align 8, !tbaa !64
  %i.h = load i64, ptr %i.d, align 8, !tbaa !178  ; 3 uses
  store i64 %i.h, ptr %i.f, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.g, ptr noundef nonnull align 1 dereferenceable(26) @.str.38, i64 26, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.h, ptr %i.i, align 8, !tbaa !176
  %i.j = load ptr, ptr %8, align 8, !tbaa !64
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.h
  store i8 0, ptr %i.k, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #2
  invoke void @_ZN13ScopeProfilerC1EP8ProfilerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17ScopeProfilerType13TimePrecision(ptr noundef nonnull align 8 dereferenceable(50) %7, ptr noundef %i.e, ptr noundef nonnull align 8 dereferenceable(32) %8, i8 noundef zeroext 2, i8 noundef signext 1)
          to label %bb.a unwind label %bb.e

bb.a:                                             ; preds = %.noexc
  %i.l = load ptr, ptr %8, align 8, !tbaa !64     ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.f
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.n = load i64, ptr %i.f, align 8, !tbaa !65
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !165  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 9 uses
  %.not8.i = icmp eq ptr %i.r, %i.s
  br i1 %.not8.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !164
  invoke void @_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef %i.u)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %._crit_edge.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #35
  unreachable

.lr.ph.i:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.lr.ph.i
  %.sroa.05.09.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !206
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 22 ; 2 uses
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !239
  %i.ab = add i16 %i.aa, -1
  store i16 %i.ab, ptr %i.z, align 2, !tbaa !239
  %i.ac = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.05.09.i) #37 ; 2 uses
  %.not.i = icmp eq ptr %i.ac, %i.s
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.c:                                             ; preds = %._crit_edge.i
  store ptr null, ptr %i.t, align 8, !tbaa !164
  store ptr %i.s, ptr %i.q, align 8, !tbaa !165
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 568
  store ptr %i.s, ptr %i.ad, align 8, !tbaa !166
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 4 uses
  store i64 0, ptr %i.ae, align 8, !tbaa !167
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.0173.0206 = load ptr, ptr %i.af, align 8, !tbaa !243 ; 2 uses
  %.not194207 = icmp eq ptr %.sroa.0173.0206, null
  br i1 %.not194207, label %.noexc.i93, label %.lr.ph211

.lr.ph211:                                        ; preds = %bb.c
  %.sroa.0177.0.vec.extract = extractelement <2 x float> %3, i64 0
  br label %bb.f

.noexc.i93.loopexit:                              ; preds = %.loopexit
  %i.ag = uitofp nsz i32 %.470 to float
  %i.ah = uitofp nsz i32 %.165 to float
  br label %.noexc.i93

.noexc.i93:                                       ; preds = %.noexc.i93.loopexit, %bb.c
  %.066.lcssa = phi float [ 0.000000e+00, %bb.c ], [ %i.ag, %.noexc.i93.loopexit ]
  %.064.lcssa = phi float [ 0.000000e+00, %bb.c ], [ %i.ah, %.noexc.i93.loopexit ]
  %i.ai = load ptr, ptr @g_profiler, align 8, !tbaa !493
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #2
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.aj, ptr %9, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #2
  store i64 35, ptr %i.c, align 8, !tbaa !178
  %i.ak = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc94 unwind label %bb.ad  ; 3 uses

.noexc94:                                         ; preds = %.noexc.i93
  store ptr %i.ak, ptr %9, align 8, !tbaa !64
  %i.al = load i64, ptr %i.c, align 8, !tbaa !178 ; 3 uses
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %i.ak, ptr noundef nonnull align 1 dereferenceable(35) @.str.39, i64 35, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.al, ptr %i.am, align 8, !tbaa !176
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.al
  store i8 0, ptr %i.an, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #2
  invoke void @_ZN8Profiler3avgERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEf(ptr noundef nonnull align 8 dereferenceable(144) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %9, float noundef %.066.lcssa)
          to label %bb.aa unwind label %bb.ae

bb.d:                                             ; preds = %.noexc.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

bb.e:                                             ; preds = %.noexc
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %8, align 8, !tbaa !64    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.f
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96: ; preds = %bb.e
  %i.as = load i64, ptr %i.f, align 8, !tbaa !65
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96, %bb.d
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.d ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96 ], [ %i.ap, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #2
  br label %bb.aj

bb.f:                                             ; preds = %.lr.ph211, %.loopexit
  %.sroa.0173.0210 = phi ptr [ %.sroa.0173.0206, %.lr.ph211 ], [ %.sroa.0173.0, %.loopexit ] ; 2 uses
  %.064209 = phi i32 [ 0, %.lr.ph211 ], [ %.165, %.loopexit ] ; 2 uses
  %.066208 = phi i32 [ 0, %.lr.ph211 ], [ %.470, %.loopexit ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0173.0210, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !256 ; 3 uses
  %.not = icmp eq ptr %i.av, null
  br i1 %.not, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !602
  %i.ay = trunc i64 %i.ax to i32
  %i.az = add i32 %.064209, %i.ay                 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %.sroa.0169.0202 = load ptr, ptr %i.ba, align 8, !tbaa !243 ; 2 uses
  %.not195203 = icmp eq ptr %.sroa.0169.0202, null
  br i1 %.not195203, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %.thread
  %.sroa.0169.0205 = phi ptr [ %.sroa.0169.0, %.thread ], [ %.sroa.0169.0202, %bb.g ] ; 2 uses
  %.167204 = phi i32 [ %.369, %.thread ], [ %.066208, %bb.g ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0169.0205, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !241 ; 6 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !445 ; 4 uses
  %.not83 = icmp eq ptr %i.bd, null
  br i1 %.not83, label %.thread, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %.sroa.0.0.copyload.i = load i48, ptr %i.be, align 8, !tbaa !162 ; 2 uses
  %.sroa.3.0.extract.shift.i = lshr i48 %.sroa.0.0.copyload.i, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i48 %.sroa.3.0.extract.shift.i to i16
  %i.bf = sitofp nsz i16 %.sroa.3.0.extract.trunc.i to float
  %i.bg = fmul nnan nsz float %i.bf, 1.000000e+01
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 60
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.bh, align 4, !tbaa !82
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 68
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !82
  %i.bi = fadd nsz float %.sroa.22.0.copyload.i, %i.bg ; 2 uses
  %i.bj = bitcast i48 %.sroa.0.0.copyload.i to <3 x i16>
  %i.bk = shufflevector <3 x i16> %i.bj, <3 x i16> poison, <2 x i32> <i32 0, i32 1>
  %i.bl = sitofp nsz <2 x i16> %i.bk to <2 x float>
  %i.bm = fmul nnan nsz <2 x float> %i.bl, splat (float 1.000000e+01)
  %i.bn = fadd nsz <2 x float> %.sroa.01.0.copyload.i, %i.bm ; 3 uses
  %i.bo = fsub nsz <2 x float> %i.bn, %1          ; 2 uses
  %i.bp = fsub nsz float %i.bi, %2
  %foldExtExtBinop = fmul nsz <2 x float> %3, %i.bo
  %i.bq = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.br = extractelement <2 x float> %i.bo, i64 0
  %i.bs = call nsz float @llvm.fmuladd.f32(float %.sroa.0177.0.vec.extract, float %i.br, float %i.bq)
  %i.bt = call nsz noundef float @llvm.fmuladd.f32(float %4, float %i.bp, float %i.bs) ; 2 uses
  %i.bu = fmul nsz float %4, %i.bt
  %i.bv = insertelement <2 x float> poison, float %i.bt, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = fmul nsz <2 x float> %3, %i.bw
  %i.by = fadd nsz <2 x float> %1, %i.bx          ; 2 uses
  %i.bz = fadd nsz float %2, %i.bu
  %foldExtExtBinop245 = fsub nsz <2 x float> %i.by, %i.bn
  %i.ca = extractelement <2 x float> %foldExtExtBinop245, i64 0 ; 2 uses
  %foldExtExtBinop247 = fsub nsz <2 x float> %i.by, %i.bn ; 2 uses
  %i.cb = fsub nsz float %i.bz, %i.bi             ; 2 uses
  %foldExtExtBinop249 = fmul nsz <2 x float> %foldExtExtBinop247, %foldExtExtBinop247
  %i.cc = extractelement <2 x float> %foldExtExtBinop249, i64 1
  %i.cd = call nsz float @llvm.fmuladd.f32(float %i.ca, float %i.ca, float %i.cc)
  %i.ce = call nsz float @llvm.fmuladd.f32(float %i.cb, float %i.cb, float %i.cd)
  %i.cf = call nsz noundef float @llvm.sqrt.f32(float %i.ce)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  %i.ch = load float, ptr %i.cg, align 8, !tbaa !480
  %i.ci = fadd nsz float %5, %i.ch
  %i.cj = fcmp nsz ogt float %i.cf, %i.ci
  br i1 %i.cj, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ck = add i32 %.167204, 1                     ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  store float 0.000000e+00, ptr %i.cl, align 8, !tbaa !603
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bc, i64 10
  %.sroa.0.0.copyload.i113 = load i48, ptr %i.cm, align 2, !tbaa !162 ; 3 uses
  %.sroa.0147.0.extract.trunc = trunc i48 %.sroa.0.0.copyload.i113 to i16 ; 5 uses
  %.sroa.6.0.extract.shift = lshr i48 %.sroa.0.0.copyload.i113, 16
  %.sroa.6.0.extract.trunc = trunc i48 %.sroa.6.0.extract.shift to i16 ; 5 uses
  %.sroa.7.0.extract.shift = lshr i48 %.sroa.0.0.copyload.i113, 32
  %.sroa.7.0.extract.trunc = trunc nuw i48 %.sroa.7.0.extract.shift to i16 ; 3 uses
  %i.cn = load ptr, ptr %i.t, align 8, !tbaa !164 ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.cn, null
  br i1 %.not12.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i ], [ %i.cn, %bb.i ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i ], [ %i.s, %bb.i ]
  %i.co = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !157 ; 2 uses
  %i.cq = icmp slt i16 %i.cp, %.sroa.0147.0.extract.trunc
  br i1 %i.cq, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cr = icmp eq i16 %i.cp, %.sroa.0147.0.extract.trunc
  br i1 %i.cr, label %bb.k, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.cs = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 34
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !158 ; 2 uses
  %i.cu = icmp slt i16 %i.ct, %.sroa.6.0.extract.trunc
  br i1 %i.cu, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cv = icmp eq i16 %i.ct, %.sroa.6.0.extract.trunc
  br i1 %i.cv, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i: ; preds = %bb.l
  %i.cw = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !159
  %i.cy = icmp slt i16 %i.cx, %.sroa.7.0.extract.trunc
  br i1 %i.cy, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i, %bb.k, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i, %bb.l, %bb.j
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i ], [ 16, %bb.l ], [ 16, %bb.j ], [ 16, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.l ], [ %.014.i.i.i.i, %bb.j ], [ %.014.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i ] ; 9 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.cz, align 8, !tbaa !600 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !973

_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i
  %i.da = icmp eq ptr %.19.i.i.i.i, %i.s
  br i1 %i.da, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i
  %i.db = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !157 ; 2 uses
  %i.dd = icmp sgt i16 %i.dc, %.sroa.0147.0.extract.trunc
  br i1 %i.dd, label %.critedge.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.de = icmp eq i16 %i.dc, %.sroa.0147.0.extract.trunc
  br i1 %i.de, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.df = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 34
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !158 ; 2 uses
  %i.dh = icmp sgt i16 %i.dg, %.sroa.6.0.extract.trunc
  br i1 %i.dh, label %.critedge.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.di = icmp eq i16 %i.dg, %.sroa.6.0.extract.trunc
  br i1 %i.di, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i, label %.thread

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i: ; preds = %bb.p
  %i.dj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !159
  %i.dl = icmp sgt i16 %i.dk, %.sroa.7.0.extract.trunc
  br i1 %i.dl, label %.critedge.i, label %.thread

.critedge.i:                                      ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i, %bb.o, %bb.m, %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i, %bb.i
  %.08.lcssa.i.i.i20.i = phi ptr [ %i.s, %bb.i ], [ %.19.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i ], [ %.19.i.i.i.i, %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i ], [ %.19.i.i.i.i, %bb.o ], [ %.19.i.i.i.i, %bb.m ]
  %i.dm = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #38
          to label %.noexc144 unwind label %bb.z  ; 7 uses

.noexc144:                                        ; preds = %.critedge.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 32 ; 3 uses
  store i16 %.sroa.0147.0.extract.trunc, ptr %i.dn, align 8, !tbaa !162
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 34 ; 2 uses
  store i16 %.sroa.6.0.extract.trunc, ptr %.sroa.6.0..sroa_idx, align 2, !tbaa !162
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 36 ; 2 uses
  store i16 %.sroa.7.0.extract.trunc, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !162
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  store ptr %i.bc, ptr %i.do, align 8, !tbaa !206
  %i.dp = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr %.08.lcssa.i.i.i20.i, ptr noundef nonnull align 2 dereferenceable(6) %i.dn)
          to label %bb.q unwind label %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.q:                                             ; preds = %.noexc144
  %i.dq = extractvalue { ptr, ptr } %i.dp, 1      ; 6 uses
  %.not.i143 = icmp eq ptr %i.dq, null
  br i1 %.not.i143, label %bb.x, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dr = extractvalue { ptr, ptr } %i.dp, 0
  %.not.i.i.i = icmp ne ptr %i.dr, null
  %i.ds = icmp eq ptr %i.dq, %i.s
  %or.cond.i.i.i = or i1 %.not.i.i.i, %i.ds
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  %i.du = load i16, ptr %i.dn, align 8, !tbaa !157 ; 2 uses
  %i.dv = load i16, ptr %i.dt, align 2, !tbaa !157 ; 2 uses
  %i.dw = icmp slt i16 %i.du, %i.dv
  br i1 %i.dw, label %.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dx = icmp eq i16 %i.du, %i.dv
  br i1 %i.dx, label %bb.u, label %.thread.i

bb.u:                                             ; preds = %bb.t
  %i.dy = load i16, ptr %.sroa.6.0..sroa_idx, align 2, !tbaa !158 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dq, i64 34
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !158 ; 2 uses
  %i.eb = icmp slt i16 %i.dy, %i.ea
  br i1 %i.eb, label %.thread.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ec = icmp eq i16 %i.dy, %i.ea
  br i1 %i.ec, label %bb.w, label %.thread.i

bb.w:                                             ; preds = %bb.v
  %i.ed = load i16, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !159
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dq, i64 36
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !159
  %i.eg = icmp slt i16 %i.ed, %i.ef
  br label %.thread.i

.thread.i:                                        ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r
  %i.eh = phi i1 [ false, %bb.t ], [ true, %bb.r ], [ true, %bb.u ], [ true, %bb.s ], [ false, %bb.v ], [ %i.eg, %bb.w ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.eh, ptr noundef nonnull %i.dm, ptr noundef nonnull %i.dq, ptr noundef nonnull align 8 dereferenceable(32) %i.s) #2
  %i.ei = load i64, ptr %i.ae, align 8, !tbaa !167
  %i.ej = add i64 %i.ei, 1
  store i64 %i.ej, ptr %i.ae, align 8, !tbaa !167
  br label %bb.y

_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.noexc144
  %i.ek = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef 48) #34
  br label %.body

bb.x:                                             ; preds = %bb.q
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef 48) #34
  br label %bb.y

bb.y:                                             ; preds = %.thread.i, %bb.x
  %i.el = getelementptr inbounds nuw i8, ptr %i.bc, i64 22 ; 2 uses
  %i.em = load i16, ptr %i.el, align 2, !tbaa !239
  %i.en = add i16 %i.em, 1
  store i16 %i.en, ptr %i.el, align 2, !tbaa !239
  br label %.thread

bb.z:                                             ; preds = %.critedge.i
  %i.eo = landingpad { ptr, i32 }
          cleanup
end_hunk_9
begin_hunk_10_@_ZNK5scene10ISceneNode30getTransformedBoundingBoxEdgesERN4core5arrayINS1_8vector3dIfEEEE:bb.a
  %i.di = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dh, <2 x float> %i.db, <2 x float> %i.df)
  %i.dj = load <2 x float>, ptr %i.bf, align 8, !tbaa !82
  %i.dk = insertelement <2 x float> poison, float %i.da, i64 0
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dm = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dl, <2 x float> %i.dj, <2 x float> %i.di)
  %i.dn = load <2 x float>, ptr %i.bg, align 8, !tbaa !82
  %i.do = fadd nsz <2 x float> %i.dm, %i.dn
  %i.dp = load float, ptr %i.bh, align 8, !tbaa !82
  %i.dq = load float, ptr %i.bi, align 8, !tbaa !82
  %i.dr = fmul nsz float %i.cz, %i.dq
  %i.ds = tail call nsz float @llvm.fmuladd.f32(float %i.cy, float %i.dp, float %i.dr)
  %i.dt = load float, ptr %i.bj, align 8, !tbaa !82
  %i.du = tail call nsz float @llvm.fmuladd.f32(float %i.da, float %i.dt, float %i.ds)
  %i.dv = load float, ptr %i.bk, align 8, !tbaa !82
  %i.dw = fadd nsz float %i.dv, %i.du
  store <2 x float> %i.do, ptr %i.x, align 4, !tbaa !82
  store float %i.dw, ptr %i.cx, align 4, !tbaa !82
  %i.dx = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.dy = getelementptr inbounds nuw i8, ptr %i.o, i64 44 ; 2 uses
  %i.dz = load float, ptr %i.aa, align 4, !tbaa !481 ; 2 uses
  %i.ea = load float, ptr %i.dx, align 4, !tbaa !482 ; 2 uses
  %i.eb = load float, ptr %i.dy, align 4, !tbaa !483 ; 2 uses
  %i.ec = load <2 x float>, ptr %i.bd, align 8, !tbaa !82
  %i.ed = load <2 x float>, ptr %i.be, align 8, !tbaa !82
  %i.ee = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.ef = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eg = fmul nsz <2 x float> %i.ef, %i.ed
  %i.eh = insertelement <2 x float> poison, float %i.dz, i64 0
  %i.ei = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ej = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ei, <2 x float> %i.ec, <2 x float> %i.eg)
  %i.ek = load <2 x float>, ptr %i.bf, align 8, !tbaa !82
  %i.el = insertelement <2 x float> poison, float %i.eb, i64 0
  %i.em = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> zeroinitializer
  %i.en = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.em, <2 x float> %i.ek, <2 x float> %i.ej)
  %i.eo = load <2 x float>, ptr %i.bg, align 8, !tbaa !82
  %i.ep = fadd nsz <2 x float> %i.en, %i.eo
  %i.eq = load float, ptr %i.bh, align 8, !tbaa !82
  %i.er = load float, ptr %i.bi, align 8, !tbaa !82
  %i.es = fmul nsz float %i.ea, %i.er
  %i.et = tail call nsz float @llvm.fmuladd.f32(float %i.dz, float %i.eq, float %i.es)
  %i.eu = load float, ptr %i.bj, align 8, !tbaa !82
  %i.ev = tail call nsz float @llvm.fmuladd.f32(float %i.eb, float %i.eu, float %i.et)
  %i.ew = load float, ptr %i.bk, align 8, !tbaa !82
  %i.ex = fadd nsz float %i.ew, %i.ev
  store <2 x float> %i.ep, ptr %i.aa, align 4, !tbaa !82
  store float %i.ex, ptr %i.dy, align 4, !tbaa !82
  %i.ey = getelementptr inbounds nuw i8, ptr %i.o, i64 52
  %i.ez = getelementptr inbounds nuw i8, ptr %i.o, i64 56 ; 2 uses
  %i.fa = load float, ptr %i.ad, align 4, !tbaa !481 ; 2 uses
  %i.fb = load float, ptr %i.ey, align 4, !tbaa !482 ; 2 uses
  %i.fc = load float, ptr %i.ez, align 4, !tbaa !483 ; 2 uses
  %i.fd = load <2 x float>, ptr %i.bd, align 8, !tbaa !82
  %i.fe = load <2 x float>, ptr %i.be, align 8, !tbaa !82
  %i.ff = insertelement <2 x float> poison, float %i.fb, i64 0
  %i.fg = shufflevector <2 x float> %i.ff, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fh = fmul nsz <2 x float> %i.fg, %i.fe
  %i.fi = insertelement <2 x float> poison, float %i.fa, i64 0
  %i.fj = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fk = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fj, <2 x float> %i.fd, <2 x float> %i.fh)
  %i.fl = load <2 x float>, ptr %i.bf, align 8, !tbaa !82
  %i.fm = insertelement <2 x float> poison, float %i.fc, i64 0
  %i.fn = shufflevector <2 x float> %i.fm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fo = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fn, <2 x float> %i.fl, <2 x float> %i.fk)
  %i.fp = load <2 x float>, ptr %i.bg, align 8, !tbaa !82
  %i.fq = fadd nsz <2 x float> %i.fo, %i.fp
  %i.fr = load float, ptr %i.bh, align 8, !tbaa !82
  %i.fs = load float, ptr %i.bi, align 8, !tbaa !82
  %i.ft = fmul nsz float %i.fb, %i.fs
  %i.fu = tail call nsz float @llvm.fmuladd.f32(float %i.fa, float %i.fr, float %i.ft)
  %i.fv = load float, ptr %i.bj, align 8, !tbaa !82
  %i.fw = tail call nsz float @llvm.fmuladd.f32(float %i.fc, float %i.fv, float %i.fu)
  %i.fx = load float, ptr %i.bk, align 8, !tbaa !82
  %i.fy = fadd nsz float %i.fx, %i.fw
  store <2 x float> %i.fq, ptr %i.ad, align 4, !tbaa !82
  store float %i.fy, ptr %i.ez, align 4, !tbaa !82
  %i.fz = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.ga = getelementptr inbounds nuw i8, ptr %i.o, i64 68 ; 2 uses
  %i.gb = load float, ptr %i.ae, align 4, !tbaa !481 ; 2 uses
  %i.gc = load float, ptr %i.fz, align 4, !tbaa !482 ; 2 uses
  %i.gd = load float, ptr %i.ga, align 4, !tbaa !483 ; 2 uses
  %i.ge = load <2 x float>, ptr %i.bd, align 8, !tbaa !82
  %i.gf = load <2 x float>, ptr %i.be, align 8, !tbaa !82
  %i.gg = insertelement <2 x float> poison, float %i.gc, i64 0
  %i.gh = shufflevector <2 x float> %i.gg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gi = fmul nsz <2 x float> %i.gh, %i.gf
  %i.gj = insertelement <2 x float> poison, float %i.gb, i64 0
  %i.gk = shufflevector <2 x float> %i.gj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gl = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gk, <2 x float> %i.ge, <2 x float> %i.gi)
  %i.gm = load <2 x float>, ptr %i.bf, align 8, !tbaa !82
  %i.gn = insertelement <2 x float> poison, float %i.gd, i64 0
  %i.go = shufflevector <2 x float> %i.gn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gp = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.go, <2 x float> %i.gm, <2 x float> %i.gl)
  %i.gq = load <2 x float>, ptr %i.bg, align 8, !tbaa !82
  %i.gr = fadd nsz <2 x float> %i.gp, %i.gq
  %i.gs = load float, ptr %i.bh, align 8, !tbaa !82
  %i.gt = load float, ptr %i.bi, align 8, !tbaa !82
  %i.gu = fmul nsz float %i.gc, %i.gt
  %i.gv = tail call nsz float @llvm.fmuladd.f32(float %i.gb, float %i.gs, float %i.gu)
  %i.gw = load float, ptr %i.bj, align 8, !tbaa !82
  %i.gx = tail call nsz float @llvm.fmuladd.f32(float %i.gd, float %i.gw, float %i.gv)
  %i.gy = load float, ptr %i.bk, align 8, !tbaa !82
  %i.gz = fadd nsz float %i.gy, %i.gx
  store <2 x float> %i.gr, ptr %i.ae, align 4, !tbaa !82
  store float %i.gz, ptr %i.ga, align 4, !tbaa !82
  %i.ha = getelementptr inbounds nuw i8, ptr %i.o, i64 76
  %i.hb = getelementptr inbounds nuw i8, ptr %i.o, i64 80 ; 2 uses
  %i.hc = load float, ptr %i.af, align 4, !tbaa !481 ; 2 uses
  %i.hd = load float, ptr %i.ha, align 4, !tbaa !482 ; 2 uses
  %i.he = load float, ptr %i.hb, align 4, !tbaa !483 ; 2 uses
  %i.hf = load <2 x float>, ptr %i.bd, align 8, !tbaa !82
  %i.hg = load <2 x float>, ptr %i.be, align 8, !tbaa !82
  %i.hh = insertelement <2 x float> poison, float %i.hd, i64 0
  %i.hi = shufflevector <2 x float> %i.hh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hj = fmul nsz <2 x float> %i.hi, %i.hg
  %i.hk = insertelement <2 x float> poison, float %i.hc, i64 0
  %i.hl = shufflevector <2 x float> %i.hk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hm = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hl, <2 x float> %i.hf, <2 x float> %i.hj)
  %i.hn = load <2 x float>, ptr %i.bf, align 8, !tbaa !82
  %i.ho = insertelement <2 x float> poison, float %i.he, i64 0
  %i.hp = shufflevector <2 x float> %i.ho, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hq = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hp, <2 x float> %i.hn, <2 x float> %i.hm)
  %i.hr = load <2 x float>, ptr %i.bg, align 8, !tbaa !82
  %i.hs = fadd nsz <2 x float> %i.hq, %i.hr
  %i.ht = load float, ptr %i.bh, align 8, !tbaa !82
  %i.hu = load float, ptr %i.bi, align 8, !tbaa !82
  %i.hv = fmul nsz float %i.hd, %i.hu
  %i.hw = tail call nsz float @llvm.fmuladd.f32(float %i.hc, float %i.ht, float %i.hv)
  %i.hx = load float, ptr %i.bj, align 8, !tbaa !82
  %i.hy = tail call nsz float @llvm.fmuladd.f32(float %i.he, float %i.hx, float %i.hw)
  %i.hz = load float, ptr %i.bk, align 8, !tbaa !82
  %i.ia = fadd nsz float %i.hz, %i.hy
  store <2 x float> %i.hs, ptr %i.af, align 4, !tbaa !82
  store float %i.ia, ptr %i.hb, align 4, !tbaa !82
  %i.ib = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %i.ic = getelementptr inbounds nuw i8, ptr %i.o, i64 92 ; 2 uses
  %i.id = load float, ptr %i.az, align 4, !tbaa !481 ; 2 uses
  %i.ie = load float, ptr %i.ib, align 4, !tbaa !482 ; 2 uses
  %i.if = load float, ptr %i.ic, align 4, !tbaa !483 ; 2 uses
  %i.ig = load <2 x float>, ptr %i.bd, align 8, !tbaa !82
  %i.ih = load <2 x float>, ptr %i.be, align 8, !tbaa !82
  %i.ii = insertelement <2 x float> poison, float %i.ie, i64 0
  %i.ij = shufflevector <2 x float> %i.ii, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ik = fmul nsz <2 x float> %i.ij, %i.ih
  %i.il = insertelement <2 x float> poison, float %i.id, i64 0
  %i.im = shufflevector <2 x float> %i.il, <2 x float> poison, <2 x i32> zeroinitializer
  %i.in = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.im, <2 x float> %i.ig, <2 x float> %i.ik)
  %i.io = load <2 x float>, ptr %i.bf, align 8, !tbaa !82
  %i.ip = insertelement <2 x float> poison, float %i.if, i64 0
  %i.iq = shufflevector <2 x float> %i.ip, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ir = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iq, <2 x float> %i.io, <2 x float> %i.in)
  %i.is = load <2 x float>, ptr %i.bg, align 8, !tbaa !82
  %i.it = fadd nsz <2 x float> %i.ir, %i.is
  %i.iu = load float, ptr %i.bh, align 8, !tbaa !82
  %i.iv = load float, ptr %i.bi, align 8, !tbaa !82
  %i.iw = fmul nsz float %i.ie, %i.iv
  %i.ix = tail call nsz float @llvm.fmuladd.f32(float %i.id, float %i.iu, float %i.iw)
  %i.iy = load float, ptr %i.bj, align 8, !tbaa !82
  %i.iz = tail call nsz float @llvm.fmuladd.f32(float %i.if, float %i.iy, float %i.ix)
  %i.ja = load float, ptr %i.bk, align 8, !tbaa !82
  %i.jb = fadd nsz float %i.ja, %i.iz
  store <2 x float> %i.it, ptr %i.az, align 4, !tbaa !82
  store float %i.jb, ptr %i.ic, align 4, !tbaa !82
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(64) ptr @_ZNK5scene10ISceneNode25getAbsoluteTransformationEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5scene10ISceneNode25getRelativeTransformationEv(ptr dead_on_unwind noalias writable sret(%"class.core::CMatrix4") align 4 %0, ptr noundef nonnull align 8 dereferenceable(218) %1) unnamed_addr #18 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.a, i8 0, i64 36, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !82
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.g = load float, ptr %i.f, align 4, !tbaa !483
  %i.h = fmul nsz float %i.g, f0x3C8EFA35
  %i.i = fpext nsz float %i.h to double
  %sincos39.i.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.i) ; 2 uses
  %sin40.i.i = extractvalue { double, double } %sincos39.i.i, 0 ; 4 uses
  %cos41.i.i = extractvalue { double, double } %sincos39.i.i, 1 ; 5 uses
  %i.j = insertelement <2 x double> poison, double %cos41.i.i, i64 0
  %i.k = insertelement <2 x double> %i.j, double %sin40.i.i, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = fneg nsz double %sin40.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = fneg nsz double %cos41.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.s = load <2 x float>, ptr %i.e, align 4, !tbaa !82
  %i.t = fmul nsz <2 x float> %i.s, splat (float f0x3C8EFA35)
  %i.u = fpext nsz <2 x float> %i.t to <2 x double>
  %i.v = tail call nsz { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double> %i.u) ; 2 uses
  %i.w = extractvalue { <2 x double>, <2 x double> } %i.v, 0 ; 5 uses
  %i.x = extractvalue { <2 x double>, <2 x double> } %i.v, 1 ; 5 uses
  %i.y = extractelement <2 x double> %i.x, i64 0  ; 2 uses
  %i.z = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.aa = fmul nsz <2 x double> %i.z, %i.k
  %i.ab = fptrunc nsz <2 x double> %i.aa to <2 x float> ; 5 uses
  store <2 x float> %i.ab, ptr %0, align 4, !tbaa !82
  %i.ac = extractelement <2 x double> %i.w, i64 1
  %i.ad = fptrunc nsz double %i.ac to float
  %i.ae = fneg nsz float %i.ad                    ; 4 uses
  store float %i.ae, ptr %i.l, align 4, !tbaa !82
  %i.af = shufflevector <2 x double> %i.w, <2 x double> %i.x, <2 x i32> <i32 1, i32 2>
  %i.ag = fmul nsz <2 x double> %i.af, %i.w       ; 3 uses
  %i.ah = fmul nsz double %i.y, %i.m
  %i.ai = extractelement <2 x double> %i.ag, i64 0
  %i.aj = tail call nsz double @llvm.fmuladd.f64(double %i.ai, double %cos41.i.i, double %i.ah)
  %i.ak = fptrunc nsz double %i.aj to float       ; 3 uses
  store float %i.ak, ptr %i.n, align 4, !tbaa !82
  %i.al = fmul nsz double %i.y, %cos41.i.i
  %i.am = extractelement <2 x double> %i.w, i64 0 ; 2 uses
  %i.an = fmul nsz double %i.am, %sin40.i.i
  %i.ao = extractelement <2 x double> %i.ag, i64 1
  %i.ap = tail call nsz double @llvm.fmuladd.f64(double %i.ao, double %cos41.i.i, double %i.an)
  %i.aq = fptrunc nsz double %i.ap to float       ; 3 uses
  store float %i.aq, ptr %i.p, align 4, !tbaa !82
  %i.ar = fmul nsz double %i.am, %i.q
  %i.as = insertelement <2 x double> poison, double %sin40.i.i, i64 0
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer
  %i.au = insertelement <2 x double> poison, double %i.al, i64 0
  %i.av = insertelement <2 x double> %i.au, double %i.ar, i64 1
  %i.aw = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ag, <2 x double> %i.at, <2 x double> %i.av) ; 2 uses
  %i.ax = shufflevector <2 x double> %i.x, <2 x double> %i.w, <2 x i32> <i32 1, i32 2>
  %i.ay = fmul nsz <2 x double> %i.x, %i.ax       ; 2 uses
  %i.az = shufflevector <2 x double> %i.aw, <2 x double> %i.ay, <2 x i32> <i32 0, i32 3>
  %i.ba = fptrunc nsz <2 x double> %i.az to <2 x float> ; 4 uses
  store <2 x float> %i.ba, ptr %i.d, align 4, !tbaa !82
  %i.bb = shufflevector <2 x double> %i.aw, <2 x double> %i.ay, <2 x i32> <i32 1, i32 2>
  %i.bc = fptrunc nsz <2 x double> %i.bb to <2 x float> ; 4 uses
  store <2 x float> %i.bc, ptr %i.r, align 4, !tbaa !82
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bf = load <2 x float>, ptr %i.bd, align 8, !tbaa !82 ; 5 uses
  store <2 x float> %i.bf, ptr %i.be, align 4, !tbaa !82
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bh = load float, ptr %i.bg, align 8, !tbaa !483 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store float %i.bh, ptr %i.bi, align 4, !tbaa !82
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bk = load float, ptr %i.bj, align 8, !tbaa !481 ; 4 uses
  %i.bl = fcmp nsz oeq float %i.bk, 1.000000e+00
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !482 ; 2 uses
  %i.bo = fcmp nsz oeq float %i.bn, 1.000000e+00
  %or.cond = select i1 %i.bl, i1 %i.bo, i1 false
  br i1 %or.cond, label %_ZNK4core8vector3dIfEneERKS1_.exit, label %_ZNK4core8vector3dIfEneERKS1_.exit.thread

_ZNK4core8vector3dIfEneERKS1_.exit:               ; preds = %bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bq = load float, ptr %i.bp, align 8, !tbaa !483
  %i.br = fcmp nsz une float %i.bq, 1.000000e+00
  br i1 %i.br, label %_ZNK4core8vector3dIfEneERKS1_.exit.thread, label %bb.b

_ZNK4core8vector3dIfEneERKS1_.exit.thread:        ; preds = %bb.a, %_ZNK4core8vector3dIfEneERKS1_.exit
  %i.bs = phi float [ 1.000000e+00, %_ZNK4core8vector3dIfEneERKS1_.exit ], [ %i.bn, %bb.a ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bu = load float, ptr %i.bt, align 8, !tbaa !483 ; 3 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.3172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.sroa.4788.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bv = fmul nsz float %i.ak, 0.000000e+00      ; 2 uses
  %i.bw = fmul nsz <2 x float> %i.ba, zeroinitializer ; 3 uses
  %i.bx = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ca = insertelement <2 x float> %i.bz, float %i.bv, i64 0
  %i.cb = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> %i.by, <2 x float> %i.ca)
  %i.cc = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cd = insertelement <2 x float> %i.cc, float %i.aq, i64 0 ; 3 uses
  %i.ce = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> zeroinitializer, <2 x float> %i.cb)
  %i.cf = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> zeroinitializer, <2 x float> %i.ce)
  store <2 x float> %i.cf, ptr %0, align 4, !tbaa !82
  %i.cg = extractelement <2 x float> %i.bw, i64 1
  %i.ch = tail call nsz float @llvm.fmuladd.f32(float %i.ae, float %i.bk, float %i.cg)
  %i.ci = extractelement <2 x float> %i.bc, i64 1 ; 3 uses
  %i.cj = tail call nsz float @llvm.fmuladd.f32(float %i.ci, float 0.000000e+00, float %i.ch)
  %i.ck = tail call nsz float @llvm.fmuladd.f32(float %i.bh, float 0.000000e+00, float %i.cj)
  store float %i.ck, ptr %i.l, align 4, !tbaa !82
  %i.cl = fmul nsz float %i.bk, 0.000000e+00
  store float %i.cl, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !82
  %i.cm = extractelement <2 x float> %i.ab, i64 0
  %i.cn = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cp = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cq = insertelement <2 x float> %i.cp, float %i.ak, i64 0
  %i.cr = fmul nsz <2 x float> %i.co, %i.cq
  %i.cs = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> zeroinitializer, <2 x float> %i.cr)
  %i.ct = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> zeroinitializer, <2 x float> %i.cs)
  %i.cu = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> zeroinitializer, <2 x float> %i.ct)
  store <2 x float> %i.cu, ptr %i.n, align 4, !tbaa !82
  %i.cv = extractelement <2 x float> %i.ba, i64 1
  %i.cw = fmul nsz float %i.bs, %i.cv
  %i.cx = tail call nsz float @llvm.fmuladd.f32(float %i.ae, float 0.000000e+00, float %i.cw)
  %i.cy = tail call nsz float @llvm.fmuladd.f32(float %i.ci, float 0.000000e+00, float %i.cx)
  %i.cz = tail call nsz float @llvm.fmuladd.f32(float %i.bh, float 0.000000e+00, float %i.cy)
  store float %i.cz, ptr %i.o, align 4, !tbaa !82
  %i.da = fmul nsz float %i.bs, 0.000000e+00
  store float %i.da, ptr %.sroa.3172.0..sroa_idx, align 4, !tbaa !82
  %i.db = tail call nsz float @llvm.fmuladd.f32(float %i.cm, float 0.000000e+00, float %i.bv) ; 2 uses
  %i.dc = fmul nsz float %i.bu, 0.000000e+00
  store float %i.dc, ptr %.sroa.4788.0..sroa_idx, align 4, !tbaa !82
  %i.dd = tail call nsz float @llvm.fmuladd.f32(float %i.aq, float 0.000000e+00, float %i.db)
  %i.de = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.df = insertelement <2 x float> %i.de, float %i.ae, i64 1
  %i.dg = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.df, <2 x float> zeroinitializer, <2 x float> %i.bw) ; 3 uses
  %i.dh = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dj = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dk = insertelement <2 x float> %i.dj, float %i.db, i64 0
  %i.dl = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> %i.di, <2 x float> %i.dk)
  %i.dm = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> zeroinitializer, <2 x float> %i.dl)
  store <2 x float> %i.dm, ptr %i.p, align 4, !tbaa !82
  %i.dn = extractelement <2 x float> %i.dg, i64 1
  %i.do = tail call nsz float @llvm.fmuladd.f32(float %i.ci, float %i.bu, float %i.dn)
  %i.dp = tail call nsz float @llvm.fmuladd.f32(float %i.bh, float 0.000000e+00, float %i.do)
  store float %i.dp, ptr %i.c, align 4, !tbaa !82
  %i.dq = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> zeroinitializer, <2 x float> %i.dg) ; 2 uses
  %i.dr = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ds = insertelement <2 x float> %i.dr, float %i.dd, i64 0
  %i.dt = fadd nsz <2 x float> %i.bf, %i.ds
  store <2 x float> %i.dt, ptr %i.be, align 4, !tbaa !82
  %i.du = extractelement <2 x float> %i.dq, i64 1
  %i.dv = fadd nsz float %i.du, %i.bh
  store float %i.dv, ptr %i.bi, align 4, !tbaa !82
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !82
  br label %bb.b

bb.b:                                             ; preds = %_ZNK4core8vector3dIfEneERKS1_.exit.thread, %_ZNK4core8vector3dIfEneERKS1_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK5scene10ISceneNode9isVisibleEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i8, ptr %i.a, align 8, !tbaa !112, !range !174, !noundef !175
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK5scene10ISceneNode14isTrulyVisibleEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i8, ptr %i.a, align 8, !tbaa !112, !range !174, !noundef !175
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !107  ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(218) %i.e)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ %i.i, %bb.c ], [ false, %bb.a ], [ true, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5scene10ISceneNode10setVisibleEb(ptr noundef nonnull align 8 dereferenceable(218) %0, i1 noundef zeroext %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i8 %i.a, ptr %i.b, align 8, !tbaa !112
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK5scene10ISceneNode5getIDEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load i32, ptr %i.a, align 8, !tbaa !109
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5scene10ISceneNode5setIDEi(ptr noundef nonnull align 8 dereferenceable(218) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 %1, ptr %i.a, align 8, !tbaa !109
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5scene10ISceneNode8addChildEPS0_(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne ptr %1, null
  %i.b = icmp ne ptr %1, %0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !108  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !108
  %.not = icmp eq ptr %i.d, %i.f
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5scene10ISceneNode15setSceneManagerEPNS_13ISceneManagerE(ptr noundef nonnull align 8 dereferenceable(218) %1, ptr noundef %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !58     ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %1, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !60
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 8, !tbaa !60
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(218) %1)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.q = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #38 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %1, ptr %i.r, align 8, !tbaa !257
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull %i.p) #2
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
end_hunk_10
