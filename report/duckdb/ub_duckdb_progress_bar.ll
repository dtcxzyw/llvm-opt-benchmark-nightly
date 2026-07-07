inline.NumInlined: 1084
inline.NumDeleted: 380
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumUnrolled: 23
begin_hunk_0_@llvm.lifetime.end.p0
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb11ProgressBar25DefaultProgressBarDisplayEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #25, !noalias !49 ; 13 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb26TerminalProgressBarDisplayE, i64 16), ptr %i.a, align 8, !tbaa !52, !noalias !49
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 38, ptr %i.b, align 8, !tbaa !54, !noalias !49
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @.str.13, ptr %i.c, align 8, !tbaa !57, !noalias !49
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_ZZN6duckdb10UnicodeBar13PartialBlocksEvE14PARTIAL_BLOCKS, ptr %i.d, align 8, !tbaa !58, !noalias !49
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 8, ptr %i.e, align 8, !tbaa !59, !noalias !49
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @.str.29, ptr %i.f, align 8, !tbaa !60, !noalias !49
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr @.str.21, ptr %i.g, align 8, !tbaa !61, !noalias !49
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @.str.22, ptr %i.h, align 8, !tbaa !62, !noalias !49
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  invoke void @_ZN6duckdb21UnscentedKalmanFilterC1Ev(ptr noundef nonnull align 8 dereferenceable(184) %i.i)
          to label %_ZNSt10unique_ptrIN6duckdb26TerminalProgressBarDisplayESt14default_deleteIS1_EED2Ev.exit unwind label %bb.b, !noalias !49

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #24, !noalias !49
  resume { ptr, i32 } %i.j

_ZNSt10unique_ptrIN6duckdb26TerminalProgressBarDisplayESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 248 ; 2 uses
  store i64 0, ptr %i.k, align 8, !noalias !49
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 256 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 -1, i64 16, i1 false), !noalias !49
  %i.m = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #22, !noalias !49
  store i64 %i.m, ptr %i.k, align 8, !tbaa !63, !noalias !49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 -1, i64 16, i1 false), !noalias !49
  store ptr %i.a, ptr %0, align 8, !tbaa !64
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb11ProgressBarC2ERNS_8ExecutorEmSt8functionIFNS_10unique_ptrINS_18ProgressBarDisplayESt14default_deleteIS5_ELb1EEEvEE(ptr noundef nonnull align 8 dereferenceable(74) initializes((0, 26), (32, 40)) %0, ptr noundef nonnull align 8 dereferenceable(424) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::unique_ptr", align 8 ; 7 uses
  store ptr %1, ptr %0, align 8, !tbaa !67
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.a, i8 0, i64 18, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %2, ptr %i.b, align 8, !tbaa !69
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN6duckdb13QueryProgressC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  store ptr null, ptr %i.d, align 8, !tbaa !64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 1, ptr %i.e, align 8, !tbaa !85
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 0, ptr %i.f, align 1, !tbaa !86
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !87
  %.not.i.i.not = icmp eq ptr %i.h, null
  br i1 %.not.i.i.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !88, !noalias !89
  invoke void %i.j(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNKSt8functionIFN6duckdb10unique_ptrINS0_18ProgressBarDisplayESt14default_deleteIS2_ELb1EEEvEEclEv.exit unwind label %bb.c, !inline_history !92

_ZNKSt8functionIFN6duckdb10unique_ptrINS0_18ProgressBarDisplayESt14default_deleteIS2_ELb1EEEvEEclEv.exit: ; preds = %bb.b
  %i.k = load ptr, ptr %4, align 8, !tbaa !93
  store ptr null, ptr %4, align 8, !tbaa !93
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !93   ; 3 uses
  store ptr %i.k, ptr %i.d, align 8, !tbaa !93
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb18ProgressBarDisplayESt14default_deleteIS1_EED2Ev.exit, label %_ZN6duckdb10unique_ptrINS_18ProgressBarDisplayESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_18ProgressBarDisplayESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %_ZNKSt8functionIFN6duckdb10unique_ptrINS0_18ProgressBarDisplayESt14default_deleteIS2_ELb1EEEvEEclEv.exit
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !52
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.l) #22, !inline_history !94
  %.pr = load ptr, ptr %4, align 8, !tbaa !93     ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb18ProgressBarDisplayESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb18ProgressBarDisplayEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb18ProgressBarDisplayEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_18ProgressBarDisplayESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.p = load ptr, ptr %.pr, align 8, !tbaa !52
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.pr) #22, !inline_history !95
  br label %_ZNSt10unique_ptrIN6duckdb18ProgressBarDisplayESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18ProgressBarDisplayESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt8functionIFN6duckdb10unique_ptrINS0_18ProgressBarDisplayESt14default_deleteIS2_ELb1EEEvEEclEv.exit, %_ZN6duckdb10unique_ptrINS_18ProgressBarDisplayESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb18ProgressBarDisplayEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !93   ; 3 uses
  %.not.i6 = icmp eq ptr %i.t, null
  br i1 %.not.i6, label %_ZNSt10unique_ptrIN6duckdb18ProgressBarDisplayESt14default_deleteIS1_EED2Ev.exit8, label %_ZNKSt14default_deleteIN6duckdb18ProgressBarDisplayEEclEPS1_.exit.i7

_ZNKSt14default_deleteIN6duckdb18ProgressBarDisplayEEclEPS1_.exit.i7: ; preds = %bb.c
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !52
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.t) #22, !inline_history !95
  br label %_ZNSt10unique_ptrIN6duckdb18ProgressBarDisplayESt14default_deleteIS1_EED2Ev.exit8

_ZNSt10unique_ptrIN6duckdb18ProgressBarDisplayESt14default_deleteIS1_EED2Ev.exit8: ; preds = %bb.c, %_ZNKSt14default_deleteIN6duckdb18ProgressBarDisplayEEclEPS1_.exit.i7
  resume { ptr, i32 } %i.s

bb.d:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb18ProgressBarDisplayESt14default_deleteIS1_EED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb11ProgressBar24GetDetailedQueryProgressEv(ptr dead_on_unwind noalias writable sret(%"struct.duckdb::QueryProgress") align 8 %0, ptr noundef nonnull align 8 dereferenceable(74) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @_ZN6duckdb13QueryProgressC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6duckdb11ProgressBar5StartEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(74) initializes((8, 16), (24, 26)) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.b, align 8, !tbaa !96
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 1, ptr %i.c, align 1, !tbaa !97
  %i.d = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #22
  store i64 %i.d, ptr %i.a, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store atomic double -1.000000e+00, ptr %i.e seq_cst, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store atomic i64 0, ptr %i.f seq_cst, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store atomic i64 0, ptr %i.g seq_cst, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 1, ptr %i.h, align 8, !tbaa !85
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK6duckdb11ProgressBar12PrintEnabledEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(74) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93
  %i.c = icmp ne ptr %i.b, null
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZNK6duckdb11ProgressBar11ShouldPrintEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(74) %0, i1 noundef zeroext %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93
  %i.c = icmp ne ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load i8, ptr %i.d, align 8, !range !98
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %_ZNK6duckdb12BaseProfilerINSt6chrono3_V212steady_clockEE7ElapsedEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.i = load i8, ptr %i.h, align 1, !tbaa !97, !range !98, !noundef !99
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %_ZNK6duckdb12BaseProfilerINSt6chrono3_V212steady_clockEE7ElapsedEv.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i8, ptr %i.k, align 8, !tbaa !96, !range !98, !noundef !99
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !63
  br label %_ZNK6duckdb12BaseProfilerINSt6chrono3_V212steady_clockEE7ElapsedEv.exit

bb.e:                                             ; preds = %bb.c
  %i.p = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #22
  br label %_ZNK6duckdb12BaseProfilerINSt6chrono3_V212steady_clockEE7ElapsedEv.exit

_ZNK6duckdb12BaseProfilerINSt6chrono3_V212steady_clockEE7ElapsedEv.exit: ; preds = %bb.d, %bb.e
  %storemerge.i = phi i64 [ %i.o, %bb.d ], [ %i.p, %bb.e ]
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.g, align 8, !tbaa !63
  %i.q = sub nsw i64 %storemerge.i, %.sroa.0.0.copyload.i2.i.i
  %i.r = sitofp i64 %i.q to double
  %2 = fdiv double %i.r, 1.000000e+09
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %4 = load i64, ptr %3, align 8, !tbaa !69
  %5 = uitofp i64 %4 to double
  %6 = fdiv double %5, 1.000000e+03
  %i.s = fcmp ule double %2, %6                   ; 2 uses
  %brmerge = or i1 %1, %i.s
  %not. = xor i1 %i.s, true
  br i1 %brmerge, label %_ZNK6duckdb12BaseProfilerINSt6chrono3_V212steady_clockEE7ElapsedEv.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb12BaseProfilerINSt6chrono3_V212steady_clockEE7ElapsedEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load atomic double, ptr %i.t seq_cst, align 8
  %i.v = fcmp ogt double %i.u, -1.000000e+00
  br label %_ZNK6duckdb12BaseProfilerINSt6chrono3_V212steady_clockEE7ElapsedEv.exit.thread

_ZNK6duckdb12BaseProfilerINSt6chrono3_V212steady_clockEE7ElapsedEv.exit.thread: ; preds = %bb.b, %_ZNK6duckdb12BaseProfilerINSt6chrono3_V212steady_clockEE7ElapsedEv.exit, %bb.f, %bb.a
  %.1 = phi i1 [ %i.v, %bb.f ], [ false, %bb.a ], [ %not., %_ZNK6duckdb12BaseProfilerINSt6chrono3_V212steady_clockEE7ElapsedEv.exit ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb11ProgressBar6UpdateEb(ptr noundef nonnull align 8 dereferenceable(74) %0, i1 noundef zeroext %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"struct.duckdb::ProgressData", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !98
  %i.c = trunc nuw i8 %i.b to i1
  %or.cond = select i1 %1, i1 true, i1 %i.c
  br i1 %or.cond, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %2, i8 0, i64 17, i1 false)
  %i.d = load ptr, ptr %0, align 8, !tbaa !100, !nonnull !99, !align !101
  %i.e = call noundef i64 @_ZN6duckdb8Executor20GetPipelinesProgressERNS_12ProgressDataE(ptr noundef nonnull align 8 dereferenceable(424) %i.d, ptr noundef nonnull align 8 dereferenceable(17) %2)
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load i8, ptr %i.g, align 8, !tbaa !102, !range !98, !noundef !99
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load double, ptr %2, align 8, !tbaa !104 ; 4 uses
  %i.k = fcmp ult double %i.j, 0.000000e+00
  br i1 %i.k, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !105 ; 5 uses
  %i.n = fcmp ole double %i.j, %i.m
  %i.o = fcmp oge double %i.m, 0.000000e+00
  %or.cond17 = and i1 %i.n, %i.o
  br i1 %or.cond17, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.p = fcmp ogt double %i.m, 1.000000e+15
  br i1 %i.p, label %bb.g, label %_ZN6duckdb12ProgressData9NormalizeEd.exit

bb.g:                                             ; preds = %bb.f
  %i.q = fdiv double %i.j, %i.m
  %i.r = fmul double %i.q, 1.000000e+15           ; 2 uses
  store double %i.r, ptr %2, align 8, !tbaa !104
  store double 1.000000e+15, ptr %i.l, align 8, !tbaa !105
  br label %_ZN6duckdb12ProgressData9NormalizeEd.exit

_ZN6duckdb12ProgressData9NormalizeEd.exit:        ; preds = %bb.g, %bb.f
  %i.s = phi double [ %i.m, %bb.f ], [ 1.000000e+15, %bb.g ] ; 2 uses
  %i.t = phi double [ %i.j, %bb.f ], [ %i.r, %bb.g ] ; 2 uses
  %i.u = fptoui double %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  store atomic i64 %i.u, ptr %i.v seq_cst, align 8
  %i.w = fptoui double %i.s to i64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  store atomic i64 %i.w, ptr %i.x seq_cst, align 8
  %i.y = fdiv double %i.t, %i.s
  %i.z = fmul double %i.y, 1.000000e+02
  br label %.thread

bb.h:                                             ; preds = %bb.b
  br i1 %1, label %.thread, label %_ZN6duckdb11ProgressBar22FinishProgressBarPrintEv.exit

.thread:                                          ; preds = %bb.c, %bb.d, %bb.e, %_ZN6duckdb12ProgressData9NormalizeEd.exit, %bb.h
  %.015 = phi double [ 0.000000e+00, %bb.h ], [ %i.z, %_ZN6duckdb12ProgressData9NormalizeEd.exit ], [ 0.000000e+00, %bb.c ], [ 0.000000e+00, %bb.e ], [ 0.000000e+00, %bb.d ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.ab = load atomic double, ptr %i.aa seq_cst, align 8
  %i.ac = fcmp ogt double %.015, %i.ab
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread
  store atomic double %.015, ptr %i.aa seq_cst, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !93
  %i.af = icmp ne ptr %i.ae, null
  %i.ag = load i8, ptr %i.a, align 8, !range !98
  %i.ah = trunc nuw i8 %i.ag to i1
  %or.cond.i12 = select i1 %i.af, i1 %i.ah, i1 false
  br i1 %or.cond.i12, label %bb.k, label %_ZN6duckdb11ProgressBar22FinishProgressBarPrintEv.exit

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !97, !range !98, !noundef !99
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.l, label %_ZN6duckdb11ProgressBar22FinishProgressBarPrintEv.exit

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.an = load i8, ptr %i.am, align 8, !tbaa !96, !range !98, !noundef !99
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !63
  br label %_ZNK6duckdb12BaseProfilerINSt6chrono3_V212steady_clockEE7ElapsedEv.exit.i

bb.n:                                             ; preds = %bb.l
  %i.ar = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #22
  br label %_ZNK6duckdb12BaseProfilerINSt6chrono3_V212steady_clockEE7ElapsedEv.exit.i

_ZNK6duckdb12BaseProfilerINSt6chrono3_V212steady_clockEE7ElapsedEv.exit.i: ; preds = %bb.n, %bb.m
  %storemerge.i.i = phi i64 [ %i.aq, %bb.m ], [ %i.ar, %bb.n ]
  %.sroa.0.0.copyload.i2.i.i.i = load i64, ptr %i.ai, align 8, !tbaa !63
  %i.as = sub nsw i64 %storemerge.i.i, %.sroa.0.0.copyload.i2.i.i.i
  %i.at = sitofp i64 %i.as to double
  %3 = fdiv double %i.at, 1.000000e+09
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %5 = load i64, ptr %4, align 8, !tbaa !69
  %6 = uitofp i64 %5 to double
  %7 = fdiv double %6, 1.000000e+03
  %i.au = fcmp ule double %3, %7                  ; 2 uses
  %brmerge.i = or i1 %1, %i.au
  br i1 %brmerge.i, label %_ZNK6duckdb11ProgressBar11ShouldPrintEb.exit, label %bb.o

bb.o:                                             ; preds = %_ZNK6duckdb12BaseProfilerINSt6chrono3_V212steady_clockEE7ElapsedEv.exit.i
  %i.av = load atomic double, ptr %i.aa seq_cst, align 8
  %i.aw = fcmp ogt double %i.av, -1.000000e+00
  br i1 %i.aw, label %bb.p, label %_ZN6duckdb11ProgressBar22FinishProgressBarPrintEv.exit

_ZNK6duckdb11ProgressBar11ShouldPrintEb.exit:     ; preds = %_ZNK6duckdb12BaseProfilerINSt6chrono3_V212steady_clockEE7ElapsedEv.exit.i
  br i1 %i.au, label %_ZN6duckdb11ProgressBar22FinishProgressBarPrintEv.exit, label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNK6duckdb11ProgressBar11ShouldPrintEb.exit
  br i1 %1, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !86, !range !98, !noundef !99
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %_ZN6duckdb11ProgressBar22FinishProgressBarPrintEv.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = call noundef ptr @_ZNK6duckdb10unique_ptrINS_18ProgressBarDisplayESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ad) ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !52
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %i.ba), !inline_history !106
  store i8 1, ptr %i.ax, align 1, !tbaa !86
  %i.be = load atomic double, ptr %i.aa seq_cst, align 8
  %i.bf = fcmp oeq double %i.be, 0.000000e+00
  br i1 %i.bf, label %bb.s, label %_ZN6duckdb11ProgressBar22FinishProgressBarPrintEv.exit

bb.s:                                             ; preds = %bb.r
  store atomic double -1.000000e+00, ptr %i.aa seq_cst, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48
  store atomic i64 0, ptr %i.bg seq_cst, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 56
  store atomic i64 0, ptr %i.bh seq_cst, align 8
  br label %_ZN6duckdb11ProgressBar22FinishProgressBarPrintEv.exit

bb.t:                                             ; preds = %bb.p
  %i.bi = load atomic double, ptr %i.aa seq_cst, align 8
  %i.bj = call noundef ptr @_ZNK6duckdb10unique_ptrINS_18ProgressBarDisplayESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ad) ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !52
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, double noundef %i.bi), !inline_history !107
  br label %_ZN6duckdb11ProgressBar22FinishProgressBarPrintEv.exit

_ZN6duckdb11ProgressBar22FinishProgressBarPrintEv.exit: ; preds = %bb.k, %bb.j, %bb.s, %bb.r, %bb.q, %bb.o, %_ZNK6duckdb11ProgressBar11ShouldPrintEb.exit, %bb.t, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.u

bb.u:                                             ; preds = %bb.a, %_ZN6duckdb11ProgressBar22FinishProgressBarPrintEv.exit
  ret void
}

declare noundef i64 @_ZN6duckdb8Executor20GetPipelinesProgressERNS_12ProgressDataE(ptr noundef nonnull align 8 dereferenceable(424), ptr noundef nonnull align 8 dereferenceable(17)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb11ProgressBar22FinishProgressBarPrintEv(ptr noundef nonnull align 8 dereferenceable(74) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !86, !range !98, !noundef !99
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_18ProgressBarDisplayESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  store i8 1, ptr %i.a, align 1, !tbaa !86
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = load atomic double, ptr %i.i seq_cst, align 8
  %i.k = fcmp oeq double %i.j, 0.000000e+00
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store atomic double -1.000000e+00, ptr %i.i seq_cst, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store atomic i64 0, ptr %i.l seq_cst, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  store atomic i64 0, ptr %i.m seq_cst, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb11ProgressBar13PrintProgressEd(ptr noundef nonnull align 8 dereferenceable(74) %0, double noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_18ProgressBarDisplayESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, double noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_18ProgressBarDisplayESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !93     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_18ProgressBarDisplayESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !108

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.30, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !39     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #22
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_18ProgressBarDisplayESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_ZN6duckdb26TerminalProgressBarDisplay19NormalizePercentageEd(double noundef %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = fcmp ogt double %0, 1.000000e+02
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp olt double %0, 0.000000e+00
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = fptosi double %0 to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.c, %bb.c ], [ 100, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb26TerminalProgressBarDisplay9FormatETAB5cxx11Edb(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, double noundef %1, i1 noundef zeroext %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.122", align 8   ; 9 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::vector.122", align 8   ; 9 uses
  %i.f = alloca i32, align 4                      ; 4 uses
end_hunk_0
