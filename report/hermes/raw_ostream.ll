inline.NumInlined: 299
inline.NumDeleted: 139
begin_hunk_0_@_ZN4llvh14raw_fd_ostream11changeColorENS_11raw_ostream6ColorsEbb:bb.a
  %i.p = phi ptr [ %i.m, %bb.d ], [ %i.o, %bb.e ] ; 3 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #30 ; 2 uses
  %i.r = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %i.p, i64 noundef %i.q) ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !120
  %i.u = sub i64 %i.t, %i.q
  store i64 %i.u, ptr %i.s, align 8, !tbaa !120
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret ptr %0
}

declare noundef zeroext i1 @_ZN4llvh3sys7Process15ColorNeedsFlushEv() local_unnamed_addr #6

declare noundef ptr @_ZN4llvh3sys7Process10OutputBoldEb(i1 noundef zeroext) local_unnamed_addr #6

declare noundef ptr @_ZN4llvh3sys7Process11OutputColorEcbb(i8 noundef signext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh14raw_fd_ostream10resetColorEv(ptr noundef nonnull returned align 8 dereferenceable(72) %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4llvh3sys7Process15ColorNeedsFlushEv() #26
  br i1 %i.a, label %bb.b, label %_ZN4llvh11raw_ostream5flushEv.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14   ; 4 uses
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %_ZN4llvh11raw_ostream5flushEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  store ptr %i.e, ptr %i.b, align 8, !tbaa !9
  %i.i = load ptr, ptr %0, align 8, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %i.e, i64 noundef %i.h) #26, !inline_history !131
  br label %_ZN4llvh11raw_ostream5flushEv.exit

_ZN4llvh11raw_ostream5flushEv.exit:               ; preds = %bb.c, %bb.b, %bb.a
  %i.l = tail call noundef ptr @_ZN4llvh3sys7Process10ResetColorEv() #26 ; 3 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4llvh11raw_ostream5flushEv.exit
  %i.m = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.l) #30 ; 2 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %i.l, i64 noundef %i.m) ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !120
  %i.q = sub i64 %i.p, %i.m
  store i64 %i.q, ptr %i.o, align 8, !tbaa !120
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN4llvh11raw_ostream5flushEv.exit
  ret ptr %0
}

declare noundef ptr @_ZN4llvh3sys7Process10ResetColorEv() local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh14raw_fd_ostream12reverseColorEv(ptr noundef nonnull returned align 8 dereferenceable(72) %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4llvh3sys7Process15ColorNeedsFlushEv() #26
  br i1 %i.a, label %bb.b, label %_ZN4llvh11raw_ostream5flushEv.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14   ; 4 uses
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %_ZN4llvh11raw_ostream5flushEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  store ptr %i.e, ptr %i.b, align 8, !tbaa !9
  %i.i = load ptr, ptr %0, align 8, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %i.e, i64 noundef %i.h) #26, !inline_history !131
  br label %_ZN4llvh11raw_ostream5flushEv.exit

_ZN4llvh11raw_ostream5flushEv.exit:               ; preds = %bb.c, %bb.b, %bb.a
  %i.l = tail call noundef ptr @_ZN4llvh3sys7Process13OutputReverseEv() #26 ; 3 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4llvh11raw_ostream5flushEv.exit
  %i.m = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.l) #30 ; 2 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %i.l, i64 noundef %i.m) ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !120
  %i.q = sub i64 %i.p, %i.m
  store i64 %i.q, ptr %i.o, align 8, !tbaa !120
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN4llvh11raw_ostream5flushEv.exit
  ret ptr %0
}

declare noundef ptr @_ZN4llvh3sys7Process13OutputReverseEv() local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK4llvh14raw_fd_ostream12is_displayedEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !112
  %i.c = tail call noundef zeroext i1 @_ZN4llvh3sys7Process25FileDescriptorIsDisplayedEi(i32 noundef %i.b) #26
  ret i1 %i.c
}

declare noundef zeroext i1 @_ZN4llvh3sys7Process25FileDescriptorIsDisplayedEi(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK4llvh14raw_fd_ostream10has_colorsEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !112
  %i.c = tail call noundef zeroext i1 @_ZN4llvh3sys7Process23FileDescriptorHasColorsEi(i32 noundef %i.b) #26
  ret i1 %i.c
}

declare noundef zeroext i1 @_ZN4llvh3sys7Process23FileDescriptorHasColorsEi(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN4llvh14raw_fd_ostream6anchorEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #3 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4outsEv() local_unnamed_addr #4 {
bb.a:
  %0 = alloca %"class.std::error_code", align 8   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  %i.a = load atomic i8, ptr @_ZGVZN4llvh4outsEvE1S acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !138

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4llvh4outsEvE1S) #26
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvh14raw_fd_ostreamC2ENS_9StringRefERSt10error_codeNS_3sys2fs19CreationDispositionENS5_10FileAccessENS5_9OpenFlagsE(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4llvh4outsEvE1S, ptr nonnull @.str.1, i64 1, ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 0, i32 noundef 2, i32 noundef 0)
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvh14raw_fd_ostreamD2Ev, ptr nonnull @_ZZN4llvh4outsEvE1S, ptr nonnull @__dso_handle) #26 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4llvh4outsEvE1S) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  ret ptr @_ZZN4llvh4outsEvE1S
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #16

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() local_unnamed_addr #4 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4llvh4errsEvE1S acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !138

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4llvh4errsEvE1S) #26
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvh14raw_fd_ostreamC2Eibb(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4llvh4errsEvE1S, i32 noundef 2, i1 noundef zeroext false, i1 noundef zeroext true)
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvh14raw_fd_ostreamD2Ev, ptr nonnull @_ZZN4llvh4errsEvE1S, ptr nonnull @__dso_handle) #26 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4llvh4errsEvE1S) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret ptr @_ZZN4llvh4errsEvE1S
}

; Function Attrs: mustprogress nofree nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh5nullsEv() local_unnamed_addr #11 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4llvh5nullsEvE1S acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !138

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4llvh5nullsEvE1S) #26
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4llvh5nullsEvE1S, i64 32), align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN4llvh5nullsEvE1S, i64 8), i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4llvh16raw_null_ostreamE, i64 16), ptr @_ZZN4llvh5nullsEvE1S, align 8, !tbaa !7
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvh16raw_null_ostreamD2Ev, ptr nonnull @_ZZN4llvh5nullsEvE1S, ptr nonnull @__dso_handle) #26 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4llvh5nullsEvE1S) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret ptr @_ZZN4llvh5nullsEvE1S
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh18raw_string_ostreamD2Ev(ptr noundef nonnull align 8 captures(none) dereferenceable(48) initializes((0, 8)) %0) unnamed_addr #4 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh18raw_string_ostreamE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14   ; 4 uses
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %_ZN4llvh11raw_ostream5flushEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !139, !nonnull !79, !align !142 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !130
  %i.l = sub i64 4611686018427387903, %i.k
  %i.m = icmp ult i64 %i.l, %i.g
  br i1 %i.m, label %bb.c, label %_ZN4llvh18raw_string_ostream10write_implEPKcm.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #25
  unreachable

_ZN4llvh18raw_string_ostream10write_implEPKcm.exit: ; preds = %bb.b
  %i.n = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef %i.d, i64 noundef %i.g) #26 ; 0 uses
  br label %_ZN4llvh11raw_ostream5flushEv.exit

_ZN4llvh11raw_ostream5flushEv.exit:               ; preds = %bb.a, %_ZN4llvh18raw_string_ostream10write_implEPKcm.exit
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh11raw_ostreamE, i64 16), ptr %0, align 8, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !16
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %bb.d, label %_ZN4llvh11raw_ostreamD2Ev.exit

bb.d:                                             ; preds = %_ZN4llvh11raw_ostream5flushEv.exit
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !14   ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZN4llvh11raw_ostreamD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.r) #28, !inline_history !86
  br label %_ZN4llvh11raw_ostreamD2Ev.exit

_ZN4llvh11raw_ostreamD2Ev.exit:                   ; preds = %_ZN4llvh11raw_ostream5flushEv.exit, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh18raw_string_ostreamD0Ev(ptr noundef nonnull align 8 dereferenceable(48) initializes((0, 8)) %0) unnamed_addr #4 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh18raw_string_ostreamE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14   ; 4 uses
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %_ZN4llvh11raw_ostream5flushEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !139, !nonnull !79, !align !142 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !130
  %i.l = sub i64 4611686018427387903, %i.k
  %i.m = icmp ult i64 %i.l, %i.g
  br i1 %i.m, label %bb.c, label %_ZN4llvh18raw_string_ostream10write_implEPKcm.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #25, !inline_history !143
  unreachable

_ZN4llvh18raw_string_ostream10write_implEPKcm.exit.i: ; preds = %bb.b
  %i.n = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef %i.d, i64 noundef %i.g) #26, !inline_history !143 ; 0 uses
  br label %_ZN4llvh11raw_ostream5flushEv.exit.i

_ZN4llvh11raw_ostream5flushEv.exit.i:             ; preds = %_ZN4llvh18raw_string_ostream10write_implEPKcm.exit.i, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh11raw_ostreamE, i64 16), ptr %0, align 8, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !16
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %bb.d, label %_ZN4llvh18raw_string_ostreamD2Ev.exit

bb.d:                                             ; preds = %_ZN4llvh11raw_ostream5flushEv.exit.i
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !14   ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZN4llvh18raw_string_ostreamD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.r) #28, !inline_history !144
  br label %_ZN4llvh18raw_string_ostreamD2Ev.exit

_ZN4llvh18raw_string_ostreamD2Ev.exit:            ; preds = %_ZN4llvh11raw_ostream5flushEv.exit.i, %bb.d, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh18raw_string_ostream10write_implEPKcm(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !139, !nonnull !79, !align !142 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !130
  %i.e = sub i64 4611686018427387903, %i.d
  %i.f = icmp ult i64 %i.e, %2
  br i1 %i.f, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %bb.a
  %i.g = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef %1, i64 noundef %2) #26 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i64 0, 4294967296) i64 @_ZNK4llvh19raw_svector_ostream11current_posEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !145, !nonnull !79, !align !142
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !30
  %i.e = zext i32 %i.d to i64
  ret i64 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh19raw_svector_ostream10write_implEPKcm(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !145, !nonnull !79, !align !142 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !31
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !30   ; 3 uses
  %i.h = zext i32 %i.g to i64                     ; 2 uses
  %i.i = sub nsw i64 %i.e, %i.h
  %i.j = icmp ugt i64 %2, %i.i
  br i1 %i.j, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.k = add i64 %2, %i.h
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.l, i64 noundef %i.k, i64 noundef 1) #26
  %.pre7.pre.i = load i32, ptr %i.f, align 8, !tbaa !30
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp samesign eq i64 %2, 0
  br i1 %.not.i.i, label %_ZN4llvh15SmallVectorImplIcE6appendIPKcvEEvT_S5_.exit, label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %.pre7.i5 = phi i32 [ %.pre7.pre.i, %.thread ], [ %i.g, %bb.b ]
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.n = zext i32 %.pre7.i5 to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %1, i64 %2, i1 false)
  %.pre.i = load i32, ptr %i.f, align 8, !tbaa !30
  br label %_ZN4llvh15SmallVectorImplIcE6appendIPKcvEEvT_S5_.exit

_ZN4llvh15SmallVectorImplIcE6appendIPKcvEEvT_S5_.exit: ; preds = %bb.b, %bb.c
  %i.p = phi i32 [ %i.g, %bb.b ], [ %.pre.i, %bb.c ]
  %i.q = trunc i64 %2 to i32
  %i.r = add i32 %i.p, %i.q
  store i32 %i.r, ptr %i.f, align 8, !tbaa !30
  ret void
}
end_hunk_0
