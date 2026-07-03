inline.NumInlined: 54
inline.NumDeleted: 21
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN8NWindows5NFile3NIO9CFileBase6CreateEPKwjjjjb:bb.a
  %i.z = load ptr, ptr %7, align 8, !tbaa !10     ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_ZN11CStringBaseIcED2Ev.exit10, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.z) #17
  br label %_ZN11CStringBaseIcED2Ev.exit10

_ZN11CStringBaseIcED2Ev.exit10:                   ; preds = %bb.h, %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.x, %bb.f ], [ %i.y, %bb.g ], [ %i.y, %bb.h ]
  %i.ab = load ptr, ptr %8, align 8, !tbaa !28    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZN11CStringBaseIwED2Ev.exit11, label %bb.i

bb.i:                                             ; preds = %_ZN11CStringBaseIcED2Ev.exit10
  call void @_ZdaPv(ptr noundef nonnull %i.ab) #17
  br label %_ZN11CStringBaseIwED2Ev.exit11

_ZN11CStringBaseIwED2Ev.exit11:                   ; preds = %_ZN11CStringBaseIcED2Ev.exit10, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  resume { ptr, i32 } %.pn
}

declare void @_Z24UnicodeStringToMultiByteRK11CStringBaseIwEj(ptr dead_on_unwind writable sret(%class.CStringBase) align 8, ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN8NWindows5NFile3NIO9CFileBase5CloseEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1084) %0) unnamed_addr #4 align 2 {
bb.a:
  %1 = alloca %struct.utimbuf, align 8            ; 7 uses
  %2 = alloca %struct.stat, align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !46   ; 4 uses
  store i64 %i.b, ptr %1, align 8, !tbaa !47
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !49   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 %i.d, ptr %i.e, align 8, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 -1, i64 16, i1 false)
  %i.g = load i32, ptr %i.f, align 8, !tbaa !16   ; 2 uses
  switch i32 %i.g, label %bb.c [
    i32 -1, label %bb.n
    i32 -2, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  store i32 -1, ptr %i.f, align 8, !tbaa !16
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.h = tail call i32 @close(i32 noundef %i.g)
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  store i32 -1, ptr %i.f, align 8, !tbaa !16
  %i.j = icmp ne i64 %i.b, -1
  %i.k = icmp ne i64 %i.d, -1
  %or.cond = select i1 %i.j, i1 true, i1 %i.k
  br i1 %or.cond, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !10
  %i.n = call i32 @stat64(ptr noundef %i.m, ptr noundef nonnull %2) #19
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.p = icmp eq i64 %i.b, -1
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.r = load i64, ptr %i.q, align 8, !tbaa !51
  store i64 %i.r, ptr %1, align 8, !tbaa !47
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.s = icmp eq i64 %i.d, -1
  br i1 %i.s, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.u = load i64, ptr %i.t, align 8, !tbaa !54
  br label %.sink.split

bb.j:                                             ; preds = %bb.e
  %i.v = tail call i64 @time(ptr noundef null) #19 ; 2 uses
  %i.w = icmp eq i64 %i.b, -1
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i64 %i.v, ptr %1, align 8, !tbaa !47
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.x = icmp eq i64 %i.d, -1
  br i1 %i.x, label %.sink.split, label %bb.m

.sink.split:                                      ; preds = %bb.l, %bb.i
  %.sink = phi i64 [ %i.u, %bb.i ], [ %i.v, %bb.l ]
  store i64 %.sink, ptr %i.e, align 8, !tbaa !50
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.l, %bb.h
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !10
  %i.z = call i32 @utime(ptr noundef %i.y, ptr noundef nonnull %1) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.n

bb.n:                                             ; preds = %bb.d, %bb.m, %bb.c, %bb.a, %bb.b
  %.1 = phi i1 [ true, %bb.a ], [ true, %bb.b ], [ false, %bb.c ], [ true, %bb.m ], [ true, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  ret i1 %.1
}

declare i32 @close(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @stat64(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @utime(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK8NWindows5NFile3NIO9CFileBase9GetLengthERy(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1084) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  switch i32 %i.b, label %bb.d [
    i32 -1, label %bb.b
    i32 -2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #21
  store i32 9, ptr %i.c, align 4, !tbaa !4
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i32, ptr %i.d, align 8, !tbaa !19
  %i.f = sext i32 %i.e to i64
  store i64 %i.f, ptr %1, align 8, !tbaa !55
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.g = tail call i64 @lseek64(i32 noundef %i.b, i64 noundef 0, i32 noundef 1) #19 ; 2 uses
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load i32, ptr %i.a, align 8, !tbaa !16
  %i.j = tail call i64 @lseek64(i32 noundef %i.i, i64 noundef 0, i32 noundef 2) #19 ; 2 uses
  %i.k = icmp eq i64 %i.j, -1
  br i1 %i.k, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load i32, ptr %i.a, align 8, !tbaa !16
  %i.m = tail call i64 @lseek64(i32 noundef %i.l, i64 noundef %i.g, i32 noundef 0) #19
  %.not = icmp eq i64 %i.m, -1
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 %i.j, ptr %1, align 8, !tbaa !55
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g, %bb.f, %bb.e, %bb.c, %bb.b
  %.3 = phi i1 [ false, %bb.b ], [ true, %bb.c ], [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.f ], [ true, %bb.g ]
  ret i1 %.3
}

; Function Attrs: nounwind
declare i64 @lseek64(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN8NWindows5NFile3NIO9CFileBase4SeekExjRy(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1084) %0, i64 noundef %1, i32 noundef %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  switch i32 %i.b, label %bb.h [
    i32 -1, label %bb.b
    i32 -2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #21
  store i32 9, ptr %i.c, align 4, !tbaa !4
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  switch i32 %2, label %.thread [
    i32 0, label %bb.f
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %5 = load i32, ptr %4, align 8, !tbaa !20
  %6 = sext i32 %5 to i64
  %7 = add nsw i64 %1, %6
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i32, ptr %i.d, align 8, !tbaa !19
  %i.f = sext i32 %i.e to i64
  %i.g = add nsw i64 %1, %i.f
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d
  %.016 = phi i64 [ %1, %bb.c ], [ %i.g, %bb.e ], [ %7, %bb.d ] ; 2 uses
  %i.h = icmp sgt i64 %.016, -1
  br i1 %i.h, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.c, %bb.f
  %i.i = tail call ptr @__errno_location() #21
  store i32 22, ptr %i.i, align 4, !tbaa !4
  br label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load i32, ptr %i.j, align 8, !tbaa !19
  %i.l = sext i32 %i.k to i64
  %spec.select = tail call i64 @llvm.smin.i64(i64 %.016, i64 %i.l) ; 2 uses
  %i.m = trunc nsw i64 %spec.select to i32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1080
  store i32 %i.m, ptr %i.n, align 8, !tbaa !20
  store i64 %spec.select, ptr %3, align 8, !tbaa !55
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  %i.o = tail call i64 @lseek64(i32 noundef %i.b, i64 noundef %1, i32 noundef %2) #19 ; 2 uses
  %.not = icmp eq i64 %i.o, -1
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 %i.o, ptr %3, align 8, !tbaa !55
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %.thread, %bb.g, %bb.b
  %.1 = phi i1 [ false, %bb.b ], [ false, %.thread ], [ true, %bb.g ], [ false, %bb.h ], [ true, %bb.i ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN8NWindows5NFile3NIO9CFileBase4SeekEyRy(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1084) %0, i64 noundef %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  switch i32 %i.b, label %bb.e [
    i32 -1, label %bb.b
    i32 -2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #21
  store i32 9, ptr %i.c, align 4, !tbaa !4
  br label %_ZN8NWindows5NFile3NIO9CFileBase4SeekExjRy.exit

bb.c:                                             ; preds = %bb.a
  %i.d = icmp sgt i64 %1, -1
  br i1 %i.d, label %bb.d, label %.thread.i

.thread.i:                                        ; preds = %bb.c
  %i.e = tail call ptr @__errno_location() #21
  store i32 22, ptr %i.e, align 4, !tbaa !4
  br label %_ZN8NWindows5NFile3NIO9CFileBase4SeekExjRy.exit

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i32, ptr %i.f, align 8, !tbaa !19
  %i.h = sext i32 %i.g to i64
  %spec.select.i = tail call i64 @llvm.smin.i64(i64 %1, i64 %i.h) ; 2 uses
  %i.i = trunc nsw i64 %spec.select.i to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1080
  store i32 %i.i, ptr %i.j, align 8, !tbaa !20
  store i64 %spec.select.i, ptr %2, align 8, !tbaa !55
  br label %_ZN8NWindows5NFile3NIO9CFileBase4SeekExjRy.exit

bb.e:                                             ; preds = %bb.a
  %i.k = tail call i64 @lseek64(i32 noundef %i.b, i64 noundef %1, i32 noundef 0) #19 ; 2 uses
  %.not.i = icmp eq i64 %i.k, -1
  br i1 %.not.i, label %_ZN8NWindows5NFile3NIO9CFileBase4SeekExjRy.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 %i.k, ptr %2, align 8, !tbaa !55
  br label %_ZN8NWindows5NFile3NIO9CFileBase4SeekExjRy.exit

_ZN8NWindows5NFile3NIO9CFileBase4SeekExjRy.exit:  ; preds = %bb.b, %.thread.i, %bb.d, %bb.e, %bb.f
  %.1.i = phi i1 [ false, %bb.b ], [ false, %.thread.i ], [ true, %bb.d ], [ false, %bb.e ], [ true, %bb.f ]
  ret i1 %.1.i
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN8NWindows5NFile3NIO7CInFile4OpenEPKwjjj(ptr noundef nonnull align 8 dereferenceable(1084) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN8NWindows5NFile3NIO9CFileBase6CreateEPKwjjjjb(ptr noundef nonnull align 8 dereferenceable(1084) %0, ptr noundef %1, i32 noundef -2147483648, i32 poison, i32 noundef %3, i32 poison, i1 noundef zeroext false)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN8NWindows5NFile3NIO7CInFile4OpenEPKwb(ptr noundef nonnull align 8 dereferenceable(1084) %0, ptr nofree noundef readonly captures(none) %1, i1 noundef zeroext %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN8NWindows5NFile3NIO9CFileBase6CreateEPKwjjjjb(ptr noundef nonnull align 8 dereferenceable(1084) %0, ptr noundef %1, i32 noundef -2147483648, i32 poison, i32 noundef 3, i32 poison, i1 noundef zeroext %2)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree uwtable
define dso_local noundef zeroext i1 @_ZN8NWindows5NFile3NIO7CInFile8ReadPartEPvjRj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1084) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__errno_location() #21
  store i32 9, ptr %i.d, align 4, !tbaa !4
  br label %_ZN8NWindows5NFile3NIO7CInFile4ReadEPvjRj.exit

bb.c:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %2, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %3, align 4, !tbaa !4
  br label %_ZN8NWindows5NFile3NIO7CInFile4ReadEPvjRj.exit

bb.e:                                             ; preds = %bb.c
  %i.f = icmp eq i32 %i.b, -2
  br i1 %i.f, label %bb.f, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e
  %i.g = zext i32 %2 to i64
  br label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !20   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load i32, ptr %i.j, align 8, !tbaa !19   ; 2 uses
  %.not26.i = icmp slt i32 %i.i, %i.k
  br i1 %.not26.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %3, align 4, !tbaa !4
  br label %_ZN8NWindows5NFile3NIO7CInFile4ReadEPvjRj.exit

bb.h:                                             ; preds = %bb.f
  %i.l = sub nsw i32 %i.k, %i.i
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.l, i32 %2) ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.n = sext i32 %i.i to i64
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 %i.n
  %i.p = zext nneg i32 %spec.select.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 1 %i.o, i64 %i.p, i1 false)
  store i32 %spec.select.i, ptr %3, align 4, !tbaa !4
  %i.q = load i32, ptr %i.h, align 8, !tbaa !20
  %i.r = add nsw i32 %i.q, %spec.select.i
  store i32 %i.r, ptr %i.h, align 8, !tbaa !20
  br label %_ZN8NWindows5NFile3NIO7CInFile4ReadEPvjRj.exit

bb.i:                                             ; preds = %bb.j, %.preheader.i
  %i.s = load i32, ptr %i.a, align 8, !tbaa !16
  %i.t = tail call i64 @read(i32 noundef %i.s, ptr noundef %1, i64 noundef %i.g) ; 3 uses
  %i.u = icmp slt i64 %i.t, 0
  br i1 %i.u, label %bb.j, label %.critedge.i

bb.j:                                             ; preds = %bb.i
  %i.v = tail call ptr @__errno_location() #21
  %i.w = load i32, ptr %i.v, align 4, !tbaa !4
  %i.x = icmp eq i32 %i.w, 4
  br i1 %i.x, label %bb.i, label %.critedge.i, !llvm.loop !57

.critedge.i:                                      ; preds = %bb.j, %bb.i
  %.not.i = icmp ne i64 %i.t, -1                  ; 2 uses
  %i.y = trunc i64 %i.t to i32
  %storemerge.i = select i1 %.not.i, i32 %i.y, i32 0
  store i32 %storemerge.i, ptr %3, align 4, !tbaa !4
  br label %_ZN8NWindows5NFile3NIO7CInFile4ReadEPvjRj.exit

_ZN8NWindows5NFile3NIO7CInFile4ReadEPvjRj.exit:   ; preds = %bb.b, %bb.d, %bb.g, %bb.h, %.critedge.i
  %.1.i = phi i1 [ false, %bb.b ], [ true, %bb.d ], [ true, %bb.g ], [ true, %bb.h ], [ %.not.i, %.critedge.i ]
  ret i1 %.1.i
}

; Function Attrs: mustprogress nofree uwtable
define dso_local noundef zeroext i1 @_ZN8NWindows5NFile3NIO7CInFile4ReadEPvjRj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1084) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__errno_location() #21
  store i32 9, ptr %i.d, align 4, !tbaa !4
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %2, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %3, align 4, !tbaa !4
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.f = icmp eq i32 %i.b, -2
  br i1 %i.f, label %bb.f, label %.preheader

end_hunk_0
