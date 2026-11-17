Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/lto-unix.cc.X86_64?download=true
inline.NumInlined: 2846
inline.NumDeleted: 1528
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 46
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZN4moldL24create_plugin_input_fileINS_6X86_64EEENS_15PluginInputFileERNS_7ContextIT_EEPNS_10MappedFileE:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.av = getelementptr inbounds nuw i8, ptr %., i64 76
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !600 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.aw, ptr %i.ax, align 8, !tbaa !601
  %.not10 = icmp eq i32 %i.aw, 0
  br i1 %.not10, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZN4mold5FatalINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %4, ptr noundef nonnull align 8 dereferenceable(14448) %1) #20
  %i.ay = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA13_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %4, ptr noundef nonnull align 1 dereferenceable(13) @.str.42)
  %i.az = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRPKcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.ay, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.ba = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA3_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.az, ptr noundef nonnull align 1 dereferenceable(3) @.str.33)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @_ZN4mold12errno_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5) #20
  %i.bb = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.ba, ptr noundef nonnull align 8 dereferenceable(32) %5) ; 0 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @_ZN4mold5FatalINS_6X86_64EED1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %4) #27
  unreachable

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

declare void @_ZN4mold10MappedFile8close_fdEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA33_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 1 dereferenceable(33) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(33) %1) #20
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(33) %1, i64 noundef %i.b) #20 ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA57_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 1 dereferenceable(57) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(57) %1) #20
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(57) %1, i64 noundef %i.b) #20 ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare noundef ptr @_ZN4mold10get_symbolINS_6X86_64EEEPNS_6SymbolIT_EERNS_7ContextIS3_EESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(14448), i64, ptr) local_unnamed_addr #4

declare void @_ZN4mold9InputFileINS_6X86_64EE28populate_symbol_name_lengthsEv(ptr noundef nonnull align 8 dereferenceable(312)) local_unnamed_addr #4

declare void @_ZN4mold10ObjectFileINS_6X86_64EE23register_global_symbolsERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(992), ptr noundef nonnull align 8 dereferenceable(14448)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_ZN4mold14run_lto_pluginINS_6X86_64EEESt6vectorIPNS_10ObjectFileIT_EESaIS6_EERNS_7ContextIS4_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.217") align 8 %0, ptr noundef nonnull align 8 dereferenceable(14448) %1) local_unnamed_addr #2 comdat {
._crit_edge.i.i:
  %2 = alloca %"class.std::vector.534", align 8   ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %8 = alloca %class.anon.339, align 8            ; 4 uses
  %9 = alloca %class.anon.338, align 8            ; 4 uses
  %10 = alloca %"class.mold::Timer", align 8      ; 4 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %class.anon, align 1               ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"struct.mold::PluginInputFile", align 8 ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %18 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 24 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %19 = alloca %"class.mold::Fatal", align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.e = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  store ptr %i.e, ptr %11, align 8, !tbaa !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.e, ptr noundef nonnull align 1 dereferenceable(14) @.str.10, i64 14, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 14, ptr %i.f, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %11, i64 30
  store i8 0, ptr %i.g, align 2, !tbaa !29
  call void @_ZN4mold5TimerINS_7ContextINS_6X86_64EEEEC2ERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS4_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(14448) %1, ptr nofree noundef nonnull align 8 dereferenceable(32) %11, ptr noundef null)
  %i.h = load ptr, ptr %11, align 8, !tbaa !171   ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.e
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i
  %i.j = load i64, ptr %i.e, align 8, !tbaa !29
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  store ptr %1, ptr %9, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  store ptr %9, ptr %8, align 8, !tbaa !25
  %i.l = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 2 uses
  store ptr %8, ptr %i.l, align 8, !tbaa !25
  %i.m = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 2 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZN4moldL15load_lto_pluginINS3_6X86_64EEEvRNS3_7ContextIT_EEEUlvE_JEEvRS_OS7_DpOT0_EUlvE_EERS7_ENUlvE_8__invokeEv, ptr %i.m, align 8, !tbaa !25
  %i.n = call noundef i32 @pthread_once(ptr noundef nonnull @_ZZN4moldL15load_lto_pluginINS_6X86_64EEEvRNS_7ContextIT_EEE4flag, ptr noundef nonnull @__once_proxy) #20 ; 2 uses
  %.not.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i, label %_ZN4moldL15load_lto_pluginINS_6X86_64EEEvRNS_7ContextIT_EE.exit, label %bb.a

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZSt20__throw_system_errori(i32 noundef %i.n) #27
  unreachable

_ZN4moldL15load_lto_pluginINS_6X86_64EEEvRNS_7ContextIT_EE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store ptr null, ptr %i.l, align 8, !tbaa !25
  store ptr null, ptr %i.m, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2677
  %i.p = load i8, ptr %i.o, align 1, !tbaa !621, !range !462, !noundef !463
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZN4moldL15supports_v3_apiINS_6X86_64EEEbRNS_7ContextIT_EE.exit.thread78, label %bb.b

bb.b:                                             ; preds = %_ZN4moldL15load_lto_pluginINS_6X86_64EEEvRNS_7ContextIT_EE.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 3152
  %.val = load ptr, ptr %i.r, align 8             ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 3160
  %.val34 = load i64, ptr %i.s, align 8           ; 3 uses
  %.b.i = load i1, ptr @_ZN4moldL20is_gcc_linker_api_v1E, align 1
  br i1 %.b.i, label %_ZN4moldL15supports_v3_apiINS_6X86_64EEEbRNS_7ContextIT_EE.exit.thread78, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not3339.i.i.i.i = icmp ult i64 %.val34, 9
  br i1 %.not3339.i.i.i.i, label %_ZN4moldL15supports_v3_apiINS_6X86_64EEEbRNS_7ContextIT_EE.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 %.val34
  %i.u = ptrtoint ptr %i.t to i64
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.041.i.i.i.i = phi i64 [ %.val34, %.lr.ph.i.i.i.i ], [ %i.ai, %bb.d ]
  %.02740.i.i.i.i = phi ptr [ %.val, %.lr.ph.i.i.i.i ], [ %i.ag, %bb.d ]
  %.reass.reass.i.reass.reass.i.i.i = add i64 %.041.i.i.i.i, -8
  %i.v = call ptr @memchr(ptr noundef %.02740.i.i.i.i, i32 noundef 76, i64 noundef %.reass.reass.i.reass.reass.i.i.i) #20 ; 5 uses
  %.not34.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not34.i.i.i.i, label %_ZN4moldL15supports_v3_apiINS_6X86_64EEEbRNS_7ContextIT_EE.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i
  %i.w = load i64, ptr %i.v, align 1
  %i.x = xor i64 %i.w, 7236281190747360332
  %i.y = getelementptr i8, ptr %i.v, i64 8
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = zext i8 %i.z to i64
  %i.ab = xor i64 %i.aa, 46
  %i.ac = or i64 %i.x, %i.ab
  %i.ad = icmp ne i64 %i.ac, 0
  %i.ae = zext i1 %i.ad to i32
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_ZN4moldL15supports_v3_apiINS_6X86_64EEEbRNS_7ContextIT_EE.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 1 ; 2 uses
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.u, %i.ah                     ; 2 uses
  %.not33.i.i.i.i = icmp ult i64 %i.ai, 9
  br i1 %.not33.i.i.i.i, label %_ZN4moldL15supports_v3_apiINS_6X86_64EEEbRNS_7ContextIT_EE.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i, !llvm.loop !602

_ZN4moldL15supports_v3_apiINS_6X86_64EEEbRNS_7ContextIT_EE.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.aj = ptrtoint ptr %i.v to i64
  %i.ak = ptrtoint ptr %.val to i64
  %i.al = sub i64 %i.aj, %i.ak
  %.not79 = icmp eq i64 %i.al, -1
  br i1 %.not79, label %_ZN4moldL15supports_v3_apiINS_6X86_64EEEbRNS_7ContextIT_EE.exit.thread, label %_ZN4moldL15supports_v3_apiINS_6X86_64EEEbRNS_7ContextIT_EE.exit.thread78

_ZN4moldL15supports_v3_apiINS_6X86_64EEEbRNS_7ContextIT_EE.exit.thread: ; preds = %bb.d, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i, %bb.c, %_ZN4moldL15supports_v3_apiINS_6X86_64EEEbRNS_7ContextIT_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 13064
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !622 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 13072
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !622 ; 2 uses
  %i.aq = icmp eq ptr %i.an, %i.ap
  br i1 %i.aq, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4moldL15supports_v3_apiINS_6X86_64EEEbRNS_7ContextIT_EE.exit.thread
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.g

._crit_edge.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZN4moldL15supports_v3_apiINS_6X86_64EEEbRNS_7ContextIT_EE.exit.thread
  %.lcssa.i = phi ptr [ null, %_ZN4moldL15supports_v3_apiINS_6X86_64EEEbRNS_7ContextIT_EE.exit.thread ], [ %i.cw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  store ptr %.lcssa.i, ptr %2, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 12632
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 12688
  %i.ax = load atomic i64, ptr %i.aw acquire, align 8, !noalias !623
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 12648 ; 2 uses
  %i.az = load atomic ptr, ptr %i.ay acquire, align 8, !noalias !623 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 12656
  %i.bb = icmp eq ptr %i.az, %i.ba
  %i.bc = select i1 %i.bb, i64 3, i64 64
  %i.bd = load ptr, ptr %i.av, align 8, !tbaa !464, !noalias !623
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %._crit_edge.i
  %.01015.i.i.i.i.i = phi i64 [ 0, %._crit_edge.i ], [ %i.bi, %bb.f ] ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.01015.i.i.i.i.i
  %i.bf = load atomic ptr, ptr %i.be monotonic, align 8, !noalias !623
  %.not.i.i.i.i.i = icmp ugt ptr %i.bf, %i.bd
  br i1 %.not.i.i.i.i.i, label %bb.f, label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.e
  %i.bg = shl nuw i64 1, %.01015.i.i.i.i.i
  %i.bh = and i64 %i.bg, -2
  br label %_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10ObjectFileINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EEE3endEv.exit.i

bb.f:                                             ; preds = %bb.e
  %i.bi = add nuw nsw i64 %.01015.i.i.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.bi, %i.bc
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10ObjectFileINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EEE3endEv.exit.i, label %bb.e, !llvm.loop !605

_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10ObjectFileINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EEE3endEv.exit.i: ; preds = %bb.f, %.thread.i.i.i.i.i
  %.1.i.i.i.i.i = phi i64 [ %i.bh, %.thread.i.i.i.i.i ], [ 8, %bb.f ]
  %.sroa.speculated.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.1.i.i.i.i.i, i64 %i.ax) ; 2 uses
  %.not54.i = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %.not54.i, label %._crit_edge58.i, label %.lr.ph57.i

.lr.ph57.i:                                       ; preds = %_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10ObjectFileINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EEE3endEv.exit.i
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 12 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt10unique_ptrIN4mold10ObjectFileINS5_6X86_64EEENS5_18ArenaObjectDeleterIS8_EEENS1_23cache_aligned_allocatorISB_EEEESB_EdeEv.exit.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %.lr.ph.i
  %i.bp = phi ptr [ null, %.lr.ph.i ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 3 uses
  %i.bq = phi ptr [ null, %.lr.ph.i ], [ %i.cv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 3 uses
  %i.br = phi ptr [ %i.an, %.lr.ph.i ], [ %i.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 3 uses
  %.sroa.048.053.i = phi ptr [ null, %.lr.ph.i ], [ %i.cw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 5 uses
  %.sroa.045.0.copyload.i = load i64, ptr %i.br, align 8, !tbaa !207 ; 9 uses
  %.sroa.446.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.sroa.446.0.copyload.i = load ptr, ptr %.sroa.446.0..sroa_idx.i, align 8, !tbaa !206 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr %i.ar, ptr %3, align 8, !tbaa !28
  %i.bs = icmp eq ptr %.sroa.446.0.copyload.i, null
  %i.bt = icmp ne i64 %.sroa.045.0.copyload.i, 0
  %or.cond.i.i.i.i = and i1 %i.bt, %i.bs
  br i1 %or.cond.i.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.24) #27
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.bu = icmp ugt i64 %.sroa.045.0.copyload.i, 15
  br i1 %i.bu, label %bb.j, label %._crit_edge.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.bv = icmp slt i64 %.sroa.045.0.copyload.i, 0
  br i1 %i.bv, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #27
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.bw = add nuw i64 %.sroa.045.0.copyload.i, 1  ; 2 uses
  %i.bx = icmp slt i64 %i.bw, 0
  br i1 %i.bx, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, !prof !172

bb.m:                                             ; preds = %bb.l
  call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i: ; preds = %bb.l
  %i.by = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #28 ; 2 uses
  store ptr %i.by, ptr %3, align 8, !tbaa !171
  store i64 %.sroa.045.0.copyload.i, ptr %i.ar, align 8, !tbaa !29
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, %bb.i
  %i.bz = phi ptr [ %i.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i ], [ %i.ar, %bb.i ] ; 3 uses
  switch i64 %.sroa.045.0.copyload.i, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit.i
  ]

bb.n:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ca = load i8, ptr %.sroa.446.0.copyload.i, align 1, !tbaa !29
  store i8 %i.ca, ptr %i.bz, align 1, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit.i

bb.o:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bz, ptr align 1 %.sroa.446.0.copyload.i, i64 %.sroa.045.0.copyload.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit.i: ; preds = %bb.o, %bb.n, %._crit_edge.i.i.i.i.i
  store i64 %.sroa.045.0.copyload.i, ptr %i.as, align 8, !tbaa !22
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.sroa.045.0.copyload.i
  store i8 0, ptr %i.cb, align 1, !tbaa !29
  %i.cc = load ptr, ptr %3, align 8, !tbaa !171
  %i.cd = call noalias ptr @strdup(ptr noundef %i.cc) #20 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bq, %i.bp
  br i1 %.not.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit.i
  store ptr %i.cd, ptr %i.bq, align 8, !tbaa !206
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  store ptr %i.ce, ptr %i.at, align 8, !tbaa !467
  br label %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit.i

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit.i
  %i.cf = ptrtoint ptr %i.bp to i64
  %i.cg = ptrtoint ptr %.sroa.048.053.i to i64
  %i.ch = sub i64 %i.cf, %i.cg                    ; 6 uses
  %i.ci = icmp eq i64 %i.ch, 9223372036854775800
  br i1 %i.ci, label %bb.r, label %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i.i.i

bb.r:                                             ; preds = %bb.q
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #27
  unreachable

_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i.i.i: ; preds = %bb.q
  %i.cj = ashr exact i64 %i.ch, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cj, i64 1)
  %i.ck = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.cj ; 2 uses
  %i.cl = icmp ult i64 %i.ck, %i.cj
  %i.cm = call i64 @llvm.umin.i64(i64 %i.ck, i64 1152921504606846975)
  %i.cn = select i1 %i.cl, i64 1152921504606846975, i64 %i.cm ; 3 uses
  %.not.i.i.i.i9.i = icmp ne i64 %i.cn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i9.i)
  %i.co = shl nuw nsw i64 %i.cn, 3
  %i.cp = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.co) #28 ; 4 uses
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 %i.ch ; 2 uses
  store ptr %i.cd, ptr %i.cq, align 8, !tbaa !206
  %i.cr = icmp sgt i64 %i.ch, 0
  br i1 %i.cr, label %bb.s, label %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.i

bb.s:                                             ; preds = %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cp, ptr align 8 %.sroa.048.053.i, i64 %i.ch, i1 false)
  br label %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.i

_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.i: ; preds = %bb.s, %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %.not.i17.i.i.i.i = icmp eq ptr %.sroa.048.053.i, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.048.053.i, i64 noundef %i.ch) #26
  br label %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i

_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i: ; preds = %bb.t, %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.i
  store ptr %i.cs, ptr %i.at, align 8, !tbaa !467
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.cn ; 2 uses
  store ptr %i.ct, ptr %i.au, align 8, !tbaa !468
  br label %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit.i

_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit.i:   ; preds = %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i, %bb.p
  %i.cu = phi ptr [ %i.bp, %bb.p ], [ %i.ct, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i ]
  %i.cv = phi ptr [ %i.ce, %bb.p ], [ %i.cs, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i ]
  %i.cw = phi ptr [ %.sroa.048.053.i, %bb.p ], [ %i.cp, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i ] ; 2 uses
  %i.cx = load ptr, ptr %3, align 8, !tbaa !171   ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.ar
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit.i
  %i.cz = load i64, ptr %i.ar, align 8, !tbaa !29
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.db = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.ap
  br i1 %i.dc, label %._crit_edge.i, label %bb.g

._crit_edge58.i:                                  ; preds = %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt10unique_ptrIN4mold10ObjectFileINS5_6X86_64EEENS5_18ArenaObjectDeleterIS8_EEENS1_23cache_aligned_allocatorISB_EEEESB_EppEv.exit.i, %_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10ObjectFileINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EEE3endEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr @.str.70, ptr %i.a, align 8, !tbaa !206
  call void @_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store ptr null, ptr %i.b, align 8, !tbaa !206
  call void @_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.dd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout) #20, !inline_history !606 ; 0 uses
  %i.de = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr) #20, !inline_history !606 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @_ZN4mold13get_self_pathB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6) #20
  %i.df = load ptr, ptr %6, align 8, !tbaa !171
  %i.dg = load ptr, ptr %2, align 8, !tbaa !469
  %i.dh = call i32 @execv(ptr noundef %i.df, ptr noundef %i.dg) #20 ; 0 uses
  %i.di = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.71)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @_ZN4mold12errno_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7) #20
  %i.dj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %i.di, ptr noundef nonnull align 8 dereferenceable(32) %7)
  %i.dk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.dj, ptr noundef nonnull @.str.6) ; 0 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @_exit(i32 noundef 1) #27
  unreachable

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt10unique_ptrIN4mold10ObjectFileINS5_6X86_64EEENS5_18ArenaObjectDeleterIS8_EEENS1_23cache_aligned_allocatorISB_EEEESB_EdeEv.exit.i: ; preds = %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt10unique_ptrIN4mold10ObjectFileINS5_6X86_64EEENS5_18ArenaObjectDeleterIS8_EEENS1_23cache_aligned_allocatorISB_EEEESB_EppEv.exit.i, %.lr.ph57.i
  %.sroa.5.055.i = phi i64 [ 0, %.lr.ph57.i ], [ %i.go, %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt10unique_ptrIN4mold10ObjectFileINS5_6X86_64EEENS5_18ArenaObjectDeleterIS8_EEENS1_23cache_aligned_allocatorISB_EEEESB_EppEv.exit.i ] ; 3 uses
  %i.dl = or i64 %.sroa.5.055.i, 1
  %i.dm = call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dl, i1 true)
  %i.dn = xor i64 %i.dm, 63
  %i.do = load atomic ptr, ptr %i.ay acquire, align 8
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.dn
  %i.dq = load atomic ptr, ptr %i.dp acquire, align 8
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %.sroa.5.055.i ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !156 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 809
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !167, !range !462, !noundef !463
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %bb.u, label %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt10unique_ptrIN4mold10ObjectFileINS5_6X86_64EEENS5_18ArenaObjectDeleterIS8_EEENS1_23cache_aligned_allocatorISB_EEEESB_EppEv.exit.i

bb.u:                                             ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt10unique_ptrIN4mold10ObjectFileINS5_6X86_64EEENS5_18ArenaObjectDeleterIS8_EEENS1_23cache_aligned_allocatorISB_EEEESB_EdeEv.exit.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 136
  %i.dx = load atomic i8, ptr %i.dw monotonic, align 1, !range !462, !noundef !463
  %i.dy = trunc nuw i8 %i.dx to i1
  br i1 %i.dy, label %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt10unique_ptrIN4mold10ObjectFileINS5_6X86_64EEENS5_18ArenaObjectDeleterIS8_EEENS1_23cache_aligned_allocatorISB_EEEESB_EppEv.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.dz = load ptr, ptr %i.dr, align 8, !tbaa !156
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !168
  call void @_ZNK4mold10MappedFile14get_identifierB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(80) %i.eb)
  call void @llvm.experimental.noalias.scope.decl(metadata !624)
  %i.ec = load i64, ptr %i.bj, align 8, !tbaa !22, !noalias !624 ; 12 uses
  %i.ed = icmp sgt i64 %i.ec, 9223372036854775789
  br i1 %i.ed, label %bb.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.w:                                             ; preds = %bb.v
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #27, !noalias !624
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.v
  %i.ee = add nsw i64 %i.ec, 18                   ; 7 uses
  %i.ef = load ptr, ptr %5, align 8, !tbaa !171, !noalias !624 ; 8 uses
  %i.eg = icmp eq ptr %i.ef, %i.bk
  br i1 %i.eg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i29.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i29.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.eh = icmp samesign ult i64 %i.ec, 16
  call void @llvm.assume(i1 %i.eh), !noalias !624
  br label %bb.ae

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ei = load i64, ptr %i.bk, align 8, !tbaa !29, !noalias !624 ; 2 uses
  %.not.i2651.i = icmp ugt i64 %i.ee, %i.ei
  br i1 %.not.i2651.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i29.i, label %bb.x

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.thread.i
  %i.ej = icmp ugt ptr %i.ef, @.str.69
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ec
  %i.el = icmp ult ptr %i.ek, @.str.69
  %i.em = select i1 %i.ej, i1 true, i1 %i.el
  br i1 %i.em, label %bb.y, label %bb.ac, !prof !470

bb.y:                                             ; preds = %bb.x
  %.not35.i.i = icmp eq i64 %i.ec, 0
  br i1 %.not35.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.en = getelementptr inbounds nuw i8, ptr %i.ef, i64 18 ; 2 uses
  %cond38.i.i = icmp eq i64 %i.ec, 1
  br i1 %cond38.i.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.eo = load i8, ptr %i.ef, align 1, !tbaa !29, !noalias !624
  store i8 %i.eo, ptr %i.en, align 1, !tbaa !29, !noalias !624
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i

bb.ab:                                            ; preds = %bb.z
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.en, ptr align 1 %i.ef, i64 %i.ec, i1 false), !noalias !624
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i: ; preds = %bb.ab, %bb.aa, %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.ef, ptr noundef nonnull align 1 dereferenceable(18) @.str.69, i64 18, i1 false), !noalias !624
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm.exit.i

bb.ac:                                            ; preds = %bb.x
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.ef, i64 noundef 0, ptr noundef nonnull @.str.69, i64 noundef 18, i64 noundef %i.ec) #30, !noalias !624
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i29.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.thread.i
  %i.ep = icmp slt i64 %i.ec, -18
  br i1 %i.ep, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i29.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #27, !noalias !624
  unreachable

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i29.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i29.thread.i
  %i.eq = phi i64 [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i29.thread.i ], [ %i.ei, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i29.i ] ; 2 uses
  %i.er = icmp ugt i64 %i.ee, %i.eq
  br i1 %i.er, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.es = shl nuw i64 %i.eq, 1                    ; 2 uses
  %i.et = icmp ult i64 %i.ee, %i.es
  br i1 %i.et, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %spec.store.select.i.i.i = call i64 @llvm.umin.i64(i64 %i.es, i64 9223372036854775807)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %.0.i30.i = phi i64 [ %spec.store.select.i.i.i, %bb.ag ], [ %i.ee, %bb.af ], [ %i.ee, %bb.ae ] ; 2 uses
  %i.eu = add nuw i64 %.0.i30.i, 1                ; 2 uses
  %i.ev = icmp slt i64 %i.eu, 0
  br i1 %i.ev, label %bb.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i35, !prof !172

bb.ai:                                            ; preds = %bb.ah
  call void @_ZSt17__throw_bad_allocv() #27, !noalias !624
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i35: ; preds = %bb.ah
  %i.ew = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eu) #28, !noalias !624 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.ew, ptr noundef nonnull align 1 dereferenceable(18) @.str.69, i64 18, i1 false), !noalias !624
  %.not25.i.i = icmp eq i64 %i.ec, 0
  %.pre.i32.i = load ptr, ptr %5, align 8, !tbaa !171, !noalias !624 ; 4 uses
  br i1 %.not25.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i35
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 18 ; 2 uses
  %cond31.i.i = icmp eq i64 %i.ec, 1
  br i1 %cond31.i.i, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ey = load i8, ptr %.pre.i32.i, align 1, !tbaa !29, !noalias !624
  store i8 %i.ey, ptr %i.ex, align 1, !tbaa !29, !noalias !624
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i

bb.al:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ex, ptr align 1 %.pre.i32.i, i64 %i.ec, i1 false), !noalias !624
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i: ; preds = %bb.al, %bb.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i35
  %i.ez = icmp eq ptr %.pre.i32.i, %i.bk
  br i1 %i.ez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i
  %i.fa = load i64, ptr %i.bk, align 8, !tbaa !29, !noalias !624
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %.pre.i32.i, i64 noundef %i.fb) #26, !noalias !624
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i.i
  store ptr %i.ew, ptr %5, align 8, !tbaa !171, !noalias !624
  store i64 %.0.i30.i, ptr %i.bk, align 8, !tbaa !29, !noalias !624
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit.i, %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i
  store i64 %i.ee, ptr %i.bj, align 8, !tbaa !22, !noalias !624
  %i.fc = load ptr, ptr %5, align 8, !tbaa !171, !noalias !624
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.ee
  store i8 0, ptr %i.fd, align 1, !tbaa !29, !noalias !624
  store ptr %i.bl, ptr %4, align 8, !tbaa !28, !alias.scope !624
  %i.fe = load ptr, ptr %5, align 8, !tbaa !171   ; 3 uses
  %i.ff = icmp eq ptr %i.fe, %i.bk
  br i1 %i.ff, label %bb.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm.exit.i
  %i.fg = load i64, ptr %i.bj, align 8, !tbaa !22 ; 3 uses
  %i.fh = icmp ult i64 %i.fg, 16
  call void @llvm.assume(i1 %i.fh)
  %i.fi = add nuw nsw i64 %i.fg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bl, ptr noundef nonnull align 8 dereferenceable(1) %i.bk, i64 %i.fi, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm.exit.i
  store ptr %i.fe, ptr %4, align 8, !tbaa !171, !alias.scope !624
  %i.fj = load i64, ptr %i.bk, align 8, !tbaa !29
  store i64 %i.fj, ptr %i.bl, align 8, !tbaa !29, !alias.scope !624
  %.pre.i.i = load i64, ptr %i.bj, align 8, !tbaa !22
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit.i

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i, %bb.am
  %i.fk = phi ptr [ %i.bl, %bb.am ], [ %i.fe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i ]
  %i.fl = phi i64 [ %i.fg, %bb.am ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i ]
  store i64 %i.fl, ptr %i.bm, align 8, !tbaa !22, !alias.scope !624
  store ptr %i.bk, ptr %5, align 8, !tbaa !171
  store i64 0, ptr %i.bj, align 8, !tbaa !22
  store i8 0, ptr %i.bk, align 8, !tbaa !29
  %i.fm = call noalias ptr @strdup(ptr noundef %i.fk) #20 ; 2 uses
  %i.fn = load ptr, ptr %i.bn, align 8, !tbaa !467 ; 4 uses
  %i.fo = load ptr, ptr %i.bo, align 8, !tbaa !468
  %.not.i.i11.i = icmp eq ptr %i.fn, %i.fo
  br i1 %.not.i.i11.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit.i
  store ptr %i.fm, ptr %i.fn, align 8, !tbaa !206
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  store ptr %i.fp, ptr %i.bn, align 8, !tbaa !467
  br label %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit18.i

bb.ao:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit.i
  %i.fq = load ptr, ptr %2, align 8, !tbaa !469   ; 4 uses
  %i.fr = ptrtoint ptr %i.fn to i64
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = sub i64 %i.fr, %i.fs                    ; 6 uses
  %i.fu = icmp eq i64 %i.ft, 9223372036854775800
  br i1 %i.fu, label %bb.ap, label %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i.i12.i

bb.ap:                                            ; preds = %bb.ao
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #27
  unreachable

_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i.i12.i: ; preds = %bb.ao
  %i.fv = ashr exact i64 %i.ft, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i13.i = call i64 @llvm.umax.i64(i64 %i.fv, i64 1)
  %i.fw = add nsw i64 %.sroa.speculated.i.i.i.i13.i, %i.fv ; 2 uses
  %i.fx = icmp ult i64 %i.fw, %i.fv
  %i.fy = call i64 @llvm.umin.i64(i64 %i.fw, i64 1152921504606846975)
  %i.fz = select i1 %i.fx, i64 1152921504606846975, i64 %i.fy ; 3 uses
  %.not.i.i.i.i14.i = icmp ne i64 %i.fz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i14.i)
  %i.ga = shl nuw nsw i64 %i.fz, 3
  %i.gb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ga) #28 ; 4 uses
  %i.gc = getelementptr inbounds i8, ptr %i.gb, i64 %i.ft ; 2 uses
  store ptr %i.fm, ptr %i.gc, align 8, !tbaa !206
  %i.gd = icmp sgt i64 %i.ft, 0
  br i1 %i.gd, label %bb.aq, label %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i15.i

bb.aq:                                            ; preds = %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i.i12.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gb, ptr align 8 %i.fq, i64 %i.ft, i1 false)
  br label %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i15.i

_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i15.i: ; preds = %bb.aq, %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i.i12.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %.not.i17.i.i.i16.i = icmp eq ptr %i.fq, null
  br i1 %.not.i17.i.i.i16.i, label %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i17.i, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i15.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fq, i64 noundef %i.ft) #26
  br label %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i17.i

_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i17.i: ; preds = %bb.ar, %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i15.i
  store ptr %i.gb, ptr %2, align 8, !tbaa !469
  store ptr %i.ge, ptr %i.bn, align 8, !tbaa !467
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %i.fz
  store ptr %i.gf, ptr %i.bo, align 8, !tbaa !468
  br label %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit18.i

_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit18.i: ; preds = %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i17.i, %bb.an
  %i.gg = load ptr, ptr %4, align 8, !tbaa !171   ; 2 uses
  %i.gh = icmp eq ptr %i.gg, %i.bl
  br i1 %i.gh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i: ; preds = %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit18.i
  %i.gi = load i64, ptr %i.bl, align 8, !tbaa !29
  %i.gj = add i64 %i.gi, 1
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gj) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i: ; preds = %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit18.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i
  %i.gk = load ptr, ptr %5, align 8, !tbaa !171   ; 2 uses
  %i.gl = icmp eq ptr %i.gk, %i.bk
  br i1 %i.gl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i
  %i.gm = load i64, ptr %i.bk, align 8, !tbaa !29
  %i.gn = add i64 %i.gm, 1
  call void @_ZdlPvm(ptr noundef %i.gk, i64 noundef %i.gn) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt10unique_ptrIN4mold10ObjectFileINS5_6X86_64EEENS5_18ArenaObjectDeleterIS8_EEENS1_23cache_aligned_allocatorISB_EEEESB_EppEv.exit.i

_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt10unique_ptrIN4mold10ObjectFileINS5_6X86_64EEENS5_18ArenaObjectDeleterIS8_EEENS1_23cache_aligned_allocatorISB_EEEESB_EppEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i, %bb.u, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt10unique_ptrIN4mold10ObjectFileINS5_6X86_64EEENS5_18ArenaObjectDeleterIS8_EEENS1_23cache_aligned_allocatorISB_EEEESB_EdeEv.exit.i
  %i.go = add nuw i64 %.sroa.5.055.i, 1           ; 2 uses
  %.not.i = icmp eq i64 %i.go, %.sroa.speculated.i.i.i
  br i1 %.not.i, label %._crit_edge58.i, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt10unique_ptrIN4mold10ObjectFileINS5_6X86_64EEENS5_18ArenaObjectDeleterIS8_EEENS1_23cache_aligned_allocatorISB_EEEESB_EdeEv.exit.i

_ZN4moldL15supports_v3_apiINS_6X86_64EEEbRNS_7ContextIT_EE.exit.thread78: ; preds = %bb.b, %_ZN4moldL15supports_v3_apiINS_6X86_64EEEbRNS_7ContextIT_EE.exit, %_ZN4moldL15load_lto_pluginINS_6X86_64EEEvRNS_7ContextIT_EE.exit
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 13088 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !471
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 13096 ; 2 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !471
  call void @_ZN3tbb6detail2d217parallel_for_eachIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_14run_lto_pluginIS7_EESB_IPNS6_IT_EESaISI_EERNS5_7ContextISG_EEEUlS9_E_EEvSG_SG_RKT0_(ptr %i.gq, ptr %i.gs, ptr noundef nonnull align 1 dereferenceable(1) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 3688
  %.sroa.074.082 = load ptr, ptr %i.gt, align 8, !tbaa !625 ; 2 uses
  %i.gu = icmp eq ptr %.sroa.074.082, null
  br i1 %i.gu, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4moldL15supports_v3_apiINS_6X86_64EEEbRNS_7ContextIT_EE.exit.thread78
  %i.gv = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.gx = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 12832 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 12824 ; 4 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 12776 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 5 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.he = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 5 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 4 uses
  br label %bb.as

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, %_ZN4moldL15supports_v3_apiINS_6X86_64EEEbRNS_7ContextIT_EE.exit.thread78
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 3776
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !626 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 3784
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !626 ; 2 uses
  %i.hk = icmp eq ptr %i.hh, %i.hj
  br i1 %i.hk, label %._crit_edge87, label %.lr.ph86

bb.as:                                            ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62
  %.sroa.074.083 = phi ptr [ %.sroa.074.082, %.lr.ph ], [ %.sroa.074.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62 ] ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.074.083, i64 8
  %.sroa.072.0.copyload = load i64, ptr %i.hl, align 8, !tbaa !207 ; 16 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.074.083, i64 16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !206 ; 6 uses
  %i.hm = call noundef ptr @_ZN4mold10get_symbolINS_6X86_64EEEPNS_6SymbolIT_EERNS_7ContextIS3_EESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(14448) %1, i64 %.sroa.072.0.copyload, ptr %.sroa.6.0.copyload) #20
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 33 ; 2 uses
  %i.ho = load i16, ptr %i.hn, align 1
  %i.hp = or i16 %i.ho, 16384
  store i16 %i.hp, ptr %i.hn, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  store ptr %i.gv, ptr %14, align 8, !tbaa !28
  %i.hq = icmp eq ptr %.sroa.6.0.copyload, null
  %i.hr = icmp ne i64 %.sroa.072.0.copyload, 0
  %or.cond.i.i.i = and i1 %i.hr, %i.hq
  br i1 %or.cond.i.i.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.24) #27
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.hs = icmp ugt i64 %.sroa.072.0.copyload, 15  ; 2 uses
  br i1 %i.hs, label %bb.av, label %._crit_edge.i.i.i.i

bb.av:                                            ; preds = %bb.au
  %i.ht = icmp slt i64 %.sroa.072.0.copyload, 0
  br i1 %i.ht, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #27
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.hu = add nuw i64 %.sroa.072.0.copyload, 1    ; 2 uses
  %i.hv = icmp slt i64 %i.hu, 0
  br i1 %i.hv, label %bb.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !172

bb.ay:                                            ; preds = %bb.ax
  call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.ax
  %i.hw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hu) #28 ; 2 uses
  store ptr %i.hw, ptr %14, align 8, !tbaa !171
  store i64 %.sroa.072.0.copyload, ptr %i.gv, align 8, !tbaa !29
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.au
  %i.hx = phi ptr [ %i.hw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.gv, %bb.au ] ; 3 uses
  switch i64 %.sroa.072.0.copyload, label %bb.ba [
    i64 1, label %bb.az
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  ]

bb.az:                                            ; preds = %._crit_edge.i.i.i.i
  %i.hy = load i8, ptr %.sroa.6.0.copyload, align 1, !tbaa !29
  store i8 %i.hy, ptr %i.hx, align 1, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

bb.ba:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hx, ptr align 1 %.sroa.6.0.copyload, i64 %.sroa.072.0.copyload, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.az, %bb.ba
  store i64 %.sroa.072.0.copyload, ptr %i.gw, align 8, !tbaa !22
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 %.sroa.072.0.copyload
  store i8 0, ptr %i.hz, align 1, !tbaa !29
  call void @llvm.experimental.noalias.scope.decl(metadata !627)
  %i.ia = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.11, i64 noundef 7), !noalias !627 ; 6 uses
  store ptr %i.gx, ptr %13, align 8, !tbaa !28, !alias.scope !627
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !171 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 16 ; 5 uses
  %i.id = icmp eq ptr %i.ib, %i.ic
  br i1 %i.id, label %bb.bb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !22 ; 3 uses
  %i.ig = icmp ult i64 %i.if, 16
  call void @llvm.assume(i1 %i.ig)
  %i.ih = add nuw nsw i64 %i.if, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gx, ptr noundef nonnull align 8 dereferenceable(1) %i.ic, i64 %i.ih, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  store ptr %i.ib, ptr %13, align 8, !tbaa !171, !alias.scope !627
  %i.ii = load i64, ptr %i.ic, align 8, !tbaa !29
  store i64 %i.ii, ptr %i.gx, align 8, !tbaa !29, !alias.scope !627
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !22
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  %i.ij = phi i64 [ %i.if, %bb.bb ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36 ]
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  store i64 %i.ij, ptr %i.gy, align 8, !tbaa !22, !alias.scope !627
  store ptr %i.ic, ptr %i.ia, align 8, !tbaa !171
  store i64 0, ptr %i.ik, align 8, !tbaa !22
  store i8 0, ptr %i.ic, align 8, !tbaa !29
  %i.il = load i64, ptr %i.gy, align 8, !tbaa !22
  %i.im = add i64 %i.il, 1
  %i.in = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.im) #28 ; 4 uses
  %i.io = load ptr, ptr %13, align 8, !tbaa !171
  %i.ip = load i64, ptr %i.gy, align 8, !tbaa !22 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.in, ptr align 1 %i.io, i64 %i.ip, i1 false)
  %i.iq = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.ip
  store i8 0, ptr %i.iq, align 1, !tbaa !29
  %i.ir = atomicrmw add ptr %i.gz, i64 1 seq_cst, align 8, !noalias !628
  %i.is = load atomic i64, ptr %i.ha monotonic, align 8, !noalias !628
  %i.it = icmp eq i64 %i.is, 0
  br i1 %i.it, label %bb.bc, label %_ZN4mold11save_stringINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERNS_7ContextIT_EERKNSt7__cxx1112basic_stringIcS4_SaIcEEE.exit

bb.bc:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  %i.iu = cmpxchg ptr %i.ha, i64 0, i64 1 seq_cst seq_cst, align 8, !noalias !628 ; 0 uses
  br label %_ZN4mold11save_stringINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERNS_7ContextIT_EERKNSt7__cxx1112basic_stringIcS4_SaIcEEE.exit

_ZN4mold11save_stringINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERNS_7ContextIT_EERKNSt7__cxx1112basic_stringIcS4_SaIcEEE.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit, %bb.bc
  %i.iv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3tbb6detail2d113segment_tableISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE18internal_subscriptILb1EEERS7_m(ptr noundef nonnull align 8 dereferenceable(65) %i.hb, i64 noundef %i.ir), !noalias !628
  store ptr %i.in, ptr %i.iv, align 8, !tbaa !206, !noalias !628
  %i.iw = load i64, ptr %i.gy, align 8, !tbaa !22 ; 2 uses
  %i.ix = load ptr, ptr %13, align 8, !tbaa !171  ; 2 uses
  %i.iy = icmp eq ptr %i.ix, %i.gx
  br i1 %i.iy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i38: ; preds = %_ZN4mold11save_stringINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERNS_7ContextIT_EERKNSt7__cxx1112basic_stringIcS4_SaIcEEE.exit
  %i.iz = icmp ult i64 %i.iw, 16
  call void @llvm.assume(i1 %i.iz)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39
end_hunk_0
begin_hunk_1_@_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EEE14create_segmentEPSt6atomicIPS8_Emm:bb.a
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.088
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  store atomic ptr %i.v, ptr %i.bh release, align 8
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.088
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  store atomic ptr %i.v, ptr %i.bj release, align 8
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.088
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  store atomic ptr %i.v, ptr %i.bl release, align 8
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.088
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  store atomic ptr %i.v, ptr %i.bn release, align 8
  %i.bo = add nuw nsw i64 %.088, 8                ; 2 uses
  %niter121.next.7 = add i64 %niter121, 8         ; 2 uses
  %niter121.ncmp.7 = icmp eq i64 %niter121.next.7, %unroll_iter120
  br i1 %niter121.ncmp.7, label %_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EEZNS1_18spin_wait_while_eqIS9_S9_EET_RKSt6atomicISB_ET0_St12memory_orderEUlS9_E_EESB_SF_SG_SH_.exit.loopexit.unr-lcssa, label %.lr.ph89, !llvm.loop !969

_ZNSt6atomicIPSt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS2_EEE23compare_exchange_strongERS6_S6_St12memory_order.exit: ; preds = %bb.f
  %i.bp = load ptr, ptr %0, align 8, !tbaa !510
  %.not14 = icmp eq ptr %i.v, %i.bp
  br i1 %.not14, label %_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EEZNS1_18spin_wait_while_eqIS9_S9_EET_RKSt6atomicISB_ET0_St12memory_orderEUlS9_E_EESB_SF_SG_SH_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6atomicIPSt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS2_EEE23compare_exchange_strongERS6_S6_St12memory_order.exit
  tail call void @_ZN3tbb6detail2r124cache_aligned_deallocateEPv(ptr noundef %i.v) #20
  %i.bq = load ptr, ptr %i.b, align 8, !tbaa !509
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %2 ; 2 uses
  %i.bs = load atomic ptr, ptr %i.br acquire, align 8
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %.lr.ph.i16, label %_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EEZNS1_18spin_wait_while_eqIS9_S9_EET_RKSt6atomicISB_ET0_St12memory_orderEUlS9_E_EESB_SF_SG_SH_.exit

.lr.ph.i16:                                       ; preds = %bb.h, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i18
  %.sroa.0.09.us.i17 = phi i32 [ %.sroa.0.1.us.i19, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i18 ], [ 1, %bb.h ] ; 8 uses
  %i.bu = icmp slt i32 %.sroa.0.09.us.i17, 17
  br i1 %i.bu, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i16
  %i.bv = tail call noundef i32 @sched_yield() #20 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i18

bb.j:                                             ; preds = %.lr.ph.i16
  %i.bw = icmp sgt i32 %.sroa.0.09.us.i17, 0
  br i1 %i.bw, label %.lr.ph.i.i.us.i21.preheader, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i20

.lr.ph.i.i.us.i21.preheader:                      ; preds = %bb.j
  %xtraiter110 = and i32 %.sroa.0.09.us.i17, 7    ; 2 uses
  %lcmp.mod111.not = icmp eq i32 %xtraiter110, 0
  br i1 %lcmp.mod111.not, label %.lr.ph.i.i.us.i21.prol.loopexit, label %.lr.ph.i.i.us.i21.prol

.lr.ph.i.i.us.i21.prol:                           ; preds = %.lr.ph.i.i.us.i21.preheader, %.lr.ph.i.i.us.i21.prol
  %.01.i.i.us.i22.prol = phi i32 [ %i.bx, %.lr.ph.i.i.us.i21.prol ], [ %.sroa.0.09.us.i17, %.lr.ph.i.i.us.i21.preheader ]
  %prol.iter112 = phi i32 [ %prol.iter112.next, %.lr.ph.i.i.us.i21.prol ], [ 0, %.lr.ph.i.i.us.i21.preheader ]
  %i.bx = add nsw i32 %.01.i.i.us.i22.prol, -1    ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %prol.iter112.next = add i32 %prol.iter112, 1   ; 2 uses
  %prol.iter112.cmp.not = icmp eq i32 %prol.iter112.next, %xtraiter110
  br i1 %prol.iter112.cmp.not, label %.lr.ph.i.i.us.i21.prol.loopexit, label %.lr.ph.i.i.us.i21.prol, !llvm.loop !970

.lr.ph.i.i.us.i21.prol.loopexit:                  ; preds = %.lr.ph.i.i.us.i21.prol, %.lr.ph.i.i.us.i21.preheader
  %.01.i.i.us.i22.unr = phi i32 [ %.sroa.0.09.us.i17, %.lr.ph.i.i.us.i21.preheader ], [ %i.bx, %.lr.ph.i.i.us.i21.prol ]
  %i.by = icmp ult i32 %.sroa.0.09.us.i17, 8
  br i1 %i.by, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i20, label %.lr.ph.i.i.us.i21

.lr.ph.i.i.us.i21:                                ; preds = %.lr.ph.i.i.us.i21.prol.loopexit, %.lr.ph.i.i.us.i21
  %.01.i.i.us.i22 = phi i32 [ %i.bz, %.lr.ph.i.i.us.i21 ], [ %.01.i.i.us.i22.unr, %.lr.ph.i.i.us.i21.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.bz = add nsw i32 %.01.i.i.us.i22, -8
  tail call void @llvm.x86.sse2.pause()
  %i.ca = icmp sgt i32 %.01.i.i.us.i22, 8
  br i1 %i.ca, label %.lr.ph.i.i.us.i21, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i20, !llvm.loop !2

_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i20: ; preds = %.lr.ph.i.i.us.i21.prol.loopexit, %.lr.ph.i.i.us.i21, %bb.j
  %i.cb = shl i32 %.sroa.0.09.us.i17, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i18

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i18: ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i20, %bb.i
  %.sroa.0.1.us.i19 = phi i32 [ %i.cb, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i20 ], [ %.sroa.0.09.us.i17, %bb.i ]
  %i.cc = load atomic ptr, ptr %i.br acquire, align 8
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %.lr.ph.i16, label %_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EEZNS1_18spin_wait_while_eqIS9_S9_EET_RKSt6atomicISB_ET0_St12memory_orderEUlS9_E_EESB_SF_SG_SH_.exit, !llvm.loop !6

bb.k:                                             ; preds = %bb.a
  %i.ce = shl nuw i64 1, %2
  %i.cf = and i64 %i.ce, -2
  %i.cg = icmp eq i64 %3, %i.cf
  br i1 %i.cg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ch = icmp eq i64 %2, 0
  %i.ci = shl i64 8, %2
  %i.cj = select i1 %i.ch, i64 16, i64 %i.ci
  %i.ck = tail call noundef ptr @_ZN3tbb6detail2r122cache_aligned_allocateEm(i64 noundef %i.cj) #20
  %i.cl = sub i64 0, %3
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %i.cl
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2
  store atomic ptr %i.cm, ptr %i.cn release, align 8
  br label %_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EEZNS1_18spin_wait_while_eqIS9_S9_EET_RKSt6atomicISB_ET0_St12memory_orderEUlS9_E_EESB_SF_SG_SH_.exit

bb.m:                                             ; preds = %bb.k
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2 ; 2 uses
  %i.cp = load atomic ptr, ptr %i.co acquire, align 8
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %.lr.ph.i25, label %_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EEZNS1_18spin_wait_while_eqIS9_S9_EET_RKSt6atomicISB_ET0_St12memory_orderEUlS9_E_EESB_SF_SG_SH_.exit

.lr.ph.i25:                                       ; preds = %bb.m, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i27
  %.sroa.0.09.us.i26 = phi i32 [ %.sroa.0.1.us.i28, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i27 ], [ 1, %bb.m ] ; 8 uses
  %i.cr = icmp slt i32 %.sroa.0.09.us.i26, 17
  br i1 %i.cr, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i25
  %i.cs = tail call noundef i32 @sched_yield() #20 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i27

bb.o:                                             ; preds = %.lr.ph.i25
  %i.ct = icmp sgt i32 %.sroa.0.09.us.i26, 0
  br i1 %i.ct, label %.lr.ph.i.i.us.i30.preheader, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i29

.lr.ph.i.i.us.i30.preheader:                      ; preds = %bb.o
  %xtraiter = and i32 %.sroa.0.09.us.i26, 7       ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.us.i30.prol.loopexit, label %.lr.ph.i.i.us.i30.prol

.lr.ph.i.i.us.i30.prol:                           ; preds = %.lr.ph.i.i.us.i30.preheader, %.lr.ph.i.i.us.i30.prol
  %.01.i.i.us.i31.prol = phi i32 [ %i.cu, %.lr.ph.i.i.us.i30.prol ], [ %.sroa.0.09.us.i26, %.lr.ph.i.i.us.i30.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.us.i30.prol ], [ 0, %.lr.ph.i.i.us.i30.preheader ]
  %i.cu = add nsw i32 %.01.i.i.us.i31.prol, -1    ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.us.i30.prol.loopexit, label %.lr.ph.i.i.us.i30.prol, !llvm.loop !971

.lr.ph.i.i.us.i30.prol.loopexit:                  ; preds = %.lr.ph.i.i.us.i30.prol, %.lr.ph.i.i.us.i30.preheader
  %.01.i.i.us.i31.unr = phi i32 [ %.sroa.0.09.us.i26, %.lr.ph.i.i.us.i30.preheader ], [ %i.cu, %.lr.ph.i.i.us.i30.prol ]
  %i.cv = icmp ult i32 %.sroa.0.09.us.i26, 8
  br i1 %i.cv, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i29, label %.lr.ph.i.i.us.i30

.lr.ph.i.i.us.i30:                                ; preds = %.lr.ph.i.i.us.i30.prol.loopexit, %.lr.ph.i.i.us.i30
  %.01.i.i.us.i31 = phi i32 [ %i.cw, %.lr.ph.i.i.us.i30 ], [ %.01.i.i.us.i31.unr, %.lr.ph.i.i.us.i30.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.cw = add nsw i32 %.01.i.i.us.i31, -8
  tail call void @llvm.x86.sse2.pause()
  %i.cx = icmp sgt i32 %.01.i.i.us.i31, 8
  br i1 %i.cx, label %.lr.ph.i.i.us.i30, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i29, !llvm.loop !2

_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i29: ; preds = %.lr.ph.i.i.us.i30.prol.loopexit, %.lr.ph.i.i.us.i30, %bb.o
  %i.cy = shl i32 %.sroa.0.09.us.i26, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i27

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i27: ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i29, %bb.n
  %.sroa.0.1.us.i28 = phi i32 [ %i.cy, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i29 ], [ %.sroa.0.09.us.i26, %bb.n ]
  %i.cz = load atomic ptr, ptr %i.co acquire, align 8
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %.lr.ph.i25, label %_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EEZNS1_18spin_wait_while_eqIS9_S9_EET_RKSt6atomicISB_ET0_St12memory_orderEUlS9_E_EESB_SF_SG_SH_.exit, !llvm.loop !6

_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EEZNS1_18spin_wait_while_eqIS9_S9_EET_RKSt6atomicISB_ET0_St12memory_orderEUlS9_E_EESB_SF_SG_SH_.exit.loopexit.unr-lcssa: ; preds = %.lr.ph89
  %lcmp.mod118.not = icmp eq i64 %xtraiter116, 0
  br i1 %lcmp.mod118.not, label %_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EEZNS1_18spin_wait_while_eqIS9_S9_EET_RKSt6atomicISB_ET0_St12memory_orderEUlS9_E_EESB_SF_SG_SH_.exit, label %.lr.ph89.epil.preheader

.lr.ph89.epil.preheader:                          ; preds = %_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EEZNS1_18spin_wait_while_eqIS9_S9_EET_RKSt6atomicISB_ET0_St12memory_orderEUlS9_E_EESB_SF_SG_SH_.exit.loopexit.unr-lcssa, %.preheader
  %.088.epil.init = phi i64 [ 1, %.preheader ], [ %i.bo, %_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EEZNS1_18spin_wait_while_eqIS9_S9_EET_RKSt6atomicISB_ET0_St12memory_orderEUlS9_E_EESB_SF_SG_SH_.exit.loopexit.unr-lcssa ]
  %lcmp.mod119 = icmp ne i64 %xtraiter116, 0
  call void @llvm.assume(i1 %lcmp.mod119)
  br label %.lr.ph89.epil

.lr.ph89.epil:                                    ; preds = %.lr.ph89.epil, %.lr.ph89.epil.preheader
  %.088.epil = phi i64 [ %i.dc, %.lr.ph89.epil ], [ %.088.epil.init, %.lr.ph89.epil.preheader ] ; 2 uses
  %epil.iter117 = phi i64 [ %epil.iter117.next, %.lr.ph89.epil ], [ 0, %.lr.ph89.epil.preheader ]
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.088.epil
  store atomic ptr %i.v, ptr %i.db release, align 8
  %i.dc = add nuw nsw i64 %.088.epil, 1
  %epil.iter117.next = add i64 %epil.iter117, 1   ; 2 uses
  %epil.iter117.cmp.not = icmp eq i64 %epil.iter117.next, %xtraiter116
  br i1 %epil.iter117.cmp.not, label %_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EEZNS1_18spin_wait_while_eqIS9_S9_EET_RKSt6atomicISB_ET0_St12memory_orderEUlS9_E_EESB_SF_SG_SH_.exit, label %.lr.ph89.epil, !llvm.loop !972

_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EEZNS1_18spin_wait_while_eqIS9_S9_EET_RKSt6atomicISB_ET0_St12memory_orderEUlS9_E_EESB_SF_SG_SH_.exit: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i27, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i18, %_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EEZNS1_18spin_wait_while_eqIS9_S9_EET_RKSt6atomicISB_ET0_St12memory_orderEUlS9_E_EESB_SF_SG_SH_.exit.loopexit.unr-lcssa, %.lr.ph89.epil, %_ZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EENS1_17concurrent_vectorIS8_SA_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS8_Emm.exit, %bb.m, %_ZNSt6atomicIPSt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS2_EEE23compare_exchange_strongERS6_S6_St12memory_order.exit, %bb.h, %bb.c, %bb.l
  ret ptr null
}

declare void @_ZN4mold11TimerRecord4stopEv(ptr noundef nonnull align 8 dereferenceable(145)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !467  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !468
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !206
  store ptr %i.e, ptr %i.b, align 8, !tbaa !206
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.f, ptr %i.a, align 8, !tbaa !467
  br label %_ZNSt6vectorIPKcSaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !469    ; 4 uses
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 5 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #27
  unreachable

_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 1152921504606846975)
  %i.p = select i1 %i.n, i64 1152921504606846975, i64 %i.o ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #28 ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.j ; 2 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !206
  store ptr %i.t, ptr %i.s, align 8, !tbaa !206
  %i.u = icmp sgt i64 %i.j, 0
  br i1 %i.u, label %bb.e, label %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr align 8 %i.g, i64 %i.j, i1 false)
  br label %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.not.i17.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !468
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.y) #26
  br label %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.r, ptr %0, align 8, !tbaa !469
  store ptr %i.v, ptr %i.a, align 8, !tbaa !467
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  store ptr %i.z, ptr %i.c, align 8, !tbaa !468
  br label %_ZNSt6vectorIPKcSaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

_ZNSt6vectorIPKcSaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #22

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZNK4mold10MappedFile14get_identifierB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::allocator.53", align 1 ; 3 uses
  %3 = alloca %"class.std::allocator.53", align 1 ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !170  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !171, !noalias !983
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !22, !noalias !983
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20, !noalias !983
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef %i.c, i64 noundef %i.e, ptr noundef nonnull @.str.72, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20, !noalias !983
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !170  ; 2 uses
  %.not1.i = icmp eq ptr %i.f, null
  br i1 %.not1.i, label %_ZNK4mold10MappedFile10get_offsetEv.exit, label %tailrecurse.preheader.i

tailrecurse.preheader.i:                          ; preds = %bb.b
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !209
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i, %tailrecurse.preheader.i
  %i.g = phi ptr [ %i.j, %tailrecurse.i ], [ %.pre.i, %tailrecurse.preheader.i ]
  %i.h = phi ptr [ %i.p, %tailrecurse.i ], [ %i.f, %tailrecurse.preheader.i ] ; 2 uses
  %accumulator.tr2.i = phi i64 [ %i.n, %tailrecurse.i ], [ 0, %tailrecurse.preheader.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !209  ; 2 uses
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = add i64 %accumulator.tr2.i, %i.k
  %i.n = sub i64 %i.m, %i.l                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !170  ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_ZNK4mold10MappedFile10get_offsetEv.exit, label %tailrecurse.i

_ZNK4mold10MappedFile10get_offsetEv.exit:         ; preds = %tailrecurse.i, %bb.b
  %accumulator.tr.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.n, %tailrecurse.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !984)
  %i.q = call i64 @llvm.abs.i64(i64 %accumulator.tr.lcssa.i, i1 false) ; 5 uses
  %i.r = icmp ult i64 %i.q, 10
  br i1 %i.r, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK4mold10MappedFile10get_offsetEv.exit, %bb.h
  %.029.i.i = phi i32 [ %i.z, %bb.h ], [ 1, %_ZNK4mold10MappedFile10get_offsetEv.exit ] ; 4 uses
  %.02328.i.i = phi i64 [ %i.y, %bb.h ], [ %i.q, %_ZNK4mold10MappedFile10get_offsetEv.exit ] ; 5 uses
  %i.s = icmp ult i64 %.02328.i.i, 100
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.t = add i32 %.029.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.u = icmp ult i64 %.02328.i.i, 1000
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = add i32 %.029.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.f:                                             ; preds = %bb.d
  %i.w = icmp ult i64 %.02328.i.i, 10000
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = add i32 %.029.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.h:                                             ; preds = %bb.f
  %i.y = udiv i64 %.02328.i.i, 10000
  %i.z = add i32 %.029.i.i, 4                     ; 2 uses
  %i.aa = icmp ult i64 %.02328.i.i, 100000
  br i1 %i.aa, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !977

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.h, %bb.g, %bb.e, %bb.c, %_ZNK4mold10MappedFile10get_offsetEv.exit
  %.022.i.i = phi i32 [ %i.x, %bb.g ], [ %i.t, %bb.c ], [ %i.v, %bb.e ], [ 1, %_ZNK4mold10MappedFile10get_offsetEv.exit ], [ %i.z, %bb.h ] ; 2 uses
  %.lobit.i = lshr i64 %accumulator.tr.lcssa.i, 63 ; 2 uses
  %i.ab = trunc nuw nsw i64 %.lobit.i to i32
  %i.ac = add i32 %.022.i.i, %i.ab                ; 3 uses
  %i.ad = zext i32 %i.ac to i64                   ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.ae, ptr %5, align 8, !tbaa !28, !alias.scope !984
  %i.af = icmp ugt i32 %i.ac, 15
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.ag = add nuw nsw i64 %i.ad, 1
  %i.ah = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #28 ; 2 uses
  store ptr %i.ah, ptr %5, align 8, !tbaa !171, !alias.scope !984
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !29, !alias.scope !984
  br label %bb.l

bb.j:                                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  switch i32 %i.ac, label %bb.l [
    i32 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
    i32 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  store i8 45, ptr %i.ae, align 8, !tbaa !29, !alias.scope !984
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.ai = phi ptr [ %i.ah, %bb.i ], [ %i.ae, %bb.j ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ai, i8 45, i64 %i.ad, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i: ; preds = %bb.l, %bb.k, %bb.j
  %i.aj = phi ptr [ %i.ae, %bb.j ], [ %i.ae, %bb.k ], [ %i.ai, %bb.l ]
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ad, ptr %i.ak, align 8, !tbaa !22, !alias.scope !984
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ad
  store i8 0, ptr %i.al, align 1, !tbaa !29
  %i.am = load ptr, ptr %5, align 8, !tbaa !171, !alias.scope !984
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %.lobit.i ; 4 uses
  %i.ao = icmp ugt i64 %i.q, 99
  br i1 %i.ao, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %i.ap = add i32 %.022.i.i, -1
  br label %.lr.ph.i11.i

.lr.ph.i11.i:                                     ; preds = %.lr.ph.i11.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.as, %.lr.ph.i11.i ], [ %i.q, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.bc, %.lr.ph.i11.i ], [ %i.ap, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.aq = urem i64 %.020.i.i, 100
  %i.ar = shl nuw nsw i64 %i.aq, 1
  %i.as = udiv i64 %.020.i.i, 100                 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ar ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !29, !noalias !984
  %i.aw = zext i32 %.01819.i.i to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.aw
  store i8 %i.av, ptr %i.ax, align 1, !tbaa !29
  %i.ay = load i8, ptr %i.at, align 2, !tbaa !29, !noalias !984
  %i.az = add i32 %.01819.i.i, -1
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ba
  store i8 %i.ay, ptr %i.bb, align 1, !tbaa !29
  %i.bc = add i32 %.01819.i.i, -2
  %i.bd = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.bd, label %.lr.ph.i11.i, label %._crit_edge.i.i, !llvm.loop !978

._crit_edge.i.i:                                  ; preds = %.lr.ph.i11.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %.0.lcssa.i.i = phi i64 [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i ], [ %i.as, %.lr.ph.i11.i ] ; 3 uses
  %i.be = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.be, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.bf = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.bg = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.bf ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !29, !noalias !984
  %i.bj = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !29
  %i.bk = load i8, ptr %i.bg, align 2, !tbaa !29, !noalias !984
  br label %_ZNSt7__cxx119to_stringEl.exit

bb.n:                                             ; preds = %._crit_edge.i.i
  %i.bl = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.bm = or disjoint i8 %i.bl, 48
  br label %_ZNSt7__cxx119to_stringEl.exit

_ZNSt7__cxx119to_stringEl.exit:                   ; preds = %bb.m, %bb.n
  %storemerge.i.i = phi i8 [ %i.bm, %bb.n ], [ %i.bk, %bb.m ]
  store i8 %storemerge.i.i, ptr %i.an, align 1, !tbaa !29
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
  %i.bn = load ptr, ptr %5, align 8, !tbaa !171   ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.ae
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx119to_stringEl.exit
  %i.bp = load i64, ptr %i.ae, align 8, !tbaa !29
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx119to_stringEl.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.br = load ptr, ptr %4, align 8, !tbaa !171   ; 2 uses
end_hunk_1
begin_hunk_2_@llvm.umax.i8
!268 = !{!"_ZTSSt13unordered_mapISt17basic_string_viewIcSt11char_traitsIcEEmSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_mEEE", !267, i64 0}
!269 = !{!"_ZTSSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE", !262, i64 0, !20, i64 8, !264, i64 16, !20, i64 24, !266, i64 32, !263, i64 48}
!270 = !{!"_ZTSSt13unordered_setISt17basic_string_viewIcSt11char_traitsIcEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE", !269, i64 0}
!271 = !{!"p1 _ZTSN4mold12SectionOrderE", !16, i64 0}
!272 = !{!"_ZTSNSt12_Vector_baseIN4mold12SectionOrderESaIS1_EE17_Vector_impl_dataE", !271, i64 0, !271, i64 8, !271, i64 16}
!273 = !{!"_ZTSNSt12_Vector_baseIN4mold12SectionOrderESaIS1_EE12_Vector_implE", !272, i64 0}
!274 = !{!"_ZTSSt12_Vector_baseIN4mold12SectionOrderESaIS1_EE", !273, i64 0}
!275 = !{!"_ZTSSt6vectorIN4mold12SectionOrderESaIS1_EE", !274, i64 0}
!276 = !{!"p1 _ZTSSt4pairIPN4mold6SymbolINS0_6X86_64EEESt7variantIJS4_mEEE", !16, i64 0}
!277 = !{!"_ZTSNSt12_Vector_baseISt4pairIPN4mold6SymbolINS1_6X86_64EEESt7variantIJS5_mEEESaIS8_EE17_Vector_impl_dataE", !276, i64 0, !276, i64 8, !276, i64 16}
!278 = !{!"_ZTSNSt12_Vector_baseISt4pairIPN4mold6SymbolINS1_6X86_64EEESt7variantIJS5_mEEESaIS8_EE12_Vector_implE", !277, i64 0}
!279 = !{!"_ZTSSt12_Vector_baseISt4pairIPN4mold6SymbolINS1_6X86_64EEESt7variantIJS5_mEEESaIS8_EE", !278, i64 0}
!280 = !{!"_ZTSSt6vectorISt4pairIPN4mold6SymbolINS1_6X86_64EEESt7variantIJS5_mEEESaIS8_EE", !279, i64 0}
!281 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !16, i64 0}
!282 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !281, i64 0, !281, i64 8, !281, i64 16}
!283 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !282, i64 0}
!284 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !283, i64 0}
!285 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !284, i64 0}
!286 = !{!"p1 _ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !16, i64 0}
!287 = !{!"_ZTSNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_Vector_impl_dataE", !286, i64 0, !286, i64 8, !286, i64 16}
!288 = !{!"_ZTSNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_Vector_implE", !287, i64 0}
!289 = !{!"_ZTSSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE", !288, i64 0}
!290 = !{!"_ZTSSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE", !289, i64 0}
!291 = !{!"_ZTSN4mold7ContextINS_6X86_64EEUt_E", !210, i64 0, !216, i64 8, !217, i64 48, !245, i64 56, !245, i64 1336, !246, i64 2616, !247, i64 2620, !85, i64 2624, !85, i64 2632, !85, i64 2640, !248, i64 2648, !70, i64 2652, !70, i64 2653, !70, i64 2654, !70, i64 2655, !70, i64 2656, !70, i64 2657, !70, i64 2658, !70, i64 2659, !70, i64 2660, !70, i64 2661, !70, i64 2662, !70, i64 2663, !70, i64 2664, !70, i64 2665, !70, i64 2666, !70, i64 2667, !70, i64 2668, !70, i64 2669, !70, i64 2670, !70, i64 2671, !70, i64 2672, !70, i64 2673, !70, i64 2674, !70, i64 2675, !70, i64 2676, !70, i64 2677, !70, i64 2678, !70, i64 2679, !70, i64 2680, !70, i64 2681, !70, i64 2682, !70, i64 2683, !70, i64 2684, !70, i64 2685, !70, i64 2686, !70, i64 2687, !70, i64 2688, !70, i64 2689, !70, i64 2690, !70, i64 2691, !70, i64 2692, !70, i64 2693, !70, i64 2694, !70, i64 2695, !70, i64 2696, !70, i64 2697, !70, i64 2698, !70, i64 2699, !70, i64 2700, !70, i64 2701, !70, i64 2702, !70, i64 2703, !70, i64 2704, !70, i64 2705, !70, i64 2706, !70, i64 2707, !70, i64 2708, !70, i64 2709, !70, i64 2710, !70, i64 2711, !70, i64 2712, !70, i64 2713, !70, i64 2714, !70, i64 2715, !70, i64 2716, !70, i64 2717, !70, i64 2718, !70, i64 2719, !70, i64 2720, !70, i64 2721, !70, i64 2722, !70, i64 2723, !70, i64 2724, !70, i64 2725, !70, i64 2726, !70, i64 2727, !70, i64 2728, !70, i64 2729, !20, i64 2736, !20, i64 2744, !20, i64 2752, !20, i64 2760, !20, i64 2768, !20, i64 2776, !252, i64 2784, !257, i64 2800, !261, i64 2832, !261, i64 2848, !21, i64 2864, !21, i64 2896, !21, i64 2928, !21, i64 2960, !21, i64 2992, !21, i64 3024, !21, i64 3056, !21, i64 3088, !21, i64 3120, !21, i64 3152, !21, i64 3184, !21, i64 3216, !21, i64 3248, !21, i64 3280, !21, i64 3312, !21, i64 3344, !74, i64 3376, !268, i64 3392, !268, i64 3448, !270, i64 3504, !270, i64 3560, !270, i64 3616, !270, i64 3672, !275, i64 3728, !150, i64 3752, !150, i64 3776, !280, i64 3800, !285, i64 3824, !285, i64 3848, !285, i64 3872, !290, i64 3896, !290, i64 3920, !290, i64 3944, !13, i64 3968, !20, i64 3976, !20, i64 3984}
!292 = !{!"_ZTSSt22_Optional_payload_baseIN3tbb6detail2d114global_controlEE", !12, i64 0, !70, i64 24}
!293 = !{!"_ZTSSt17_Optional_payloadIN3tbb6detail2d114global_controlELb1ELb0ELb0EE", !292, i64 0}
!294 = !{!"_ZTSSt17_Optional_payloadIN3tbb6detail2d114global_controlELb0ELb0ELb0EE", !293, i64 0}
!295 = !{!"_ZTSSt14_Optional_baseIN3tbb6detail2d114global_controlELb0ELb0EE", !294, i64 0}
!296 = !{!"_ZTSSt8optionalIN3tbb6detail2d114global_controlEE", !295, i64 0}
!297 = !{!"p1 _ZTSN4mold14VersionPatternE", !16, i64 0}
!298 = !{!"_ZTSNSt12_Vector_baseIN4mold14VersionPatternESaIS1_EE17_Vector_impl_dataE", !297, i64 0, !297, i64 8, !297, i64 16}
!299 = !{!"_ZTSNSt12_Vector_baseIN4mold14VersionPatternESaIS1_EE12_Vector_implE", !298, i64 0}
!300 = !{!"_ZTSSt12_Vector_baseIN4mold14VersionPatternESaIS1_EE", !299, i64 0}
!301 = !{!"_ZTSSt6vectorIN4mold14VersionPatternESaIS1_EE", !300, i64 0}
!302 = !{!"p1 _ZTSN4mold14DynamicPatternE", !16, i64 0}
!303 = !{!"_ZTSNSt12_Vector_baseIN4mold14DynamicPatternESaIS1_EE17_Vector_impl_dataE", !302, i64 0, !302, i64 8, !302, i64 16}
!304 = !{!"_ZTSNSt12_Vector_baseIN4mold14DynamicPatternESaIS1_EE12_Vector_implE", !303, i64 0}
!305 = !{!"_ZTSSt12_Vector_baseIN4mold14DynamicPatternESaIS1_EE", !304, i64 0}
!306 = !{!"_ZTSSt6vectorIN4mold14DynamicPatternESaIS1_EE", !305, i64 0}
!307 = !{!"p1 _ZTSSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS3_6X86_64EEEE", !16, i64 0}
!308 = !{!"_ZTSN3tbb6detail2d123cache_aligned_allocatorISt6atomicIPSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEEEEE"}
!309 = !{!"p1 _ZTSSt6atomicIPSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS4_6X86_64EEEEE", !16, i64 0}
!310 = !{!"_ZTSSt13__atomic_baseIPSt6atomicIPSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS5_6X86_64EEEEEE", !309, i64 0}
!311 = !{!"_ZTSSt6atomicIPS_IPSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS4_6X86_64EEEEEE", !310, i64 0}
!312 = !{!"_ZTSSt13__atomic_baseImE", !20, i64 0}
!313 = !{!"_ZTSSt6atomicImE", !312, i64 0}
!314 = !{!"_ZTSN3tbb6detail2d113segment_tableISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS7_6X86_64EEEENS1_23cache_aligned_allocatorISC_EENS1_17concurrent_vectorISC_SE_EELm3EEE", !307, i64 0, !308, i64 8, !311, i64 16, !12, i64 24, !313, i64 48, !313, i64 56, !72, i64 64}
!315 = !{!"_ZTSN3tbb6detail2d117concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS7_6X86_64EEEENS1_23cache_aligned_allocatorISC_EEEE", !314, i64 0}
!316 = !{!"_ZTSN4mold13ArenaResourceE", !18, i64 0, !313, i64 8}
!317 = !{!"p1 _ZTSN3tbb6detail2d18ets_baseILNS1_18ets_key_usage_typeE1EE5arrayE", !16, i64 0}
!318 = !{!"_ZTSSt13__atomic_baseIPN3tbb6detail2d18ets_baseILNS2_18ets_key_usage_typeE1EE5arrayEE", !317, i64 0}
!319 = !{!"_ZTSSt6atomicIPN3tbb6detail2d18ets_baseILNS2_18ets_key_usage_typeE1EE5arrayEE", !318, i64 0}
!320 = !{!"_ZTSN3tbb6detail2d18ets_baseILNS1_18ets_key_usage_typeE1EEE", !319, i64 8, !313, i64 16}
!321 = !{!"p1 _ZTSN3tbb6detail2d113callback_baseE", !16, i64 0}
!322 = !{!"p1 _ZTSN3tbb6detail2d06paddedINS0_2d111ets_elementISt5arrayISt6vectorIN4mold10ShardedMapINS7_6SymbolINS7_6X86_64EEEE7PendingESaISD_EELm64EEEELm128EEE", !16, i64 0}
!323 = !{!"_ZTSN3tbb6detail2d123cache_aligned_allocatorISt6atomicIPNS0_2d06paddedINS1_11ets_elementISt5arrayISt6vectorIN4mold10ShardedMapINS9_6SymbolINS9_6X86_64EEEE7PendingESaISF_EELm64EEEELm128EEEEEE"}
!324 = !{!"p1 _ZTSSt6atomicIPN3tbb6detail2d06paddedINS1_2d111ets_elementISt5arrayISt6vectorIN4mold10ShardedMapINS8_6SymbolINS8_6X86_64EEEE7PendingESaISE_EELm64EEEELm128EEEE", !16, i64 0}
!325 = !{!"_ZTSSt13__atomic_baseIPSt6atomicIPN3tbb6detail2d06paddedINS2_2d111ets_elementISt5arrayISt6vectorIN4mold10ShardedMapINS9_6SymbolINS9_6X86_64EEEE7PendingESaISF_EELm64EEEELm128EEEEE", !324, i64 0}
!326 = !{!"_ZTSSt6atomicIPS_IPN3tbb6detail2d06paddedINS1_2d111ets_elementISt5arrayISt6vectorIN4mold10ShardedMapINS8_6SymbolINS8_6X86_64EEEE7PendingESaISE_EELm64EEEELm128EEEEE", !325, i64 0}
!327 = !{!"_ZTSN3tbb6detail2d113segment_tableINS0_2d06paddedINS1_11ets_elementISt5arrayISt6vectorIN4mold10ShardedMapINS8_6SymbolINS8_6X86_64EEEE7PendingESaISE_EELm64EEEELm128EEENS1_23cache_aligned_allocatorISJ_EENS1_17concurrent_vectorISJ_SL_EELm3EEE", !322, i64 0, !323, i64 8, !326, i64 16, !12, i64 24, !313, i64 48, !313, i64 56, !72, i64 64}
!328 = !{!"_ZTSN3tbb6detail2d117concurrent_vectorINS0_2d06paddedINS1_11ets_elementISt5arrayISt6vectorIN4mold10ShardedMapINS8_6SymbolINS8_6X86_64EEEE7PendingESaISE_EELm64EEEELm128EEENS1_23cache_aligned_allocatorISJ_EEEE", !327, i64 0}
!329 = !{!"_ZTSN3tbb6detail2d126enumerable_thread_specificISt5arrayISt6vectorIN4mold10ShardedMapINS5_6SymbolINS5_6X86_64EEEE7PendingESaISB_EELm64EENS1_23cache_aligned_allocatorISE_EELNS1_18ets_key_usage_typeE1EEE", !320, i64 0, !321, i64 24, !328, i64 32}
!330 = !{!"_ZTSN4mold10ShardedMapINS_6SymbolINS_6X86_64EEEEE", !12, i64 0, !329, i64 8192}
!331 = !{!"p1 _ZTSSt10unique_ptrIN4mold13MergedSectionINS0_6X86_64EEENS0_18ArenaObjectDeleterIS3_EEE", !16, i64 0}
!332 = !{!"_ZTSN3tbb6detail2d123cache_aligned_allocatorISt6atomicIPSt10unique_ptrIN4mold13MergedSectionINS5_6X86_64EEENS5_18ArenaObjectDeleterIS8_EEEEEE"}
!333 = !{!"p1 _ZTSSt6atomicIPSt10unique_ptrIN4mold13MergedSectionINS1_6X86_64EEENS1_18ArenaObjectDeleterIS4_EEEE", !16, i64 0}
!334 = !{!"_ZTSSt13__atomic_baseIPSt6atomicIPSt10unique_ptrIN4mold13MergedSectionINS2_6X86_64EEENS2_18ArenaObjectDeleterIS5_EEEEE", !333, i64 0}
!335 = !{!"_ZTSSt6atomicIPS_IPSt10unique_ptrIN4mold13MergedSectionINS1_6X86_64EEENS1_18ArenaObjectDeleterIS4_EEEEE", !334, i64 0}
!336 = !{!"_ZTSN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold13MergedSectionINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EENS1_17concurrent_vectorISA_SC_EELm3EEE", !331, i64 0, !332, i64 8, !335, i64 16, !12, i64 24, !313, i64 48, !313, i64 56, !72, i64 64}
!337 = !{!"_ZTSN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold13MergedSectionINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EEEE", !336, i64 0}
!338 = !{!"p1 _ZTSSt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS1_EE", !16, i64 0}
!339 = !{!"_ZTSN3tbb6detail2d123cache_aligned_allocatorISt6atomicIPSt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS6_EEEEE"}
!340 = !{!"p1 _ZTSSt6atomicIPSt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS2_EEE", !16, i64 0}
!341 = !{!"_ZTSSt13__atomic_baseIPSt6atomicIPSt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS3_EEEE", !340, i64 0}
!342 = !{!"_ZTSSt6atomicIPS_IPSt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS2_EEEE", !341, i64 0}
!343 = !{!"_ZTSN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EENS1_17concurrent_vectorIS8_SA_EELm3EEE", !338, i64 0, !339, i64 8, !342, i64 16, !12, i64 24, !313, i64 48, !313, i64 56, !72, i64 64}
!344 = !{!"_ZTSN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EEEE", !343, i64 0}
!345 = !{!"p1 _ZTSSt10unique_ptrIN4mold10ObjectFileINS0_6X86_64EEENS0_18ArenaObjectDeleterIS3_EEE", !16, i64 0}
!346 = !{!"_ZTSN3tbb6detail2d123cache_aligned_allocatorISt6atomicIPSt10unique_ptrIN4mold10ObjectFileINS5_6X86_64EEENS5_18ArenaObjectDeleterIS8_EEEEEE"}
!347 = !{!"p1 _ZTSSt6atomicIPSt10unique_ptrIN4mold10ObjectFileINS1_6X86_64EEENS1_18ArenaObjectDeleterIS4_EEEE", !16, i64 0}
!348 = !{!"_ZTSSt13__atomic_baseIPSt6atomicIPSt10unique_ptrIN4mold10ObjectFileINS2_6X86_64EEENS2_18ArenaObjectDeleterIS5_EEEEE", !347, i64 0}
!349 = !{!"_ZTSSt6atomicIPS_IPSt10unique_ptrIN4mold10ObjectFileINS1_6X86_64EEENS1_18ArenaObjectDeleterIS4_EEEEE", !348, i64 0}
!350 = !{!"_ZTSN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold10ObjectFileINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EENS1_17concurrent_vectorISA_SC_EELm3EEE", !345, i64 0, !346, i64 8, !349, i64 16, !12, i64 24, !313, i64 48, !313, i64 56, !72, i64 64}
!351 = !{!"_ZTSN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10ObjectFileINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EEEE", !350, i64 0}
!352 = !{!"p1 _ZTSSt10unique_ptrIN4mold10SharedFileINS0_6X86_64EEENS0_18ArenaObjectDeleterIS3_EEE", !16, i64 0}
!353 = !{!"_ZTSN3tbb6detail2d123cache_aligned_allocatorISt6atomicIPSt10unique_ptrIN4mold10SharedFileINS5_6X86_64EEENS5_18ArenaObjectDeleterIS8_EEEEEE"}
!354 = !{!"p1 _ZTSSt6atomicIPSt10unique_ptrIN4mold10SharedFileINS1_6X86_64EEENS1_18ArenaObjectDeleterIS4_EEEE", !16, i64 0}
!355 = !{!"_ZTSSt13__atomic_baseIPSt6atomicIPSt10unique_ptrIN4mold10SharedFileINS2_6X86_64EEENS2_18ArenaObjectDeleterIS5_EEEEE", !354, i64 0}
!356 = !{!"_ZTSSt6atomicIPS_IPSt10unique_ptrIN4mold10SharedFileINS1_6X86_64EEENS1_18ArenaObjectDeleterIS4_EEEEE", !355, i64 0}
!357 = !{!"_ZTSN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold10SharedFileINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EENS1_17concurrent_vectorISA_SC_EELm3EEE", !352, i64 0, !353, i64 8, !356, i64 16, !12, i64 24, !313, i64 48, !313, i64 56, !72, i64 64}
!358 = !{!"_ZTSN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10SharedFileINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EEEE", !357, i64 0}
!359 = !{!"p1 _ZTSSt10unique_ptrIA_hSt14default_deleteIS0_EE", !16, i64 0}
!360 = !{!"_ZTSN3tbb6detail2d123cache_aligned_allocatorISt6atomicIPSt10unique_ptrIA_hSt14default_deleteIS5_EEEEE"}
!361 = !{!"p1 _ZTSSt6atomicIPSt10unique_ptrIA_hSt14default_deleteIS1_EEE", !16, i64 0}
!362 = !{!"_ZTSSt13__atomic_baseIPSt6atomicIPSt10unique_ptrIA_hSt14default_deleteIS2_EEEE", !361, i64 0}
!363 = !{!"_ZTSSt6atomicIPS_IPSt10unique_ptrIA_hSt14default_deleteIS1_EEEE", !362, i64 0}
!364 = !{!"_ZTSN3tbb6detail2d113segment_tableISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EEE", !359, i64 0, !360, i64 8, !363, i64 16, !12, i64 24, !313, i64 48, !313, i64 56, !72, i64 64}
!365 = !{!"_ZTSN3tbb6detail2d117concurrent_vectorISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EEEE", !364, i64 0}
!366 = !{!"p1 _ZTSSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS1_EE", !16, i64 0}
!367 = !{!"_ZTSN3tbb6detail2d123cache_aligned_allocatorISt6atomicIPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS6_EEEEE"}
!368 = !{!"p1 _ZTSSt6atomicIPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS2_EEE", !16, i64 0}
!369 = !{!"_ZTSSt13__atomic_baseIPSt6atomicIPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS3_EEEE", !368, i64 0}
!370 = !{!"_ZTSSt6atomicIPS_IPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS2_EEEE", !369, i64 0}
!371 = !{!"_ZTSN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EENS1_17concurrent_vectorIS8_SA_EELm3EEE", !366, i64 0, !367, i64 8, !370, i64 16, !12, i64 24, !313, i64 48, !313, i64 56, !72, i64 64}
!372 = !{!"_ZTSN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EEEE", !371, i64 0}
!373 = !{!"p1 _ZTSSt10unique_ptrIN4mold5ChunkINS0_6X86_64EEESt14default_deleteIS3_EE", !16, i64 0}
!374 = !{!"_ZTSN3tbb6detail2d123cache_aligned_allocatorISt6atomicIPSt10unique_ptrIN4mold5ChunkINS5_6X86_64EEESt14default_deleteIS8_EEEEE"}
!375 = !{!"p1 _ZTSSt6atomicIPSt10unique_ptrIN4mold5ChunkINS1_6X86_64EEESt14default_deleteIS4_EEE", !16, i64 0}
!376 = !{!"_ZTSSt13__atomic_baseIPSt6atomicIPSt10unique_ptrIN4mold5ChunkINS2_6X86_64EEESt14default_deleteIS5_EEEE", !375, i64 0}
!377 = !{!"_ZTSSt6atomicIPS_IPSt10unique_ptrIN4mold5ChunkINS1_6X86_64EEESt14default_deleteIS4_EEEE", !376, i64 0}
!378 = !{!"_ZTSN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold5ChunkINS4_6X86_64EEESt14default_deleteIS7_EENS1_23cache_aligned_allocatorISA_EENS1_17concurrent_vectorISA_SC_EELm3EEE", !373, i64 0, !374, i64 8, !377, i64 16, !12, i64 24, !313, i64 48, !313, i64 56, !72, i64 64}
!379 = !{!"_ZTSN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold5ChunkINS4_6X86_64EEESt14default_deleteIS7_EENS1_23cache_aligned_allocatorISA_EEEE", !378, i64 0}
!380 = !{!"p1 _ZTSSt10unique_ptrIN4mold13OutputSectionINS0_6X86_64EEESt14default_deleteIS3_EE", !16, i64 0}
!381 = !{!"_ZTSN3tbb6detail2d123cache_aligned_allocatorISt6atomicIPSt10unique_ptrIN4mold13OutputSectionINS5_6X86_64EEESt14default_deleteIS8_EEEEE"}
!382 = !{!"p1 _ZTSSt6atomicIPSt10unique_ptrIN4mold13OutputSectionINS1_6X86_64EEESt14default_deleteIS4_EEE", !16, i64 0}
!383 = !{!"_ZTSSt13__atomic_baseIPSt6atomicIPSt10unique_ptrIN4mold13OutputSectionINS2_6X86_64EEESt14default_deleteIS5_EEEE", !382, i64 0}
!384 = !{!"_ZTSSt6atomicIPS_IPSt10unique_ptrIN4mold13OutputSectionINS1_6X86_64EEESt14default_deleteIS4_EEEE", !383, i64 0}
!385 = !{!"_ZTSN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold13OutputSectionINS4_6X86_64EEESt14default_deleteIS7_EENS1_23cache_aligned_allocatorISA_EENS1_17concurrent_vectorISA_SC_EELm3EEE", !380, i64 0, !381, i64 8, !384, i64 16, !12, i64 24, !313, i64 48, !313, i64 56, !72, i64 64}
!386 = !{!"_ZTSN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold13OutputSectionINS4_6X86_64EEESt14default_deleteIS7_EENS1_23cache_aligned_allocatorISA_EEEE", !385, i64 0}
!387 = !{!"p2 _ZTSN4mold10ObjectFileINS_6X86_64EEE", !17, i64 0}
!388 = !{!"_ZTSNSt12_Vector_baseIPN4mold10ObjectFileINS0_6X86_64EEESaIS4_EE17_Vector_impl_dataE", !387, i64 0, !387, i64 8, !387, i64 16}
!389 = !{!"_ZTSNSt12_Vector_baseIPN4mold10ObjectFileINS0_6X86_64EEESaIS4_EE12_Vector_implE", !388, i64 0}
!390 = !{!"_ZTSSt12_Vector_baseIPN4mold10ObjectFileINS0_6X86_64EEESaIS4_EE", !389, i64 0}
!391 = !{!"_ZTSSt6vectorIPN4mold10ObjectFileINS0_6X86_64EEESaIS4_EE", !390, i64 0}
!392 = !{!"p2 _ZTSN4mold10SharedFileINS_6X86_64EEE", !17, i64 0}
!393 = !{!"_ZTSNSt12_Vector_baseIPN4mold10SharedFileINS0_6X86_64EEESaIS4_EE17_Vector_impl_dataE", !392, i64 0, !392, i64 8, !392, i64 16}
!394 = !{!"_ZTSNSt12_Vector_baseIPN4mold10SharedFileINS0_6X86_64EEESaIS4_EE12_Vector_implE", !393, i64 0}
!395 = !{!"_ZTSSt12_Vector_baseIPN4mold10SharedFileINS0_6X86_64EEESaIS4_EE", !394, i64 0}
!396 = !{!"_ZTSSt6vectorIPN4mold10SharedFileINS0_6X86_64EEESaIS4_EE", !395, i64 0}
!397 = !{!"p1 _ZTSN4mold10OutputFileINS_6X86_64EEE", !16, i64 0}
!398 = !{!"_ZTSSt10_Head_baseILm0EPN4mold10OutputFileINS0_6X86_64EEELb0EE", !397, i64 0}
!399 = !{!"_ZTSSt11_Tuple_implILm0EJPN4mold10OutputFileINS0_6X86_64EEESt14default_deleteIS3_EEE", !398, i64 0}
!400 = !{!"_ZTSSt5tupleIJPN4mold10OutputFileINS0_6X86_64EEESt14default_deleteIS3_EEE", !399, i64 0}
!401 = !{!"_ZTSSt15__uniq_ptr_implIN4mold10OutputFileINS0_6X86_64EEESt14default_deleteIS3_EE", !400, i64 0}
!402 = !{!"_ZTSSt15__uniq_ptr_dataIN4mold10OutputFileINS0_6X86_64EEESt14default_deleteIS3_ELb1ELb1EE", !401, i64 0}
!403 = !{!"_ZTSSt10unique_ptrIN4mold10OutputFileINS0_6X86_64EEESt14default_deleteIS3_EE", !402, i64 0}
!404 = !{!"p2 _ZTSN4mold5ChunkINS_6X86_64EEE", !17, i64 0}
!405 = !{!"_ZTSNSt12_Vector_baseIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_Vector_impl_dataE", !404, i64 0, !404, i64 8, !404, i64 16}
!406 = !{!"_ZTSNSt12_Vector_baseIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_Vector_implE", !405, i64 0}
!407 = !{!"_ZTSSt12_Vector_baseIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE", !406, i64 0}
!408 = !{!"_ZTSSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE", !407, i64 0}
!409 = !{!"_ZTSSt13__atomic_baseIiE", !13, i64 0}
!410 = !{!"_ZTSSt6atomicIiE", !409, i64 0}
!411 = !{!"_ZTSN4mold6AtomicIiEE", !410, i64 0}
!412 = !{!"_ZTSN3tbb6detail2d113tbb_allocatorINS0_2d213hash_map_baseINS2_ISt4pairIKPN4mold6SymbolINS6_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEEEENS1_13spin_rw_mutexEE6bucketEEE"}
!413 = !{!"_ZTSN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold6SymbolINS6_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEEEENS3_13spin_rw_mutexEEE", !412, i64 0, !313, i64 8, !313, i64 16, !12, i64 24, !12, i64 56}
!414 = !{!"_ZTSSt4hashIPN4mold6SymbolINS0_6X86_64EEEE"}
!415 = !{!"_ZTSSt8equal_toIPN4mold6SymbolINS0_6X86_64EEEE"}
!416 = !{!"_ZTSN3tbb6detail2d116tbb_hash_compareIPN4mold6SymbolINS3_6X86_64EEEEE", !414, i64 0, !415, i64 1}
!417 = !{!"_ZTSN3tbb6detail2d219concurrent_hash_mapIPN4mold6SymbolINS3_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EENS0_2d116tbb_hash_compareIS7_EENSH_13tbb_allocatorISt4pairIKS7_SG_EEEEE", !413, i64 0, !416, i64 568}
!418 = !{!"p1 _ZTSN4mold10OutputEhdrINS_6X86_64EEE", !16, i64 0}
!419 = !{!"p1 _ZTSN4mold10OutputShdrINS_6X86_64EEE", !16, i64 0}
!420 = !{!"p1 _ZTSN4mold10OutputPhdrINS_6X86_64EEE", !16, i64 0}
!421 = !{!"p1 _ZTSN4mold13InterpSectionINS_6X86_64EEE", !16, i64 0}
!422 = !{!"p1 _ZTSN4mold10GotSectionINS_6X86_64EEE", !16, i64 0}
!423 = !{!"p1 _ZTSN4mold13GotPltSectionINS_6X86_64EEE", !16, i64 0}
!424 = !{!"p1 _ZTSN4mold13RelPltSectionINS_6X86_64EEE", !16, i64 0}
!425 = !{!"p1 _ZTSN4mold13RelDynSectionINS_6X86_64EEE", !16, i64 0}
!426 = !{!"p1 _ZTSN4mold14RelrDynSectionINS_6X86_64EEE", !16, i64 0}
!427 = !{!"p1 _ZTSN4mold14DynamicSectionINS_6X86_64EEE", !16, i64 0}
!428 = !{!"p1 _ZTSN4mold13StrtabSectionINS_6X86_64EEE", !16, i64 0}
!429 = !{!"p1 _ZTSN4mold13DynstrSectionINS_6X86_64EEE", !16, i64 0}
!430 = !{!"p1 _ZTSN4mold11HashSectionINS_6X86_64EEE", !16, i64 0}
!431 = !{!"p1 _ZTSN4mold14GnuHashSectionINS_6X86_64EEE", !16, i64 0}
!432 = !{!"p1 _ZTSN4mold19GnuDebuglinkSectionINS_6X86_64EEE", !16, i64 0}
!433 = !{!"p1 _ZTSN4mold15ShstrtabSectionINS_6X86_64EEE", !16, i64 0}
!434 = !{!"p1 _ZTSN4mold10PltSectionINS_6X86_64EEE", !16, i64 0}
!435 = !{!"p1 _ZTSN4mold13PltGotSectionINS_6X86_64EEE", !16, i64 0}
!436 = !{!"p1 _ZTSN4mold13SymtabSectionINS_6X86_64EEE", !16, i64 0}
!437 = !{!"p1 _ZTSN4mold18SymtabShndxSectionINS_6X86_64EEE", !16, i64 0}
!438 = !{!"p1 _ZTSN4mold13DynsymSectionINS_6X86_64EEE", !16, i64 0}
!439 = !{!"p1 _ZTSN4mold14EhFrameSectionINS_6X86_64EEE", !16, i64 0}
!440 = !{!"p1 _ZTSN4mold17EhFrameHdrSectionINS_6X86_64EEE", !16, i64 0}
!441 = !{!"p1 _ZTSN4mold19EhFrameRelocSectionINS_6X86_64EEE", !16, i64 0}
!442 = !{!"p1 _ZTSN4mold13SFrameSectionINS_6X86_64EEE", !16, i64 0}
!443 = !{!"p1 _ZTSN4mold18SFrameRelocSectionINS_6X86_64EEE", !16, i64 0}
!444 = !{!"p1 _ZTSN4mold14CopyrelSectionINS_6X86_64EEE", !16, i64 0}
!445 = !{!"p1 _ZTSN4mold13VersymSectionINS_6X86_64EEE", !16, i64 0}
!446 = !{!"p1 _ZTSN4mold14VerneedSectionINS_6X86_64EEE", !16, i64 0}
!447 = !{!"p1 _ZTSN4mold13VerdefSectionINS_6X86_64EEE", !16, i64 0}
!448 = !{!"p1 _ZTSN4mold14BuildIdSectionINS_6X86_64EEE", !16, i64 0}
!449 = !{!"p1 _ZTSN4mold18NotePackageSectionINS_6X86_64EEE", !16, i64 0}
!450 = !{!"p1 _ZTSN4mold15GdbIndexSectionINS_6X86_64EEE", !16, i64 0}
!451 = !{!"p1 _ZTSN4mold19RelroPaddingSectionINS_6X86_64EEE", !16, i64 0}
!452 = !{!"p1 _ZTSN4mold13MergedSectionINS_6X86_64EEE", !16, i64 0}
!453 = !{!"p1 _ZTSN4mold12GdbIndexDataE", !16, i64 0}
!454 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !16, i64 0}
!455 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !454, i64 0}
!456 = !{!"_ZTSSt12__shared_ptrIN4mold12GdbIndexDataELN9__gnu_cxx12_Lock_policyE2EE", !453, i64 0, !455, i64 8}
!457 = !{!"_ZTSSt10shared_ptrIN4mold12GdbIndexDataEE", !456, i64 0}
!458 = !{!"_ZTSSt4spanIhLm18446744073709551615EE", !18, i64 0, !59, i64 8}
!459 = !{!"p1 _ZTSN4mold19NotePropertySectionINS_6X86_64EEE", !16, i64 0}
!460 = !{!"_ZTSN4mold13ContextExtrasINS_6X86_64EEE", !459, i64 0}
!461 = !{!"_ZTSN4mold7ContextINS_6X86_64EEE", !291, i64 0, !296, i64 3992, !301, i64 4024, !306, i64 4048, !20, i64 4072, !20, i64 4080, !70, i64 4088, !20, i64 4096, !315, i64 4104, !316, i64 4176, !330, i64 4192, !337, i64 12488, !344, i64 12560, !351, i64 12632, !358, i64 12704, !365, i64 12776, !372, i64 12848, !379, i64 12920, !386, i64 12992, !290, i64 13064, !391, i64 13088, !396, i64 13112, !155, i64 13136, !145, i64 13144, !403, i64 13168, !18, i64 13176, !70, i64 13184, !408, i64 13192, !73, i64 13216, !73, i64 13217, !411, i64 13220, !417, i64 13224, !408, i64 13800, !418, i64 13824, !419, i64 13832, !420, i64 13840, !421, i64 13848, !422, i64 13856, !423, i64 13864, !424, i64 13872, !425, i64 13880, !426, i64 13888, !427, i64 13896, !428, i64 13904, !429, i64 13912, !430, i64 13920, !431, i64 13928, !432, i64 13936, !433, i64 13944, !434, i64 13952, !435, i64 13960, !436, i64 13968, !437, i64 13976, !438, i64 13984, !439, i64 13992, !440, i64 14000, !441, i64 14008, !442, i64 14016, !443, i64 14024, !444, i64 14032, !444, i64 14040, !445, i64 14048, !446, i64 14056, !447, i64 14064, !448, i64 14072, !449, i64 14080, !450, i64 14088, !451, i64 14096, !452, i64 14104, !457, i64 14112, !458, i64 14128, !458, i64 14144, !458, i64 14160, !458, i64 14176, !458, i64 14192, !20, i64 14208, !20, i64 14216, !20, i64 14224, !85, i64 14232, !85, i64 14240, !85, i64 14248, !85, i64 14256, !85, i64 14264, !85, i64 14272, !85, i64 14280, !85, i64 14288, !85, i64 14296, !85, i64 14304, !85, i64 14312, !85, i64 14320, !85, i64 14328, !85, i64 14336, !85, i64 14344, !85, i64 14352, !85, i64 14360, !85, i64 14368, !85, i64 14376, !85, i64 14384, !85, i64 14392, !85, i64 14400, !85, i64 14408, !85, i64 14416, !85, i64 14424, !85, i64 14432, !460, i64 14440}
!462 = !{i8 0, i8 2}
!463 = !{}
!464 = !{!350, !345, i64 0}
!465 = !{!"p2 omnipotent char", !17, i64 0}
!466 = !{!"_ZTSNSt12_Vector_baseIPKcSaIS1_EE17_Vector_impl_dataE", !465, i64 0, !465, i64 8, !465, i64 16}
!467 = !{!466, !465, i64 8}
!468 = !{!466, !465, i64 16}
!469 = !{!466, !465, i64 0}
!470 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!471 = !{!387, !387, i64 0}
!472 = !{!"_ZTSN4mold12PluginStatusE", !12, i64 0}
!473 = !{!472, !472, i64 0}
!474 = !{!388, !387, i64 8}
!475 = !{!388, !387, i64 0}
!476 = !{!388, !387, i64 16}
!477 = !{!"p1 _ZTSN4mold11TimerRecordE", !16, i64 0}
!478 = !{!"_ZTSN4mold5TimerINS_7ContextINS_6X86_64EEEEE", !477, i64 0}
!479 = !{!478, !477, i64 0}
!480 = !{!198, !197, i64 16}
!481 = !{!66, !65, i64 0}
!482 = !{i64 8}
!483 = !{!142, !61, i64 16}
!484 = !{!147, !146, i64 16}
!485 = !{!"llvm.loop.unroll.disable"}
!486 = !{!181, !175, i64 32}
!487 = !{!"_ZTSSi", !20, i64 8}
!488 = !{!"_ZTSSo"}
!489 = !{!"_ZTSSd", !487, i64 0, !488, i64 16}
!490 = !{!"_ZTSNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE", !489, i64 0, !193, i64 24}
!491 = !{!"_ZTSN4mold10SyncStreamE", !182, i64 0, !490, i64 8, !70, i64 400}
!492 = !{!491, !70, i64 400}
!493 = !{!57, !57, i64 0}
!494 = !{!62, !61, i64 0}
!495 = !{!205, !13, i64 40}
!496 = !{!157, !13, i64 0}
!497 = !{!87, !70, i64 120}
!498 = !{!368, !368, i64 0}
!499 = !{!371, !366, i64 0}
!500 = !{!96, !80, i64 0}
!501 = !{!96, !80, i64 16}
!502 = !{!81, !80, i64 0}
!503 = !{!81, !80, i64 16}
!504 = !{!76, !75, i64 0}
!505 = !{!76, !75, i64 16}
!506 = !{!347, !347, i64 0}
!507 = !{!361, !361, i64 0}
!508 = !{!364, !359, i64 0}
!509 = !{!340, !340, i64 0}
!510 = !{!343, !338, i64 0}
!511 = !{!"_ZTSN3tbb6detail2d112wait_contextE", !20, i64 0, !313, i64 8}
!512 = !{!511, !20, i64 0}
!513 = !{!312, !20, i64 0}
!514 = !{!"p1 _ZTSN3tbb6detail2d119wait_context_vertexE", !16, i64 0}
!515 = !{!"p1 _ZTSN3tbb6detail2d118task_group_contextE", !16, i64 0}
!516 = !{!"_ZTSN3tbb6detail2d111task_traitsE", !20, i64 0}
!517 = !{!"_ZTSN3tbb6detail2d14taskE", !516, i64 8, !12, i64 16}
!518 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS1_6X86_64EEESt6vectorIS5_SaIS5_EEEE", !387, i64 0}
!519 = !{!"_ZTSN3tbb6detail2d213feeder_holderIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_14run_lto_pluginIS7_EESB_IPNS6_IT_EESaISI_EERNS5_7ContextISG_EEEUlS9_E_S9_vEE"}
!520 = !{!"_ZTSN3tbb6detail2d223for_each_root_task_baseIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_14run_lto_pluginIS7_EESB_IPNS6_IT_EESaISI_EERNS5_7ContextISG_EEEUlS9_E_S9_EE", !517, i64 0, !518, i64 64, !518, i64 72, !514, i64 80, !515, i64 88, !16, i64 96, !519, i64 104}
!521 = !{!"p1 _ZTSN3tbb6detail2d117small_object_poolE", !16, i64 0}
!522 = !{!"_ZTSN3tbb6detail2d122small_object_allocatorE", !521, i64 0}
!523 = !{!522, !521, i64 0}
!524 = !{!"_ZTSN3tbb6detail2d113adaptive_modeINS1_19auto_partition_typeEEE", !20, i64 0}
!525 = !{!"_ZTSN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEEUt_E", !12, i64 0}
!526 = !{!"_ZTSN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEEE", !524, i64 0, !525, i64 8, !12, i64 12}
!527 = !{!526, !525, i64 8}
!528 = !{!526, !12, i64 12}
!529 = !{!524, !20, i64 0}
!530 = !{!521, !521, i64 0}
!531 = !{!"p1 _ZTSN3tbb6detail2d14nodeE", !16, i64 0}
!532 = !{!"_ZTSN3tbb6detail2d14nodeE", !531, i64 0, !410, i64 8}
!533 = !{!532, !531, i64 0}
!534 = !{!409, !13, i64 0}
!535 = !{!"_ZTSN3tbb6detail2d113blocked_rangeImEE", !20, i64 0, !20, i64 8, !20, i64 16}
!536 = !{!"p1 _ZTSN3tbb6detail2d211feeder_implIZN4mold14run_lto_pluginINS3_6X86_64EEESt6vectorIPNS3_10ObjectFileIT_EESaISA_EERNS3_7ContextIS8_EEEUlPNS7_IS5_EEE_SH_EE", !16, i64 0}
!537 = !{!"_ZTSN3tbb6detail2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_14run_lto_pluginIS7_EESB_IPNS6_IT_EESaISI_EERNS5_7ContextISG_EEEUlS9_E_S9_EE", !518, i64 0, !16, i64 8, !536, i64 16}
!538 = !{!"_ZTSN3tbb6detail2d119auto_partition_typeE", !526, i64 0}
!539 = !{!"_ZTSN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_14run_lto_pluginISB_EESF_IPNSA_IT_EESaISM_EERNS9_7ContextISK_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEEE", !517, i64 0, !535, i64 64, !537, i64 88, !531, i64 112, !538, i64 120, !522, i64 136}
!540 = !{!539, !531, i64 112}
!541 = !{!520, !514, i64 80}
!542 = !{!"_ZTSN3tbb6detail2d114execution_dataE", !515, i64 0, !158, i64 8, !158, i64 10}
!543 = !{!535, !20, i64 16}
!544 = !{!535, !20, i64 0}
!545 = !{!535, !20, i64 8}
!546 = !{!536, !536, i64 0}
!547 = !{i64 0, i64 8, !471, i64 8, i64 8, !25, i64 16, i64 8, !546}
!548 = !{!531, !531, i64 0}
!549 = !{!71, !70, i64 0}
!550 = !{!542, !515, i64 0}
!551 = !{!"p2 _ZTSN4mold7CounterE", !17, i64 0}
!552 = !{!"_ZTSNSt12_Vector_baseIPN4mold7CounterESaIS2_EE17_Vector_impl_dataE", !551, i64 0, !551, i64 8, !551, i64 16}
!553 = !{!552, !551, i64 0}
!554 = !{!552, !551, i64 16}
!555 = distinct !{!555, i1 true, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10ObjectFileINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EEE12emplace_backIJRPS7_EEENS1_15vector_iteratorISD_SA_EEDpOT_"}
!556 = distinct !{!556, !555, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10ObjectFileINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EEE12emplace_backIJRPS7_EEENS1_15vector_iteratorISD_SA_EEDpOT_: argument 0"}
!557 = distinct !{!557, i1 true, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10ObjectFileINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EEE21internal_emplace_backIJRPS7_EEENS1_15vector_iteratorISD_SA_EEDpOT_"}
!558 = distinct !{!558, !557, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10ObjectFileINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EEE21internal_emplace_backIJRPS7_EEENS1_15vector_iteratorISD_SA_EEDpOT_: argument 0"}
!559 = distinct !{!559, i1 true, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EEE12emplace_backIJRPhEEENS1_15vector_iteratorISA_S7_EEDpOT_"}
!560 = distinct !{!560, !559, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EEE12emplace_backIJRPhEEENS1_15vector_iteratorISA_S7_EEDpOT_: argument 0"}
!561 = distinct !{!561, i1 true, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EEE21internal_emplace_backIJRPhEEENS1_15vector_iteratorISA_S7_EEDpOT_"}
!562 = distinct !{!562, !561, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EEE21internal_emplace_backIJRPhEEENS1_15vector_iteratorISA_S7_EEDpOT_: argument 0"}
!563 = distinct !{!563, i1 true, !"_ZN4moldL10to_elf_symINS_6X86_64EEENS_6ElfSymIT_EERNS_12PluginSymbolE"}
!564 = distinct !{!564, !563, !"_ZN4moldL10to_elf_symINS_6X86_64EEENS_6ElfSymIT_EERNS_12PluginSymbolE: argument 0"}
!565 = distinct !{!565, i1 true, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EEE12emplace_backIJRPhEEENS1_15vector_iteratorISA_S7_EEDpOT_"}
!566 = distinct !{!566, !565, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EEE12emplace_backIJRPhEEENS1_15vector_iteratorISA_S7_EEDpOT_: argument 0"}
!567 = distinct !{!567, i1 true, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EEE21internal_emplace_backIJRPhEEENS1_15vector_iteratorISA_S7_EEDpOT_"}
!568 = distinct !{!568, !567, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EEE21internal_emplace_backIJRPhEEENS1_15vector_iteratorISA_S7_EEDpOT_: argument 0"}
!569 = distinct !{!569, !208}
!570 = !{!558, !556}
!571 = !{!"_ZTSN4mold9TaggedPtrIJNS_12InputSectionINS_6X86_64EEENS_5ChunkIS2_EENS_15SectionFragmentIS2_EENS_6SymbolIS2_EEEEE", !20, i64 0}
!572 = !{!"_ZTSN4mold8ArenaPtrINS_9SymbolAuxINS_6X86_64EEEEE", !13, i64 0}
!573 = !{!"_ZTSN4mold6AtomicIhEE", !160, i64 0}
!574 = !{!"_ZTSN3tbb6detail2d110spin_mutexE", !72, i64 0}
!575 = !{!"_ZTSN4mold7NameLenE", !12, i64 0}
!576 = !{!"_ZTSN4mold6SymbolINS_6X86_64EEE", !571, i64 0, !20, i64 8, !157, i64 16, !13, i64 20, !572, i64 24, !158, i64 28, !573, i64 30, !574, i64 31, !573, i64 32, !70, i64 33, !70, i64 33, !70, i64 33, !70, i64 33, !70, i64 33, !70, i64 33, !70, i64 33, !70, i64 33, !70, i64 34, !70, i64 34, !70, i64 34, !70, i64 34, !70, i64 34, !70, i64 34, !70, i64 34, !70, i64 34, !575, i64 35}
!577 = !{!576, !13, i64 20}
!578 = !{!576, !158, i64 28}
!579 = !{!173, !16, i64 32}
!580 = !{!197, !197, i64 0}
!581 = !{!205, !18, i64 0}
!582 = !{!562, !560}
!583 = !{!61, !61, i64 0}
!584 = !{!205, !12, i64 16}
!585 = !{!564}
!586 = !{!205, !12, i64 17}
!587 = !{!205, !13, i64 20}
!588 = !{!205, !20, i64 24}
!589 = !{!205, !18, i64 32}
!590 = !{!568, !566}
!591 = distinct !{!591, i1 true, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EEE12emplace_backIJRPhEEENS1_15vector_iteratorISA_S7_EEDpOT_"}
!592 = distinct !{!592, !591, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EEE12emplace_backIJRPhEEENS1_15vector_iteratorISA_S7_EEDpOT_: argument 0"}
!593 = distinct !{!593, i1 true, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EEE21internal_emplace_backIJRPhEEENS1_15vector_iteratorISA_S7_EEDpOT_"}
!594 = distinct !{!594, !593, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EEE21internal_emplace_backIJRPhEEENS1_15vector_iteratorISA_S7_EEDpOT_: argument 0"}
!595 = !{!594, !592}
!596 = !{!173, !18, i64 0}
!597 = !{!173, !20, i64 16}
!598 = !{!169, !20, i64 40}
!599 = !{!173, !20, i64 24}
!600 = !{!169, !13, i64 76}
!601 = !{!173, !13, i64 8}
!602 = distinct !{!602, !208}
!603 = distinct !{!603, i1 true, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10ObjectFileINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EEE3endEv"}
!604 = distinct !{!604, !603, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10ObjectFileINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EEE3endEv: argument 0"}
!605 = distinct !{!605, !208}
!606 = distinct !{null}
!607 = distinct !{!607, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!608 = distinct !{!608, !607, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!609 = distinct !{!609, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!610 = distinct !{!610, !609, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!611 = distinct !{!611, i1 true, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EEE12emplace_backIJRPhEEENS1_15vector_iteratorISA_S7_EEDpOT_"}
!612 = distinct !{!612, !611, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EEE12emplace_backIJRPhEEENS1_15vector_iteratorISA_S7_EEDpOT_: argument 0"}
!613 = distinct !{!613, i1 true, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EEE21internal_emplace_backIJRPhEEENS1_15vector_iteratorISA_S7_EEDpOT_"}
!614 = distinct !{!614, !613, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EEE21internal_emplace_backIJRPhEEENS1_15vector_iteratorISA_S7_EEDpOT_: argument 0"}
!615 = distinct !{!615, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!616 = distinct !{!616, !615, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!617 = distinct !{!617, i1 true, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EEE12emplace_backIJRPhEEENS1_15vector_iteratorISA_S7_EEDpOT_"}
!618 = distinct !{!618, !617, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EEE12emplace_backIJRPhEEENS1_15vector_iteratorISA_S7_EEDpOT_: argument 0"}
!619 = distinct !{!619, i1 true, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EEE21internal_emplace_backIJRPhEEENS1_15vector_iteratorISA_S7_EEDpOT_"}
!620 = distinct !{!620, !619, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EEE21internal_emplace_backIJRPhEEENS1_15vector_iteratorISA_S7_EEDpOT_: argument 0"}
!621 = !{!461, !70, i64 2677}
!622 = !{!286, !286, i64 0}
!623 = !{!604}
!624 = !{!608}
!625 = !{!264, !263, i64 0}
!626 = !{!146, !146, i64 0}
!627 = !{!610}
!628 = !{!614, !612}
!629 = !{!616}
!630 = !{!620, !618}
!631 = !{!153, !70, i64 810}
!632 = distinct !{!632, i1 true, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EEE12emplace_backIJRPS5_EEENS1_15vector_iteratorISB_S8_EEDpOT_"}
!633 = distinct !{!633, !632, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EEE12emplace_backIJRPS5_EEENS1_15vector_iteratorISB_S8_EEDpOT_: argument 0"}
!634 = distinct !{!634, i1 true, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EEE21internal_emplace_backIJRPS5_EEENS1_15vector_iteratorISB_S8_EEDpOT_"}
!635 = distinct !{!635, !634, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EEE21internal_emplace_backIJRPS5_EEENS1_15vector_iteratorISB_S8_EEDpOT_: argument 0"}
!636 = !{!635, !633}
!637 = !{!477, !477, i64 0}
!638 = distinct !{!638, i1 false, !"LVerDomain"}
!639 = distinct !{!639, !638}
!640 = distinct !{!640, !638}
!641 = distinct !{!641, !208, !651, !652}
!642 = distinct !{!642, !208, !651}
!643 = distinct !{!643, i1 false, !"LVerDomain"}
!644 = distinct !{!644, !643}
!645 = distinct !{!645, !643}
!646 = distinct !{!646, !208, !651, !652}
!647 = distinct !{!647, !208, !651}
!648 = !{!64, !63, i64 0}
!649 = !{!639}
!650 = !{!640}
!651 = !{!"llvm.loop.isvectorized", i32 1}
!652 = !{!"llvm.loop.unroll.runtime.disable"}
!653 = !{!644}
!654 = !{!645}
!655 = distinct !{!655, !208}
!656 = !{i64 0, i64 4, !29, i64 4, i64 1, !29, i64 5, i64 1, !29, i64 6, i64 2, !29, i64 8, i64 8, !29, i64 16, i64 8, !29}
!657 = distinct !{!657, !208}
!658 = distinct !{!658, !208}
!659 = distinct !{!659, !208}
!660 = distinct !{!660, i1 true, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_"}
!661 = distinct !{!661, !660, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!662 = distinct !{!662, !660, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!663 = distinct !{!663, !208}
!664 = distinct !{!664, i1 true, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_"}
!665 = distinct !{!665, !664, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!666 = distinct !{!666, !664, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!667 = distinct !{!667, !485}
!668 = distinct !{!668, i1 true, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_"}
!669 = distinct !{!669, !668, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
end_hunk_2
