inline.NumInlined: 1207
inline.NumDeleted: 497
begin_hunk_0_@_ZN5arrow2io16HdfsReadableFileD0Ev:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN5arrow2io13FileInterfaceD2Ev(ptr noundef nonnull align 8 dereferenceable(28) %i.a) #26, !inline_history !70
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #27
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZTv0_n24_N5arrow2io16HdfsReadableFileD0Ev(ptr noundef %0) unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 3 uses
  tail call void @_ZN5arrow2io16HdfsReadableFileD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull @_ZTTN5arrow2io16HdfsReadableFileE) #26, !inline_history !71
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  tail call void @_ZN5arrow2io13FileInterfaceD2Ev(ptr noundef nonnull align 8 dereferenceable(28) %i.e) #26, !inline_history !71
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef 64) #27, !inline_history !72
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZThn8_N5arrow2io16HdfsReadableFileD0Ev(ptr noundef initializes((-8, 8)) %0) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  tail call void @_ZN5arrow2io16HdfsReadableFileD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull @_ZTTN5arrow2io16HdfsReadableFileE) #26, !inline_history !71
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN5arrow2io13FileInterfaceD2Ev(ptr noundef nonnull align 8 dereferenceable(28) %i.b) #26, !inline_history !71
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef 64) #27, !inline_history !72
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io16HdfsReadableFile5CloseEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !49, !range !50, !noalias !73, !noundef !54
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %.thread.i

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.c, align 8, !tbaa !49, !noalias !73
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !55, !noalias !73
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !56, !noalias !73
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !57, !noalias !73
  %i.l = tail call noundef i32 @_ZN5arrow2io8internal11LibHdfsShim9CloseFileEP13hdfs_internalP17hdfsFile_internal(ptr noundef nonnull align 8 dereferenceable(312) %i.g, ptr noundef %i.i, ptr noundef %i.k), !noalias !73
  %i.m = icmp eq i32 %i.l, -1
  br i1 %i.m, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b
  %i.n = tail call ptr @__errno_location() #28
  %i.o = load i32, ptr %i.n, align 4, !tbaa !3, !noalias !73
  tail call void @_ZN5arrow8internal16IOErrorFromErrnoIJRA6_KcRA10_S2_RA8_S2_EEENS_6StatusEiDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i32 noundef %i.o, ptr noundef nonnull align 1 dereferenceable(6) @.str.2, ptr noundef nonnull align 1 dereferenceable(10) @.str.3, ptr noundef nonnull align 1 dereferenceable(8) @.str.4)
  br label %_ZN5arrow2io16HdfsReadableFile20HdfsReadableFileImpl5CloseEv.exit

.thread.i:                                        ; preds = %bb.b, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !58, !alias.scope !76
  br label %_ZN5arrow2io16HdfsReadableFile20HdfsReadableFileImpl5CloseEv.exit

_ZN5arrow2io16HdfsReadableFile20HdfsReadableFileImpl5CloseEv.exit: ; preds = %bb.c, %.thread.i
  ret void
}

; Function Attrs: uwtable
define void @_ZTv0_n32_N5arrow2io16HdfsReadableFile5CloseEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #10 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !7
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -32
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !39, !noalias !79 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 96 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !49, !range !50, !noalias !85, !noundef !54
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %.thread.i.i

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.g, align 8, !tbaa !49, !noalias !85
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !55, !noalias !85
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !56, !noalias !85
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !57, !noalias !85
  %i.p = tail call noundef i32 @_ZN5arrow2io8internal11LibHdfsShim9CloseFileEP13hdfs_internalP17hdfsFile_internal(ptr noundef nonnull align 8 dereferenceable(312) %i.k, ptr noundef %i.m, ptr noundef %i.o), !noalias !85
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %bb.c, label %.thread.i.i

bb.c:                                             ; preds = %bb.b
  %i.r = tail call ptr @__errno_location() #28
  %i.s = load i32, ptr %i.r, align 4, !tbaa !3, !noalias !85
  tail call void @_ZN5arrow8internal16IOErrorFromErrnoIJRA6_KcRA10_S2_RA8_S2_EEENS_6StatusEiDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i32 noundef %i.s, ptr noundef nonnull align 1 dereferenceable(6) @.str.2, ptr noundef nonnull align 1 dereferenceable(10) @.str.3, ptr noundef nonnull align 1 dereferenceable(8) @.str.4)
  br label %_ZN5arrow2io16HdfsReadableFile5CloseEv.exit

.thread.i.i:                                      ; preds = %bb.b, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !58, !alias.scope !86
  br label %_ZN5arrow2io16HdfsReadableFile5CloseEv.exit

_ZN5arrow2io16HdfsReadableFile5CloseEv.exit:      ; preds = %bb.c, %.thread.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK5arrow2io16HdfsReadableFile6closedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.d = load i8, ptr %i.c, align 8, !tbaa !49, !range !50, !noundef !54
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = xor i1 %i.e, true
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZTv0_n64_NK5arrow2io16HdfsReadableFile6closedEv(ptr nofree noundef readonly captures(none) %0) unnamed_addr #11 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -64
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !39
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.h = load i8, ptr %i.g, align 8, !tbaa !49, !range !50, !noundef !54
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = xor i1 %i.i, true
  ret i1 %i.j
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io16HdfsReadableFile6ReadAtEllPv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39
  tail call void @_ZN5arrow2io16HdfsReadableFile20HdfsReadableFileImpl6ReadAtEllPh(ptr dead_on_unwind writable sret(%"class.arrow::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(116) %i.b, i64 noundef %2, i64 noundef %3, ptr noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5arrow2io16HdfsReadableFile20HdfsReadableFileImpl6ReadAtEllPh(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(116) %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 9 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 9 uses
  %10 = alloca %"class.arrow::Status", align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !49, !range !50, !noalias !89, !noundef !54
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN5arrow6StatusD2Ev.exit.thread, label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.e

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  call void @_ZN5arrow6Status8FromArgsIJRA30_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(30) @.str.8)
  %.pr = load ptr, ptr %7, align 8, !tbaa !58     ; 2 uses
  store ptr %.pr, ptr %6, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.d = icmp eq ptr %.pr, null
  br i1 %i.d, label %bb.e, label %bb.b, !prof !92

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow6ResultIlEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #26
  %.pr63 = load ptr, ptr %6, align 8, !tbaa !58   ; 2 uses
  %.not.i35 = icmp eq ptr %.pr63, null
  br i1 %.not.i35, label %_ZN5arrow6StatusD2Ev.exit36.thread, label %bb.c, !prof !62

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.pr63, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !63, !range !50, !noundef !54
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN5arrow6StatusD2Ev.exit36.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #26
  br label %_ZN5arrow6StatusD2Ev.exit36.thread

_ZN5arrow6StatusD2Ev.exit36.thread:               ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.v

bb.e:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !55
  %i.j = call noundef zeroext i1 @_ZN5arrow2io8internal11LibHdfsShim8HasPreadEv(ptr noundef nonnull align 8 dereferenceable(312) %i.i)
  br i1 %i.j, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.e
  %11 = icmp sgt i64 %3, 0
  br i1 %11, label %.lr.ph, label %.thread75

.lr.ph:                                           ; preds = %.preheader
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 88
  br label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.l = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #26 ; 2 uses
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_system_errori(i32 noundef %i.l) #30
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !93)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26, !noalias !93
  %i.m = load i8, ptr %i.a, align 8, !tbaa !49, !range !50, !noalias !96, !noundef !54
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %_ZN5arrow6StatusD2Ev.exit10.thread.i, label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit10.thread.i:             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  store ptr null, ptr %9, align 8, !tbaa !58, !alias.scope !93
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !93
  br label %bb.h

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  invoke void @_ZN5arrow6Status8FromArgsIJRA30_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(30) @.str.8)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !58, !noalias !93 ; 3 uses
  store ptr %.pr.i, ptr %9, align 8, !tbaa !58, !alias.scope !93
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !93
  %i.o = icmp eq ptr %.pr.i, null
  br i1 %i.o, label %bb.h, label %_ZN5arrow6StatusD2Ev.exit40.thread68

_ZN5arrow6StatusD2Ev.exit40.thread68:             ; preds = %.noexc
  store ptr %.pr.i, ptr %8, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.j

bb.h:                                             ; preds = %.noexc, %_ZN5arrow6StatusD2Ev.exit10.thread.i
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !55, !noalias !93
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !56, !noalias !93
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !57, !noalias !93
  %i.u = invoke noundef i32 @_ZN5arrow2io8internal11LibHdfsShim4SeekEP13hdfs_internalP17hdfsFile_internall(ptr noundef nonnull align 8 dereferenceable(312) %i.p, ptr noundef %i.r, ptr noundef %i.t, i64 noundef %2)
          to label %.noexc37 unwind label %bb.m

.noexc37:                                         ; preds = %bb.h
  %i.v = icmp eq i32 %i.u, -1
  br i1 %i.v, label %bb.i, label %_ZN5arrow6StatusD2Ev.exit40.thread

bb.i:                                             ; preds = %.noexc37
  %i.w = tail call ptr @__errno_location() #28
  %i.x = load i32, ptr %i.w, align 4, !tbaa !3, !noalias !93
  invoke void @_ZN5arrow8internal16IOErrorFromErrnoIJRA6_KcRA5_S2_RA8_S2_EEENS_6StatusEiDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, i32 noundef %i.x, ptr noundef nonnull align 1 dereferenceable(6) @.str.2, ptr noundef nonnull align 1 dereferenceable(5) @.str.16, ptr noundef nonnull align 1 dereferenceable(8) @.str.4)
          to label %_ZN5arrow6StatusD2Ev.exit40 unwind label %bb.m

_ZN5arrow6StatusD2Ev.exit40.thread:               ; preds = %.noexc37
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %_ZN5arrow6StatusD2Ev.exit46

_ZN5arrow6StatusD2Ev.exit40:                      ; preds = %bb.i
  %.pr67 = load ptr, ptr %9, align 8, !tbaa !58   ; 2 uses
  store ptr %.pr67, ptr %8, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.y = icmp eq ptr %.pr67, null
  br i1 %i.y, label %_ZN5arrow6StatusD2Ev.exit46, label %bb.j, !prof !99

bb.j:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit40.thread68, %_ZN5arrow6StatusD2Ev.exit40
  call void @_ZN5arrow6ResultIlEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #26
  %i.z = load ptr, ptr %8, align 8, !tbaa !58     ; 2 uses
  %.not.i41 = icmp eq ptr %i.z, null
  br i1 %.not.i41, label %_ZN5arrow6StatusD2Ev.exit42, label %bb.k, !prof !100

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !63, !range !50, !noundef !54
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %_ZN5arrow6StatusD2Ev.exit42, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #26
  br label %_ZN5arrow6StatusD2Ev.exit42

_ZN5arrow6StatusD2Ev.exit42:                      ; preds = %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.o

bb.m:                                             ; preds = %bb.i, %bb.h, %_ZN5arrow6StatusD2Ev.exit.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.p

_ZN5arrow6StatusD2Ev.exit46:                      ; preds = %_ZN5arrow6StatusD2Ev.exit40, %_ZN5arrow6StatusD2Ev.exit40.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  invoke void @_ZN5arrow2io16HdfsReadableFile20HdfsReadableFileImpl4ReadElPv(ptr dead_on_unwind writable sret(%"class.arrow::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(116) %1, i64 noundef %3, ptr noundef %4)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit46
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit42, %_ZN5arrow6StatusD2Ev.exit46
  %i.af = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #26 ; 0 uses
  br label %bb.v

bb.p:                                             ; preds = %bb.n, %bb.m
  %.pn30 = phi { ptr, i32 } [ %i.ae, %bb.n ], [ %i.ad, %bb.m ]
  %i.ag = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #26 ; 0 uses
  resume { ptr, i32 } %.pn30

bb.q:                                             ; preds = %.lr.ph, %bb.u
  %.085 = phi i64 [ %2, %.lr.ph ], [ %i.av, %bb.u ] ; 2 uses
  %.01884 = phi ptr [ %4, %.lr.ph ], [ %i.at, %bb.u ] ; 2 uses
  %.05883 = phi i64 [ 0, %.lr.ph ], [ %i.au, %bb.u ] ; 2 uses
  %.06182 = phi i64 [ %3, %.lr.ph ], [ %i.aw, %bb.u ] ; 2 uses
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %.06182, i64 2147483647)
  %i.ah = trunc nuw nsw i64 %.sroa.speculated to i32
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !55
  %i.aj = load ptr, ptr %12, align 8, !tbaa !56
  %i.ak = load ptr, ptr %13, align 8, !tbaa !57
  %i.al = call noundef i32 @_ZN5arrow2io8internal11LibHdfsShim5PreadEP13hdfs_internalP17hdfsFile_internallPvi(ptr noundef nonnull align 8 dereferenceable(312) %i.ai, ptr noundef %i.aj, ptr noundef %i.ak, i64 noundef %.085, ptr noundef %.01884, i32 noundef %i.ah) ; 2 uses
  switch i32 %i.al, label %bb.u [
    i32 -1, label %bb.r
    i32 0, label %.thread75
  ]

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.am = tail call ptr @__errno_location() #28
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  call void @_ZN5arrow8internal16IOErrorFromErrnoIJRA6_KcRA5_S2_RA8_S2_EEENS_6StatusEiDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %10, i32 noundef %i.an, ptr noundef nonnull align 1 dereferenceable(6) @.str.2, ptr noundef nonnull align 1 dereferenceable(5) @.str.7, ptr noundef nonnull align 1 dereferenceable(8) @.str.4)
  call void @_ZN5arrow6ResultIlEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %10) #26
  %i.ao = load ptr, ptr %10, align 8, !tbaa !58   ; 2 uses
  %.not.i47 = icmp eq ptr %i.ao, null
  br i1 %.not.i47, label %.thread69, label %bb.s, !prof !100

bb.s:                                             ; preds = %bb.r
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !63, !range !50, !noundef !54
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %.thread69, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #26
  br label %.thread69

.thread69:                                        ; preds = %bb.t, %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.v

bb.u:                                             ; preds = %bb.q
  %i.as = sext i32 %i.al to i64                   ; 4 uses
  %i.at = getelementptr inbounds i8, ptr %.01884, i64 %i.as
  %i.au = add nsw i64 %.05883, %i.as              ; 2 uses
  %i.av = add nsw i64 %.085, %i.as
  %i.aw = sub nsw i64 %.06182, %i.as              ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, 0
  br i1 %i.ax, label %bb.q, label %.thread75

.thread75:                                        ; preds = %bb.u, %bb.q, %.preheader
  %.058.lcssa = phi i64 [ 0, %.preheader ], [ %.05883, %bb.q ], [ %i.au, %bb.u ]
  store ptr null, ptr %0, align 8, !tbaa !58
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.058.lcssa, ptr %i.ay, align 8, !tbaa !101
  br label %bb.v

bb.v:                                             ; preds = %.thread75, %.thread69, %_ZN5arrow6StatusD2Ev.exit36.thread, %bb.o
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io16HdfsReadableFile6ReadAtEll(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.12") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39
  tail call void @_ZN5arrow2io16HdfsReadableFile20HdfsReadableFileImpl6ReadAtEll(ptr dead_on_unwind writable sret(%"class.arrow::Result.12") align 8 %0, ptr noundef nonnull align 8 dereferenceable(116) %i.b, i64 noundef %2, i64 noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5arrow2io16HdfsReadableFile20HdfsReadableFileImpl6ReadAtEll(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.12") align 8 %0, ptr noundef nonnull align 8 dereferenceable(116) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %6 = alloca %"class.arrow::Result.52", align 8  ; 12 uses
  %7 = alloca %"class.std::unique_ptr.56", align 8 ; 7 uses
  %8 = alloca %"class.arrow::Result", align 8     ; 11 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %10 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %11 = alloca %"class.std::shared_ptr.64", align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.b = load i8, ptr %i.a, align 8, !tbaa !49, !range !50, !noalias !102, !noundef !54
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN5arrow6StatusD2Ev.exit.thread, label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.e

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  call void @_ZN5arrow6Status8FromArgsIJRA30_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(30) @.str.8)
  %.pr = load ptr, ptr %5, align 8, !tbaa !58     ; 2 uses
  store ptr %.pr, ptr %4, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.d = icmp eq ptr %.pr, null
  br i1 %i.d, label %bb.e, label %bb.b, !prof !92

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #26
  %.pr51 = load ptr, ptr %4, align 8, !tbaa !58   ; 2 uses
  %.not.i32 = icmp eq ptr %.pr51, null
  br i1 %.not.i32, label %_ZN5arrow6StatusD2Ev.exit33.thread, label %bb.c, !prof !62

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.pr51, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !63, !range !50, !noundef !54
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN5arrow6StatusD2Ev.exit33.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #26
  br label %_ZN5arrow6StatusD2Ev.exit33.thread

_ZN5arrow6StatusD2Ev.exit33.thread:               ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.ab

bb.e:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !30
  call void @_ZN5arrow23AllocateResizableBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.52") align 8 %6, i64 noundef %3, ptr noundef %i.i)
  %i.j = load ptr, ptr %6, align 8, !tbaa !58
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.g, label %bb.f, !prof !100

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #26
  br label %bb.y

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !105)
  call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !111, !noalias !113 ; 2 uses
  store i64 %i.m, ptr %7, align 8, !tbaa !111, !alias.scope !113
  store ptr null, ptr %i.l, align 8, !tbaa !111, !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %.cast = inttoptr i64 %i.m to ptr               ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.cast, i64 9 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !114, !range !50, !noundef !54
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %.cast, i64 8 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !range !50
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = select i1 %i.p, i1 %i.s, i1 false, !prof !100
  %i.u = getelementptr inbounds nuw i8, ptr %.cast, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = select i1 %i.t, ptr %i.v, ptr null, !prof !100
  invoke void @_ZN5arrow2io16HdfsReadableFile20HdfsReadableFileImpl6ReadAtEllPh(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %8, ptr noundef nonnull align 8 dereferenceable(116) %1, i64 noundef %2, i64 noundef %3, ptr noundef %i.w)
          to label %bb.h unwind label %.thread

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr %8, align 8, !tbaa !58
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.j, label %bb.i, !prof !100

bb.i:                                             ; preds = %bb.h
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #26
  br label %bb.u

.thread:                                          ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit.i48

bb.j:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !101 ; 2 uses
  %i.ac = icmp slt i64 %i.ab, %3
  br i1 %i.ac, label %bb.k, label %_ZN5arrow6Buffer11ZeroPaddingEv.exit

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.ad = load ptr, ptr %.cast, align 8, !tbaa !7, !noalias !123
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !123
  invoke void %i.af(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %10, ptr noundef nonnull align 8 dereferenceable(80) %.cast, i64 noundef %i.ab, i1 noundef zeroext true)
          to label %_ZN5arrow6StatusD2Ev.exit35 unwind label %bb.o, !inline_history !126

_ZN5arrow6StatusD2Ev.exit35:                      ; preds = %bb.k
  %i.ag = load ptr, ptr %10, align 8, !tbaa !58   ; 2 uses
  store ptr %i.ag, ptr %9, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %_ZN5arrow6StatusD2Ev.exit41, label %bb.l, !prof !100

bb.l:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit35
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %9) #26
  %i.ai = load ptr, ptr %9, align 8, !tbaa !58    ; 2 uses
  %.not.i36 = icmp eq ptr %i.ai, null
  br i1 %.not.i36, label %_ZN5arrow6StatusD2Ev.exit37, label %bb.m, !prof !100

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !63, !range !50, !noundef !54
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %_ZN5arrow6StatusD2Ev.exit37, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #26
  br label %_ZN5arrow6StatusD2Ev.exit37

_ZN5arrow6StatusD2Ev.exit37:                      ; preds = %bb.l, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.u

bb.o:                                             ; preds = %bb.k
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.r

_ZN5arrow6StatusD2Ev.exit41:                      ; preds = %_ZN5arrow6StatusD2Ev.exit35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.an = getelementptr inbounds nuw i8, ptr %.cast, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !127 ; 2 uses
  %.not.i42 = icmp eq i64 %i.ao, 0
  br i1 %.not.i42, label %_ZN5arrow6Buffer11ZeroPaddingEv.exit, label %bb.p

bb.p:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit41
  %i.ap = load i8, ptr %i.n, align 1, !tbaa !114, !range !50, !noundef !54
  %i.aq = trunc nuw i8 %i.ap to i1
  %i.ar = load i8, ptr %i.q, align 8, !range !50
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = select i1 %i.aq, i1 %i.as, i1 false, !prof !100
  %i.au = load ptr, ptr %i.u, align 8
  %i.av = select i1 %i.at, ptr %i.au, ptr null, !prof !100
  %i.aw = getelementptr inbounds nuw i8, ptr %.cast, i64 24
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !128 ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.av, i64 %i.ax
  %i.az = sub nsw i64 %i.ao, %i.ax
  call void @llvm.memset.p0.i64(ptr align 1 %i.ay, i8 0, i64 %i.az, i1 false)
  br label %_ZN5arrow6Buffer11ZeroPaddingEv.exit

_ZN5arrow6Buffer11ZeroPaddingEv.exit:             ; preds = %bb.p, %_ZN5arrow6StatusD2Ev.exit41, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2INS0_15ResizableBufferESt14default_deleteIS6_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.q

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow6Buffer11ZeroPaddingEv.exit
  store ptr null, ptr %0, align 8, !tbaa !58
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = load <2 x ptr>, ptr %11, align 16, !tbaa !129
  store <2 x ptr> %i.bb, ptr %i.ba, align 8, !tbaa !129
end_hunk_0
begin_hunk_1_@_ZN5arrow2io16HdfsOutputStreamD2Ev:bb.a
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #29
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5arrow2io16HdfsOutputStream20HdfsOutputStreamImpl5CloseEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(97) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !49, !range !50, !noundef !54
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !55, !noalias !197
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !56, !noalias !197
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !57, !noalias !197
  %i.j = tail call noundef i32 @_ZN5arrow2io8internal11LibHdfsShim5FlushEP13hdfs_internalP17hdfsFile_internal(ptr noundef nonnull align 8 dereferenceable(312) %i.e, ptr noundef %i.g, ptr noundef %i.i), !noalias !197
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6StatusD2Ev.exit11.thread

_ZN5arrow6StatusD2Ev.exit11.thread:               ; preds = %bb.b
  store ptr null, ptr %0, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.c

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b
  %i.l = tail call ptr @__errno_location() #28
  %i.m = load i32, ptr %i.l, align 4, !tbaa !3, !noalias !197
  call void @_ZN5arrow8internal16IOErrorFromErrnoIJRA6_KcS4_RA8_S2_EEENS_6StatusEiDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %2, i32 noundef %i.m, ptr noundef nonnull align 1 dereferenceable(6) @.str.2, ptr noundef nonnull align 1 dereferenceable(6) @.str.18, ptr noundef nonnull align 1 dereferenceable(8) @.str.4)
  %.pr = load ptr, ptr %2, align 8, !tbaa !58     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.n = icmp eq ptr %.pr, null
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit11.thread, %_ZN5arrow6StatusD2Ev.exit
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !56
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !57
  %i.r = call noundef i32 @_ZN5arrow2io8internal11LibHdfsShim9CloseFileEP13hdfs_internalP17hdfsFile_internal(ptr noundef nonnull align 8 dereferenceable(312) %i.o, ptr noundef %i.p, ptr noundef %i.q)
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.t = tail call ptr @__errno_location() #28
  %i.u = load i32, ptr %i.t, align 4, !tbaa !3
  call void @_ZN5arrow8internal16IOErrorFromErrnoIJRA6_KcRA10_S2_RA8_S2_EEENS_6StatusEiDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, i32 noundef %i.u, ptr noundef nonnull align 1 dereferenceable(6) @.str.2, ptr noundef nonnull align 1 dereferenceable(10) @.str.3, ptr noundef nonnull align 1 dereferenceable(8) @.str.4)
  br label %bb.e

.thread:                                          ; preds = %bb.c, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !58, !alias.scope !200
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN5arrow6StatusD2Ev.exit, %.thread
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5arrow2io16HdfsOutputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(16) initializes((0, 8)) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN5arrow2io16HdfsOutputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull @_ZTTN5arrow2io16HdfsOutputStreamE) #26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN5arrow2io13FileInterfaceD2Ev(ptr noundef nonnull align 8 dereferenceable(28) %i.a) #26
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZTv0_n24_N5arrow2io16HdfsOutputStreamD1Ev(ptr noundef %0) unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 2 uses
  tail call void @_ZN5arrow2io16HdfsOutputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull @_ZTTN5arrow2io16HdfsOutputStreamE) #26, !inline_history !203
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  tail call void @_ZN5arrow2io13FileInterfaceD2Ev(ptr noundef nonnull align 8 dereferenceable(28) %i.e) #26, !inline_history !203
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5arrow2io16HdfsOutputStreamD0Ev(ptr noundef nonnull align 8 dereferenceable(16) initializes((0, 8)) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN5arrow2io16HdfsOutputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull @_ZTTN5arrow2io16HdfsOutputStreamE) #26, !inline_history !203
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN5arrow2io13FileInterfaceD2Ev(ptr noundef nonnull align 8 dereferenceable(28) %i.a) #26, !inline_history !203
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #27
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZTv0_n24_N5arrow2io16HdfsOutputStreamD0Ev(ptr noundef %0) unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 3 uses
  tail call void @_ZN5arrow2io16HdfsOutputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull @_ZTTN5arrow2io16HdfsOutputStreamE) #26, !inline_history !204
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  tail call void @_ZN5arrow2io13FileInterfaceD2Ev(ptr noundef nonnull align 8 dereferenceable(28) %i.e) #26, !inline_history !204
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 noundef 48) #27, !inline_history !205
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io16HdfsOutputStream5CloseEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !196
  tail call void @_ZN5arrow2io16HdfsOutputStream20HdfsOutputStreamImpl5CloseEv(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(97) %i.b)
  ret void
}

; Function Attrs: uwtable
define void @_ZTv0_n32_N5arrow2io16HdfsOutputStream5CloseEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #10 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !7
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -32
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !196, !noalias !206
  tail call void @_ZN5arrow2io16HdfsOutputStream20HdfsOutputStreamImpl5CloseEv(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(97) %i.f)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK5arrow2io16HdfsOutputStream6closedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !196
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.d = load i8, ptr %i.c, align 8, !tbaa !49, !range !50, !noundef !54
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = xor i1 %i.e, true
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZTv0_n64_NK5arrow2io16HdfsOutputStream6closedEv(ptr nofree noundef readonly captures(none) %0) unnamed_addr #11 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -64
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !196
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.h = load i8, ptr %i.g, align 8, !tbaa !49, !range !50, !noundef !54
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = xor i1 %i.i, true
  ret i1 %i.j
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io16HdfsOutputStream5WriteEPKvl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !196
  tail call void @_ZN5arrow2io16HdfsOutputStream20HdfsOutputStreamImpl5WriteEPKhl(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(97) %i.b, ptr noundef %2, i64 noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5arrow2io16HdfsOutputStream20HdfsOutputStreamImpl5WriteEPKhl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(97) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.b = load i8, ptr %i.a, align 8, !tbaa !49, !range !50, !noalias !209, !noundef !54
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN5arrow6StatusD2Ev.exit21.thread, label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit21.thread:               ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  call void @_ZN5arrow6Status8FromArgsIJRA30_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(30) @.str.8)
  %.pr = load ptr, ptr %4, align 8, !tbaa !58     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.d = icmp eq ptr %.pr, null
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit21.thread, %_ZN5arrow6StatusD2Ev.exit
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.f = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #26 ; 2 uses
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader, label %5

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader: ; preds = %bb.b
  %i.g = icmp sgt i64 %3, 0
  br i1 %i.g, label %.lr.ph, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit._crit_edge

.lr.ph:                                           ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88
  br label %bb.c

5:                                                ; preds = %bb.b
  call void @_ZSt20__throw_system_errori(i32 noundef %i.f) #30
  unreachable

bb.c:                                             ; preds = %.lr.ph, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %.034 = phi ptr [ %2, %.lr.ph ], [ %i.t, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ] ; 2 uses
  %.02833 = phi i64 [ %3, %.lr.ph ], [ %i.u, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ] ; 2 uses
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %.02833, i64 2147483647)
  %i.k = trunc nuw nsw i64 %.sroa.speculated to i32
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !55
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !56
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !57
  %i.o = invoke noundef i32 @_ZN5arrow2io8internal11LibHdfsShim5WriteEP13hdfs_internalP17hdfsFile_internalPKvi(ptr noundef nonnull align 8 dereferenceable(312) %i.l, ptr noundef %i.m, ptr noundef %i.n, ptr noundef %.034, i32 noundef %i.k)
          to label %bb.d unwind label %.loopexit  ; 2 uses

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq i32 %i.o, -1
  br i1 %.not, label %bb.e, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit

bb.e:                                             ; preds = %bb.d
  %i.p = tail call ptr @__errno_location() #28
  %i.q = load i32, ptr %i.p, align 4, !tbaa !3
  invoke void @_ZN5arrow8internal16IOErrorFromErrnoIJRA6_KcS4_RA8_S2_EEENS_6StatusEiDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, i32 noundef %i.q, ptr noundef nonnull align 1 dereferenceable(6) @.str.2, ptr noundef nonnull align 1 dereferenceable(6) @.str.19, ptr noundef nonnull align 1 dereferenceable(8) @.str.4)
          to label %.thread unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %bb.c
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.r = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #26 ; 0 uses
  resume { ptr, i32 } %lpad.phi

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.d
  %i.s = sext i32 %i.o to i64                     ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %.034, i64 %i.s
  %i.u = sub nsw i64 %.02833, %i.s                ; 2 uses
  %i.v = icmp sgt i64 %i.u, 0
  br i1 %i.v, label %bb.c, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit._crit_edge, !llvm.loop !212

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit._crit_edge: ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader
  store ptr null, ptr %0, align 8, !tbaa !58, !alias.scope !214
  br label %.thread

.thread:                                          ; preds = %bb.e, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit._crit_edge
  %i.w = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #26 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io16HdfsOutputStream5FlushEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !196  ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !217)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26, !noalias !217
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.d = load i8, ptr %i.c, align 8, !tbaa !49, !range !50, !noalias !220, !noundef !54
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_ZN5arrow6StatusD2Ev.exit8.thread.i, label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit8.thread.i:              ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !58, !alias.scope !217
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26, !noalias !217
  br label %bb.b

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.a
  call void @_ZN5arrow6Status8FromArgsIJRA30_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %2, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(30) @.str.8), !noalias !217
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !58, !noalias !217 ; 2 uses
  store ptr %.pr.i, ptr %0, align 8, !tbaa !58, !alias.scope !217
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26, !noalias !217
  %i.f = icmp eq ptr %.pr.i, null
  br i1 %i.f, label %bb.b, label %_ZN5arrow2io16HdfsOutputStream20HdfsOutputStreamImpl5FlushEv.exit

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i, %_ZN5arrow6StatusD2Ev.exit8.thread.i
  call void @llvm.experimental.noalias.scope.decl(metadata !223)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !55, !noalias !226
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !56, !noalias !226
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !57, !noalias !226
  %i.m = call noundef i32 @_ZN5arrow2io8internal11LibHdfsShim5FlushEP13hdfs_internalP17hdfsFile_internal(ptr noundef nonnull align 8 dereferenceable(312) %i.h, ptr noundef %i.j, ptr noundef %i.l), !noalias !226
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = tail call ptr @__errno_location() #28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3, !noalias !226
  call void @_ZN5arrow8internal16IOErrorFromErrnoIJRA6_KcS4_RA8_S2_EEENS_6StatusEiDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, i32 noundef %i.p, ptr noundef nonnull align 1 dereferenceable(6) @.str.2, ptr noundef nonnull align 1 dereferenceable(6) @.str.18, ptr noundef nonnull align 1 dereferenceable(8) @.str.4)
  br label %_ZN5arrow2io16HdfsOutputStream20HdfsOutputStreamImpl5FlushEv.exit

bb.d:                                             ; preds = %bb.b
  store ptr null, ptr %0, align 8, !tbaa !58, !alias.scope !227
  br label %_ZN5arrow2io16HdfsOutputStream20HdfsOutputStreamImpl5FlushEv.exit

_ZN5arrow2io16HdfsOutputStream20HdfsOutputStreamImpl5FlushEv.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit.i, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow2io16HdfsOutputStream4TellEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !196
  tail call void @_ZN5arrow2io15HdfsAnyFileImpl4TellEv(ptr dead_on_unwind writable sret(%"class.arrow::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(97) %i.b)
  ret void
}

; Function Attrs: uwtable
define void @_ZTv0_n56_NK5arrow2io16HdfsOutputStream4TellEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #10 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !7
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -56
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !196, !noalias !230
  tail call void @_ZN5arrow2io15HdfsAnyFileImpl4TellEv(ptr dead_on_unwind writable sret(%"class.arrow::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(97) %i.f)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io16HadoopFileSystemC2Ev(ptr noundef nonnull align 8 dereferenceable(16) initializes((0, 16)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5arrow2io16HadoopFileSystemE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !233
  %i.b = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #25
          to label %_ZNSt10unique_ptrIN5arrow2io16HadoopFileSystem20HadoopFileSystemImplESt14default_deleteIS3_EE5resetEPS3_.exit unwind label %bb.b ; 13 uses

_ZNSt10unique_ptrIN5arrow2io16HadoopFileSystem20HadoopFileSystemImplESt14default_deleteIS3_EE5resetEPS3_.exit: ; preds = %bb.a
  store ptr null, ptr %i.b, align 8, !tbaa !236
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.e, align 8, !tbaa !27
  store i8 0, ptr %i.d, align 8, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 0, ptr %i.h, align 8, !tbaa !27
  store i8 0, ptr %i.g, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 0, ptr %i.i, align 8, !tbaa !238
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i64 0, ptr %i.l, align 8, !tbaa !27
  store i8 0, ptr %i.k, align 8, !tbaa !29
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr null, ptr %i.m, align 8, !tbaa !239
  store ptr %i.b, ptr %i.a, align 8, !tbaa !240
  ret void

bb.b:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt10unique_ptrIN5arrow2io16HadoopFileSystem20HadoopFileSystemImplESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #26
  resume { ptr, i32 } %i.n
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrIN5arrow2io16HadoopFileSystem20HadoopFileSystemImplESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !240    ; 8 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.d, align 8, !tbaa !29
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !40   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
end_hunk_1
begin_hunk_2_@_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl4StatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_14FileStatisticsE:bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @_ZN5arrow2io12HdfsPathInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(132) dereferenceable(132) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %i.t

_ZN5arrow6StatusD2Ev.exit17:                      ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.thread
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.v = load i64, ptr %i.u, align 8, !tbaa !313
  store i64 %i.v, ptr %3, align 8, !tbaa !316
  %i.w = load i32, ptr %4, align 8, !tbaa !318
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.w, ptr %i.x, align 8, !tbaa !319
  store ptr null, ptr %0, align 8, !tbaa !58, !alias.scope !320
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit17
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !40   ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.h
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.critedge
  %i.aa = load i64, ptr %i.h, align 8, !tbaa !29
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !40  ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.e
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ae = load i64, ptr %i.e, align 8, !tbaa !29
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !40  ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.b
  br i1 %i.ah, label %_ZN5arrow2io12HdfsPathInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.ai = load i64, ptr %i.b, align 8, !tbaa !29
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #27
  br label %_ZN5arrow2io12HdfsPathInfoD2Ev.exit

_ZN5arrow2io12HdfsPathInfoD2Ev.exit:              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io16HadoopFileSystem11GetCapacityEPl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !240  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !236, !noalias !323
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !239, !noalias !323
  %i.f = tail call noundef i64 @_ZN5arrow2io8internal11LibHdfsShim11GetCapacityEP13hdfs_internal(ptr noundef nonnull align 8 dereferenceable(312) %i.c, ptr noundef %i.e), !noalias !323 ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__errno_location() #28
  %i.i = load i32, ptr %i.h, align 4, !tbaa !3, !noalias !323
  tail call void @_ZN5arrow8internal16IOErrorFromErrnoIJRA6_KcRA12_S2_RA8_S2_EEENS_6StatusEiDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i32 noundef %i.i, ptr noundef nonnull align 1 dereferenceable(6) @.str.2, ptr noundef nonnull align 1 dereferenceable(12) @.str.25, ptr noundef nonnull align 1 dereferenceable(8) @.str.4)
  br label %_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl11GetCapacityEPl.exit

bb.c:                                             ; preds = %bb.a
  store i64 %i.f, ptr %2, align 8, !tbaa !101, !noalias !323
  store ptr null, ptr %0, align 8, !tbaa !58, !alias.scope !326
  br label %_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl11GetCapacityEPl.exit

_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl11GetCapacityEPl.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io16HadoopFileSystem7GetUsedEPl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !240  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !329)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !236, !noalias !329
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !239, !noalias !329
  %i.f = tail call noundef i64 @_ZN5arrow2io8internal11LibHdfsShim7GetUsedEP13hdfs_internal(ptr noundef nonnull align 8 dereferenceable(312) %i.c, ptr noundef %i.e), !noalias !329 ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__errno_location() #28
  %i.i = load i32, ptr %i.h, align 4, !tbaa !3, !noalias !329
  tail call void @_ZN5arrow8internal16IOErrorFromErrnoIJRA6_KcRA8_S2_S6_EEENS_6StatusEiDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i32 noundef %i.i, ptr noundef nonnull align 1 dereferenceable(6) @.str.2, ptr noundef nonnull align 1 dereferenceable(8) @.str.26, ptr noundef nonnull align 1 dereferenceable(8) @.str.4)
  br label %_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl7GetUsedEPl.exit

bb.c:                                             ; preds = %bb.a
  store i64 %i.f, ptr %2, align 8, !tbaa !101, !noalias !329
  store ptr null, ptr %0, align 8, !tbaa !58, !alias.scope !332
  br label %_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl7GetUsedEPl.exit

_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl7GetUsedEPl.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io16HadoopFileSystem19GetWorkingDirectoryEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !240  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26, !noalias !335
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !236, !noalias !335
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !239, !noalias !335
  %i.g = call noundef ptr @_ZN5arrow2io8internal11LibHdfsShim19GetWorkingDirectoryEP13hdfs_internalPcm(ptr noundef nonnull align 8 dereferenceable(312) %i.d, ptr noundef %i.f, ptr noundef nonnull %i.a, i64 noundef 2047), !noalias !335
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @__errno_location() #28
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3, !noalias !335
  call void @_ZN5arrow8internal16IOErrorFromErrnoIJRA32_KcEEENS_6StatusEiDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i32 noundef %i.j, ptr noundef nonnull align 1 dereferenceable(32) @.str.27)
  br label %_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl19GetWorkingDirectoryEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !27, !noalias !335
  %i.m = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #26, !noalias !335
  %i.n = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.l, ptr noundef nonnull %i.a, i64 noundef %i.m), !noalias !335 ; 0 uses
  store ptr null, ptr %0, align 8, !tbaa !58, !alias.scope !338
  br label %_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl19GetWorkingDirectoryEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl19GetWorkingDirectoryEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !335
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io16HadoopFileSystem11GetChildrenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIS7_SaIS7_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !240
  tail call void @_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl11GetChildrenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIS8_SaIS8_EE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl11GetChildrenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIS8_SaIS8_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector", align 8       ; 12 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl13ListDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorINS0_12HdfsPathInfoESaISC_EE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %4)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.a = load ptr, ptr %5, align 8, !tbaa !58     ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.b = icmp eq ptr %i.a, null
  %.pre28 = load ptr, ptr %4, align 8, !tbaa !341 ; 4 uses
  br i1 %i.b, label %_ZN5arrow6StatusD2Ev.exit19, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.k

_ZN5arrow6StatusD2Ev.exit19:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !341  ; 2 uses
  %i.f = icmp eq ptr %.pre28, %i.e
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit19
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %.pre.pre = load ptr, ptr %4, align 8, !tbaa !343
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN5arrow6StatusD2Ev.exit19
  %.pre = phi ptr [ %.pre.pre, %._crit_edge.loopexit ], [ %.pre28, %_ZN5arrow6StatusD2Ev.exit19 ]
  store ptr null, ptr %0, align 8, !tbaa !58, !alias.scope !345
  br label %.critedge

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %.sroa.024.027 = phi ptr [ %.pre28, %.lr.ph ], [ %i.aa, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.027, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !348  ; 6 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !351
  %.not.i20 = icmp eq ptr %i.j, %i.k
  br i1 %.not.i20, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  store ptr %i.l, ptr %i.j, align 8, !tbaa !24
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !40   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.024.027, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !27   ; 8 uses
  %i.p = icmp ugt i64 %i.o, 15
  br i1 %i.p, label %bb.e, label %._crit_edge.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.q = icmp slt i64 %i.o, 0
  br i1 %i.q, label %.noexc.i.i.i, label %bb.f

.noexc.i.i.i:                                     ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #30
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.r = add nuw i64 %i.o, 1                      ; 2 uses
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %.noexc6.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !69

.noexc6.i.i.i:                                    ; preds = %bb.f
  invoke void @_ZSt17__throw_bad_allocv() #30
          to label %.noexc21 unwind label %.loopexit.split-lp

.noexc21:                                         ; preds = %.noexc6.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.f
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #25
          to label %.noexc22 unwind label %.loopexit ; 2 uses

.noexc22:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.t, ptr %i.j, align 8, !tbaa !40
  store i64 %i.o, ptr %i.l, align 8, !tbaa !29
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc22, %bb.d
  %i.u = phi ptr [ %i.t, %.noexc22 ], [ %i.l, %bb.d ] ; 3 uses
  switch i64 %i.o, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.v = load i8, ptr %i.m, align 1, !tbaa !29
  store i8 %i.v, ptr %i.u, align 1, !tbaa !29
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr align 1 %i.m, i64 %i.o, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i: ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.o, ptr %i.w, align 8, !tbaa !27
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.o
  store i8 0, ptr %i.x, align 1, !tbaa !29
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !348
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store ptr %i.z, ptr %i.g, align 8, !tbaa !348
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.i:                                             ; preds = %bb.c
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %.loopexit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.024.027, i64 136 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.e
  br i1 %i.ab, label %._crit_edge.loopexit, label %bb.c

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i, %.noexc6.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit, %._crit_edge
  %i.ac = phi ptr [ %.pre28, %_ZN5arrow6StatusD2Ev.exit ], [ %.pre, %._crit_edge ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !352 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5arrow2io12HdfsPathInfoES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.critedge, %_ZSt8_DestroyIN5arrow2io12HdfsPathInfoEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ax, %_ZSt8_DestroyIN5arrow2io12HdfsPathInfoEEvPT_.exit.i.i.i ], [ %i.ac, %.critedge ] ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 72
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !40 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 88 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !29
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !40 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !29
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !40 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZSt8_DestroyIN5arrow2io12HdfsPathInfoEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i
  %i.av = load i64, ptr %i.at, align 8, !tbaa !29
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #27
  br label %_ZSt8_DestroyIN5arrow2io12HdfsPathInfoEEvPT_.exit.i.i.i

_ZSt8_DestroyIN5arrow2io12HdfsPathInfoEEvPT_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 136 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ax, %i.ae
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow2io12HdfsPathInfoES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !353

_ZSt8_DestroyIPN5arrow2io12HdfsPathInfoES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5arrow2io12HdfsPathInfoEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !343
  br label %_ZSt8_DestroyIPN5arrow2io12HdfsPathInfoES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5arrow2io12HdfsPathInfoES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5arrow2io12HdfsPathInfoES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %.critedge
  %i.ay = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5arrow2io12HdfsPathInfoES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.ac, %.critedge ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5arrow2io12HdfsPathInfoESaIS2_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPN5arrow2io12HdfsPathInfoES2_EvT_S4_RSaIT0_E.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !354
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = sub i64 %i.bb, %i.bc
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bd) #27
  br label %_ZNSt6vectorIN5arrow2io12HdfsPathInfoESaIS2_EED2Ev.exit

_ZNSt6vectorIN5arrow2io12HdfsPathInfoESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow2io12HdfsPathInfoES2_EvT_S4_RSaIT0_E.exit.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void

bb.k:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.b
  %.pn14 = phi { ptr, i32 } [ %i.c, %bb.b ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorIN5arrow2io12HdfsPathInfoESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %.pn14
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io16HadoopFileSystem13ListDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorINS0_12HdfsPathInfoESaISB_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !240
  tail call void @_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl13ListDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorINS0_12HdfsPathInfoESaISC_EE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl13ListDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorINS0_12HdfsPathInfoESaISC_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.b = tail call ptr @__errno_location() #28    ; 3 uses
  store i32 0, ptr %i.b, align 4, !tbaa !3
  %i.c = load ptr, ptr %1, align 8, !tbaa !236
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !239
  %i.f = load ptr, ptr %2, align 8, !tbaa !40
  %i.g = call noundef ptr @_ZN5arrow2io8internal11LibHdfsShim13ListDirectoryEP13hdfs_internalPKcPi(ptr noundef nonnull align 8 dereferenceable(312) %i.c, ptr noundef %i.e, ptr noundef %i.f, ptr noundef nonnull %i.a) ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %._crit_edge19

._crit_edge19:                                    ; preds = %bb.a
  %.pre = load i32, ptr %i.a, align 4, !tbaa !3
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr %i.b, align 4, !tbaa !3    ; 2 uses
  switch i32 %i.i, label %bb.e [
    i32 0, label %bb.d
    i32 2, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %1, align 8, !tbaa !236
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !239
  %i.l = load ptr, ptr %2, align 8, !tbaa !40
  %i.m = call noundef i32 @_ZN5arrow2io8internal11LibHdfsShim6ExistsEP13hdfs_internalPKc(ptr noundef nonnull align 8 dereferenceable(312) %i.j, ptr noundef %i.k, ptr noundef %i.l)
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %._crit_edge20

._crit_edge20:                                    ; preds = %bb.c
  %.pre21 = load i32, ptr %i.b, align 4, !tbaa !3
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.c
  store i32 0, ptr %i.a, align 4, !tbaa !3
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge20, %bb.b
  %i.o = phi i32 [ %.pre21, %._crit_edge20 ], [ %i.i, %bb.b ]
  call void @_ZN5arrow8internal16IOErrorFromErrnoIJRA27_KcEEENS_6StatusEiDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i32 noundef %i.o, ptr noundef nonnull align 1 dereferenceable(27) @.str.29)
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge19, %bb.d
  %i.p = phi i32 [ %.pre, %._crit_edge19 ], [ 0, %bb.d ]
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !352
  %i.s = load ptr, ptr %3, align 8, !tbaa !343
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = sdiv exact i64 %i.v, 136                 ; 2 uses
  %i.x = trunc i64 %i.w to i32
  %i.y = add nsw i32 %i.p, %i.x
  %i.z = sext i32 %i.y to i64
  call void @_ZNSt6vectorIN5arrow2io12HdfsPathInfoESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.z)
  %i.aa = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.f
  %sext = shl i64 %i.w, 32
  %i.ac = ashr exact i64 %sext, 32
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.f
  %.lcssa = phi i32 [ %i.aa, %bb.f ], [ %i.ai, %.lr.ph ]
  %i.ad = load ptr, ptr %1, align 8, !tbaa !236
  call void @_ZN5arrow2io8internal11LibHdfsShim12FreeFileInfoEP12hdfsFileInfoi(ptr noundef nonnull align 8 dereferenceable(312) %i.ad, ptr noundef %i.g, i32 noundef %.lcssa)
  store ptr null, ptr %0, align 8, !tbaa !58, !alias.scope !355
  br label %bb.g

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [80 x i8], ptr %i.g, i64 %indvars.iv
  %i.af = load ptr, ptr %3, align 8, !tbaa !343
  %i.ag = getelementptr [136 x i8], ptr %i.af, i64 %indvars.iv
  %i.ah = getelementptr [136 x i8], ptr %i.ag, i64 %i.ac
  call fastcc void @_ZN5arrow2ioL11SetPathInfoEPK12hdfsFileInfoPNS0_12HdfsPathInfoE(ptr noundef %i.ae, ptr noundef nonnull %i.ah)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ai = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp slt i64 %indvars.iv.next, %i.aj
  br i1 %i.ak, label %.lr.ph, label %._crit_edge, !llvm.loop !358

bb.g:                                             ; preds = %._crit_edge, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io16HadoopFileSystem12OpenReadableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiPSt10shared_ptrINS0_16HdfsReadableFileEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !240
  %i.c = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN5arrow2io18default_io_contextEv()
  tail call void @_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl12OpenReadableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiRKNS0_9IOContextEPSt10shared_ptrINS0_16HdfsReadableFileEE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl12OpenReadableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiRKNS0_9IOContextEPSt10shared_ptrINS0_16HdfsReadableFileEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::shared_ptr.124", align 16 ; 7 uses
  %i.a = tail call ptr @__errno_location() #28    ; 2 uses
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.b = load ptr, ptr %1, align 8, !tbaa !236
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !239
  %i.e = load ptr, ptr %2, align 8, !tbaa !40
  %i.f = tail call noundef ptr @_ZN5arrow2io8internal11LibHdfsShim8OpenFileEP13hdfs_internalPKciisi(ptr noundef nonnull align 8 dereferenceable(312) %i.b, ptr noundef %i.d, ptr noundef %i.e, i32 noundef 0, i32 noundef %3, i16 noundef signext 0, i32 noundef 0) ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.a, align 4, !tbaa !3
  tail call void @_ZN5arrow8internal16IOErrorFromErrnoIJRA20_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA9_S2_EEENS_6StatusEiDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i32 noundef %i.h, ptr noundef nonnull align 1 dereferenceable(20) @.str.31, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(9) @.str.15)
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.i = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #25 ; 11 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5arrow2io13FileInterfaceE, i64 16), ptr %i.j, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store i32 0, ptr %i.l, align 8, !tbaa !41
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5arrow2io8ReadableE, i64 16), ptr %i.i, align 8, !tbaa !7
  invoke void @_ZN5arrow2io16RandomAccessFileC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN5arrow2io16HdfsReadableFileE, i64 8))
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-64, 56) (i8, ptr @_ZTVN5arrow2io16HdfsReadableFileE, i64 320), ptr %i.j, align 8, !tbaa !7
  store ptr getelementptr inbounds nuw inrange(-64, 152) (i8, ptr @_ZTVN5arrow2io16HdfsReadableFileE, i64 64), ptr %i.i, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow2io16HdfsReadableFileE, i64 232), ptr %i.m, align 8, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 3 uses
  store ptr null, ptr %i.n, align 8, !tbaa !9
  %i.o = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #25
          to label %bb.g unwind label %bb.f       ; 6 uses

bb.e:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt10unique_ptrIN5arrow2io16HdfsReadableFile20HdfsReadableFileImplESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #26
  tail call void @_ZN5arrow2io16RandomAccessFileD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN5arrow2io16HdfsReadableFileE, i64 8)) #26
  br label %.body

.body:                                            ; preds = %bb.f, %bb.e
  %.pn.i = phi { ptr, i32 } [ %i.q, %bb.f ], [ %i.p, %bb.e ]
  tail call void @_ZN5arrow2io13FileInterfaceD2Ev(ptr noundef nonnull align 8 dereferenceable(28) %i.j) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 64) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  resume { ptr, i32 } %.pn.i

bb.g:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %4, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  store ptr %i.s, ptr %i.o, align 8, !tbaa !24
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 0, ptr %i.t, align 8, !tbaa !27
  store i8 0, ptr %i.s, align 8, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.u, i8 0, i64 40, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  store ptr %i.r, ptr %i.v, align 8, !tbaa !30
  store ptr %i.o, ptr %i.n, align 8, !tbaa !39
  call void @_ZNSt12__shared_ptrIN5arrow2io16HdfsReadableFileELN9__gnu_cxx12_Lock_policyE2EEC2IS2_vEEPT_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %i.i)
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.y = load <2 x ptr>, ptr %6, align 16, !tbaa !129
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !249  ; 8 uses
  store <2 x ptr> %i.y, ptr %5, align 8, !tbaa !129
  %.not.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow2io16HdfsReadableFileEEaSEOS3_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  %i.ab = load atomic i64, ptr %i.aa acquire, align 8 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 4294967297
  %i.ad = trunc i64 %i.ab to i32                  ; 2 uses
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.aa, align 8, !tbaa !242
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i32 0, ptr %i.ae, align 4, !tbaa !244
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !7
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #26, !inline_history !359
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !7
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #26, !inline_history !359
  br label %_ZNSt10shared_ptrIN5arrow2io16HdfsReadableFileEEaSEOS3_.exit

bb.j:                                             ; preds = %bb.h
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i.i.i = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = add nsw i32 %i.ad, -1
  store i32 %i.am, ptr %i.aa, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.an = atomicrmw volatile add ptr %i.aa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i = phi i32 [ %i.ad, %bb.k ], [ %i.an, %bb.l ]
  %i.ao = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ao, label %bb.m, label %_ZNSt10shared_ptrIN5arrow2io16HdfsReadableFileEEaSEOS3_.exit, !prof !69

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #26
  br label %_ZNSt10shared_ptrIN5arrow2io16HdfsReadableFileEEaSEOS3_.exit

_ZNSt10shared_ptrIN5arrow2io16HdfsReadableFileEEaSEOS3_.exit: ; preds = %bb.g, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.m
  %i.ap = load ptr, ptr %i.w, align 8, !tbaa !249 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow2io16HdfsReadableFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt10shared_ptrIN5arrow2io16HdfsReadableFileEEaSEOS3_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 4 uses
  %i.ar = load atomic i64, ptr %i.aq acquire, align 8 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 4294967297
  %i.at = trunc i64 %i.ar to i32                  ; 2 uses
  br i1 %i.as, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.aq, align 8, !tbaa !242
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  store i32 0, ptr %i.au, align 4, !tbaa !244
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !7
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #26, !inline_history !360
  %i.ay = load ptr, ptr %i.ap, align 8, !tbaa !7
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #26, !inline_history !360
  br label %_ZNSt12__shared_ptrIN5arrow2io16HdfsReadableFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.bb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = add nsw i32 %i.at, -1
  store i32 %i.bc, ptr %i.aq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.bd = atomicrmw volatile add ptr %i.aq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i = phi i32 [ %i.at, %bb.q ], [ %i.bd, %bb.r ]
  %i.be = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.be, label %bb.s, label %_ZNSt12__shared_ptrIN5arrow2io16HdfsReadableFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #26
  br label %_ZNSt12__shared_ptrIN5arrow2io16HdfsReadableFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

end_hunk_2
