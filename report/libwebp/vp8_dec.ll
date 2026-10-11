Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/vp8_dec?download=true
inline.NumInlined: 54
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@VP8New:bb.a

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i32 %i.j(i32 noundef 2) #13, !inline_history !50
  %.not1.i.i = icmp eq i32 %i.k, 0
  br i1 %.not1.i.i, label %bb.f, label %InitGetCoeffs_body.exit.i

bb.f:                                             ; preds = %bb.e, %bb.d
  br label %InitGetCoeffs_body.exit.i

InitGetCoeffs_body.exit.i:                        ; preds = %bb.f, %bb.e
  %GetCoeffsFast.sink.i.i = phi ptr [ @GetCoeffsFast, %bb.f ], [ @GetCoeffsAlt, %bb.e ]
  store volatile ptr %GetCoeffsFast.sink.i.i, ptr @GetCoeffs, align 8, !tbaa !29
  %.pre.i = load ptr, ptr @VP8GetCPUInfo, align 8, !tbaa !29
  br label %bb.g

bb.g:                                             ; preds = %InitGetCoeffs_body.exit.i, %bb.c
  %i.l = phi ptr [ %.pre.i, %InitGetCoeffs_body.exit.i ], [ %i.j, %bb.c ]
  store ptr %i.l, ptr @InitGetCoeffs_body_last_cpuinfo_used, align 8, !tbaa !29
  %i.m = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @InitGetCoeffs_body_lock) #13 ; 0 uses
  br label %InitGetCoeffs.exit

InitGetCoeffs.exit:                               ; preds = %bb.g, %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare ptr @WebPSafeCalloc(i64 noundef, i64 noundef) local_unnamed_addr #5

declare ptr @WebPGetWorkerInterface() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i32 @VP8Status(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !24
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.a, %bb.b ], [ 2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden nonnull ptr @VP8StatusMessage(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  %.str.1. = select i1 %.not, ptr @.str.1, ptr %i.c
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %.str.1., %bb.b ], [ @.str, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden void @VP8Delete(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %VP8Clear.exit

VP8Clear.exit:                                    ; preds = %bb.a
  %i.a = tail call ptr @WebPGetWorkerInterface() #13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void %i.c(ptr noundef nonnull %i.d) #13, !inline_history !31
  tail call void @WebPDeallocateAlphaMemory(ptr noundef nonnull %0) #13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2888 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32
  tail call void @WebPSafeFree(ptr noundef %i.f) #13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, i8 0, i64 48, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.h, align 4, !tbaa !27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  tail call void @WebPSafeFree(ptr noundef nonnull %0) #13
  br label %bb.b

bb.b:                                             ; preds = %VP8Clear.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @VP8Clear(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @WebPGetWorkerInterface() #13
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void %i.d(ptr noundef nonnull %i.e) #13
  tail call void @WebPDeallocateAlphaMemory(ptr noundef nonnull %0) #13
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2888 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32
  tail call void @WebPSafeFree(ptr noundef %i.g) #13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, i8 0, i64 48, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.i, align 4, !tbaa !27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @WebPSafeFree(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef i32 @VP8SetError(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !24
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %0, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.c, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @VP8CheckSignature(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp ugt i64 %1, 2
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !33
  %i.c = icmp eq i8 %i.b, -99
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !33
  %i.f = icmp eq i8 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.h = load i8, ptr %i.g, align 1, !tbaa !33
  %i.i = icmp eq i8 %i.h, 42
  %i.j = zext i1 %i.i to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.k = phi i32 [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ], [ %i.j, %bb.d ]
  ret i32 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 0, 2) i32 @VP8GetInfo(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp ult i64 %1, 10
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %VP8CheckSignature.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.d = load i8, ptr %i.c, align 1, !tbaa !33
  %i.e = icmp eq i8 %i.d, -99
  br i1 %i.e, label %bb.c, label %VP8CheckSignature.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i8, ptr %i.f, align 1, !tbaa !33
  %i.h = icmp eq i8 %i.g, 1
  br i1 %i.h, label %VP8CheckSignature.exit, label %VP8CheckSignature.exit.thread

VP8CheckSignature.exit:                           ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.j = load i8, ptr %i.i, align 1, !tbaa !33
  %.not = icmp eq i8 %i.j, 42
  br i1 %.not, label %bb.d, label %VP8CheckSignature.exit.thread

bb.d:                                             ; preds = %VP8CheckSignature.exit
  %i.k = load i8, ptr %0, align 1, !tbaa !33
  %i.l = zext i8 %i.k to i32                      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.n = load i16, ptr %i.m, align 1
  %i.o = zext i16 %i.n to i32
  %i.p = shl nuw nsw i32 %i.o, 8
  %i.q = or disjoint i32 %i.p, %i.l
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.s = load i8, ptr %i.r, align 1, !tbaa !33
  %i.t = zext i8 %i.s to i32
  %i.u = shl nuw nsw i32 %i.t, 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.w = load i8, ptr %i.v, align 1, !tbaa !33
  %i.x = zext i8 %i.w to i32
  %.masked = and i32 %i.u, 16128
  %i.y = or disjoint i32 %.masked, %i.x           ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !33
  %i.ab = zext i8 %i.aa to i32
  %i.ac = shl nuw nsw i32 %i.ab, 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !33
  %i.af = zext i8 %i.ae to i32
  %.masked35 = and i32 %i.ac, 16128
  %i.ag = or disjoint i32 %.masked35, %i.af       ; 2 uses
  %i.ah = and i32 %i.l, 25
  %or.cond42.not46 = icmp eq i32 %i.ah, 16
  %i.ai = lshr i32 %i.q, 5
  %i.aj = zext nneg i32 %i.ai to i64
  %.not38 = icmp ugt i64 %2, %i.aj
  %or.cond44 = select i1 %or.cond42.not46, i1 %.not38, i1 false
  br i1 %or.cond44, label %bb.e, label %VP8CheckSignature.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ak = icmp eq i32 %i.y, 0
  %i.al = icmp eq i32 %i.ag, 0
  %or.cond3 = select i1 %i.ak, i1 true, i1 %i.al
  br i1 %or.cond3, label %VP8CheckSignature.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not39 = icmp eq ptr %3, null
  br i1 %.not39, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.y, ptr %3, align 4, !tbaa !34
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not40 = icmp eq ptr %4, null
  br i1 %.not40, label %VP8CheckSignature.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.ag, ptr %4, align 4, !tbaa !34
  br label %VP8CheckSignature.exit.thread

VP8CheckSignature.exit.thread:                    ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.i, %bb.h, %VP8CheckSignature.exit, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ 0, %VP8CheckSignature.exit ], [ 0, %bb.d ], [ 1, %bb.i ], [ 1, %bb.h ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @VP8GetHeaders(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %0, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  store ptr @.str.1, ptr %i.b, align 8, !tbaa !25
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %VP8SetError.exit, label %bb.c

VP8SetError.exit:                                 ; preds = %bb.b
  store i32 2, ptr %0, align 8, !tbaa !24
  store ptr @.str.2, ptr %i.b, align 8, !tbaa !25
  br label %.critedge.sink.split

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.e = load i64, ptr %i.d, align 8, !tbaa !52   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !53   ; 10 uses
  %i.h = icmp ult i64 %i.e, 4
  br i1 %i.h, label %VP8SetError.exit126, label %bb.d

VP8SetError.exit126:                              ; preds = %bb.c
  store i32 7, ptr %0, align 8, !tbaa !24
  store ptr @.str.3, ptr %i.b, align 8, !tbaa !25
  br label %.critedge.sink.split

bb.d:                                             ; preds = %bb.c
  %i.i = load i8, ptr %i.g, align 1, !tbaa !33    ; 4 uses
  %i.j = zext i8 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.l = load i16, ptr %i.k, align 1
  %i.m = zext i16 %i.l to i32
  %i.n = shl nuw nsw i32 %i.m, 8
  %i.o = or disjoint i32 %i.n, %i.j
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  %i.q = and i8 %i.i, 1                           ; 2 uses
  %i.r = xor i8 %i.q, 1
  store i8 %i.r, ptr %i.p, align 4, !tbaa !54
  %i.s = lshr i8 %i.i, 1
  %i.t = and i8 %i.s, 7                           ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 69
  store i8 %i.t, ptr %i.u, align 1, !tbaa !55
  %i.v = lshr i8 %i.i, 4
  %i.w = and i8 %i.v, 1                           ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 70
  store i8 %i.w, ptr %i.x, align 2, !tbaa !56
  %i.y = lshr i32 %i.o, 5                         ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  store i32 %i.y, ptr %i.z, align 8, !tbaa !57
  %i.aa = icmp samesign ugt i8 %i.t, 3
  br i1 %i.aa, label %VP8SetError.exit127, label %bb.e

VP8SetError.exit127:                              ; preds = %bb.d
  store i32 3, ptr %0, align 8, !tbaa !24
  store ptr @.str.4, ptr %i.b, align 8, !tbaa !25
  br label %.critedge.sink.split

bb.e:                                             ; preds = %bb.d
  %.not = icmp eq i8 %i.w, 0
  br i1 %.not, label %VP8SetError.exit128, label %bb.f

VP8SetError.exit128:                              ; preds = %bb.e
  store i32 4, ptr %0, align 8, !tbaa !24
  store ptr @.str.5, ptr %i.b, align 8, !tbaa !25
  br label %.critedge.sink.split

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 3 ; 2 uses
  %i.ac = add i64 %i.e, -3                        ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 76
  %.not118.not = icmp eq i8 %i.q, 0
  br i1 %.not118.not, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.ae = icmp ult i64 %i.ac, 7
  br i1 %i.ae, label %VP8SetError.exit129, label %bb.h

VP8SetError.exit129:                              ; preds = %bb.g
  store i32 7, ptr %0, align 8, !tbaa !24
  store ptr @.str.6, ptr %i.b, align 8, !tbaa !25
  br label %.critedge.sink.split

bb.h:                                             ; preds = %bb.g
  %i.af = load i8, ptr %i.ab, align 1, !tbaa !33
  %i.ag = icmp eq i8 %i.af, -99
  br i1 %i.ag, label %bb.i, label %VP8SetError.exit130

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !33
  %i.aj = icmp eq i8 %i.ai, 1
  br i1 %i.aj, label %VP8CheckSignature.exit, label %VP8SetError.exit130

VP8CheckSignature.exit:                           ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 5
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !33
  %.not137 = icmp eq i8 %i.al, 42
  br i1 %.not137, label %bb.j, label %VP8SetError.exit130

VP8SetError.exit130:                              ; preds = %bb.h, %bb.i, %VP8CheckSignature.exit
  store i32 3, ptr %0, align 8, !tbaa !24
  store ptr @.str.7, ptr %i.b, align 8, !tbaa !25
  br label %.critedge.sink.split

bb.j:                                             ; preds = %VP8CheckSignature.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 7 ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !33
  %i.ao = zext i8 %i.an to i16
  %i.ap = shl nuw i16 %i.ao, 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 6
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !33
  %i.as = zext i8 %i.ar to i16
  %.masked = and i16 %i.ap, 16128
  %i.at = or disjoint i16 %.masked, %i.as         ; 2 uses
  store i16 %i.at, ptr %i.ad, align 4, !tbaa !58
  %i.au = load i8, ptr %i.am, align 1, !tbaa !33
  %i.av = lshr i8 %i.au, 6
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 %i.av, ptr %i.aw, align 8, !tbaa !59
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 9 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !33
  %i.az = zext i8 %i.ay to i16
  %i.ba = shl nuw i16 %i.az, 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !33
  %i.bd = zext i8 %i.bc to i16
  %.masked120 = and i16 %i.ba, 16128
  %i.be = or disjoint i16 %.masked120, %i.bd      ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 78
  store i16 %i.be, ptr %i.bf, align 2, !tbaa !60
  %i.bg = load i8, ptr %i.ax, align 1, !tbaa !33
  %i.bh = lshr i8 %i.bg, 6
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 81
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !61
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 10
  %i.bk = add i64 %i.e, -10
  %i.bl = zext nneg i16 %i.at to i32              ; 5 uses
  %i.bm = add nuw nsw i32 %i.bl, 15
  %i.bn = lshr i32 %i.bm, 4
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 408
  store i32 %i.bn, ptr %i.bo, align 8, !tbaa !35
  %i.bp = zext nneg i16 %i.be to i32              ; 5 uses
  %i.bq = add nuw nsw i32 %i.bp, 15
  %i.br = lshr i32 %i.bq, 4
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 412
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !62
  store i32 %i.bl, ptr %1, align 8, !tbaa !63
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.bp, ptr %i.bt, align 4, !tbaa !64
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 116
  store i32 0, ptr %i.bu, align 4, !tbaa !65
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i32 0, ptr %i.bv, align 8, !tbaa !66
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i32 0, ptr %i.bw, align 8, !tbaa !67
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 124
  store i32 %i.bl, ptr %i.bx, align 4, !tbaa !68
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 132
  store i32 %i.bp, ptr %i.by, align 4, !tbaa !69
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i32 0, ptr %i.bz, align 8, !tbaa !70
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 140
  store i32 %i.bl, ptr %i.ca, align 4, !tbaa !71
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i32 %i.bp, ptr %i.cb, align 8, !tbaa !72
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.bl, ptr %i.cc, align 4, !tbaa !73
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.bp, ptr %i.cd, align 8, !tbaa !74
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1192
  tail call void @VP8ResetProba(ptr noundef nonnull %i.ce) #13
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 132
  store <4 x i32> <i32 0, i32 0, i32 1, i32 0>, ptr %i.cf, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i32 0, ptr %i.cg, align 4
  %.pre = load i32, ptr %i.z, align 8, !tbaa !57
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %i.ch = phi i32 [ %.pre, %bb.j ], [ %i.y, %bb.f ]
  %.1110 = phi i64 [ %i.bk, %bb.j ], [ %i.ac, %bb.f ] ; 2 uses
  %.1 = phi ptr [ %i.bj, %bb.j ], [ %i.ab, %bb.f ] ; 2 uses
  %i.ci = zext i32 %i.ch to i64                   ; 2 uses
  %i.cj = icmp ult i64 %.1110, %i.ci
  br i1 %i.cj, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ck = load i32, ptr %0, align 8, !tbaa !24
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  store i32 7, ptr %0, align 8, !tbaa !24
  store ptr @.str.8, ptr %i.b, align 8, !tbaa !25
  br label %.critedge.sink.split

bb.n:                                             ; preds = %bb.k
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  tail call void @VP8InitBitReader(ptr noundef nonnull %i.cm, ptr noundef nonnull %.1, i64 noundef %i.ci) #13
  %i.cn = load i32, ptr %i.z, align 8, !tbaa !57
  %i.co = zext i32 %i.cn to i64                   ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.1, i64 %i.co
  %i.cq = sub i64 %.1110, %i.co
  %i.cr = load i8, ptr %i.p, align 4, !tbaa !54
  %.not121 = icmp eq i8 %i.cr, 0
  br i1 %.not121, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cs = tail call i32 @VP8GetValue(ptr noundef nonnull %i.cm, i32 noundef 1) #13
  %i.ct = trunc i32 %i.cs to i8
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 82
  store i8 %i.ct, ptr %i.cu, align 2, !tbaa !75
  %i.cv = tail call i32 @VP8GetValue(ptr noundef nonnull %i.cm, i32 noundef 1) #13
  %i.cw = trunc i32 %i.cv to i8
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 83
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !76
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.da = tail call fastcc i32 @ParseSegmentHeader(ptr noundef %i.cm, ptr noundef %i.cy, ptr noundef %i.cz)
  %.not122 = icmp eq i32 %i.da, 0
  br i1 %.not122, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.db = load i32, ptr %0, align 8, !tbaa !24
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  store i32 3, ptr %0, align 8, !tbaa !24
  store ptr @.str.9, ptr %i.b, align 8, !tbaa !25
  br label %.critedge.sink.split

bb.s:                                             ; preds = %bb.p
  %i.dd = tail call fastcc i32 @ParseFilterHeader(ptr noundef %i.cm, ptr noundef %0)
  %.not123 = icmp eq i32 %i.dd, 0
  br i1 %.not123, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.de = load i32, ptr %0, align 8, !tbaa !24
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.t
  store i32 3, ptr %0, align 8, !tbaa !24
  store ptr @.str.10, ptr %i.b, align 8, !tbaa !25
  br label %.critedge.sink.split

bb.v:                                             ; preds = %bb.s
  %i.dg = tail call fastcc i32 @ParsePartitions(ptr noundef %0, ptr noundef nonnull %i.cp, i64 noundef %i.cq) ; 2 uses
  %.not124 = icmp eq i32 %i.dg, 0
  br i1 %.not124, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dh = load i32, ptr %0, align 8, !tbaa !24
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.x, label %.critedge

bb.x:                                             ; preds = %bb.w
  store i32 %i.dg, ptr %0, align 8, !tbaa !24
  store ptr @.str.11, ptr %i.b, align 8, !tbaa !25
  br label %.critedge.sink.split

bb.y:                                             ; preds = %bb.v
  tail call void @VP8ParseQuant(ptr noundef nonnull %0) #13
  %i.dj = load i8, ptr %i.p, align 4, !tbaa !54
  %.not125 = icmp eq i8 %i.dj, 0
  br i1 %.not125, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.dk = load i32, ptr %0, align 8, !tbaa !24
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %bb.aa, label %.critedge

bb.aa:                                            ; preds = %bb.z
  store i32 4, ptr %0, align 8, !tbaa !24
  store ptr @.str.12, ptr %i.b, align 8, !tbaa !25
  br label %.critedge.sink.split

bb.ab:                                            ; preds = %bb.y
  %i.dm = tail call i32 @VP8GetValue(ptr noundef nonnull %i.cm, i32 noundef 1) #13 ; 0 uses
  tail call void @VP8ParseProba(ptr noundef nonnull %i.cm, ptr noundef nonnull %0) #13
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %VP8SetError.exit, %VP8SetError.exit126, %VP8SetError.exit129, %VP8SetError.exit130, %bb.ab, %VP8SetError.exit128, %VP8SetError.exit127, %bb.m, %bb.r, %bb.u, %bb.x, %bb.aa
  %.sink = phi i32 [ 0, %bb.aa ], [ 0, %bb.x ], [ 0, %bb.u ], [ 0, %bb.r ], [ 0, %bb.m ], [ 0, %VP8SetError.exit127 ], [ 0, %VP8SetError.exit128 ], [ 1, %bb.ab ], [ 0, %VP8SetError.exit130 ], [ 0, %VP8SetError.exit129 ], [ 0, %VP8SetError.exit126 ], [ 0, %VP8SetError.exit ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sink, ptr %i.dn, align 4, !tbaa !27
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.z, %bb.w, %bb.t, %bb.q, %bb.l, %bb.a
  %.1112 = phi i32 [ 0, %bb.a ], [ 0, %bb.z ], [ 0, %bb.l ], [ 0, %bb.q ], [ 0, %bb.t ], [ 0, %bb.w ], [ %.sink, %.critedge.sink.split ]
  ret i32 %.1112
}

declare void @VP8ResetProba(ptr noundef) local_unnamed_addr #5

declare void @VP8InitBitReader(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare i32 @VP8GetValue(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @ParseSegmentHeader(ptr noundef nonnull %0, ptr nofree noundef nonnull captures(none) initializes((0, 8)) %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @VP8GetValue(ptr noundef nonnull %0, i32 noundef 1) #13 ; 2 uses
  store i32 %i.a, ptr %1, align 4, !tbaa !77
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @VP8GetValue(ptr noundef nonnull %0, i32 noundef 1) #13
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  store i32 %i.b, ptr %i.c, align 4, !tbaa !78
  %i.d = tail call i32 @VP8GetValue(ptr noundef nonnull %0, i32 noundef 1) #13
  %.not29 = icmp eq i32 %i.d, 0
  br i1 %.not29, label %.loopexit36, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @VP8GetValue(ptr noundef nonnull %0, i32 noundef 1) #13
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.e, ptr %i.f, align 4, !tbaa !79
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.h = tail call i32 @VP8GetValue(ptr noundef nonnull %0, i32 noundef 1) #13
  %.not34 = icmp eq i32 %i.h, 0
  br i1 %.not34, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i32 @VP8GetSignedValue(ptr noundef nonnull %0, i32 noundef 7) #13
  %i.j = trunc i32 %i.i to i8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.k = phi i8 [ %i.j, %bb.d ], [ 0, %bb.c ]
  store i8 %i.k, ptr %i.g, align 4, !tbaa !33
  %i.l = tail call i32 @VP8GetValue(ptr noundef nonnull %0, i32 noundef 1) #13
  %.not34.1 = icmp eq i32 %i.l, 0
  br i1 %.not34.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = tail call i32 @VP8GetSignedValue(ptr noundef nonnull %0, i32 noundef 7) #13
  %i.n = trunc i32 %i.m to i8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.o = phi i8 [ %i.n, %bb.f ], [ 0, %bb.e ]
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 13
  store i8 %i.o, ptr %i.p, align 1, !tbaa !33
  %i.q = tail call i32 @VP8GetValue(ptr noundef nonnull %0, i32 noundef 1) #13
  %.not34.2 = icmp eq i32 %i.q, 0
  br i1 %.not34.2, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = tail call i32 @VP8GetSignedValue(ptr noundef nonnull %0, i32 noundef 7) #13
  %i.s = trunc i32 %i.r to i8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.t = phi i8 [ %i.s, %bb.h ], [ 0, %bb.g ]
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i8 %i.t, ptr %i.u, align 2, !tbaa !33
  %i.v = tail call i32 @VP8GetValue(ptr noundef nonnull %0, i32 noundef 1) #13
  %.not34.3 = icmp eq i32 %i.v, 0
  br i1 %.not34.3, label %.preheader35, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = tail call i32 @VP8GetSignedValue(ptr noundef nonnull %0, i32 noundef 7) #13
  %i.x = trunc i32 %i.w to i8
  br label %.preheader35

.preheader35:                                     ; preds = %bb.j, %bb.i
  %i.y = phi i8 [ %i.x, %bb.j ], [ 0, %bb.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 15
  store i8 %i.y, ptr %i.z, align 1, !tbaa !33
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = tail call i32 @VP8GetValue(ptr noundef nonnull %0, i32 noundef 1) #13
  %.not33 = icmp eq i32 %i.ab, 0
  br i1 %.not33, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.preheader35
  %i.ac = tail call i32 @VP8GetSignedValue(ptr noundef nonnull %0, i32 noundef 6) #13
  %i.ad = trunc i32 %i.ac to i8
  br label %bb.l

bb.l:                                             ; preds = %.preheader35, %bb.k
  %i.ae = phi i8 [ %i.ad, %bb.k ], [ 0, %.preheader35 ]
  store i8 %i.ae, ptr %i.aa, align 4, !tbaa !33
  %i.af = tail call i32 @VP8GetValue(ptr noundef nonnull %0, i32 noundef 1) #13
  %.not33.1 = icmp eq i32 %i.af, 0
  br i1 %.not33.1, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = tail call i32 @VP8GetSignedValue(ptr noundef nonnull %0, i32 noundef 6) #13
  %i.ah = trunc i32 %i.ag to i8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ai = phi i8 [ %i.ah, %bb.m ], [ 0, %bb.l ]
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !33
  %i.ak = tail call i32 @VP8GetValue(ptr noundef nonnull %0, i32 noundef 1) #13
  %.not33.2 = icmp eq i32 %i.ak, 0
  br i1 %.not33.2, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = tail call i32 @VP8GetSignedValue(ptr noundef nonnull %0, i32 noundef 6) #13
  %i.am = trunc i32 %i.al to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.an = phi i8 [ %i.am, %bb.o ], [ 0, %bb.n ]
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i8 %i.an, ptr %i.ao, align 2, !tbaa !33
  %i.ap = tail call i32 @VP8GetValue(ptr noundef nonnull %0, i32 noundef 1) #13
  %.not33.3 = icmp eq i32 %i.ap, 0
  br i1 %.not33.3, label %.loopexit36.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aq = tail call i32 @VP8GetSignedValue(ptr noundef nonnull %0, i32 noundef 6) #13
  %i.ar = trunc i32 %i.aq to i8
  br label %.loopexit36.loopexit

.loopexit36.loopexit:                             ; preds = %bb.q, %bb.p
  %i.as = phi i8 [ %i.ar, %bb.q ], [ 0, %bb.p ]
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 %i.as, ptr %i.at, align 1, !tbaa !33
  br label %.loopexit36

.loopexit36:                                      ; preds = %.loopexit36.loopexit, %bb.b
  %i.au = load i32, ptr %i.c, align 4, !tbaa !78
  %.not30 = icmp eq i32 %i.au, 0
  br i1 %.not30, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.loopexit36
  %i.av = tail call i32 @VP8GetValue(ptr noundef nonnull %0, i32 noundef 1) #13
  %.not32 = icmp eq i32 %i.av, 0
  br i1 %.not32, label %.preheader.1, label %bb.r

end_hunk_0
begin_hunk_1_@VP8DecodeMB:bb.a
  %i.hi = call i32 %i.hh(ptr noundef %1, ptr noundef nonnull %i.ei, i32 noundef %i.hg, ptr noundef nonnull %i.ej, i32 noundef 0, ptr noundef nonnull %i.gv) #13, !inline_history !86 ; 3 uses
  %i.hj = icmp sgt i32 %i.hi, 0
  %i.hk = zext i1 %i.hj to i32                    ; 2 uses
  %i.hl = lshr i32 %i.ha, 1
  %i.hm = load i16, ptr %i.gv, align 2, !tbaa !43
  %.not181.i = icmp eq i16 %i.hm, 0
  %i.hn = icmp sgt i32 %i.hi, 3
  %.inv.i131.1175.i = icmp slt i32 %i.hi, 2
  %i.ho = getelementptr inbounds nuw i8, ptr %.0125138.i, i64 288 ; 2 uses
  %i.hp = add nuw nsw i32 %i.hl, %i.hk
  %i.hq = load volatile ptr, ptr @GetCoeffs, align 8, !tbaa !29
  %i.hr = call i32 %i.hq(ptr noundef %1, ptr noundef nonnull %i.ei, i32 noundef %i.hp, ptr noundef nonnull %i.ej, i32 noundef 0, ptr noundef nonnull %i.ho) #13, !inline_history !86 ; 3 uses
  %i.hs = icmp sgt i32 %i.hr, 0                   ; 2 uses
  %i.ht = zext i1 %i.hs to i32
  %i.hu = load i16, ptr %i.ho, align 2, !tbaa !43
  %i.hv = icmp ne i16 %i.hu, 0
  %i.hw = zext i1 %i.hv to i32
  %i.hx = select i1 %.not181.i, i32 0, i32 4
  %i.hy = select i1 %.inv.i131.1175.i, i32 %i.hx, i32 8
  %i.hz = select i1 %i.hn, i32 12, i32 %i.hy
  %i.ia = icmp sgt i32 %i.hr, 3
  %.inv.i131.1.1176.i = icmp slt i32 %i.hr, 2
  %i.ib = select i1 %.inv.i131.1.1176.i, i32 %i.hw, i32 2
  %i.ic = select i1 %i.ia, i32 3, i32 %i.ib
  %i.id = or disjoint i32 %i.ic, %i.hz
  %i.ie = getelementptr inbounds nuw i8, ptr %.0125138.i, i64 320 ; 2 uses
  %i.if = lshr i32 %i.hd, 1
  %i.ig = select i1 %i.hs, i32 64, i32 0
  %i.ih = add nuw nsw i32 %i.if, %i.hk
  %i.ii = load volatile ptr, ptr @GetCoeffs, align 8, !tbaa !29
  %i.ij = call i32 %i.ii(ptr noundef %1, ptr noundef nonnull %i.ei, i32 noundef %i.ih, ptr noundef nonnull %i.ej, i32 noundef 0, ptr noundef nonnull %i.ie) #13, !inline_history !86 ; 3 uses
  %i.ik = icmp sgt i32 %i.ij, 0
  %i.il = zext i1 %i.ik to i32                    ; 2 uses
  %i.im = load i16, ptr %i.ie, align 2, !tbaa !43
  %.not182.i = icmp eq i16 %i.im, 0
  %i.in = icmp sgt i32 %i.ij, 3
  %.inv.i131.1174.1.i = icmp slt i32 %i.ij, 2
  %i.io = getelementptr inbounds nuw i8, ptr %.0125138.i, i64 352 ; 2 uses
  %i.ip = add nuw nsw i32 %i.il, %i.ht
  %i.iq = load volatile ptr, ptr @GetCoeffs, align 8, !tbaa !29
  %i.ir = call i32 %i.iq(ptr noundef %1, ptr noundef nonnull %i.ei, i32 noundef %i.ip, ptr noundef nonnull %i.ej, i32 noundef 0, ptr noundef nonnull %i.io) #13, !inline_history !86 ; 3 uses
  %i.is = icmp sgt i32 %i.ir, 0                   ; 2 uses
  %i.it = select i1 %i.is, i32 2, i32 0
  %i.iu = or disjoint i32 %i.it, %i.il
  %i.iv = load i16, ptr %i.io, align 2, !tbaa !43
  %i.iw = icmp ne i16 %i.iv, 0
  %i.ix = zext i1 %i.iw to i32
  %i.iy = shl nuw nsw i32 %i.id, 4
  %i.iz = select i1 %.not182.i, i32 0, i32 4
  %i.ja = select i1 %.inv.i131.1174.1.i, i32 %i.iz, i32 8
  %i.jb = select i1 %i.in, i32 12, i32 %i.ja
  %i.jc = or disjoint i32 %i.jb, %i.iy
  %i.jd = icmp sgt i32 %i.ir, 3
  %.inv.i131.1.1.1.i = icmp slt i32 %i.ir, 2
  %i.je = select i1 %.inv.i131.1.1.1.i, i32 %i.ix, i32 2
  %i.jf = select i1 %i.jd, i32 3, i32 %i.je
  %i.jg = or disjoint i32 %i.jf, %i.jc
  %i.jh = select i1 %i.is, i32 128, i32 0
  %i.ji = shl nuw nsw i32 %i.jg, 8
  %i.jj = or i32 %i.ji, %i.gu                     ; 3 uses
  %i.jk = shl nuw nsw i32 %i.iu, 6
  %i.jl = or disjoint i32 %i.jk, %i.gx
  %i.jm = or i32 %i.jl, %i.eb
  %i.jn = or i32 %i.ft, %i.eh
  %i.jo = or i32 %i.jn, %i.gw
  %i.jp = or i32 %i.jo, %i.ig
  %i.jq = or i32 %i.jp, %i.jh
  %i.jr = trunc nuw i32 %i.jm to i8
  store i8 %i.jr, ptr %i.h, align 1, !tbaa !44
  %i.js = trunc nuw i32 %i.jq to i8
  store i8 %i.js, ptr %i.d, align 1, !tbaa !44
  %i.jt = getelementptr inbounds nuw i8, ptr %i.k, i64 788
  store i32 %i.ef, ptr %i.jt, align 4, !tbaa !94
  %i.ju = getelementptr inbounds nuw i8, ptr %i.k, i64 792
  store i32 %i.jj, ptr %i.ju, align 4, !tbaa !95
  %i.jv = and i32 %i.jj, 43690
  %.not129.i = icmp eq i32 %i.jv, 0
  br i1 %.not129.i, label %bb.i, label %ParseResiduals.exit

bb.i:                                             ; preds = %bb.h
  %i.jw = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !97
  %i.jy = trunc i32 %i.jx to i8
  br label %ParseResiduals.exit

ParseResiduals.exit:                              ; preds = %bb.h, %bb.i
  %i.jz = phi i8 [ %i.jy, %bb.i ], [ 0, %bb.h ]
  %i.ka = getelementptr inbounds nuw i8, ptr %i.k, i64 796
  store i8 %i.jz, ptr %i.ka, align 4, !tbaa !98
  %i.kb = or i32 %i.jj, %i.ef
  %.not130.i = icmp ne i32 %i.kb, 0
  %i.kc = zext i1 %.not130.i to i8
  br label %bb.m

bb.j:                                             ; preds = %bb.b
  store i8 0, ptr %i.h, align 1, !tbaa !44
  store i8 0, ptr %i.d, align 1, !tbaa !44
  %i.kd = getelementptr inbounds nuw i8, ptr %i.k, i64 768
  %i.ke = load i8, ptr %i.kd, align 4, !tbaa !93
  %.not30 = icmp eq i8 %i.ke, 0
  br i1 %.not30, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.kf = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  store i8 0, ptr %i.kf, align 1, !tbaa !42
  %i.kg = getelementptr inbounds i8, ptr %i.c, i64 -1
  store i8 0, ptr %i.kg, align 1, !tbaa !42
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.kh = getelementptr inbounds nuw i8, ptr %i.k, i64 788
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.kh, i8 0, i64 9, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %ParseResiduals.exit
  %.0 = phi i8 [ 0, %bb.l ], [ %i.kc, %ParseResiduals.exit ]
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 2920
  %i.kj = load i32, ptr %i.ki, align 8, !tbaa !37
  %i.kk = icmp sgt i32 %i.kj, 0
  br i1 %i.kk, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 2840
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !99
  %i.kn = load i32, ptr %i.e, align 8, !tbaa !40
  %i.ko = sext i32 %i.kn to i64
  %i.kp = getelementptr inbounds [4 x i8], ptr %i.km, i64 %i.ko ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 2924
  %i.kr = getelementptr inbounds nuw i8, ptr %i.k, i64 798
  %i.ks = load i8, ptr %i.kr, align 2, !tbaa !92
  %i.kt = zext i8 %i.ks to i64
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %i.kt
  %i.kv = getelementptr inbounds nuw i8, ptr %i.k, i64 768
  %i.kw = load i8, ptr %i.kv, align 4, !tbaa !93
  %i.kx = zext i8 %i.kw to i64
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %i.kx
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !33 ; 2 uses
  store i32 %i.kz, ptr %i.kp, align 1, !tbaa !33
  %i.la = getelementptr inbounds nuw i8, ptr %i.kp, i64 2
  %i.lb = lshr i32 %i.kz, 16
  %i.lc = trunc i32 %i.lb to i8
  %i.ld = or i8 %.0, %i.lc
  store i8 %i.ld, ptr %i.la, align 1, !tbaa !101
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.le = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.lf = load i32, ptr %i.le, align 8, !tbaa !36
  %.not32 = icmp eq i32 %i.lf, 0
  %i.lg = zext i1 %.not32 to i32
  ret i32 %i.lg
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @VP8InitScanline(ptr nofree noundef captures(none) initializes((2816, 2820), (2904, 2908)) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2832
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -2
  store i8 0, ptr %i.c, align 1, !tbaa !44
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -1
  store i8 0, ptr %i.d, align 1, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2816
  store i32 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2904
  store i32 0, ptr %i.f, align 8, !tbaa !40
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @VP8Decode(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %VP8SetError.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %0, align 8, !tbaa !24
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %VP8SetError.exit

bb.d:                                             ; preds = %bb.c
  store i32 2, ptr %0, align 8, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @.str.13, ptr %i.e, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.f, align 4, !tbaa !27
  br label %VP8SetError.exit

bb.e:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !27
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = tail call i32 @VP8GetHeaders(ptr noundef nonnull %0, ptr noundef nonnull %1)
  %.not26 = icmp eq i32 %i.i, 0
  br i1 %.not26, label %VP8SetError.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = tail call i32 @VP8EnterCritical(ptr noundef nonnull %0, ptr noundef nonnull %1) #13
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.h, label %VP8Clear.exit

bb.h:                                             ; preds = %bb.g
  %i.l = tail call i32 @VP8InitFrame(ptr noundef nonnull %0, ptr noundef nonnull %1) #13
  %.not27 = icmp eq i32 %i.l, 0
  br i1 %.not27, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2908 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 428 ; 2 uses
  store i32 0, ptr %i.m, align 4, !tbaa !105
  %i.o = load i32, ptr %i.n, align 4, !tbaa !106
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph36.i, label %._crit_edge37.i

.lr.ph36.i:                                       ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2904 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2832
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2816
  br label %bb.j

bb.j:                                             ; preds = %VP8SetError.exit.i, %.lr.ph36.i
  %storemerge34.i = phi i32 [ 0, %.lr.ph36.i ], [ %i.av, %VP8SetError.exit.i ]
  %i.x = load i32, ptr %i.r, align 8, !tbaa !28
  %i.y = and i32 %i.x, %storemerge34.i
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.z
  %i.ab = tail call i32 @VP8ParseIntraModeRow(ptr noundef nonnull %i.s, ptr noundef nonnull %0) #13
  %.not26.i = icmp eq i32 %i.ab, 0
  br i1 %.not26.i, label %bb.k, label %.preheader.i

.preheader.i:                                     ; preds = %bb.j
  %i.ac = load i32, ptr %i.t, align 8, !tbaa !40
  %i.ad = load i32, ptr %i.u, align 8, !tbaa !35
  %i.ae = icmp slt i32 %i.ac, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %._crit_edge.i

bb.k:                                             ; preds = %bb.j
  %i.af = load i32, ptr %0, align 8, !tbaa !24
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %VP8SetError.exit31.sink.split.i, label %bb.q

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.m
  %i.ah = tail call i32 @VP8DecodeMB(ptr noundef nonnull %0, ptr noundef nonnull %i.aa)
  %.not28.i = icmp eq i32 %i.ah, 0
  br i1 %.not28.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i
  %i.ai = load i32, ptr %0, align 8, !tbaa !24
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %VP8SetError.exit31.sink.split.i, label %bb.q

bb.m:                                             ; preds = %.lr.ph.i
  %i.ak = load i32, ptr %i.t, align 8, !tbaa !40
  %i.al = add nsw i32 %i.ak, 1                    ; 2 uses
  store i32 %i.al, ptr %i.t, align 8, !tbaa !40
  %i.am = load i32, ptr %i.u, align 8, !tbaa !35
  %i.an = icmp slt i32 %i.al, %i.am
  br i1 %i.an, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !102

._crit_edge.i:                                    ; preds = %bb.m, %.preheader.i
  %i.ao = load ptr, ptr %i.v, align 8, !tbaa !39  ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -2
  store i8 0, ptr %i.ap, align 1, !tbaa !44
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 -1
  store i8 0, ptr %i.aq, align 1, !tbaa !42
  store i32 0, ptr %i.w, align 8
  store i32 0, ptr %i.t, align 8, !tbaa !40
  %i.ar = tail call i32 @VP8ProcessRow(ptr noundef nonnull %0, ptr noundef nonnull %1) #13
  %.not27.i = icmp eq i32 %i.ar, 0
  br i1 %.not27.i, label %bb.n, label %VP8SetError.exit.i

bb.n:                                             ; preds = %._crit_edge.i
  %i.as = load i32, ptr %0, align 8, !tbaa !24
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %VP8SetError.exit31.sink.split.i, label %bb.q

VP8SetError.exit.i:                               ; preds = %._crit_edge.i
  %i.au = load i32, ptr %i.m, align 4, !tbaa !105
  %i.av = add nsw i32 %i.au, 1                    ; 3 uses
  store i32 %i.av, ptr %i.m, align 4, !tbaa !105
  %i.aw = load i32, ptr %i.n, align 4, !tbaa !106
  %i.ax = icmp slt i32 %i.av, %i.aw
  br i1 %i.ax, label %bb.j, label %._crit_edge37.i, !llvm.loop !103

._crit_edge37.i:                                  ; preds = %VP8SetError.exit.i, %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !107
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %bb.o, label %bb.q

bb.o:                                             ; preds = %._crit_edge37.i
  %i.bb = tail call ptr @WebPGetWorkerInterface() #13
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !108
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bf = tail call i32 %i.bd(ptr noundef nonnull %i.be) #13, !inline_history !104
  %.not.i = icmp eq i32 %i.bf, 0
  br i1 %.not.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bg = load i32, ptr %0, align 8, !tbaa !24
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %VP8SetError.exit31.sink.split.i, label %bb.q

VP8SetError.exit31.sink.split.i:                  ; preds = %bb.p, %bb.n, %bb.l, %bb.k
  %.sink.i = phi i32 [ 7, %bb.l ], [ 7, %bb.k ], [ 6, %bb.n ], [ 6, %bb.p ]
  %.str.16.sink.i = phi ptr [ @.str.15, %bb.l ], [ @.str.14, %bb.k ], [ @.str.16, %bb.n ], [ @.str.16, %bb.p ]
  store i32 %.sink.i, ptr %0, align 8, !tbaa !24
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.str.16.sink.i, ptr %i.bi, align 8, !tbaa !25
  store i32 0, ptr %i.g, align 4, !tbaa !27
  br label %bb.q

bb.q:                                             ; preds = %bb.h, %bb.k, %bb.l, %bb.n, %._crit_edge37.i, %bb.o, %bb.p, %VP8SetError.exit31.sink.split.i
  %.1 = phi i32 [ 0, %bb.h ], [ 0, %bb.k ], [ 1, %._crit_edge37.i ], [ 1, %bb.o ], [ 0, %bb.p ], [ 0, %bb.l ], [ 0, %bb.n ], [ 0, %VP8SetError.exit31.sink.split.i ]
  %i.bj = tail call i32 @VP8ExitCritical(ptr noundef nonnull %0, ptr noundef nonnull %1) #13
  %i.bk = and i32 %i.bj, %.1
  %.not28 = icmp eq i32 %i.bk, 0
  br i1 %.not28, label %VP8Clear.exit, label %bb.r

VP8Clear.exit:                                    ; preds = %bb.g, %bb.q
  %i.bl = tail call ptr @WebPGetWorkerInterface() #13
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !30
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void %i.bn(ptr noundef nonnull %i.bo) #13, !inline_history !31
  tail call void @WebPDeallocateAlphaMemory(ptr noundef nonnull %0) #13
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 2888 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !32
  tail call void @WebPSafeFree(ptr noundef %i.bq) #13
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.br, i8 0, i64 48, i1 false)
  store i32 0, ptr %i.g, align 4, !tbaa !27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i8 0, i64 16, i1 false)
  br label %VP8SetError.exit

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.g, align 4, !tbaa !27
  br label %VP8SetError.exit

VP8SetError.exit:                                 ; preds = %bb.d, %bb.c, %bb.f, %bb.a, %bb.r, %VP8Clear.exit
  %.022 = phi i32 [ 0, %bb.a ], [ 0, %bb.f ], [ 1, %bb.r ], [ 0, %VP8Clear.exit ], [ 0, %bb.c ], [ 0, %bb.d ]
  ret i32 %.022
}

declare i32 @VP8EnterCritical(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @VP8InitFrame(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @VP8ExitCritical(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @WebPDeallocateAlphaMemory(ptr noundef) local_unnamed_addr #5

declare i32 @VP8GetSignedValue(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 17) i32 @GetCoeffsAlt(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) %5) #3 {
bb.a:
  %i.a = icmp slt i32 %4, 16
  br i1 %i.a, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.b = sext i32 %4 to i64
  %i.c = getelementptr inbounds [8 x i8], ptr %1, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.e = sext i32 %2 to i64
  %i.f = getelementptr inbounds [11 x i8], ptr %i.d, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 14 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %.pre = load i32, ptr %i.g, align 8, !tbaa !45, !alias.scope !127
  %.pre65.a = load i32, ptr %i.h, align 4, !tbaa !46, !alias.scope !127
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %VP8GetSigned.exit
  %i.k = phi i32 [ %.pre65.a, %.lr.ph ], [ %i.es, %VP8GetSigned.exit ] ; 3 uses
  %i.l = phi i32 [ %.pre, %.lr.ph ], [ %i.eu, %VP8GetSigned.exit ] ; 2 uses
  %.02758 = phi ptr [ %i.f, %.lr.ph ], [ %.2, %VP8GetSigned.exit ] ; 2 uses
  %.02957 = phi i32 [ %4, %.lr.ph ], [ %i.ck, %VP8GetSigned.exit ] ; 2 uses
  %i.m = load i8, ptr %.02758, align 1, !tbaa !33
  %i.n = zext i8 %i.m to i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.o = icmp slt i32 %i.k, 0
  br i1 %i.o, label %bb.c, label %VP8LoadNewBytes.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !47, !alias.scope !129 ; 3 uses
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !48, !alias.scope !129
  %i.r = icmp ult ptr %i.p, %i.q
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.0.copyload.i.i = load i64, ptr %i.p, align 1, !noalias !129
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 7
  store ptr %i.s, ptr %i.i, align 8, !tbaa !47, !alias.scope !129
  %i.t = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i)
  %i.u = load i64, ptr %0, align 8, !tbaa !49, !alias.scope !129
  %i.v = tail call i64 @llvm.fshl.i64(i64 %i.u, i64 %i.t, i64 56)
  store i64 %i.v, ptr %0, align 8, !tbaa !49, !alias.scope !129
  %i.w = add nsw i32 %i.k, 56                     ; 2 uses
  store i32 %i.w, ptr %i.h, align 4, !tbaa !46, !alias.scope !129
  br label %VP8LoadNewBytes.exit.i

bb.e:                                             ; preds = %bb.c
  tail call void @VP8LoadFinalBytes(ptr noundef nonnull %0) #13
  %.pre.i = load i32, ptr %i.h, align 4, !tbaa !46, !alias.scope !127
  br label %VP8LoadNewBytes.exit.i

VP8LoadNewBytes.exit.i:                           ; preds = %bb.e, %bb.d, %bb.b
  %i.x = phi i32 [ %.pre.i, %bb.e ], [ %i.w, %bb.d ], [ %i.k, %bb.b ] ; 3 uses
  %i.y = mul i32 %i.l, %i.n
  %i.z = lshr i32 %i.y, 8                         ; 3 uses
  %i.aa = load i64, ptr %0, align 8, !tbaa !49, !alias.scope !127 ; 3 uses
  %i.ab = zext i32 %i.x to i64                    ; 2 uses
  %i.ac = lshr i64 %i.aa, %i.ab
  %i.ad = trunc i64 %i.ac to i32
  %.not = icmp ult i32 %i.z, %i.ad                ; 2 uses
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %VP8LoadNewBytes.exit.i
  %i.ae = add nuw nsw i32 %i.z, 1                 ; 2 uses
  %i.af = sub i32 %i.l, %i.ae
  %i.ag = zext nneg i32 %i.ae to i64
  %i.ah = shl i64 %i.ag, %i.ab
  %i.ai = sub i64 %i.aa, %i.ah                    ; 2 uses
  store i64 %i.ai, ptr %0, align 8, !tbaa !49, !alias.scope !127
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %VP8LoadNewBytes.exit.i
  %i.aj = phi i64 [ %i.ai, %bb.f ], [ %i.aa, %VP8LoadNewBytes.exit.i ]
  %.0.i = phi i32 [ %i.af, %bb.f ], [ %i.z, %VP8LoadNewBytes.exit.i ] ; 3 uses
  %i.ak = icmp ult i32 %.0.i, 127
  br i1 %i.ak, label %bb.h, label %VP8GetBitAlt.exit

bb.h:                                             ; preds = %bb.g
  %i.al = zext nneg i32 %.0.i to i64              ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr @kVP8Log2Range, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !33, !noalias !127
  %i.ao = zext i8 %i.an to i32
  %i.ap = getelementptr inbounds nuw i8, ptr @kVP8NewRange, i64 %i.al
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !33, !noalias !127
  %i.ar = zext i8 %i.aq to i32
  %i.as = sub nsw i32 %i.x, %i.ao                 ; 2 uses
  store i32 %i.as, ptr %i.h, align 4, !tbaa !46, !alias.scope !127
  br label %VP8GetBitAlt.exit

VP8GetBitAlt.exit:                                ; preds = %bb.g, %bb.h
  %i.at = phi i32 [ %i.as, %bb.h ], [ %i.x, %bb.g ]
  %.1.i = phi i32 [ %i.ar, %bb.h ], [ %.0.i, %bb.g ] ; 2 uses
  store i32 %.1.i, ptr %i.g, align 8, !tbaa !45, !alias.scope !127
  br i1 %.not, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %VP8GetBitAlt.exit
  %i.au = sext i32 %.02957 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.o
  %i.av = phi i64 [ %i.aj, %.preheader.preheader ], [ %i.bv, %bb.o ] ; 2 uses
  %i.aw = phi i32 [ %i.at, %.preheader.preheader ], [ %i.cf, %bb.o ] ; 3 uses
  %i.ax = phi i32 [ %.1.i, %.preheader.preheader ], [ %.1.i37, %bb.o ] ; 2 uses
  %indvars.iv = phi i64 [ %i.au, %.preheader.preheader ], [ %indvars.iv.next, %bb.o ] ; 5 uses
  %.1 = phi ptr [ %.02758, %.preheader.preheader ], [ %i.ch, %bb.o ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !33
  %i.ba = zext i8 %i.az to i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  %i.bb = icmp slt i32 %i.aw, 0
  br i1 %i.bb, label %bb.i, label %VP8LoadNewBytes.exit.i34

bb.i:                                             ; preds = %.preheader
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  %i.bc = load ptr, ptr %i.i, align 8, !tbaa !47, !alias.scope !132 ; 3 uses
  %i.bd = load ptr, ptr %i.j, align 8, !tbaa !48, !alias.scope !132
  %i.be = icmp ult ptr %i.bc, %i.bd
  br i1 %i.be, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.0.copyload.i.i39 = load i64, ptr %i.bc, align 1, !noalias !132
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 7
  store ptr %i.bf, ptr %i.i, align 8, !tbaa !47, !alias.scope !132
  %i.bg = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i39)
  %i.bh = tail call i64 @llvm.fshl.i64(i64 %i.av, i64 %i.bg, i64 56) ; 2 uses
  store i64 %i.bh, ptr %0, align 8, !tbaa !49, !alias.scope !132
  %i.bi = add nsw i32 %i.aw, 56                   ; 2 uses
  store i32 %i.bi, ptr %i.h, align 4, !tbaa !46, !alias.scope !132
  br label %VP8LoadNewBytes.exit.i34

bb.k:                                             ; preds = %bb.i
  tail call void @VP8LoadFinalBytes(ptr noundef nonnull %0) #13
  %.pre.i38 = load i32, ptr %i.h, align 4, !tbaa !46, !alias.scope !130
  %.pre66.a = load i64, ptr %0, align 8, !tbaa !49, !alias.scope !130
  br label %VP8LoadNewBytes.exit.i34

VP8LoadNewBytes.exit.i34:                         ; preds = %bb.k, %bb.j, %.preheader
  %i.bj = phi i64 [ %.pre66.a, %bb.k ], [ %i.bh, %bb.j ], [ %i.av, %.preheader ] ; 3 uses
  %i.bk = phi i32 [ %.pre.i38, %bb.k ], [ %i.bi, %bb.j ], [ %i.aw, %.preheader ] ; 3 uses
  %i.bl = mul i32 %i.ax, %i.ba
  %i.bm = lshr i32 %i.bl, 8                       ; 3 uses
  %i.bn = zext i32 %i.bk to i64                   ; 2 uses
  %i.bo = lshr i64 %i.bj, %i.bn
  %i.bp = trunc i64 %i.bo to i32
  %.not51 = icmp ult i32 %i.bm, %i.bp             ; 2 uses
  br i1 %.not51, label %bb.l, label %bb.m

bb.l:                                             ; preds = %VP8LoadNewBytes.exit.i34
  %i.bq = add nuw nsw i32 %i.bm, 1                ; 2 uses
  %i.br = sub i32 %i.ax, %i.bq
  %i.bs = zext nneg i32 %i.bq to i64
  %i.bt = shl i64 %i.bs, %i.bn
  %i.bu = sub i64 %i.bj, %i.bt                    ; 2 uses
  store i64 %i.bu, ptr %0, align 8, !tbaa !49, !alias.scope !130
end_hunk_1
