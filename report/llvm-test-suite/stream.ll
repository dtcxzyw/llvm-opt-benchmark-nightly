inline.NumInlined: 8
begin_hunk_0_@llvm.lifetime.start.p0
; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @feof(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @swrite_file(ptr nofree noundef writeonly captures(none) initializes((0, 30), (32, 88), (96, 104)) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr inbounds i8, ptr %2, i64 -1 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %3, ptr %i.c, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %1, ptr %i.d, align 8, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.e, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 0, ptr %i.f, align 1, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) @swrite_file.p, i64 48, i1 false), !tbaa.struct !22
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.h, align 4, !tbaa !24
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !27
  %i.j = icmp eq ptr %1, %i.i
  %i.k = load ptr, ptr @stderr, align 8
  %i.l = icmp eq ptr %1, %i.k
  %i.m = select i1 %i.j, i1 true, i1 %i.l
  %i.n = sext i1 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.n, ptr %i.o, align 8, !tbaa !21
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @sfwrite(ptr noundef initializes((8, 16)) %0, i8 noundef zeroext %1) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = and i64 %i.g, 4294967295
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !26
  %i.k = tail call i64 @fwrite(ptr noundef %i.b, i64 noundef 1, i64 noundef %i.h, ptr noundef %i.j) ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !21
  %i.n = icmp sgt i64 %i.m, -1
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !26
  %i.p = tail call i64 @ftell(ptr noundef %i.o)
  store i64 %i.p, ptr %i.l, align 8, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !8    ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -1 ; 2 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !19   ; 2 uses
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.w, align 8, !tbaa !18
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.q, ptr %0, align 8, !tbaa !17
  store i8 %1, ptr %i.q, align 1, !tbaa !28
  %i.x = zext i8 %1 to i32
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !29
  %i.aa = tail call i32 %i.z(ptr noundef nonnull %0, i8 noundef zeroext %1) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ab = phi i32 [ %i.x, %bb.d ], [ %i.aa, %bb.e ]
  ret i32 %i.ab
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @swseek(ptr nofree readnone captures(none) %0, i64 %1) #2 {
bb.a:
  ret i32 -1
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @swflush(ptr nofree noundef captures(none) initializes((8, 16), (32, 40)) %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = and i64 %i.g, 4294967295
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !26
  %i.k = tail call i64 @fwrite(ptr noundef %i.b, i64 noundef 1, i64 noundef %i.h, ptr noundef %i.j)
  %i.l = trunc i64 %i.k to i32
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !26
  %i.n = tail call i32 @fflush(ptr noundef %i.m)  ; 0 uses
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !26
  %i.p = tail call i64 @ftell(ptr noundef %i.o)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.p, ptr %i.q, align 8, !tbaa !21
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -1 ; 2 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !19
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !18
  ret i32 %i.l
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @swclose(ptr nofree noundef readonly captures(none) %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = and i64 %i.g, 4294967295
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !26
  %i.k = tail call i64 @fwrite(ptr noundef %i.b, i64 noundef 1, i64 noundef %i.h, ptr noundef %i.j) ; 0 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !26
  %i.m = tail call i32 @fclose(ptr noundef %i.l)
  ret i32 %i.m
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @sread_decrypt(ptr nofree noundef writeonly captures(none) initializes((0, 30), (32, 88), (96, 114), (116, 120)) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i16 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr inbounds i8, ptr %2, i64 -1 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %3, ptr %i.c, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr null, ptr %i.d, align 8, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.e, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 0, ptr %i.f, align 1, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) @sread_decrypt.p, i64 48, i1 false), !tbaa.struct !22
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 0, ptr %i.h, align 4, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -1, ptr %i.i, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %1, ptr %i.j, align 8, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i16 %4, ptr %i.k, align 8, !tbaa !31
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 -1, ptr %i.l, align 4, !tbaa !32
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 256) i32 @sxread(ptr noundef initializes((0, 8)) %0) #6 {
bb.a:
  %1 = alloca %struct.stream_s, align 8           ; 17 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 9 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -1 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !19   ; 2 uses
  %.not53.i30 = icmp eq i32 %i.f, 0
  br i1 %.not53.i30, label %sgets.exit.thread, label %.lr.ph.i.lr.ph

.lr.ph.i.lr.ph:                                   ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 29
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.o = ptrtoint ptr %i.b to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %bb.x
  %i.p = phi i32 [ %i.f, %.lr.ph.i.lr.ph ], [ %i.cu, %bb.x ] ; 3 uses
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !30   ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 29
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %.lr.ph.i
  %.03555.i = phi i32 [ %i.p, %.lr.ph.i ], [ %.338.i, %bb.i ] ; 4 uses
  %.03954.i = phi ptr [ %i.b, %.lr.ph.i ], [ %.342.i, %bb.i ] ; 4 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !18   ; 2 uses
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !17   ; 4 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = trunc i64 %i.y to i32                    ; 2 uses
  %.not45.i = icmp eq i32 %i.z, 0
  br i1 %.not45.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %spec.select.i = call i32 @llvm.umin.i32(i32 %.03555.i, i32 %i.z) ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.ab = zext i32 %spec.select.i to i64          ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03954.i, ptr nonnull align 1 %i.aa, i64 %i.ab, i1 false)
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !17
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ab
  store ptr %i.ad, ptr %i.q, align 8, !tbaa !17
  %i.ae = getelementptr inbounds nuw i8, ptr %.03954.i, i64 %i.ab
  %i.af = sub i32 %.03555.i, %spec.select.i
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.ag = icmp ult ptr %i.v, %i.u
  br i1 %i.ag, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 1 ; 2 uses
  store ptr %i.ah, ptr %i.q, align 8, !tbaa !17
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !28
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.aj = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.ak = call i32 %i.aj(ptr noundef nonnull %i.q) #10, !inline_history !34
  %i.al = trunc i32 %i.ak to i8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.am = phi i8 [ %i.ai, %bb.e ], [ %i.al, %bb.f ]
  %i.an = load i8, ptr %i.t, align 1, !tbaa !20
  %.not46.i = icmp eq i8 %i.an, 0
  br i1 %.not46.i, label %bb.h, label %.thread.i

.thread.i:                                        ; preds = %bb.g
  %i.ao = sub i32 %i.p, %.03555.i
  br label %sgets.exit

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %.03954.i, i64 1
  store i8 %i.am, ptr %.03954.i, align 1, !tbaa !28
  %i.aq = add i32 %.03555.i, -1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.c
  %.342.i = phi ptr [ %i.ae, %bb.c ], [ %i.ap, %bb.h ]
  %.338.i = phi i32 [ %i.af, %bb.c ], [ %i.aq, %bb.h ] ; 2 uses
  %.not.i = icmp eq i32 %.338.i, 0
  br i1 %.not.i, label %sgets.exit, label %bb.b

sgets.exit:                                       ; preds = %bb.i, %.thread.i
  %.4.i = phi i32 [ %i.ao, %.thread.i ], [ %i.p, %bb.i ] ; 4 uses
  %i.ar = icmp eq i32 %.4.i, 0
  br i1 %i.ar, label %sgets.exit.thread.loopexit, label %bb.j

sgets.exit.thread.loopexit:                       ; preds = %bb.x, %sgets.exit
  %.pre.a = load ptr, ptr %0, align 8, !tbaa !17
  br label %sgets.exit.thread

sgets.exit.thread:                                ; preds = %sgets.exit.thread.loopexit, %bb.a
  %i.as = phi ptr [ %.pre.a, %sgets.exit.thread.loopexit ], [ %i.c, %bb.a ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.at, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 1, ptr %i.au, align 1, !tbaa !20
  br label %bb.y

bb.j:                                             ; preds = %sgets.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  store ptr %i.b, ptr %i.g, align 8, !tbaa !8
  store ptr %i.c, ptr %1, align 8, !tbaa !17
  %i.av = zext i32 %.4.i to i64                   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.av
  store ptr %i.aw, ptr %i.h, align 8, !tbaa !18
  store i32 %.4.i, ptr %i.i, align 8, !tbaa !19
  store i8 1, ptr %i.j, align 1, !tbaa !20
  store i64 0, ptr %i.k, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(48) @sread_string.p, i64 48, i1 false), !tbaa.struct !22
  store i8 0, ptr %i.m, align 4, !tbaa !24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.av
  %i.ay = load i32, ptr %i.n, align 4, !tbaa !4   ; 2 uses
  %i.az = trunc i32 %i.ay to i8
  %i.ba = and i32 %i.ay, 240
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %.loopexit.i, label %bb.k

bb.k:                                             ; preds = %bb.w, %bb.j
  %.034.i = phi ptr [ %i.cf, %bb.w ], [ %i.b, %bb.j ] ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %bb.k
  %2 = load ptr, ptr %1, align 8, !tbaa !17       ; 2 uses
  %i.bc = load ptr, ptr %i.h, align 8, !tbaa !18
  %i.bd = icmp ult ptr %2, %i.bc
  br i1 %i.bd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  store ptr %i.be, ptr %1, align 8, !tbaa !17
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !28
  %i.bg = zext i8 %i.bf to i32
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bh = load ptr, ptr %i.l, align 8, !tbaa !33
  %i.bi = call i32 %i.bh(ptr noundef nonnull %1) #10, !inline_history !35
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bj = phi i32 [ %i.bg, %bb.m ], [ %i.bi, %bb.n ]
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @scan_char_array, i64 1), i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !28  ; 3 uses
  %i.bn = icmp ugt i8 %i.bm, 15
  br i1 %i.bn, label %bb.p, label %.loopexit.i

bb.p:                                             ; preds = %bb.o
  %i.bo = icmp eq i8 %i.bm, 103
  br i1 %i.bo, label %.loopexit43.i, label %bb.l, !llvm.loop !36

.loopexit.i:                                      ; preds = %bb.o, %bb.j
  %.035.i = phi i8 [ %i.az, %bb.j ], [ %i.bm, %bb.o ] ; 2 uses
  %.1.i = phi ptr [ %i.b, %bb.j ], [ %.034.i, %bb.o ] ; 3 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.u, %.loopexit.i
  %3 = load ptr, ptr %1, align 8, !tbaa !17       ; 2 uses
  %i.bp = load ptr, ptr %i.h, align 8, !tbaa !18
  %i.bq = icmp ult ptr %3, %i.bp
  br i1 %i.bq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  store ptr %i.br, ptr %1, align 8, !tbaa !17
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !28
  %i.bt = zext i8 %i.bs to i32
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.bu = load ptr, ptr %i.l, align 8, !tbaa !33
  %i.bv = call i32 %i.bu(ptr noundef nonnull %1) #10, !inline_history !35
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bw = phi i32 [ %i.bt, %bb.r ], [ %i.bv, %bb.s ]
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @scan_char_array, i64 1), i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !28  ; 3 uses
  %i.ca = icmp ugt i8 %i.bz, 15
  br i1 %i.ca, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.cb = icmp eq i8 %i.bz, 103
  br i1 %i.cb, label %bb.v, label %bb.q, !llvm.loop !38

bb.v:                                             ; preds = %bb.u
  %i.cc = zext i8 %.035.i to i32
  br label %.loopexit43.i

bb.w:                                             ; preds = %bb.t
  %i.cd = shl i8 %.035.i, 4
  %i.ce = or disjoint i8 %i.bz, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %.1.i, i64 1 ; 2 uses
  store i8 %i.ce, ptr %.1.i, align 1, !tbaa !28
  %i.cg = icmp ult ptr %i.cf, %i.ax
  br i1 %i.cg, label %bb.k, label %sreadhex.exit

.loopexit43.i:                                    ; preds = %bb.p, %bb.v
  %storemerge.i = phi i32 [ %i.cc, %bb.v ], [ -1, %bb.p ]
  %.2.i = phi ptr [ %.1.i, %bb.v ], [ %.034.i, %bb.p ]
  store i32 %storemerge.i, ptr %i.n, align 4, !tbaa !4
  %i.ch = ptrtoint ptr %.2.i to i64
  %i.ci = sub i64 %i.ch, %i.o
  %i.cj = trunc i64 %i.ci to i32
  br label %sreadhex.exit

sreadhex.exit:                                    ; preds = %bb.w, %.loopexit43.i
  %.sink.i = phi i32 [ %i.cj, %.loopexit43.i ], [ %.4.i, %bb.w ] ; 3 uses
  %i.ck = icmp eq i32 %.sink.i, 0
  br i1 %i.ck, label %bb.x, label %.thread

.thread:                                          ; preds = %sreadhex.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cm = call i32 @gs_type1_decrypt(ptr noundef %i.b, ptr noundef %i.b, i32 noundef %.sink.i, ptr noundef nonnull %i.cl) #10 ; 0 uses
  %i.cn = load ptr, ptr %0, align 8, !tbaa !17    ; 2 uses
  %i.co = zext i32 %.sink.i to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !18
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 1 ; 2 uses
  store ptr %i.cr, ptr %0, align 8, !tbaa !17
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !28
  %i.ct = zext i8 %i.cs to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  br label %bb.y

bb.x:                                             ; preds = %sreadhex.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  %i.cu = load i32, ptr %i.e, align 8, !tbaa !19  ; 2 uses
  %.not53.i = icmp eq i32 %i.cu, 0
  br i1 %.not53.i, label %sgets.exit.thread.loopexit, label %.lr.ph.i

bb.y:                                             ; preds = %.thread, %sgets.exit.thread
  %.2 = phi i32 [ -1, %sgets.exit.thread ], [ %i.ct, %.thread ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @sxavailable(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.e = tail call i32 %i.d(ptr noundef %i.b, ptr noundef %1) #10
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.h = icmp sgt i64 %i.g, -1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = lshr i64 %i.g, 1
  store i64 %i.i, ptr %1, align 8, !tbaa !25
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @sgets(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %.not53 = icmp eq i32 %2, 0
  br i1 %.not53, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 29
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %.03555 = phi i32 [ %2, %.lr.ph ], [ %.338, %bb.i ] ; 4 uses
  %.03954 = phi ptr [ %1, %.lr.ph ], [ %.342, %bb.i ] ; 4 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !17     ; 4 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %.not45 = icmp eq i32 %i.i, 0
  br i1 %.not45, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %spec.select = tail call i32 @llvm.umin.i32(i32 %.03555, i32 %i.i) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.k = zext i32 %spec.select to i64             ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03954, ptr nonnull align 1 %i.j, i64 %i.k, i1 false)
  %i.l = load ptr, ptr %0, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.k
  store ptr %i.m, ptr %0, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %.03954, i64 %i.k
  %i.o = sub i32 %.03555, %spec.select
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.p = icmp ult ptr %i.e, %i.d
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !17
  %i.r = load i8, ptr %i.q, align 1, !tbaa !28
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.t = tail call i32 %i.s(ptr noundef nonnull %0) #10
  %i.u = trunc i32 %i.t to i8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = phi i8 [ %i.r, %bb.e ], [ %i.u, %bb.f ]
  %i.w = load i8, ptr %i.c, align 1, !tbaa !20
  %.not46 = icmp eq i8 %i.w, 0
  br i1 %.not46, label %bb.h, label %.thread

.thread:                                          ; preds = %bb.g
  %i.x = sub i32 %2, %.03555
  br label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %.03954, i64 1
  store i8 %i.v, ptr %.03954, align 1, !tbaa !28
  %i.z = add i32 %.03555, -1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.c
  %.342 = phi ptr [ %i.n, %bb.c ], [ %i.y, %bb.h ]
  %.338 = phi i32 [ %i.o, %bb.c ], [ %i.z, %bb.h ] ; 2 uses
  %.not = icmp eq i32 %.338, 0
  br i1 %.not, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.i, %bb.a, %.thread
  %.4 = phi i32 [ %i.x, %.thread ], [ 0, %bb.a ], [ %2, %bb.i ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @sreadhex(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #6 {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %i.a
  %i.c = icmp eq i32 %2, 0
  br i1 %i.c, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %4, align 4, !tbaa !4      ; 2 uses
  %i.e = trunc i32 %i.d to i8
  %i.f = and i32 %i.d, 240
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.o, %bb.b
  %.034 = phi ptr [ %i.aq, %bb.o ], [ %1, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.c
  %i.j = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !18
  %i.l = icmp ult ptr %i.j, %i.k
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !17
  %i.n = load i8, ptr %i.m, align 1, !tbaa !28
  %i.o = zext i8 %i.n to i32
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !33
  %i.q = tail call i32 %i.p(ptr noundef nonnull %0) #10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = phi i32 [ %i.o, %bb.e ], [ %i.q, %bb.f ]
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @scan_char_array, i64 1), i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !28    ; 3 uses
  %i.v = icmp ugt i8 %i.u, 15
  br i1 %i.v, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.w = icmp eq i8 %i.u, 103
  br i1 %i.w, label %.loopexit43, label %bb.d, !llvm.loop !36

.loopexit:                                        ; preds = %bb.g, %bb.b
  %.035 = phi i8 [ %i.e, %bb.b ], [ %i.u, %bb.g ] ; 2 uses
  %.1 = phi ptr [ %1, %bb.b ], [ %.034, %bb.g ]   ; 3 uses
end_hunk_0
