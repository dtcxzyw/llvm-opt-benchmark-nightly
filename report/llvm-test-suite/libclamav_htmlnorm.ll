inline.NumInlined: 114
inline.NumDeleted: 5
begin_hunk_0_@cli_readline:bb.a
bb.l:                                             ; preds = %bb.j
  %i.ap = tail call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef %2, ptr noundef nonnull %0)
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @free(ptr noundef nonnull %i.b) #15
  br label %.loopexit

bb.n:                                             ; preds = %bb.l
  %i.ar = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #17
  %i.as = trunc i64 %i.ar to i32                  ; 2 uses
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @free(ptr noundef nonnull %i.b) #15
  br label %.loopexit

bb.p:                                             ; preds = %bb.n
  %i.au = add i32 %2, -1                          ; 2 uses
  %i.av = icmp eq i32 %i.au, %i.as
  br i1 %i.av, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.p
  %i.aw = tail call ptr @__ctype_b_loc() #16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !18
  %i.ay = zext i32 %i.au to i64
  br label %bb.q

bb.q:                                             ; preds = %.preheader, %bb.r
  %indvars.iv = phi i64 [ %i.ay, %.preheader ], [ %i.az, %bb.r ] ; 2 uses
  %.0 = phi i32 [ 0, %.preheader ], [ %i.bg, %bb.r ] ; 2 uses
  %i.az = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !15
  %i.bc = zext i8 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.bc
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !20
  %i.bf = and i16 %i.be, 8192
  %.not79 = icmp eq i16 %i.bf, 0
  br i1 %.not79, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bg = add i32 %.0, -1
  %.wide = icmp eq i64 %i.az, 0
  br i1 %.wide, label %.loopexit, label %bb.q, !llvm.loop !23

bb.s:                                             ; preds = %bb.q
  %i.bh = zext i32 %.0 to i64
  %i.bi = tail call i32 @fseek(ptr noundef nonnull %0, i64 noundef %i.bh, i32 noundef 1) ; 0 uses
  %i.bj = and i64 %indvars.iv, 4294967295
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bj
  store i8 0, ptr %i.bk, align 1, !tbaa !15
  br label %.loopexit

.loopexit:                                        ; preds = %bb.r, %bb.i, %bb.s, %bb.p, %bb.a, %bb.o, %bb.m, %bb.k, %bb.d
  %.067 = phi ptr [ null, %bb.d ], [ %i.b, %bb.i ], [ null, %bb.m ], [ null, %bb.o ], [ null, %bb.a ], [ null, %bb.k ], [ %i.b, %bb.p ], [ %i.b, %bb.s ], [ %i.b, %bb.r ]
  ret ptr %.067
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @cli_malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #4

declare void @cli_dbgmsg(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @html_tag_arg_free(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !24
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 4 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !30
  tail call void @free(ptr noundef %i.h) #15
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !30   ; 2 uses
  %.not31 = icmp eq ptr %i.k, null
  br i1 %.not31, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.k) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !32   ; 2 uses
  %.not32 = icmp eq ptr %i.l, null
  br i1 %.not32, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !33   ; 2 uses
  %.not33 = icmp eq ptr %i.n, null
  br i1 %.not33, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @blobDestroy(ptr noundef nonnull %i.n) #15
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.o = load i32, ptr %0, align 8, !tbaa !24
  %i.p = sext i32 %i.o to i64
  %i.q = icmp slt i64 %indvars.iv.next, %i.p
  br i1 %i.q, label %bb.b, label %._crit_edge, !llvm.loop !35

._crit_edge:                                      ; preds = %bb.g, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !29   ; 2 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.s) #15
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !31   ; 2 uses
  %.not29 = icmp eq ptr %i.u, null
  br i1 %.not29, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %i.u) #15
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !32   ; 2 uses
  %.not30 = icmp eq ptr %i.w, null
  br i1 %.not30, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @free(ptr noundef nonnull %i.w) #15
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  store i32 0, ptr %0, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  ret void
}

declare void @blobDestroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @html_normalise_mem(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr nofree noundef captures(address_is_null) %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.m_area_tag, align 8         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store ptr %0, ptr %5, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.b, align 8, !tbaa !13
  %i.c = call fastcc i32 @cli_html_normalise(i32 noundef -1, ptr noundef nonnull %5, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cli_html_normalise(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(address_is_null) %3, ptr nofree noundef readonly captures(address_is_null) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 16 uses
  %i.b = alloca [1025 x i8], align 16             ; 26 uses
  %i.c = alloca [1025 x i8], align 16             ; 12 uses
  %i.d = alloca [1025 x i8], align 16             ; 37 uses
  %5 = alloca %struct.tag_arguments_tag, align 8  ; 23 uses
  %6 = alloca %struct.entity_conv, align 8        ; 9 uses
  %i.e = alloca [1025 x i8], align 16             ; 11 uses
  %i.f = alloca [10 x i8], align 1                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.h = load i32, ptr %i.g, align 4, !tbaa !36
  %i.i = and i32 %i.h, 2
  %i.j = icmp ne i32 %i.i, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi i1 [ false, %bb.a ], [ %i.j, %bb.b ] ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.l, align 4, !tbaa !38
  %.not1094 = icmp eq ptr %1, null                ; 3 uses
  br i1 %.not1094, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.m = icmp slt i32 %0, 0
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.8) #15
  br label %.critedge1219

bb.f:                                             ; preds = %bb.d
  %i.n = tail call i64 @lseek(i32 noundef %0, i64 noundef 0, i32 noundef 0) #15 ; 0 uses
  %i.o = tail call i32 @dup(i32 noundef %0) #15   ; 3 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %.critedge1219, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = tail call noalias ptr @fdopen(i32 noundef %i.o, ptr noundef nonnull @.str.4) #15 ; 2 uses
  %.not1095 = icmp eq ptr %i.q, null
  br i1 %.not1095, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = tail call i32 @close(i32 noundef %i.o) #15 ; 0 uses
  br label %.critedge1219

bb.i:                                             ; preds = %bb.g, %bb.c
  %.0949 = phi ptr [ null, %bb.c ], [ %i.q, %bb.g ] ; 6 uses
  br i1 %i.k, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.s = call i32 @init_entity_converter(ptr noundef nonnull %6, ptr noundef nonnull @.str.9, i64 noundef 16384) #15 ; 3 uses
  %.not1096 = icmp eq i32 %i.s, 0
  br i1 %.not1096, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %.not1094, label %bb.l, label %.critedge1219

bb.l:                                             ; preds = %bb.k
  %i.t = call i32 @fclose(ptr noundef %.0949)     ; 0 uses
  br label %.critedge1219

bb.m:                                             ; preds = %bb.j, %bb.i
  store i32 0, ptr %5, align 8, !tbaa !24
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  %.not1097 = icmp eq ptr %2, null                ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  br i1 %.not1097, label %bb.ab, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.w = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 1024, ptr noundef nonnull @.str.10, ptr noundef nonnull %2) #15 ; 0 uses
  %i.x = call i32 @mkdir(ptr noundef nonnull %i.a, i32 noundef 448) #15
  %.not1098 = icmp eq i32 %i.x, 0
  br i1 %.not1098, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.y = tail call ptr @__errno_location() #16
  %i.z = load i32, ptr %i.y, align 4, !tbaa !4
  %.not1099 = icmp eq i32 %i.z, 17
  br i1 %.not1099, label %bb.p, label %.thread1644

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.aa = call ptr @cli_malloc(i64 noundef 8200) #15 ; 11 uses
  %.not1100 = icmp eq ptr %i.aa, null
  br i1 %.not1100, label %.thread1644, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ab = call ptr @cli_malloc(i64 noundef 8200) #15
  %i.ac = freeze ptr %i.ab                        ; 9 uses
  %.not1101 = icmp eq ptr %i.ac, null
  br i1 %.not1101, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @free(ptr noundef nonnull %i.aa) #15
  br label %.thread1644

bb.s:                                             ; preds = %bb.q
  %i.ad = call ptr @cli_malloc(i64 noundef 8200) #15 ; 7 uses
  %.not1102 = icmp eq ptr %i.ad, null
  br i1 %.not1102, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef nonnull %i.aa) #15
  call void @free(ptr noundef nonnull %i.ac) #15
  br label %.thread1644

bb.u:                                             ; preds = %bb.s
  %i.ae = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 1024, ptr noundef nonnull @.str.11, ptr noundef nonnull %2) #15 ; 0 uses
  %i.af = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.a, i32 noundef 577, i32 noundef 384) #15 ; 2 uses
  store i32 %i.af, ptr %i.aa, align 4, !tbaa !39
  %.not1103 = icmp eq i32 %i.af, 0
  br i1 %.not1103, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.6, ptr noundef nonnull %i.a) #15
  call void @free(ptr noundef nonnull %i.aa) #15
  call void @free(ptr noundef nonnull %i.ac) #15
  call void @free(ptr noundef nonnull %i.ad) #15
  br label %.thread1644

bb.w:                                             ; preds = %bb.u
  %i.ag = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 1024, ptr noundef nonnull @.str.12, ptr noundef nonnull %2) #15 ; 0 uses
  %i.ah = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.a, i32 noundef 577, i32 noundef 384) #15 ; 2 uses
  store i32 %i.ah, ptr %i.ac, align 4, !tbaa !39
  %.not1104 = icmp eq i32 %i.ah, 0
  br i1 %.not1104, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.6, ptr noundef nonnull %i.a) #15
  %i.ai = load i32, ptr %i.aa, align 4, !tbaa !39
  %i.aj = call i32 @close(i32 noundef %i.ai) #15  ; 0 uses
  call void @free(ptr noundef nonnull %i.aa) #15
  call void @free(ptr noundef nonnull %i.ac) #15
  call void @free(ptr noundef nonnull %i.ad) #15
  br label %.thread1644

bb.y:                                             ; preds = %bb.w
  %i.ak = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 1024, ptr noundef nonnull @.str.13, ptr noundef nonnull %2) #15 ; 0 uses
  %i.al = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.a, i32 noundef 577, i32 noundef 384) #15 ; 2 uses
  store i32 %i.al, ptr %i.ad, align 4, !tbaa !39
  %.not1105 = icmp eq i32 %i.al, 0
  br i1 %.not1105, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.6, ptr noundef nonnull %i.a) #15
  %i.am = load i32, ptr %i.aa, align 4, !tbaa !39
  %i.an = call i32 @close(i32 noundef %i.am) #15  ; 0 uses
  %i.ao = load i32, ptr %i.ac, align 4, !tbaa !39
  %i.ap = call i32 @close(i32 noundef %i.ao) #15  ; 0 uses
  call void @free(ptr noundef nonnull %i.aa) #15
  call void @free(ptr noundef nonnull %i.ac) #15
  call void @free(ptr noundef nonnull %i.ad) #15
  br label %.thread1644

bb.aa:                                            ; preds = %bb.y
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 8196
  store i32 0, ptr %i.aq, align 4, !tbaa !41
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 8196
  store i32 0, ptr %i.ar, align 4, !tbaa !41
  %i.as = getelementptr inbounds nuw i8, ptr %i.ad, i64 8196
  store i32 0, ptr %i.as, align 4, !tbaa !41
  br label %bb.ab

bb.ab:                                            ; preds = %bb.m, %bb.aa
  %.0999 = phi ptr [ %i.ad, %bb.aa ], [ null, %bb.m ] ; 32 uses
  %.0996 = phi ptr [ %i.ac, %bb.aa ], [ null, %bb.m ] ; 56 uses
  %.0994 = phi ptr [ %i.aa, %bb.aa ], [ null, %bb.m ] ; 57 uses
  br i1 %i.k, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.at = call ptr @encoding_norm_readline(ptr noundef nonnull %6, ptr noundef %.0949, ptr noundef %1, i64 noundef 8192) #15
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.au = call ptr @cli_readline(ptr noundef %.0949, ptr noundef %1, i32 noundef 8192)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.0970 = phi ptr [ %i.at, %bb.ac ], [ %i.au, %bb.ad ] ; 2 uses
  %.not11061842 = icmp eq ptr %.0970, null
  br i1 %.not11061842, label %._crit_edge1864, label %.lr.ph1863

.lr.ph1863:                                       ; preds = %bb.ae
  %.not.i1531 = icmp eq ptr %.0994, null          ; 42 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0994, i64 8196 ; 87 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0994, i64 4 ; 81 uses
  %.not12.i1532 = icmp eq ptr %.0996, null        ; 41 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0996, i64 8196 ; 85 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0996, i64 4 ; 77 uses
  %.not.i1538 = icmp eq ptr %.0999, null          ; 16 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0999, i64 8196 ; 56 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0999, i64 4 ; 48 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %.not1132 = icmp eq ptr %3, null                ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 10 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 13 uses
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph1863, %bb.vt
  %.09011861 = phi i32 [ undef, %.lr.ph1863 ], [ %.1902.lcssa, %bb.vt ] ; 3 uses
  %.09051860 = phi i32 [ undef, %.lr.ph1863 ], [ %.1906.lcssa, %bb.vt ] ; 3 uses
  %.09111859 = phi i32 [ 0, %.lr.ph1863 ], [ %.1912.lcssa, %bb.vt ] ; 3 uses
  %.09171858 = phi i32 [ undef, %.lr.ph1863 ], [ %.1918.lcssa, %bb.vt ] ; 3 uses
  %.09201857 = phi i32 [ 0, %.lr.ph1863 ], [ %.1921.lcssa, %bb.vt ] ; 3 uses
  %.09281856 = phi i32 [ undef, %.lr.ph1863 ], [ %.1929.lcssa, %bb.vt ] ; 3 uses
  %.09311855 = phi i32 [ 0, %.lr.ph1863 ], [ %.1932.lcssa, %bb.vt ] ; 3 uses
  %.09391854 = phi i32 [ undef, %.lr.ph1863 ], [ %.1940.lcssa, %bb.vt ] ; 3 uses
  %.09421853 = phi i32 [ 0, %.lr.ph1863 ], [ %.1943.lcssa, %bb.vt ] ; 3 uses
  %.09501852 = phi i32 [ 1, %.lr.ph1863 ], [ %.1951.lcssa, %bb.vt ] ; 3 uses
  %.09611851 = phi i32 [ 0, %.lr.ph1863 ], [ %.1962.lcssa, %bb.vt ] ; 3 uses
  %.19711850 = phi ptr [ %.0970, %.lr.ph1863 ], [ %.2972, %bb.vt ] ; 5 uses
  %.09831849 = phi i32 [ undef, %.lr.ph1863 ], [ %.1984.lcssa, %bb.vt ] ; 3 uses
  %.09881848 = phi i64 [ undef, %.lr.ph1863 ], [ %.1989.lcssa, %bb.vt ] ; 3 uses
  %.010011847 = phi ptr [ undef, %.lr.ph1863 ], [ %.11002.lcssa, %bb.vt ] ; 3 uses
  %.010051846 = phi i32 [ 0, %.lr.ph1863 ], [ %.11006.lcssa, %bb.vt ] ; 3 uses
  %.010151845 = phi ptr [ null, %.lr.ph1863 ], [ %.21017.lcssa, %bb.vt ]
  %.010261844 = phi ptr [ null, %.lr.ph1863 ], [ %.11027.lcssa, %bb.vt ] ; 3 uses
  %.010321843 = phi i64 [ 0, %.lr.ph1863 ], [ %.11033.lcssa, %bb.vt ] ; 3 uses
  %.not1109 = icmp eq ptr %.010151845, null
  %spec.select = select i1 %.not1109, ptr null, ptr %.19711850 ; 3 uses
  %i.be = load i8, ptr %.19711850, align 1, !tbaa !15 ; 2 uses
  %.not11101777 = icmp eq i8 %i.be, 0
  br i1 %.not11101777, label %._crit_edge1822, label %.lr.ph

.lr.ph:                                           ; preds = %bb.af
  %i.bf = tail call ptr @__ctype_b_loc() #16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !18
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph, %bb.ah
  %i.bh = phi i8 [ %i.be, %.lr.ph ], [ %i.bn, %bb.ah ] ; 2 uses
  %.29751778 = phi ptr [ %.19711850, %.lr.ph ], [ %i.bm, %bb.ah ] ; 2 uses
  %i.bi = zext i8 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %i.bi
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !20
  %i.bl = and i16 %i.bk, 8192
  %.not1111 = icmp eq i16 %i.bl, 0
  br i1 %.not1111, label %.lr.ph1821, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bm = getelementptr inbounds nuw i8, ptr %.29751778, i64 1 ; 3 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !15  ; 2 uses
  %.not1110 = icmp eq i8 %i.bn, 0
  br i1 %.not1110, label %._crit_edge1822, label %bb.ag, !llvm.loop !42

.lr.ph1821:                                       ; preds = %bb.ag, %.backedge
  %.pre19151917 = phi i8 [ %i.bp, %.backedge ], [ %i.bh, %bb.ag ] ; 46 uses
  %.19021820 = phi i32 [ %.1902.be, %.backedge ], [ %.09011861, %bb.ag ] ; 65 uses
  %.19061819 = phi i32 [ %.1906.be, %.backedge ], [ %.09051860, %bb.ag ] ; 84 uses
  %.19121818 = phi i32 [ %.1912.be, %.backedge ], [ %.09111859, %bb.ag ] ; 56 uses
  %.19181817 = phi i32 [ %.1918.be, %.backedge ], [ %.09171858, %bb.ag ] ; 60 uses
  %.19211815 = phi i32 [ %.1921.be, %.backedge ], [ %.09201857, %bb.ag ] ; 82 uses
  %.19291814 = phi i32 [ %.1929.be, %.backedge ], [ %.09281856, %bb.ag ] ; 61 uses
  %.19321813 = phi i32 [ %.1932.be, %.backedge ], [ %.09311855, %bb.ag ] ; 126 uses
  %.19401812 = phi i32 [ %.1940.be, %.backedge ], [ %.09391854, %bb.ag ] ; 61 uses
  %.19431811 = phi i32 [ %.1943.be, %.backedge ], [ %.09421853, %bb.ag ] ; 103 uses
  %.19511810 = phi i32 [ %.1951.be, %.backedge ], [ %.09501852, %bb.ag ] ; 4 uses
  %.19621809 = phi i32 [ %.1962.be, %.backedge ], [ %.09611851, %bb.ag ] ; 65 uses
  %.39761807 = phi ptr [ %.3976.be, %.backedge ], [ %.29751778, %bb.ag ] ; 112 uses
  %.19841806 = phi i32 [ %.1984.be, %.backedge ], [ %.09831849, %bb.ag ] ; 78 uses
  %.19891805 = phi i64 [ %.1989.be, %.backedge ], [ %.09881848, %bb.ag ] ; 70 uses
  %.110021804 = phi ptr [ %.11002.be, %.backedge ], [ %.010011847, %bb.ag ] ; 97 uses
  %.110061803 = phi i32 [ %.11006.be, %.backedge ], [ %.010051846, %bb.ag ] ; 117 uses
  %.210171802 = phi ptr [ %.21017.be, %.backedge ], [ %spec.select, %bb.ag ] ; 78 uses
  %.110241801 = phi ptr [ %.11024.be, %.backedge ], [ null, %bb.ag ] ; 61 uses
  %.110271800 = phi ptr [ %.11027.be, %.backedge ], [ %.010261844, %bb.ag ] ; 119 uses
  %.110331799 = phi i64 [ %.11033.be, %.backedge ], [ %.010321843, %bb.ag ] ; 66 uses
  %.not1114 = icmp eq i32 %.19121818, 0           ; 2 uses
  %i.bo = icmp eq i8 %.pre19151917, 10
  %or.cond1209 = and i1 %.not1114, %i.bo
  br i1 %or.cond1209, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph1821
  store i8 32, ptr %.39761807, align 1, !tbaa !15
  br label %.backedge

.backedge:                                        ; preds = %bb.ox, %bb.al, %bb.am, %html_output_c.exit1348, %.critedge1220, %bb.qy, %html_output_c.exit1498, %bb.vn, %bb.aq, %bb.as, %html_output_c.exit1245, %bb.bo, %html_tag_contents_append.exit, %html_output_c.exit1259, %bb.dc, %bb.db, %bb.cg, %bb.dl, %bb.ei, %bb.du, %html_output_c.exit1272, %html_output_c.exit1292, %bb.mn, %bb.oh, %html_output_c.exit1441, %html_output_c.exit1456, %bb.qg, %bb.pa, %html_output_c.exit1485, %bb.qo, %bb.ap, %bb.bm, %bb.er, %bb.eq, %html_output_c.exit1297, %bb.mo, %bb.qx, %bb.tw, %bb.tx, %html_output_c.exit1572, %html_output_c.exit1575, %html_output_flush.exit, %bb.uv, %bb.ao, %bb.aw, %bb.ay, %bb.mu, %bb.mw, %bb.qk, %bb.qm, %bb.ra, %html_output_flush.exit.i1488, %bb.uz, %bb.vb, %bb.vf, %bb.vg, %bb.vi, %bb.vc, %html_output_c.exit1446, %bb.ai, %bb.ak
  %.11033.be = phi i64 [ %.110331799, %bb.ai ], [ %.110331799, %bb.ak ], [ %.110331799, %bb.al ], [ %.110331799, %bb.am ], [ %.110331799, %html_output_flush.exit.i1488 ], [ %.110331799, %bb.vn ], [ %.110331799, %bb.aq ], [ %.110331799, %bb.ao ], [ %.110331799, %bb.as ], [ %.110331799, %bb.vf ], [ %.110331799, %html_tag_contents_append.exit ], [ %.110331799, %bb.ap ], [ %.110331799, %bb.bo ], [ %.110331799, %html_output_c.exit1245 ], [ %.110331799, %bb.cg ], [ %.110331799, %html_output_c.exit1259 ], [ %.110331799, %bb.dc ], [ %.110331799, %bb.db ], [ %.110331799, %html_output_c.exit1272 ], [ %.110331799, %bb.dl ], [ %.110331799, %bb.du ], [ %.110331799, %bb.ei ], [ %.110331799, %html_output_c.exit1292 ], [ %.110331799, %bb.bm ], [ %.110331799, %html_output_c.exit1297 ], [ %.110331799, %bb.eq ], [ %.110331799, %html_output_c.exit1348 ], [ %.110331799, %.critedge1220 ], [ %.110331799, %bb.mn ], [ %.110331799, %bb.er ], [ %.110331799, %bb.ay ], [ 0, %html_output_c.exit1441 ], [ %i.avx, %bb.oh ], [ %.110331799, %bb.mo ], [ %.110331799, %bb.pa ], [ %.110331799, %html_output_c.exit1456 ], [ %.110331799, %bb.qg ], [ %.110331799, %bb.mw ], [ %.110331799, %bb.qo ], [ %.110331799, %html_output_c.exit1485 ], [ %.110331799, %bb.vc ], [ %.110331799, %bb.qy ], [ %.110331799, %bb.qm ], [ %.110331799, %html_output_c.exit1498 ], [ %.110331799, %bb.tw ], [ %.110331799, %bb.qx ], [ %.110331799, %bb.uv ], [ %.110331799, %html_output_c.exit1575 ], [ %.110331799, %html_output_c.exit1572 ], [ %.110331799, %bb.tx ], [ %.110331799, %html_output_flush.exit ], [ %.110331799, %bb.vb ], [ %.110331799, %bb.aw ], [ %.110331799, %bb.mu ], [ %.110331799, %bb.qk ], [ %.110331799, %bb.ra ], [ %.110331799, %bb.uz ], [ %.110331799, %bb.vi ], [ %.110331799, %bb.vg ], [ 0, %html_output_c.exit1446 ], [ 0, %bb.ox ] ; 2 uses
  %.11027.be = phi ptr [ %.110271800, %bb.ai ], [ %.110271800, %bb.ak ], [ %.110271800, %bb.al ], [ %.110271800, %bb.am ], [ %.110271800, %html_output_flush.exit.i1488 ], [ %.110271800, %bb.vn ], [ %.110271800, %bb.aq ], [ %.110271800, %bb.ao ], [ %.110271800, %bb.as ], [ %.110271800, %bb.vf ], [ %.110271800, %html_tag_contents_append.exit ], [ %.110271800, %bb.ap ], [ %.110271800, %bb.bo ], [ %.110271800, %html_output_c.exit1245 ], [ %.110271800, %bb.cg ], [ %.110271800, %html_output_c.exit1259 ], [ %.110271800, %bb.dc ], [ %.110271800, %bb.db ], [ %.110271800, %html_output_c.exit1272 ], [ %.110271800, %bb.dl ], [ %.110271800, %bb.du ], [ %.110271800, %bb.ei ], [ %.110271800, %html_output_c.exit1292 ], [ %.110271800, %bb.bm ], [ %.110271800, %html_output_c.exit1297 ], [ %.110271800, %bb.eq ], [ %.110271800, %html_output_c.exit1348 ], [ %.31029, %.critedge1220 ], [ %.110271800, %bb.mn ], [ %.110271800, %bb.er ], [ %.110271800, %bb.ay ], [ %.110271800, %html_output_c.exit1441 ], [ %.110271800, %bb.oh ], [ %.110271800, %bb.mo ], [ %.110271800, %bb.pa ], [ %.110271800, %html_output_c.exit1456 ], [ %.110271800, %bb.qg ], [ %.110271800, %bb.mw ], [ %.110271800, %bb.qo ], [ %.110271800, %html_output_c.exit1485 ], [ %.110271800, %bb.vc ], [ %.110271800, %bb.qy ], [ %.110271800, %bb.qm ], [ %.110271800, %html_output_c.exit1498 ], [ %.110271800, %bb.tw ], [ %.110271800, %bb.qx ], [ %.110271800, %bb.uv ], [ %.110271800, %html_output_c.exit1575 ], [ %.110271800, %html_output_c.exit1572 ], [ %.110271800, %bb.tx ], [ %.110271800, %html_output_flush.exit ], [ %.110271800, %bb.vb ], [ %.110271800, %bb.aw ], [ %.110271800, %bb.mu ], [ %.110271800, %bb.qk ], [ %.110271800, %bb.ra ], [ %.110271800, %bb.uz ], [ %.110271800, %bb.vi ], [ %.110271800, %bb.vg ], [ %.110271800, %html_output_c.exit1446 ], [ %.110271800, %bb.ox ] ; 2 uses
  %.11024.be = phi ptr [ %.110241801, %bb.ai ], [ %.110241801, %bb.ak ], [ %.110241801, %bb.al ], [ %.110241801, %bb.am ], [ %.110241801, %html_output_flush.exit.i1488 ], [ %.110241801, %bb.vn ], [ %.110241801, %bb.aq ], [ %.110241801, %bb.ao ], [ %.110241801, %bb.as ], [ %.110241801, %bb.vf ], [ %.39761807, %html_tag_contents_append.exit ], [ %.110241801, %bb.ap ], [ %.110241801, %bb.bo ], [ %.110241801, %html_output_c.exit1245 ], [ %.110241801, %bb.cg ], [ %.110241801, %html_output_c.exit1259 ], [ %.110241801, %bb.dc ], [ %.110241801, %bb.db ], [ %.110241801, %html_output_c.exit1272 ], [ %.110241801, %bb.dl ], [ %.110241801, %bb.du ], [ %.110241801, %bb.ei ], [ %.110241801, %html_output_c.exit1292 ], [ %.110241801, %bb.bm ], [ %.110241801, %html_output_c.exit1297 ], [ %.110241801, %bb.eq ], [ %.110241801, %html_output_c.exit1348 ], [ %.110241801, %.critedge1220 ], [ %.110241801, %bb.mn ], [ %.110241801, %bb.er ], [ %.110241801, %bb.ay ], [ %.110241801, %html_output_c.exit1441 ], [ %.110241801, %bb.oh ], [ %.110241801, %bb.mo ], [ %.110241801, %bb.pa ], [ %.110241801, %html_output_c.exit1456 ], [ %.110241801, %bb.qg ], [ %.110241801, %bb.mw ], [ %.110241801, %bb.qo ], [ %.110241801, %html_output_c.exit1485 ], [ %.110241801, %bb.vc ], [ %.110241801, %bb.qy ], [ %.110241801, %bb.qm ], [ %.110241801, %html_output_c.exit1498 ], [ %.110241801, %bb.tw ], [ %.110241801, %bb.qx ], [ %.110241801, %bb.uv ], [ %.110241801, %html_output_c.exit1575 ], [ %.110241801, %html_output_c.exit1572 ], [ %.110241801, %bb.tx ], [ %.110241801, %html_output_flush.exit ], [ %.110241801, %bb.vb ], [ %.110241801, %bb.aw ], [ %.110241801, %bb.mu ], [ %.110241801, %bb.qk ], [ %.110241801, %bb.ra ], [ %.110241801, %bb.uz ], [ %.110241801, %bb.vi ], [ %.110241801, %bb.vg ], [ %.110241801, %html_output_c.exit1446 ], [ %.110241801, %bb.ox ]
  %.21017.be = phi ptr [ %.210171802, %bb.ai ], [ %.210171802, %bb.ak ], [ %.210171802, %bb.al ], [ %.210171802, %bb.am ], [ %.210171802, %html_output_flush.exit.i1488 ], [ %.210171802, %bb.vn ], [ %.210171802, %bb.aq ], [ %.210171802, %bb.ao ], [ %.210171802, %bb.as ], [ %.210171802, %bb.vf ], [ %.31018, %html_tag_contents_append.exit ], [ %.210171802, %bb.ap ], [ %.210171802, %bb.bo ], [ %.210171802, %html_output_c.exit1245 ], [ %.210171802, %bb.cg ], [ %.210171802, %html_output_c.exit1259 ], [ %.210171802, %bb.dc ], [ %.210171802, %bb.db ], [ %.210171802, %html_output_c.exit1272 ], [ %.210171802, %bb.dl ], [ %.210171802, %bb.du ], [ %.210171802, %bb.ei ], [ %.210171802, %html_output_c.exit1292 ], [ %.210171802, %bb.bm ], [ %.210171802, %html_output_c.exit1297 ], [ %.210171802, %bb.eq ], [ %.210171802, %html_output_c.exit1348 ], [ %.61021, %.critedge1220 ], [ %.210171802, %bb.mn ], [ %.210171802, %bb.er ], [ %.210171802, %bb.ay ], [ %.210171802, %html_output_c.exit1441 ], [ %.210171802, %bb.oh ], [ %.210171802, %bb.mo ], [ %.210171802, %bb.pa ], [ %.210171802, %html_output_c.exit1456 ], [ %.210171802, %bb.qg ], [ %.210171802, %bb.mw ], [ %.210171802, %bb.qo ], [ %.210171802, %html_output_c.exit1485 ], [ %.210171802, %bb.vc ], [ %.210171802, %bb.qy ], [ %.210171802, %bb.qm ], [ %.210171802, %html_output_c.exit1498 ], [ %.210171802, %bb.tw ], [ %.210171802, %bb.qx ], [ %.210171802, %bb.uv ], [ %.210171802, %html_output_c.exit1575 ], [ %.210171802, %html_output_c.exit1572 ], [ %.210171802, %bb.tx ], [ %.210171802, %html_output_flush.exit ], [ %.210171802, %bb.vb ], [ %.210171802, %bb.aw ], [ %.210171802, %bb.mu ], [ %.210171802, %bb.qk ], [ %.210171802, %bb.ra ], [ %.210171802, %bb.uz ], [ %.210171802, %bb.vi ], [ %.210171802, %bb.vg ], [ %.210171802, %html_output_c.exit1446 ], [ %.210171802, %bb.ox ] ; 2 uses
  %.11006.be = phi i32 [ %.110061803, %bb.ai ], [ %.110061803, %bb.ak ], [ %.110061803, %bb.al ], [ %.110061803, %bb.am ], [ %.110061803, %html_output_flush.exit.i1488 ], [ %.110061803, %bb.vn ], [ %.110061803, %bb.aq ], [ %.110061803, %bb.ao ], [ %.110061803, %bb.as ], [ %.110061803, %bb.vf ], [ %.110061803, %html_tag_contents_append.exit ], [ %.110061803, %bb.ap ], [ %.110061803, %bb.bo ], [ %.110061803, %html_output_c.exit1245 ], [ %.110061803, %bb.cg ], [ %.110061803, %html_output_c.exit1259 ], [ %.110061803, %bb.dc ], [ %.110061803, %bb.db ], [ %.110061803, %html_output_c.exit1272 ], [ %.110061803, %bb.dl ], [ %.110061803, %bb.du ], [ %.110061803, %bb.ei ], [ %.110061803, %html_output_c.exit1292 ], [ %.110061803, %bb.bm ], [ %.110061803, %html_output_c.exit1297 ], [ %.110061803, %bb.eq ], [ %.110061803, %html_output_c.exit1348 ], [ %.61011, %.critedge1220 ], [ %.110061803, %bb.mn ], [ %.110061803, %bb.er ], [ %.110061803, %bb.ay ], [ %.110061803, %html_output_c.exit1441 ], [ %.110061803, %bb.oh ], [ %.110061803, %bb.mo ], [ %.110061803, %bb.pa ], [ %.110061803, %html_output_c.exit1456 ], [ %.110061803, %bb.qg ], [ %.110061803, %bb.mw ], [ %.110061803, %bb.qo ], [ %.110061803, %html_output_c.exit1485 ], [ %.110061803, %bb.vc ], [ %.110061803, %bb.qy ], [ %.110061803, %bb.qm ], [ %.110061803, %html_output_c.exit1498 ], [ %.110061803, %bb.tw ], [ %.110061803, %bb.qx ], [ %.110061803, %bb.uv ], [ %.110061803, %html_output_c.exit1575 ], [ %.110061803, %html_output_c.exit1572 ], [ %.110061803, %bb.tx ], [ %.110061803, %html_output_flush.exit ], [ %.110061803, %bb.vb ], [ %.110061803, %bb.aw ], [ %.110061803, %bb.mu ], [ %.110061803, %bb.qk ], [ %.110061803, %bb.ra ], [ %.110061803, %bb.uz ], [ %.110061803, %bb.vi ], [ %.110061803, %bb.vg ], [ %.110061803, %html_output_c.exit1446 ], [ %.110061803, %bb.ox ] ; 2 uses
  %.11002.be = phi ptr [ %.110021804, %bb.ai ], [ %.110021804, %bb.ak ], [ %.110021804, %bb.al ], [ %.110021804, %bb.am ], [ %.110021804, %html_output_flush.exit.i1488 ], [ %.110021804, %bb.vn ], [ %.110021804, %bb.aq ], [ %.110021804, %bb.ao ], [ %.110021804, %bb.as ], [ %.110021804, %bb.vf ], [ %.110021804, %html_tag_contents_append.exit ], [ %.110021804, %bb.ap ], [ %.110021804, %bb.bo ], [ %.110021804, %html_output_c.exit1245 ], [ %.110021804, %bb.cg ], [ %.110021804, %html_output_c.exit1259 ], [ %.110021804, %bb.dc ], [ %.110021804, %bb.db ], [ %.110021804, %html_output_c.exit1272 ], [ %.110021804, %bb.dl ], [ %.110021804, %bb.du ], [ %.110021804, %bb.ei ], [ %.110021804, %html_output_c.exit1292 ], [ %.110021804, %bb.bm ], [ %.110021804, %html_output_c.exit1297 ], [ %.110021804, %bb.eq ], [ %.110021804, %html_output_c.exit1348 ], [ %.110021804, %.critedge1220 ], [ %.110021804, %bb.mn ], [ %.110021804, %bb.er ], [ %.110021804, %bb.ay ], [ %.110021804, %html_output_c.exit1441 ], [ %.110021804, %bb.oh ], [ %.110021804, %bb.mo ], [ %.110021804, %bb.pa ], [ %.110021804, %html_output_c.exit1456 ], [ %.110021804, %bb.qg ], [ %.110021804, %bb.mw ], [ %.110021804, %bb.qo ], [ %.110021804, %html_output_c.exit1485 ], [ null, %bb.vc ], [ %.110021804, %bb.qy ], [ %.110021804, %bb.qm ], [ %.110021804, %html_output_c.exit1498 ], [ %.110021804, %bb.tw ], [ %.110021804, %bb.qx ], [ null, %bb.uv ], [ %.110021804, %html_output_c.exit1575 ], [ %i.bpk, %html_output_c.exit1572 ], [ null, %bb.tx ], [ %.110021804, %html_output_flush.exit ], [ %.110021804, %bb.vb ], [ %.110021804, %bb.aw ], [ %.110021804, %bb.mu ], [ %.110021804, %bb.qk ], [ %.110021804, %bb.ra ], [ null, %bb.uz ], [ %.110021804, %bb.vi ], [ null, %bb.vg ], [ %.110021804, %html_output_c.exit1446 ], [ %.110021804, %bb.ox ] ; 2 uses
  %.1989.be = phi i64 [ %.19891805, %bb.ai ], [ %.19891805, %bb.ak ], [ %.19891805, %bb.al ], [ %.19891805, %bb.am ], [ 12, %html_output_flush.exit.i1488 ], [ %i.bvm, %bb.vn ], [ %.19891805, %bb.aq ], [ %i.bs, %bb.ao ], [ %.19891805, %bb.as ], [ 1, %bb.vf ], [ %.19891805, %html_tag_contents_append.exit ], [ %.19891805, %bb.ap ], [ %.19891805, %bb.bo ], [ %.19891805, %html_output_c.exit1245 ], [ %.19891805, %bb.cg ], [ %.19891805, %html_output_c.exit1259 ], [ %.19891805, %bb.dc ], [ %.19891805, %bb.db ], [ %.19891805, %html_output_c.exit1272 ], [ %.19891805, %bb.dl ], [ %.19891805, %bb.du ], [ %.19891805, %bb.ei ], [ %.19891805, %html_output_c.exit1292 ], [ %.19891805, %bb.bm ], [ %.19891805, %html_output_c.exit1297 ], [ %.19891805, %bb.eq ], [ %.19891805, %html_output_c.exit1348 ], [ %.19891805, %.critedge1220 ], [ %.19891805, %bb.mn ], [ %.19891805, %bb.er ], [ %.19891805, %bb.ay ], [ %.19891805, %html_output_c.exit1441 ], [ %.19891805, %bb.oh ], [ %.19891805, %bb.mo ], [ %.19891805, %bb.pa ], [ %.19891805, %html_output_c.exit1456 ], [ %.19891805, %bb.qg ], [ %.19891805, %bb.mw ], [ %.19891805, %bb.qo ], [ %.19891805, %html_output_c.exit1485 ], [ 1, %bb.vc ], [ %i.bgs, %bb.qy ], [ %.19891805, %bb.qm ], [ %i.bnq, %html_output_c.exit1498 ], [ %.19891805, %bb.tw ], [ %.19891805, %bb.qx ], [ %.19891805, %bb.uv ], [ %.3991, %html_output_c.exit1575 ], [ %.19891805, %html_output_c.exit1572 ], [ %.19891805, %bb.tx ], [ %.19891805, %html_output_flush.exit ], [ 2, %bb.vb ], [ %.19891805, %bb.aw ], [ %.19891805, %bb.mu ], [ %.19891805, %bb.qk ], [ 12, %bb.ra ], [ 2, %bb.uz ], [ %.19891805, %bb.vi ], [ %.19891805, %bb.vg ], [ %.19891805, %html_output_c.exit1446 ], [ %.19891805, %bb.ox ] ; 2 uses
  %.1984.be = phi i32 [ %.19841806, %bb.ai ], [ %.19841806, %bb.ak ], [ %.19841806, %bb.al ], [ %.19841806, %bb.am ], [ %.19841806, %html_output_flush.exit.i1488 ], [ %.19841806, %bb.vn ], [ %.19841806, %bb.aq ], [ %.19841806, %bb.ao ], [ %.19841806, %bb.as ], [ %.19841806, %bb.vf ], [ %.19841806, %html_tag_contents_append.exit ], [ %.19841806, %bb.ap ], [ %.19841806, %bb.bo ], [ %.19841806, %html_output_c.exit1245 ], [ %.19841806, %bb.cg ], [ %.19841806, %html_output_c.exit1259 ], [ %.19841806, %bb.dc ], [ %.19841806, %bb.db ], [ 2, %html_output_c.exit1272 ], [ %.19841806, %bb.dl ], [ %.19841806, %bb.du ], [ %.19841806, %bb.ei ], [ 2, %html_output_c.exit1292 ], [ %.19841806, %bb.bm ], [ %.2985, %html_output_c.exit1297 ], [ %.19841806, %bb.eq ], [ %.19841806, %html_output_c.exit1348 ], [ %.19841806, %.critedge1220 ], [ %.19841806, %bb.mn ], [ %.19841806, %bb.er ], [ %.19841806, %bb.ay ], [ %.19841806, %html_output_c.exit1441 ], [ %.19841806, %bb.oh ], [ %.19841806, %bb.mo ], [ %.19841806, %bb.pa ], [ %.19841806, %html_output_c.exit1456 ], [ %.19841806, %bb.qg ], [ %.19841806, %bb.mw ], [ %.19841806, %bb.qo ], [ %.19841806, %html_output_c.exit1485 ], [ %.19841806, %bb.vc ], [ %.19841806, %bb.qy ], [ %.19841806, %bb.qm ], [ %.19841806, %html_output_c.exit1498 ], [ %.3986, %bb.tw ], [ %.19841806, %bb.qx ], [ 2, %bb.uv ], [ %.19841806, %html_output_c.exit1575 ], [ %.19841806, %html_output_c.exit1572 ], [ %.19841806, %bb.tx ], [ 2, %html_output_flush.exit ], [ %.19841806, %bb.vb ], [ %.19841806, %bb.aw ], [ %.19841806, %bb.mu ], [ %.19841806, %bb.qk ], [ %.19841806, %bb.ra ], [ %.19841806, %bb.uz ], [ %.19841806, %bb.vi ], [ %.19841806, %bb.vg ], [ %.19841806, %html_output_c.exit1446 ], [ %.19841806, %bb.ox ] ; 2 uses
  %.3976.be = phi ptr [ %.39761807, %bb.ai ], [ %i.br, %bb.ak ], [ %.39761807, %bb.al ], [ %.39761807, %bb.am ], [ %.39761807, %html_output_flush.exit.i1488 ], [ %i.bwf, %bb.vn ], [ %i.ca, %bb.aq ], [ %i.bt, %bb.ao ], [ %i.ch, %bb.as ], [ %.39761807, %bb.vf ], [ %i.er, %html_tag_contents_append.exit ], [ %.39761807, %bb.ap ], [ %i.ez, %bb.bo ], [ %i.gj, %html_output_c.exit1245 ], [ %i.hf, %bb.cg ], [ %i.if, %html_output_c.exit1259 ], [ %.39761807, %bb.dc ], [ %i.kh, %bb.db ], [ %i.ld, %html_output_c.exit1272 ], [ %i.lk, %bb.dl ], [ %i.mh, %bb.du ], [ %i.og, %bb.ei ], [ %i.oy, %html_output_c.exit1292 ], [ %.39761807, %bb.bm ], [ %.4977, %html_output_c.exit1297 ], [ %.39761807, %bb.eq ], [ %i.aae, %html_output_c.exit1348 ], [ %.39761807, %.critedge1220 ], [ %i.aqq, %bb.mn ], [ %.39761807, %bb.er ], [ %.39761807, %bb.ay ], [ %i.avn, %html_output_c.exit1441 ], [ %i.avw, %bb.oh ], [ %.39761807, %bb.mo ], [ %i.axy, %bb.pa ], [ %i.bbp, %html_output_c.exit1456 ], [ %i.bci, %bb.qg ], [ %.39761807, %bb.mw ], [ %i.bdc, %bb.qo ], [ %i.ben, %html_output_c.exit1485 ], [ %.39761807, %bb.vc ], [ %i.bgt, %bb.qy ], [ %.39761807, %bb.qm ], [ %i.bnp, %html_output_c.exit1498 ], [ %.6979, %bb.tw ], [ %.39761807, %bb.qx ], [ %.39761807, %bb.uv ], [ %.7980, %html_output_c.exit1575 ], [ %.39761807, %html_output_c.exit1572 ], [ %.39761807, %bb.tx ], [ %.39761807, %html_output_flush.exit ], [ %.39761807, %bb.vb ], [ %.39761807, %bb.aw ], [ %.39761807, %bb.mu ], [ %.39761807, %bb.qk ], [ %.39761807, %bb.ra ], [ %.39761807, %bb.uz ], [ %.39761807, %bb.vi ], [ %.39761807, %bb.vg ], [ %.39761807, %html_output_c.exit1446 ], [ %.39761807, %bb.ox ] ; 3 uses
  %.1962.be = phi i32 [ %.19621809, %bb.ai ], [ %.19621809, %bb.ak ], [ %.19621809, %bb.al ], [ %.19621809, %bb.am ], [ 1, %html_output_flush.exit.i1488 ], [ %.19621809, %bb.vn ], [ %.19621809, %bb.aq ], [ %.19621809, %bb.ao ], [ %.19621809, %bb.as ], [ %.19621809, %bb.vf ], [ 7, %html_tag_contents_append.exit ], [ 0, %bb.ap ], [ 1, %bb.bo ], [ %.19621809, %html_output_c.exit1245 ], [ 0, %bb.cg ], [ 11, %html_output_c.exit1259 ], [ 8, %bb.dc ], [ %.19621809, %bb.db ], [ 9, %html_output_c.exit1272 ], [ 10, %bb.dl ], [ 0, %bb.du ], [ %.19621809, %bb.ei ], [ 9, %html_output_c.exit1292 ], [ 1, %bb.bm ], [ %.2963, %html_output_c.exit1297 ], [ 0, %bb.eq ], [ %spec.select1213, %html_output_c.exit1348 ], [ %.5966, %.critedge1220 ], [ %.19621809, %bb.mn ], [ 0, %bb.er ], [ 0, %bb.ay ], [ 0, %html_output_c.exit1441 ], [ %.19621809, %bb.oh ], [ %.19621809, %bb.mo ], [ %.19621809, %bb.pa ], [ 0, %html_output_c.exit1456 ], [ %.19621809, %bb.qg ], [ 0, %bb.mw ], [ 0, %bb.qo ], [ %.19621809, %html_output_c.exit1485 ], [ %.19621809, %bb.vc ], [ 0, %bb.qy ], [ 0, %bb.qm ], [ %.19621809, %html_output_c.exit1498 ], [ %.6967, %bb.tw ], [ 0, %bb.qx ], [ 8, %bb.uv ], [ %.7968, %html_output_c.exit1575 ], [ %.19621809, %html_output_c.exit1572 ], [ %.19621809, %bb.tx ], [ 8, %html_output_flush.exit ], [ %.19621809, %bb.vb ], [ 0, %bb.aw ], [ 0, %bb.mu ], [ 0, %bb.qk ], [ 1, %bb.ra ], [ %.19621809, %bb.uz ], [ %.19621809, %bb.vi ], [ %.19621809, %bb.vg ], [ 0, %html_output_c.exit1446 ], [ 0, %bb.ox ] ; 2 uses
  %.1951.be = phi i32 [ %.19511810, %bb.ai ], [ %.19511810, %bb.ak ], [ %.19511810, %bb.al ], [ 17, %bb.am ], [ 13, %html_output_flush.exit.i1488 ], [ %spec.select1229, %bb.vn ], [ 5, %bb.aq ], [ %spec.select1211, %bb.ao ], [ 6, %bb.as ], [ 20, %bb.vf ], [ 5, %html_tag_contents_append.exit ], [ %.19621809, %bb.ap ], [ 3, %bb.bo ], [ 1, %html_output_c.exit1245 ], [ 2, %bb.cg ], [ 5, %html_output_c.exit1259 ], [ 5, %bb.dc ], [ 7, %bb.db ], [ 5, %html_output_c.exit1272 ], [ 5, %bb.dl ], [ 11, %bb.du ], [ 8, %bb.ei ], [ 5, %html_output_c.exit1292 ], [ 6, %bb.bm ], [ %.2952, %html_output_c.exit1297 ], [ 8, %bb.eq ], [ %spec.select1214, %html_output_c.exit1348 ], [ 5, %.critedge1220 ], [ 12, %bb.mn ], [ 8, %bb.er ], [ %.19621809, %bb.ay ], [ %.19621809, %html_output_c.exit1441 ], [ 4, %bb.oh ], [ 4, %bb.mo ], [ 12, %bb.pa ], [ %.19621809, %html_output_c.exit1456 ], [ 12, %bb.qg ], [ %.19621809, %bb.mw ], [ 15, %bb.qo ], [ 14, %html_output_c.exit1485 ], [ 20, %bb.vc ], [ 16, %bb.qy ], [ %.19621809, %bb.qm ], [ 16, %html_output_c.exit1498 ], [ %.6956, %bb.tw ], [ 1, %bb.qx ], [ 5, %bb.uv ], [ %.7957, %html_output_c.exit1575 ], [ 20, %html_output_c.exit1572 ], [ 20, %bb.tx ], [ 5, %html_output_flush.exit ], [ 20, %bb.vb ], [ %.19621809, %bb.aw ], [ %.19621809, %bb.mu ], [ %.19621809, %bb.qk ], [ 13, %bb.ra ], [ 20, %bb.uz ], [ 20, %bb.vi ], [ 20, %bb.vg ], [ %.19621809, %html_output_c.exit1446 ], [ %.19621809, %bb.ox ] ; 2 uses
  %.1943.be = phi i32 [ %.19431811, %bb.ai ], [ %.19431811, %bb.ak ], [ %.19431811, %bb.al ], [ %.19431811, %bb.am ], [ %.19431811, %html_output_flush.exit.i1488 ], [ %.19431811, %bb.vn ], [ %.19431811, %bb.aq ], [ %.19431811, %bb.ao ], [ %.19431811, %bb.as ], [ %.19431811, %bb.vf ], [ %.19431811, %html_tag_contents_append.exit ], [ %.19431811, %bb.ap ], [ %.19431811, %bb.bo ], [ %.19431811, %html_output_c.exit1245 ], [ %.19431811, %bb.cg ], [ %.19431811, %html_output_c.exit1259 ], [ %.19431811, %bb.dc ], [ %.19431811, %bb.db ], [ %.19431811, %html_output_c.exit1272 ], [ %.19431811, %bb.dl ], [ %.19431811, %bb.du ], [ %.19431811, %bb.ei ], [ %.19431811, %html_output_c.exit1292 ], [ %.19431811, %bb.bm ], [ %.19431811, %html_output_c.exit1297 ], [ %.19431811, %bb.eq ], [ %.19431811, %html_output_c.exit1348 ], [ %.4946, %.critedge1220 ], [ %.19431811, %bb.mn ], [ %.19431811, %bb.er ], [ %.19431811, %bb.ay ], [ %.19431811, %html_output_c.exit1441 ], [ %.19431811, %bb.oh ], [ %.19431811, %bb.mo ], [ %.19431811, %bb.pa ], [ %.19431811, %html_output_c.exit1456 ], [ %.19431811, %bb.qg ], [ %.19431811, %bb.mw ], [ %.19431811, %bb.qo ], [ %.19431811, %html_output_c.exit1485 ], [ %.19431811, %bb.vc ], [ %.19431811, %bb.qy ], [ %.19431811, %bb.qm ], [ %.19431811, %html_output_c.exit1498 ], [ %.19431811, %bb.tw ], [ %.19431811, %bb.qx ], [ %.19431811, %bb.uv ], [ %.19431811, %html_output_c.exit1575 ], [ %.19431811, %html_output_c.exit1572 ], [ %.19431811, %bb.tx ], [ %.19431811, %html_output_flush.exit ], [ %.19431811, %bb.vb ], [ %.19431811, %bb.aw ], [ %.19431811, %bb.mu ], [ %.19431811, %bb.qk ], [ %.19431811, %bb.ra ], [ %.19431811, %bb.uz ], [ %.19431811, %bb.vi ], [ %.19431811, %bb.vg ], [ %.19431811, %html_output_c.exit1446 ], [ %.19431811, %bb.ox ] ; 2 uses
  %.1940.be = phi i32 [ %.19401812, %bb.ai ], [ %.19401812, %bb.ak ], [ %.19401812, %bb.al ], [ %.19401812, %bb.am ], [ %.19401812, %html_output_flush.exit.i1488 ], [ %.19401812, %bb.vn ], [ %.19401812, %bb.aq ], [ %.19401812, %bb.ao ], [ %.19401812, %bb.as ], [ %.19401812, %bb.vf ], [ %.19401812, %html_tag_contents_append.exit ], [ %.19401812, %bb.ap ], [ %.19401812, %bb.bo ], [ %.19401812, %html_output_c.exit1245 ], [ %.19401812, %bb.cg ], [ %.19401812, %html_output_c.exit1259 ], [ %.19401812, %bb.dc ], [ %.19401812, %bb.db ], [ %.19401812, %html_output_c.exit1272 ], [ %.19401812, %bb.dl ], [ %.19401812, %bb.du ], [ %.19401812, %bb.ei ], [ %.19401812, %html_output_c.exit1292 ], [ %.19401812, %bb.bm ], [ %.19401812, %html_output_c.exit1297 ], [ %.19401812, %bb.eq ], [ %.19401812, %html_output_c.exit1348 ], [ %.19401812, %.critedge1220 ], [ %.19401812, %bb.mn ], [ %.19401812, %bb.er ], [ %.19401812, %bb.ay ], [ %.19401812, %html_output_c.exit1441 ], [ %.19401812, %bb.oh ], [ %.19401812, %bb.mo ], [ %.19401812, %bb.pa ], [ %.19401812, %html_output_c.exit1456 ], [ %.19401812, %bb.qg ], [ %.19401812, %bb.mw ], [ %.19401812, %bb.qo ], [ %.19401812, %html_output_c.exit1485 ], [ %.19401812, %bb.vc ], [ 0, %bb.qy ], [ %.19401812, %bb.qm ], [ %i.bno, %html_output_c.exit1498 ], [ %.19401812, %bb.tw ], [ %.19401812, %bb.qx ], [ %.19401812, %bb.uv ], [ %.19401812, %html_output_c.exit1575 ], [ %.19401812, %html_output_c.exit1572 ], [ %.19401812, %bb.tx ], [ %.19401812, %html_output_flush.exit ], [ %.19401812, %bb.vb ], [ %.19401812, %bb.aw ], [ %.19401812, %bb.mu ], [ %.19401812, %bb.qk ], [ %.19401812, %bb.ra ], [ %.19401812, %bb.uz ], [ %.19401812, %bb.vi ], [ %.19401812, %bb.vg ], [ %.19401812, %html_output_c.exit1446 ], [ %.19401812, %bb.ox ] ; 2 uses
  %.1932.be = phi i32 [ %.19321813, %bb.ai ], [ %.19321813, %bb.ak ], [ %.19321813, %bb.al ], [ %.19321813, %bb.am ], [ %.19321813, %html_output_flush.exit.i1488 ], [ %.19321813, %bb.vn ], [ %.19321813, %bb.aq ], [ %.19321813, %bb.ao ], [ %.19321813, %bb.as ], [ %.19321813, %bb.vf ], [ %.19321813, %html_tag_contents_append.exit ], [ %.19321813, %bb.ap ], [ %.19321813, %bb.bo ], [ %.19321813, %html_output_c.exit1245 ], [ %.19321813, %bb.cg ], [ %.19321813, %html_output_c.exit1259 ], [ %.19321813, %bb.dc ], [ %.19321813, %bb.db ], [ 0, %html_output_c.exit1272 ], [ %.19321813, %bb.dl ], [ %.19321813, %bb.du ], [ %.19321813, %bb.ei ], [ 0, %html_output_c.exit1292 ], [ %.19321813, %bb.bm ], [ %.10, %html_output_c.exit1297 ], [ %.19321813, %bb.eq ], [ %.19321813, %html_output_c.exit1348 ], [ %.19321813, %.critedge1220 ], [ %.19321813, %bb.mn ], [ %.19321813, %bb.er ], [ %.19321813, %bb.ay ], [ %.18, %html_output_c.exit1441 ], [ %.19321813, %bb.oh ], [ %.19321813, %bb.mo ], [ %.19321813, %bb.pa ], [ %.22, %html_output_c.exit1456 ], [ %.19321813, %bb.qg ], [ %.11, %bb.mw ], [ %.19321813, %bb.qo ], [ %.19321813, %html_output_c.exit1485 ], [ %.19321813, %bb.vc ], [ %.19321813, %bb.qy ], [ %.19321813, %bb.qm ], [ %.19321813, %html_output_c.exit1498 ], [ %.27, %bb.tw ], [ %.19321813, %bb.qx ], [ %.19321813, %bb.uv ], [ %.19321813, %html_output_c.exit1575 ], [ %.19321813, %html_output_c.exit1572 ], [ %.19321813, %bb.tx ], [ %.19321813, %html_output_flush.exit ], [ %.19321813, %bb.vb ], [ %.19321813, %bb.aw ], [ %.11, %bb.mu ], [ %.19321813, %bb.qk ], [ %.19321813, %bb.ra ], [ %.19321813, %bb.uz ], [ %.19321813, %bb.vi ], [ %.19321813, %bb.vg ], [ %.19, %html_output_c.exit1446 ], [ %.21, %bb.ox ] ; 2 uses
  %.1929.be = phi i32 [ %.19291814, %bb.ai ], [ %.19291814, %bb.ak ], [ %.19291814, %bb.al ], [ %.19291814, %bb.am ], [ %.19291814, %html_output_flush.exit.i1488 ], [ %.19291814, %bb.vn ], [ %.19291814, %bb.aq ], [ %.19291814, %bb.ao ], [ %.19291814, %bb.as ], [ %.19291814, %bb.vf ], [ %.19291814, %html_tag_contents_append.exit ], [ %.19291814, %bb.ap ], [ %.19291814, %bb.bo ], [ %.19291814, %html_output_c.exit1245 ], [ %.19291814, %bb.cg ], [ %.19291814, %html_output_c.exit1259 ], [ %.19291814, %bb.dc ], [ %.19291814, %bb.db ], [ %.19291814, %html_output_c.exit1272 ], [ %.19291814, %bb.dl ], [ %.19291814, %bb.du ], [ %.19291814, %bb.ei ], [ %.19291814, %html_output_c.exit1292 ], [ %.19291814, %bb.bm ], [ %.19291814, %html_output_c.exit1297 ], [ %.19291814, %bb.eq ], [ %.19291814, %html_output_c.exit1348 ], [ %.19291814, %.critedge1220 ], [ 0, %bb.mn ], [ %.19291814, %bb.er ], [ %.19291814, %bb.ay ], [ %.19291814, %html_output_c.exit1441 ], [ %.19291814, %bb.oh ], [ %.19291814, %bb.mo ], [ 1, %bb.pa ], [ %.19291814, %html_output_c.exit1456 ], [ %.19291814, %bb.qg ], [ %.19291814, %bb.mw ], [ %.19291814, %bb.qo ], [ %.19291814, %html_output_c.exit1485 ], [ %.19291814, %bb.vc ], [ %.19291814, %bb.qy ], [ %.19291814, %bb.qm ], [ %.19291814, %html_output_c.exit1498 ], [ %.19291814, %bb.tw ], [ %.19291814, %bb.qx ], [ %.19291814, %bb.uv ], [ %.19291814, %html_output_c.exit1575 ], [ %.19291814, %html_output_c.exit1572 ], [ %.19291814, %bb.tx ], [ %.19291814, %html_output_flush.exit ], [ %.19291814, %bb.vb ], [ %.19291814, %bb.aw ], [ %.19291814, %bb.mu ], [ %.19291814, %bb.qk ], [ %.19291814, %bb.ra ], [ %.19291814, %bb.uz ], [ %.19291814, %bb.vi ], [ %.19291814, %bb.vg ], [ %.19291814, %html_output_c.exit1446 ], [ %.19291814, %bb.ox ] ; 2 uses
  %.1921.be = phi i32 [ %.19211815, %bb.ai ], [ %.19211815, %bb.ak ], [ %.19211815, %bb.al ], [ %.19211815, %bb.am ], [ %.19211815, %html_output_flush.exit.i1488 ], [ %.6926, %bb.vn ], [ %.19211815, %bb.aq ], [ %.19211815, %bb.ao ], [ %.19211815, %bb.as ], [ %.19211815, %bb.vf ], [ %.19211815, %html_tag_contents_append.exit ], [ %.19211815, %bb.ap ], [ %.19211815, %bb.bo ], [ %.19211815, %html_output_c.exit1245 ], [ %.19211815, %bb.cg ], [ %.19211815, %html_output_c.exit1259 ], [ %.19211815, %bb.dc ], [ %.19211815, %bb.db ], [ %.19211815, %html_output_c.exit1272 ], [ %.19211815, %bb.dl ], [ %.19211815, %bb.du ], [ %.19211815, %bb.ei ], [ %.19211815, %html_output_c.exit1292 ], [ %.19211815, %bb.bm ], [ %.19211815, %html_output_c.exit1297 ], [ %.19211815, %bb.eq ], [ %.19211815, %html_output_c.exit1348 ], [ %.19211815, %.critedge1220 ], [ 0, %bb.mn ], [ %.19211815, %bb.er ], [ %.19211815, %bb.ay ], [ %.19211815, %html_output_c.exit1441 ], [ %.19211815, %bb.oh ], [ %.19211815, %bb.mo ], [ 0, %bb.pa ], [ %.19211815, %html_output_c.exit1456 ], [ %.3923, %bb.qg ], [ %.19211815, %bb.mw ], [ %.19211815, %bb.qo ], [ %.19211815, %html_output_c.exit1485 ], [ %.19211815, %bb.vc ], [ %.19211815, %bb.qy ], [ %.19211815, %bb.qm ], [ %.4924, %html_output_c.exit1498 ], [ %.19211815, %bb.tw ], [ %.19211815, %bb.qx ], [ %.19211815, %bb.uv ], [ %.5925, %html_output_c.exit1575 ], [ %.19211815, %html_output_c.exit1572 ], [ %.19211815, %bb.tx ], [ %.19211815, %html_output_flush.exit ], [ %.19211815, %bb.vb ], [ %.19211815, %bb.aw ], [ %.19211815, %bb.mu ], [ %.19211815, %bb.qk ], [ %.19211815, %bb.ra ], [ %.19211815, %bb.uz ], [ %.19211815, %bb.vi ], [ %.19211815, %bb.vg ], [ %.19211815, %html_output_c.exit1446 ], [ %.19211815, %bb.ox ] ; 2 uses
  %.1918.be = phi i32 [ %.19181817, %bb.ai ], [ %.19181817, %bb.ak ], [ %.19181817, %bb.al ], [ %.19181817, %bb.am ], [ %.19181817, %html_output_flush.exit.i1488 ], [ %.19181817, %bb.vn ], [ %.19181817, %bb.aq ], [ %.19181817, %bb.ao ], [ %.19181817, %bb.as ], [ %.19181817, %bb.vf ], [ %.19181817, %html_tag_contents_append.exit ], [ %.19181817, %bb.ap ], [ %.19181817, %bb.bo ], [ %.19181817, %html_output_c.exit1245 ], [ %.19181817, %bb.cg ], [ %.19181817, %html_output_c.exit1259 ], [ %.19181817, %bb.dc ], [ %.19181817, %bb.db ], [ 0, %html_output_c.exit1272 ], [ %.19181817, %bb.dl ], [ %.19181817, %bb.du ], [ %.19181817, %bb.ei ], [ 0, %html_output_c.exit1292 ], [ %.19181817, %bb.bm ], [ %., %html_output_c.exit1297 ], [ %.19181817, %bb.eq ], [ %.19181817, %html_output_c.exit1348 ], [ %.19181817, %.critedge1220 ], [ %.19181817, %bb.mn ], [ %.19181817, %bb.er ], [ %.19181817, %bb.ay ], [ %.19181817, %html_output_c.exit1441 ], [ %.19181817, %bb.oh ], [ %.19181817, %bb.mo ], [ %.19181817, %bb.pa ], [ %.19181817, %html_output_c.exit1456 ], [ %.19181817, %bb.qg ], [ %.19181817, %bb.mw ], [ %.19181817, %bb.qo ], [ %.19181817, %html_output_c.exit1485 ], [ %.19181817, %bb.vc ], [ %.19181817, %bb.qy ], [ %.19181817, %bb.qm ], [ %.19181817, %html_output_c.exit1498 ], [ %.1226, %bb.tw ], [ %.19181817, %bb.qx ], [ 0, %bb.uv ], [ %.1228, %html_output_c.exit1575 ], [ %.19181817, %html_output_c.exit1572 ], [ %.19181817, %bb.tx ], [ 0, %html_output_flush.exit ], [ %.19181817, %bb.vb ], [ %.19181817, %bb.aw ], [ %.19181817, %bb.mu ], [ %.19181817, %bb.qk ], [ %.19181817, %bb.ra ], [ %.19181817, %bb.uz ], [ %.19181817, %bb.vi ], [ %.19181817, %bb.vg ], [ %.19181817, %html_output_c.exit1446 ], [ %.19181817, %bb.ox ] ; 2 uses
  %.1912.be = phi i32 [ 0, %bb.ai ], [ 0, %bb.ak ], [ %.19121818, %bb.al ], [ %.19121818, %bb.am ], [ %.19121818, %html_output_flush.exit.i1488 ], [ %.19121818, %bb.vn ], [ %.19121818, %bb.aq ], [ %.19121818, %bb.ao ], [ %.19121818, %bb.as ], [ %.19121818, %bb.vf ], [ %.19121818, %html_tag_contents_append.exit ], [ %.19121818, %bb.ap ], [ %.19121818, %bb.bo ], [ %.19121818, %html_output_c.exit1245 ], [ %.19121818, %bb.cg ], [ %.19121818, %html_output_c.exit1259 ], [ %.19121818, %bb.dc ], [ %.19121818, %bb.db ], [ %.19121818, %html_output_c.exit1272 ], [ %.19121818, %bb.dl ], [ %.19121818, %bb.du ], [ %.19121818, %bb.ei ], [ %.19121818, %html_output_c.exit1292 ], [ %.19121818, %bb.bm ], [ %.19121818, %html_output_c.exit1297 ], [ %.19121818, %bb.eq ], [ %.19121818, %html_output_c.exit1348 ], [ %.19121818, %.critedge1220 ], [ %.19121818, %bb.mn ], [ %.19121818, %bb.er ], [ %.19121818, %bb.ay ], [ %.19121818, %html_output_c.exit1441 ], [ %.19121818, %bb.oh ], [ %.19121818, %bb.mo ], [ %.19121818, %bb.pa ], [ %.19121818, %html_output_c.exit1456 ], [ %.19121818, %bb.qg ], [ %.19121818, %bb.mw ], [ %.19121818, %bb.qo ], [ %.19121818, %html_output_c.exit1485 ], [ %.19121818, %bb.vc ], [ %.19121818, %bb.qy ], [ %.19121818, %bb.qm ], [ %.19121818, %html_output_c.exit1498 ], [ %.19121818, %bb.tw ], [ %.19121818, %bb.qx ], [ 0, %bb.uv ], [ %.19121818, %html_output_c.exit1575 ], [ 1, %html_output_c.exit1572 ], [ 1, %bb.tx ], [ 0, %html_output_flush.exit ], [ %.19121818, %bb.vb ], [ %.19121818, %bb.aw ], [ %.19121818, %bb.mu ], [ %.19121818, %bb.qk ], [ %.19121818, %bb.ra ], [ %.19121818, %bb.uz ], [ %.19121818, %bb.vi ], [ %.19121818, %bb.vg ], [ %.19121818, %html_output_c.exit1446 ], [ %.19121818, %bb.ox ] ; 2 uses
  %.1906.be = phi i32 [ %.19061819, %bb.ai ], [ %.19061819, %bb.ak ], [ %.19061819, %bb.al ], [ %.19061819, %bb.am ], [ %.19061819, %html_output_flush.exit.i1488 ], [ %.19061819, %bb.vn ], [ %.19061819, %bb.aq ], [ %.19061819, %bb.ao ], [ %.19061819, %bb.as ], [ %.19061819, %bb.vf ], [ %.19061819, %html_tag_contents_append.exit ], [ %.19061819, %bb.ap ], [ %.19061819, %bb.bo ], [ %.19061819, %html_output_c.exit1245 ], [ %.19061819, %bb.cg ], [ %.19061819, %html_output_c.exit1259 ], [ 0, %bb.dc ], [ %.19061819, %bb.db ], [ %.19061819, %html_output_c.exit1272 ], [ %.19061819, %bb.dl ], [ %.19061819, %bb.du ], [ %.2907, %bb.ei ], [ %.19061819, %html_output_c.exit1292 ], [ %.19061819, %bb.bm ], [ %.3908, %html_output_c.exit1297 ], [ 0, %bb.eq ], [ %.19061819, %html_output_c.exit1348 ], [ %.19061819, %.critedge1220 ], [ %.19061819, %bb.mn ], [ 0, %bb.er ], [ %.19061819, %bb.ay ], [ %.19061819, %html_output_c.exit1441 ], [ %.19061819, %bb.oh ], [ %.19061819, %bb.mo ], [ %.19061819, %bb.pa ], [ %.19061819, %html_output_c.exit1456 ], [ %.19061819, %bb.qg ], [ %.19061819, %bb.mw ], [ %.19061819, %bb.qo ], [ %.19061819, %html_output_c.exit1485 ], [ %.19061819, %bb.vc ], [ %.19061819, %bb.qy ], [ %.19061819, %bb.qm ], [ %.19061819, %html_output_c.exit1498 ], [ %.4909, %bb.tw ], [ %.19061819, %bb.qx ], [ %.19061819, %bb.uv ], [ %.19061819, %html_output_c.exit1575 ], [ %.19061819, %html_output_c.exit1572 ], [ %.19061819, %bb.tx ], [ %.19061819, %html_output_flush.exit ], [ %.19061819, %bb.vb ], [ %.19061819, %bb.aw ], [ %.19061819, %bb.mu ], [ %.19061819, %bb.qk ], [ %.19061819, %bb.ra ], [ %.19061819, %bb.uz ], [ %.19061819, %bb.vi ], [ %.19061819, %bb.vg ], [ %.19061819, %html_output_c.exit1446 ], [ %.19061819, %bb.ox ] ; 2 uses
  %.1902.be = phi i32 [ %.19021820, %bb.ai ], [ %.19021820, %bb.ak ], [ %.19021820, %bb.al ], [ %.19021820, %bb.am ], [ %.19021820, %html_output_flush.exit.i1488 ], [ %.19021820, %bb.vn ], [ %.19021820, %bb.aq ], [ %.19021820, %bb.ao ], [ %.19021820, %bb.as ], [ %.19021820, %bb.vf ], [ 0, %html_tag_contents_append.exit ], [ %.19021820, %bb.ap ], [ %.19021820, %bb.bo ], [ %.19021820, %html_output_c.exit1245 ], [ 0, %bb.cg ], [ %.19021820, %html_output_c.exit1259 ], [ %.19021820, %bb.dc ], [ %.2903, %bb.db ], [ %.19021820, %html_output_c.exit1272 ], [ %.19021820, %bb.dl ], [ %.19021820, %bb.du ], [ %.19021820, %bb.ei ], [ %.19021820, %html_output_c.exit1292 ], [ %.19021820, %bb.bm ], [ %.19021820, %html_output_c.exit1297 ], [ %.19021820, %bb.eq ], [ %.19021820, %html_output_c.exit1348 ], [ %.19021820, %.critedge1220 ], [ %.19021820, %bb.mn ], [ %.19021820, %bb.er ], [ %.19021820, %bb.ay ], [ %.19021820, %html_output_c.exit1441 ], [ %.19021820, %bb.oh ], [ %.19021820, %bb.mo ], [ %.19021820, %bb.pa ], [ %.19021820, %html_output_c.exit1456 ], [ %.19021820, %bb.qg ], [ %.19021820, %bb.mw ], [ %.19021820, %bb.qo ], [ %.19021820, %html_output_c.exit1485 ], [ %.19021820, %bb.vc ], [ %.19021820, %bb.qy ], [ %.19021820, %bb.qm ], [ %.19021820, %html_output_c.exit1498 ], [ %.19021820, %bb.tw ], [ %.19021820, %bb.qx ], [ %.19021820, %bb.uv ], [ %.19021820, %html_output_c.exit1575 ], [ %.19021820, %html_output_c.exit1572 ], [ %.19021820, %bb.tx ], [ %.19021820, %html_output_flush.exit ], [ %.19021820, %bb.vb ], [ %.19021820, %bb.aw ], [ %.19021820, %bb.mu ], [ %.19021820, %bb.qk ], [ %.19021820, %bb.ra ], [ %.19021820, %bb.uz ], [ %.19021820, %bb.vi ], [ %.19021820, %bb.vg ], [ %.19021820, %html_output_c.exit1446 ], [ %.19021820, %bb.ox ] ; 2 uses
  %i.bp = load i8, ptr %.3976.be, align 1, !tbaa !15 ; 2 uses
  %.not1112 = icmp eq i8 %i.bp, 0
  br i1 %.not1112, label %._crit_edge1822, label %.lr.ph1821, !llvm.loop !43

bb.aj:                                            ; preds = %.lr.ph1821
  %i.bq = icmp eq i8 %.pre19151917, 13
  %or.cond1656 = and i1 %.not1114, %i.bq
  br i1 %or.cond1656, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.br = getelementptr inbounds nuw i8, ptr %.39761807, i64 1
  br label %.backedge

bb.al:                                            ; preds = %bb.aj
  switch i32 %.19511810, label %.backedge [
    i32 17, label %bb.am
    i32 0, label %bb.an
    i32 13, label %bb.ao
    i32 5, label %bb.ap
    i32 6, label %bb.ar
    i32 1, label %bb.az
    i32 7, label %bb.by
    i32 8, label %bb.dd
    i32 10, label %bb.ej
    i32 9, label %bb.es
    i32 2, label %bb.il
    i32 11, label %bb.ir
    i32 3, label %bb.mm
    i32 4, label %bb.mx
    i32 12, label %bb.oy
    i32 14, label %bb.qn
    i32 15, label %bb.qx
    i32 16, label %bb.qz
    i32 18, label %bb.tc
    i32 19, label %bb.tx
    i32 20, label %bb.ud
    i32 21, label %bb.uv
    i32 22, label %bb.uy
    i32 23, label %bb.vj
  ]

bb.am:                                            ; preds = %bb.al
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.14) #15
  br label %.backedge

bb.an:                                            ; preds = %bb.al
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.15) #15
  br label %.loopexit

bb.ao:                                            ; preds = %bb.al
  %i.bs = add i64 %.19891805, -1                  ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.39761807, i64 1
  %.not1203 = icmp eq i64 %i.bs, 0
  %spec.select1211 = select i1 %.not1203, i32 %.19621809, i32 13
  br label %.backedge

bb.ap:                                            ; preds = %bb.al
  %i.bu = tail call ptr @__ctype_b_loc() #16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !18
  %i.bw = zext i8 %.pre19151917 to i64
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.bv, i64 %i.bw
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !20
  %i.bz = and i16 %i.by, 8192
  %.not1202 = icmp eq i16 %i.bz, 0
  br i1 %.not1202, label %.backedge, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ca = getelementptr inbounds nuw i8, ptr %.39761807, i64 1
  br label %.backedge

bb.ar:                                            ; preds = %bb.al
  %i.cb = tail call ptr @__ctype_b_loc() #16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !18
  %i.cd = zext i8 %.pre19151917 to i64
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %i.cd
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !20
  %i.cg = and i16 %i.cf, 8192
  %.not1201 = icmp eq i16 %i.cg, 0
  br i1 %.not1201, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ch = getelementptr inbounds nuw i8, ptr %.39761807, i64 1
  br label %.backedge

bb.at:                                            ; preds = %bb.ar
  br i1 %.not.i1531, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ci = load i32, ptr %i.av, align 4, !tbaa !41 ; 2 uses
  %i.cj = icmp eq i32 %i.ci, 8192
  br i1 %i.cj, label %html_output_flush.exit.i, label %bb.av

html_output_flush.exit.i:                         ; preds = %bb.au
  %i.ck = load i32, ptr %.0994, align 4, !tbaa !39
  %i.cl = call i32 @cli_writen(i32 noundef %i.ck, ptr noundef nonnull %i.aw, i32 noundef 8192) #15 ; 0 uses
  br label %bb.av

bb.av:                                            ; preds = %html_output_flush.exit.i, %bb.au
  %i.cm = phi i32 [ 0, %html_output_flush.exit.i ], [ %i.ci, %bb.au ] ; 2 uses
  %i.cn = add nsw i32 %i.cm, 1
  store i32 %i.cn, ptr %i.av, align 4, !tbaa !41
  %i.co = sext i32 %i.cm to i64
  %i.cp = getelementptr inbounds i8, ptr %i.aw, i64 %i.co
  store i8 32, ptr %i.cp, align 1, !tbaa !15
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.at
  br i1 %.not12.i1532, label %.backedge, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.cq = load i32, ptr %i.ax, align 4, !tbaa !41 ; 2 uses
  %i.cr = icmp eq i32 %i.cq, 8192
  br i1 %i.cr, label %html_output_flush.exit13.i, label %bb.ay

html_output_flush.exit13.i:                       ; preds = %bb.ax
  %i.cs = load i32, ptr %.0996, align 4, !tbaa !39
  %i.ct = call i32 @cli_writen(i32 noundef %i.cs, ptr noundef nonnull %i.ay, i32 noundef 8192) #15 ; 0 uses
  br label %bb.ay

bb.ay:                                            ; preds = %html_output_flush.exit13.i, %bb.ax
  %i.cu = phi i32 [ 0, %html_output_flush.exit13.i ], [ %i.cq, %bb.ax ] ; 2 uses
  %i.cv = add nsw i32 %i.cu, 1
  store i32 %i.cv, ptr %i.ax, align 4, !tbaa !41
  %i.cw = sext i32 %i.cu to i64
  %i.cx = getelementptr inbounds i8, ptr %i.ay, i64 %i.cw
  store i8 32, ptr %i.cx, align 1, !tbaa !15
  br label %.backedge

bb.az:                                            ; preds = %bb.al
  %i.cy = icmp eq i8 %.pre19151917, 60
  br i1 %i.cy, label %bb.ba, label %bb.bm

bb.ba:                                            ; preds = %bb.az
  br i1 %.not.i1531, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.cz = load i32, ptr %i.av, align 4, !tbaa !41 ; 2 uses
  %i.da = icmp eq i32 %i.cz, 8192
  br i1 %i.da, label %html_output_flush.exit.i1233, label %bb.bc

html_output_flush.exit.i1233:                     ; preds = %bb.bb
  %i.db = load i32, ptr %.0994, align 4, !tbaa !39
  %i.dc = call i32 @cli_writen(i32 noundef %i.db, ptr noundef nonnull %i.aw, i32 noundef 8192) #15 ; 0 uses
  br label %bb.bc

bb.bc:                                            ; preds = %html_output_flush.exit.i1233, %bb.bb
  %i.dd = phi i32 [ 0, %html_output_flush.exit.i1233 ], [ %i.cz, %bb.bb ] ; 2 uses
  %i.de = add nsw i32 %i.dd, 1
  store i32 %i.de, ptr %i.av, align 4, !tbaa !41
  %i.df = sext i32 %i.dd to i64
  %i.dg = getelementptr inbounds i8, ptr %i.aw, i64 %i.df
  store i8 60, ptr %i.dg, align 1, !tbaa !15
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.ba
  br i1 %.not12.i1532, label %html_output_c.exit1234, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.dh = load i32, ptr %i.ax, align 4, !tbaa !41 ; 2 uses
  %i.di = icmp eq i32 %i.dh, 8192
  br i1 %i.di, label %html_output_flush.exit13.i1232, label %bb.bf

html_output_flush.exit13.i1232:                   ; preds = %bb.be
  %i.dj = load i32, ptr %.0996, align 4, !tbaa !39
  %i.dk = call i32 @cli_writen(i32 noundef %i.dj, ptr noundef nonnull %i.ay, i32 noundef 8192) #15 ; 0 uses
  br label %bb.bf

bb.bf:                                            ; preds = %html_output_flush.exit13.i1232, %bb.be
  %i.dl = phi i32 [ 0, %html_output_flush.exit13.i1232 ], [ %i.dh, %bb.be ] ; 2 uses
end_hunk_0
begin_hunk_1_@cli_html_normalise:bb.a
  br i1 %i.yt, label %bb.ij, label %bb.ik

bb.ij:                                            ; preds = %html_output_c.exit1342
  %i.yu = load i8, ptr %.39761807, align 1, !tbaa !15
  %i.yv = add nsw i32 %.19321813, 1
  %i.yw = sext i32 %.19321813 to i64
  %i.yx = getelementptr inbounds i8, ptr %i.d, i64 %i.yw
  store i8 %i.yu, ptr %i.yx, align 1, !tbaa !15
  br label %bb.ik

bb.ik:                                            ; preds = %bb.ij, %html_output_c.exit1342
  %.9 = phi i32 [ %i.yv, %bb.ij ], [ %.19321813, %html_output_c.exit1342 ]
  %i.yy = getelementptr inbounds nuw i8, ptr %.39761807, i64 1
  br label %html_output_c.exit1297

html_output_c.exit1297:                           ; preds = %bb.fu, %bb.fs, %bb.fg, %bb.fe, %bb.fo, %bb.fa, %bb.gm, %bb.gu, %html_output_c.exit1307, %bb.ik, %bb.ic, %bb.hv, %html_output_c.exit1322, %bb.hs, %bb.hk, %bb.fw
  %.2985 = phi i32 [ %.19841806, %bb.ik ], [ 2, %bb.fa ], [ %.19841806, %bb.fw ], [ 0, %html_output_c.exit1307 ], [ 0, %bb.gm ], [ %.19841806, %bb.gu ], [ 1, %html_output_c.exit1322 ], [ 1, %bb.hk ], [ %.19841806, %bb.hs ], [ 2, %bb.hv ], [ 2, %bb.ic ], [ 2, %bb.fo ], [ %.19841806, %bb.fg ], [ %.19841806, %bb.fe ], [ %.19841806, %bb.fs ], [ %.19841806, %bb.fu ]
  %.4977 = phi ptr [ %i.yy, %bb.ik ], [ %.39761807, %bb.fa ], [ %i.ro, %bb.fw ], [ %i.sg, %html_output_c.exit1307 ], [ %i.tf, %bb.gm ], [ %i.ua, %bb.gu ], [ %i.us, %html_output_c.exit1322 ], [ %i.vr, %bb.hk ], [ %i.wm, %bb.hs ], [ %.39761807, %bb.hv ], [ %i.xx, %bb.ic ], [ %.39761807, %bb.fo ], [ %.39761807, %bb.fg ], [ %.39761807, %bb.fe ], [ %.39761807, %bb.fs ], [ %.39761807, %bb.fu ] ; 2 uses
  %.2963 = phi i32 [ %.19621809, %bb.ik ], [ 8, %bb.fa ], [ 9, %bb.fw ], [ %.19621809, %html_output_c.exit1307 ], [ 8, %bb.gm ], [ %.19621809, %bb.gu ], [ %.19621809, %html_output_c.exit1322 ], [ 8, %bb.hk ], [ %.19621809, %bb.hs ], [ 8, %bb.hv ], [ 9, %bb.ic ], [ 8, %bb.fo ], [ 8, %bb.fg ], [ 8, %bb.fe ], [ 8, %bb.fs ], [ 8, %bb.fu ]
  %.2952 = phi i32 [ 9, %bb.ik ], [ 18, %bb.fa ], [ 3, %bb.fw ], [ 9, %html_output_c.exit1307 ], [ 5, %bb.gm ], [ 9, %bb.gu ], [ 9, %html_output_c.exit1322 ], [ 5, %bb.hk ], [ 9, %bb.hs ], [ 5, %bb.hv ], [ 5, %bb.ic ], [ 18, %bb.fo ], [ 18, %bb.fg ], [ 18, %bb.fe ], [ 18, %bb.fs ], [ 18, %bb.fu ]
  %.10 = phi i32 [ %.9, %bb.ik ], [ 0, %bb.fa ], [ %.19321813, %bb.fw ], [ 1, %html_output_c.exit1307 ], [ %.3934, %bb.gm ], [ %.4935, %bb.gu ], [ 1, %html_output_c.exit1322 ], [ %.6937, %bb.hk ], [ %.7938, %bb.hs ], [ %.19321813, %bb.hv ], [ %.8, %bb.ic ], [ 0, %bb.fo ], [ 0, %bb.fg ], [ 0, %bb.fe ], [ 0, %bb.fs ], [ 0, %bb.fu ]
  %.3908 = phi i32 [ %.19061819, %bb.ik ], [ %.19061819, %bb.fa ], [ %.19061819, %bb.fw ], [ %.19061819, %html_output_c.exit1307 ], [ 0, %bb.gm ], [ %.19061819, %bb.gu ], [ %.19061819, %html_output_c.exit1322 ], [ 0, %bb.hk ], [ %.19061819, %bb.hs ], [ 0, %bb.hv ], [ %.19061819, %bb.ic ], [ %.19061819, %bb.fo ], [ %.19061819, %bb.fg ], [ %.19061819, %bb.fe ], [ %.19061819, %bb.fs ], [ %.19061819, %bb.fu ]
  %i.yz = load i8, ptr %.4977, align 1, !tbaa !15
  %i.za = icmp eq i8 %i.yz, 92
  %. = zext i1 %i.za to i32
  br label %.backedge

bb.il:                                            ; preds = %bb.al
  %i.zb = tail call ptr @__ctype_tolower_loc() #16 ; 2 uses
  %i.zc = load ptr, ptr %i.zb, align 8, !tbaa !44
  %i.zd = zext i8 %.pre19151917 to i64
  %i.ze = getelementptr inbounds nuw [4 x i8], ptr %i.zc, i64 %i.zd
  %i.zf = load i32, ptr %i.ze, align 4, !tbaa !4
  %i.zg = trunc i32 %i.zf to i8
  br i1 %.not.i1531, label %html_output_c.exit1345, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.zh = load i32, ptr %i.av, align 4, !tbaa !41 ; 2 uses
  %i.zi = icmp eq i32 %i.zh, 8192
  br i1 %i.zi, label %html_output_flush.exit.i1344, label %bb.in

html_output_flush.exit.i1344:                     ; preds = %bb.im
  %i.zj = load i32, ptr %.0994, align 4, !tbaa !39
  %i.zk = call i32 @cli_writen(i32 noundef %i.zj, ptr noundef nonnull %i.aw, i32 noundef 8192) #15 ; 0 uses
  br label %bb.in

bb.in:                                            ; preds = %html_output_flush.exit.i1344, %bb.im
  %i.zl = phi i32 [ 0, %html_output_flush.exit.i1344 ], [ %i.zh, %bb.im ] ; 2 uses
  %i.zm = add nsw i32 %i.zl, 1
  store i32 %i.zm, ptr %i.av, align 4, !tbaa !41
  %i.zn = sext i32 %i.zl to i64
  %i.zo = getelementptr inbounds i8, ptr %i.aw, i64 %i.zn
  store i8 %i.zg, ptr %i.zo, align 1, !tbaa !15
  %.pre1915.pre = load i8, ptr %.39761807, align 1, !tbaa !15
  br label %html_output_c.exit1345

html_output_c.exit1345:                           ; preds = %bb.il, %bb.in
  %.pre1915 = phi i8 [ %.pre19151917, %bb.il ], [ %.pre1915.pre, %bb.in ] ; 3 uses
  %.not1180 = icmp eq i32 %.19431811, 0
  br i1 %.not1180, label %html_output_c.exit1348, label %bb.io

bb.io:                                            ; preds = %html_output_c.exit1345
  %i.zp = load ptr, ptr %i.zb, align 8, !tbaa !44
  %i.zq = zext i8 %.pre1915 to i64
  %i.zr = getelementptr inbounds nuw [4 x i8], ptr %i.zp, i64 %i.zq
  %i.zs = load i32, ptr %i.zr, align 4, !tbaa !4
  %i.zt = trunc i32 %i.zs to i8
  br i1 %.not.i1538, label %html_output_c.exit1348, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.zu = load i32, ptr %i.az, align 4, !tbaa !41 ; 2 uses
  %i.zv = icmp eq i32 %i.zu, 8192
  br i1 %i.zv, label %html_output_flush.exit.i1347, label %bb.iq

html_output_flush.exit.i1347:                     ; preds = %bb.ip
  %i.zw = load i32, ptr %.0999, align 4, !tbaa !39
  %i.zx = call i32 @cli_writen(i32 noundef %i.zw, ptr noundef nonnull %i.ba, i32 noundef 8192) #15 ; 0 uses
  br label %bb.iq

bb.iq:                                            ; preds = %html_output_flush.exit.i1347, %bb.ip
  %i.zy = phi i32 [ 0, %html_output_flush.exit.i1347 ], [ %i.zu, %bb.ip ] ; 2 uses
  %i.zz = add nsw i32 %i.zy, 1
  store i32 %i.zz, ptr %i.az, align 4, !tbaa !41
  %i.aaa = sext i32 %i.zy to i64
  %i.aab = getelementptr inbounds i8, ptr %i.ba, i64 %i.aaa
  store i8 %i.zt, ptr %i.aab, align 1, !tbaa !15
  %.pre = load i8, ptr %.39761807, align 1, !tbaa !15
  br label %html_output_c.exit1348

html_output_c.exit1348:                           ; preds = %bb.iq, %bb.io, %html_output_c.exit1345
  %i.aac = phi i8 [ %.pre, %bb.iq ], [ %.pre1915, %bb.io ], [ %.pre1915, %html_output_c.exit1345 ]
  %i.aad = icmp eq i8 %i.aac, 62                  ; 2 uses
  %spec.select1213 = select i1 %i.aad, i32 1, i32 %.19621809
  %spec.select1214 = select i1 %i.aad, i32 5, i32 2
  %i.aae = getelementptr inbounds nuw i8, ptr %.39761807, i64 1
  br label %.backedge

bb.ir:                                            ; preds = %bb.al
  %i.aaf = load i8, ptr %i.b, align 16, !tbaa !15
  %i.aag = icmp eq i8 %i.aaf, 47
  br i1 %i.aag, label %bb.is, label %bb.jb

bb.is:                                            ; preds = %bb.ir
  %lhsv1173 = load i64, ptr %i.b, align 16
  %.not1175 = icmp ne i64 %lhsv1173, 32774695491433263 ; 2 uses
  %brmerge = or i1 %.not1175, %.not.i1538
  %.19431811.mux = select i1 %.not1175, i32 %.19431811, i32 0
  br i1 %brmerge, label %html_output_c.exit1351, label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.aah = load i32, ptr %i.az, align 4, !tbaa !41 ; 2 uses
  %i.aai = icmp eq i32 %i.aah, 8192
  br i1 %i.aai, label %html_output_flush.exit.i1350, label %bb.iu

html_output_flush.exit.i1350:                     ; preds = %bb.it
  %i.aaj = load i32, ptr %.0999, align 4, !tbaa !39
  %i.aak = call i32 @cli_writen(i32 noundef %i.aaj, ptr noundef nonnull %i.ba, i32 noundef 8192) #15 ; 0 uses
  br label %bb.iu

bb.iu:                                            ; preds = %html_output_flush.exit.i1350, %bb.it
  %i.aal = phi i32 [ 0, %html_output_flush.exit.i1350 ], [ %i.aah, %bb.it ] ; 2 uses
  %i.aam = add nsw i32 %i.aal, 1
  store i32 %i.aam, ptr %i.az, align 4, !tbaa !41
  %i.aan = sext i32 %i.aal to i64
  %i.aao = getelementptr inbounds i8, ptr %i.ba, i64 %i.aan
  store i8 10, ptr %i.aao, align 1, !tbaa !15
  br label %html_output_c.exit1351

html_output_c.exit1351:                           ; preds = %bb.is, %bb.iu
  %.2944 = phi i32 [ %.19431811.mux, %bb.is ], [ 0, %bb.iu ] ; 3 uses
  br i1 %.not1132, label %bb.iy, label %bb.iv

bb.iv:                                            ; preds = %html_output_c.exit1351
  %i.aap = load i32, ptr %i.bc, align 4, !tbaa !38
  %i.aaq = icmp ne i32 %i.aap, 0
  %i.aar = icmp ne i32 %.110061803, 0
  %or.cond10 = select i1 %i.aaq, i1 %i.aar, i1 false
  br i1 %or.cond10, label %bb.iw, label %bb.iy

bb.iw:                                            ; preds = %bb.iv
  %i.aas = load i16, ptr %i.b, align 16
  %i.aat = xor i16 %i.aas, 24879
  %i.aau = getelementptr i8, ptr %i.b, i64 2
  %i.aav = load i8, ptr %i.aau, align 2
  %i.aaw = zext i8 %i.aav to i16
  %i.aax = or i16 %i.aat, %i.aaw
  %i.aay = icmp ne i16 %i.aax, 0
  %i.aaz = zext i1 %i.aay to i32
  %i.aba = icmp eq i32 %i.aaz, 0
  br i1 %i.aba, label %bb.ix, label %bb.iy

bb.ix:                                            ; preds = %bb.iw
  %i.abb = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.abc = add nsw i32 %.110061803, -1
  %i.abd = sext i32 %i.abc to i64                 ; 2 uses
  %i.abe = getelementptr inbounds [8 x i8], ptr %i.abb, i64 %i.abd
  %i.abf = load ptr, ptr %i.abe, align 8, !tbaa !33
  %i.abg = call i32 @blobAddData(ptr noundef %i.abf, ptr noundef nonnull @.str.52, i64 noundef 1) #15 ; 0 uses
  %i.abh = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.abi = getelementptr inbounds [8 x i8], ptr %i.abh, i64 %i.abd
  %i.abj = load ptr, ptr %i.abi, align 8, !tbaa !33
  call void @blobClose(ptr noundef %i.abj) #15
  br label %bb.iy

bb.iy:                                            ; preds = %bb.iw, %bb.ix, %bb.iv, %html_output_c.exit1351
  %.41019 = phi ptr [ %.210171802, %html_output_c.exit1351 ], [ %.210171802, %bb.iv ], [ %.39761807, %bb.ix ], [ %.39761807, %bb.iw ] ; 3 uses
  %.31008 = phi i32 [ %.110061803, %html_output_c.exit1351 ], [ %.110061803, %bb.iv ], [ 0, %bb.ix ], [ %.110061803, %bb.iw ] ; 3 uses
  %i.abk = load i32, ptr %i.b, align 16
  %i.abl = xor i32 %i.abk, 1919903279
  %i.abm = getelementptr i8, ptr %i.b, i64 4
  %i.abn = load i16, ptr %i.abm, align 4
  %i.abo = zext i16 %i.abn to i32
  %i.abp = xor i32 %i.abo, 109
  %i.abq = or i32 %i.abl, %i.abp
  %i.abr = icmp ne i32 %i.abq, 0
  %i.abs = zext i1 %i.abr to i32
  %i.abt = icmp eq i32 %i.abs, 0
  br i1 %i.abt, label %bb.iz, label %.critedge1220

bb.iz:                                            ; preds = %bb.iy
  %.not1179 = icmp eq ptr %.110271800, null
  br i1 %.not1179, label %.critedge1220, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  call void @free(ptr noundef nonnull %.110271800) #15
  br label %.critedge1220

bb.jb:                                            ; preds = %bb.ir
  %i.abu = load i32, ptr %i.b, align 16
  %i.abv = xor i32 %i.abu, 1769104243
  %i.abw = getelementptr i8, ptr %i.b, i64 3
  %i.abx = load i32, ptr %i.abw, align 1
  %i.aby = xor i32 %i.abx, 7630953
  %i.abz = or i32 %i.abv, %i.aby
  %i.aca = icmp ne i32 %i.abz, 0
  %i.acb = zext i1 %i.aca to i32
  %i.acc = icmp eq i32 %i.acb, 0
  br i1 %i.acc, label %bb.jc, label %bb.jv

bb.jc:                                            ; preds = %bb.jb
  %i.acd = load i32, ptr %5, align 8, !tbaa !24   ; 2 uses
  %i.ace = icmp sgt i32 %i.acd, 0
  br i1 %i.ace, label %.lr.ph.i, label %.critedge1216

.lr.ph.i:                                         ; preds = %bb.jc
  %i.acf = load ptr, ptr %i.u, align 8, !tbaa !29 ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.acd to i64 ; 3 uses
  br label %bb.je

bb.jd:                                            ; preds = %bb.je
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge1216, label %bb.je, !llvm.loop !46

bb.je:                                            ; preds = %bb.jd, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.jd ] ; 3 uses
  %i.acg = getelementptr inbounds nuw [8 x i8], ptr %i.acf, i64 %indvars.iv.i
  %i.ach = load ptr, ptr %i.acg, align 8, !tbaa !30
  %i.aci = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ach, ptr noundef nonnull dereferenceable(9) @.str.22) #17
  %i.acj = icmp eq i32 %i.aci, 0
  br i1 %i.acj, label %html_tag_arg_value.exit, label %bb.jd

html_tag_arg_value.exit:                          ; preds = %bb.je
  %i.ack = load ptr, ptr %i.v, align 8, !tbaa !31 ; 2 uses
  %i.acl = getelementptr inbounds nuw [8 x i8], ptr %i.ack, i64 %indvars.iv.i
  %i.acm = load ptr, ptr %i.acl, align 8, !tbaa !30 ; 3 uses
  %.not1172 = icmp eq ptr %i.acm, null
  br i1 %.not1172, label %.critedge1216, label %bb.jf

bb.jf:                                            ; preds = %html_tag_arg_value.exit
  %i.acn = call i32 @strcasecmp(ptr noundef nonnull %i.acm, ptr noundef nonnull @.str.23) #17
  %i.aco = icmp eq i32 %i.acn, 0
  br i1 %i.aco, label %.lr.ph.i1352, label %bb.jh

bb.jg:                                            ; preds = %.lr.ph.i1352
  %indvars.iv.next.i1355 = add nuw nsw i64 %indvars.iv.i1354, 1 ; 2 uses
  %exitcond.not.i1356 = icmp eq i64 %indvars.iv.next.i1355, %wide.trip.count.i
  br i1 %exitcond.not.i1356, label %.critedge1216, label %.lr.ph.i1352, !llvm.loop !47

.lr.ph.i1352:                                     ; preds = %bb.jf, %bb.jg
  %indvars.iv.i1354 = phi i64 [ %indvars.iv.next.i1355, %bb.jg ], [ 0, %bb.jf ] ; 3 uses
  %i.acp = getelementptr inbounds nuw [8 x i8], ptr %i.acf, i64 %indvars.iv.i1354
  %i.acq = load ptr, ptr %i.acp, align 8, !tbaa !30
  %i.acr = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.acq, ptr noundef nonnull dereferenceable(9) @.str.22) #17
  %i.acs = icmp eq i32 %i.acr, 0
  br i1 %i.acs, label %.critedge1216.sink.split, label %bb.jg

bb.jh:                                            ; preds = %bb.jf
  %i.act = call i32 @strcasecmp(ptr noundef nonnull %i.acm, ptr noundef nonnull @.str.25) #17
  %.not1667 = icmp eq i32 %i.act, 0
  br i1 %.not1667, label %.lr.ph.i1357, label %.critedge1216

bb.ji:                                            ; preds = %.lr.ph.i1357
  %indvars.iv.next.i1360 = add nuw nsw i64 %indvars.iv.i1359, 1 ; 2 uses
  %exitcond.not.i1361 = icmp eq i64 %indvars.iv.next.i1360, %wide.trip.count.i
  br i1 %exitcond.not.i1361, label %.critedge1216, label %.lr.ph.i1357, !llvm.loop !47

.lr.ph.i1357:                                     ; preds = %bb.jh, %bb.ji
  %indvars.iv.i1359 = phi i64 [ %indvars.iv.next.i1360, %bb.ji ], [ 0, %bb.jh ] ; 3 uses
  %i.acu = getelementptr inbounds nuw [8 x i8], ptr %i.acf, i64 %indvars.iv.i1359
  %i.acv = load ptr, ptr %i.acu, align 8, !tbaa !30
  %i.acw = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.acv, ptr noundef nonnull dereferenceable(9) @.str.22) #17
  %i.acx = icmp eq i32 %i.acw, 0
  br i1 %i.acx, label %.critedge1216.sink.split, label %bb.ji

.critedge1216.sink.split:                         ; preds = %.lr.ph.i1357, %.lr.ph.i1352
  %indvars.iv.i1359.lcssa.sink = phi i64 [ %indvars.iv.i1354, %.lr.ph.i1352 ], [ %indvars.iv.i1359, %.lr.ph.i1357 ]
  %.str.26.sink = phi ptr [ @.str.24, %.lr.ph.i1352 ], [ @.str.26, %.lr.ph.i1357 ]
  %i.acy = getelementptr inbounds nuw [8 x i8], ptr %i.ack, i64 %indvars.iv.i1359.lcssa.sink ; 2 uses
  %i.acz = load ptr, ptr %i.acy, align 8, !tbaa !30
  call void @free(ptr noundef %i.acz) #15
  %i.ada = call ptr @cli_strdup(ptr noundef nonnull %.str.26.sink) #15
  store ptr %i.ada, ptr %i.acy, align 8, !tbaa !30
  br label %.critedge1216

.critedge1216:                                    ; preds = %bb.jd, %bb.ji, %bb.jg, %.critedge1216.sink.split, %bb.jh, %bb.jc, %html_tag_arg_value.exit
  %.4965 = phi i32 [ 14, %.critedge1216.sink.split ], [ 14, %bb.ji ], [ 1, %html_tag_arg_value.exit ], [ 1, %bb.jh ], [ 14, %bb.jg ], [ 1, %bb.jc ], [ 1, %bb.jd ] ; 2 uses
  %.3945 = phi i32 [ %.19431811, %.critedge1216.sink.split ], [ %.19431811, %bb.ji ], [ 1, %html_tag_arg_value.exit ], [ 1, %bb.jh ], [ %.19431811, %bb.jg ], [ 1, %bb.jc ], [ 1, %bb.jd ] ; 2 uses
  br i1 %.not.i1538, label %.critedge1220, label %bb.jj

bb.jj:                                            ; preds = %.critedge1216
  %i.adb = load i32, ptr %i.az, align 4, !tbaa !41 ; 2 uses
  %i.adc = icmp eq i32 %i.adb, 8192
  br i1 %i.adc, label %html_output_flush.exit.i.i, label %bb.jk

html_output_flush.exit.i.i:                       ; preds = %bb.jj
  %i.add = load i32, ptr %.0999, align 4, !tbaa !39
  %i.ade = call i32 @cli_writen(i32 noundef %i.add, ptr noundef nonnull %i.ba, i32 noundef 8192) #15 ; 0 uses
  br label %bb.jk

bb.jk:                                            ; preds = %html_output_flush.exit.i.i, %bb.jj
  %i.adf = phi i32 [ 0, %html_output_flush.exit.i.i ], [ %i.adb, %bb.jj ] ; 2 uses
  %i.adg = add nsw i32 %i.adf, 1
  store i32 %i.adg, ptr %i.az, align 4, !tbaa !41
  %i.adh = sext i32 %i.adf to i64
  %i.adi = getelementptr inbounds i8, ptr %i.ba, i64 %i.adh
  store i8 60, ptr %i.adi, align 1, !tbaa !15
  %i.adj = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #17 ; 2 uses
  %i.adk = trunc i64 %i.adj to i32                ; 5 uses
  %i.adl = load i32, ptr %i.az, align 4, !tbaa !41 ; 5 uses
  %i.adm = add nsw i32 %i.adl, %i.adk
  %i.adn = icmp sgt i32 %i.adm, 8191
  %i.ado = icmp sgt i32 %i.adl, 0                 ; 2 uses
  %or.cond.i.i = and i1 %i.ado, %i.adn
  br i1 %or.cond.i.i, label %html_output_flush.exit.thread.i.i, label %html_output_flush.exit.i30.i

html_output_flush.exit.i30.i:                     ; preds = %bb.jk
  %i.adp = icmp sgt i32 %i.adk, 8191
  br i1 %i.adp, label %bb.jl, label %bb.jn

html_output_flush.exit.thread.i.i:                ; preds = %bb.jk
  %i.adq = load i32, ptr %.0999, align 4, !tbaa !39
  %i.adr = call i32 @cli_writen(i32 noundef %i.adq, ptr noundef nonnull %i.ba, i32 noundef %i.adl) #15 ; 0 uses
  store i32 0, ptr %i.az, align 4, !tbaa !41
  %i.ads = icmp sgt i32 %i.adk, 8191
  br i1 %i.ads, label %html_output_flush.exit15.i.i, label %bb.jn

bb.jl:                                            ; preds = %html_output_flush.exit.i30.i
  br i1 %i.ado, label %bb.jm, label %html_output_flush.exit15.i.i

bb.jm:                                            ; preds = %bb.jl
  %i.adt = load i32, ptr %.0999, align 4, !tbaa !39
  %i.adu = call i32 @cli_writen(i32 noundef %i.adt, ptr noundef nonnull %i.ba, i32 noundef %i.adl) #15 ; 0 uses
  store i32 0, ptr %i.az, align 4, !tbaa !41
  br label %html_output_flush.exit15.i.i

html_output_flush.exit15.i.i:                     ; preds = %bb.jm, %bb.jl, %html_output_flush.exit.thread.i.i
  %i.adv = load i32, ptr %.0999, align 4, !tbaa !39
  %i.adw = call i32 @cli_writen(i32 noundef %i.adv, ptr noundef nonnull %i.b, i32 noundef %i.adk) #15 ; 0 uses
  br label %html_output_str.exit.i

bb.jn:                                            ; preds = %html_output_flush.exit.thread.i.i, %html_output_flush.exit.i30.i
  %i.adx = phi i32 [ 0, %html_output_flush.exit.thread.i.i ], [ %i.adl, %html_output_flush.exit.i30.i ]
  %i.ady = sext i32 %i.adx to i64
  %i.adz = getelementptr inbounds i8, ptr %i.ba, i64 %i.ady
  %sext.i = shl i64 %i.adj, 32
  %i.aea = ashr exact i64 %sext.i, 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.adz, ptr nonnull align 16 %i.b, i64 %i.aea, i1 false)
  %i.aeb = load i32, ptr %i.az, align 4, !tbaa !41
  %i.aec = add nsw i32 %i.aeb, %i.adk
  store i32 %i.aec, ptr %i.az, align 4, !tbaa !41
  br label %html_output_str.exit.i

html_output_str.exit.i:                           ; preds = %bb.jn, %html_output_flush.exit15.i.i
  %7 = load i32, ptr %5, align 8, !tbaa !24
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %.lr.ph58.i, label %._crit_edge59.i.thread2101

.lr.ph58.i:                                       ; preds = %html_output_str.exit.i
  %i.aed = load ptr, ptr %i.u, align 8
  %i.aee = load ptr, ptr %i.v, align 8
  br label %.lr.ph58.i.split

.lr.ph58.i.split:                                 ; preds = %.lr.ph58.i, %html_output_c.exit50.i
  %indvars.iv61.i = phi i64 [ %indvars.iv.next62.i, %html_output_c.exit50.i ], [ 0, %.lr.ph58.i ] ; 3 uses
  %i.aef = load i32, ptr %i.az, align 4, !tbaa !41 ; 2 uses
  %i.aeg = icmp eq i32 %i.aef, 8192
  br i1 %i.aeg, label %html_output_flush.exit.i32.i, label %bb.jo

html_output_flush.exit.i32.i:                     ; preds = %.lr.ph58.i.split
  %i.aeh = load i32, ptr %.0999, align 4, !tbaa !39
  %i.aei = call i32 @cli_writen(i32 noundef %i.aeh, ptr noundef nonnull %i.ba, i32 noundef 8192) #15 ; 0 uses
  br label %bb.jo

bb.jo:                                            ; preds = %html_output_flush.exit.i32.i, %.lr.ph58.i.split
  %i.aej = phi i32 [ 0, %html_output_flush.exit.i32.i ], [ %i.aef, %.lr.ph58.i.split ] ; 2 uses
  %i.aek = add nsw i32 %i.aej, 1
  store i32 %i.aek, ptr %i.az, align 4, !tbaa !41
  %i.ael = sext i32 %i.aej to i64
  %i.aem = getelementptr inbounds i8, ptr %i.ba, i64 %i.ael
  store i8 32, ptr %i.aem, align 1, !tbaa !15
  %i.aen = getelementptr inbounds nuw [8 x i8], ptr %i.aed, i64 %indvars.iv61.i
  %i.aeo = load ptr, ptr %i.aen, align 8, !tbaa !30 ; 3 uses
  %i.aep = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aeo) #17 ; 2 uses
  %i.aeq = trunc i64 %i.aep to i32                ; 5 uses
  %i.aer = load i32, ptr %i.az, align 4, !tbaa !41 ; 5 uses
  %i.aes = add nsw i32 %i.aer, %i.aeq
  %i.aet = icmp sgt i32 %i.aes, 8191
  %i.aeu = icmp sgt i32 %i.aer, 0                 ; 2 uses
  %or.cond.i35.i = and i1 %i.aeu, %i.aet
  br i1 %or.cond.i35.i, label %html_output_flush.exit.thread.i38.i, label %html_output_flush.exit.i36.i

html_output_flush.exit.i36.i:                     ; preds = %bb.jo
  %i.aev = icmp sgt i32 %i.aeq, 8191
  br i1 %i.aev, label %bb.jp, label %bb.jr

html_output_flush.exit.thread.i38.i:              ; preds = %bb.jo
  %i.aew = load i32, ptr %.0999, align 4, !tbaa !39
  %i.aex = call i32 @cli_writen(i32 noundef %i.aew, ptr noundef nonnull %i.ba, i32 noundef %i.aer) #15 ; 0 uses
  store i32 0, ptr %i.az, align 4, !tbaa !41
  %i.aey = icmp sgt i32 %i.aeq, 8191
  br i1 %i.aey, label %html_output_flush.exit15.i37.i, label %bb.jr

bb.jp:                                            ; preds = %html_output_flush.exit.i36.i
  br i1 %i.aeu, label %bb.jq, label %html_output_flush.exit15.i37.i

bb.jq:                                            ; preds = %bb.jp
  %i.aez = load i32, ptr %.0999, align 4, !tbaa !39
  %i.afa = call i32 @cli_writen(i32 noundef %i.aez, ptr noundef nonnull %i.ba, i32 noundef %i.aer) #15 ; 0 uses
  store i32 0, ptr %i.az, align 4, !tbaa !41
  br label %html_output_flush.exit15.i37.i

html_output_flush.exit15.i37.i:                   ; preds = %bb.jq, %bb.jp, %html_output_flush.exit.thread.i38.i
  %i.afb = load i32, ptr %.0999, align 4, !tbaa !39
  %i.afc = call i32 @cli_writen(i32 noundef %i.afb, ptr noundef nonnull %i.aeo, i32 noundef %i.aeq) #15 ; 0 uses
  br label %html_output_str.exit39.i

bb.jr:                                            ; preds = %html_output_flush.exit.thread.i38.i, %html_output_flush.exit.i36.i
  %i.afd = phi i32 [ 0, %html_output_flush.exit.thread.i38.i ], [ %i.aer, %html_output_flush.exit.i36.i ]
  %i.afe = sext i32 %i.afd to i64
  %i.aff = getelementptr inbounds i8, ptr %i.ba, i64 %i.afe
  %sext55.i = shl i64 %i.aep, 32
  %i.afg = ashr exact i64 %sext55.i, 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aff, ptr nonnull align 1 %i.aeo, i64 %i.afg, i1 false)
  %i.afh = load i32, ptr %i.az, align 4, !tbaa !41
  %i.afi = add nsw i32 %i.afh, %i.aeq
  store i32 %i.afi, ptr %i.az, align 4, !tbaa !41
  br label %html_output_str.exit39.i

html_output_str.exit39.i:                         ; preds = %bb.jr, %html_output_flush.exit15.i37.i
  %i.afj = getelementptr inbounds nuw [8 x i8], ptr %i.aee, i64 %indvars.iv61.i ; 3 uses
  %i.afk = load ptr, ptr %i.afj, align 8, !tbaa !30
  %.not.i1363 = icmp eq ptr %i.afk, null
  br i1 %.not.i1363, label %html_output_c.exit50.i, label %bb.js

bb.js:                                            ; preds = %html_output_str.exit39.i
  %i.afl = load i32, ptr %i.az, align 4, !tbaa !41 ; 3 uses
  %i.afm = icmp sgt i32 %i.afl, 8189
  br i1 %i.afm, label %html_output_flush.exit.thread.i43.i, label %html_output_str.exit44.thread.i

html_output_flush.exit.thread.i43.i:              ; preds = %bb.js
  %i.afn = load i32, ptr %.0999, align 4, !tbaa !39
  %i.afo = call i32 @cli_writen(i32 noundef %i.afn, ptr noundef nonnull %i.ba, i32 noundef %i.afl) #15 ; 0 uses
  store i32 0, ptr %i.az, align 4, !tbaa !41
  br label %html_output_str.exit44.thread.i

html_output_str.exit44.thread.i:                  ; preds = %html_output_flush.exit.thread.i43.i, %bb.js
  %i.afp = phi i32 [ 0, %html_output_flush.exit.thread.i43.i ], [ %i.afl, %bb.js ]
  %i.afq = sext i32 %i.afp to i64
  %i.afr = getelementptr inbounds i8, ptr %i.ba, i64 %i.afq
  store i16 8765, ptr %i.afr, align 1
  %i.afs = load i32, ptr %i.az, align 4, !tbaa !41
  %i.aft = add nsw i32 %i.afs, 2                  ; 2 uses
  store i32 %i.aft, ptr %i.az, align 4, !tbaa !41
  %.pre64.i = load ptr, ptr %i.afj, align 8, !tbaa !30
  %i.afu = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.pre64.i) #17 ; 2 uses
  %i.afv = trunc i64 %i.afu to i32
  %i.afw = icmp sgt i32 %i.afv, 0
  br i1 %i.afw, label %.lr.ph.split.preheader.i, label %._crit_edge.split.thread78.i

.lr.ph.split.preheader.i:                         ; preds = %html_output_str.exit44.thread.i
  %i.afx = tail call ptr @__ctype_tolower_loc() #16
  %wide.trip.count.i1364 = and i64 %i.afu, 2147483647
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %html_output_c.exit47.i, %.lr.ph.split.preheader.i
  %indvars.iv.i1365 = phi i64 [ 0, %.lr.ph.split.preheader.i ], [ %indvars.iv.next.i1366, %html_output_c.exit47.i ] ; 2 uses
  %i.afy = load ptr, ptr %i.afx, align 8, !tbaa !44
  %i.afz = load ptr, ptr %i.afj, align 8, !tbaa !30
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afz, i64 %indvars.iv.i1365
  %i.agb = load i8, ptr %i.aga, align 1, !tbaa !15
  %i.agc = zext i8 %i.agb to i64
  %i.agd = getelementptr inbounds nuw [4 x i8], ptr %i.afy, i64 %i.agc
  %i.age = load i32, ptr %i.agd, align 4, !tbaa !4
  %i.agf = trunc i32 %i.age to i8
  %i.agg = load i32, ptr %i.az, align 4, !tbaa !41 ; 2 uses
  %i.agh = icmp eq i32 %i.agg, 8192
  br i1 %i.agh, label %html_output_flush.exit.i46.i, label %html_output_c.exit47.i

html_output_flush.exit.i46.i:                     ; preds = %.lr.ph.split.i
  %i.agi = load i32, ptr %.0999, align 4, !tbaa !39
  %i.agj = call i32 @cli_writen(i32 noundef %i.agi, ptr noundef nonnull %i.ba, i32 noundef 8192) #15 ; 0 uses
  br label %html_output_c.exit47.i

html_output_c.exit47.i:                           ; preds = %html_output_flush.exit.i46.i, %.lr.ph.split.i
  %i.agk = phi i32 [ 0, %html_output_flush.exit.i46.i ], [ %i.agg, %.lr.ph.split.i ] ; 2 uses
  %i.agl = add nsw i32 %i.agk, 1
  store i32 %i.agl, ptr %i.az, align 4, !tbaa !41
  %i.agm = sext i32 %i.agk to i64
  %i.agn = getelementptr inbounds i8, ptr %i.ba, i64 %i.agm
  store i8 %i.agf, ptr %i.agn, align 1, !tbaa !15
  %indvars.iv.next.i1366 = add nuw nsw i64 %indvars.iv.i1365, 1 ; 2 uses
  %exitcond.not.i1367 = icmp eq i64 %indvars.iv.next.i1366, %wide.trip.count.i1364
  br i1 %exitcond.not.i1367, label %._crit_edge.split.thread78.ithread-pre-split, label %.lr.ph.split.i, !llvm.loop !48

._crit_edge.split.thread78.ithread-pre-split:     ; preds = %html_output_c.exit47.i
  %.pr = load i32, ptr %i.az, align 4, !tbaa !41
  br label %._crit_edge.split.thread78.i

._crit_edge.split.thread78.i:                     ; preds = %._crit_edge.split.thread78.ithread-pre-split, %html_output_str.exit44.thread.i
  %i.ago = phi i32 [ %.pr, %._crit_edge.split.thread78.ithread-pre-split ], [ %i.aft, %html_output_str.exit44.thread.i ] ; 2 uses
  %i.agp = icmp eq i32 %i.ago, 8192
  br i1 %i.agp, label %html_output_flush.exit.i49.i, label %bb.jt

html_output_flush.exit.i49.i:                     ; preds = %._crit_edge.split.thread78.i
  %i.agq = load i32, ptr %.0999, align 4, !tbaa !39
  %i.agr = call i32 @cli_writen(i32 noundef %i.agq, ptr noundef nonnull %i.ba, i32 noundef 8192) #15 ; 0 uses
  br label %bb.jt

bb.jt:                                            ; preds = %html_output_flush.exit.i49.i, %._crit_edge.split.thread78.i
  %i.ags = phi i32 [ 0, %html_output_flush.exit.i49.i ], [ %i.ago, %._crit_edge.split.thread78.i ] ; 2 uses
  %i.agt = add nsw i32 %i.ags, 1
  store i32 %i.agt, ptr %i.az, align 4, !tbaa !41
  %i.agu = sext i32 %i.ags to i64
  %i.agv = getelementptr inbounds i8, ptr %i.ba, i64 %i.agu
  store i8 34, ptr %i.agv, align 1, !tbaa !15
  br label %html_output_c.exit50.i

html_output_c.exit50.i:                           ; preds = %bb.jt, %html_output_str.exit39.i
  %indvars.iv.next62.i = add nuw nsw i64 %indvars.iv61.i, 1 ; 2 uses
  %9 = load i32, ptr %5, align 8, !tbaa !24
  %10 = sext i32 %9 to i64
  %11 = icmp slt i64 %indvars.iv.next62.i, %10
  br i1 %11, label %.lr.ph58.i.split, label %._crit_edge59.i.thread2101, !llvm.loop !49

._crit_edge59.i.thread2101:                       ; preds = %html_output_c.exit50.i, %html_output_str.exit.i
  %i.agw = load i32, ptr %i.az, align 4, !tbaa !41 ; 2 uses
  %i.agx = icmp eq i32 %i.agw, 8192
  br i1 %i.agx, label %html_output_flush.exit.i52.i, label %bb.ju

html_output_flush.exit.i52.i:                     ; preds = %._crit_edge59.i.thread2101
  %i.agy = load i32, ptr %.0999, align 4, !tbaa !39
  %i.agz = call i32 @cli_writen(i32 noundef %i.agy, ptr noundef nonnull %i.ba, i32 noundef 8192) #15 ; 0 uses
  br label %bb.ju

bb.ju:                                            ; preds = %html_output_flush.exit.i52.i, %._crit_edge59.i.thread2101
  %i.aha = phi i32 [ 0, %html_output_flush.exit.i52.i ], [ %i.agw, %._crit_edge59.i.thread2101 ] ; 2 uses
  %i.ahb = add nsw i32 %i.aha, 1
  store i32 %i.ahb, ptr %i.az, align 4, !tbaa !41
  %i.ahc = sext i32 %i.aha to i64
  %i.ahd = getelementptr inbounds i8, ptr %i.ba, i64 %i.ahc
  store i8 62, ptr %i.ahd, align 1, !tbaa !15
  br label %.critedge1220

bb.jv:                                            ; preds = %bb.jb
  br i1 %i.k, label %bb.jw, label %bb.kk

bb.jw:                                            ; preds = %bb.jv
  %i.ahe = load i32, ptr %i.b, align 16
  %i.ahf = xor i32 %i.ahe, 1635018093
  %i.ahg = getelementptr i8, ptr %i.b, i64 4
  %i.ahh = load i8, ptr %i.ahg, align 4
  %i.ahi = zext i8 %i.ahh to i32
  %i.ahj = or i32 %i.ahf, %i.ahi
  %i.ahk = icmp ne i32 %i.ahj, 0
  %i.ahl = zext i1 %i.ahk to i32
  %i.ahm = icmp eq i32 %i.ahl, 0
  br i1 %i.ahm, label %bb.jx, label %bb.kk

bb.jx:                                            ; preds = %bb.jw
  %i.ahn = load i32, ptr %5, align 8, !tbaa !24   ; 2 uses
  %i.aho = icmp sgt i32 %i.ahn, 0
  br i1 %i.aho, label %.lr.ph.i1369, label %.critedge1220

.lr.ph.i1369:                                     ; preds = %bb.jx
  %i.ahp = load ptr, ptr %i.u, align 8, !tbaa !29 ; 2 uses
  %wide.trip.count.i1370 = zext nneg i32 %i.ahn to i64 ; 2 uses
  br label %bb.jz

bb.jy:                                            ; preds = %bb.jz
  %indvars.iv.next.i1372 = add nuw nsw i64 %indvars.iv.i1371, 1 ; 2 uses
  %exitcond.not.i1373 = icmp eq i64 %indvars.iv.next.i1372, %wide.trip.count.i1370
  br i1 %exitcond.not.i1373, label %.lr.ph.i1376, label %bb.jz, !llvm.loop !46

bb.jz:                                            ; preds = %bb.jy, %.lr.ph.i1369
  %indvars.iv.i1371 = phi i64 [ 0, %.lr.ph.i1369 ], [ %indvars.iv.next.i1372, %bb.jy ] ; 3 uses
  %i.ahq = getelementptr inbounds nuw [8 x i8], ptr %i.ahp, i64 %indvars.iv.i1371
  %i.ahr = load ptr, ptr %i.ahq, align 8, !tbaa !30
  %i.ahs = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ahr, ptr noundef nonnull dereferenceable(11) @.str.28) #17
  %i.aht = icmp eq i32 %i.ahs, 0
  br i1 %i.aht, label %bb.ka, label %bb.jy

bb.ka:                                            ; preds = %bb.jz
  %i.ahu = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.ahv = getelementptr inbounds nuw [8 x i8], ptr %i.ahu, i64 %indvars.iv.i1371
  %i.ahw = load ptr, ptr %i.ahv, align 8, !tbaa !30
  br label %.lr.ph.i1376

.lr.ph.i1376:                                     ; preds = %bb.jy, %bb.ka
  %.08.i1368 = phi ptr [ %i.ahw, %bb.ka ], [ null, %bb.jy ] ; 2 uses
  br label %bb.kc

bb.kb:                                            ; preds = %bb.kc
  %indvars.iv.next.i1379 = add nuw nsw i64 %indvars.iv.i1378, 1 ; 2 uses
  %exitcond.not.i1380 = icmp eq i64 %indvars.iv.next.i1379, %wide.trip.count.i1370
  br i1 %exitcond.not.i1380, label %.critedge1220, label %bb.kc, !llvm.loop !46

bb.kc:                                            ; preds = %bb.kb, %.lr.ph.i1376
  %indvars.iv.i1378 = phi i64 [ 0, %.lr.ph.i1376 ], [ %indvars.iv.next.i1379, %bb.kb ] ; 3 uses
  %i.ahx = getelementptr inbounds nuw [8 x i8], ptr %i.ahp, i64 %indvars.iv.i1378
  %i.ahy = load ptr, ptr %i.ahx, align 8, !tbaa !30
  %i.ahz = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ahy, ptr noundef nonnull dereferenceable(8) @.str.29) #17
  %i.aia = icmp eq i32 %i.ahz, 0
  br i1 %i.aia, label %html_tag_arg_value.exit1381, label %bb.kb

html_tag_arg_value.exit1381:                      ; preds = %bb.kc
  %i.aib = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.aic = getelementptr inbounds nuw [8 x i8], ptr %i.aib, i64 %indvars.iv.i1378
  %i.aid = load ptr, ptr %i.aic, align 8, !tbaa !30 ; 7 uses
  %i.aie = icmp ne ptr %.08.i1368, null
  %i.aif = icmp ne ptr %i.aid, null
  %or.cond12 = select i1 %i.aie, i1 %i.aif, i1 false
  br i1 %or.cond12, label %bb.kd, label %.critedge1220

bb.kd:                                            ; preds = %html_tag_arg_value.exit1381
  %i.aig = call i32 @strcasecmp(ptr noundef nonnull %.08.i1368, ptr noundef nonnull @.str.30) #17
  %i.aih = icmp eq i32 %i.aig, 0
  br i1 %i.aih, label %bb.ke, label %.critedge1220

bb.ke:                                            ; preds = %bb.kd
  %i.aii = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aid) #17 ; 6 uses
  %i.aij = add i64 %i.aii, 1
  %i.aik = call ptr @cli_malloc(i64 noundef %i.aij) #15 ; 10 uses
  %.not1166.not = icmp eq ptr %i.aik, null
  br i1 %.not1166.not, label %.critedge1219, label %.preheader1671

.preheader1671:                                   ; preds = %bb.ke
  %.not1878 = icmp eq i64 %i.aii, 0
  br i1 %.not1878, label %._crit_edge1797, label %.lr.ph1796

.lr.ph1796:                                       ; preds = %.preheader1671
  %i.ail = tail call ptr @__ctype_tolower_loc() #16 ; 5 uses
  %xtraiter = and i64 %i.aii, 3                   ; 3 uses
  %i.aim = icmp ult i64 %i.aii, 4
  br i1 %i.aim, label %.epil.preheader, label %.lr.ph1796.new

.lr.ph1796.new:                                   ; preds = %.lr.ph1796
  %unroll_iter = and i64 %i.aii, -4
  br label %bb.kf

bb.kf:                                            ; preds = %bb.kf, %.lr.ph1796.new
  %.010411795 = phi i64 [ 0, %.lr.ph1796.new ], [ %i.ajw, %bb.kf ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph1796.new ], [ %niter.next.3, %bb.kf ]
  %i.ain = load ptr, ptr %i.ail, align 8, !tbaa !44
  %i.aio = getelementptr inbounds nuw i8, ptr %i.aid, i64 %.010411795
  %i.aip = load i8, ptr %i.aio, align 1, !tbaa !15
  %i.aiq = zext i8 %i.aip to i64
  %i.air = getelementptr inbounds nuw [4 x i8], ptr %i.ain, i64 %i.aiq
  %i.ais = load i32, ptr %i.air, align 4, !tbaa !4
  %i.ait = trunc i32 %i.ais to i8
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.aik, i64 %.010411795
  store i8 %i.ait, ptr %i.aiu, align 1, !tbaa !15
  %i.aiv = or disjoint i64 %.010411795, 1         ; 2 uses
  %i.aiw = load ptr, ptr %i.ail, align 8, !tbaa !44
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aid, i64 %i.aiv
  %i.aiy = load i8, ptr %i.aix, align 1, !tbaa !15
  %i.aiz = zext i8 %i.aiy to i64
  %i.aja = getelementptr inbounds nuw [4 x i8], ptr %i.aiw, i64 %i.aiz
  %i.ajb = load i32, ptr %i.aja, align 4, !tbaa !4
  %i.ajc = trunc i32 %i.ajb to i8
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.aik, i64 %i.aiv
  store i8 %i.ajc, ptr %i.ajd, align 1, !tbaa !15
  %i.aje = or disjoint i64 %.010411795, 2         ; 2 uses
  %i.ajf = load ptr, ptr %i.ail, align 8, !tbaa !44
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.aid, i64 %i.aje
  %i.ajh = load i8, ptr %i.ajg, align 1, !tbaa !15
  %i.aji = zext i8 %i.ajh to i64
  %i.ajj = getelementptr inbounds nuw [4 x i8], ptr %i.ajf, i64 %i.aji
  %i.ajk = load i32, ptr %i.ajj, align 4, !tbaa !4
  %i.ajl = trunc i32 %i.ajk to i8
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.aik, i64 %i.aje
  store i8 %i.ajl, ptr %i.ajm, align 1, !tbaa !15
  %i.ajn = or disjoint i64 %.010411795, 3         ; 2 uses
  %i.ajo = load ptr, ptr %i.ail, align 8, !tbaa !44
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.aid, i64 %i.ajn
  %i.ajq = load i8, ptr %i.ajp, align 1, !tbaa !15
  %i.ajr = zext i8 %i.ajq to i64
  %i.ajs = getelementptr inbounds nuw [4 x i8], ptr %i.ajo, i64 %i.ajr
  %i.ajt = load i32, ptr %i.ajs, align 4, !tbaa !4
  %i.aju = trunc i32 %i.ajt to i8
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.aik, i64 %i.ajn
  store i8 %i.aju, ptr %i.ajv, align 1, !tbaa !15
  %i.ajw = add nuw i64 %.010411795, 4             ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge1797.loopexit.unr-lcssa, label %bb.kf, !llvm.loop !50

._crit_edge1797.loopexit.unr-lcssa:               ; preds = %bb.kf
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge1797, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge1797.loopexit.unr-lcssa, %.lr.ph1796
  %.010411795.epil.init = phi i64 [ 0, %.lr.ph1796 ], [ %i.ajw, %._crit_edge1797.loopexit.unr-lcssa ]
  %lcmp.mod2222 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod2222)
  br label %bb.kg

bb.kg:                                            ; preds = %bb.kg, %.epil.preheader
  %.010411795.epil = phi i64 [ %.010411795.epil.init, %.epil.preheader ], [ %i.akf, %bb.kg ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.kg ]
  %i.ajx = load ptr, ptr %i.ail, align 8, !tbaa !44
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.aid, i64 %.010411795.epil
  %i.ajz = load i8, ptr %i.ajy, align 1, !tbaa !15
  %i.aka = zext i8 %i.ajz to i64
  %i.akb = getelementptr inbounds nuw [4 x i8], ptr %i.ajx, i64 %i.aka
  %i.akc = load i32, ptr %i.akb, align 4, !tbaa !4
  %i.akd = trunc i32 %i.akc to i8
  %i.ake = getelementptr inbounds nuw i8, ptr %i.aik, i64 %.010411795.epil
  store i8 %i.akd, ptr %i.ake, align 1, !tbaa !15
  %i.akf = add nuw i64 %.010411795.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge1797, label %bb.kg, !llvm.loop !51

._crit_edge1797:                                  ; preds = %._crit_edge1797.loopexit.unr-lcssa, %bb.kg, %.preheader1671
  %i.akg = getelementptr inbounds nuw i8, ptr %i.aik, i64 %i.aii
  store i8 0, ptr %i.akg, align 1, !tbaa !15
  %i.akh = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.aik, ptr noundef nonnull dereferenceable(1) @.str.31) #17 ; 2 uses
  %.not1167 = icmp eq ptr %i.akh, null
  br i1 %.not1167, label %.thread, label %.preheader1670

.thread:                                          ; preds = %._crit_edge1797
  call void @free(ptr noundef nonnull %i.aik) #15
  br label %.critedge1220

.preheader1670:                                   ; preds = %._crit_edge1797, %bb.kh
end_hunk_1
begin_hunk_2_@cli_html_normalise:bb.a

bb.lp:                                            ; preds = %bb.lo, %bb.ln
  %.not1152 = icmp eq ptr %.110271800, null
  br i1 %.not1152, label %html_tag_arg_value.exit1409.thread, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  call fastcc void @html_tag_arg_add(ptr noundef %3, ptr noundef nonnull @.str.37, ptr noundef nonnull %i.anl)
  %i.anq = call ptr @blobCreate() #15
  %i.anr = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.ans = load i32, ptr %3, align 8, !tbaa !24   ; 2 uses
  %i.ant = sext i32 %i.ans to i64
  %i.anu = getelementptr [8 x i8], ptr %i.anr, i64 %i.ant
  %i.anv = getelementptr i8, ptr %i.anu, i64 -8
  store ptr %i.anq, ptr %i.anv, align 8, !tbaa !33
  %i.anw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.110271800) #17
  %i.anx = getelementptr inbounds nuw i8, ptr %.110271800, i64 %i.anw
  call fastcc void @html_tag_contents_append(ptr noundef %3, i32 noundef %i.ans, ptr noundef %.110271800, ptr noundef nonnull %i.anx)
  %i.any = load i32, ptr %3, align 8, !tbaa !24
  call fastcc void @html_tag_contents_done(ptr noundef nonnull %3, i32 noundef %i.any)
  %.pr1655.pre = load i32, ptr %5, align 8, !tbaa !24
  br label %html_tag_arg_value.exit1409.thread

html_tag_arg_value.exit1409.thread:               ; preds = %bb.lk, %bb.lp, %bb.lq, %bb.lm, %html_tag_arg_value.exit1409
  %.pr1655 = phi i32 [ %i.anc, %html_tag_arg_value.exit1409 ], [ %i.anc, %bb.lp ], [ %.pr1655.pre, %bb.lq ], [ %i.anc, %bb.lm ], [ %i.anc, %bb.lk ] ; 2 uses
  %i.anz = icmp sgt i32 %.pr1655, 0
  br i1 %i.anz, label %.lr.ph.i1411, label %.critedge1220

.lr.ph.i1411:                                     ; preds = %html_tag_arg_value.exit1409.thread
  %i.aoa = load ptr, ptr %i.u, align 8, !tbaa !29
  %wide.trip.count.i1412 = zext nneg i32 %.pr1655 to i64
  br label %bb.ls

bb.lr:                                            ; preds = %bb.ls
  %indvars.iv.next.i1414 = add nuw nsw i64 %indvars.iv.i1413, 1 ; 2 uses
  %exitcond.not.i1415 = icmp eq i64 %indvars.iv.next.i1414, %wide.trip.count.i1412
  br i1 %exitcond.not.i1415, label %.critedge1220, label %bb.ls, !llvm.loop !46

bb.ls:                                            ; preds = %bb.lr, %.lr.ph.i1411
  %indvars.iv.i1413 = phi i64 [ 0, %.lr.ph.i1411 ], [ %indvars.iv.next.i1414, %bb.lr ] ; 3 uses
  %i.aob = getelementptr inbounds nuw [8 x i8], ptr %i.aoa, i64 %indvars.iv.i1413
  %i.aoc = load ptr, ptr %i.aob, align 8, !tbaa !30
  %i.aod = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aoc, ptr noundef nonnull dereferenceable(7) @.str.41) #17
  %i.aoe = icmp eq i32 %i.aod, 0
  br i1 %i.aoe, label %html_tag_arg_value.exit1416, label %bb.lr

html_tag_arg_value.exit1416:                      ; preds = %bb.ls
  %i.aof = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.aog = getelementptr inbounds nuw [8 x i8], ptr %i.aof, i64 %indvars.iv.i1413
  %i.aoh = load ptr, ptr %i.aog, align 8, !tbaa !30 ; 4 uses
  %.not1153 = icmp eq ptr %i.aoh, null
  br i1 %.not1153, label %.critedge1220, label %bb.lt

bb.lt:                                            ; preds = %html_tag_arg_value.exit1416
  %char01154 = load i8, ptr %i.aoh, align 1
  %.not1155 = icmp eq i8 %char01154, 0
  br i1 %.not1155, label %.critedge1220, label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  call fastcc void @html_tag_arg_add(ptr noundef %3, ptr noundef nonnull @.str.41, ptr noundef nonnull %i.aoh)
  %i.aoi = load i32, ptr %i.bc, align 4, !tbaa !38
  %i.aoj = icmp ne i32 %i.aoi, 0
  %i.aok = icmp ne i32 %.110061803, 0
  %or.cond20 = select i1 %i.aoj, i1 %i.aok, i1 false
  br i1 %or.cond20, label %bb.lv, label %bb.lw

bb.lv:                                            ; preds = %bb.lu
  %i.aol = load i32, ptr %3, align 8, !tbaa !24
  call fastcc void @html_tag_set_inahref(ptr noundef %3, i32 noundef %i.aol, i32 noundef %.110061803)
  br label %bb.lw

bb.lw:                                            ; preds = %bb.lv, %bb.lu
  %.not1156 = icmp eq ptr %.110271800, null
  br i1 %.not1156, label %.critedge1220, label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  call fastcc void @html_tag_arg_add(ptr noundef %3, ptr noundef nonnull @.str.37, ptr noundef nonnull %i.aoh)
  %i.aom = call ptr @blobCreate() #15
  %i.aon = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.aoo = load i32, ptr %3, align 8, !tbaa !24   ; 2 uses
  %i.aop = sext i32 %i.aoo to i64
  %i.aoq = getelementptr [8 x i8], ptr %i.aon, i64 %i.aop
  %i.aor = getelementptr i8, ptr %i.aoq, i64 -8
  store ptr %i.aom, ptr %i.aor, align 8, !tbaa !33
  %i.aos = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.110271800) #17
  %i.aot = getelementptr inbounds nuw i8, ptr %.110271800, i64 %i.aos
  call fastcc void @html_tag_contents_append(ptr noundef %3, i32 noundef %i.aoo, ptr noundef %.110271800, ptr noundef nonnull %i.aot)
  %i.aou = load i32, ptr %3, align 8, !tbaa !24
  call fastcc void @html_tag_contents_done(ptr noundef nonnull %3, i32 noundef %i.aou)
  br label %.critedge1220

bb.ly:                                            ; preds = %bb.li
  %i.aov = load i32, ptr %i.b, align 16
  %i.aow = xor i32 %i.aov, 1634887273
  %i.aox = getelementptr i8, ptr %i.b, i64 3
  %i.aoy = load i32, ptr %i.aox, align 1
  %i.aoz = xor i32 %i.aoy, 6647137
  %i.apa = or i32 %i.aow, %i.aoz
  %i.apb = icmp ne i32 %i.apa, 0
  %i.apc = zext i1 %i.apb to i32
  %i.apd = icmp eq i32 %i.apc, 0
  br i1 %i.apd, label %bb.lz, label %bb.mf

bb.lz:                                            ; preds = %bb.ly
  %i.ape = call fastcc ptr @html_tag_arg_value(ptr noundef %5, ptr noundef nonnull @.str.40) ; 4 uses
  %.not1145 = icmp eq ptr %i.ape, null
  br i1 %.not1145, label %.critedge1220, label %bb.ma

bb.ma:                                            ; preds = %bb.lz
  %char01146 = load i8, ptr %i.ape, align 1
  %.not1147 = icmp eq i8 %char01146, 0
  br i1 %.not1147, label %.critedge1220, label %bb.mb

bb.mb:                                            ; preds = %bb.ma
  call fastcc void @html_tag_arg_add(ptr noundef %3, ptr noundef nonnull @.str.42, ptr noundef nonnull %i.ape)
  %i.apf = load i32, ptr %i.bc, align 4, !tbaa !38
  %i.apg = icmp ne i32 %i.apf, 0
  %i.aph = icmp ne i32 %.110061803, 0
  %or.cond22 = select i1 %i.apg, i1 %i.aph, i1 false
  br i1 %or.cond22, label %bb.mc, label %bb.md

bb.mc:                                            ; preds = %bb.mb
  %i.api = load i32, ptr %3, align 8, !tbaa !24
  call fastcc void @html_tag_set_inahref(ptr noundef %3, i32 noundef %i.api, i32 noundef %.110061803)
  br label %bb.md

bb.md:                                            ; preds = %bb.mc, %bb.mb
  %.not1148 = icmp eq ptr %.110271800, null
  br i1 %.not1148, label %.critedge1220, label %bb.me

bb.me:                                            ; preds = %bb.md
  call fastcc void @html_tag_arg_add(ptr noundef %3, ptr noundef nonnull @.str.37, ptr noundef nonnull %i.ape)
  %i.apj = call ptr @blobCreate() #15
  %i.apk = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.apl = load i32, ptr %3, align 8, !tbaa !24   ; 2 uses
  %i.apm = sext i32 %i.apl to i64
  %i.apn = getelementptr [8 x i8], ptr %i.apk, i64 %i.apm
  %i.apo = getelementptr i8, ptr %i.apn, i64 -8
  store ptr %i.apj, ptr %i.apo, align 8, !tbaa !33
  %i.app = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.110271800) #17
  %i.apq = getelementptr inbounds nuw i8, ptr %.110271800, i64 %i.app
  call fastcc void @html_tag_contents_append(ptr noundef %3, i32 noundef %i.apl, ptr noundef %.110271800, ptr noundef nonnull %i.apq)
  %i.apr = load i32, ptr %3, align 8, !tbaa !24
  call fastcc void @html_tag_contents_done(ptr noundef nonnull %3, i32 noundef %i.apr)
  br label %.critedge1220

bb.mf:                                            ; preds = %bb.ly
  %i.aps = load i32, ptr %i.b, align 16
  %i.apt = xor i32 %i.aps, 1634038369
  %i.apu = getelementptr i8, ptr %i.b, i64 4
  %i.apv = load i8, ptr %i.apu, align 4
  %i.apw = zext i8 %i.apv to i32
  %i.apx = or i32 %i.apt, %i.apw
  %i.apy = icmp ne i32 %i.apx, 0
  %i.apz = zext i1 %i.apy to i32
  %i.aqa = icmp eq i32 %i.apz, 0
  br i1 %i.aqa, label %bb.mg, label %.critedge1220

bb.mg:                                            ; preds = %bb.mf
  %i.aqb = call fastcc ptr @html_tag_arg_value(ptr noundef %5, ptr noundef nonnull @.str.34) ; 4 uses
  %.not1142 = icmp eq ptr %i.aqb, null
  br i1 %.not1142, label %.critedge1220, label %bb.mh

bb.mh:                                            ; preds = %bb.mg
  %char0 = load i8, ptr %i.aqb, align 1
  %.not1143 = icmp eq i8 %char0, 0
  br i1 %.not1143, label %.critedge1220, label %bb.mi

bb.mi:                                            ; preds = %bb.mh
  call fastcc void @html_tag_arg_add(ptr noundef %3, ptr noundef nonnull @.str.43, ptr noundef nonnull %i.aqb)
  %i.aqc = load i32, ptr %i.bc, align 4, !tbaa !38
  %i.aqd = icmp ne i32 %i.aqc, 0
  %i.aqe = icmp ne i32 %.110061803, 0
  %or.cond24 = select i1 %i.aqd, i1 %i.aqe, i1 false
  br i1 %or.cond24, label %bb.mj, label %bb.mk

bb.mj:                                            ; preds = %bb.mi
  %i.aqf = load i32, ptr %3, align 8, !tbaa !24
  call fastcc void @html_tag_set_inahref(ptr noundef %3, i32 noundef %i.aqf, i32 noundef %.110061803)
  br label %bb.mk

bb.mk:                                            ; preds = %bb.mj, %bb.mi
  %.not1144 = icmp eq ptr %.110271800, null
  br i1 %.not1144, label %.critedge1220, label %bb.ml

bb.ml:                                            ; preds = %bb.mk
  call fastcc void @html_tag_arg_add(ptr noundef %3, ptr noundef nonnull @.str.37, ptr noundef nonnull %i.aqb)
  %i.aqg = call ptr @blobCreate() #15
  %i.aqh = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.aqi = load i32, ptr %3, align 8, !tbaa !24   ; 2 uses
  %i.aqj = sext i32 %i.aqi to i64
  %i.aqk = getelementptr [8 x i8], ptr %i.aqh, i64 %i.aqj
  %i.aql = getelementptr i8, ptr %i.aqk, i64 -8
  store ptr %i.aqg, ptr %i.aql, align 8, !tbaa !33
  %i.aqm = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.110271800) #17
  %i.aqn = getelementptr inbounds nuw i8, ptr %.110271800, i64 %i.aqm
  call fastcc void @html_tag_contents_append(ptr noundef %3, i32 noundef %i.aqi, ptr noundef %.110271800, ptr noundef nonnull %i.aqn)
  %i.aqo = load i32, ptr %3, align 8, !tbaa !24
  call fastcc void @html_tag_contents_done(ptr noundef nonnull %3, i32 noundef %i.aqo)
  br label %.critedge1220

.critedge1220:                                    ; preds = %bb.ld, %bb.lr, %bb.kn, %bb.kb, %.critedge1216, %bb.kj, %bb.lj, %html_tag_arg_value.exit1409.thread, %bb.lc, %bb.km, %bb.jx, %.thread, %bb.ju, %html_tag_arg_value.exit1381, %bb.kd, %html_tag_arg_value.exit1402, %bb.lh, %bb.iz, %bb.ja, %bb.kk, %bb.md, %bb.me, %bb.ma, %bb.lz, %bb.mg, %bb.mh, %bb.ml, %bb.mk, %bb.mf, %html_tag_arg_value.exit1416, %bb.lt, %bb.lx, %bb.lw, %html_tag_arg_value.exit1388, %bb.kp, %bb.kz, %bb.ky, %bb.iy
  %.31029 = phi ptr [ %.110271800, %bb.kk ], [ %.110271800, %bb.iy ], [ %.110271800, %html_tag_arg_value.exit1381 ], [ %.110271800, %html_tag_arg_value.exit1402 ], [ %.110271800, %bb.kz ], [ %.110271800, %bb.ky ], [ %.110271800, %bb.kp ], [ %.110271800, %html_tag_arg_value.exit1388 ], [ null, %bb.iz ], [ %.110271800, %bb.lx ], [ null, %bb.lw ], [ %.110271800, %bb.lt ], [ %.110271800, %html_tag_arg_value.exit1416 ], [ %.110271800, %bb.me ], [ null, %bb.md ], [ %.110271800, %bb.ma ], [ %.110271800, %bb.lz ], [ %.110271800, %bb.ml ], [ null, %bb.mk ], [ %.110271800, %bb.mh ], [ %.110271800, %bb.mg ], [ %.110271800, %bb.mf ], [ null, %bb.ja ], [ %i.anb, %bb.lh ], [ %.110271800, %bb.kj ], [ %.110271800, %bb.kd ], [ %.110271800, %bb.lr ], [ %.110271800, %bb.ju ], [ %.110271800, %bb.kb ], [ %.110271800, %.thread ], [ %.110271800, %bb.jx ], [ %.110271800, %.critedge1216 ], [ %.110271800, %bb.lj ], [ %.110271800, %bb.kn ], [ %.110271800, %bb.km ], [ %.110271800, %bb.lc ], [ %.110271800, %html_tag_arg_value.exit1409.thread ], [ %.110271800, %bb.ld ]
  %.61021 = phi ptr [ %.210171802, %bb.kk ], [ %.41019, %bb.iy ], [ %.210171802, %html_tag_arg_value.exit1381 ], [ %spec.select1221, %html_tag_arg_value.exit1402 ], [ %.39761807, %bb.kz ], [ %spec.select1221, %bb.ky ], [ %spec.select1221, %bb.kp ], [ %spec.select1221, %html_tag_arg_value.exit1388 ], [ %.41019, %bb.iz ], [ %spec.select1221, %bb.lx ], [ %spec.select1221, %bb.lw ], [ %spec.select1221, %bb.lt ], [ %spec.select1221, %html_tag_arg_value.exit1416 ], [ %spec.select1221, %bb.me ], [ %spec.select1221, %bb.md ], [ %spec.select1221, %bb.ma ], [ %spec.select1221, %bb.lz ], [ %spec.select1221, %bb.ml ], [ %spec.select1221, %bb.mk ], [ %spec.select1221, %bb.mh ], [ %spec.select1221, %bb.mg ], [ %spec.select1221, %bb.mf ], [ %.41019, %bb.ja ], [ %spec.select1221, %bb.lh ], [ %.210171802, %bb.kj ], [ %.210171802, %bb.kd ], [ %spec.select1221, %bb.lr ], [ %.210171802, %bb.ju ], [ %.210171802, %bb.kb ], [ %.210171802, %.thread ], [ %.210171802, %bb.jx ], [ %.210171802, %.critedge1216 ], [ %spec.select1221, %bb.lj ], [ %spec.select1221, %bb.kn ], [ %spec.select1221, %bb.km ], [ %spec.select1221, %bb.lc ], [ %spec.select1221, %html_tag_arg_value.exit1409.thread ], [ %spec.select1221, %bb.ld ]
  %.61011 = phi i32 [ %.110061803, %bb.kk ], [ %.31008, %bb.iy ], [ %.110061803, %html_tag_arg_value.exit1381 ], [ %.110061803, %html_tag_arg_value.exit1402 ], [ %i.ama, %bb.kz ], [ %.51010, %bb.ky ], [ %.110061803, %bb.kp ], [ %.110061803, %html_tag_arg_value.exit1388 ], [ %.31008, %bb.iz ], [ %.110061803, %bb.lx ], [ %.110061803, %bb.lw ], [ %.110061803, %bb.lt ], [ %.110061803, %html_tag_arg_value.exit1416 ], [ %.110061803, %bb.me ], [ %.110061803, %bb.md ], [ %.110061803, %bb.ma ], [ %.110061803, %bb.lz ], [ %.110061803, %bb.ml ], [ %.110061803, %bb.mk ], [ %.110061803, %bb.mh ], [ %.110061803, %bb.mg ], [ %.110061803, %bb.mf ], [ %.31008, %bb.ja ], [ %.110061803, %bb.lh ], [ %.110061803, %bb.kj ], [ %.110061803, %bb.kd ], [ %.110061803, %bb.lr ], [ %.110061803, %bb.ju ], [ %.110061803, %bb.kb ], [ %.110061803, %.thread ], [ %.110061803, %bb.jx ], [ %.110061803, %.critedge1216 ], [ %.110061803, %bb.lj ], [ %.110061803, %bb.kn ], [ %.110061803, %bb.km ], [ %.110061803, %bb.lc ], [ %.110061803, %html_tag_arg_value.exit1409.thread ], [ %.110061803, %bb.ld ]
  %.5966 = phi i32 [ 1, %bb.kk ], [ 1, %bb.iy ], [ 1, %html_tag_arg_value.exit1381 ], [ 1, %html_tag_arg_value.exit1402 ], [ 1, %bb.kz ], [ 1, %bb.ky ], [ 1, %bb.kp ], [ 1, %html_tag_arg_value.exit1388 ], [ 1, %bb.iz ], [ 1, %bb.lx ], [ 1, %bb.lw ], [ 1, %bb.lt ], [ 1, %html_tag_arg_value.exit1416 ], [ 1, %bb.me ], [ 1, %bb.md ], [ 1, %bb.ma ], [ 1, %bb.lz ], [ 1, %bb.ml ], [ 1, %bb.mk ], [ 1, %bb.mh ], [ 1, %bb.mg ], [ 1, %bb.mf ], [ 1, %bb.ja ], [ 1, %bb.lh ], [ 1, %bb.kj ], [ 1, %bb.kd ], [ 1, %bb.lr ], [ %.4965, %bb.ju ], [ 1, %bb.kb ], [ 1, %.thread ], [ 1, %bb.jx ], [ %.4965, %.critedge1216 ], [ 1, %bb.lj ], [ 1, %bb.kn ], [ 1, %bb.km ], [ 1, %bb.lc ], [ 1, %html_tag_arg_value.exit1409.thread ], [ 1, %bb.ld ]
  %.4946 = phi i32 [ %.19431811, %bb.kk ], [ %.2944, %bb.iy ], [ %.19431811, %html_tag_arg_value.exit1381 ], [ %.19431811, %html_tag_arg_value.exit1402 ], [ %.19431811, %bb.kz ], [ %.19431811, %bb.ky ], [ %.19431811, %bb.kp ], [ %.19431811, %html_tag_arg_value.exit1388 ], [ %.2944, %bb.iz ], [ %.19431811, %bb.lx ], [ %.19431811, %bb.lw ], [ %.19431811, %bb.lt ], [ %.19431811, %html_tag_arg_value.exit1416 ], [ %.19431811, %bb.me ], [ %.19431811, %bb.md ], [ %.19431811, %bb.ma ], [ %.19431811, %bb.lz ], [ %.19431811, %bb.ml ], [ %.19431811, %bb.mk ], [ %.19431811, %bb.mh ], [ %.19431811, %bb.mg ], [ %.19431811, %bb.mf ], [ %.2944, %bb.ja ], [ %.19431811, %bb.lh ], [ %.19431811, %bb.kj ], [ %.19431811, %bb.kd ], [ %.19431811, %bb.lr ], [ %.3945, %bb.ju ], [ %.19431811, %bb.kb ], [ %.19431811, %.thread ], [ %.19431811, %bb.jx ], [ %.3945, %.critedge1216 ], [ %.19431811, %bb.lj ], [ %.19431811, %bb.kn ], [ %.19431811, %bb.km ], [ %.19431811, %bb.lc ], [ %.19431811, %html_tag_arg_value.exit1409.thread ], [ %.19431811, %bb.ld ]
  call void @html_tag_arg_free(ptr noundef nonnull %5)
  br label %.backedge

bb.mm:                                            ; preds = %bb.al
  %i.aqp = icmp eq i8 %.pre19151917, 35
  br i1 %i.aqp, label %bb.mn, label %bb.mo

bb.mn:                                            ; preds = %bb.mm
  %i.aqq = getelementptr inbounds nuw i8, ptr %.39761807, i64 1
  br label %.backedge

bb.mo:                                            ; preds = %bb.mm
  br i1 %i.k, label %.backedge, label %bb.mp

bb.mp:                                            ; preds = %bb.mo
  %i.aqr = icmp eq i32 %.19621809, 9
  %i.aqs = icmp slt i32 %.19321813, 1024
  %or.cond26 = select i1 %i.aqr, i1 %i.aqs, i1 false
  br i1 %or.cond26, label %bb.mq, label %bb.mr

bb.mq:                                            ; preds = %bb.mp
  %i.aqt = add nsw i32 %.19321813, 1
  %i.aqu = sext i32 %.19321813 to i64
  %i.aqv = getelementptr inbounds i8, ptr %i.d, i64 %i.aqu
  store i8 38, ptr %i.aqv, align 1, !tbaa !15
  br label %bb.mr

bb.mr:                                            ; preds = %bb.mq, %bb.mp
  %.11 = phi i32 [ %i.aqt, %bb.mq ], [ %.19321813, %bb.mp ] ; 2 uses
  br i1 %.not.i1531, label %bb.mu, label %bb.ms

bb.ms:                                            ; preds = %bb.mr
  %i.aqw = load i32, ptr %i.av, align 4, !tbaa !41 ; 2 uses
  %i.aqx = icmp eq i32 %i.aqw, 8192
  br i1 %i.aqx, label %html_output_flush.exit.i1420, label %bb.mt

html_output_flush.exit.i1420:                     ; preds = %bb.ms
  %i.aqy = load i32, ptr %.0994, align 4, !tbaa !39
  %i.aqz = call i32 @cli_writen(i32 noundef %i.aqy, ptr noundef nonnull %i.aw, i32 noundef 8192) #15 ; 0 uses
  br label %bb.mt

bb.mt:                                            ; preds = %html_output_flush.exit.i1420, %bb.ms
  %i.ara = phi i32 [ 0, %html_output_flush.exit.i1420 ], [ %i.aqw, %bb.ms ] ; 2 uses
  %i.arb = add nsw i32 %i.ara, 1
  store i32 %i.arb, ptr %i.av, align 4, !tbaa !41
  %i.arc = sext i32 %i.ara to i64
  %i.ard = getelementptr inbounds i8, ptr %i.aw, i64 %i.arc
  store i8 38, ptr %i.ard, align 1, !tbaa !15
  br label %bb.mu

bb.mu:                                            ; preds = %bb.mt, %bb.mr
  br i1 %.not12.i1532, label %.backedge, label %bb.mv

bb.mv:                                            ; preds = %bb.mu
  %i.are = load i32, ptr %i.ax, align 4, !tbaa !41 ; 2 uses
  %i.arf = icmp eq i32 %i.are, 8192
  br i1 %i.arf, label %html_output_flush.exit13.i1419, label %bb.mw

html_output_flush.exit13.i1419:                   ; preds = %bb.mv
  %i.arg = load i32, ptr %.0996, align 4, !tbaa !39
  %i.arh = call i32 @cli_writen(i32 noundef %i.arg, ptr noundef nonnull %i.ay, i32 noundef 8192) #15 ; 0 uses
  br label %bb.mw

bb.mw:                                            ; preds = %html_output_flush.exit13.i1419, %bb.mv
  %i.ari = phi i32 [ 0, %html_output_flush.exit13.i1419 ], [ %i.are, %bb.mv ] ; 2 uses
  %i.arj = add nsw i32 %i.ari, 1
  store i32 %i.arj, ptr %i.ax, align 4, !tbaa !41
  %i.ark = sext i32 %i.ari to i64
  %i.arl = getelementptr inbounds i8, ptr %i.ay, i64 %i.ark
  store i8 38, ptr %i.arl, align 1, !tbaa !15
  br label %.backedge

bb.mx:                                            ; preds = %bb.al
  %i.arm = icmp eq i8 %.pre19151917, 59
  br i1 %i.arm, label %bb.my, label %bb.oe

bb.my:                                            ; preds = %bb.mx
  %i.arn = getelementptr inbounds nuw i8, ptr %i.e, i64 %.110331799
  store i8 0, ptr %i.arn, align 1, !tbaa !15
  %i.aro = call ptr @entity_norm(ptr noundef nonnull %6, ptr noundef nonnull %i.e) #15 ; 5 uses
  %.not1130 = icmp eq ptr %i.aro, null
  br i1 %.not1130, label %bb.nh, label %.preheader1675

.preheader1675:                                   ; preds = %bb.my
  %char01875 = load i8, ptr %i.aro, align 1
  %.not1876 = icmp eq i8 %char01875, 0
  br i1 %.not1876, label %._crit_edge, label %.lr.ph1787

.lr.ph1787:                                       ; preds = %.preheader1675
  %i.arp = tail call ptr @__ctype_tolower_loc() #16
  %i.arq = icmp eq i32 %.19621809, 9
  br label %bb.mz

bb.mz:                                            ; preds = %.lr.ph1787, %bb.ng
  %.121786 = phi i32 [ %.19321813, %.lr.ph1787 ], [ %.13, %bb.ng ] ; 4 uses
  %.010391785 = phi i64 [ 0, %.lr.ph1787 ], [ %i.ass, %bb.ng ] ; 2 uses
  %i.arr = load ptr, ptr %i.arp, align 8, !tbaa !44
  %i.ars = getelementptr inbounds nuw i8, ptr %i.aro, i64 %.010391785
  %i.art = load i8, ptr %i.ars, align 1, !tbaa !15
  %i.aru = zext i8 %i.art to i64
  %i.arv = getelementptr inbounds nuw [4 x i8], ptr %i.arr, i64 %i.aru
  %i.arw = load i32, ptr %i.arv, align 4, !tbaa !4
  %i.arx = trunc i32 %i.arw to i8                 ; 3 uses
  br i1 %.not.i1531, label %bb.nc, label %bb.na

bb.na:                                            ; preds = %bb.mz
  %i.ary = load i32, ptr %i.av, align 4, !tbaa !41 ; 2 uses
  %i.arz = icmp eq i32 %i.ary, 8192
  br i1 %i.arz, label %html_output_flush.exit.i1425, label %bb.nb

html_output_flush.exit.i1425:                     ; preds = %bb.na
  %i.asa = load i32, ptr %.0994, align 4, !tbaa !39
  %i.asb = call i32 @cli_writen(i32 noundef %i.asa, ptr noundef nonnull %i.aw, i32 noundef 8192) #15 ; 0 uses
  br label %bb.nb

bb.nb:                                            ; preds = %html_output_flush.exit.i1425, %bb.na
  %i.asc = phi i32 [ 0, %html_output_flush.exit.i1425 ], [ %i.ary, %bb.na ] ; 2 uses
  %i.asd = add nsw i32 %i.asc, 1
  store i32 %i.asd, ptr %i.av, align 4, !tbaa !41
  %i.ase = sext i32 %i.asc to i64
  %i.asf = getelementptr inbounds i8, ptr %i.aw, i64 %i.ase
  store i8 %i.arx, ptr %i.asf, align 1, !tbaa !15
  br label %bb.nc

bb.nc:                                            ; preds = %bb.nb, %bb.mz
  br i1 %.not12.i1532, label %html_output_c.exit1426, label %bb.nd

bb.nd:                                            ; preds = %bb.nc
  %i.asg = load i32, ptr %i.ax, align 4, !tbaa !41 ; 2 uses
  %i.ash = icmp eq i32 %i.asg, 8192
  br i1 %i.ash, label %html_output_flush.exit13.i1424, label %bb.ne

html_output_flush.exit13.i1424:                   ; preds = %bb.nd
  %i.asi = load i32, ptr %.0996, align 4, !tbaa !39
  %i.asj = call i32 @cli_writen(i32 noundef %i.asi, ptr noundef nonnull %i.ay, i32 noundef 8192) #15 ; 0 uses
  br label %bb.ne

bb.ne:                                            ; preds = %html_output_flush.exit13.i1424, %bb.nd
  %i.ask = phi i32 [ 0, %html_output_flush.exit13.i1424 ], [ %i.asg, %bb.nd ] ; 2 uses
  %i.asl = add nsw i32 %i.ask, 1
  store i32 %i.asl, ptr %i.ax, align 4, !tbaa !41
  %i.asm = sext i32 %i.ask to i64
  %i.asn = getelementptr inbounds i8, ptr %i.ay, i64 %i.asm
  store i8 %i.arx, ptr %i.asn, align 1, !tbaa !15
  br label %html_output_c.exit1426

html_output_c.exit1426:                           ; preds = %bb.nc, %bb.ne
  %i.aso = icmp slt i32 %.121786, 1024
  %or.cond28 = select i1 %i.arq, i1 %i.aso, i1 false
  br i1 %or.cond28, label %bb.nf, label %bb.ng

bb.nf:                                            ; preds = %html_output_c.exit1426
  %i.asp = add nsw i32 %.121786, 1
  %i.asq = sext i32 %.121786 to i64
  %i.asr = getelementptr inbounds i8, ptr %i.d, i64 %i.asq
  store i8 %i.arx, ptr %i.asr, align 1, !tbaa !15
  br label %bb.ng

bb.ng:                                            ; preds = %bb.nf, %html_output_c.exit1426
  %.13 = phi i32 [ %i.asp, %bb.nf ], [ %.121786, %html_output_c.exit1426 ] ; 2 uses
  %i.ass = add nuw i64 %.010391785, 1             ; 2 uses
  %i.ast = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aro) #17
  %i.asu = icmp ult i64 %i.ass, %i.ast
  br i1 %i.asu, label %bb.mz, label %._crit_edge, !llvm.loop !54

._crit_edge:                                      ; preds = %bb.ng, %.preheader1675
  %.12.lcssa = phi i32 [ %.19321813, %.preheader1675 ], [ %.13, %bb.ng ]
  call void @free(ptr noundef nonnull %i.aro) #15
  br label %html_output_c.exit1441

bb.nh:                                            ; preds = %bb.my
  br i1 %.not.i1531, label %bb.nk, label %bb.ni

bb.ni:                                            ; preds = %bb.nh
  %i.asv = load i32, ptr %i.av, align 4, !tbaa !41 ; 2 uses
  %i.asw = icmp eq i32 %i.asv, 8192
  br i1 %i.asw, label %html_output_flush.exit.i1430, label %bb.nj

html_output_flush.exit.i1430:                     ; preds = %bb.ni
  %i.asx = load i32, ptr %.0994, align 4, !tbaa !39
  %i.asy = call i32 @cli_writen(i32 noundef %i.asx, ptr noundef nonnull %i.aw, i32 noundef 8192) #15 ; 0 uses
  br label %bb.nj

bb.nj:                                            ; preds = %html_output_flush.exit.i1430, %bb.ni
  %i.asz = phi i32 [ 0, %html_output_flush.exit.i1430 ], [ %i.asv, %bb.ni ] ; 2 uses
  %i.ata = add nsw i32 %i.asz, 1
  store i32 %i.ata, ptr %i.av, align 4, !tbaa !41
  %i.atb = sext i32 %i.asz to i64
  %i.atc = getelementptr inbounds i8, ptr %i.aw, i64 %i.atb
  store i8 38, ptr %i.atc, align 1, !tbaa !15
  br label %bb.nk

bb.nk:                                            ; preds = %bb.nj, %bb.nh
  br i1 %.not12.i1532, label %html_output_c.exit1431, label %bb.nl

bb.nl:                                            ; preds = %bb.nk
  %i.atd = load i32, ptr %i.ax, align 4, !tbaa !41 ; 2 uses
  %i.ate = icmp eq i32 %i.atd, 8192
  br i1 %i.ate, label %html_output_flush.exit13.i1429, label %bb.nm

end_hunk_2
