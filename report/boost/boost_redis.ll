Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/boost_redis?download=true
inline.NumInlined: 16494
inline.NumDeleted: 6231
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZN5boost5redis6detail11multiplexer4elem12notify_errorENS_6system10error_codeE:bb.a
  br i1 %or.cond, label %_ZNK5boost6system10error_codecvbEv.exit.thread, label %_ZNK5boost6system10error_codecvbEv.exit.thread2

_ZNK5boost6system10error_codecvbEv.exit.thread2:  ; preds = %bb.b, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !309
  br label %_ZNK5boost6system10error_codecvbEv.exit.thread

_ZNK5boost6system10error_codecvbEv.exit.thread:   ; preds = %bb.b, %_ZNK5boost6system10error_codecvbEv.exit.thread2
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 3, ptr %i.h, align 8, !tbaa !179
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !71
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread
  invoke void @_ZSt25__throw_bad_function_callv() #51
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !376
  invoke void %i.m(ptr noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_ZN5boost5redis6detail11multiplexer4elem11notify_doneEv.exit unwind label %bb.e, !inline_history !377

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #50
  unreachable

_ZN5boost5redis6detail11multiplexer4elem11notify_doneEv.exit: ; preds = %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN5boost5redis6detail11multiplexer4elem15commit_responseEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(120) %0, i64 noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !183
  %i.c = add i64 %i.b, %1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !183
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !375
  %i.f = add i64 %i.e, -1
  store i64 %i.f, ptr %i.d, align 8, !tbaa !375
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN5boost5redis6detail11multiplexer4elem14mark_abandonedEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(120) initializes((0, 8)) %0) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt8functionIFvN5boost5redis11any_adapter11parse_eventERKNS1_5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEERNS0_6system10error_codeEEEC2EOSH_.exit.i.i:
  %1 = alloca %"class.std::function.22", align 8  ; 6 uses
  %2 = alloca %"class.std::function.17", align 8  ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !161
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 16, i1 false), !tbaa.struct !128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load <2 x ptr>, ptr %i.c, align 8, !tbaa !147
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !147  ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvN5boost5redis11any_adapter11parse_eventERKNS1_5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEERNS0_6system10error_codeEEZNS2_C1ESt8functionISG_EEd_UlS3_SC_SF_E_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation, ptr %i.c, align 8, !tbaa !147
  store <2 x ptr> %i.e, ptr %i.b, align 8, !tbaa !147
  store ptr @_ZNSt17_Function_handlerIFvN5boost5redis11any_adapter11parse_eventERKNS1_5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEERNS0_6system10error_codeEEZNS2_C1ESt8functionISG_EEd_UlS3_SC_SF_E_E9_M_invokeERKSt9_Any_dataOS3_SC_SF_, ptr %i.d, align 8, !tbaa !147
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt8functionIFvvEEC2EOS1_.exit.i.i, label %bb.a

bb.a:                                             ; preds = %_ZNSt8functionIFvN5boost5redis11any_adapter11parse_eventERKNS1_5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEERNS0_6system10error_codeEEEC2EOSH_.exit.i.i
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt8functionIFvvEEC2EOS1_.exit.i.i unwind label %bb.b ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #50
  unreachable

_ZNSt8functionIFvvEEC2EOS1_.exit.i.i:             ; preds = %bb.a, %_ZNSt8functionIFvN5boost5redis11any_adapter11parse_eventERKNS1_5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEERNS0_6system10error_codeEEEC2EOSH_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 16, i1 false), !tbaa.struct !128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load <2 x ptr>, ptr %.phi.trans.insert, align 8, !tbaa !147
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !147 ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFvvEZN5boost5redis6detail11multiplexer4elem14mark_abandonedEvE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation", ptr %i.l, align 8, !tbaa !147
  store <2 x ptr> %i.n, ptr %i.k, align 8, !tbaa !147
  store ptr @"_ZNSt17_Function_handlerIFvvEZN5boost5redis6detail11multiplexer4elem14mark_abandonedEvE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.m, align 8, !tbaa !147
  %.not.i.i.i3 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i3, label %_ZNSt14_Function_baseD2Ev.exit5, label %bb.c

bb.c:                                             ; preds = %_ZNSt8functionIFvvEEC2EOS1_.exit.i.i
  %i.o = invoke noundef zeroext i1 %.pre(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit5 unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #50
  unreachable

_ZNSt14_Function_baseD2Ev.exit5:                  ; preds = %bb.c, %_ZNSt8functionIFvvEEC2EOS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #49
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost5redis6detail11multiplexer4elem17set_done_callbackESt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef align 8 %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function.22", align 16 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load <2 x ptr>, ptr %i.b, align 8, !tbaa !147
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !71
  %.not.i.i.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvvEEC2EOS1_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 16, i1 false), !tbaa.struct !128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvvEEC2EOS1_.exit.i

_ZNSt8functionIFvvEEC2EOS1_.exit.i:               ; preds = %bb.b, %bb.a
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 16, i1 false), !tbaa.struct !128
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.a, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.g = load <2 x ptr>, ptr %i.f, align 8, !tbaa !147
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !147  ; 2 uses
  store <2 x ptr> %i.g, ptr %i.e, align 16, !tbaa !147
  store <2 x ptr> %i.c, ptr %i.f, align 8, !tbaa !147
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt8functionIFvvEEaSEOS1_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt8functionIFvvEEC2EOS1_.exit.i
  %i.i = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt8functionIFvvEEaSEOS1_.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #50
  unreachable

_ZNSt8functionIFvvEEaSEOS1_.exit:                 ; preds = %_ZNSt8functionIFvvEEC2EOS1_.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5boost5redis6detail11multiplexerC2Ev(ptr noundef nonnull align 8 dereferenceable(352) initializes((0, 48)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i64 -1, ptr %0, align 8, !tbaa !378
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !103
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.d, align 8, !tbaa !105
  store i8 0, ptr %i.c, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.e, i8 0, i64 88, i1 false)
  invoke void @_ZNSt11_Deque_baseISt10shared_ptrIN5boost5redis6detail11multiplexer4elemEESaIS6_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %i.f, i64 noundef 0)
          to label %_ZN5boost5redis11any_adapterC2ESt8functionIFvNS1_11parse_eventERKNS0_5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEERNS_6system10error_codeEEE.exit unwind label %bb.d

_ZN5boost5redis11any_adapterC2ESt8functionIFvNS1_11parse_eventERKNS0_5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEERNS_6system10error_codeEEE.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 0, ptr %i.g, align 8, !tbaa !302
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) @_ZN5boost5redis5resp36parser13default_sizesE, i64 48, i1 false), !tbaa.struct !303
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 -1, ptr %i.i, align 8, !tbaa !304
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 17, ptr %i.j, align 8, !tbaa !305
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 0, ptr %i.k, align 8, !tbaa !301
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i8 0, ptr %i.l, align 8, !tbaa !379
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 249
  store i8 0, ptr %i.m, align 1, !tbaa !380
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.n, i8 0, i64 72, i1 false)
  store ptr @_ZNSt17_Function_handlerIFvN5boost5redis11any_adapter11parse_eventERKNS1_5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEERNS0_6system10error_codeEEZNS2_C1ESt8functionISG_EEd_UlS3_SC_SF_E_E9_M_invokeERKSt9_Any_dataOS3_SC_SF_, ptr %i.p, align 8, !tbaa !148
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvN5boost5redis11any_adapter11parse_eventERKNS1_5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEERNS0_6system10error_codeEEZNS2_C1ESt8functionISG_EEd_UlS3_SC_SF_E_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation, ptr %i.q, align 8, !tbaa !71
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i64 4096, ptr %i.r, align 8, !tbaa !280
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !381
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !277
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.x = sub i64 %i.v, %i.w
  %i.y = icmp ult i64 %i.x, 4096
  br i1 %i.y, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i, label %_ZN5boost5redis6detail11read_buffer7reserveEm.exit

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i: ; preds = %_ZN5boost5redis11any_adapterC2ESt8functionIFvNS1_11parse_eventERKNS0_5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEERNS_6system10error_codeEEE.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !279
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.w
  %i.ad = invoke noalias noundef nonnull dereferenceable(4096) ptr @_Znwm(i64 noundef 4096) #52
          to label %.noexc unwind label %bb.e     ; 4 uses

.noexc:                                           ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !277 ; 4 uses
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !279
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ai = sub i64 %i.ag, %i.ah                    ; 2 uses
  %i.aj = icmp sgt i64 %i.ai, 0
  br i1 %i.aj, label %bb.b, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i.i

bb.b:                                             ; preds = %.noexc
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr align 1 %i.ae, i64 %i.ai, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i.i: ; preds = %bb.b, %.noexc
  %.not.i8.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i8.i.i, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i.i
  %i.ak = load ptr, ptr %i.s, align 8, !tbaa !381
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.al, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.am) #53
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i.i

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i.i: ; preds = %bb.c, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i.i
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !277
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ac
  store ptr %i.an, ptr %i.z, align 8, !tbaa !279
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 4096
  store ptr %i.ao, ptr %i.s, align 8, !tbaa !381
  br label %_ZN5boost5redis6detail11read_buffer7reserveEm.exit

_ZN5boost5redis6detail11read_buffer7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i.i, %_ZN5boost5redis11any_adapterC2ESt8functionIFvNS1_11parse_eventERKNS0_5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEERNS_6system10error_codeEEE.exit
  ret void

bb.d:                                             ; preds = %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = load ptr, ptr %i.q, align 8, !tbaa !71  ; 2 uses
  %.not.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i, label %_ZN5boost5redis11any_adapterD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = invoke noundef zeroext i1 %i.ar(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i32 noundef 3)
          to label %_ZN5boost5redis11any_adapterD2Ev.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  tail call void @__clang_call_terminate(ptr %i.au) #50
  unreachable

_ZN5boost5redis11any_adapterD2Ev.exit:            ; preds = %bb.f, %bb.e
  tail call void @_ZNSt5dequeISt10shared_ptrIN5boost5redis6detail11multiplexer4elemEESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.f) #49
  br label %bb.h

bb.h:                                             ; preds = %_ZN5boost5redis11any_adapterD2Ev.exit, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.aq, %_ZN5boost5redis11any_adapterD2Ev.exit ], [ %i.ap, %bb.d ]
  %i.av = load ptr, ptr %i.b, align 8, !tbaa !104 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.c
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ax = load i64, ptr %i.c, align 8, !tbaa !12
  %i.ay = add i64 %i.ax, 1
  tail call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !277 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i, label %_ZN5boost5redis6detail11read_bufferD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !381
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.az to i64
  %i.be = sub i64 %i.bc, %i.bd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.be) #53
  br label %_ZN5boost5redis6detail11read_bufferD2Ev.exit

_ZN5boost5redis6detail11read_bufferD2Ev.exit:     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.i
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5boost5redis6detail11read_buffer7reserveEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, i64 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = icmp slt i64 %1, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.195) #51
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !381
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !277
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIcSaIcEE7reserveEm.exit

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !279
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.g
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %1) #52 ; 4 uses
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !277  ; 4 uses
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !279
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %i.t = icmp sgt i64 %i.s, 0
  br i1 %i.t, label %bb.d, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.n, ptr align 1 %i.o, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i: ; preds = %bb.d, %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.o, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !381
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.w) #53
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i: ; preds = %bb.e, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i
  store ptr %i.n, ptr %i.a, align 8, !tbaa !277
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m
  store ptr %i.x, ptr %i.j, align 8, !tbaa !279
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 %1
  store ptr %i.y, ptr %i.c, align 8, !tbaa !381
  br label %_ZNSt6vectorIcSaIcEE7reserveEm.exit

_ZNSt6vectorIcSaIcEE7reserveEm.exit:              ; preds = %bb.c, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5dequeISt10shared_ptrIN5boost5redis6detail11multiplexer4elemEESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::_Deque_iterator", align 16 ; 5 uses
  %2 = alloca %"struct.std::_Deque_iterator", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.g = load <2 x ptr>, ptr %i.a, align 8, !tbaa !218, !noalias !382
  store <2 x ptr> %i.g, ptr %1, align 16, !tbaa !218
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load <2 x ptr>, ptr %i.b, align 8, !tbaa !147, !noalias !382
  store <2 x ptr> %i.i, ptr %i.h, align 16, !tbaa !147
  %i.j = load <2 x ptr>, ptr %i.d, align 8, !tbaa !218, !noalias !385
  store <2 x ptr> %i.j, ptr %2, align 16, !tbaa !218
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load <2 x ptr>, ptr %i.e, align 8, !tbaa !147, !noalias !385
  store <2 x ptr> %i.l, ptr %i.k, align 16, !tbaa !147
  invoke void @_ZNSt5dequeISt10shared_ptrIN5boost5redis6detail11multiplexer4elemEESaIS6_EE19_M_destroy_data_auxESt15_Deque_iteratorIS6_RS6_PS6_ESC_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dead_on_return %1, ptr noundef nonnull align 8 dead_on_return %2)
          to label %bb.b unwind label %bb.d

end_hunk_0
