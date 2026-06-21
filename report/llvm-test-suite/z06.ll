begin_hunk_0_@check_yield:bb.a
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(5) @.str.57) #7
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = load ptr, ptr %1, align 8, !tbaa !13
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  store ptr %0, ptr %1, align 8, !tbaa !13
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.i, %bb.j, %bb.h
  %.030.in = getelementptr inbounds nuw i8, ptr %.03043, i64 8
  %.030 = load ptr, ptr %.030.in, align 8, !tbaa !8 ; 2 uses
  %.not = icmp eq ptr %.030, %.031
  br i1 %.not, label %.loopexit35, label %.preheader, !llvm.loop !22

.loopexit35.sink.split.sink.split:                ; preds = %bb.b, %bb.f
  store i32 0, ptr %2, align 4, !tbaa !4
  br label %.loopexit35.sink.split

.loopexit35.sink.split:                           ; preds = %.loopexit35.sink.split.sink.split, %bb.e
  %.sink = phi ptr [ %0, %bb.e ], [ null, %.loopexit35.sink.split.sink.split ]
  store ptr %.sink, ptr %1, align 8, !tbaa !13
  br label %.loopexit35

.loopexit35:                                      ; preds = %.loopexit, %.loopexit35.sink.split, %.preheader34, %bb.d, %bb.e
  ret void
}

declare i32 @DisposeObject(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @SetScope(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !8
  %i.c = icmp eq i8 %i.b, 82
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.e = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.d, ptr noundef nonnull @.str.2) #6 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8    ; 3 uses
  %.not28 = icmp eq ptr %i.g, %0
  br i1 %.not28, label %bb.l, label %.preheader

.preheader:                                       ; preds = %bb.d, %.preheader
  %.pn32 = phi ptr [ %.0, %.preheader ], [ %i.g, %bb.d ]
  %.0.in = getelementptr inbounds nuw i8, ptr %.pn32, i64 16
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !8   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.i = load i8, ptr %i.h, align 8, !tbaa !8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %.preheader, label %bb.e, !llvm.loop !23

bb.e:                                             ; preds = %.preheader
  %i.k = load ptr, ptr %.0, align 8, !tbaa !8
  %.not29 = icmp eq ptr %i.k, %.0
  br i1 %.not29, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.m = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.l, ptr noundef nonnull @.str.3) #6 ; 0 uses
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = phi ptr [ %.pre, %bb.f ], [ %i.g, %bb.e ]
  %i.o = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %.not30 = icmp eq ptr %i.o, %i.n
  br i1 %.not30, label %bb.h, label %.preheader45

bb.h:                                             ; preds = %bb.g
  %i.p = load ptr, ptr %.0, align 8, !tbaa !8
  br label %.preheader45

.preheader45:                                     ; preds = %bb.g, %bb.h
  %.pn.ph = phi ptr [ %i.o, %bb.g ], [ %i.p, %bb.h ]
  br label %bb.i

bb.i:                                             ; preds = %.preheader45, %bb.i
  %.pn = phi ptr [ %.023, %bb.i ], [ %.pn.ph, %.preheader45 ]
  %.023.in = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  %.023 = load ptr, ptr %.023.in, align 8, !tbaa !8 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.023, i64 32
  %i.r = load i8, ptr %i.q, align 8, !tbaa !8
  switch i8 %i.r, label %bb.j [
    i8 0, label %bb.i
    i8 82, label %.loopexit
  ]

bb.j:                                             ; preds = %bb.i
  %i.s = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.t = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.s, ptr noundef nonnull @.str.4) #6 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %bb.j
  tail call void @SetScope(ptr noundef nonnull %.023, ptr noundef %1, i32 noundef 0)
  %.not31 = icmp eq i32 %2, 0
  %i.u = getelementptr inbounds nuw i8, ptr %.0, i64 80
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !8    ; 2 uses
  br i1 %.not31, label %bb.k, label %.loopexit._crit_edge

bb.k:                                             ; preds = %.loopexit
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 112
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !8
  %i.y = icmp ne ptr %i.x, null
  %i.z = zext i1 %i.y to i32
  br label %.loopexit._crit_edge

.loopexit._crit_edge:                             ; preds = %.loopexit, %bb.k
  %i.aa = phi i32 [ %i.z, %bb.k ], [ 1, %.loopexit ]
  tail call void @PushScope(ptr noundef %i.v, i32 noundef 0, i32 noundef %i.aa) #6
  %i.ab = load i32, ptr %1, align 4, !tbaa !4
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %1, align 4, !tbaa !4
  br label %bb.l

bb.l:                                             ; preds = %.loopexit._crit_edge, %bb.d
  ret void
}

declare void @PushScope(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @InitParser(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #7
  %i.b = icmp ugt i64 %i.a, 2047
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.d = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 1, ptr noundef %i.c, ptr noundef nonnull %0) #6 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.f = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull %0, ptr noundef %i.e) #6
  store ptr %i.f, ptr @cross_name, align 8, !tbaa !13
  %i.g = load i32, ptr @ttop, align 4, !tbaa !4   ; 3 uses
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr @ttop, align 4, !tbaa !4
  %i.i = icmp slt i32 %i.g, 99
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.k = load ptr, ptr @StartSym, align 8, !tbaa !13
  %i.l = tail call ptr @NewToken(i8 noundef zeroext 110, ptr noundef %i.j, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 100, ptr noundef %i.k) #6
  %i.m = load i32, ptr @ttop, align 4, !tbaa !4
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [8 x i8], ptr @tok_stack, i64 %i.n
  store ptr %i.l, ptr %i.o, align 8, !tbaa !13
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.p = zext nneg i32 %i.g to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @tok_stack, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %i.s) #6 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

declare ptr @MakeWord(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @NewToken(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Parse(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 134 uses
  %i.b = alloca ptr, align 8                      ; 26 uses
  %i.c = alloca i32, align 4                      ; 9 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %struct.STYLE, align 4              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.h = load i32, ptr @ttop, align 4, !tbaa !4   ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  %i.i = load ptr, ptr %0, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load i8, ptr %i.j, align 8, !tbaa !8
  switch i8 %i.k, label %bb.b [
    i8 102, label %bb.c
    i8 104, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.m = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.l, ptr noundef nonnull @.str.7) #6 ; 0 uses
  %.pr = load i32, ptr @ttop, align 4, !tbaa !4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %bb.a
  %i.n = phi i32 [ %.pr, %bb.b ], [ %i.h, %bb.a ], [ %i.h, %bb.a ] ; 3 uses
  %i.o = add nsw i32 %i.n, 1                      ; 2 uses
  store i32 %i.o, ptr @ttop, align 4, !tbaa !4
  %i.p = icmp slt i32 %i.n, 99
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %0, align 8, !tbaa !13
  %i.r = sext i32 %i.o to i64
  %i.s = getelementptr inbounds [8 x i8], ptr @tok_stack, i64 %i.r
  store ptr %i.q, ptr %i.s, align 8, !tbaa !13
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.t = zext nneg i32 %i.n to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @tok_stack, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %i.w) #6 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = tail call ptr @LexGetToken() #6
  store ptr %i.y, ptr %i.a, align 8, !tbaa !13
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.ap, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @ReadDefinitions(ptr noundef nonnull %i.a, ptr noundef %1, i8 noundef zeroext -113) #6
  %i.z = call i32 @ErrorSeen() #6
  %.not1194 = icmp eq i32 %i.z, 0
  br i1 %.not1194, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 14, ptr noundef nonnull @.str.9, i32 noundef 1, ptr noundef nonnull %i.ab) #6 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ad = load ptr, ptr @StartSym, align 8, !tbaa !13
  %i.ae = icmp eq ptr %1, %i.ad
  br i1 %i.ae, label %bb.j, label %bb.ap

bb.j:                                             ; preds = %bb.i
  %i.af = load i8, ptr getelementptr inbounds nuw (i8, ptr @zz_lengths, i64 82), align 1, !tbaa !8 ; 3 uses
  %i.ag = zext i8 %i.af to i32                    ; 2 uses
  store i32 %i.ag, ptr @zz_size, align 4, !tbaa !4
  %i.ah = zext i8 %i.af to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !13 ; 4 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.al = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.am = call ptr @GetMemory(i32 noundef %i.ag, ptr noundef %i.al) #6 ; 2 uses
  store ptr %i.am, ptr @zz_hold, align 8, !tbaa !13
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  store ptr %i.aj, ptr @zz_hold, align 8, !tbaa !13
  %i.an = load ptr, ptr %i.aj, align 8, !tbaa !8
  %i.ao = zext i8 %i.af to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.ao
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !13
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.aq = phi ptr [ %i.am, %bb.k ], [ %i.aj, %bb.l ] ; 10 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store i8 82, ptr %i.ar, align 8, !tbaa !8
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr %i.aq, ptr %i.as, align 8, !tbaa !8
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store ptr %i.aq, ptr %i.at, align 8, !tbaa !8
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.aq, ptr %i.au, align 8, !tbaa !8
  store ptr %i.aq, ptr %i.aq, align 8, !tbaa !8
  store ptr %i.aq, ptr %i.b, align 8, !tbaa !13
  br label %bb.n

bb.n:                                             ; preds = %.backedge2087, %bb.m
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !13  ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !8   ; 3 uses
  switch i8 %i.ax, label %.thread [
    i8 11, label %bb.o
    i8 106, label %bb.w
    i8 114, label %bb.ak
    i8 115, label %bb.ak
    i8 116, label %bb.al
    i8 117, label %bb.al
  ]

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 64 ; 6 uses
  %i.az = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ay, ptr noundef nonnull dereferenceable(4) @.str.10) #7
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ay, ptr noundef nonnull dereferenceable(8) @.str.11) #7
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bd = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ay, ptr noundef nonnull dereferenceable(6) @.str.12) #7
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bf = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ay, ptr noundef nonnull dereferenceable(7) @.str.13) #7
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bh = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ay, ptr noundef nonnull dereferenceable(7) @.str.14) #7
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bj = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ay, ptr noundef nonnull dereferenceable(7) @.str.15) #7
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o
  call void @ReadDefinitions(ptr noundef nonnull %i.a, ptr noundef %1, i8 noundef zeroext -113) #6
  %i.bl = call i32 @ErrorSeen() #6
  %.not1366 = icmp eq i32 %i.bl, 0
  br i1 %.not1366, label %.backedge2087, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 39, ptr noundef nonnull @.str.9, i32 noundef 1, ptr noundef nonnull %i.bn) #6 ; 0 uses
  br label %.backedge2087

bb.w:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  store ptr %i.av, ptr @zz_hold, align 8, !tbaa !13
  %.in1361 = load i8, ptr getelementptr inbounds nuw (i8, ptr @zz_lengths, i64 106), align 1, !tbaa !8 ; 2 uses
  %i.bp = zext i8 %.in1361 to i32
  store i32 %i.bp, ptr @zz_size, align 4, !tbaa !4
  %i.bq = zext i8 %.in1361 to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !13
  store ptr %i.bs, ptr %i.av, align 8, !tbaa !8
  %i.bt = load ptr, ptr @zz_hold, align 8, !tbaa !13
  %i.bu = load i32, ptr @zz_size, align 4, !tbaa !4
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr @zz_free, i64 %i.bv
  store ptr %i.bt, ptr %i.bw, align 8, !tbaa !13
  %i.bx = call ptr @LexGetToken() #6              ; 2 uses
  store ptr %i.bx, ptr %i.a, align 8, !tbaa !13
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32 ; 2 uses
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !8
  %.not1362 = icmp eq i8 %i.bz, 102
  br i1 %.not1362, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ca = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 15, ptr noundef nonnull @.str.16, i32 noundef 1, ptr noundef nonnull %i.by, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #6 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cb = call ptr @Parse(ptr noundef nonnull %i.a, ptr noundef %1, i32 noundef 0, i32 noundef 0) ; 11 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32 ; 4 uses
  %i.cd = load i8, ptr %i.cc, align 8, !tbaa !8
  switch i8 %i.cd, label %bb.ai [
    i8 6, label %bb.z
    i8 7, label %bb.z
    i8 2, label %bb.af
  ]

end_hunk_0
begin_hunk_1_@Parse:bb.a
  br i1 %.not1204, label %.critedge1396, label %bb.ms

bb.ms:                                            ; preds = %bb.mr
  %i.ccc = getelementptr inbounds nuw i8, ptr %i.bxd, i64 41 ; 2 uses
  %i.ccd = load i8, ptr %i.ccc, align 1, !tbaa !8
  %i.cce = getelementptr inbounds nuw i8, ptr %i.bxd, i64 42 ; 2 uses
  %i.ccf = load i8, ptr %i.cce, align 2, !tbaa !8
  %i.ccg = or i8 %i.ccf, %i.ccd
  %.not1205 = icmp eq i8 %i.ccg, 0
  br i1 %.not1205, label %bb.mt, label %.lr.ph.preheader

bb.mt:                                            ; preds = %bb.ms
  %i.cch = getelementptr inbounds nuw i8, ptr %i.bxd, i64 32
  %i.cci = load i8, ptr %i.cch, align 8, !tbaa !8
  %i.ccj = icmp eq i8 %i.cci, 102
  %i.cck = icmp eq i32 %.1997, 2
  %or.cond75 = select i1 %i.ccj, i1 true, i1 %i.cck
  %i.ccl = select i1 %or.cond75, i8 7, i8 103
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.ms, %bb.mt
  %.0952 = phi i32 [ 100, %bb.ms ], [ 101, %bb.mt ] ; 2 uses
  %.0951 = phi i8 [ 7, %bb.ms ], [ %i.ccl, %bb.mt ] ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.mu
  %i.ccm = load i32, ptr @ttop, align 4, !tbaa !4 ; 2 uses
  %i.ccn = sext i32 %i.ccm to i64
  %i.cco = getelementptr inbounds [8 x i8], ptr @tok_stack, i64 %i.ccn
  %i.ccp = load ptr, ptr %i.cco, align 8, !tbaa !13
  %i.ccq = getelementptr inbounds nuw i8, ptr %i.ccp, i64 40
  %i.ccr = load i8, ptr %i.ccq, align 8, !tbaa !8
  %.not1207 = icmp ugt i8 %.0951, %i.ccr
  br i1 %.not1207, label %.critedge77, label %bb.mu

bb.mu:                                            ; preds = %.lr.ph
  %i.ccs = call fastcc i32 @Reduce()
  %.not1206 = icmp eq i32 %i.ccs, 0
  br i1 %.not1206, label %.critedge1396, label %.lr.ph, !llvm.loop !41

.critedge77:                                      ; preds = %.lr.ph
  %i.cct = zext nneg i32 %.0952 to i64
  %i.ccu = getelementptr inbounds nuw i8, ptr @zz_lengths, i64 %i.cct
  %i.ccv = load i8, ptr %i.ccu, align 1, !tbaa !8 ; 2 uses
  %i.ccw = zext i8 %i.ccv to i32                  ; 2 uses
  store i32 %i.ccw, ptr @zz_size, align 4, !tbaa !4
  %i.ccx = zext i8 %i.ccv to i64
  %i.ccy = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.ccx ; 2 uses
  %i.ccz = load ptr, ptr %i.ccy, align 8, !tbaa !13 ; 4 uses
  %i.cda = icmp eq ptr %i.ccz, null
  br i1 %i.cda, label %bb.mv, label %bb.mw

bb.mv:                                            ; preds = %.critedge77
  %i.cdb = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.cdc = call ptr @GetMemory(i32 noundef %i.ccw, ptr noundef %i.cdb) #6 ; 2 uses
  store ptr %i.cdc, ptr @zz_hold, align 8, !tbaa !13
  %.pre1644 = load i32, ptr @ttop, align 4, !tbaa !4
  br label %bb.mx

bb.mw:                                            ; preds = %.critedge77
  store ptr %i.ccz, ptr @zz_hold, align 8, !tbaa !13
  %i.cdd = load ptr, ptr %i.ccz, align 8, !tbaa !8
  store ptr %i.cdd, ptr %i.ccy, align 8, !tbaa !13
  br label %bb.mx

bb.mx:                                            ; preds = %bb.mv, %bb.mw
  %i.cde = phi i32 [ %.pre1644, %bb.mv ], [ %i.ccm, %bb.mw ] ; 3 uses
  %i.cdf = phi ptr [ %i.cdc, %bb.mv ], [ %i.ccz, %bb.mw ] ; 16 uses
  %i.cdg = trunc nuw nsw i32 %.0952 to i8
  %i.cdh = getelementptr inbounds nuw i8, ptr %i.cdf, i64 32
  store i8 %i.cdg, ptr %i.cdh, align 8, !tbaa !8
  %i.cdi = getelementptr inbounds nuw i8, ptr %i.cdf, i64 24
  store ptr %i.cdf, ptr %i.cdi, align 8, !tbaa !8
  %i.cdj = getelementptr inbounds nuw i8, ptr %i.cdf, i64 16
  store ptr %i.cdf, ptr %i.cdj, align 8, !tbaa !8
  %i.cdk = getelementptr inbounds nuw i8, ptr %i.cdf, i64 8
  store ptr %i.cdf, ptr %i.cdk, align 8, !tbaa !8
  store ptr %i.cdf, ptr %i.cdf, align 8, !tbaa !8
  %i.cdl = getelementptr inbounds nuw i8, ptr %i.cdf, i64 40
  store i8 %.0951, ptr %i.cdl, align 8, !tbaa !8
  %i.cdm = load i8, ptr %i.cce, align 2, !tbaa !8
  %i.cdn = getelementptr inbounds nuw i8, ptr %i.cdf, i64 42
  store i8 %i.cdm, ptr %i.cdn, align 2, !tbaa !8
  %i.cdo = load i8, ptr %i.ccc, align 1, !tbaa !8
  %i.cdp = getelementptr inbounds nuw i8, ptr %i.cdf, i64 41
  store i8 %i.cdo, ptr %i.cdp, align 1, !tbaa !8
  %i.cdq = getelementptr inbounds nuw i8, ptr %i.cdf, i64 44 ; 2 uses
  %i.cdr = load i16, ptr %i.cdq, align 4
  %i.cds = and i16 %i.cdr, -769
  %i.cdt = or disjoint i16 %i.cds, 512
  store i16 %i.cdt, ptr %i.cdq, align 4
  %i.cdu = getelementptr inbounds nuw i8, ptr %i.bxd, i64 34
  %i.cdv = load i16, ptr %i.cdu, align 2, !tbaa !8
  %i.cdw = getelementptr inbounds nuw i8, ptr %i.cdf, i64 34
  store i16 %i.cdv, ptr %i.cdw, align 2, !tbaa !8
  %i.cdx = getelementptr inbounds nuw i8, ptr %i.bxd, i64 36 ; 2 uses
  %i.cdy = load i32, ptr %i.cdx, align 4
  %i.cdz = and i32 %i.cdy, 1048575                ; 2 uses
  %i.cea = getelementptr inbounds nuw i8, ptr %i.cdf, i64 36 ; 3 uses
  %i.ceb = load i32, ptr %i.cea, align 4
  %i.cec = and i32 %i.ceb, -1048576
  %i.ced = or disjoint i32 %i.cec, %i.cdz
  store i32 %i.ced, ptr %i.cea, align 4
  %i.cee = load i32, ptr %i.cdx, align 4
  %i.cef = and i32 %i.cee, -1048576
  %i.ceg = or disjoint i32 %i.cef, %i.cdz
  store i32 %i.ceg, ptr %i.cea, align 4
  %i.ceh = add nsw i32 %i.cde, 1                  ; 2 uses
  store i32 %i.ceh, ptr @ttop, align 4, !tbaa !4
  %i.cei = icmp slt i32 %i.cde, 99
  br i1 %i.cei, label %bb.my, label %bb.mz

bb.my:                                            ; preds = %bb.mx
  %i.cej = sext i32 %i.ceh to i64
  %i.cek = getelementptr inbounds [8 x i8], ptr @tok_stack, i64 %i.cej
  store ptr %i.cdf, ptr %i.cek, align 8, !tbaa !13
  br label %.critedge1396

bb.mz:                                            ; preds = %bb.mx
  %i.cel = zext nneg i32 %i.cde to i64
  %i.cem = getelementptr inbounds nuw [8 x i8], ptr @tok_stack, i64 %i.cel
  %i.cen = load ptr, ptr %i.cem, align 8, !tbaa !13
  %i.ceo = getelementptr inbounds nuw i8, ptr %i.cen, i64 32
  %i.cep = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %i.ceo) #6 ; 0 uses
  br label %.critedge1396

.critedge1396:                                    ; preds = %bb.mp, %bb.mu, %bb.mz, %bb.my, %bb.mr
  %i.ceq = load i32, ptr @ttop, align 4, !tbaa !4 ; 3 uses
  %i.cer = add nsw i32 %i.ceq, 1                  ; 2 uses
  store i32 %i.cer, ptr @ttop, align 4, !tbaa !4
  %i.ces = icmp slt i32 %i.ceq, 99
  br i1 %i.ces, label %bb.na, label %bb.nb

bb.na:                                            ; preds = %.critedge1396
  %i.cet = sext i32 %i.cer to i64
  %i.ceu = getelementptr inbounds [8 x i8], ptr @tok_stack, i64 %i.cet
  store ptr %i.bxd, ptr %i.ceu, align 8, !tbaa !13
  br label %bb.nc

bb.nb:                                            ; preds = %.critedge1396
  %i.cev = zext nneg i32 %i.ceq to i64
  %i.cew = getelementptr inbounds nuw [8 x i8], ptr @tok_stack, i64 %i.cev
  %i.cex = load ptr, ptr %i.cew, align 8, !tbaa !13
  %i.cey = getelementptr inbounds nuw i8, ptr %i.cex, i64 32
  %i.cez = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %i.cey) #6 ; 0 uses
  br label %bb.nc

bb.nc:                                            ; preds = %bb.nb, %bb.na
  %i.cfa = load i16, ptr %i.cav, align 1
  %i.cfb = and i16 %i.cfa, 8
  %.not1210 = icmp eq i16 %i.cfb, 0
  br i1 %.not1210, label %bb.nd, label %bb.ne

bb.nd:                                            ; preds = %bb.nc
  %i.cfc = call fastcc i32 @Reduce()
  %i.cfd = load i32, ptr @ttop, align 4, !tbaa !4
  %i.cfe = icmp eq i32 %i.cfd, %i.h
  br i1 %i.cfe, label %.loopexit1917, label %bb.ne

bb.ne:                                            ; preds = %bb.nc, %bb.nd
  %.38 = phi i32 [ %i.cfc, %bb.nd ], [ 0, %bb.nc ] ; 8 uses
  %i.cff = load ptr, ptr @StartSym, align 8, !tbaa !13
  %i.cfg = icmp ne ptr %1, %i.cff
  %or.cond79 = and i1 %i.ev, %i.cfg
  br i1 %or.cond79, label %bb.nf, label %bb.nl

bb.nf:                                            ; preds = %bb.ne
  %i.cfh = load i16, ptr %i.cav, align 1
  %i.cfi = and i16 %i.cfh, 64
  %.not1211 = icmp eq i16 %i.cfi, 0
  br i1 %.not1211, label %bb.nj, label %bb.ng

bb.ng:                                            ; preds = %bb.nf
  %i.cfj = load i8, ptr %i.ew, align 1
  %i.cfk = or i8 %i.cfj, 16
  store i8 %i.cfk, ptr %i.ew, align 1
  %i.cfl = load i16, ptr %i.ex, align 1           ; 2 uses
  %.not1213 = icmp sgt i16 %i.cfl, -1
  br i1 %.not1213, label %bb.nh, label %bb.ni

bb.nh:                                            ; preds = %bb.ng
  %i.cfm = load i16, ptr %i.cav, align 1
  %.lobit = and i16 %i.cfm, -32768
  br label %bb.ni

bb.ni:                                            ; preds = %bb.nh, %bb.ng
  %i.cfn = phi i16 [ -32768, %bb.ng ], [ %.lobit, %bb.nh ]
  %i.cfo = and i16 %i.cfl, 32767
  %i.cfp = or disjoint i16 %i.cfn, %i.cfo
  store i16 %i.cfp, ptr %i.ex, align 1
  br label %bb.nl

bb.nj:                                            ; preds = %bb.nf
  br i1 %i.bxj, label %bb.nl, label %bb.nk

bb.nk:                                            ; preds = %bb.nj
  call void @InsertUses(ptr noundef nonnull %1, ptr noundef nonnull %i.bxf) #6
  br label %bb.nl

bb.nl:                                            ; preds = %bb.ni, %bb.nk, %bb.nj, %bb.ne
  %i.cfq = icmp eq ptr %i.bxd, null
  br label %bb.nm

bb.nm:                                            ; preds = %bb.oj, %bb.nl
  %.0994 = phi i32 [ 0, %bb.nl ], [ %.2, %bb.oj ] ; 3 uses
  %i.cfr = load ptr, ptr %i.a, align 8, !tbaa !13 ; 10 uses
  %i.cfs = getelementptr inbounds nuw i8, ptr %i.cfr, i64 32 ; 4 uses
  %i.cft = load i8, ptr %i.cfs, align 8, !tbaa !8
  switch i8 %i.cft, label %.critedge83 [
    i8 2, label %bb.nn
    i8 102, label %bb.np
  ]

bb.nn:                                            ; preds = %bb.nm
  %i.cfu = getelementptr inbounds nuw i8, ptr %i.cfr, i64 80
  %i.cfv = load ptr, ptr %i.cfu, align 8, !tbaa !8 ; 2 uses
  %i.cfw = getelementptr inbounds nuw i8, ptr %i.cfv, i64 48
  %i.cfx = load ptr, ptr %i.cfw, align 8, !tbaa !8
  %i.cfy = icmp eq ptr %i.cfx, %i.bxf
  br i1 %i.cfy, label %bb.no, label %.critedge83

bb.no:                                            ; preds = %bb.nn
  %i.cfz = getelementptr inbounds nuw i8, ptr %i.cfv, i64 32
  %i.cga = load i8, ptr %i.cfz, align 8, !tbaa !8
  %i.cgb = icmp eq i8 %i.cga, -111
  br i1 %i.cgb, label %bb.nq, label %.critedge83

bb.np:                                            ; preds = %bb.nm
  %i.cgc = getelementptr inbounds nuw i8, ptr %i.cfr, i64 40
  %i.cgd = load i8, ptr %i.cgc, align 8, !tbaa !8 ; 2 uses
  %.not1214 = icmp eq i8 %i.cgd, 3
  br i1 %.not1214, label %.critedge83, label %.critedge81

bb.nq:                                            ; preds = %bb.no
  %i.cge = call ptr @LexGetToken() #6             ; 2 uses
  store ptr %i.cge, ptr %i.a, align 8, !tbaa !13
  %i.cgf = getelementptr inbounds nuw i8, ptr %i.cge, i64 32
  %i.cgg = load i8, ptr %i.cgf, align 8, !tbaa !8
  %.not1215 = icmp eq i8 %i.cgg, 102
  br i1 %.not1215, label %bb.nr, label %.thread1456

.thread1456:                                      ; preds = %bb.nq
  %i.cgh = getelementptr inbounds nuw i8, ptr %i.cfr, i64 80
  %i.cgi = load ptr, ptr %i.cgh, align 8, !tbaa !8
  %i.cgj = call ptr @SymName(ptr noundef %i.cgi) #6
  %i.cgk = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 30, ptr noundef nonnull @.str.44, i32 noundef 2, ptr noundef nonnull %i.cfs, ptr noundef nonnull @.str.17, ptr noundef %i.cgj) #6 ; 0 uses
  store ptr %i.cfr, ptr @zz_hold, align 8, !tbaa !13
  %i.cgl = load i8, ptr %i.cfs, align 8, !tbaa !8 ; 2 uses
  %.off1439 = add i8 %i.cgl, -11
  %switch1440 = icmp ult i8 %.off1439, 2
  %i.cgm = getelementptr inbounds nuw i8, ptr %i.cfr, i64 33
  %i.cgn = zext i8 %i.cgl to i64
  %i.cgo = getelementptr inbounds nuw i8, ptr @zz_lengths, i64 %i.cgn
  %.in1223.in = select i1 %switch1440, ptr %i.cgm, ptr %i.cgo
  %.in1223 = load i8, ptr %.in1223.in, align 1, !tbaa !8 ; 2 uses
  %i.cgp = zext i8 %.in1223 to i32
  store i32 %i.cgp, ptr @zz_size, align 4, !tbaa !4
  %i.cgq = zext i8 %.in1223 to i64
  %i.cgr = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.cgq
  %i.cgs = load ptr, ptr %i.cgr, align 8, !tbaa !13
  store ptr %i.cgs, ptr %i.cfr, align 8, !tbaa !8
  %i.cgt = load ptr, ptr @zz_hold, align 8, !tbaa !13
  %i.cgu = load i32, ptr @zz_size, align 4, !tbaa !4
  %i.cgv = sext i32 %i.cgu to i64
  %i.cgw = getelementptr inbounds [8 x i8], ptr @zz_free, i64 %i.cgv
  store ptr %i.cgt, ptr %i.cgw, align 8, !tbaa !13
  br label %.critedge83

.critedge81:                                      ; preds = %bb.np
  %i.cgx = getelementptr inbounds nuw i8, ptr %i.cfr, i64 42
  %i.cgy = load i8, ptr %i.cgx, align 2, !tbaa !8
  %i.cgz = getelementptr inbounds nuw i8, ptr %i.cfr, i64 41
  %i.cha = load i8, ptr %i.cgz, align 1, !tbaa !8
  %i.chb = call ptr @ChildSymWithCode(ptr noundef %i.bxd, i8 noundef zeroext %i.cgd) #6
  %i.chc = call ptr @NewToken(i8 noundef zeroext 2, ptr noundef nonnull %i.cfs, i8 noundef zeroext %i.cgy, i8 noundef zeroext %i.cha, i8 noundef zeroext 0, ptr noundef %i.chb) #6
  %i.chd = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.che = getelementptr inbounds nuw i8, ptr %i.chd, i64 40
  store i8 3, ptr %i.che, align 8, !tbaa !8
  br label %bb.nr

bb.nr:                                            ; preds = %bb.nq, %.critedge81
  %.0950 = phi ptr [ %i.cfr, %bb.nq ], [ %i.chc, %.critedge81 ] ; 10 uses
  store i32 0, ptr %i.e, align 4, !tbaa !4
  %i.chf = getelementptr inbounds nuw i8, ptr %.0950, i64 80 ; 4 uses
  %i.chg = load ptr, ptr %i.chf, align 8, !tbaa !8 ; 3 uses
  %i.chh = getelementptr inbounds nuw i8, ptr %i.chg, i64 96
  %i.chi = load ptr, ptr %i.chh, align 8, !tbaa !8 ; 4 uses
  %.not1216 = icmp eq ptr %i.chi, null
  br i1 %.not1216, label %bb.nu, label %.preheader1476

.preheader1476:                                   ; preds = %bb.nr
  %.11009.in1542 = getelementptr inbounds nuw i8, ptr %i.chi, i64 8
  %.110091543 = load ptr, ptr %.11009.in1542, align 8, !tbaa !8 ; 2 uses
  %.not12171544 = icmp eq ptr %.110091543, %i.chi
  br i1 %.not12171544, label %.loopexit1477, label %.preheader1468

.preheader1468:                                   ; preds = %.preheader1476, %bb.nt
  %.110091545 = phi ptr [ %.11009, %bb.nt ], [ %.110091543, %.preheader1476 ] ; 2 uses
  %i.chj = phi i32 [ %i.chp, %bb.nt ], [ 0, %.preheader1476 ]
  br label %bb.ns

bb.ns:                                            ; preds = %.preheader1468, %bb.ns
  %.11009.pn = phi ptr [ %.31015, %bb.ns ], [ %.110091545, %.preheader1468 ]
  %.31015.in = getelementptr inbounds nuw i8, ptr %.11009.pn, i64 16
  %.31015 = load ptr, ptr %.31015.in, align 8, !tbaa !8 ; 3 uses
  %i.chk = getelementptr inbounds nuw i8, ptr %.31015, i64 32
  %i.chl = load i8, ptr %i.chk, align 8, !tbaa !8
  %i.chm = icmp eq i8 %i.chl, 0
  br i1 %i.chm, label %bb.ns, label %bb.nt, !llvm.loop !42

bb.nt:                                            ; preds = %bb.ns
  %i.chn = getelementptr inbounds nuw i8, ptr %.31015, i64 80
  %i.cho = load ptr, ptr %i.chn, align 8, !tbaa !8
  call void @PushScope(ptr noundef %i.cho, i32 noundef 0, i32 noundef 1) #6
  %i.chp = add nuw nsw i32 %i.chj, 1              ; 2 uses
  %.11009.in = getelementptr inbounds nuw i8, ptr %.110091545, i64 8
  %.11009 = load ptr, ptr %.11009.in, align 8, !tbaa !8 ; 2 uses
  %.not1217 = icmp eq ptr %.11009, %i.chi
  br i1 %.not1217, label %.loopexit1477.loopexit, label %.preheader1468, !llvm.loop !43

.loopexit1477.loopexit:                           ; preds = %bb.nt
  %.pre1645.pre = load ptr, ptr %i.chf, align 8, !tbaa !8
  br label %.loopexit1477

.loopexit1477:                                    ; preds = %.loopexit1477.loopexit, %.preheader1476
  %.pre1645 = phi ptr [ %i.chg, %.preheader1476 ], [ %.pre1645.pre, %.loopexit1477.loopexit ]
  %.lcssa1541 = phi i32 [ 0, %.preheader1476 ], [ %i.chp, %.loopexit1477.loopexit ] ; 2 uses
  store i32 %.lcssa1541, ptr %i.e, align 4
  br label %bb.nu

bb.nu:                                            ; preds = %.loopexit1477, %bb.nr
  %5 = phi i32 [ %.lcssa1541, %.loopexit1477 ], [ 0, %bb.nr ] ; 2 uses
  %6 = phi ptr [ %.pre1645, %.loopexit1477 ], [ %i.chg, %bb.nr ]
  call void @PushScope(ptr noundef %6, i32 noundef 0, i32 noundef 0) #6
  %i.chq = call ptr @Parse(ptr noundef nonnull %i.a, ptr noundef %1, i32 noundef 0, i32 noundef 0) ; 4 uses
  call void @PopScope() #6
  %i.chr = getelementptr inbounds nuw i8, ptr %.0950, i64 32 ; 2 uses
  store i8 10, ptr %i.chr, align 8, !tbaa !8
  %i.chs = load i8, ptr @zz_lengths, align 1, !tbaa !8 ; 2 uses
  %i.cht = zext i8 %i.chs to i32                  ; 2 uses
  store i32 %i.cht, ptr @zz_size, align 4, !tbaa !4
  %i.chu = zext i8 %i.chs to i64
  %i.chv = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.chu ; 2 uses
  %i.chw = load ptr, ptr %i.chv, align 8, !tbaa !13 ; 4 uses
  %i.chx = icmp eq ptr %i.chw, null
  br i1 %i.chx, label %bb.nv, label %bb.nw

bb.nv:                                            ; preds = %bb.nu
  %i.chy = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.chz = call ptr @GetMemory(i32 noundef %i.cht, ptr noundef %i.chy) #6
  br label %bb.nx

bb.nw:                                            ; preds = %bb.nu
  store ptr %i.chw, ptr @zz_hold, align 8, !tbaa !13
  %i.cia = load ptr, ptr %i.chw, align 8, !tbaa !8
  store ptr %i.cia, ptr %i.chv, align 8, !tbaa !13
  br label %bb.nx

bb.nx:                                            ; preds = %bb.nv, %bb.nw
  %i.cib = phi ptr [ %i.chz, %bb.nv ], [ %i.chw, %bb.nw ] ; 12 uses
  %i.cic = getelementptr inbounds nuw i8, ptr %i.cib, i64 32
  store i8 0, ptr %i.cic, align 8, !tbaa !8
  %i.cid = getelementptr inbounds nuw i8, ptr %i.cib, i64 24
  store ptr %i.cib, ptr %i.cid, align 8, !tbaa !8
  %i.cie = getelementptr inbounds nuw i8, ptr %i.cib, i64 16
  store ptr %i.cib, ptr %i.cie, align 8, !tbaa !8
  %i.cif = getelementptr inbounds nuw i8, ptr %i.cib, i64 8
  store ptr %i.cib, ptr %i.cif, align 8, !tbaa !8
  store ptr %i.cib, ptr %i.cib, align 8, !tbaa !8
  store ptr %i.cib, ptr @xx_link, align 8, !tbaa !13
  store ptr %i.cib, ptr @zz_res, align 8, !tbaa !13
  store ptr %.0950, ptr @zz_hold, align 8, !tbaa !13
  %i.cig = load ptr, ptr %.0950, align 8, !tbaa !8
  store ptr %i.cig, ptr @zz_tmp, align 8, !tbaa !13
  %i.cih = load ptr, ptr %i.cib, align 8, !tbaa !8
  store ptr %i.cih, ptr %.0950, align 8, !tbaa !8
  %i.cii = load ptr, ptr @zz_hold, align 8, !tbaa !13
  %i.cij = load ptr, ptr @zz_res, align 8, !tbaa !13 ; 2 uses
  %i.cik = load ptr, ptr %i.cij, align 8, !tbaa !8
  %i.cil = getelementptr inbounds nuw i8, ptr %i.cik, i64 8
  store ptr %i.cii, ptr %i.cil, align 8, !tbaa !8
  %i.cim = load ptr, ptr @zz_tmp, align 8, !tbaa !13 ; 2 uses
  store ptr %i.cim, ptr %i.cij, align 8, !tbaa !8
  %i.cin = load ptr, ptr @zz_res, align 8, !tbaa !13
  %i.cio = getelementptr inbounds nuw i8, ptr %i.cim, i64 8
  store ptr %i.cin, ptr %i.cio, align 8, !tbaa !8
  %i.cip = load ptr, ptr @xx_link, align 8, !tbaa !13 ; 4 uses
  store ptr %i.cip, ptr @zz_res, align 8, !tbaa !13
  store ptr %i.chq, ptr @zz_hold, align 8, !tbaa !13
  %i.ciq = icmp eq ptr %i.chq, null
  %i.cir = icmp eq ptr %i.cip, null
  %or.cond109 = select i1 %i.ciq, i1 true, i1 %i.cir
  br i1 %or.cond109, label %bb.nz, label %bb.ny

bb.ny:                                            ; preds = %bb.nx
  %i.cis = getelementptr inbounds nuw i8, ptr %i.chq, i64 16 ; 2 uses
  %i.cit = load ptr, ptr %i.cis, align 8, !tbaa !8 ; 3 uses
  store ptr %i.cit, ptr @zz_tmp, align 8, !tbaa !13
  %i.ciu = getelementptr inbounds nuw i8, ptr %i.cip, i64 16 ; 2 uses
  %i.civ = load ptr, ptr %i.ciu, align 8, !tbaa !8 ; 2 uses
  store ptr %i.civ, ptr %i.cis, align 8, !tbaa !8
  %i.ciw = getelementptr inbounds nuw i8, ptr %i.civ, i64 24
  store ptr %i.chq, ptr %i.ciw, align 8, !tbaa !8
  store ptr %i.cit, ptr %i.ciu, align 8, !tbaa !8
  %i.cix = getelementptr inbounds nuw i8, ptr %i.cit, i64 24
  store ptr %i.cip, ptr %i.cix, align 8, !tbaa !8
  br label %bb.nz

bb.nz:                                            ; preds = %bb.ny, %bb.nx
  %i.ciy = icmp sgt i32 %5, 0
  br i1 %i.ciy, label %.lr.ph1547, label %.preheader1475.preheader

.lr.ph1547:                                       ; preds = %bb.nz, %.lr.ph1547
  %.110031546 = phi i32 [ %i.ciz, %.lr.ph1547 ], [ 0, %bb.nz ]
  call void @PopScope() #6
  %i.ciz = add nuw nsw i32 %.110031546, 1         ; 2 uses
  %exitcond.not = icmp eq i32 %i.ciz, %5
  br i1 %exitcond.not, label %.preheader1475.preheader, label %.lr.ph1547, !llvm.loop !44

.preheader1475.preheader:                         ; preds = %.lr.ph1547, %bb.nz
  br label %.preheader1475

.preheader1475:                                   ; preds = %.preheader1475.preheader, %.loopexit1467
  %.pn1219 = phi ptr [ %.21010, %.loopexit1467 ], [ %i.bxd, %.preheader1475.preheader ]
  %.21010.in = getelementptr inbounds nuw i8, ptr %.pn1219, i64 8
  %.21010 = load ptr, ptr %.21010.in, align 8, !tbaa !8 ; 3 uses
  %.not1218 = icmp eq ptr %.21010, %i.bxd
  br i1 %.not1218, label %bb.ob, label %.preheader1466

.preheader1466:                                   ; preds = %.preheader1475, %.preheader1466
  %.21010.pn = phi ptr [ %.41016, %.preheader1466 ], [ %.21010, %.preheader1475 ]
  %.41016.in = getelementptr inbounds nuw i8, ptr %.21010.pn, i64 16
  %.41016 = load ptr, ptr %.41016.in, align 8, !tbaa !8 ; 3 uses
  %i.cja = getelementptr inbounds nuw i8, ptr %.41016, i64 32
  %i.cjb = load i8, ptr %i.cja, align 8, !tbaa !8
  switch i8 %i.cjb, label %bb.oa [
    i8 0, label %.preheader1466
    i8 10, label %.loopexit1467
  ]

bb.oa:                                            ; preds = %.preheader1466
  %i.cjc = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.cjd = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.cjc, ptr noundef nonnull @.str.45) #6 ; 0 uses
  br label %.loopexit1467

.loopexit1467:                                    ; preds = %.preheader1466, %bb.oa
  %i.cje = load ptr, ptr %i.chf, align 8, !tbaa !8 ; 2 uses
  %i.cjf = getelementptr inbounds nuw i8, ptr %.41016, i64 80
  %i.cjg = load ptr, ptr %i.cjf, align 8, !tbaa !8
  %i.cjh = icmp eq ptr %i.cje, %i.cjg
  br i1 %i.cjh, label %.thread1450, label %.preheader1475, !llvm.loop !45

.thread1450:                                      ; preds = %.loopexit1467
  %i.cji = call ptr @SymName(ptr noundef %i.cje) #6
  %i.cjj = load ptr, ptr %i.bxe, align 8, !tbaa !8
  %i.cjk = call ptr @SymName(ptr noundef %i.cjj) #6
  %i.cjl = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 31, ptr noundef nonnull @.str.46, i32 noundef 2, ptr noundef nonnull %i.chr, ptr noundef %i.cji, ptr noundef %i.cjk) #6 ; 0 uses
  %i.cjm = call i32 @DisposeObject(ptr noundef nonnull %.0950) #6 ; 0 uses
  br label %bb.oh

bb.ob:                                            ; preds = %.preheader1475
  %i.cjn = load ptr, ptr %i.chf, align 8, !tbaa !8
  %i.cjo = getelementptr inbounds nuw i8, ptr %i.cjn, i64 126
  %i.cjp = load i8, ptr %i.cjo, align 2
  %i.cjq = lshr i8 %i.cjp, 6
  %i.cjr = and i8 %i.cjq, 1
  %i.cjs = zext nneg i8 %i.cjr to i32
  %spec.select = add nsw i32 %.0994, %i.cjs       ; 2 uses
  %i.cjt = load i8, ptr @zz_lengths, align 1, !tbaa !8 ; 2 uses
  %i.cju = zext i8 %i.cjt to i32                  ; 2 uses
  store i32 %i.cju, ptr @zz_size, align 4, !tbaa !4
  %i.cjv = zext i8 %i.cjt to i64
  %i.cjw = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.cjv ; 2 uses
  %i.cjx = load ptr, ptr %i.cjw, align 8, !tbaa !13 ; 4 uses
  %i.cjy = icmp eq ptr %i.cjx, null
  br i1 %i.cjy, label %bb.oc, label %bb.od

bb.oc:                                            ; preds = %bb.ob
  %i.cjz = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.cka = call ptr @GetMemory(i32 noundef %i.cju, ptr noundef %i.cjz) #6
  br label %bb.oe

bb.od:                                            ; preds = %bb.ob
  store ptr %i.cjx, ptr @zz_hold, align 8, !tbaa !13
  %i.ckb = load ptr, ptr %i.cjx, align 8, !tbaa !8
  store ptr %i.ckb, ptr %i.cjw, align 8, !tbaa !13
  br label %bb.oe

bb.oe:                                            ; preds = %bb.oc, %bb.od
  %i.ckc = phi ptr [ %i.cka, %bb.oc ], [ %i.cjx, %bb.od ] ; 14 uses
  %i.ckd = getelementptr inbounds nuw i8, ptr %i.ckc, i64 32
  store i8 0, ptr %i.ckd, align 8, !tbaa !8
  %i.cke = getelementptr inbounds nuw i8, ptr %i.ckc, i64 24
  store ptr %i.ckc, ptr %i.cke, align 8, !tbaa !8
  %i.ckf = getelementptr inbounds nuw i8, ptr %i.ckc, i64 16
  store ptr %i.ckc, ptr %i.ckf, align 8, !tbaa !8
  %i.ckg = getelementptr inbounds nuw i8, ptr %i.ckc, i64 8
  store ptr %i.ckc, ptr %i.ckg, align 8, !tbaa !8
  store ptr %i.ckc, ptr %i.ckc, align 8, !tbaa !8
  store ptr %i.ckc, ptr @xx_link, align 8, !tbaa !13
  store ptr %i.ckc, ptr @zz_res, align 8, !tbaa !13
  store ptr %i.bxd, ptr @zz_hold, align 8, !tbaa !13
  br i1 %i.cfq, label %.thread1455, label %bb.of

.thread1455:                                      ; preds = %bb.oe
  store ptr %.0950, ptr @zz_hold, align 8, !tbaa !13
  br label %bb.og

bb.of:                                            ; preds = %bb.oe
  %i.ckh = load ptr, ptr %i.bxd, align 8, !tbaa !8
  store ptr %i.ckh, ptr @zz_tmp, align 8, !tbaa !13
  %i.cki = load ptr, ptr %i.ckc, align 8, !tbaa !8
  store ptr %i.cki, ptr %i.bxd, align 8, !tbaa !8
  %i.ckj = load ptr, ptr @zz_hold, align 8, !tbaa !13
  %i.ckk = load ptr, ptr @zz_res, align 8, !tbaa !13 ; 2 uses
  %i.ckl = load ptr, ptr %i.ckk, align 8, !tbaa !8
  %i.ckm = getelementptr inbounds nuw i8, ptr %i.ckl, i64 8
  store ptr %i.ckj, ptr %i.ckm, align 8, !tbaa !8
  %i.ckn = load ptr, ptr @zz_tmp, align 8, !tbaa !13 ; 2 uses
  store ptr %i.ckn, ptr %i.ckk, align 8, !tbaa !8
  %i.cko = load ptr, ptr @zz_res, align 8, !tbaa !13
  %i.ckp = getelementptr inbounds nuw i8, ptr %i.ckn, i64 8
  store ptr %i.cko, ptr %i.ckp, align 8, !tbaa !8
  %.pr1454 = load ptr, ptr @xx_link, align 8, !tbaa !13 ; 4 uses
  store ptr %.pr1454, ptr @zz_res, align 8, !tbaa !13
  store ptr %.0950, ptr @zz_hold, align 8, !tbaa !13
  %i.ckq = icmp eq ptr %.pr1454, null
  br i1 %i.ckq, label %bb.oh, label %._crit_edge1646

._crit_edge1646:                                  ; preds = %bb.of
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pr1454, i64 16
  %.pre1647 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !8
  br label %bb.og

bb.og:                                            ; preds = %._crit_edge1646, %.thread1455
  %i.ckr = phi ptr [ %i.ckc, %.thread1455 ], [ %.pre1647, %._crit_edge1646 ]
  %i.cks = phi ptr [ %i.ckc, %.thread1455 ], [ %.pr1454, %._crit_edge1646 ] ; 2 uses
  %i.ckt = getelementptr inbounds nuw i8, ptr %.0950, i64 16 ; 2 uses
  %i.cku = load ptr, ptr %i.ckt, align 8, !tbaa !8 ; 3 uses
  store ptr %i.cku, ptr @zz_tmp, align 8, !tbaa !13
  %i.ckv = getelementptr inbounds nuw i8, ptr %i.cks, i64 16 ; 2 uses
  store ptr %i.ckr, ptr %i.ckt, align 8, !tbaa !8
  %i.ckw = load ptr, ptr %i.ckv, align 8, !tbaa !8
  %i.ckx = getelementptr inbounds nuw i8, ptr %i.ckw, i64 24
  store ptr %.0950, ptr %i.ckx, align 8, !tbaa !8
  store ptr %i.cku, ptr %i.ckv, align 8, !tbaa !8
  %i.cky = getelementptr inbounds nuw i8, ptr %i.cku, i64 24
  store ptr %i.cks, ptr %i.cky, align 8, !tbaa !8
  br label %bb.oh

bb.oh:                                            ; preds = %.thread1450, %bb.of, %bb.og
  %.2 = phi i32 [ %spec.select, %bb.of ], [ %spec.select, %bb.og ], [ %.0994, %.thread1450 ]
  call void @PushScope(ptr noundef %i.bxf, i32 noundef 1, i32 noundef 0) #6
  %i.ckz = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.cla = icmp eq ptr %i.ckz, null
  br i1 %i.cla, label %bb.oi, label %bb.oj

bb.oi:                                            ; preds = %bb.oh
  %i.clb = call ptr @LexGetToken() #6
  store ptr %i.clb, ptr %i.a, align 8, !tbaa !13
  br label %bb.oj

bb.oj:                                            ; preds = %bb.oh, %bb.oi
  call void @PopScope() #6
  br label %bb.nm

.critedge83:                                      ; preds = %bb.nm, %bb.nn, %bb.no, %bb.np, %.thread1456
  %i.clc = getelementptr inbounds nuw i8, ptr %i.bxf, i64 122
  %i.cld = load i16, ptr %i.clc, align 2, !tbaa !8
  %i.cle = zext i16 %i.cld to i32
  %i.clf = icmp slt i32 %.0994, %i.cle
  br i1 %i.clf, label %.preheader1488, label %.loopexit1489

.preheader1488:                                   ; preds = %.critedge83
  %.01005.in1552 = getelementptr inbounds nuw i8, ptr %i.bxf, i64 8
  %.010051553 = load ptr, ptr %.01005.in1552, align 8, !tbaa !8 ; 2 uses
  %.not12241554 = icmp eq ptr %.010051553, %i.bxf
  br i1 %.not12241554, label %.loopexit1489, label %.preheader1473.lr.ph

.preheader1473.lr.ph:                             ; preds = %.preheader1488
  %.31011.in1548 = getelementptr inbounds nuw i8, ptr %i.bxd, i64 8
  %i.clg = getelementptr inbounds nuw i8, ptr %i.bxd, i64 32
  br label %.preheader1473

.preheader1473:                                   ; preds = %.preheader1473.lr.ph, %.loopexit1472
  %.010051555 = phi ptr [ %.010051553, %.preheader1473.lr.ph ], [ %.01005, %.loopexit1472 ] ; 2 uses
  br label %bb.ok

bb.ok:                                            ; preds = %.preheader1473, %bb.ok
  %.01005.pn = phi ptr [ %.01019, %bb.ok ], [ %.010051555, %.preheader1473 ]
  %.01019.in = getelementptr inbounds nuw i8, ptr %.01005.pn, i64 16
  %.01019 = load ptr, ptr %.01019.in, align 8, !tbaa !8 ; 5 uses
  %i.clh = getelementptr inbounds nuw i8, ptr %.01019, i64 32
  %i.cli = load i8, ptr %i.clh, align 8, !tbaa !8
  switch i8 %i.cli, label %.loopexit1472 [
    i8 0, label %bb.ok
    i8 -111, label %bb.ol
  ]

bb.ol:                                            ; preds = %bb.ok
  %i.clj = getelementptr inbounds nuw i8, ptr %.01019, i64 126
  %i.clk = load i8, ptr %i.clj, align 2
  %i.cll = and i8 %i.clk, 64
  %.not1251 = icmp eq i8 %i.cll, 0
  br i1 %.not1251, label %.loopexit1472, label %.preheader1471

.preheader1471:                                   ; preds = %bb.ol
  %.310111549 = load ptr, ptr %.31011.in1548, align 8, !tbaa !8 ; 2 uses
  %.not12521550 = icmp eq ptr %.310111549, %i.bxd
  br i1 %.not12521550, label %._crit_edge, label %.preheader

.preheader:                                       ; preds = %.preheader1471, %.loopexit
  %.310111551 = phi ptr [ %.31011, %.loopexit ], [ %.310111549, %.preheader1471 ] ; 2 uses
  br label %bb.om

bb.om:                                            ; preds = %.preheader, %bb.om
  %.31011.pn = phi ptr [ %.51017, %bb.om ], [ %.310111551, %.preheader ]
  %.51017.in = getelementptr inbounds nuw i8, ptr %.31011.pn, i64 16
  %.51017 = load ptr, ptr %.51017.in, align 8, !tbaa !8 ; 3 uses
  %i.clm = getelementptr inbounds nuw i8, ptr %.51017, i64 32
  %i.cln = load i8, ptr %i.clm, align 8, !tbaa !8
  switch i8 %i.cln, label %.loopexit [
    i8 0, label %bb.om
    i8 10, label %bb.on
  ]

bb.on:                                            ; preds = %bb.om
  %i.clo = getelementptr inbounds nuw i8, ptr %.51017, i64 80
  %i.clp = load ptr, ptr %i.clo, align 8, !tbaa !8
  %i.clq = icmp eq ptr %i.clp, %.01019
  br i1 %i.clq, label %.loopexit1472, label %.loopexit

.loopexit:                                        ; preds = %bb.om, %bb.on
  %.31011.in = getelementptr inbounds nuw i8, ptr %.310111551, i64 8
  %.31011 = load ptr, ptr %.31011.in, align 8, !tbaa !8 ; 2 uses
  %.not1252 = icmp eq ptr %.31011, %i.bxd
  br i1 %.not1252, label %._crit_edge, label %.preheader, !llvm.loop !46

._crit_edge:                                      ; preds = %.loopexit, %.preheader1471
  %i.clr = call ptr @SymName(ptr noundef %.01019) #6
  %i.cls = call ptr @SymName(ptr noundef %i.bxf) #6
  %i.clt = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 38, ptr noundef nonnull @.str.47, i32 noundef 2, ptr noundef nonnull %i.clg, ptr noundef %i.clr, ptr noundef %i.cls) #6 ; 0 uses
  br label %.loopexit1472

.loopexit1472:                                    ; preds = %bb.ok, %bb.on, %bb.ol, %._crit_edge
  %.01005.in = getelementptr inbounds nuw i8, ptr %.010051555, i64 8
  %.01005 = load ptr, ptr %.01005.in, align 8, !tbaa !8 ; 2 uses
  %.not1224 = icmp eq ptr %.01005, %i.bxf
  br i1 %.not1224, label %.loopexit1489, label %.preheader1473, !llvm.loop !47

.loopexit1489:                                    ; preds = %.loopexit1472, %.preheader1488, %.critedge83
  %i.clu = load ptr, ptr %i.a, align 8, !tbaa !13 ; 2 uses
  %i.clv = getelementptr inbounds nuw i8, ptr %i.clu, i64 32
  %i.clw = load i8, ptr %i.clv, align 8, !tbaa !8
  %i.clx = icmp eq i8 %i.clw, 104
  br i1 %i.clx, label %bb.oo, label %bb.or

bb.oo:                                            ; preds = %.loopexit1489
  %i.cly = load i16, ptr %i.cav, align 1
  %i.clz = and i16 %i.cly, 8
  %.not1225 = icmp eq i16 %i.clz, 0
  br i1 %.not1225, label %bb.op, label %bb.oq

bb.op:                                            ; preds = %bb.oo
  %i.cma = getelementptr inbounds nuw i8, ptr %i.bxd, i64 32
  %i.cmb = call ptr @SymName(ptr noundef nonnull %i.bxf) #6
  %i.cmc = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 32, ptr noundef nonnull @.str.48, i32 noundef 2, ptr noundef nonnull %i.cma, ptr noundef nonnull @.str.33, ptr noundef %i.cmb) #6 ; 0 uses
  br label %bb.or

bb.oq:                                            ; preds = %bb.oo
  %i.cmd = getelementptr inbounds nuw i8, ptr %i.clu, i64 80
  store ptr %i.bxf, ptr %i.cmd, align 8, !tbaa !8
  br label %bb.or

bb.or:                                            ; preds = %bb.op, %bb.oq, %.loopexit1489
  br i1 %.not1226, label %bb.re, label %bb.os

bb.os:                                            ; preds = %bb.or
  %i.cme = load i16, ptr %i.cav, align 1          ; 3 uses
  %i.cmf = and i16 %i.cme, 16448
  %or.cond = icmp eq i16 %i.cmf, 64
  br i1 %or.cond, label %bb.ot, label %bb.re

bb.ot:                                            ; preds = %bb.os
  %i.cmg = getelementptr inbounds nuw i8, ptr %i.bxf, i64 104
  %i.cmh = load ptr, ptr %i.cmg, align 8, !tbaa !8
  %i.cmi = icmp eq ptr %i.cmh, null
  br i1 %i.cmi, label %bb.ou, label %bb.re

bb.ou:                                            ; preds = %bb.ot
  %i.cmj = and i16 %i.cme, 8
  %.not1229 = icmp eq i16 %i.cmj, 0
  br i1 %.not1229, label %bb.ow, label %bb.ov

bb.ov:                                            ; preds = %bb.ou
  %i.cmk = call ptr @ChildSym(ptr noundef nonnull %i.bxf, i32 noundef 146) #6
  %i.cml = getelementptr inbounds nuw i8, ptr %i.cmk, i64 124
  %i.cmm = load i8, ptr %i.cml, align 4, !tbaa !8
  %i.cmn = icmp ult i8 %i.cmm, 2
  br i1 %i.cmn, label %._crit_edge1648, label %bb.re

._crit_edge1648:                                  ; preds = %bb.ov
  %.pre1649 = load i16, ptr %i.cav, align 1
  br label %bb.ow

bb.ow:                                            ; preds = %._crit_edge1648, %bb.ou
  %i.cmo = phi i16 [ %.pre1649, %._crit_edge1648 ], [ %i.cme, %bb.ou ] ; 2 uses
  %i.cmp = load i32, ptr @ttop, align 4
  %i.cmq = shl i16 %i.cmo, 12
  %sext = ashr i16 %i.cmq, 15
  %i.cmr = sext i16 %sext to i32
  %i.cms = add i32 %i.cmp, %i.cmr
  %i.cmt = sext i32 %i.cms to i64
  br label %.critedge85

.critedge85:                                      ; preds = %.critedge85, %bb.ow
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge85 ], [ %i.cmt, %bb.ow ] ; 3 uses
  %i.cmu = getelementptr inbounds [8 x i8], ptr @tok_stack, i64 %indvars.iv
  %i.cmv = load ptr, ptr %i.cmu, align 8, !tbaa !13
  %i.cmw = getelementptr inbounds nuw i8, ptr %i.cmv, i64 32
  %i.cmx = load i8, ptr %i.cmw, align 8, !tbaa !8 ; 2 uses
  %or.cond1464 = icmp ult i8 %i.cmx, 102
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br i1 %or.cond1464, label %.critedge85, label %bb.ox, !llvm.loop !48

bb.ox:                                            ; preds = %.critedge85
  switch i8 %i.cmx, label %bb.re [
    i8 102, label %bb.oy
    i8 104, label %bb.oy
  ]

bb.oy:                                            ; preds = %bb.ox, %bb.ox
  %i.cmy = getelementptr inbounds [8 x i8], ptr @tok_stack, i64 %indvars.iv
  %i.cmz = getelementptr i8, ptr %i.cmy, i64 -8
  %i.cna = load ptr, ptr %i.cmz, align 8, !tbaa !13
  %i.cnb = getelementptr inbounds nuw i8, ptr %i.cna, i64 32
  %i.cnc = load i8, ptr %i.cnb, align 8, !tbaa !8
  %i.cnd = icmp eq i8 %i.cnc, 110
  br i1 %i.cnd, label %bb.oz, label %bb.re

bb.oz:                                            ; preds = %bb.oy
  %i.cne = and i16 %i.cmo, 8
  %.not1231 = icmp eq i16 %i.cne, 0
  br i1 %.not1231, label %bb.pp, label %bb.pa

bb.pa:                                            ; preds = %bb.oz
  %i.cnf = load i8, ptr getelementptr inbounds nuw (i8, ptr @zz_lengths, i64 2), align 1, !tbaa !8 ; 2 uses
  %i.cng = zext i8 %i.cnf to i32                  ; 2 uses
  store i32 %i.cng, ptr @zz_size, align 4, !tbaa !4
  %i.cnh = zext i8 %i.cnf to i64
  %i.cni = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.cnh ; 2 uses
  %i.cnj = load ptr, ptr %i.cni, align 8, !tbaa !13 ; 4 uses
  %i.cnk = icmp eq ptr %i.cnj, null
  br i1 %i.cnk, label %bb.pb, label %bb.pc

bb.pb:                                            ; preds = %bb.pa
  %i.cnl = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.cnm = call ptr @GetMemory(i32 noundef %i.cng, ptr noundef %i.cnl) #6 ; 2 uses
  store ptr %i.cnm, ptr @zz_hold, align 8, !tbaa !13
  br label %bb.pd

bb.pc:                                            ; preds = %bb.pa
  store ptr %i.cnj, ptr @zz_hold, align 8, !tbaa !13
  %i.cnn = load ptr, ptr %i.cnj, align 8, !tbaa !8
  store ptr %i.cnn, ptr %i.cni, align 8, !tbaa !13
  br label %bb.pd

end_hunk_1
