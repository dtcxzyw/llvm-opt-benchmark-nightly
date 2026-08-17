inline.NumInlined: 10
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN11ComprDataIO11ShowUnpReadEll:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36   ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.g = load i64, ptr %i.f, align 8, !tbaa !85
  %i.h = add nsw i64 %i.g, %1                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 11056
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !86
  %i.k = tail call noundef i32 @_Z9ToPercentll(i64 noundef %i.h, i64 noundef %2) ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 57428
  %i.m = load i8, ptr %i.l, align 4, !tbaa !87, !range !34, !noundef !35
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !32
  %.not11 = icmp eq i32 %i.k, %i.p
  br i1 %.not11, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.r = load i64, ptr %i.q, align 8, !tbaa !100
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 22272
  %i.t = load i64, ptr %i.s, align 8, !tbaa !101
  tail call void @_Z17uiExtractProgressllll(i64 noundef %i.r, i64 noundef %i.t, i64 noundef %i.h, i64 noundef %2)
  store i32 %i.k, ptr %i.o, align 8, !tbaa !32
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.b, %bb.a
  ret void
}

declare void @_ZN9CryptData12DecryptBlockEPhm(ptr noundef nonnull align 8 dereferenceable(2516), ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_Z4Waitv() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN11ComprDataIO8UnpWriteEPhm(ptr noundef nonnull align 8 dereferenceable(266) initializes((48, 64)) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 11056
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !86   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 83420
  %i.f = load i32, ptr %i.e, align 4, !tbaa !102
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 83440
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !103  ; 2 uses
  %.not25 = icmp eq ptr %i.h, null
  br i1 %.not25, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 83432
  %i.j = load i64, ptr %i.i, align 8, !tbaa !104
  %i.k = ptrtoint ptr %1 to i64
  %i.l = tail call noundef i32 %i.h(i32 noundef 1, i64 noundef %i.j, i64 noundef %i.k, i64 noundef %2)
  %i.m = icmp eq i32 %i.l, -1
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN12ErrorHandler4ExitE8RAR_EXIT(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, i32 noundef 255)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 83456
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !105  ; 2 uses
  %.not26 = icmp eq ptr %i.o, null
  br i1 %.not26, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = trunc i64 %2 to i32
  %i.q = tail call noundef i32 %i.o(ptr noundef %1, i32 noundef %i.p)
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN12ErrorHandler4ExitE8RAR_EXIT(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, i32 noundef 255)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %1, ptr %i.s, align 8, !tbaa !106
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %2, ptr %i.t, align 8, !tbaa !107
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load i8, ptr %i.u, align 8, !tbaa !25, !range !34, !noundef !35
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !108
  %.not27 = icmp ugt i64 %2, %i.y
  br i1 %.not27, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !109
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %1, i64 %2, i1 false)
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !109
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %2
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !109
  %i.ad = load i64, ptr %i.x, align 8, !tbaa !108
  %i.ae = sub i64 %i.ad, %2
  store i64 %i.ae, ptr %i.x, align 8, !tbaa !108
  br label %bb.m

bb.k:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 81
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !110, !range !34, !noundef !35
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !111
  %i.ak = tail call noundef zeroext i1 @_ZN4File5WriteEPKvm(ptr noundef nonnull align 8 dereferenceable(8256) %i.aj, ptr noundef %1, i64 noundef %2) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.i, %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !100
  %i.an = add i64 %i.am, %2
  store i64 %i.an, ptr %i.al, align 8, !tbaa !100
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 82
  %i.ap = load i8, ptr %i.ao, align 2, !tbaa !112, !range !34, !noundef !35
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 248
  tail call void @_ZN8DataHash6UpdateEPKvm(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef %1, i64 noundef %2)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  tail call void @_Z4Waitv()
  ret void
}

declare void @_ZN12ErrorHandler4ExitE8RAR_EXIT(ptr noundef nonnull align 4 dereferenceable(14), i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN4File5WriteEPKvm(ptr noundef nonnull align 8 dereferenceable(8256), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN11ComprDataIO12ShowUnpWriteEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(266) %0) local_unnamed_addr #9 align 2 {
bb.a:
  ret void
}

declare noundef i32 @_Z9ToPercentll(i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @_Z17uiExtractProgressllll(i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN11ComprDataIO8SetFilesEP4FileS1_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(266) initializes((144, 148)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %1, ptr %i.a, align 8, !tbaa !36
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not6 = icmp eq ptr %2, null
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %2, ptr %i.b, align 8, !tbaa !111
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 -1, ptr %i.c, align 8, !tbaa !32
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN11ComprDataIO15GetUnpackedDataEPPhPm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(266) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106
  store ptr %i.b, ptr %1, align 8, !tbaa !113
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8, !tbaa !107
  store i64 %i.d, ptr %2, align 8, !tbaa !114
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN11ComprDataIO13SetEncryptionEb12CRYPT_METHODP11SecPasswordPKhS4_jPhS5_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(266) %0, i1 noundef zeroext %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #0 align 2 {
bb.a:
  %. = select i1 %1, i64 128, i64 136
  %.22 = select i1 %1, i64 264, i64 265
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115
  %i.c = tail call noundef zeroext i1 @_ZN9CryptData12SetCryptKeysEb12CRYPT_METHODP11SecPasswordPKhS4_jPhS5_(ptr noundef nonnull align 8 dereferenceable(2516) %i.b, i1 noundef zeroext %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.22
  %i.e = zext i1 %i.c to i8
  store i8 %i.e, ptr %i.d, align 1, !tbaa !26
  ret void
}

declare noundef zeroext i1 @_ZN9CryptData12SetCryptKeysEb12CRYPT_METHODP11SecPasswordPKhS4_jPhS5_(ptr noundef nonnull align 8 dereferenceable(2516), i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN11ComprDataIO17SetAV15EncryptionEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(266) initializes((265, 266)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 265
  store i8 1, ptr %i.a, align 1, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23
  tail call void @_ZN9CryptData17SetAV15EncryptionEv(ptr noundef nonnull align 8 dereferenceable(2516) %i.c)
  ret void
}

declare void @_ZN9CryptData17SetAV15EncryptionEv(ptr noundef nonnull align 8 dereferenceable(2516)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN11ComprDataIO18SetCmt13EncryptionEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(266) initializes((265, 266)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 265
  store i8 1, ptr %i.a, align 1, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23
  tail call void @_ZN9CryptData18SetCmt13EncryptionEv(ptr noundef nonnull align 8 dereferenceable(2516) %i.c)
  ret void
}

declare void @_ZN9CryptData18SetCmt13EncryptionEv(ptr noundef nonnull align 8 dereferenceable(2516)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN11ComprDataIO17SetUnpackToMemoryEPhj(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(266) initializes((24, 25), (32, 48)) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.a, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.b, align 8, !tbaa !109
  %i.c = zext i32 %2 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.c, ptr %i.d, align 8, !tbaa !108
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN11ComprDataIO18AdjustTotalArcSizeEP7Archive(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(266) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !116
  %.not12 = icmp eq i32 %i.b, 1
  br i1 %.not12, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @_ZN4File10FileLengthEv(ptr noundef nonnull align 8 dereferenceable(8256) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ]    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 13840
  %i.f = load i64, ptr %i.e, align 8, !tbaa !117  ; 3 uses
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 %i.f, ptr %i.g, align 8, !tbaa !118
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 13856
  %i.i = load i64, ptr %i.h, align 8, !tbaa !119  ; 3 uses
  %.not11 = icmp eq i64 %i.i, 0
  br i1 %.not11, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 %i.i, ptr %i.j, align 8, !tbaa !118
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.k = icmp sgt i64 %i.d, 23
  br i1 %i.k, label %bb.h, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !118
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.l = add nsw i64 %i.d, -23                    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 %i.l, ptr %i.m, align 8, !tbaa !118
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.h, %bb.f, %bb.d
  %i.n = phi i64 [ %.pre, %._crit_edge ], [ %i.l, %bb.h ], [ %i.i, %bb.f ], [ %i.f, %bb.d ]
  %.neg = sub i64 %i.n, %i.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !56
  %i.q = add i64 %.neg, %i.p
  store i64 %i.q, ptr %i.o, align 8, !tbaa !56
  ret void
}

declare noundef i64 @_ZN4File10FileLengthEv(ptr noundef nonnull align 8 dereferenceable(8256)) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #17 ; 0 uses
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZN11SecPasswordD1Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25)) unnamed_addr #5

declare void @_Z9cleandataPvm(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { builtin allocsize(0) }
attributes #16 = { builtin nounwind }
attributes #17 = { nounwind }
attributes #18 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !18, i64 128}
!9 = !{!"_ZTS11ComprDataIO", !10, i64 0, !11, i64 8, !12, i64 16, !10, i64 24, !11, i64 32, !12, i64 40, !11, i64 48, !12, i64 56, !11, i64 64, !11, i64 72, !10, i64 80, !10, i64 81, !10, i64 82, !10, i64 83, !14, i64 88, !14, i64 96, !15, i64 104, !16, i64 112, !17, i64 120, !18, i64 128, !18, i64 136, !5, i64 144, !19, i64 148, !10, i64 152, !10, i64 153, !10, i64 154, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !20, i64 216, !20, i64 232, !20, i64 248, !10, i64 264, !10, i64 265}
!10 = !{!"bool", !6, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!"p1 omnipotent char", !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!"p1 _ZTS4File", !13, i64 0}
!15 = !{!"p1 _ZTS6CmdAdd", !13, i64 0}
!16 = !{!"p1 _ZTS10FileHeader", !13, i64 0}
!17 = !{!"p1 long", !13, i64 0}
!18 = !{!"p1 _ZTS9CryptData", !13, i64 0}
!19 = !{!"wchar_t", !6, i64 0}
!20 = !{!"_ZTS8DataHash", !21, i64 0, !5, i64 4, !22, i64 8}
!21 = !{!"_ZTS9HASH_TYPE", !6, i64 0}
!22 = !{!"p1 _ZTS14blake2sp_state", !13, i64 0}
!23 = !{!9, !18, i64 136}
!24 = !{!9, !10, i64 0}
!25 = !{!9, !10, i64 24}
!26 = !{!10, !10, i64 0}
!27 = !{!9, !10, i64 152}
!28 = !{!9, !10, i64 153}
!29 = !{!9, !10, i64 154}
!30 = !{!9, !10, i64 264}
!31 = !{!9, !10, i64 265}
!32 = !{!9, !5, i64 144}
!33 = !{!9, !19, i64 148}
!34 = !{i8 0, i8 2}
!35 = !{}
!36 = !{!9, !14, i64 88}
!37 = !{!9, !12, i64 16}
!38 = !{!9, !11, i64 8}
!39 = !{!9, !11, i64 72}
!40 = !{!41, !41, i64 0}
!41 = !{!"vtable pointer", !7, i64 0}
!42 = !{!9, !10, i64 83}
!43 = !{!9, !16, i64 112}
!44 = !{!45, !10, i64 8353}
!45 = !{!"_ZTS10FileHeader", !46, i64 0, !6, i64 24, !5, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !49, i64 8232, !50, i64 8264, !50, i64 8272, !50, i64 8280, !11, i64 8288, !11, i64 8296, !11, i64 8304, !51, i64 8312, !5, i64 8348, !10, i64 8352, !10, i64 8353, !10, i64 8354, !10, i64 8355, !52, i64 8356, !10, i64 8360, !6, i64 8361, !6, i64 8377, !10, i64 8393, !6, i64 8394, !10, i64 8402, !6, i64 8403, !5, i64 8436, !10, i64 8440, !10, i64 8441, !10, i64 8442, !10, i64 8443, !11, i64 8448, !10, i64 8456, !10, i64 8457, !10, i64 8458, !53, i64 8460, !54, i64 8464, !6, i64 8468, !10, i64 16660, !10, i64 16661, !10, i64 16662, !10, i64 16663, !6, i64 16664, !6, i64 16920, !5, i64 17176, !5, i64 17180}
!46 = !{!"_ZTS11BlockHeader", !47, i64 0, !5, i64 20}
!47 = !{!"_ZTS9BaseBlock", !5, i64 0, !48, i64 4, !5, i64 8, !5, i64 12, !10, i64 16}
!48 = !{!"_ZTS11HEADER_TYPE", !6, i64 0}
!49 = !{!"_ZTS5ArrayIhE", !12, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!50 = !{!"_ZTS7RarTime", !11, i64 0}
!51 = !{!"_ZTS9HashValue", !21, i64 0, !6, i64 4}
!52 = !{!"_ZTS12CRYPT_METHOD", !6, i64 0}
!53 = !{!"_ZTS16HOST_SYSTEM_TYPE", !6, i64 0}
!54 = !{!"_ZTS20FILE_SYSTEM_REDIRECT", !6, i64 0}
!55 = !{!9, !11, i64 176}
!56 = !{!9, !11, i64 208}
!57 = !{!9, !10, i64 80}
!58 = !{!59, !11, i64 48832}
!59 = !{!"_ZTS7Archive", !60, i64 0, !64, i64 8256, !9, i64 10776, !10, i64 11048, !66, i64 11056, !50, i64 11064, !5, i64 11072, !48, i64 11076, !10, i64 11080, !67, i64 11088, !10, i64 13768, !47, i64 13772, !70, i64 13792, !71, i64 13808, !76, i64 13920, !45, i64 13976, !77, i64 31160, !78, i64 31192, !45, i64 31224, !79, i64 48408, !80, i64 48436, !81, i64 48476, !82, i64 48516, !11, i64 48824, !11, i64 48832, !83, i64 48840, !10, i64 48844, !10, i64 48845, !10, i64 48846, !10, i64 48847, !10, i64 48848, !10, i64 48849, !10, i64 48850, !10, i64 48851, !10, i64 48852, !11, i64 48856, !10, i64 48864, !10, i64 48865, !6, i64 48866, !10, i64 48882, !5, i64 48884, !11, i64 48888, !11, i64 48896, !11, i64 48904, !10, i64 48912, !6, i64 48916}
!60 = !{!"_ZTS4File", !11, i64 8, !10, i64 16, !61, i64 20, !10, i64 24, !10, i64 25, !62, i64 28, !10, i64 32, !10, i64 33, !10, i64 34, !10, i64 35, !10, i64 36, !11, i64 40, !10, i64 48, !6, i64 52, !63, i64 8244, !12, i64 8248}
!61 = !{!"_ZTS15FILE_HANDLETYPE", !6, i64 0}
!62 = !{!"_ZTS20FILE_READ_ERROR_MODE", !6, i64 0}
!63 = !{!"_ZTS14FILE_ERRORTYPE", !6, i64 0}
!64 = !{!"_ZTS9CryptData", !6, i64 0, !5, i64 320, !6, i64 328, !5, i64 936, !52, i64 940, !65, i64 944, !6, i64 1208, !6, i64 2232, !6, i64 2488, !6, i64 2504, !6, i64 2508}
!65 = !{!"_ZTS8Rijndael", !10, i64 0, !5, i64 4, !6, i64 8, !6, i64 24}
!66 = !{!"p1 _ZTS11CommandData", !13, i64 0}
!67 = !{!"_ZTS9QuickOpen", !68, i64 0, !10, i64 8, !69, i64 16, !69, i64 24, !12, i64 32, !11, i64 40, !64, i64 48, !10, i64 2568, !11, i64 2576, !11, i64 2584, !11, i64 2592, !11, i64 2600, !11, i64 2608, !11, i64 2616, !49, i64 2624, !11, i64 2656, !11, i64 2664, !10, i64 2672}
!68 = !{!"p1 _ZTS7Archive", !13, i64 0}
!69 = !{!"p1 _ZTS13QuickOpenItem", !13, i64 0}
!70 = !{!"_ZTS10MarkHeader", !6, i64 0, !5, i64 8}
!71 = !{!"_ZTS10MainHeader", !47, i64 0, !72, i64 20, !5, i64 24, !10, i64 28, !10, i64 29, !10, i64 30, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !73, i64 72, !50, i64 104}
!72 = !{!"short", !6, i64 0}
!73 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE", !74, i64 0, !11, i64 8, !6, i64 16}
!74 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE12_Alloc_hiderE", !75, i64 0}
!75 = !{!"p1 wchar_t", !13, i64 0}
!76 = !{!"_ZTS11CryptHeader", !47, i64 0, !10, i64 20, !5, i64 24, !6, i64 28, !6, i64 44}
!77 = !{!"_ZTS12EndArcHeader", !47, i64 0, !5, i64 20, !5, i64 24, !10, i64 28, !10, i64 29, !10, i64 30, !10, i64 31}
!78 = !{!"_ZTS14SubBlockHeader", !46, i64 0, !72, i64 24, !6, i64 26}
!79 = !{!"_ZTS13CommentHeader", !47, i64 0, !72, i64 20, !6, i64 22, !6, i64 23, !72, i64 24}
!80 = !{!"_ZTS13ProtectHeader", !46, i64 0, !6, i64 24, !72, i64 26, !5, i64 28, !6, i64 32}
!81 = !{!"_ZTS8EAHeader", !78, i64 0, !5, i64 28, !6, i64 32, !6, i64 33, !5, i64 36}
!82 = !{!"_ZTS12StreamHeader", !78, i64 0, !5, i64 28, !6, i64 32, !6, i64 33, !5, i64 36, !72, i64 40, !6, i64 42}
!83 = !{!"_ZTS9RARFORMAT", !6, i64 0}
!84 = !{!9, !11, i64 64}
!85 = !{!9, !11, i64 192}
!86 = !{!59, !66, i64 11056}
!87 = !{!88, !10, i64 57428}
!88 = !{!"_ZTS10RAROptions", !5, i64 0, !5, i64 4, !10, i64 8, !10, i64 9, !10, i64 10, !11, i64 16, !6, i64 24, !6, i64 8216, !89, i64 16408, !10, i64 16412, !6, i64 16416, !6, i64 24608, !90, i64 32800, !90, i64 32804, !90, i64 32808, !90, i64 32812, !6, i64 32816, !6, i64 41008, !10, i64 49200, !10, i64 49201, !10, i64 49202, !6, i64 49204, !91, i64 57396, !92, i64 57400, !93, i64 57404, !5, i64 57408, !21, i64 57412, !5, i64 57416, !5, i64 57420, !94, i64 57424, !10, i64 57428, !10, i64 57429, !10, i64 57430, !10, i64 57431, !10, i64 57432, !5, i64 57436, !5, i64 57440, !10, i64 57444, !10, i64 57445, !10, i64 57446, !10, i64 57447, !10, i64 57448, !95, i64 57452, !96, i64 57456, !11, i64 57464, !5, i64 57472, !10, i64 57476, !10, i64 57477, !10, i64 57478, !5, i64 57480, !5, i64 57484, !10, i64 57488, !10, i64 57489, !10, i64 57490, !10, i64 57491, !5, i64 57492, !5, i64 57496, !10, i64 57500, !10, i64 57501, !10, i64 57502, !10, i64 57503, !6, i64 57504, !6, i64 58016, !10, i64 58528, !10, i64 58529, !10, i64 58530, !10, i64 58531, !10, i64 58532, !50, i64 58536, !50, i64 58544, !50, i64 58552, !10, i64 58560, !10, i64 58561, !10, i64 58562, !50, i64 58568, !50, i64 58576, !50, i64 58584, !10, i64 58592, !10, i64 58593, !10, i64 58594, !11, i64 58600, !11, i64 58608, !10, i64 58616, !10, i64 58617, !10, i64 58618, !6, i64 58620, !6, i64 58812, !5, i64 67004, !97, i64 67008, !98, i64 67012, !99, i64 67016, !99, i64 67020, !99, i64 67024, !10, i64 67028, !6, i64 67032, !5, i64 75224, !6, i64 75228, !5, i64 83420, !5, i64 83424, !11, i64 83432, !13, i64 83440, !13, i64 83448, !13, i64 83456}
!89 = !{!"_ZTS10QOPEN_MODE", !6, i64 0}
!90 = !{!"_ZTS11RAR_CHARSET", !6, i64 0}
!91 = !{!"_ZTS12MESSAGE_TYPE", !6, i64 0}
!92 = !{!"_ZTS17SOUND_NOTIFY_MODE", !6, i64 0}
!93 = !{!"_ZTS14OVERWRITE_MODE", !6, i64 0}
!94 = !{!"_ZTS12ARC_METADATA", !6, i64 0}
!95 = !{!"_ZTS14PATH_EXCL_MODE", !6, i64 0}
!96 = !{!"_ZTS12RECURSE_MODE", !6, i64 0}
!97 = !{!"_ZTS18APPENDARCNAME_MODE", !6, i64 0}
!98 = !{!"_ZTS10POWER_MODE", !6, i64 0}
!99 = !{!"_ZTS12EXTTIME_MODE", !6, i64 0}
!100 = !{!9, !11, i64 184}
!101 = !{!59, !11, i64 22272}
!102 = !{!88, !5, i64 83420}
!103 = !{!88, !13, i64 83440}
!104 = !{!88, !11, i64 83432}
!105 = !{!88, !13, i64 83456}
!106 = !{!9, !12, i64 56}
!107 = !{!9, !11, i64 48}
!108 = !{!9, !11, i64 32}
!109 = !{!9, !12, i64 40}
!110 = !{!9, !10, i64 81}
!111 = !{!9, !14, i64 96}
!112 = !{!9, !10, i64 82}
!113 = !{!12, !12, i64 0}
!114 = !{!11, !11, i64 0}
!115 = !{!18, !18, i64 0}
!116 = !{!60, !61, i64 20}
!117 = !{!59, !11, i64 13840}
!118 = !{!9, !11, i64 200}
!119 = !{!59, !11, i64 13856}
end_hunk_0
