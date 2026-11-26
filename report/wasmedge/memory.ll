Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/memory?download=true
inline.NumInlined: 397
inline.NumDeleted: 275
begin_hunk_0_@_ZN8WasmEdge7Runtime8Instance14ModuleInstance17unsafeAddInstanceINS1_14MemoryInstanceEJRKNS_3AST10MemoryTypeEmEEENSt9enable_ifIX11IsInstanceVIT_EEvE4typeERSt6vectorISt10unique_ptrISA_St14default_deleteISA_EESaISH_EERSD_IPSA_SaISL_EEDpOT0_:bb.a
  br i1 %i.bf, label %bb.h, label %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance14MemoryInstanceESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIPN8WasmEdge7Runtime8Instance14MemoryInstanceESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bd, ptr align 8 %i.as, i64 %i.av, i1 false)
  br label %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance14MemoryInstanceESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIPN8WasmEdge7Runtime8Instance14MemoryInstanceESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.h, %_ZNKSt6vectorIPN8WasmEdge7Runtime8Instance14MemoryInstanceESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance14MemoryInstanceESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance14MemoryInstanceESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.av) #18
  br label %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance14MemoryInstanceESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIPN8WasmEdge7Runtime8Instance14MemoryInstanceESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance14MemoryInstanceESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  store ptr %i.bd, ptr %2, align 8, !tbaa !14
  store ptr %i.bg, ptr %i.an, align 8, !tbaa !13
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bb
  store ptr %i.bh, ptr %i.ap, align 8, !tbaa !83
  br label %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance14MemoryInstanceESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIPN8WasmEdge7Runtime8Instance14MemoryInstanceESaIS4_EE9push_backEOS4_.exit: ; preds = %bb.e, %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance14MemoryInstanceESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i
  ret void

_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14MemoryInstanceESt14default_deleteIS3_EED2Ev.exit8: ; preds = %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14MemoryInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i, %bb.c
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14MemoryInstanceEEclEPS3_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  resume { ptr, i32 } %i.bi
}

; Function Attrs: nounwind
declare i32 @pthread_rwlock_wrlock(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8WasmEdge7Runtime8Instance14MemoryInstanceC2ERKNS_3AST10MemoryTypeEm(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.spdlog::details::log_msg", align 8 ; 4 uses
  %4 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %5 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %6 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !85
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !41
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  store i64 %2, ptr %i.b, align 8, !tbaa !86
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, i8 0, i64 40, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.e, ptr %i.d, align 8, !tbaa !42
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 1, ptr %i.f, align 8, !tbaa !43
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.h, align 8, !tbaa !87
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.j = load i8, ptr %0, align 8, !tbaa !88
  %i.k = icmp ult i8 %i.j, 4
  %i.l = icmp ugt i64 %2, 65536
  %or.cond = and i1 %i.l, %i.k
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %2, 281474976710656
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN6spdlog6logger4log_IJRmRKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.m, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %6, i32 noundef 4, ptr nonnull @.str.4, i64 76, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) @_ZN8WasmEdge7Runtime8Instance14MemoryInstance12kPageLimit32E)
          to label %bb.d unwind label %bb.n

bb.d:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  store i64 65536, ptr %i.b, align 8, !tbaa !86
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %i.n = phi i64 [ 65536, %bb.e ], [ %2, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !44   ; 2 uses
  %i.q = icmp ugt i64 %i.p, %i.n
  br i1 %i.q, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.r = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc3 unwind label %bb.n

.noexc3:                                          ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZN6spdlog6logger4log_IJRmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.r, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %5, i32 noundef 4, ptr nonnull @.str.5, i64 50, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %.noexc3
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.s = load i64, ptr %i.b, align 8, !tbaa !86   ; 2 uses
  store i64 %i.s, ptr %i.o, align 8, !tbaa !44
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.t = phi i64 [ %i.s, %bb.h ], [ %i.p, %bb.f ]
  %i.u = tail call noundef ptr @_ZN8WasmEdge9Allocator8allocateEm(i64 noundef %i.t) #14 ; 2 uses
  store ptr %i.u, ptr %i.a, align 8, !tbaa !41
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.w = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc5 unwind label %bb.n    ; 5 uses

.noexc5:                                          ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.y = load atomic i32, ptr %i.x monotonic, align 4
  %i.z = icmp slt i32 %i.y, 5                     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  %i.ab = invoke noundef zeroext i1 @_ZNK6spdlog7details10backtracer7enabledEv(ptr noundef nonnull align 8 dereferenceable(104) %i.aa)
          to label %.noexc6 unwind label %bb.n    ; 2 uses

.noexc6:                                          ; preds = %.noexc5
  %or.cond.i.i.i.i = or i1 %i.z, %i.ab
  br i1 %or.cond.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.noexc6
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !47
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !48
  invoke void @_ZN6spdlog7details7log_msgC1ENS_10source_locEN3fmt3v1117basic_string_viewIcEENS_5level10level_enumES6_(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %4, ptr %i.ad, i64 %i.af, i32 noundef 4, ptr nonnull @.str.6, i64 54)
          to label %.noexc7 unwind label %bb.n

.noexc7:                                          ; preds = %bb.k
  invoke void @_ZN6spdlog6logger7log_it_ERKNS_7details7log_msgEbb(ptr noundef nonnull align 8 dereferenceable(208) %i.w, ptr noundef nonnull align 8 dereferenceable(96) %3, i1 noundef zeroext %i.z, i1 noundef zeroext %i.ab)
          to label %.noexc8 unwind label %bb.n

.noexc8:                                          ; preds = %.noexc7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %bb.l

bb.l:                                             ; preds = %.noexc8, %.noexc6
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store i64 0, ptr %i.o, align 8, !tbaa !44
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  ret void

bb.n:                                             ; preds = %.noexc7, %bb.k, %.noexc5, %bb.j, %.noexc3, %bb.g, %.noexc, %bb.c
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #16
  unreachable
}

; Function Attrs: nounwind
declare noundef ptr @_ZN8WasmEdge9Allocator8allocateEm(i64 noundef) local_unnamed_addr #7

declare noundef ptr @_ZN6spdlog18default_logger_rawEv() local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6spdlog6logger4log_IJRmRKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef byval(%"struct.spdlog::source_loc") align 8 %1, i32 noundef %2, ptr %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.fmt::v11::basic_memory_buffer", align 8 ; 12 uses
  %8 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 6 uses
  %9 = alloca %"struct.spdlog::details::log_msg", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load atomic i32, ptr %i.a monotonic, align 8
  %i.c = icmp sge i32 %2, %i.b                    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = tail call noundef zeroext i1 @_ZNK6spdlog7details10backtracer7enabledEv(ptr noundef nonnull align 8 dereferenceable(104) %i.d) ; 2 uses
  %or.cond = or i1 %i.c, %i.e
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.h, align 8
  store ptr @_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE4growERNS0_6detail6bufferIcEEm, ptr %i.g, align 8, !tbaa !50
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  store ptr %i.i, ptr %7, align 8, !tbaa !51
  store i64 250, ptr %i.f, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.j = load i64, ptr %5, align 8, !tbaa !26
  %.sroa.01.0.insert.ext.i = zext i64 %i.j to i128
  store i128 %.sroa.01.0.insert.ext.i, ptr %8, align 16, !alias.scope !91
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.l = load i64, ptr %6, align 8, !tbaa !26
  %.sroa.01.0.insert.ext.i17 = zext i64 %i.l to i128
  store i128 %.sroa.01.0.insert.ext.i17, ptr %i.k, align 16, !alias.scope !91
  invoke void @_ZN3fmt3v116detail10vformat_toIcEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS4_EENS1_12vformat_argsIS4_E4typeENS1_10locale_refE(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr %3, i64 %4, i64 68, ptr nonnull %8, ptr null)
          to label %_ZN3fmt3v1110vformat_toINS0_14basic_appenderIcEETnNSt9enable_ifIXsr6detail18is_output_iteratorINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEcEE5valueEiE4typeELi0EEESB_OS7_NS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit unwind label %bb.g

_ZN3fmt3v1110vformat_toINS0_14basic_appenderIcEETnNSt9enable_ifIXsr6detail18is_output_iteratorINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEcEE5valueEiE4typeELi0EEESB_OS7_NS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !48
  %i.q = load ptr, ptr %7, align 8, !tbaa !51
  %i.r = load i64, ptr %i.h, align 8, !tbaa !53
  invoke void @_ZN6spdlog7details7log_msgC1ENS_10source_locEN3fmt3v1117basic_string_viewIcEENS_5level10level_enumES6_(ptr noundef nonnull align 8 dereferenceable(96) %9, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %1, ptr %i.n, i64 %i.p, i32 noundef %2, ptr %i.q, i64 %i.r)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZN3fmt3v1110vformat_toINS0_14basic_appenderIcEETnNSt9enable_ifIXsr6detail18is_output_iteratorINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEcEE5valueEiE4typeELi0EEESB_OS7_NS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
  invoke void @_ZN6spdlog6logger7log_it_ERKNS_7details7log_msgEbb(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(96) %9, i1 noundef zeroext %i.c, i1 noundef zeroext %i.e)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %i.s = load ptr, ptr %7, align 8, !tbaa !51     ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, %i.i
  br i1 %.not.i.i, label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load i64, ptr %i.f, align 8, !tbaa !52
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.t) #18
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit

_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit
  ret void

bb.g:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %bb.i

bb.h:                                             ; preds = %bb.c, %_ZN3fmt3v1110vformat_toINS0_14basic_appenderIcEETnNSt9enable_ifIXsr6detail18is_output_iteratorINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEcEE5valueEiE4typeELi0EEESB_OS7_NS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.v, %bb.h ], [ %i.u, %bb.g ]
  %i.w = load ptr, ptr %7, align 8, !tbaa !51     ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.w, %i.i
  br i1 %.not.i.i19, label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit20, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = load i64, ptr %i.f, align 8, !tbaa !52
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.x) #18
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit20

_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit20: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  resume { ptr, i32 } %.pn
}

declare noundef zeroext i1 @_ZNK6spdlog7details10backtracer7enabledEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #10

declare void @_ZN6spdlog7details7log_msgC1ENS_10source_locEN3fmt3v1117basic_string_viewIcEENS_5level10level_enumES6_(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef byval(%"struct.spdlog::source_loc") align 8, ptr, i64, i32 noundef, ptr, i64) unnamed_addr #10

declare void @_ZN6spdlog6logger7log_it_ERKNS_7details7log_msgEbb(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(96), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE4growERNS0_6detail6bufferIcEEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !52   ; 3 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = add i64 %i.c, %i.b                       ; 3 uses
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %bb.c, label %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i64 @llvm.umax.i64(i64 %1, i64 9223372036854775807)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %.0 = phi i64 [ %1, %bb.a ], [ %i.g, %bb.c ]    ; 2 uses
  %i.h = icmp slt i64 %.0, 0
  br i1 %i.h, label %bb.e, label %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit, !prof !92

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #15
  unreachable

_ZNSt15__new_allocatorIcE8allocateEmPKv.exit:     ; preds = %bb.b, %bb.d
  %.035 = phi i64 [ %.0, %bb.d ], [ %i.d, %bb.b ] ; 3 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !51     ; 3 uses
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.035) #17 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !53   ; 2 uses
  %i.m = icmp ule i64 %i.l, %.035
  tail call void @llvm.assume(i1 %i.m)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %i.i, i64 %i.l, i1 false)
  store ptr %i.j, ptr %0, align 8, !tbaa !51
  store i64 %.035, ptr %i.a, align 8, !tbaa !52
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not = icmp eq ptr %i.i, %i.n
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.b) #18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

declare void @_ZN3fmt3v116detail10vformat_toIcEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS4_EENS1_12vformat_argsIS4_E4typeENS1_10locale_refE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, i64, ptr, ptr) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6spdlog6logger4log_IJRmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef byval(%"struct.spdlog::source_loc") align 8 %1, i32 noundef %2, ptr %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.fmt::v11::basic_memory_buffer", align 8 ; 12 uses
  %7 = alloca %"struct.fmt::v11::detail::format_arg_store.204", align 16 ; 5 uses
  %8 = alloca %"struct.spdlog::details::log_msg", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load atomic i32, ptr %i.a monotonic, align 8
  %i.c = icmp sge i32 %2, %i.b                    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = tail call noundef zeroext i1 @_ZNK6spdlog7details10backtracer7enabledEv(ptr noundef nonnull align 8 dereferenceable(104) %i.d) ; 2 uses
  %or.cond = or i1 %i.c, %i.e
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.h, align 8
  store ptr @_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE4growERNS0_6detail6bufferIcEEm, ptr %i.g, align 8, !tbaa !50
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  store ptr %i.i, ptr %6, align 8, !tbaa !51
  store i64 250, ptr %i.f, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.j = load i64, ptr %5, align 8, !tbaa !26
  %.sroa.01.0.insert.ext.i = zext i64 %i.j to i128
  store i128 %.sroa.01.0.insert.ext.i, ptr %7, align 16
  invoke void @_ZN3fmt3v116detail10vformat_toIcEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS4_EENS1_12vformat_argsIS4_E4typeENS1_10locale_refE(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr %3, i64 %4, i64 4, ptr nonnull %7, ptr null)
          to label %_ZN3fmt3v1110vformat_toINS0_14basic_appenderIcEETnNSt9enable_ifIXsr6detail18is_output_iteratorINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEcEE5valueEiE4typeELi0EEESB_OS7_NS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit unwind label %bb.g

_ZN3fmt3v1110vformat_toINS0_14basic_appenderIcEETnNSt9enable_ifIXsr6detail18is_output_iteratorINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEcEE5valueEiE4typeELi0EEESB_OS7_NS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !47
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !48
  %i.o = load ptr, ptr %6, align 8, !tbaa !51
  %i.p = load i64, ptr %i.h, align 8, !tbaa !53
  invoke void @_ZN6spdlog7details7log_msgC1ENS_10source_locEN3fmt3v1117basic_string_viewIcEENS_5level10level_enumES6_(ptr noundef nonnull align 8 dereferenceable(96) %8, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %1, ptr %i.l, i64 %i.n, i32 noundef %2, ptr %i.o, i64 %i.p)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZN3fmt3v1110vformat_toINS0_14basic_appenderIcEETnNSt9enable_ifIXsr6detail18is_output_iteratorINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEcEE5valueEiE4typeELi0EEESB_OS7_NS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
  invoke void @_ZN6spdlog6logger7log_it_ERKNS_7details7log_msgEbb(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(96) %8, i1 noundef zeroext %i.c, i1 noundef zeroext %i.e)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  %i.q = load ptr, ptr %6, align 8, !tbaa !51     ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, %i.i
  br i1 %.not.i.i, label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load i64, ptr %i.f, align 8, !tbaa !52
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.r) #18
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit

_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit
  ret void

bb.g:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %bb.i

bb.h:                                             ; preds = %bb.c, %_ZN3fmt3v1110vformat_toINS0_14basic_appenderIcEETnNSt9enable_ifIXsr6detail18is_output_iteratorINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEcEE5valueEiE4typeELi0EEESB_OS7_NS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
end_hunk_0
