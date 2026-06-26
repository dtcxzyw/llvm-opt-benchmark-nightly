inline.NumInlined: 14
inline.NumDeleted: 11
begin_hunk_0_@Configure:bb.a
  %puts15.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  br label %bb.in

bb.in:                                            ; preds = %DisplayEncoderParams.exit, %PatchInp.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @GetConfigFileContent(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noalias ptr @fopen64(ptr noundef %0, ptr noundef nonnull @.str.237) ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.238, ptr noundef %0) #21 ; 0 uses
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i32 @fseek(ptr noundef nonnull %i.a, i64 noundef 0, i32 noundef 2)
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.239, ptr noundef %0) #21 ; 0 uses
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.f = tail call i64 @ftell(ptr noundef nonnull %i.a) ; 4 uses
  %or.cond = icmp ugt i64 %i.f, 60000
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.240, i64 noundef %i.f, ptr noundef %0) #21 ; 0 uses
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.h = tail call i32 @fseek(ptr noundef nonnull %i.a, i64 noundef 0, i32 noundef 0)
  %.not22 = icmp eq i32 %i.h, 0
  br i1 %.not22, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.239, ptr noundef %0) #21 ; 0 uses
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.j = add nuw nsw i64 %i.f, 1
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #22 ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @no_mem_exit(ptr noundef nonnull @.str.241) #21
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.m = tail call i64 @fread(ptr noundef %i.k, i64 noundef 1, i64 noundef %i.f, ptr noundef nonnull %i.a)
  %i.n = getelementptr inbounds i8, ptr %i.k, i64 %i.m
  store i8 0, ptr %i.n, align 1, !tbaa !22
  %i.o = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h, %bb.f, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.h ], [ %i.k, %bb.k ]
  ret ptr %.0
}

declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @ParseContent(ptr noundef %0, i32 noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [10000 x ptr], align 16           ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.f = icmp sgt i32 %1, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge73

.lr.ph:                                           ; preds = %bb.a, %.loopexit
  %.04469 = phi i32 [ %.3, %.loopexit ], [ 0, %bb.a ] ; 11 uses
  %.04568 = phi ptr [ %.247, %.loopexit ], [ %0, %bb.a ] ; 12 uses
  %.04867 = phi i32 [ %.351, %.loopexit ], [ 0, %bb.a ] ; 4 uses
  %.05266 = phi i32 [ %.153, %.loopexit ], [ 0, %bb.a ] ; 5 uses
  %i.g = load i8, ptr %.04568, align 1, !tbaa !22
  switch i8 %i.g, label %bb.k [
    i8 13, label %bb.b
    i8 35, label %bb.c
    i8 10, label %bb.e
    i8 32, label %bb.f
    i8 9, label %bb.f
    i8 34, label %bb.h
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.04568, i64 1
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  store i8 0, ptr %.04568, align 1, !tbaa !22
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.146 = phi ptr [ %.04568, %bb.c ], [ %i.m, %bb.d ] ; 4 uses
  %i.i = load i8, ptr %.146, align 1, !tbaa !22
  %i.j = icmp ne i8 %i.i, 10
  %i.k = icmp ult ptr %.146, %i.e
  %i.l = and i1 %i.k, %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %.146, i64 1
  br i1 %i.l, label %bb.d, label %.loopexit, !llvm.loop !118

bb.e:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %.04568, i64 1
  store i8 0, ptr %.04568, align 1, !tbaa !22
  br label %.loopexit

bb.f:                                             ; preds = %.lr.ph, %.lr.ph
  %.not60 = icmp eq i32 %.05266, 0
  %i.o = getelementptr inbounds nuw i8, ptr %.04568, i64 1 ; 2 uses
  br i1 %.not60, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr %.04568, align 1, !tbaa !22
  br label %.loopexit

bb.h:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %.04568, i64 1 ; 2 uses
  store i8 0, ptr %.04568, align 1, !tbaa !22
  %.not59 = icmp eq i32 %.05266, 0
  br i1 %.not59, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.q = add nsw i32 %.04469, 1
  %i.r = sext i32 %.04469 to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.r
  store ptr %i.p, ptr %i.s, align 8, !tbaa !21
  %i.t = xor i32 %.04867, -1
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.149 = phi i32 [ %i.t, %bb.i ], [ 0, %bb.h ]
  %.1 = phi i32 [ %i.q, %bb.i ], [ %.04469, %bb.h ]
  %i.u = xor i32 %.05266, -1
  br label %.loopexit

bb.k:                                             ; preds = %.lr.ph
  %.not61 = icmp eq i32 %.04867, 0
  br i1 %.not61, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.v = add nsw i32 %.04469, 1
  %i.w = sext i32 %.04469 to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.w
  store ptr %.04568, ptr %i.x, align 8, !tbaa !21
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.2 = phi i32 [ %.04469, %bb.k ], [ %i.v, %bb.l ]
  %i.y = getelementptr inbounds nuw i8, ptr %.04568, i64 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.f, %bb.g, %bb.m, %bb.j, %bb.e, %bb.b
  %.153 = phi i32 [ %.05266, %bb.m ], [ %.05266, %bb.b ], [ %i.u, %bb.j ], [ 0, %bb.e ], [ -1, %bb.f ], [ 0, %bb.g ], [ 0, %bb.d ]
  %.351 = phi i32 [ -1, %bb.m ], [ %.04867, %bb.b ], [ %.149, %bb.j ], [ 0, %bb.e ], [ %.04867, %bb.f ], [ 0, %bb.g ], [ 0, %bb.d ]
  %.247 = phi ptr [ %i.y, %bb.m ], [ %i.h, %bb.b ], [ %i.p, %bb.j ], [ %i.n, %bb.e ], [ %i.o, %bb.f ], [ %i.o, %bb.g ], [ %.146, %bb.d ] ; 2 uses
  %.3 = phi i32 [ %.2, %bb.m ], [ %.04469, %bb.b ], [ %.1, %bb.j ], [ %.04469, %bb.e ], [ %.04469, %bb.f ], [ %.04469, %bb.g ], [ %.04469, %bb.d ] ; 3 uses
  %i.z = icmp ult ptr %.247, %i.e
  br i1 %i.z, label %.lr.ph, label %._crit_edge, !llvm.loop !119

._crit_edge:                                      ; preds = %.loopexit
  %i.aa = add nsw i32 %.3, -1
  %i.ab = icmp sgt i32 %.3, 1
  br i1 %i.ab, label %.lr.ph72, label %._crit_edge73

.lr.ph72:                                         ; preds = %._crit_edge, %bb.y
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.y ], [ 0, %._crit_edge ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv ; 5 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !21 ; 4 uses
  %i.ae = load ptr, ptr @Map, align 16, !tbaa !11 ; 2 uses
  %.not7.i = icmp eq ptr %i.ae, null
  br i1 %.not7.i, label %ParameterNameToMapIndex.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph72, %bb.n
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.n ], [ 0, %.lr.ph72 ] ; 2 uses
  %i.af = phi ptr [ %i.aj, %bb.n ], [ %i.ae, %.lr.ph72 ]
  %i.ag = call i32 @strcasecmp(ptr noundef nonnull %i.af, ptr noundef readonly %i.ad) #20
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %ParameterNameToMapIndex.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw [56 x i8], ptr @Map, i64 %indvars.iv.next.i
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !11 ; 2 uses
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %ParameterNameToMapIndex.exit.thread, label %.lr.ph.i, !llvm.loop !120

ParameterNameToMapIndex.exit.thread:              ; preds = %bb.n, %.lr.ph72
  %i.ak = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.242, ptr noundef %i.ad) #21 ; 0 uses
  call void @error(ptr noundef nonnull @errortext, i32 noundef 300) #21
  br label %ParameterNameToMapIndex.exit

ParameterNameToMapIndex.exit:                     ; preds = %.lr.ph.i, %ParameterNameToMapIndex.exit.thread
  %.05.i63 = phi i64 [ -1, %ParameterNameToMapIndex.exit.thread ], [ %indvars.iv.i, %.lr.ph.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !21
  %i.an = call i32 @strcasecmp(ptr noundef nonnull @.str.243, ptr noundef %i.am) #20
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %ParameterNameToMapIndex.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(78) @errortext, ptr noundef nonnull align 1 dereferenceable(78) @.str.244, i64 78, i1 false)
  call void @error(ptr noundef nonnull @errortext, i32 noundef 300) #21
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %ParameterNameToMapIndex.exit
  %i.ao = getelementptr inbounds [56 x i8], ptr @Map, i64 %.05.i63 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !15
  switch i32 %i.aq, label %bb.x [
    i32 0, label %bb.q
    i32 1, label %bb.t
    i32 2, label %bb.u
  ]

bb.q:                                             ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !21 ; 2 uses
  %i.at = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.as, ptr noundef nonnull @.str.245, ptr noundef nonnull %i.b) #21
  %.not57 = icmp eq i32 %i.at, 1
  br i1 %.not57, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.au = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.246, ptr noundef %i.ad, ptr noundef %i.as) #21 ; 0 uses
  call void @error(ptr noundef nonnull @errortext, i32 noundef 300) #21
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.av = load i32, ptr %i.b, align 4, !tbaa !4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !17
  store i32 %i.av, ptr %i.ax, align 4, !tbaa !4
  %putchar58 = call i32 @putchar(i32 46)          ; 0 uses
  br label %bb.y

bb.t:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !17
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !21
  %i.bc = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.az, ptr noundef nonnull dereferenceable(1) %i.bb, i64 noundef 256) #21 ; 0 uses
  %putchar56 = call i32 @putchar(i32 46)          ; 0 uses
  br label %bb.y

bb.u:                                             ; preds = %bb.p
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !21 ; 2 uses
  %i.bf = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.be, ptr noundef nonnull @.str.248, ptr noundef nonnull %i.c) #21
  %.not55 = icmp eq i32 %i.bf, 1
  br i1 %.not55, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bg = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.246, ptr noundef %i.ad, ptr noundef %i.be) #21 ; 0 uses
  call void @error(ptr noundef nonnull @errortext, i32 noundef 300) #21
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bh = load double, ptr %i.c, align 8, !tbaa !18
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !17
  store double %i.bh, ptr %i.bj, align 8, !tbaa !18
  %putchar = call i32 @putchar(i32 46)            ; 0 uses
  br label %bb.y

bb.x:                                             ; preds = %bb.p
  call void @error(ptr noundef nonnull @.str.249, i32 noundef -1) #21
  br label %bb.y

bb.y:                                             ; preds = %bb.s, %bb.t, %bb.w, %bb.x
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bk = trunc nuw i64 %indvars.iv.next to i32
  %i.bl = icmp sgt i32 %i.aa, %i.bk
  br i1 %i.bl, label %.lr.ph72, label %._crit_edge73, !llvm.loop !121

._crit_edge73:                                    ; preds = %bb.y, %bb.a, %._crit_edge
  %i.bm = load ptr, ptr @input, align 8, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5800) %i.bm, ptr noundef nonnull align 8 dereferenceable(5800) @configinput, i64 5800, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

declare void @no_mem_exit(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen64(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 33) i32 @CeilLog2(i32 noundef %0) local_unnamed_addr #10 {
._crit_edge:
  %i.a = add i32 %0, -1
  %i.b = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.a, i1 false)
  %i.c = sub nuw nsw i32 32, %i.b
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @PatchInputNoFrames() local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr @input, align 8, !tbaa !27 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !39
  %i.d = add nsw i32 %i.c, -1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4736
  %i.f = load i32, ptr %i.e, align 8, !tbaa !85
  %i.g = add nsw i32 %i.f, 1                      ; 2 uses
  %i.h = mul nsw i32 %i.g, %i.d
  %i.i = add nsw i32 %i.h, 1                      ; 2 uses
  store i32 %i.i, ptr %i.b, align 8, !tbaa !39
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 4740 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !122  ; 2 uses
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add nsw i32 %i.k, -1
  %i.m = mul nsw i32 %i.l, %i.g
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.j, align 4, !tbaa !122
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i32 %i.i, ptr @FirstFrameIn2ndIGOP, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nofree
declare noundef i32 @open64(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #14

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #16

attributes #0 = { cold nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_0
