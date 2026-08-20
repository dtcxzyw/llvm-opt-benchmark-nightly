inline.NumInlined: 6
inline.NumDeleted: 4
begin_hunk_0_@lm4549_read:bb.a
bb.a:
  %i.a = icmp ult i64 %1, 128
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 161, ptr noundef nonnull @__PRETTY_FUNCTION__.lm4549_read) #5
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %1
  %i.d = load i16, ptr %i.c, align 2
  %i.e = zext i16 %i.d to i32
  ret i32 %i.e
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @lm4549_write(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.audsettings, align 4        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = icmp ult i64 %1, 128
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 174, ptr noundef nonnull @__PRETTY_FUNCTION__.lm4549_write) #5
  unreachable

bb.c:                                             ; preds = %bb.a
  switch i64 %1, label %bb.j [
    i64 0, label %bb.d
    i64 44, label %bb.e
    i64 38, label %bb.i
    i64 40, label %bb.k
    i64 124, label %bb.k
    i64 126, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c
  store i16 3408, ptr %i.a, align 2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 -32760, ptr %i.c, align 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i16 -32768, ptr %i.d, align 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 -32768, ptr %i.e, align 2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i16 0, ptr %i.f, align 2
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i16 -32760, ptr %i.g, align 2
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i16 -32760, ptr %i.h, align 2
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i16 -30712, ptr %i.i, align 2
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i16 -30712, ptr %i.j, align 2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i16 -30712, ptr %i.k, align 2
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i16 -30712, ptr %i.l, align 2
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i16 -30712, ptr %i.m, align 2
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i16 0, ptr %i.n, align 2
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i16 -32768, ptr %i.o, align 2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i16 0, ptr %i.p, align 2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i16 257, ptr %i.q, align 2
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i16 15, ptr %i.r, align 2
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i16 1, ptr %i.s, align 2
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i16 0, ptr %i.t, align 2
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i16 -17536, ptr %i.u, align 2
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i16 -17536, ptr %i.v, align 2
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 268
  store i16 20051, ptr %i.w, align 2
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i16 17201, ptr %i.x, align 2
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.y = add i32 %2, -48001
  %or.cond = icmp ult i32 %i.y, -44001
  br i1 %or.cond, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.z = load i32, ptr @qemu_loglevel, align 4
  %i.aa = and i32 %i.z, 2048
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.k, label %bb.g, !prof !7

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.lm4549_write, i32 noundef %2) #6
  br label %bb.k

bb.h:                                             ; preds = %bb.e
  %i.ab = trunc nuw i32 %2 to i16
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i16 %i.ab, ptr %i.ac, align 2
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.ad, align 4, !annotation !8
  store i32 %2, ptr %3, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 2, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.af, align 4
  %i.ag = load ptr, ptr %0, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = call ptr @audio_be_open_out(ptr noundef %i.ag, ptr noundef %i.ai, ptr noundef nonnull @.str.3, ptr noundef nonnull %0, ptr noundef nonnull @lm4549_audio_out_callback, ptr noundef nonnull %3) #6
  store ptr %i.aj, ptr %i.ah, align 8
  br label %bb.k

bb.i:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.al = load i16, ptr %i.ak, align 2
  %i.am = and i16 %i.al, 15
  %i.an = trunc i32 %2 to i16
  %i.ao = and i16 %i.an, -16
  %i.ap = or disjoint i16 %i.am, %i.ao
  store i16 %i.ap, ptr %i.ak, align 2
  br label %bb.k

bb.j:                                             ; preds = %bb.c
  %i.aq = trunc i32 %2 to i16
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %1
  store i16 %i.aq, ptr %i.ar, align 2
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.f, %bb.g, %bb.j, %bb.i, %bb.h, %bb.d
  ret void
}

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare ptr @audio_be_open_out(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal void @lm4549_audio_out_callback(ptr noundef %0, i32 %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2344 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = load i32, ptr @lm4549_audio_out_callback.prev_buffer_level, align 4
  %i.d = icmp eq i32 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @audio_be_set_active_out(ptr noundef %i.e, ptr noundef %i.g, i1 noundef zeroext false) #6
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.h, align 8
  %.pr = load i32, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi i32 [ %.pr, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  store i32 %i.i, ptr @lm4549_audio_out_callback.prev_buffer_level, align 4
  %i.j = icmp eq i32 %i.i, 1024
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  tail call void @audio_be_set_active_out(ptr noundef %i.k, ptr noundef %i.m, i1 noundef zeroext true) #6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.n, align 8
  %i.o = load ptr, ptr %0, align 8
  %i.p = load ptr, ptr %i.l, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.r = load i32, ptr %i.a, align 8
  %i.s = zext i32 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 1
  %i.u = tail call i64 @audio_be_write(ptr noundef %i.o, ptr noundef %i.p, ptr noundef nonnull %i.q, i64 noundef %i.t) #6
  %i.v = trunc i64 %i.u to i32
  %i.w = lshr i32 %i.v, 1                         ; 3 uses
  %i.x = load i32, ptr %i.a, align 8              ; 2 uses
  %i.y = sub i32 %i.x, %i.w
  store i32 %i.y, ptr %i.a, align 8
  %.not.i = icmp eq i32 %i.x, %i.w
  br i1 %.not.i, label %lm4549_audio_transfer.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.d ] ; 3 uses
  %2 = trunc nuw i64 %indvars.iv.i to i32
  %3 = add i32 %i.w, %2
  %4 = zext i32 %3 to i64
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %4
  %i.aa = load i16, ptr %i.z, align 2
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv.i
  store i16 %i.aa, ptr %i.ab, align 2
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ac = load i32, ptr %i.a, align 8
  %i.ad = zext i32 %i.ac to i64
  %i.ae = icmp samesign ult i64 %indvars.iv.next.i, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %lm4549_audio_transfer.exit, !llvm.loop !9

lm4549_audio_transfer.exit:                       ; preds = %.lr.ph.i, %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %.not = icmp eq ptr %i.ag, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %lm4549_audio_transfer.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ag(ptr noundef %i.ai) #6
  br label %bb.f

bb.f:                                             ; preds = %lm4549_audio_transfer.exit, %bb.e, %bb.c
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 2) i32 @lm4549_write_samples(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2344 ; 9 uses
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp ugt i32 %i.b, 1022
  br i1 %i.c, label %lm4549_audio_transfer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i32 %1, 4
  %i.e = trunc i32 %i.d to i16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 5 uses
  %i.g = add nuw nsw i32 %i.b, 1
  store i32 %i.g, ptr %i.a, align 8
  %i.h = zext nneg i32 %i.b to i64
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.h
  store i16 %i.e, ptr %i.i, align 2
  %i.j = lshr i32 %2, 4
  %i.k = trunc i32 %i.j to i16
  %i.l = load i32, ptr %i.a, align 8              ; 2 uses
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.a, align 8
  %i.n = zext i32 %i.l to i64
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.n
  store i16 %i.k, ptr %i.o, align 2
  %i.p = load i32, ptr %i.a, align 8
  %i.q = icmp eq i32 %i.p, 1024
  br i1 %i.q, label %bb.c, label %lm4549_audio_transfer.exit

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  tail call void @audio_be_set_active_out(ptr noundef %i.r, ptr noundef %i.t, i1 noundef zeroext true) #6
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.u, align 8
  %i.v = load ptr, ptr %0, align 8
  %i.w = load ptr, ptr %i.s, align 8
  %i.x = load i32, ptr %i.a, align 8
  %i.y = zext i32 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 1
  %i.aa = tail call i64 @audio_be_write(ptr noundef %i.v, ptr noundef %i.w, ptr noundef nonnull %i.f, i64 noundef %i.z) #6
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = lshr i32 %i.ab, 1                       ; 3 uses
  %i.ad = load i32, ptr %i.a, align 8             ; 2 uses
  %i.ae = sub i32 %i.ad, %i.ac
  store i32 %i.ae, ptr %i.a, align 8
  %.not.i = icmp eq i32 %i.ad, %i.ac
  br i1 %.not.i, label %lm4549_audio_transfer.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.c ] ; 3 uses
  %3 = trunc nuw i64 %indvars.iv.i to i32
  %4 = add i32 %i.ac, %3
  %5 = zext i32 %4 to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %5
  %i.ag = load i16, ptr %i.af, align 2
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv.i
  store i16 %i.ag, ptr %i.ah, align 2
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ai = load i32, ptr %i.a, align 8
  %i.aj = zext i32 %i.ai to i64
  %i.ak = icmp samesign ult i64 %indvars.iv.next.i, %i.aj
  br i1 %i.ak, label %.lr.ph.i, label %lm4549_audio_transfer.exit, !llvm.loop !9

lm4549_audio_transfer.exit:                       ; preds = %.lr.ph.i, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.b ], [ 1, %bb.c ], [ 1, %.lr.ph.i ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @lm4549_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.Volume, align 4             ; 8 uses
  %5 = alloca %struct.audsettings, align 16       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  %i.a = tail call zeroext i1 @audio_be_check(ptr noundef %0, ptr noundef %3) #6
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 3408, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 -32760, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i16 -32768, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 -32768, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i16 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i16 -32760, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i16 -32760, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i16 -30712, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i16 -30712, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i16 -30712, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i16 -30712, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i16 -30712, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i16 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i16 -32768, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i16 0, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i16 257, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i16 15, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i16 1, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i16 0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i16 -17536, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i16 -17536, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 268
  store i16 20051, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i16 17201, ptr %i.z, align 8
  store <4 x i32> <i32 48000, i32 2, i32 3, i32 0>, ptr %5, align 16
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 0, ptr %i.aa, align 4
  %i.ab = load ptr, ptr %0, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = call ptr @audio_be_open_out(ptr noundef %i.ab, ptr noundef %i.ad, ptr noundef nonnull @.str.3, ptr noundef nonnull %0, ptr noundef nonnull @lm4549_audio_out_callback, ptr noundef nonnull %5) #6 ; 2 uses
  store ptr %i.ae, ptr %i.ac, align 8
  %i.af = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %4, align 4
  store i32 2, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 -1, ptr %i.ah, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 9
  store i8 -1, ptr %i.ai, align 1
  %scevgep.i = getelementptr inbounds nuw i8, ptr %4, i64 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %scevgep.i, i8 0, i64 14, i1 false)
  call void @audio_be_set_volume_out(ptr noundef %i.af, ptr noundef %i.ae, ptr noundef nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 296
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %i.ak, i8 noundef 0, i64 noundef 2048, i1 noundef false) #6
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 2344
  store i32 0, ptr %i.al, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  ret void
}

declare zeroext i1 @audio_be_check(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @lm4549_post_load(ptr noundef %0, i32 %1) #0 {
bb.a:
  %2 = alloca %struct.audsettings, align 4        ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.b = load i16, ptr %i.a, align 2
  %i.c = zext i16 %i.b to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 0, ptr %i.d, align 4, !annotation !8
  store i32 %i.c, ptr %2, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 2, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 3, ptr %i.f, align 4
  %i.g = load ptr, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call ptr @audio_be_open_out(ptr noundef %i.g, ptr noundef %i.i, ptr noundef nonnull @.str.3, ptr noundef nonnull %0, ptr noundef nonnull @lm4549_audio_out_callback, ptr noundef nonnull %2) #6 ; 2 uses
  store ptr %i.j, ptr %i.h, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i32, ptr %i.k, align 8
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %0, align 8
  %i.o = call i32 @audio_be_get_buffer_size_out(ptr noundef %i.n, ptr noundef %i.j) #6 ; 0 uses
  call void @lm4549_audio_out_callback(ptr noundef nonnull %0, i32 poison)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret i32 0
}

declare void @audio_be_set_active_out(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare i64 @audio_be_write(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @audio_be_set_volume_out(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @audio_be_get_buffer_size_out(ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!8 = !{!"auto-init"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
end_hunk_0
