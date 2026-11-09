Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/filefn?download=true
inline.NumInlined: 33
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_Z11GetFreeDiskPKw:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i64 %.0
}

declare void @_Z11GetFilePathPKwPwm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @statvfs64(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z9FileExistPKw(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = call noundef zeroext i1 @_Z10WideToCharPKwPcm(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 2048) ; 0 uses
  %i.c = call i32 @access(ptr noundef nonnull %i.a, i32 noundef 0) #13
  %i.d = icmp eq i32 %i.c, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i1 %i.d
}

; Function Attrs: nofree nounwind
declare noundef i32 @access(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z13WildFileExistPKw(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 4 uses
  %1 = alloca %class.FindFile, align 8            ; 8 uses
  %2 = alloca %struct.FindData, align 8           ; 5 uses
  %i.b = tail call noundef zeroext i1 @_Z10IsWildcardPKw(ptr noundef %0)
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @_ZN8FindFileC1Ev(ptr noundef nonnull align 8 dereferenceable(8208) %1)
  invoke void @_ZN8FindFile7SetMaskEPKw(ptr noundef nonnull align 8 dereferenceable(8208) %1, ptr noundef %0)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.d = invoke noundef zeroext i1 @_ZN8FindFile4NextEP8FindDatab(ptr noundef nonnull align 8 dereferenceable(8208) %1, ptr noundef nonnull %2, i1 noundef zeroext false)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @_ZN8FindFileD1Ev(ptr noundef nonnull align 8 dead_on_return(8208) dereferenceable(8208) %1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  br label %bb.i

bb.e:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.f, %bb.f ], [ %i.e, %bb.e ]
  call void @_ZN8FindFileD1Ev(ptr noundef nonnull align 8 dead_on_return(8208) dereferenceable(8208) %1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  resume { ptr, i32 } %.pn

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.g = call noundef zeroext i1 @_Z10WideToCharPKwPcm(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 2048) ; 0 uses
  %i.h = call i32 @access(ptr noundef nonnull %i.a, i32 noundef 0) #13
  %i.i = icmp eq i32 %i.h, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.d
  %.06 = phi i1 [ %i.d, %bb.d ], [ %i.i, %bb.h ]
  ret i1 %.06
}

declare noundef zeroext i1 @_Z10IsWildcardPKw(ptr noundef) local_unnamed_addr #2

declare void @_ZN8FindFileC1Ev(ptr noundef nonnull align 8 dereferenceable(8208)) unnamed_addr #2

declare void @_ZN8FindFile7SetMaskEPKw(ptr noundef nonnull align 8 dereferenceable(8208), ptr noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare noundef zeroext i1 @_ZN8FindFile4NextEP8FindDatab(ptr noundef nonnull align 8 dereferenceable(8208), ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN8FindFileD1Ev(ptr noundef nonnull align 8 dead_on_return(8208) dereferenceable(8208)) unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_Z5IsDirj(i32 noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = and i32 %0, 61440
  %i.b = icmp eq i32 %i.a, 16384
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_Z12IsUnreadablej(i32 noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = trunc i32 %0 to i16
  %trunc = and i16 %i.a, -4096
  switch i16 %trunc, label %bb.b [
    i16 4096, label %switch.edge
    i16 -16384, label %switch.edge
    i16 8192, label %switch.edge
  ]

bb.b:                                             ; preds = %bb.a
  br label %switch.edge

switch.edge:                                      ; preds = %bb.a, %bb.a, %bb.a, %bb.b
  %i.b = phi i1 [ true, %bb.a ], [ true, %bb.a ], [ false, %bb.b ], [ true, %bb.a ]
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_Z6IsLinkj(i32 noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = and i32 %0, 61440
  %i.b = icmp eq i32 %i.a, 40960
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_Z15IsDeleteAllowedj(i32 noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = and i32 %0, 384
  %i.b = icmp eq i32 %i.a, 384
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define void @_Z15PrepareToDeletePKw(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 4 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = call noundef zeroext i1 @_Z10WideToCharPKwPcm(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 2048) ; 0 uses
  %i.c = call i32 @chmod(ptr noundef nonnull %i.a, i32 noundef 448) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @chmod(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef i32 @_Z11GetFileAttrPKw(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 4 uses
  %1 = alloca %struct.stat, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = call noundef zeroext i1 @_Z10WideToCharPKwPcm(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 2048) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  %i.c = call i32 @stat64(ptr noundef nonnull %i.a, ptr noundef nonnull %1) #13
  %.not = icmp eq i32 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i32, ptr %i.d, align 8
  %.0 = select i1 %.not, i32 %i.e, i32 0
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @stat64(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z11SetFileAttrPKwj(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = call noundef zeroext i1 @_Z10WideToCharPKwPcm(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 2048) ; 0 uses
  %i.c = call i32 @chmod(ptr noundef nonnull %i.a, i32 noundef %1) #13
  %i.d = icmp eq i32 %i.c, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_Z6MkTempPwm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 4 uses
  %2 = alloca %class.RarTime, align 8             ; 5 uses
  %i.b = alloca [50 x i32], align 16              ; 9 uses
  %i.c = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %0) #15 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store i64 0, ptr %2, align 8, !tbaa !19
  call void @_ZN7RarTime14SetCurrentTimeEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.d = call noundef i64 @_ZN7RarTime6GetWinEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.e = udiv i64 %i.d, 100000
  %i.f = trunc i64 %i.e to i32
  %i.g = call i32 @getpid() #13                   ; 2 uses
  %i.h = urem i32 %i.f, 50000                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.i = call i32 (ptr, i64, ptr, ...) @swprintf(ptr noundef nonnull %i.b, i64 noundef 50, ptr noundef nonnull @.str.3, i32 noundef %i.g, i32 noundef %i.h) #13 ; 0 uses
  %i.j = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.b) #15
  %i.k = add i64 %i.j, %i.c
  %.not = icmp ult i64 %i.k, %1
  br i1 %.not, label %.lr.ph, label %.thread26

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.c
  %i.m = sub i64 %1, %i.c
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.n = add nuw nsw i32 %.01928, 1               ; 3 uses
  %i.o = add nuw i32 %i.n, %i.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.p = call i32 (ptr, i64, ptr, ...) @swprintf(ptr noundef nonnull %i.b, i64 noundef 50, ptr noundef nonnull @.str.3, i32 noundef %i.g, i32 noundef %i.o) #13 ; 0 uses
  %i.q = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.b) #15
  %i.r = add i64 %i.q, %i.c
  %i.s = icmp uge i64 %i.r, %1
  %i.t = icmp eq i32 %i.n, 1000
  %or.cond = or i1 %i.t, %i.s
  br i1 %or.cond, label %.thread26, label %bb.c, !llvm.loop !17

.thread26:                                        ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.01928 = phi i32 [ 0, %.lr.ph ], [ %i.n, %bb.b ]
  call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.l, ptr noundef nonnull %i.b, i64 noundef %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.u = call noundef zeroext i1 @_Z10WideToCharPKwPcm(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 2048) ; 0 uses
  %i.v = call i32 @access(ptr noundef nonnull %i.a, i32 noundef 0) #13
  %i.w = icmp eq i32 %i.v, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br i1 %i.w, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %bb.c, %.thread26
  %i.x = phi ptr [ null, %.thread26 ], [ %0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret ptr %i.x
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr noundef captures(none)) local_unnamed_addr #7

declare void @_ZN7RarTime14SetCurrentTimeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef i64 @_ZN7RarTime6GetWinEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @swprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #5

declare void @_Z8wcsncpyzPwPKwm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_Z11CalcFileSumP4FilePjPhjlj(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, i32 noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %class.uiMsgStore, align 8          ; 7 uses
  %7 = alloca %class.uiMsgStore, align 8          ; 7 uses
  %8 = alloca %class.DataHash, align 8            ; 10 uses
  %9 = alloca %class.DataHash, align 8            ; 10 uses
  %10 = alloca %struct.HashValue, align 4         ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(8256) %0)
  %i.e = and i32 %5, 3
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  store <4 x ptr> <ptr @.str, ptr @.str, ptr @.str, ptr @.str>, ptr %7, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 32
  store <4 x ptr> <ptr @.str, ptr @.str, ptr @.str, ptr @.str>, ptr %i.f, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  store i32 142, ptr %i.h, align 8, !tbaa !25
  call void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = and i32 %5, 8
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %0, align 8, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(8256) %0, i64 noundef 0, i32 noundef 0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %malloc.i = call dereferenceable_or_null(1048576) ptr @malloc(i64 1048576) ; 11 uses
  %i.n = icmp eq ptr %malloc.i, null              ; 2 uses
  br i1 %i.n, label %bb.f, label %_ZN5ArrayIhEC2Em.exit

bb.f:                                             ; preds = %bb.e
  call void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
  br label %_ZN5ArrayIhEC2Em.exit

_ZN5ArrayIhEC2Em.exit:                            ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  invoke void @_ZN8DataHashC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.g unwind label %bb.x

bb.g:                                             ; preds = %_ZN5ArrayIhEC2Em.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  invoke void @_ZN8DataHashC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.h unwind label %bb.y

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN8DataHash4InitE9HASH_TYPEj(ptr noundef nonnull align 8 dereferenceable(16) %8, i32 noundef 2, i32 noundef %3)
          to label %bb.i unwind label %.loopexit.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN8DataHash4InitE9HASH_TYPEj(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 3, i32 noundef %3)
          to label %.preheader unwind label %.loopexit.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader:                                       ; preds = %bb.i
  %.not47 = icmp eq ptr %1, null                  ; 2 uses
  %.not48 = icmp eq ptr %2, null                  ; 3 uses
  br i1 %.not47, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader
  br i1 %.not48, label %.preheader.split.us.split.us, label %.preheader.split.us.split

.preheader.split.us.split.us:                     ; preds = %.preheader.split.us, %bb.m
  %.041.us.us = phi i64 [ %spec.select.us.us, %bb.m ], [ %4, %.preheader.split.us ] ; 3 uses
  %.033.us.us = phi i64 [ %i.w, %bb.m ], [ 0, %.preheader.split.us ]
  %i.o = icmp eq i64 %.041.us.us, 9223372034707292159
  %i.p = call i64 @llvm.smin.i64(i64 %.041.us.us, i64 1048576)
  %i.q = load ptr, ptr %0, align 8, !tbaa !21
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = invoke noundef i32 %i.s(ptr noundef nonnull align 8 dereferenceable(8256) %0, ptr noundef nonnull %malloc.i, i64 noundef %i.p)
          to label %bb.j unwind label %.loopexit.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.j:                                             ; preds = %.preheader.split.us.split.us
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %.split.us, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = sext i32 %i.t to i64
  %i.w = add nuw nsw i64 %.033.us.us, 1           ; 2 uses
  %i.x = and i64 %i.w, 15
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  invoke void @_Z4Waitv()
          to label %bb.m unwind label %.loopexit.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.z = sub nsw i64 %.041.us.us, %i.v
  %spec.select.us.us = select i1 %i.o, i64 9223372034707292159, i64 %i.z
  br label %.preheader.split.us.split.us

.preheader.split.us.split:                        ; preds = %.preheader.split.us, %bb.r
  %.041.us = phi i64 [ %spec.select.us, %bb.r ], [ %4, %.preheader.split.us ] ; 3 uses
  %.033.us = phi i64 [ %i.ai, %bb.r ], [ 0, %.preheader.split.us ]
  %i.aa = icmp eq i64 %.041.us, 9223372034707292159
  %i.ab = call i64 @llvm.smin.i64(i64 %.041.us, i64 1048576)
  %i.ac = load ptr, ptr %0, align 8, !tbaa !21
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = invoke noundef i32 %i.ae(ptr noundef nonnull align 8 dereferenceable(8256) %0, ptr noundef nonnull %malloc.i, i64 noundef %i.ab)
          to label %bb.n unwind label %.loopexit.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.n:                                             ; preds = %.preheader.split.us.split
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %.split.us, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = sext i32 %i.af to i64                   ; 2 uses
  %i.ai = add nuw nsw i64 %.033.us, 1             ; 2 uses
  %i.aj = and i64 %i.ai, 15
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @_Z4Waitv()
          to label %bb.q unwind label %.loopexit.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.p, %bb.o
  invoke void @_ZN8DataHash6UpdateEPKvm(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull %malloc.i, i64 noundef %i.ah)
          to label %bb.r unwind label %.loopexit.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  %i.al = sub nsw i64 %.041.us, %i.ah
  %spec.select.us = select i1 %i.aa, i64 9223372034707292159, i64 %i.al
  br label %.preheader.split.us.split

.preheader.split:                                 ; preds = %.preheader
  br i1 %.not48, label %.preheader.split.split.us, label %.preheader.split.split

.preheader.split.split.us:                        ; preds = %.preheader.split, %bb.w
  %.041.us67 = phi i64 [ %spec.select.us69, %bb.w ], [ %4, %.preheader.split ] ; 3 uses
  %.033.us68 = phi i64 [ %i.au, %bb.w ], [ 0, %.preheader.split ]
  %i.am = icmp eq i64 %.041.us67, 9223372034707292159
  %i.an = call i64 @llvm.smin.i64(i64 %.041.us67, i64 1048576)
  %i.ao = load ptr, ptr %0, align 8, !tbaa !21
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = invoke noundef i32 %i.aq(ptr noundef nonnull align 8 dereferenceable(8256) %0, ptr noundef nonnull %malloc.i, i64 noundef %i.an)
          to label %bb.s unwind label %.loopexit.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.s:                                             ; preds = %.preheader.split.split.us
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %.split.us, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.at = sext i32 %i.ar to i64                   ; 2 uses
  %i.au = add nuw nsw i64 %.033.us68, 1           ; 2 uses
  %i.av = and i64 %i.au, 15
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  invoke void @_Z4Waitv()
          to label %bb.v unwind label %.loopexit.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.u, %bb.t
  invoke void @_ZN8DataHash6UpdateEPKvm(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull %malloc.i, i64 noundef %i.at)
end_hunk_0
begin_hunk_1_@_Z11CalcFileSumP4FilePjPhjlj:bb.a
  br label %bb.ao

bb.z:                                             ; preds = %.preheader.split.split
  %i.bg = icmp eq i32 %i.bd, 0
  br i1 %i.bg, label %.split.us, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bh = sext i32 %i.bd to i64                   ; 3 uses
  %i.bi = add nuw nsw i64 %.033, 1                ; 2 uses
  %i.bj = and i64 %i.bi, 15
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  invoke void @_Z4Waitv()
          to label %bb.ac unwind label %.loopexit.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  invoke void @_ZN8DataHash6UpdateEPKvm(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull %malloc.i, i64 noundef %i.bh)
          to label %bb.ad unwind label %.loopexit.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN8DataHash6UpdateEPKvm(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull %malloc.i, i64 noundef %i.bh)
          to label %bb.ae unwind label %.loopexit.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %bb.ad
  %i.bl = sub nsw i64 %.041, %i.bh
  %spec.select = select i1 %i.ay, i64 9223372034707292159, i64 %i.bl
  br label %.preheader.split.split

.split.us:                                        ; preds = %bb.z, %bb.s, %bb.n, %bb.j
  %i.bm = load ptr, ptr %0, align 8, !tbaa !21
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  %i.bo = load ptr, ptr %i.bn, align 8
  invoke void %i.bo(ptr noundef nonnull align 8 dereferenceable(8256) %0, i64 noundef %i.d, i32 noundef 0)
          to label %bb.af unwind label %.loopexit.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.af:                                            ; preds = %.split.us
  %i.bp = and i32 %5, 2
  %.not50 = icmp eq i32 %i.bp, 0
  br i1 %.not50, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  store <4 x ptr> <ptr @.str, ptr @.str, ptr @.str, ptr @.str>, ptr %6, align 8, !tbaa !22
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 32
  store <4 x ptr> <ptr @.str, ptr @.str, ptr @.str, ptr @.str>, ptr %i.bq, align 8, !tbaa !22
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.br, i8 0, i64 40, i1 false)
  store i32 144, ptr %i.bs, align 8, !tbaa !25
  invoke void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108) %6)
          to label %_Z5uiMsgIJEEv14UIMESSAGE_CODEDpOT_.exit unwind label %.loopexit.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_Z5uiMsgIJEEv14UIMESSAGE_CODEDpOT_.exit:          ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %bb.ah

.loopexit.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.split.split.us, %bb.u, %bb.v, %.preheader.split.us.split.us, %bb.l, %.preheader.split.us.split, %bb.p, %bb.q, %.preheader.split.split, %bb.ab, %bb.ac, %bb.ad, %bb.ag, %bb.h, %bb.i, %bb.ai, %.split.us
  %lpad.loopexit.split-lp111 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.ah:                                            ; preds = %_Z5uiMsgIJEEv14UIMESSAGE_CODEDpOT_.exit, %bb.af
  br i1 %.not47, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bt = invoke noundef i32 @_ZN8DataHash8GetCRC32Ev(ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.aj unwind label %.loopexit.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aj:                                            ; preds = %bb.ai
  store i32 %i.bt, ptr %1, align 4, !tbaa !8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ah
  br i1 %.not48, label %_ZN5ArrayIhED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  invoke void @_ZN8DataHash6ResultEP9HashValue(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull %10)
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(32) %i.bu, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br label %_ZN5ArrayIhED2Ev.exit

bb.an:                                            ; preds = %bb.al
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br label %.loopexit

_ZN5ArrayIhED2Ev.exit:                            ; preds = %bb.am, %bb.ak
  call void @_ZN8DataHashD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @_ZN8DataHashD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @free(ptr noundef nonnull %malloc.i) #13
  ret void

.loopexit:                                        ; preds = %.loopexit.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.an
  %.pn.pn = phi { ptr, i32 } [ %i.bv, %bb.an ], [ %lpad.loopexit.split-lp111, %.loopexit.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN8DataHashD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #13
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit, %bb.y
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.loopexit ], [ %i.bf, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @_ZN8DataHashD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #13
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.x
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.ao ], [ %i.be, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br i1 %i.n, label %_ZN5ArrayIhED2Ev.exit58, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @free(ptr noundef nonnull %malloc.i) #13
  br label %_ZN5ArrayIhED2Ev.exit58

_ZN5ArrayIhED2Ev.exit58:                          ; preds = %bb.ap, %bb.aq
  resume { ptr, i32 } %.pn.pn.pn.pn
}

declare void @_ZN8DataHashC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

declare void @_ZN8DataHash4InitE9HASH_TYPEj(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_Z4Waitv() local_unnamed_addr #2

declare void @_ZN8DataHash6UpdateEPKvm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN8DataHash8GetCRC32Ev(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN8DataHash6ResultEP9HashValue(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind
declare void @_ZN8DataHashD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z10RenameFilePKwS0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 4 uses
  %i.b = alloca [2048 x i8], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.c = call noundef zeroext i1 @_Z10WideToCharPKwPcm(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 2048) ; 0 uses
  %i.d = call noundef zeroext i1 @_Z10WideToCharPKwPcm(ptr noundef %1, ptr noundef nonnull %i.b, i64 noundef 2048) ; 0 uses
  %i.e = call i32 @rename(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #13
  %i.f = icmp eq i32 %i.e, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i1 %i.f
}

; Function Attrs: nofree nounwind
declare noundef i32 @rename(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z7DelFilePKw(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = call noundef zeroext i1 @_Z10WideToCharPKwPcm(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 2048) ; 0 uses
  %i.c = call i32 @remove(ptr noundef nonnull %i.a) #13
  %i.d = icmp eq i32 %i.c, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i1 %i.d
}

; Function Attrs: nofree nounwind
declare noundef i32 @remove(ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z6DelDirPKw(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = call noundef zeroext i1 @_Z10WideToCharPKwPcm(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 2048) ; 0 uses
  %i.c = call i32 @rmdir(ptr noundef nonnull %i.a) #13
  %i.d = icmp eq i32 %i.c, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i1 %i.d
}

; Function Attrs: nofree nounwind
declare noundef i32 @rmdir(ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z11LinksToDirsPKwS0_RNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE(ptr noundef %0, ptr nofree noundef readonly %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 4 uses
  %i.b = alloca [2048 x i32], align 16            ; 12 uses
  %3 = alloca %struct.FindData, align 8           ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.c = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %0) #15
  %i.d = icmp ugt i64 %i.c, 2047
  br i1 %i.d, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.b, ptr noundef nonnull %0, i64 noundef 2048)
  %i.e = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %1) #15 ; 3 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = call i32 @wcsncmp(ptr noundef nonnull %i.b, ptr noundef nonnull %1, i64 noundef %i.e) #15
  %.not46 = icmp eq i32 %i.f, 0
  %spec.store.select = select i1 %.not46, i64 %i.e, i64 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.036 = phi i64 [ %spec.store.select, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.b, align 16, !tbaa !10  ; 2 uses
  %.not4755 = icmp eq i32 %i.h, 0
  br i1 %.not4755, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ 0, %bb.d ] ; 4 uses
  %i.i = phi i32 [ %i.s, %bb.f ], [ %i.h, %bb.d ] ; 2 uses
  %.13756 = phi i64 [ %.2, %bb.f ], [ %.036, %bb.d ] ; 4 uses
  %i.j = load i64, ptr %i.g, align 8, !tbaa !31
  %i.k = icmp ugt i64 %i.j, %indvars.iv
  br i1 %i.k, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.lr.ph
  %i.l = load ptr, ptr %2, align 8, !tbaa !32
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4, !tbaa !10
  %i.o = icmp eq i32 %i.i, %i.n
  br i1 %i.o, label %bb.f, label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.f, %.lr.ph, %bb.d
  %.137.lcssa = phi i64 [ %.036, %bb.d ], [ %.13756, %.lr.ph ], [ %.2, %bb.f ], [ %.13756, %bb.e ] ; 2 uses
  %.not48 = icmp eq i64 %.137.lcssa, 0
  br i1 %.not48, label %.loopexit, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = call noundef zeroext i1 @_Z9IsPathDivi(i32 noundef %i.i)
  %i.q = call i64 @llvm.umax.i64(i64 %.13756, i64 %indvars.iv)
  %.2 = select i1 %i.p, i64 %i.q, i64 %.13756     ; 2 uses
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next
  %i.s = load i32, ptr %i.r, align 4, !tbaa !10   ; 2 uses
  %.not47 = icmp eq i32 %i.s, 0
  br i1 %.not47, label %.critedge, label %.lr.ph, !llvm.loop !26

bb.g:                                             ; preds = %.critedge
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.137.lcssa
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.034 = phi ptr [ %i.t, %bb.g ], [ %i.w, %bb.h ] ; 3 uses
  %i.u = load i32, ptr %.034, align 4, !tbaa !10
  %i.v = call noundef zeroext i1 @_Z9IsPathDivi(i32 noundef %i.u)
  %i.w = getelementptr inbounds nuw i8, ptr %.034, i64 4
  br i1 %i.v, label %bb.h, label %.loopexit, !llvm.loop !27

.loopexit:                                        ; preds = %bb.h, %.critedge
  %.1 = phi ptr [ %i.b, %.critedge ], [ %.034, %bb.h ] ; 2 uses
  %i.x = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.b) #15
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.x
  %.062 = getelementptr inbounds i8, ptr %i.y, i64 -4 ; 2 uses
  %.not49.not63 = icmp ugt ptr %.062, %.1
  br i1 %.not49.not63, label %.lr.ph65, label %.critedge54

.lr.ph65:                                         ; preds = %.loopexit
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8208
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8205
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph65, %bb.m
  %.064 = phi ptr [ %.062, %.lr.ph65 ], [ %.0, %bb.m ] ; 3 uses
  %i.ab = load i32, ptr %.064, align 4, !tbaa !10
  %i.ac = call noundef zeroext i1 @_Z9IsPathDivi(i32 noundef %i.ab)
  br i1 %i.ac, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %.064, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  %i.ad = call noundef zeroext i1 @_ZN8FindFile8FastFindEPKwP8FindDatab(ptr noundef nonnull %i.b, ptr noundef nonnull %3, i1 noundef zeroext true)
  %i.ae = load i8, ptr %i.aa, align 1, !range !33
  %i.af = trunc nuw i8 %i.ae to i1
  %or.cond = select i1 %i.ad, i1 %i.af, i1 false
  br i1 %or.cond, label %bb.k, label %.critedge52

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.ag = call noundef zeroext i1 @_Z10WideToCharPKwPcm(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i64 noundef 2048) ; 0 uses
  %i.ah = call i32 @remove(ptr noundef nonnull %i.a) #13
  %i.ai = icmp eq i32 %i.ah, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br i1 %i.ai, label %.critedge52, label %bb.l

.critedge52:                                      ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.n

bb.m:                                             ; preds = %.critedge52, %bb.i
  %.0 = getelementptr inbounds i8, ptr %.064, i64 -4 ; 2 uses
  %.not49.not = icmp ugt ptr %.0, %.1
  br i1 %.not49.not, label %bb.i, label %.critedge54, !llvm.loop !28

.critedge54:                                      ; preds = %bb.m, %.loopexit
  %i.aj = load i64, ptr %i.g, align 8, !tbaa !31
  %i.ak = call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %0) #15
  %i.al = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_replaceEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.aj, ptr noundef nonnull %0, i64 noundef %i.ak) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %.critedge54, %bb.a
  %.5 = phi i1 [ false, %bb.a ], [ false, %bb.l ], [ true, %.critedge54 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  ret i1 %.5
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @wcsncmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

declare noundef zeroext i1 @_ZN8FindFile8FastFindEPKwP8FindDatab(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

declare void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_replaceEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(none) }
attributes #15 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!5, !5, i64 0}
!9 = !{!"wchar_t", !4, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"long", !4, i64 0}
!13 = !{!"any pointer", !4, i64 0}
!14 = !{!"p1 wchar_t", !13, i64 0}
!15 = distinct !{!15, !11}
!16 = !{!4, !4, i64 0}
!17 = distinct !{!17, !11}
!18 = !{!"_ZTS7RarTime", !12, i64 0}
!19 = !{!18, !12, i64 0}
!20 = !{!"vtable pointer", !3, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!14, !14, i64 0}
!23 = !{!"_ZTS14UIMESSAGE_CODE", !4, i64 0}
!24 = !{!"_ZTS10uiMsgStore", !4, i64 0, !4, i64 64, !5, i64 96, !5, i64 100, !23, i64 104}
!25 = !{!24, !23, i64 104}
!26 = distinct !{!26, !11}
!27 = distinct !{!27, !11}
!28 = distinct !{!28, !11}
!29 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE12_Alloc_hiderE", !14, i64 0}
!30 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE", !29, i64 0, !12, i64 8, !4, i64 16}
!31 = !{!30, !12, i64 8}
!32 = !{!30, !14, i64 0}
!33 = !{i8 0, i8 2}
end_hunk_1
