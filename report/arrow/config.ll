Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/config?download=true
inline.NumInlined: 182
inline.NumDeleted: 75
begin_hunk_0_@_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_move_assignEOS6_:bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !20
  %i.ac = load i64, ptr %i.k, align 8, !tbaa !13
  store i64 %i.ac, ptr %i.h, align 8, !tbaa !13
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.g, ptr %1, align 8, !tbaa !7
  store i64 %i.y, ptr %i.k, align 8, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.k, ptr %1, align 8, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.g, %bb.h
  %i.ad = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.g, %bb.g ], [ %i.k, %bb.h ], [ %i.j, %bb.c ]
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.ae, align 8, !tbaa !20
  store i8 0, ptr %i.ad, align 1, !tbaa !13
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.i:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.af, ptr %0, align 8, !tbaa !19
  %i.ag = load ptr, ptr %1, align 8, !tbaa !7     ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !20 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 16
  tail call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  store ptr %i.ag, ptr %0, align 8, !tbaa !7
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !13
  store i64 %i.an, ptr %i.af, align 8, !tbaa !13
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !20
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !20
  store ptr %i.ah, ptr %1, align 8, !tbaa !7
  store i64 0, ptr %i.ao, align 8, !tbaa !20
  store i8 0, ptr %i.ah, align 8, !tbaa !13
  store i8 1, ptr %i.a, align 8, !tbaa !14
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.l:                                             ; preds = %bb.i
  store i8 0, ptr %i.a, align 8, !tbaa !14
  br i1 %i.c, label %bb.m, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.m:                                             ; preds = %bb.l
  %i.ar = load ptr, ptr %0, align 8, !tbaa !7     ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.m
  %i.au = load i64, ptr %i.as, align 8, !tbaa !13
  %i.av = add i64 %i.au, 1
  tail call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #15
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.l, %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  ret void
}

declare noundef zeroext i1 @_ZNK5arrow8internal7CpuInfo11IsSupportedEl(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK5arrow8internal7CpuInfo10IsDetectedEl(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA115_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(115) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16, !noalias !40
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !40
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43, !noalias !40, !nonnull !18, !align !53
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(115) %2) #16, !noalias !40
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(115) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA115_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !40 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA115_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA115_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA115_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16, !noalias !40
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA115_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA115_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16, !noalias !40
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA115_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !7      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !13
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA115_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !7      ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !13
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %common.resume
}

declare void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext, ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

declare void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #5

declare void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #12

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_config.cc() #13 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  store <4 x i32> <i32 23000001, i32 23, i32 0, i32 1>, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, align 16, !tbaa !3
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 32), ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 16), align 16, !tbaa !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 32), ptr noundef nonnull align 1 dereferenceable(6) @.str, i64 6, i1 false)
  store i64 6, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 24), align 8, !tbaa !20
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 38), align 2, !tbaa !13
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 64), ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 48), align 16, !tbaa !19
  store i32 808465202, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 64), align 16
  store i64 4, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 56), align 8, !tbaa !20
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 68), align 4, !tbaa !13
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 96), ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 80), align 16, !tbaa !19
  store i64 3471766437195952946, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 96), align 16
  store i64 8, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 88), align 8, !tbaa !20
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 104), align 8, !tbaa !13
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 128), ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 112), align 16, !tbaa !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 128), ptr noundef nonnull align 1 dereferenceable(5) @.str.3, i64 5, i1 false)
  store i64 5, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 120), align 8, !tbaa !20
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 133), align 1, !tbaa !13
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 160), ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 144), align 16, !tbaa !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 160), ptr noundef nonnull align 1 dereferenceable(6) @.str.4, i64 6, i1 false)
  store i64 6, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 152), align 8, !tbaa !20
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 166), align 2, !tbaa !13
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 192), ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 176), align 16, !tbaa !19
  %i.a = invoke noalias noundef nonnull dereferenceable(103) ptr @_Znwm(i64 noundef 103) #18
          to label %.noexc68.i unwind label %bb.b ; 3 uses

.noexc68.i:                                       ; preds = %bb.a
  store ptr %i.a, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 176), align 16, !tbaa !7
  store i64 102, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 192), align 16, !tbaa !13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(102) %i.a, ptr noundef nonnull align 1 dereferenceable(102) @.str.5, i64 102, i1 false)
  store i64 102, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 184), align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 102
  store i8 0, ptr %i.b, align 1, !tbaa !13
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 224), ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 208), align 16, !tbaa !19
  %i.c = invoke noalias noundef nonnull dereferenceable(41) ptr @_Znwm(i64 noundef 41) #18
          to label %.noexc76.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.thread.i ; 3 uses

.noexc76.i:                                       ; preds = %.noexc68.i
  store ptr %i.c, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 208), align 16, !tbaa !7
  store i64 40, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 224), align 16, !tbaa !13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.c, ptr noundef nonnull align 1 dereferenceable(40) @.str.6, i64 40, i1 false)
  store i64 40, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 216), align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i8 0, ptr %i.d, align 1, !tbaa !13
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 256), ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 240), align 16, !tbaa !19
  %i.e = invoke noalias noundef nonnull dereferenceable(20) ptr @_Znwm(i64 noundef 20) #18
          to label %__cxx_global_var_init.exit unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i.a ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.thread.i: ; preds = %.noexc68.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i.a: ; preds = %.noexc76.i
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 208), align 16, !tbaa !7 ; 2 uses
  %i.i = icmp eq ptr %.pre.i, getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 224)
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.i_crit_edge

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.i_crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i.a
  %.pre = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 224), align 16, !tbaa !13
  %i.j = add i64 %.pre, 1
  tail call void @_ZdlPvm(ptr noundef %.pre.i, i64 noundef %i.j) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.i_crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.thread.i
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.thread.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.i_crit_edge ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i.a ] ; 2 uses
  %0 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 176), align 16, !tbaa !7 ; 2 uses
  %1 = icmp eq ptr %0, getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 192)
  br i1 %1, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i
  %2 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 192), align 16, !tbaa !13
  %3 = add i64 %2, 1
  tail call void @_ZdlPvm(ptr noundef %0, i64 noundef %3) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.i, %bb.b
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.f, %bb.b ], [ %.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.i ], [ %.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i ]
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 144), align 16, !tbaa !7 ; 2 uses
  %i.l = icmp eq ptr %i.k, getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 160)
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110.i
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 160), align 16, !tbaa !13
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111.i
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 112), align 16, !tbaa !7 ; 2 uses
  %i.p = icmp eq ptr %i.o, getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 128)
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113.i
  %i.q = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 128), align 16, !tbaa !13
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114.i
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 80), align 16, !tbaa !7 ; 2 uses
  %i.t = icmp eq ptr %i.s, getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 96)
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116.i
  %i.u = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 96), align 16, !tbaa !13
  %i.v = add i64 %i.u, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117.i
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 48), align 16, !tbaa !7 ; 2 uses
  %i.x = icmp eq ptr %i.w, getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 64)
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119.i
  %i.y = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 64), align 16, !tbaa !13
  %i.z = add i64 %i.y, 1
  tail call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120.i
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 16), align 16, !tbaa !7 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 32)
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122.i
  %i.ac = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 32), align 16, !tbaa !13
  %i.ad = add i64 %i.ac, 1
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123.i
  resume { ptr, i32 } %.pn.pn.pn.pn.i

__cxx_global_var_init.exit:                       ; preds = %.noexc76.i
  store ptr %i.e, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 240), align 16, !tbaa !7
  store i64 19, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 256), align 16, !tbaa !13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.e, ptr noundef nonnull align 1 dereferenceable(19) @.str.7, i64 19, i1 false)
  store i64 19, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 248), align 8, !tbaa !20
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 19
  store i8 0, ptr %i.ae, align 1, !tbaa !13
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 288), ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 272), align 16, !tbaa !19
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 280), align 8, !tbaa !20
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 288), align 16, !tbaa !13
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 320), ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 304), align 16, !tbaa !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(7) getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 320), ptr noundef nonnull align 1 dereferenceable(7) @.str.9, i64 7, i1 false)
  store i64 7, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 312), align 8, !tbaa !20
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 327), align 1, !tbaa !13
  %i.af = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5arrow9BuildInfoD2Ev, ptr nonnull @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, ptr nonnull @__dso_handle) #16 ; 0 uses
  %i.ag = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev, ptr nonnull @_ZN5arrow12_GLOBAL__N_116timezone_db_pathB5cxx11E, ptr nonnull @__dso_handle) #16 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #13 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { builtin nounwind }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !10, i64 0}
!8 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !9, i64 0, !12, i64 8, !5, i64 16}
!9 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = !{!5, !5, i64 0}
!14 = !{!15, !16, i64 32}
!15 = !{!"_ZTSSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !5, i64 0, !16, i64 32}
!16 = !{!"bool", !5, i64 0}
!17 = !{i8 0, i8 2}
!18 = !{}
!19 = !{!9, !10, i64 0}
!20 = !{!8, !12, i64 8}
!21 = !{!22}
!22 = distinct !{!22, !23, !"_ZN5arrow12_GLOBAL__N_119MakeSimdLevelStringIZNS_14GetRuntimeInfoEvE3$_0EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_: argument 0"}
!23 = distinct !{!23, !"_ZN5arrow12_GLOBAL__N_119MakeSimdLevelStringIZNS_14GetRuntimeInfoEvE3$_0EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_"}
!24 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!25 = !{!26}
!26 = distinct !{!26, !27, !"_ZN5arrow12_GLOBAL__N_119MakeSimdLevelStringIZNS_14GetRuntimeInfoEvE3$_1EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_: argument 0"}
!27 = distinct !{!27, !"_ZN5arrow12_GLOBAL__N_119MakeSimdLevelStringIZNS_14GetRuntimeInfoEvE3$_1EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_"}
!28 = !{!29, !16, i64 64}
!29 = !{!"_ZTSN5arrow11RuntimeInfoE", !8, i64 0, !8, i64 32, !16, i64 64, !30, i64 72}
!30 = !{!"_ZTSSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !31, i64 0}
!31 = !{!"_ZTSSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EE", !32, i64 0}
!32 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EE", !33, i64 0}
!33 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb0ELb0EE", !15, i64 0}
!34 = !{!35, !36, i64 0}
!35 = !{!"_ZTSN5arrow6StatusE", !36, i64 0}
!36 = !{!"p1 _ZTSN5arrow6Status5StateE", !11, i64 0}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZN5arrow6Status2OKEv: argument 0"}
!39 = distinct !{!39, !"_ZN5arrow6Status2OKEv"}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_ZN5arrow8internal12JoinToStringIJRA115_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
!42 = distinct !{!42, !"_ZN5arrow8internal12JoinToStringIJRA115_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_"}
!43 = !{!44, !52, i64 8}
!44 = !{!"_ZTSN5arrow8internal19StringStreamWrapperE", !45, i64 0, !52, i64 8}
!45 = !{!"_ZTSSt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !46, i64 0}
!46 = !{!"_ZTSSt15__uniq_ptr_dataINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_ELb1ELb1EE", !47, i64 0}
!47 = !{!"_ZTSSt15__uniq_ptr_implINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !48, i64 0}
!48 = !{!"_ZTSSt5tupleIJPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !49, i64 0}
!49 = !{!"_ZTSSt11_Tuple_implILm0EJPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !50, i64 0}
!50 = !{!"_ZTSSt10_Head_baseILm0EPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEELb0EE", !51, i64 0}
!51 = !{!"p1 _ZTSNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE", !11, i64 0}
!52 = !{!"p1 _ZTSSo", !11, i64 0}
!53 = !{i64 8}
end_hunk_0
