Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HostInfoLinux?download=true
inline.NumInlined: 184
inline.NumDeleted: 95
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN12lldb_private13HostInfoLinux9TerminateEv:bb.a
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZN12lldb_private12HostInfoBase9TerminateEv() local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i64 } @_ZN12lldb_private13HostInfoLinux17GetDistributionIdEv() local_unnamed_addr #0 align 2 {
bb.a:
  %0 = alloca %class.anon.3, align 8              ; 4 uses
  %1 = alloca %class.anon, align 1                ; 3 uses
  %i.a = load ptr, ptr @_ZL8g_fields, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #13
  store ptr %1, ptr %0, align 8, !tbaa !20
  %i.b = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 2 uses
  store ptr %0, ptr %i.b, align 8, !tbaa !20
  %i.c = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 2 uses
  store ptr @"_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZN12lldb_private13HostInfoLinux17GetDistributionIdEvE3$_0JEEvRS_OT_DpOT0_EUlvE_EERS7_ENUlvE_8__invokeEv", ptr %i.c, align 8, !tbaa !20
  %i.d = call noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull @__once_proxy) #13 ; 2 uses
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %"_ZN4llvm9call_onceIZN12lldb_private13HostInfoLinux17GetDistributionIdEvE3$_0JEEEvRSt9once_flagOT_DpOT0_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_system_errori(i32 noundef %i.d) #16
  unreachable

"_ZN4llvm9call_onceIZN12lldb_private13HostInfoLinux17GetDistributionIdEvE3$_0JEEEvRSt9once_flagOT_DpOT0_.exit": ; preds = %bb.a
  store ptr null, ptr %i.b, align 8, !tbaa !20
  store ptr null, ptr %i.c, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  %i.e = load ptr, ptr @_ZL8g_fields, align 8, !tbaa !14 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !18
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.g, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %i.i, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private13HostInfoLinux18GetProgramFileSpecEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.lldb_private::FileSpec") align 8 captures(none) initializes((0, 24)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 6 uses
  %i.b = load atomic i8, ptr @_ZGVZN12lldb_private13HostInfoLinux18GetProgramFileSpecEvE18g_program_filespec acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN12lldb_private13HostInfoLinux18GetProgramFileSpecEvE18g_program_filespec) #13
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN12lldb_private8FileSpecC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN12lldb_private13HostInfoLinux18GetProgramFileSpecEvE18g_program_filespec) #13
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN12lldb_private13HostInfoLinux18GetProgramFileSpecEvE18g_program_filespec) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.e = tail call noundef zeroext i1 @_ZNK12lldb_private8FileSpecntEv(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN12lldb_private13HostInfoLinux18GetProgramFileSpecEvE18g_program_filespec) #13
  br i1 %i.e, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.f = call i64 @readlink(ptr noundef nonnull @.str, ptr noundef nonnull %i.a, i64 noundef 4095) #13 ; 2 uses
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.f
  store i8 0, ptr %i.h, align 1, !tbaa !12
  %i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #13
  call void @_ZN12lldb_private8FileSpec7SetFileEN4llvm9StringRefENS1_3sys4path5StyleE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN12lldb_private13HostInfoLinux18GetProgramFileSpecEvE18g_program_filespec, ptr nonnull %i.a, i64 %i.i, i32 noundef 0) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) @_ZZN12lldb_private13HostInfoLinux18GetProgramFileSpecEvE18g_program_filespec, i64 24, i1 false), !tbaa.struct !26
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #6

declare void @_ZN12lldb_private8FileSpecC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #6

declare noundef zeroext i1 @_ZNK12lldb_private8FileSpecntEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @readlink(ptr noundef readonly captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #7

declare void @_ZN12lldb_private8FileSpec7SetFileEN4llvm9StringRefENS1_3sys4path5StyleE(ptr noundef nonnull align 8 dereferenceable(24), ptr, i64, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private13HostInfoLinux30ComputeHostArchitectureSupportERNS_8ArchSpecES2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN12lldb_private12HostInfoBase30ComputeHostArchitectureSupportERNS_8ArchSpecES2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) #13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !43
  %spec.select.i = icmp ult i32 %i.b, 176
  br i1 %spec.select.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !44
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm6Triple13setVendorNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr null, i64 0) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = load i32, ptr %i.f, align 8, !tbaa !43
  %spec.select.i8 = icmp ult i32 %i.g, 176
  br i1 %spec.select.i8, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load i32, ptr %i.h, align 8, !tbaa !44
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm6Triple13setVendorNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr null, i64 0) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  ret void
}

declare void @_ZN12lldb_private12HostInfoBase30ComputeHostArchitectureSupportERNS_8ArchSpecES2_(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #1

declare void @_ZN4llvm6Triple13setVendorNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56), ptr, i64) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

declare void @__once_proxy() #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZN12lldb_private13HostInfoLinux17GetDistributionIdEvE3$_0JEEvRS_OT_DpOT0_EUlvE_EERS7_ENUlvE_8__invokeEv"() #11 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.c = alloca [256 x i8], align 16              ; 9 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN12lldb_private13LogChannelForINS_7LLDBLogEEERNS_3Log7ChannelEv() #13
  %i.e = load atomic ptr, ptr %i.d monotonic, align 8 ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit.thread.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i64 @_ZNK12lldb_private3Log7GetMaskEv(ptr noundef nonnull align 8 dereferenceable(104) %i.e) #13
  %i.g = and i64 %i.f, 2048
  %.not6.i.i.i.i.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not6.i.i.i.i.i.i.i, label %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit.thread.i.i.i.i.i, label %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit.i.i.i.i.i

_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit.i.i.i.i.i: ; preds = %bb.b
  tail call void (ptr, ptr, i64, ptr, i64, ptr, ...) @_ZN12lldb_private3Log7FormatfEN4llvm9StringRefES2_PKcz(ptr noundef nonnull align 8 dereferenceable(104) %i.e, ptr nonnull @.str.1, i64 74, ptr nonnull @"__func__._ZZN12lldb_private13HostInfoLinux17GetDistributionIdEvENK3$_0clEv", i64 10, ptr noundef nonnull @.str.2) #13
  br label %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit.thread.i.i.i.i.i

_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit.thread.i.i.i.i.i: ; preds = %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit.i.i.i.i.i, %bb.b, %bb.a
  %.not32.i.i.i.i.i = phi i1 [ false, %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit.i.i.i.i.i ], [ true, %bb.a ], [ true, %bb.b ] ; 5 uses
  %.0.i.i31.i.i.i.i.i = phi ptr [ %i.e, %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit.i.i.i.i.i ], [ null, %bb.a ], [ null, %bb.b ] ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br label %.backedge.i.i.i.i.i.a

.backedge.i.i.i.i.i.a:                            ; preds = %.backedge.i.i.i.i.i.backedge, %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit.thread.i.i.i.i.i
  %.old46.i.i.i.i.i = phi i1 [ true, %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit.thread.i.i.i.i.i ], [ false, %.backedge.i.i.i.i.i.backedge ] ; 2 uses
  %.045.i.i.i.i.i = phi i64 [ 0, %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit.thread.i.i.i.i.i ], [ %.be.i.i.i.i.i, %.backedge.i.i.i.i.i.backedge ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @"__const._ZZN12lldb_private13HostInfoLinux17GetDistributionIdEvENK3$_0clEv.exe_paths", i64 %.045.i.i.i.i.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !19   ; 5 uses
  %i.o = call i32 @access(ptr noundef %i.n, i32 noundef 0) #13
  %.not37.i.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not37.i.i.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.backedge.i.i.i.i.i.a
  br i1 %.not32.i.i.i.i.i, label %.thread35.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void (ptr, ptr, i64, ptr, i64, ptr, ...) @_ZN12lldb_private3Log7FormatfEN4llvm9StringRefES2_PKcz(ptr noundef nonnull align 8 dereferenceable(104) %.0.i.i31.i.i.i.i.i, ptr nonnull @.str.1, i64 74, ptr nonnull @"__func__._ZZN12lldb_private13HostInfoLinux17GetDistributionIdEvENK3$_0clEv", i64 10, ptr noundef nonnull @.str.5, ptr noundef %i.n) #13
  br label %.thread35.i.i.i.i.i

bb.e:                                             ; preds = %.backedge.i.i.i.i.i.a
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #13
  store ptr %i.h, ptr %0, align 8, !tbaa !11
  %i.p = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.n) #13 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i64 %i.p, ptr %i.b, align 8, !tbaa !50
  %i.q = icmp ugt i64 %i.p, 15
  br i1 %i.q, label %bb.f, label %._crit_edge.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.r = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #13 ; 2 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !17
  %i.s = load i64, ptr %i.b, align 8, !tbaa !50
  store i64 %i.s, ptr %i.h, align 8, !tbaa !12
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.f, %bb.e
  %i.t = phi ptr [ %i.r, %bb.f ], [ %i.h, %bb.e ] ; 2 uses
  switch i64 %i.p, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i.i.i.i.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.u = load i8, ptr %i.n, align 1, !tbaa !12
  store i8 %i.u, ptr %i.t, align 1, !tbaa !12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i.i.i.i.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr nonnull align 1 %i.n, i64 %i.p, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i.i.i.i.i
  %i.v = load i64, ptr %i.b, align 8, !tbaa !50   ; 2 uses
  store i64 %i.v, ptr %i.i, align 8, !tbaa !18
  %i.w = load ptr, ptr %0, align 8, !tbaa !17
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v
  store i8 0, ptr %i.x, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %i.y = load i64, ptr %i.i, align 8, !tbaa !18
  %i.z = add i64 %i.y, -4611686018427387901
  %i.aa = icmp ult i64 %i.z, 3
  br i1 %i.aa, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i.i.i.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i.i.i.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #16
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i.i.i.i.i
  %i.ab = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.6, i64 noundef 3) #13 ; 0 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !17
  %i.ad = call noalias ptr @popen(ptr noundef %i.ac, ptr noundef nonnull @.str.7) ; 3 uses
  %.not38.not.i.i.i.i.i = icmp ne ptr %i.ad, null ; 2 uses
  br i1 %.not38.not.i.i.i.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i.i.i.i
  br i1 %.not32.i.i.i.i.i, label %bb.an, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = load ptr, ptr %0, align 8, !tbaa !17
  call void (ptr, ptr, i64, ptr, i64, ptr, ...) @_ZN12lldb_private3Log7FormatfEN4llvm9StringRefES2_PKcz(ptr noundef nonnull align 8 dereferenceable(104) %.0.i.i31.i.i.i.i.i, ptr nonnull @.str.1, i64 74, ptr nonnull @"__func__._ZZN12lldb_private13HostInfoLinux17GetDistributionIdEvENK3$_0clEv", i64 10, ptr noundef nonnull @.str.8, ptr noundef %i.ae) #13
  br label %bb.an

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.c, i8 0, i64 256, i1 false)
  %i.af = call ptr @fgets(ptr noundef nonnull %i.c, i32 noundef 255, ptr noundef nonnull %i.ad)
  %.not39.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not39.i.i.i.i.i, label %bb.ak, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %.not32.i.i.i.i.i, label %bb.n, label %.thread.i.i.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.ag = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) @.str.10) #17
  %.not40.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not40.i.i.i.i.i, label %bb.am, label %bb.o

.thread.i.i.i.i.i:                                ; preds = %bb.m
  call void (ptr, ptr, i64, ptr, i64, ptr, ...) @_ZN12lldb_private3Log7FormatfEN4llvm9StringRefES2_PKcz(ptr noundef nonnull align 8 dereferenceable(104) %.0.i.i31.i.i.i.i.i, ptr nonnull @.str.1, i64 74, ptr nonnull @"__func__._ZZN12lldb_private13HostInfoLinux17GetDistributionIdEvENK3$_0clEv", i64 10, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.c) #13
  %i.ah = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) @.str.10) #17
  %.not4033.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not4033.i.i.i.i.i, label %bb.aj, label %bb.o

bb.o:                                             ; preds = %.thread.i.i.i.i.i, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  store ptr %i.k, ptr %1, align 8, !tbaa !11
  %i.ai = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #13 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 %i.ai, ptr %i.a, align 8, !tbaa !50
  %i.aj = icmp ugt i64 %i.ai, 15
  br i1 %i.aj, label %bb.p, label %._crit_edge.i.i41.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.ak = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #13 ; 2 uses
  store ptr %i.ak, ptr %1, align 8, !tbaa !17
  %i.al = load i64, ptr %i.a, align 8, !tbaa !50
  store i64 %i.al, ptr %i.k, align 8, !tbaa !12
  br label %._crit_edge.i.i41.i.i.i.i.i

._crit_edge.i.i41.i.i.i.i.i:                      ; preds = %bb.p, %bb.o
  %i.am = phi ptr [ %i.ak, %bb.p ], [ %i.k, %bb.o ] ; 2 uses
  switch i64 %i.ai, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit42.i.i.i.i.i
  ]

bb.q:                                             ; preds = %._crit_edge.i.i41.i.i.i.i.i
  %i.an = load i8, ptr %i.j, align 16, !tbaa !12
  store i8 %i.an, ptr %i.am, align 1, !tbaa !12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit42.i.i.i.i.i

bb.r:                                             ; preds = %._crit_edge.i.i41.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.am, ptr nonnull align 16 %i.j, i64 %i.ai, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit42.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit42.i.i.i.i.i: ; preds = %bb.r, %bb.q, %._crit_edge.i.i41.i.i.i.i.i
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !50  ; 2 uses
  store i64 %i.ao, ptr %i.l, align 8, !tbaa !18
  %i.ap = load ptr, ptr %1, align 8, !tbaa !17
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  store i8 0, ptr %i.aq, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.ar = load ptr, ptr %1, align 8, !tbaa !17    ; 7 uses
  %i.as = ptrtoaddr ptr %i.ar to i64              ; 2 uses
  %i.at = load i64, ptr %i.l, align 8, !tbaa !18  ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.at ; 6 uses
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ashr i64 %i.at, 2                       ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, 0
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit42.i.i.i.i.i
  %i.ay = and i64 %i.at, -4
  %scevgep.i.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.ar, i64 %i.ay
  br label %bb.s

bb.s:                                             ; preds = %bb.w, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.052.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.bl, %bb.w ] ; 2 uses
  %.sroa.032.051.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.bk, %bb.w ] ; 9 uses
  %i.az = load i8, ptr %.sroa.032.051.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !12
  %i.ba = icmp eq i8 %i.az, 10
  br i1 %i.ba, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops16_Iter_equals_valIKcEEET_SE_SE_T0_.exit.i.i.i.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i.i.i.i, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !12
  %i.bd = icmp eq i8 %i.bc, 10
  br i1 %i.bd, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops16_Iter_equals_valIKcEEET_SE_SE_T0_.exit.i.i.i.i.i.i.i.i.loopexit.split.loop.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i.i.i.i, i64 2
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !12
  %i.bg = icmp eq i8 %i.bf, 10
  br i1 %i.bg, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops16_Iter_equals_valIKcEEET_SE_SE_T0_.exit.i.i.i.i.i.i.i.i.loopexit.split.loop.exit21, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i.i.i.i, i64 3
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !12
  %i.bj = icmp eq i8 %i.bi, 10
  br i1 %i.bj, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops16_Iter_equals_valIKcEEET_SE_SE_T0_.exit.i.i.i.i.i.i.i.i.loopexit.split.loop.exit23, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i.i.i.i, i64 4
  %i.bl = add nsw i64 %.052.i.i.i.i.i.i.i.i.i.i, -1
  %i.bm = icmp sgt i64 %.052.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bm, label %bb.s, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, !llvm.loop !45

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit42.i.i.i.i.i
  %.sroa.032.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit42.i.i.i.i.i ], [ %scevgep.i.i.i.i.i.i.i.i.i.i, %bb.w ] ; 6 uses
  %.pre-phi.i.i.i.i.i.i.i.i.i.i = ptrtoint ptr %.sroa.032.0.lcssa.i.i.i.i.i.i.i.i.i.i to i64
  %i.bn = sub i64 %i.av, %.pre-phi.i.i.i.i.i.i.i.i.i.i
  switch i64 %i.bn, label %_ZN4llvm5eraseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEvRT_T0_.exit.i.i.i.i.i [
    i64 3, label %bb.x
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i.i.i.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i.i.i.i.i.i.i.i
  ]

bb.x:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.bo = load i8, ptr %.sroa.032.0.lcssa.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !12
  %i.bp = icmp eq i8 %i.bo, 10
  br i1 %i.bp, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops16_Iter_equals_valIKcEEET_SE_SE_T0_.exit.i.i.i.i.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i.i.i.i.i.i.i, i64 1
  br label %._crit_edge._crit_edge.i.i.i.i.i.i.i.i.i.i

end_hunk_0
begin_hunk_1_@"_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZN12lldb_private13HostInfoLinux17GetDistributionIdEvE3$_0JEEvRS_OT_DpOT0_EUlvE_EERS7_ENUlvE_8__invokeEv":bb.a
_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops16_Iter_equals_valIKcEEET_SE_SE_T0_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.s, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops16_Iter_equals_valIKcEEET_SE_SE_T0_.exit.i.i.i.i.i.i.i.i.loopexit.split.loop.exit, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops16_Iter_equals_valIKcEEET_SE_SE_T0_.exit.i.i.i.i.i.i.i.i.loopexit.split.loop.exit21, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops16_Iter_equals_valIKcEEET_SE_SE_T0_.exit.i.i.i.i.i.i.i.i.loopexit.split.loop.exit23, %._crit_edge._crit_edge57.i.i.i.i.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i.i.i.i.i, %bb.x
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i.i.i.i.i ], [ %spec.select.i.i.i.i.i.i.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i.i.i.i.i.i.i.i, %bb.x ], [ %i.by, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops16_Iter_equals_valIKcEEET_SE_SE_T0_.exit.i.i.i.i.i.i.i.i.loopexit.split.loop.exit23 ], [ %i.bx, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops16_Iter_equals_valIKcEEET_SE_SE_T0_.exit.i.i.i.i.i.i.i.i.loopexit.split.loop.exit21 ], [ %i.bw, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops16_Iter_equals_valIKcEEET_SE_SE_T0_.exit.i.i.i.i.i.i.i.i.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i.i.i.i.i.i.i.i, %bb.s ] ; 6 uses
  %i.bz = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i.i.i.i.i, %i.au
  %.sroa.07.026.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i.i.i.i.i, i64 1 ; 3 uses
  %.not27.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.07.026.i.i.i.i.i.i.i.i, %i.au
  %or.cond.i.i.i.i.i.i.i.i = select i1 %i.bz, i1 true, i1 %.not27.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %_ZN4llvm5eraseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEvRT_T0_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops16_Iter_equals_valIKcEEET_SE_SE_T0_.exit.i.i.i.i.i.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i.i.i.i.i37 = ptrtoaddr ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.ca = add i64 %i.at, 3
  %i.cb = add i64 %i.ca, %i.as
  %i.cc = sub i64 %i.cb, %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i.i.i.i.i37
  %i.cd = add i64 %i.at, -2
  %i.ce = add i64 %i.cd, %i.as
  %i.cf = sub i64 %i.ce, %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i.i.i.i.i37
  %xtraiter = and i64 %i.cc, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %bb.ab
  %.sroa.07.029.i.i.i.i.i.i.i.i.prol = phi ptr [ %.sroa.07.0.i.i.i.i.i.i.i.i.prol, %bb.ab ], [ %.sroa.07.026.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.013.028.i.i.i.i.i.i.i.i.prol = phi ptr [ %.sroa.013.1.i.i.i.i.i.i.i.i.prol, %bb.ab ], [ %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.ab ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ]
  %i.cg = load i8, ptr %.sroa.07.029.i.i.i.i.i.i.i.i.prol, align 1, !tbaa !12 ; 2 uses
  %i.ch = icmp eq i8 %i.cg, 10
  br i1 %i.ch, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol
  store i8 %i.cg, ptr %.sroa.013.028.i.i.i.i.i.i.i.i.prol, align 1, !tbaa !12
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.013.028.i.i.i.i.i.i.i.i.prol, i64 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.sroa.013.1.i.i.i.i.i.i.i.i.prol = phi ptr [ %.sroa.013.028.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %i.ci, %bb.aa ] ; 3 uses
  %.sroa.07.0.i.i.i.i.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.sroa.07.029.i.i.i.i.i.i.i.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !46

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %bb.ab, %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %.sroa.013.1.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.013.1.i.i.i.i.i.i.i.i.prol, %bb.ab ]
  %.sroa.07.029.i.i.i.i.i.i.i.i.unr = phi ptr [ %.sroa.07.026.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.07.0.i.i.i.i.i.i.i.i.prol, %bb.ab ]
  %.sroa.013.028.i.i.i.i.i.i.i.i.unr = phi ptr [ %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.013.1.i.i.i.i.i.i.i.i.prol, %bb.ab ]
  %i.cj = icmp ult i64 %i.cf, 3
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %bb.ag
  %.sroa.07.029.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.07.0.i.i.i.i.i.i.i.i.3, %bb.ag ], [ %.sroa.07.029.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.013.028.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.013.1.i.i.i.i.i.i.i.i.3, %bb.ag ], [ %.sroa.013.028.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %i.ck = load i8, ptr %.sroa.07.029.i.i.i.i.i.i.i.i, align 1, !tbaa !12 ; 2 uses
  %i.cl = icmp eq i8 %i.ck, 10
  br i1 %i.cl, label %.lr.ph.i.i.i.i.i.i.i.i.1, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  store i8 %i.ck, ptr %.sroa.013.028.i.i.i.i.i.i.i.i, align 1, !tbaa !12
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.013.028.i.i.i.i.i.i.i.i, i64 1
  br label %.lr.ph.i.i.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.i.i.1:                         ; preds = %bb.ac, %.lr.ph.i.i.i.i.i.i.i.i
  %.sroa.013.1.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.013.028.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.cm, %bb.ac ] ; 3 uses
  %.sroa.07.0.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.029.i.i.i.i.i.i.i.i, i64 1
  %i.cn = load i8, ptr %.sroa.07.0.i.i.i.i.i.i.i.i, align 1, !tbaa !12 ; 2 uses
  %i.co = icmp eq i8 %i.cn, 10
  br i1 %i.co, label %.lr.ph.i.i.i.i.i.i.i.i.2, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.1
  store i8 %i.cn, ptr %.sroa.013.1.i.i.i.i.i.i.i.i, align 1, !tbaa !12
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.013.1.i.i.i.i.i.i.i.i, i64 1
  br label %.lr.ph.i.i.i.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.i.i.i.2:                         ; preds = %bb.ad, %.lr.ph.i.i.i.i.i.i.i.i.1
  %.sroa.013.1.i.i.i.i.i.i.i.i.1 = phi ptr [ %.sroa.013.1.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.1 ], [ %i.cp, %bb.ad ] ; 3 uses
  %.sroa.07.0.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.07.029.i.i.i.i.i.i.i.i, i64 2
  %i.cq = load i8, ptr %.sroa.07.0.i.i.i.i.i.i.i.i.1, align 1, !tbaa !12 ; 2 uses
  %i.cr = icmp eq i8 %i.cq, 10
  br i1 %i.cr, label %.lr.ph.i.i.i.i.i.i.i.i.3, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.2
  store i8 %i.cq, ptr %.sroa.013.1.i.i.i.i.i.i.i.i.1, align 1, !tbaa !12
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.013.1.i.i.i.i.i.i.i.i.1, i64 1
  br label %.lr.ph.i.i.i.i.i.i.i.i.3

.lr.ph.i.i.i.i.i.i.i.i.3:                         ; preds = %bb.ae, %.lr.ph.i.i.i.i.i.i.i.i.2
  %.sroa.013.1.i.i.i.i.i.i.i.i.2 = phi ptr [ %.sroa.013.1.i.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.i.2 ], [ %i.cs, %bb.ae ] ; 3 uses
  %.sroa.07.0.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.07.029.i.i.i.i.i.i.i.i, i64 3
  %i.ct = load i8, ptr %.sroa.07.0.i.i.i.i.i.i.i.i.2, align 1, !tbaa !12 ; 2 uses
  %i.cu = icmp eq i8 %i.ct, 10
  br i1 %i.cu, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.3
  store i8 %i.ct, ptr %.sroa.013.1.i.i.i.i.i.i.i.i.2, align 1, !tbaa !12
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.013.1.i.i.i.i.i.i.i.i.2, i64 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.lr.ph.i.i.i.i.i.i.i.i.3
  %.sroa.013.1.i.i.i.i.i.i.i.i.3 = phi ptr [ %.sroa.013.1.i.i.i.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.i.i.i.3 ], [ %i.cv, %bb.af ] ; 2 uses
  %.sroa.07.0.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.07.029.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.3 = icmp eq ptr %.sroa.07.0.i.i.i.i.i.i.i.i.3, %i.au
  br i1 %.not.i.i.i.i.i.i.i.i.3, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.loopexit.i.i.i.i.i.i: ; preds = %bb.ag, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit
  %.sroa.013.1.i.i.i.i.i.i.i.i.lcssa = phi ptr [ %.sroa.013.1.i.i.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ], [ %.sroa.013.1.i.i.i.i.i.i.i.i.3, %bb.ag ]
  %.pre.i.i.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !17
  br label %_ZN4llvm5eraseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEvRT_T0_.exit.i.i.i.i.i

_ZN4llvm5eraseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEvRT_T0_.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.loopexit.i.i.i.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops16_Iter_equals_valIKcEEET_SE_SE_T0_.exit.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.cw = phi ptr [ %i.ar, %._crit_edge.i.i.i.i.i.i.i.i.i.i ], [ %i.ar, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops16_Iter_equals_valIKcEEET_SE_SE_T0_.exit.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.loopexit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.013.2.i.i.i.i.i.i.i.i = phi ptr [ %i.au, %._crit_edge.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i.i.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops16_Iter_equals_valIKcEEET_SE_SE_T0_.exit.i.i.i.i.i.i.i.i ], [ %.sroa.013.1.i.i.i.i.i.i.i.i.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.loopexit.i.i.i.i.i.i ]
  %i.cx = ptrtoint ptr %.sroa.013.2.i.i.i.i.i.i.i.i to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy                    ; 2 uses
  store i64 %i.cz, ptr %i.l, align 8, !tbaa !18
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cz
  store i8 0, ptr %i.da, align 1, !tbaa !12
  %i.db = load ptr, ptr %1, align 8, !tbaa !17    ; 2 uses
  %i.dc = load i64, ptr %i.l, align 8, !tbaa !18  ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dc
  %.not6.i.i.i.i.i.i = icmp samesign eq i64 %i.dc, 0
  br i1 %.not6.i.i.i.i.i.i, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZZN12lldb_private13HostInfoLinux17GetDistributionIdEvENK3$_0clEvEUlcE_ET0_T_SF_SE_T1_.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN4llvm5eraseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEvRT_T0_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.sroa.0.08.i.i.i.i.i.i = phi ptr [ %i.dk, %.lr.ph.i.i.i.i.i.i ], [ %i.db, %_ZN4llvm5eraseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEvRT_T0_.exit.i.i.i.i.i ] ; 3 uses
  %i.de = load i8, ptr %.sroa.0.08.i.i.i.i.i.i, align 1, !tbaa !12
  %i.df = sext i8 %i.de to i32                    ; 2 uses
  %i.dg = call i32 @isspace(i32 noundef %i.df) #17
  %.not.i.i43.i.i.i.i.i = icmp eq i32 %i.dg, 0
  %i.dh = select i1 %.not.i.i43.i.i.i.i.i, i32 %i.df, i32 95
  %i.di = call noundef i32 @tolower(i32 noundef %i.dh) #17
  %i.dj = trunc i32 %i.di to i8
  store i8 %i.dj, ptr %.sroa.0.08.i.i.i.i.i.i, align 1, !tbaa !12
  %i.dk = getelementptr i8, ptr %.sroa.0.08.i.i.i.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dk, %i.dd
  br i1 %.not.i.i.i.i.i.i, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZZN12lldb_private13HostInfoLinux17GetDistributionIdEvENK3$_0clEvEUlcE_ET0_T_SF_SE_T1_.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i, !llvm.loop !48

"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZZN12lldb_private13HostInfoLinux17GetDistributionIdEvENK3$_0clEvEUlcE_ET0_T_SF_SE_T1_.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN4llvm5eraseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEvRT_T0_.exit.i.i.i.i.i
  %i.dl = load ptr, ptr @_ZL8g_fields, align 8, !tbaa !14
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.dm, ptr noundef nonnull align 8 dereferenceable(32) %1) #13
  br i1 %.not32.i.i.i.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZZN12lldb_private13HostInfoLinux17GetDistributionIdEvENK3$_0clEvEUlcE_ET0_T_SF_SE_T1_.exit.i.i.i.i.i"
  %i.dn = load ptr, ptr @_ZL8g_fields, align 8, !tbaa !14
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !17
  call void (ptr, ptr, i64, ptr, i64, ptr, ...) @_ZN12lldb_private3Log7FormatfEN4llvm9StringRefES2_PKcz(ptr noundef nonnull align 8 dereferenceable(104) %.0.i.i31.i.i.i.i.i, ptr nonnull @.str.1, i64 74, ptr nonnull @"__func__._ZZN12lldb_private13HostInfoLinux17GetDistributionIdEvENK3$_0clEv", i64 10, ptr noundef nonnull @.str.11, ptr noundef %i.dp) #13
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZZN12lldb_private13HostInfoLinux17GetDistributionIdEvENK3$_0clEvEUlcE_ET0_T_SF_SE_T1_.exit.i.i.i.i.i"
  %i.dq = load ptr, ptr %1, align 8, !tbaa !17    ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.k
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.ai
  %i.ds = load i64, ptr %i.k, align 8, !tbaa !12
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.dt) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  br label %bb.am

bb.aj:                                            ; preds = %.thread.i.i.i.i.i
  call void (ptr, ptr, i64, ptr, i64, ptr, ...) @_ZN12lldb_private3Log7FormatfEN4llvm9StringRefES2_PKcz(ptr noundef nonnull align 8 dereferenceable(104) %.0.i.i31.i.i.i.i.i, ptr nonnull @.str.1, i64 74, ptr nonnull @"__func__._ZZN12lldb_private13HostInfoLinux17GetDistributionIdEvENK3$_0clEv", i64 10, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.c) #13
  br label %bb.am

bb.ak:                                            ; preds = %bb.l
  br i1 %.not32.i.i.i.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.du = load ptr, ptr %0, align 8, !tbaa !17
  call void (ptr, ptr, i64, ptr, i64, ptr, ...) @_ZN12lldb_private3Log7FormatfEN4llvm9StringRefES2_PKcz(ptr noundef nonnull align 8 dereferenceable(104) %.0.i.i31.i.i.i.i.i, ptr nonnull @.str.1, i64 74, ptr nonnull @"__func__._ZZN12lldb_private13HostInfoLinux17GetDistributionIdEvENK3$_0clEv", i64 10, ptr noundef nonnull @.str.13, ptr noundef %i.du) #13
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %bb.n
  %i.dv = call i32 @pclose(ptr noundef nonnull %i.ad) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.k, %bb.j
  %i.dw = load ptr, ptr %0, align 8, !tbaa !17    ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.h
  br i1 %i.dx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i45.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i.i.i.i.i: ; preds = %bb.an
  %i.dy = load i64, ptr %i.h, align 8, !tbaa !12
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.dz) #15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i45.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i45.i.i.i.i.i: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #13
  %or.cond.i.i.i.i.i = and i1 %.old46.i.i.i.i.i, %.not38.not.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %.backedge.i.i.i.i.i.backedge, label %"_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZN12lldb_private13HostInfoLinux17GetDistributionIdEvE3$_0JEEvRS_OT_DpOT0_EUlvE_EERS7_ENKUlvE_clEv.exit"

.thread35.i.i.i.i.i:                              ; preds = %bb.d, %bb.c
  br i1 %.old46.i.i.i.i.i, label %.backedge.i.i.i.i.i.backedge, label %"_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZN12lldb_private13HostInfoLinux17GetDistributionIdEvE3$_0JEEvRS_OT_DpOT0_EUlvE_EERS7_ENKUlvE_clEv.exit"

.backedge.i.i.i.i.i.backedge:                     ; preds = %.thread35.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i45.i.i.i.i.i
  %.be.i.i.i.i.i = add nuw nsw i64 %.045.i.i.i.i.i, 1
  br label %.backedge.i.i.i.i.i.a, !llvm.loop !49

"_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZN12lldb_private13HostInfoLinux17GetDistributionIdEvE3$_0JEEvRS_OT_DpOT0_EUlvE_EERS7_ENKUlvE_clEv.exit": ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i45.i.i.i.i.i, %.thread35.i.i.i.i.i
  ret void
}

declare void @_ZN12lldb_private3Log7FormatfEN4llvm9StringRefES2_PKcz(ptr noundef nonnull align 8 dereferenceable(104), ptr, i64, ptr, i64, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @access(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noalias noundef ptr @popen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @pclose(ptr noundef captures(none)) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZN12lldb_private13LogChannelForINS_7LLDBLogEEERNS_3Log7ChannelEv() local_unnamed_addr #1

declare noundef i64 @_ZNK12lldb_private3Log7GetMaskEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #1

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) local_unnamed_addr #12

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree nounwind }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { builtin nounwind allocsize(0) }
attributes #15 = { builtin nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!4, !4, i64 0}
!13 = !{!"p1 _ZTSN12_GLOBAL__N_119HostInfoLinuxFieldsE", !8, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"long", !4, i64 0}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0, !15, i64 8, !4, i64 16}
!17 = !{!16, !9, i64 0}
!18 = !{!16, !15, i64 8}
!19 = !{!9, !9, i64 0}
!20 = !{!8, !8, i64 0}
!21 = !{!"branch_weights", i32 1, i32 1048575}
!22 = !{!"_ZTSN12lldb_private8FileSpec8AbsoluteE", !4, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"_ZTSN4llvm3sys4path5StyleE", !4, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{i64 0, i64 8, !19, i64 8, i64 8, !19, i64 16, i64 1, !23, i64 20, i64 4, !25}
!27 = !{!"_ZTSN4llvm6Triple8ArchTypeE", !4, i64 0}
!28 = !{!"_ZTSN4llvm6Triple11SubArchTypeE", !4, i64 0}
!29 = !{!"_ZTSN4llvm6Triple10VendorTypeE", !4, i64 0}
!30 = !{!"_ZTSN4llvm6Triple6OSTypeE", !4, i64 0}
!31 = !{!"_ZTSN4llvm6Triple15EnvironmentTypeE", !4, i64 0}
!32 = !{!"_ZTSN4llvm6Triple16ObjectFormatTypeE", !4, i64 0}
!33 = !{!"_ZTSN4llvm6TripleE", !16, i64 0, !27, i64 32, !28, i64 36, !29, i64 40, !30, i64 44, !31, i64 48, !32, i64 52}
!34 = !{!"_ZTSN12lldb_private8ArchSpec4CoreE", !4, i64 0}
!35 = !{!"_ZTSN4lldb9ByteOrderE", !4, i64 0}
!36 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !8, i64 0}
!37 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !36, i64 0, !36, i64 8, !36, i64 16}
!38 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !37, i64 0}
!39 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !38, i64 0}
!40 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !39, i64 0}
!41 = !{!"_ZTSN4llvm17SubtargetFeaturesE", !40, i64 0}
!42 = !{!"_ZTSN12lldb_private8ArchSpecE", !33, i64 0, !34, i64 56, !35, i64 60, !5, i64 64, !41, i64 72}
!43 = !{!42, !34, i64 56}
!44 = !{!33, !29, i64 40}
!45 = distinct !{!45, !51}
!46 = distinct !{!46, !52}
!47 = distinct !{!47, !51}
!48 = distinct !{!48, !51}
!49 = distinct !{!49, !51}
!50 = !{!15, !15, i64 0}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"llvm.loop.unroll.disable"}
end_hunk_1
