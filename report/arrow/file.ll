inline.NumInlined: 2014
inline.NumDeleted: 789
begin_hunk_0_@_ZN5arrow2io12ReadableFile4OpenEiPNS_10MemoryPoolE:bb.a
  %5 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #30 ; 3 uses
  invoke void @_ZN5arrow2io12ReadableFileC1EPNS_10MemoryPoolE(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %2)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @_ZNSt12__shared_ptrIN5arrow2io12ReadableFileELN9__gnu_cxx12_Lock_policyE2EEC2IS2_vEEPT_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.b = load ptr, ptr %3, align 16, !tbaa !59
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38
  invoke void @_ZN5arrow2io6OSFile12OpenReadableEi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(80) %i.d, i32 noundef %1)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.g

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b
  %i.e = load ptr, ptr %5, align 8, !tbaa !62     ; 2 uses
  store ptr %i.e, ptr %4, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.thread, label %bb.c, !prof !65

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow6ResultISt10shared_ptrINS_2io12ReadableFileEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #29
  %i.g = load ptr, ptr %4, align 8, !tbaa !62     ; 2 uses
  %.not.i9 = icmp eq ptr %i.g, null
  br i1 %.not.i9, label %bb.h, label %bb.d, !prof !65

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !66, !range !75, !noundef !76
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #29
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #31
  br label %bb.o

bb.g:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @_ZNSt12__shared_ptrIN5arrow2io12ReadableFileELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #29
  br label %bb.o

.thread:                                          ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  store ptr null, ptr %0, align 8, !tbaa !62
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load <2 x ptr>, ptr %3, align 16, !tbaa !77
  store <2 x ptr> %i.n, ptr %i.m, align 8, !tbaa !77
  br label %_ZNSt12__shared_ptrIN5arrow2io12ReadableFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !39 ; 8 uses
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow2io12ReadableFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 4 uses
  %i.p = load atomic i64, ptr %i.o acquire, align 8 ; 2 uses
  %i.q = icmp eq i64 %i.p, 4294967297
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  br i1 %i.q, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.o, align 8, !tbaa !42
  %i.s = getelementptr inbounds nuw i8, ptr %.pre, i64 12
  store i32 0, ptr %i.s, align 4, !tbaa !44
  %i.t = load ptr, ptr %.pre, align 8, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #29, !inline_history !78
  %i.w = load ptr, ptr %.pre, align 8, !tbaa !7
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #29, !inline_history !78
  br label %_ZNSt12__shared_ptrIN5arrow2io12ReadableFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.o, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ab = atomicrmw volatile add ptr %i.o, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.r, %bb.l ], [ %i.ab, %bb.m ]
  %i.ac = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ac, label %bb.n, label %_ZNSt12__shared_ptrIN5arrow2io12ReadableFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !47

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #29
  br label %_ZNSt12__shared_ptrIN5arrow2io12ReadableFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow2io12ReadableFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.thread, %bb.h, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret void

bb.o:                                             ; preds = %bb.g, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %i.l, %bb.g ], [ %i.k, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io12ReadableFile7DoCloseEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  tail call void @_ZN5arrow8internal14FileDescriptor5CloseEv(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define noundef zeroext i1 @_ZNK5arrow2io12ReadableFile6closedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load atomic i32, ptr %i.c seq_cst, align 4
  %.not = icmp eq i32 %i.d, -1
  ret i1 %.not
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define noundef zeroext i1 @_ZTv0_n64_NK5arrow2io12ReadableFile6closedEv(ptr nofree noundef readonly captures(none) %0) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -64
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.h = load atomic i32, ptr %i.g seq_cst, align 4
  %.not.i = icmp eq i32 %i.h, -1
  ret i1 %.not.i
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io12ReadableFile8WillNeedERKSt6vectorINS0_9ReadRangeESaIS3_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38
  tail call void @_ZN5arrow2io12ReadableFile16ReadableFileImpl8WillNeedERKSt6vectorINS0_9ReadRangeESaIS4_EE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5arrow2io12ReadableFile16ReadableFileImpl8WillNeedERKSt6vectorINS0_9ReadRangeESaIS4_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.c = load atomic i32, ptr %i.b seq_cst, align 8, !noalias !81
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6StatusD2Ev.exit.thread

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %_ZN5arrow6StatusD2Ev.exit44

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  call void @_ZN5arrow6Status8FromArgsIJRA33_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(33) @.str.8)
  %.pr = load ptr, ptr %3, align 8, !tbaa !62     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.e = icmp eq ptr %.pr, null
  br i1 %i.e, label %_ZN5arrow6StatusD2Ev.exit44, label %.critedge

_ZN5arrow6StatusD2Ev.exit44:                      ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.thread
  %i.f = load ptr, ptr %2, align 8, !tbaa !84     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !84   ; 2 uses
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %.critedge.sink.split, label %_ZN5arrow6StatusD2Ev.exit46

_ZN5arrow6StatusD2Ev.exit46:                      ; preds = %_ZN5arrow6StatusD2Ev.exit44, %.critedge38
  %.sroa.057.062 = phi ptr [ %i.t, %.critedge38 ], [ %i.f, %_ZN5arrow6StatusD2Ev.exit44 ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.057.062) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.j = load i64, ptr %.sroa.057.062, align 8, !tbaa !86
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.057.062, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !88
  call void @_ZN5arrow2io8internal13ValidateRangeEll(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, i64 noundef %i.j, i64 noundef %i.l)
  %i.m = load ptr, ptr %4, align 8, !tbaa !62     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN5arrow6StatusD2Ev.exit50, label %.critedge.sink.split

_ZN5arrow6StatusD2Ev.exit50:                      ; preds = %_ZN5arrow6StatusD2Ev.exit46
  %i.o = load atomic i32, ptr %i.b seq_cst, align 8
  %i.p = load i64, ptr %.sroa.057.062, align 8, !tbaa !86
  %i.q = load i64, ptr %i.k, align 8, !tbaa !88
  %i.r = call i32 @posix_fadvise(i32 noundef %i.o, i64 noundef %i.p, i64 noundef %i.q, i32 noundef 3) #29 ; 3 uses
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %.critedge38, label %bb.b

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit50
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.7, ptr %i.a, align 8, !tbaa !89, !noalias !90
  switch i32 %i.r, label %_ZN5arrow6StatusD2Ev.exit52.thread [
    i32 22, label %_ZN5arrow6StatusD2Ev.exit52
    i32 9, label %_ZN5arrow6StatusD2Ev.exit52
  ]

_ZN5arrow6StatusD2Ev.exit52.thread:               ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %.critedge38

_ZN5arrow6StatusD2Ev.exit52:                      ; preds = %bb.b, %bb.b
  call void @_ZN5arrow8internal16IOErrorFromErrnoIJRPKcEEENS_6StatusEiDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, i32 noundef %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pr61 = load ptr, ptr %5, align 8, !tbaa !62   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.s = icmp eq ptr %.pr61, null
  br i1 %i.s, label %.critedge38, label %.critedge.sink.split

.critedge38:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit52.thread, %_ZN5arrow6StatusD2Ev.exit52, %_ZN5arrow6StatusD2Ev.exit50
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.057.062, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.h
  br i1 %i.u, label %.critedge.sink.split, label %_ZN5arrow6StatusD2Ev.exit46

.critedge.sink.split:                             ; preds = %_ZN5arrow6StatusD2Ev.exit46, %_ZN5arrow6StatusD2Ev.exit52, %.critedge38, %_ZN5arrow6StatusD2Ev.exit44
  %.sink = phi ptr [ null, %_ZN5arrow6StatusD2Ev.exit44 ], [ %i.m, %_ZN5arrow6StatusD2Ev.exit46 ], [ %.pr61, %_ZN5arrow6StatusD2Ev.exit52 ], [ null, %.critedge38 ]
  store ptr %.sink, ptr %0, align 8
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow2io12ReadableFile6DoTellEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.28") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29, !noalias !93
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29, !noalias !93
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.d = load atomic i32, ptr %i.c seq_cst, align 4, !noalias !96
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %_ZN5arrow6StatusD2Ev.exit.i, label %_ZN5arrow6StatusD2Ev.exit.thread.i

_ZN5arrow6StatusD2Ev.exit.thread.i:               ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29, !noalias !93
  br label %bb.e

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.a
  call void @_ZN5arrow6Status8FromArgsIJRA33_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(33) @.str.8), !noalias !93
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !62, !noalias !93 ; 2 uses
  store ptr %.pr.i, ptr %2, align 8, !tbaa !62, !noalias !93
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29, !noalias !93
  %i.f = icmp eq ptr %.pr.i, null
  br i1 %i.f, label %bb.e, label %bb.b, !prof !99

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  call void @_ZN5arrow6ResultIlEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #29
  %.pr7.i = load ptr, ptr %2, align 8, !tbaa !62, !noalias !93 ; 2 uses
  %.not.i5.i = icmp eq ptr %.pr7.i, null
  br i1 %.not.i5.i, label %_ZN5arrow6StatusD2Ev.exit6.thread.i, label %bb.c, !prof !100

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.pr7.i, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !66, !range !75, !noundef !76
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN5arrow6StatusD2Ev.exit6.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #29
  br label %_ZN5arrow6StatusD2Ev.exit6.thread.i

_ZN5arrow6StatusD2Ev.exit6.thread.i:              ; preds = %bb.d, %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29, !noalias !93
  br label %_ZNK5arrow2io6OSFile4TellEv.exit

bb.e:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i, %_ZN5arrow6StatusD2Ev.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29, !noalias !93
  %i.j = load atomic i32, ptr %i.c seq_cst, align 4, !noalias !93
  call void @_ZN5arrow8internal8FileTellEi(ptr dead_on_unwind writable sret(%"class.arrow::Result.28") align 8 %0, i32 noundef %i.j)
  br label %_ZNK5arrow2io6OSFile4TellEv.exit

_ZNK5arrow2io6OSFile4TellEv.exit:                 ; preds = %_ZN5arrow6StatusD2Ev.exit6.thread.i, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io12ReadableFile6DoReadElPv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.28") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38
  tail call void @_ZN5arrow2io6OSFile4ReadElPv(ptr dead_on_unwind writable sret(%"class.arrow::Result.28") align 8 %0, ptr noundef nonnull align 8 dereferenceable(65) %i.b, i64 noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow2io6OSFile4ReadElPv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.28") align 8 %0, ptr noundef nonnull align 8 dereferenceable(65) %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.b = load atomic i32, ptr %i.a seq_cst, align 8, !noalias !101
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6StatusD2Ev.exit.thread

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.e

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  call void @_ZN5arrow6Status8FromArgsIJRA33_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(33) @.str.8)
  %.pr = load ptr, ptr %5, align 8, !tbaa !62     ; 2 uses
  store ptr %.pr, ptr %4, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.d = icmp eq ptr %.pr, null
  br i1 %i.d, label %bb.e, label %bb.b, !prof !99

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow6ResultIlEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #29
  %.pr20 = load ptr, ptr %4, align 8, !tbaa !62   ; 2 uses
  %.not.i12 = icmp eq ptr %.pr20, null
  br i1 %.not.i12, label %_ZN5arrow6StatusD2Ev.exit13.thread, label %bb.c, !prof !100

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.pr20, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !66, !range !75, !noundef !76
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN5arrow6StatusD2Ev.exit13.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #29
  br label %_ZN5arrow6StatusD2Ev.exit13.thread

_ZN5arrow6StatusD2Ev.exit13.thread:               ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.j

bb.e:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.i = load atomic i8, ptr %i.h seq_cst, align 8, !range !75, !noalias !104, !noundef !76
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN5arrow6StatusD2Ev.exit15, label %_ZN5arrow6StatusD2Ev.exit15.thread

_ZN5arrow6StatusD2Ev.exit15.thread:               ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.i

_ZN5arrow6StatusD2Ev.exit15:                      ; preds = %bb.e
  call void @_ZN5arrow6Status8FromArgsIJRA75_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(75) @.str.9)
  %.pr24 = load ptr, ptr %7, align 8, !tbaa !62   ; 2 uses
  store ptr %.pr24, ptr %6, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.k = icmp eq ptr %.pr24, null
  br i1 %i.k, label %bb.i, label %bb.f, !prof !107

bb.f:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit15
  call void @_ZN5arrow6ResultIlEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #29
  %.pr25 = load ptr, ptr %6, align 8, !tbaa !62   ; 2 uses
  %.not.i18 = icmp eq ptr %.pr25, null
  br i1 %.not.i18, label %_ZN5arrow6StatusD2Ev.exit19.thread, label %bb.g, !prof !100

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.pr25, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !66, !range !75, !noundef !76
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %_ZN5arrow6StatusD2Ev.exit19.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #29
end_hunk_0
begin_hunk_1_@_ZN5arrow2io16MemoryMappedFile6ReadAtEll:bb.a
bb.s:                                             ; preds = %_ZN5arrow2io16MemoryMappedFile9MemoryMap4dataEv.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN5arrow8internal12MemoryRegionESaIS2_EED2Ev.exit39

bb.t:                                             ; preds = %bb.n
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %9, align 8, !tbaa !308   ; 3 uses
  %.not.i.i.i38 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN5arrow8internal12MemoryRegionESaIS2_EED2Ev.exit39, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.az = load ptr, ptr %i.aj, align 8, !tbaa !311
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bc) #31
  br label %_ZNSt6vectorIN5arrow8internal12MemoryRegionESaIS2_EED2Ev.exit39

_ZNSt6vectorIN5arrow8internal12MemoryRegionESaIS2_EED2Ev.exit39: ; preds = %bb.u, %bb.t, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %i.aw, %bb.s ], [ %i.ax, %bb.t ], [ %i.ax, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.z

_ZN5arrow6StatusD2Ev.exit41:                      ; preds = %_ZNSt6vectorIN5arrow8internal12MemoryRegionESaIS2_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !203
  invoke void @_ZN5arrow2io16MemoryMappedFile9MemoryMap5SliceEll(ptr dead_on_unwind writable sret(%"class.arrow::Result.32") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %i.bd, i64 noundef %2, i64 noundef %i.z)
          to label %bb.v unwind label %bb.k

bb.v:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit35, %_ZN5arrow6StatusD2Ev.exit41, %bb.i
  %i.be = load ptr, ptr %6, align 8, !tbaa !62    ; 2 uses
  %.not.i.i42 = icmp eq ptr %i.be, null
  br i1 %.not.i.i42, label %_ZN5arrow6ResultIlED2Ev.exit, label %bb.w, !prof !65

bb.w:                                             ; preds = %bb.v
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !66, !range !75, !noundef !76
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %_ZN5arrow6ResultIlED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #29
  br label %_ZN5arrow6ResultIlED2Ev.exit

_ZN5arrow6ResultIlED2Ev.exit:                     ; preds = %bb.v, %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %.not.i.i43 = icmp eq ptr %.sroa.049.0, null
  %or.cond = or i1 %.not59.not, %.not.i.i43
  br i1 %or.cond, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZN5arrow6ResultIlED2Ev.exit
  %i.bi = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.049.0) #29 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.z:                                             ; preds = %_ZNSt6vectorIN5arrow8internal12MemoryRegionESaIS2_EED2Ev.exit39, %bb.k
  %.pn22 = phi { ptr, i32 } [ %i.x, %bb.k ], [ %.pn.pn, %_ZNSt6vectorIN5arrow8internal12MemoryRegionESaIS2_EED2Ev.exit39 ]
  %i.bj = load ptr, ptr %6, align 8, !tbaa !62    ; 2 uses
  %.not.i.i44 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i44, label %_ZN5arrow6ResultIlED2Ev.exit45, label %bb.aa, !prof !65

bb.aa:                                            ; preds = %bb.z
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !66, !range !75, !noundef !76
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %_ZN5arrow6ResultIlED2Ev.exit45, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #29
  br label %_ZN5arrow6ResultIlED2Ev.exit45

_ZN5arrow6ResultIlED2Ev.exit45:                   ; preds = %bb.z, %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN5arrow6ResultIlED2Ev.exit45, %bb.j
  %.pn22.pn = phi { ptr, i32 } [ %.pn22, %_ZN5arrow6ResultIlED2Ev.exit45 ], [ %i.w, %bb.j ]
  %.not.i.i46 = icmp eq ptr %.sroa.049.0, null
  %or.cond58 = or i1 %.not59.not, %.not.i.i46
  br i1 %or.cond58, label %_ZNSt11unique_lockISt5mutexED2Ev.exit47, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bn = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.049.0) #29 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit47

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %bb.y, %_ZN5arrow6ResultIlED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit29.thread
  ret void

_ZNSt11unique_lockISt5mutexED2Ev.exit47:          ; preds = %bb.ad, %bb.ac
  resume { ptr, i32 } %.pn22.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !62
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !62
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !47

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !79     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !46
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !79     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !46
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.m = load ptr, ptr %3, align 8, !tbaa !79     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !46
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #32
  unreachable
}

declare void @_ZN5arrow2io8internal17ValidateReadRangeElll(ptr dead_on_unwind writable sret(%"class.arrow::Result.28") align 8, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare void @_ZN5arrow8internal20MemoryAdviseWillNeedERKSt6vectorINS0_12MemoryRegionESaIS2_EE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5arrow2io16MemoryMappedFile9MemoryMap5SliceEll(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.32") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.std::shared_ptr.80", align 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load i64, ptr %i.c, align 8, !tbaa !238
  %i.e = sub nsw i64 %i.d, %2
  %.sroa.speculated24 = tail call i64 @llvm.smin.i64(i64 %i.e, i64 %3) ; 2 uses
  %i.f = icmp sgt i64 %.sroa.speculated24, 0
  %5 = tail call i64 @llvm.smax.i64(i64 %.sroa.speculated24, i64 0)
  br i1 %i.f, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !39   ; 2 uses
  %i.k = load <2 x ptr>, ptr %i.g, align 8, !tbaa !77
  store <2 x ptr> %i.k, ptr %4, align 16, !tbaa !77
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow6BufferEEC2INS0_2io16MemoryMappedFile9MemoryMap6RegionEvEERKS_IT_E.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %i.l, align 4, !tbaa !3
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2INS0_2io16MemoryMappedFile9MemoryMap6RegionEvEERKS_IT_E.exit

bb.e:                                             ; preds = %bb.c
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2INS0_2io16MemoryMappedFile9MemoryMap6RegionEvEERKS_IT_E.exit

_ZNSt10shared_ptrIN5arrow6BufferEEC2INS0_2io16MemoryMappedFile9MemoryMap6RegionEvEERKS_IT_E.exit: ; preds = %bb.b, %bb.d, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %2, ptr %i.a, align 8, !tbaa !129, !noalias !313
  store i64 %5, ptr %i.b, align 8, !tbaa !129, !noalias !313
  %i.q = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #30
          to label %.noexc unwind label %bb.l     ; 4 uses

.noexc:                                           ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2INS0_2io16MemoryMappedFile9MemoryMap6RegionEvEERKS_IT_E.exit
  invoke void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJSt10shared_ptrIS1_ERKlSA_EEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(96) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i, !noalias !316

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i: ; preds = %.noexc
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef 96) #31, !noalias !316
  br label %.body

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr null, ptr %0, align 8, !tbaa !62
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !319
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.q, ptr %i.u, align 8, !tbaa !39
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !39   ; 8 uses
  %.not.i.i6 = icmp eq ptr %i.v, null
  br i1 %.not.i.i6, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit10, label %bb.f

bb.f:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  %i.x = load atomic i64, ptr %i.w acquire, align 8 ; 2 uses
  %i.y = icmp eq i64 %i.x, 4294967297
  %i.z = trunc i64 %i.x to i32                    ; 2 uses
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.w, align 8, !tbaa !42
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 0, ptr %i.aa, align 4, !tbaa !44
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #29, !inline_history !320
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !7
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #29, !inline_history !320
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit10

bb.h:                                             ; preds = %bb.f
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i7 = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i7, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = add nsw i32 %i.z, -1
  store i32 %i.ai, ptr %i.w, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i8

bb.j:                                             ; preds = %bb.h
  %i.aj = atomicrmw volatile add ptr %i.w, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i8

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i8: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i9 = phi i32 [ %i.z, %bb.i ], [ %i.aj, %bb.j ]
  %i.ak = icmp eq i32 %.0.i.i.i.i9, 1
  br i1 %i.ak, label %bb.k, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit10, !prof !47

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i8
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #29
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit10

bb.l:                                             ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2INS0_2io16MemoryMappedFile9MemoryMap6RegionEvEERKS_IT_E.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body

common.resume:                                    ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, %.body
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.aq, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op

.body:                                            ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.al, %bb.l ], [ %i.r, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #29
  br label %common.resume

bb.m:                                             ; preds = %bb.a
  %i.am = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #30, !noalias !321 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i32 1, ptr %i.an, align 8, !tbaa !42, !noalias !326
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store i32 1, ptr %i.ao, align 4, !tbaa !44, !noalias !326
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.am, align 8, !tbaa !7, !noalias !326
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  invoke void @_ZN5arrow6BufferC2EPKhl(ptr noundef nonnull align 8 dereferenceable(80) %i.ap, ptr noundef null, i64 noundef 0)
          to label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit15 unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !326

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %bb.m
  %i.aq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef 96) #31, !noalias !326
  br label %common.resume

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit15: ; preds = %bb.m
  store ptr null, ptr %0, align 8, !tbaa !62
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !319
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.am, ptr %i.as, align 8, !tbaa !39
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit10

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit10: ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i8, %bb.g, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit15
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io16MemoryMappedFile6ReadAtEllPv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.28") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %7 = alloca %"class.arrow::Result.28", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !203
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !215, !noalias !327
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load atomic i32, ptr %i.e seq_cst, align 4, !noalias !327
  %.not.i.i = icmp eq i32 %i.f, -1
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6StatusD2Ev.exit.thread

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.e

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  call void @_ZN5arrow6Status8FromArgsIJRA33_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(33) @.str.8)
  %.pr = load ptr, ptr %6, align 8, !tbaa !62     ; 2 uses
  store ptr %.pr, ptr %5, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.g = icmp eq ptr %.pr, null
  br i1 %i.g, label %bb.e, label %bb.b, !prof !99

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow6ResultIlEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #29
  %.pr29 = load ptr, ptr %5, align 8, !tbaa !62   ; 2 uses
  %.not.i16 = icmp eq ptr %.pr29, null
  br i1 %.not.i16, label %_ZN5arrow6StatusD2Ev.exit17.thread, label %bb.c, !prof !100

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.pr29, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !66, !range !75, !noundef !76
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN5arrow6StatusD2Ev.exit17.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #29
  br label %_ZN5arrow6StatusD2Ev.exit17.thread

_ZN5arrow6StatusD2Ev.exit17.thread:               ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.e:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !203  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !215
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 52
  %i.o = load i32, ptr %i.n, align 4, !tbaa !305
  %.not35.not = icmp eq i32 %i.o, 0               ; 3 uses
  br i1 %.not35.not, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 80 ; 2 uses
  %i.q = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.p) #29 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i, label %._ZNSt11unique_lockISt5mutexEC2ERS0_.exit_crit_edge, label %bb.g

._ZNSt11unique_lockISt5mutexEC2ERS0_.exit_crit_edge: ; preds = %bb.f
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !203
  br label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_system_errori(i32 noundef %i.q) #33
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %._ZNSt11unique_lockISt5mutexEC2ERS0_.exit_crit_edge, %bb.e
  %i.r = phi ptr [ %.pre, %._ZNSt11unique_lockISt5mutexEC2ERS0_.exit_crit_edge ], [ %i.k, %bb.e ]
  %.sroa.0.0 = phi ptr [ %i.p, %._ZNSt11unique_lockISt5mutexEC2ERS0_.exit_crit_edge ], [ null, %bb.e ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.t = load i64, ptr %i.s, align 8, !tbaa !238
  invoke void @_ZN5arrow2io8internal17ValidateReadRangeElll(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.28") align 8 %7, i64 noundef %2, i64 noundef %3, i64 noundef %i.t)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.u = load ptr, ptr %7, align 8, !tbaa !62
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.j, label %bb.m, !prof !65

end_hunk_1
begin_hunk_2_@_ZN5arrow6FutureISt10shared_ptrINS_6BufferEEE12MakeFinishedENS_6ResultIS3_EE:bb.a
bb.j:                                             ; preds = %bb.h
  %i.y = atomicrmw volatile add ptr %i.l, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.o, %bb.i ], [ %i.y, %bb.j ]
  %i.z = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.z, label %bb.k, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, !prof !47

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #29
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i: ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.g, %bb.e
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !62   ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !138

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %bb.d
  %i.aa = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i ], [ %i.h, %bb.d ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !66, !range !75, !noundef !76
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #29
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, %bb.l
  ret void

bb.m:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2IS3_vEEONS0_IT_EE.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #29
  call void @_ZN5arrow6FutureISt10shared_ptrINS_6BufferEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #29
  resume { ptr, i32 } %i.ae
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io16MemoryMappedFile8WillNeedERKSt6vectorINS0_9ReadRangeESaIS3_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %4 = alloca %"class.std::vector.75", align 8    ; 12 uses
  %5 = alloca %"class.arrow::Result.28", align 8  ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !203
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !215, !noalias !346
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load atomic i32, ptr %i.e seq_cst, align 4, !noalias !346
  %.not.i.i = icmp eq i32 %i.f, -1
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6StatusD2Ev.exit40.thread

_ZN5arrow6StatusD2Ev.exit40.thread:               ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  call void @_ZN5arrow6Status8FromArgsIJRA33_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(33) @.str.8)
  %.pr = load ptr, ptr %3, align 8, !tbaa !62     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.g = icmp eq ptr %.pr, null
  br i1 %i.g, label %bb.b, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit40.thread, %_ZN5arrow6StatusD2Ev.exit
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !203  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !215
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 52
  %i.l = load i32, ptr %i.k, align 4, !tbaa !305
  %.not60.not = icmp eq i32 %i.l, 0               ; 3 uses
  br i1 %.not60.not, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 80 ; 2 uses
  %i.n = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.m) #29 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZSt20__throw_system_errori(i32 noundef %i.n) #33
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.b, %bb.c
  %.sroa.053.0 = phi ptr [ %i.m, %bb.c ], [ null, %bb.b ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !349  ; 2 uses
  %i.q = load ptr, ptr %2, align 8, !tbaa !351    ; 3 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s                       ; 4 uses
  %i.u = ashr exact i64 %i.t, 4                   ; 2 uses
  %i.v = icmp ugt i64 %i.u, 576460752303423487
  br i1 %i.v, label %bb.e, label %_ZNSt6vectorIN5arrow8internal12MemoryRegionESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

bb.e:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #33
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNSt6vectorIN5arrow8internal12MemoryRegionESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %.not.i.i.i.i = icmp eq ptr %i.p, %i.q
  br i1 %.not.i.i.i.i, label %.loopexit61, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN5arrow8internal12MemoryRegionESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #30
          to label %.noexc41 unwind label %bb.i   ; 13 uses

.noexc41:                                         ; preds = %bb.f
  store ptr %i.w, ptr %4, align 8, !tbaa !308
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.t
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.x, ptr %i.y, align 8, !tbaa !311
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 4 uses
  %i.aa = add nsw i64 %i.u, -1                    ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.lr.ph, label %bb.g

bb.g:                                             ; preds = %.noexc41
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.aa, 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx.i.i.i.i.i.i.i ; 3 uses
  %i.ad = add i64 %i.t, -32                       ; 2 uses
  %i.ae = lshr i64 %i.ad, 4
  %i.af = add nuw nsw i64 %i.ae, 1
  %xtraiter = and i64 %i.af, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.06.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %i.z, %bb.g ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %bb.g ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.i.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false), !tbaa.struct !352
  %i.ag = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !353

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %bb.g
  %.06.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.z, %bb.g ], [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.ah = icmp ult i64 %i.ad, 48
  br i1 %i.ah, label %.lr.ph, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false), !tbaa.struct !352
  %i.ai = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false), !tbaa.struct !352
  %i.aj = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false), !tbaa.struct !352
  %i.ak = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false), !tbaa.struct !352
  %i.al = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.3 = icmp eq ptr %i.al, %i.ac
  br i1 %.not.i.i.i.i.i.i.i.i.i.3, label %.lr.ph, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !355

.loopexit61:                                      ; preds = %_ZNSt6vectorIN5arrow8internal12MemoryRegionESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %.critedge

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %.noexc41
  %.0.i.i.i.i.i.ph = phi ptr [ %i.z, %.noexc41 ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.0.i.i.i.i.i.ph, ptr %i.am, align 8, !tbaa !312
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.j

bb.h:                                             ; preds = %bb.o, %bb.p
  %i.ao = phi ptr [ %i.bs, %bb.p ], [ null, %bb.o ]
  %i.ap = load i64, ptr %i.bb, align 8, !tbaa !86
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 %i.ap
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %.03063 ; 2 uses
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !77
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %i.bn, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !129
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.as = add nuw i64 %.03063, 1                  ; 2 uses
  %i.at = load ptr, ptr %i.o, align 8, !tbaa !349
  %i.au = load ptr, ptr %2, align 8, !tbaa !351   ; 2 uses
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = ashr exact i64 %i.ax, 4
  %.not = icmp ult i64 %i.as, %i.ay
  br i1 %.not, label %bb.j, label %.critedge, !llvm.loop !357

bb.i:                                             ; preds = %bb.f, %bb.e
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN5arrow8internal12MemoryRegionESaIS2_EED2Ev.exit50

bb.j:                                             ; preds = %.lr.ph, %bb.h
  %i.ba = phi ptr [ %i.q, %.lr.ph ], [ %i.au, %bb.h ] ; 2 uses
  %.03063 = phi i64 [ 0, %.lr.ph ], [ %i.as, %bb.h ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %.03063 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ba) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !86
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !88
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !203
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 72
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !238
  invoke void @_ZN5arrow2io8internal17ValidateReadRangeElll(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.28") align 8 %5, i64 noundef %i.bc, i64 noundef %i.be, i64 noundef %i.bh)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bi = load ptr, ptr %5, align 8, !tbaa !62
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.o, label %bb.l, !prof !65

bb.l:                                             ; preds = %bb.k
  store ptr null, ptr %0, align 8, !tbaa !62
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.n:                                             ; preds = %bb.l
  %i.bl = landingpad { ptr, i32 }
          cleanup
  %i.bm = load ptr, ptr %5, align 8, !tbaa !62    ; 2 uses
  %.not.i.i45 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i45, label %_ZN5arrow6ResultIlED2Ev.exit46, label %bb.s, !prof !65

bb.o:                                             ; preds = %bb.k
  %i.bn = load i64, ptr %i.an, align 8, !tbaa !129
  %i.bo = load ptr, ptr %i.a, align 8, !tbaa !203
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !306 ; 2 uses
  %.not.i43 = icmp eq ptr %i.bq, null
  br i1 %.not.i43, label %bb.h, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !307
  br label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.l
  %.pre = load ptr, ptr %5, align 8, !tbaa !62    ; 2 uses
  %.not.i.i44 = icmp eq ptr %.pre, null
  br i1 %.not.i.i44, label %.loopexit.thread, label %bb.q, !prof !100

bb.q:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %.pre, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !66, !range !75, !noundef !76
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %.loopexit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #29
  br label %.loopexit.thread

bb.s:                                             ; preds = %bb.n
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !66, !range !75, !noundef !76
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %_ZN5arrow6ResultIlED2Ev.exit46, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #29
  br label %_ZN5arrow6ResultIlED2Ev.exit46

_ZN5arrow6ResultIlED2Ev.exit46:                   ; preds = %bb.n, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %.thread

.critedge:                                        ; preds = %bb.h, %.loopexit61
  invoke void @_ZN5arrow8internal20MemoryAdviseWillNeedERKSt6vectorINS0_12MemoryRegionESaIS2_EE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %.loopexit unwind label %bb.w

.loopexit.thread:                                 ; preds = %bb.r, %bb.q, %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.u

.loopexit:                                        ; preds = %.critedge
  %.pre65 = load ptr, ptr %4, align 8, !tbaa !308 ; 2 uses
  %.not.i.i.i47 = icmp eq ptr %.pre65, null
  br i1 %.not.i.i.i47, label %_ZNSt6vectorIN5arrow8internal12MemoryRegionESaIS2_EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %.loopexit.thread, %.loopexit
  %i.bz = phi ptr [ %i.w, %.loopexit.thread ], [ %.pre65, %.loopexit ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !311
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.bz to i64
  %i.ce = sub i64 %i.cc, %i.cd
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.ce) #31
  br label %_ZNSt6vectorIN5arrow8internal12MemoryRegionESaIS2_EED2Ev.exit

_ZNSt6vectorIN5arrow8internal12MemoryRegionESaIS2_EED2Ev.exit: ; preds = %.loopexit, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %.not.i.i48 = icmp eq ptr %.sroa.053.0, null
  %or.cond = or i1 %.not60.not, %.not.i.i48
  br i1 %or.cond, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIN5arrow8internal12MemoryRegionESaIS2_EED2Ev.exit
  %i.cf = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.053.0) #29 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.w:                                             ; preds = %.critedge
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre64 = load ptr, ptr %4, align 8, !tbaa !308 ; 2 uses
  %.not.i.i.i49 = icmp eq ptr %.pre64, null
  br i1 %.not.i.i.i49, label %_ZNSt6vectorIN5arrow8internal12MemoryRegionESaIS2_EED2Ev.exit50, label %.thread

.thread:                                          ; preds = %bb.m, %_ZN5arrow6ResultIlED2Ev.exit46, %bb.w
  %.pn3381 = phi { ptr, i32 } [ %i.cg, %bb.w ], [ %i.bk, %bb.m ], [ %i.bl, %_ZN5arrow6ResultIlED2Ev.exit46 ]
  %i.ch = phi ptr [ %.pre64, %bb.w ], [ %i.w, %bb.m ], [ %i.w, %_ZN5arrow6ResultIlED2Ev.exit46 ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !311
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %i.ch to i64
  %i.cm = sub i64 %i.ck, %i.cl
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.cm) #31
  br label %_ZNSt6vectorIN5arrow8internal12MemoryRegionESaIS2_EED2Ev.exit50

_ZNSt6vectorIN5arrow8internal12MemoryRegionESaIS2_EED2Ev.exit50: ; preds = %.thread, %bb.w, %bb.i
  %.pn33.pn = phi { ptr, i32 } [ %i.az, %bb.i ], [ %i.cg, %bb.w ], [ %.pn3381, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %.not.i.i51 = icmp eq ptr %.sroa.053.0, null
  %or.cond59 = or i1 %.not60.not, %.not.i.i51
  br i1 %or.cond59, label %_ZNSt11unique_lockISt5mutexED2Ev.exit52, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN5arrow8internal12MemoryRegionESaIS2_EED2Ev.exit50
  %i.cn = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.053.0) #29 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit52

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %bb.v, %_ZNSt6vectorIN5arrow8internal12MemoryRegionESaIS2_EED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void

_ZNSt11unique_lockISt5mutexED2Ev.exit52:          ; preds = %bb.x, %_ZNSt6vectorIN5arrow8internal12MemoryRegionESaIS2_EED2Ev.exit50
  resume { ptr, i32 } %.pn33.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZNK5arrow2io16MemoryMappedFile18supports_zero_copyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #15 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io16MemoryMappedFile7WriteAtElPKvl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !203
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !215, !noalias !358
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load atomic i32, ptr %i.e seq_cst, align 4, !noalias !358
  %.not.i.i = icmp eq i32 %i.f, -1
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6StatusD2Ev.exit35.thread

_ZN5arrow6StatusD2Ev.exit35.thread:               ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  call void @_ZN5arrow6Status8FromArgsIJRA33_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(33) @.str.8)
  %.pr = load ptr, ptr %5, align 8, !tbaa !62     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.g = icmp eq ptr %.pr, null
  br i1 %i.g, label %bb.b, label %bb.n

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit35.thread, %_ZN5arrow6StatusD2Ev.exit
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !203
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !215
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.l = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #29 ; 2 uses
  %.not.i.i36 = icmp eq i32 %i.l, 0
  br i1 %.not.i.i36, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZSt20__throw_system_errori(i32 noundef %i.l) #33
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !203
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !215
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.q = load atomic i32, ptr %i.p seq_cst, align 4
  %.not = icmp eq i32 %i.q, -1
  br i1 %.not, label %bb.f, label %bb.e

end_hunk_2
begin_hunk_3_@_ZN5arrow6Status8FromArgsIJRA16_KcEEES0_NS_10StatusCodeEDpOT_:bb.a
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %common.resume
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_trylock(ptr noundef) local_unnamed_addr #5

declare void @_ZN5arrow2io8internal22SharedExclusiveChecker13LockExclusiveEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #6

declare void @_ZN5arrow2io8internal22SharedExclusiveChecker15UnlockExclusiveEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #6

declare void @_ZN5arrow2io8internal22SharedExclusiveChecker10LockSharedEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #6

declare void @_ZN5arrow2io8internal22SharedExclusiveChecker12UnlockSharedEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt17basic_string_viewIcSt11char_traitsIcEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !62
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !62
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !47

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !79     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !46
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !79     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !46
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.m = load ptr, ptr %3, align 8, !tbaa !79     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !46
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #32
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA21_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(21) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29, !noalias !675
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !675
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !533, !noalias !675, !nonnull !76, !align !543
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(21) %2) #29, !noalias !675
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(21) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA21_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !675 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA21_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA21_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA21_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29, !noalias !675
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA21_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA21_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29, !noalias !675
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA21_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !79     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !46
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA21_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !79     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !46
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %common.resume
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #28

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #20 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #21 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #22 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #23 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #24 = { cold noreturn }
attributes #25 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { nounwind }
attributes #30 = { builtin allocsize(0) }
attributes #31 = { builtin nounwind }
attributes #32 = { noreturn nounwind }
attributes #33 = { noreturn }
attributes #34 = { cold }
attributes #35 = { nounwind willreturn memory(none) }

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
!7 = !{!8, !8, i64 0}
!8 = !{!"vtable pointer", !6, i64 0}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSSt10_Head_baseILm0EPN5arrow2io12ReadableFile16ReadableFileImplELb0EE", !11, i64 0}
!11 = !{!"p1 _ZTSN5arrow2io12ReadableFile16ReadableFileImplE", !12, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!14, !4, i64 0}
!14 = !{!"_ZTSSt13__atomic_baseIiE", !4, i64 0}
!15 = !{!16, !30, i64 56}
!16 = !{!"_ZTSN5arrow2io6OSFileE", !17, i64 0, !25, i64 8, !27, i64 48, !29, i64 52, !30, i64 56, !31, i64 64}
!17 = !{!"_ZTSN5arrow8internal16PlatformFilenameE", !18, i64 0}
!18 = !{!"_ZTSSt10unique_ptrIN5arrow8internal16PlatformFilename4ImplESt14default_deleteIS3_EE", !19, i64 0}
!19 = !{!"_ZTSSt15__uniq_ptr_dataIN5arrow8internal16PlatformFilename4ImplESt14default_deleteIS3_ELb1ELb1EE", !20, i64 0}
!20 = !{!"_ZTSSt15__uniq_ptr_implIN5arrow8internal16PlatformFilename4ImplESt14default_deleteIS3_EE", !21, i64 0}
!21 = !{!"_ZTSSt5tupleIJPN5arrow8internal16PlatformFilename4ImplESt14default_deleteIS3_EEE", !22, i64 0}
!22 = !{!"_ZTSSt11_Tuple_implILm0EJPN5arrow8internal16PlatformFilename4ImplESt14default_deleteIS3_EEE", !23, i64 0}
!23 = !{!"_ZTSSt10_Head_baseILm0EPN5arrow8internal16PlatformFilename4ImplELb0EE", !24, i64 0}
!24 = !{!"p1 _ZTSN5arrow8internal16PlatformFilename4ImplE", !12, i64 0}
!25 = !{!"_ZTSSt5mutex", !26, i64 0}
!26 = !{!"_ZTSSt12__mutex_base", !5, i64 0}
!27 = !{!"_ZTSN5arrow8internal14FileDescriptorE", !28, i64 0}
!28 = !{!"_ZTSSt6atomicIiE", !14, i64 0}
!29 = !{!"_ZTSN5arrow2io8FileMode4typeE", !5, i64 0}
!30 = !{!"long", !5, i64 0}
!31 = !{!"_ZTSSt6atomicIbE", !32, i64 0}
!32 = !{!"_ZTSSt13__atomic_baseIbE", !33, i64 0}
!33 = !{!"bool", !5, i64 0}
!34 = !{!32, !33, i64 0}
!35 = !{!36, !37, i64 72}
!36 = !{!"_ZTSN5arrow2io12ReadableFile16ReadableFileImplE", !16, i64 0, !37, i64 72}
!37 = !{!"p1 _ZTSN5arrow10MemoryPoolE", !12, i64 0}
!38 = !{!11, !11, i64 0}
!39 = !{!40, !41, i64 0}
!40 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !41, i64 0}
!41 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !12, i64 0}
!42 = !{!43, !4, i64 8}
!43 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!44 = !{!43, !4, i64 12}
!45 = distinct !{null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!46 = !{!5, !5, i64 0}
!47 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!48 = !{!49, !29, i64 24}
!49 = !{!"_ZTSN5arrow2io13FileInterfaceE", !50, i64 8, !29, i64 24}
!50 = !{!"_ZTSSt23enable_shared_from_thisIN5arrow2io13FileInterfaceEE", !51, i64 0}
!51 = !{!"_ZTSSt8weak_ptrIN5arrow2io13FileInterfaceEE", !52, i64 0}
!52 = !{!"_ZTSSt10__weak_ptrIN5arrow2io13FileInterfaceELN9__gnu_cxx12_Lock_policyE2EE", !53, i64 0, !54, i64 8}
!53 = !{!"p1 _ZTSN5arrow2io13FileInterfaceE", !12, i64 0}
!54 = !{!"_ZTSSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EE", !41, i64 0}
!55 = distinct !{ptr @_ZN5arrow2io8internal34RandomAccessFileConcurrencyWrapperINS0_12ReadableFileEED2Ev, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!56 = !{ptr @_ZN5arrow2io12ReadableFileD1Ev}
!57 = !{ptr @_ZN5arrow2io12ReadableFileD0Ev, ptr @_ZN5arrow2io12ReadableFileD1Ev}
!58 = !{ptr @_ZN5arrow2io12ReadableFileD0Ev}
!59 = !{!60, !61, i64 0}
!60 = !{!"_ZTSSt12__shared_ptrIN5arrow2io12ReadableFileELN9__gnu_cxx12_Lock_policyE2EE", !61, i64 0, !40, i64 8}
!61 = !{!"p1 _ZTSN5arrow2io12ReadableFileE", !12, i64 0}
!62 = !{!63, !64, i64 0}
!63 = !{!"_ZTSN5arrow6StatusE", !64, i64 0}
!64 = !{!"p1 _ZTSN5arrow6Status5StateE", !12, i64 0}
!65 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!66 = !{!67, !33, i64 1}
!67 = !{!"_ZTSN5arrow6Status5StateE", !68, i64 0, !33, i64 1, !69, i64 8, !72, i64 40}
!68 = !{!"_ZTSN5arrow10StatusCodeE", !5, i64 0}
!69 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !70, i64 0, !30, i64 8, !5, i64 16}
!70 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !71, i64 0}
!71 = !{!"p1 omnipotent char", !12, i64 0}
!72 = !{!"_ZTSSt10shared_ptrIN5arrow12StatusDetailEE", !73, i64 0}
!73 = !{!"_ZTSSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EE", !74, i64 0, !40, i64 8}
!74 = !{!"p1 _ZTSN5arrow12StatusDetailE", !12, i64 0}
!75 = !{i8 0, i8 2}
!76 = !{}
!77 = !{!12, !12, i64 0}
!78 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow2io12ReadableFileELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!79 = !{!69, !71, i64 0}
!80 = distinct !{ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!81 = !{!82}
!82 = distinct !{!82, !83, !"_ZNK5arrow2io6OSFile11CheckClosedEv: argument 0"}
!83 = distinct !{!83, !"_ZNK5arrow2io6OSFile11CheckClosedEv"}
!84 = !{!85, !85, i64 0}
!85 = !{!"p1 _ZTSN5arrow2io9ReadRangeE", !12, i64 0}
!86 = !{!87, !30, i64 0}
!87 = !{!"_ZTSN5arrow2io9ReadRangeE", !30, i64 0, !30, i64 8}
!88 = !{!87, !30, i64 8}
!89 = !{!71, !71, i64 0}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_ZZN5arrow2io12ReadableFile16ReadableFileImpl8WillNeedERKSt6vectorINS0_9ReadRangeESaIS4_EEENKUliPKcE_clEiSA_: argument 0"}
!92 = distinct !{!92, !"_ZZN5arrow2io12ReadableFile16ReadableFileImpl8WillNeedERKSt6vectorINS0_9ReadRangeESaIS4_EEENKUliPKcE_clEiSA_"}
!93 = !{!94}
!94 = distinct !{!94, !95, !"_ZNK5arrow2io6OSFile4TellEv: argument 0"}
!95 = distinct !{!95, !"_ZNK5arrow2io6OSFile4TellEv"}
!96 = !{!97, !94}
!97 = distinct !{!97, !98, !"_ZNK5arrow2io6OSFile11CheckClosedEv: argument 0"}
!98 = distinct !{!98, !"_ZNK5arrow2io6OSFile11CheckClosedEv"}
!99 = !{!"branch_weights", !"expected", i32 2144621768, i32 2861880}
!100 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!101 = !{!102}
!102 = distinct !{!102, !103, !"_ZNK5arrow2io6OSFile11CheckClosedEv: argument 0"}
!103 = distinct !{!103, !"_ZNK5arrow2io6OSFile11CheckClosedEv"}
!104 = !{!105}
!105 = distinct !{!105, !106, !"_ZN5arrow2io6OSFile15CheckPositionedEv: argument 0"}
!106 = distinct !{!106, !"_ZN5arrow2io6OSFile15CheckPositionedEv"}
!107 = !{!"branch_weights", !"expected", i32 2145337238, i32 2146410}
!108 = !{!109}
!109 = distinct !{!109, !110, !"_ZNK5arrow2io6OSFile11CheckClosedEv: argument 0"}
!110 = distinct !{!110, !"_ZNK5arrow2io6OSFile11CheckClosedEv"}
!111 = !{!112}
!112 = distinct !{!112, !113, !"_ZNO5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE11ValueUnsafeEv: argument 0"}
!113 = distinct !{!113, !"_ZNO5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE11ValueUnsafeEv"}
!114 = !{!115}
!115 = distinct !{!115, !116, !"_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE15MoveValueUnsafeEv: argument 0"}
!116 = distinct !{!116, !"_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE15MoveValueUnsafeEv"}
!117 = !{!118, !118, i64 0}
!118 = !{!"p1 _ZTSN5arrow15ResizableBufferE", !12, i64 0}
!119 = !{!115, !112}
!120 = !{!121, !33, i64 9}
!121 = !{!"_ZTSN5arrow6BufferE", !33, i64 8, !33, i64 9, !71, i64 16, !30, i64 24, !30, i64 32, !122, i64 40, !123, i64 48, !126, i64 64}
!122 = !{!"_ZTSN5arrow20DeviceAllocationTypeE", !5, i64 0}
!123 = !{!"_ZTSSt10shared_ptrIN5arrow6BufferEE", !124, i64 0}
!124 = !{!"_ZTSSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EE", !125, i64 0, !40, i64 8}
!125 = !{!"p1 _ZTSN5arrow6BufferE", !12, i64 0}
!126 = !{!"_ZTSSt10shared_ptrIN5arrow13MemoryManagerEE", !127, i64 0}
!127 = !{!"_ZTSSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EE", !128, i64 0, !40, i64 8}
!128 = !{!"p1 _ZTSN5arrow13MemoryManagerE", !12, i64 0}
!129 = !{!30, !30, i64 0}
!130 = !{!131}
!131 = distinct !{!131, !132, !"_ZN5arrow15ResizableBuffer6ResizeEl: argument 0"}
!132 = distinct !{!132, !"_ZN5arrow15ResizableBuffer6ResizeEl"}
!133 = distinct !{null}
!134 = !{!121, !30, i64 32}
!135 = !{!121, !30, i64 24}
!136 = distinct !{null, null}
!137 = distinct !{ptr @_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev, null, null, null, null}
!138 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!139 = !{!140}
!140 = distinct !{!140, !141, !"_ZNO5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE11ValueUnsafeEv: argument 0"}
!141 = distinct !{!141, !"_ZNO5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE11ValueUnsafeEv"}
!142 = !{!143}
!143 = distinct !{!143, !144, !"_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE15MoveValueUnsafeEv: argument 0"}
!144 = distinct !{!144, !"_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE15MoveValueUnsafeEv"}
!145 = !{!143, !140}
!146 = !{!147}
!147 = distinct !{!147, !148, !"_ZN5arrow15ResizableBuffer6ResizeEl: argument 0"}
!148 = distinct !{!148, !"_ZN5arrow15ResizableBuffer6ResizeEl"}
!149 = !{!150}
!150 = distinct !{!150, !151, !"_ZN5arrow2io6OSFile4SeekEl: argument 0"}
!151 = distinct !{!151, !"_ZN5arrow2io6OSFile4SeekEl"}
!152 = !{!153, !150}
!153 = distinct !{!153, !154, !"_ZNK5arrow2io6OSFile11CheckClosedEv: argument 0"}
!154 = distinct !{!154, !"_ZNK5arrow2io6OSFile11CheckClosedEv"}
!155 = !{!156, !157, i64 0}
!156 = !{!"_ZTSSt10_Head_baseILm0EPN5arrow2io16FileOutputStream20FileOutputStreamImplELb0EE", !157, i64 0}
!157 = !{!"p1 _ZTSN5arrow2io16FileOutputStream20FileOutputStreamImplE", !12, i64 0}
!158 = !{!157, !157, i64 0}
end_hunk_3
