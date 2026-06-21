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
  %5 = alloca %struct.tag_arguments_tag, align 8  ; 21 uses
  %6 = alloca %struct.entity_conv, align 8        ; 9 uses
  %i.e = alloca [1025 x i8], align 16             ; 10 uses
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
  %.0996 = phi ptr [ %i.ac, %bb.aa ], [ null, %bb.m ] ; 55 uses
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
  %.not.i1538 = icmp eq ptr %.0999, null          ; 18 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0999, i64 8196 ; 56 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0999, i64 4 ; 48 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %.not1132 = icmp eq ptr %3, null                ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 10 uses
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
  %i.zd = zext i8 %.pre19141916 to i64
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
  %.pre1914.pre = load i8, ptr %.39761807, align 1, !tbaa !15
  br label %html_output_c.exit1345

html_output_c.exit1345:                           ; preds = %bb.il, %bb.in
  %.pre1914 = phi i8 [ %.pre19141916, %bb.il ], [ %.pre1914.pre, %bb.in ] ; 3 uses
  %.not1180 = icmp eq i32 %.19431811, 0
  br i1 %.not1180, label %html_output_c.exit1348, label %bb.io

bb.io:                                            ; preds = %html_output_c.exit1345
  %i.zp = load ptr, ptr %i.zb, align 8, !tbaa !44
  %i.zq = zext i8 %.pre1914 to i64
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
  %i.aac = phi i8 [ %.pre, %bb.iq ], [ %.pre1914, %bb.io ], [ %.pre1914, %html_output_c.exit1345 ]
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
  br i1 %i.acc, label %bb.jc, label %bb.jy

bb.jc:                                            ; preds = %bb.jb
  %i.acd = load i32, ptr %5, align 8, !tbaa !24   ; 3 uses
  %i.ace = icmp sgt i32 %i.acd, 0                 ; 2 uses
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
  br i1 %.not.i1538, label %html_output_str.exit.i, label %bb.jj

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

html_output_str.exit.i:                           ; preds = %bb.jn, %html_output_flush.exit15.i.i, %.critedge1216
  br i1 %i.ace, label %.lr.ph58.i, label %._crit_edge59.i

.lr.ph58.i:                                       ; preds = %html_output_str.exit.i
  %i.aed = load ptr, ptr %i.u, align 8
  %i.aee = load ptr, ptr %i.v, align 8
  %7 = zext nneg i32 %i.acd to i64
  br label %bb.jo

bb.jo:                                            ; preds = %html_output_c.exit50.i, %.lr.ph58.i
  %indvars.iv62.i = phi i64 [ 0, %.lr.ph58.i ], [ %indvars.iv.next63.i, %html_output_c.exit50.i ] ; 3 uses
  br i1 %.not.i1538, label %html_output_c.exit50.i, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.aef = load i32, ptr %i.az, align 4, !tbaa !41 ; 2 uses
  %i.aeg = icmp eq i32 %i.aef, 8192
  br i1 %i.aeg, label %html_output_flush.exit.i32.i, label %bb.jq

html_output_flush.exit.i32.i:                     ; preds = %bb.jp
  %i.aeh = load i32, ptr %.0999, align 4, !tbaa !39
  %i.aei = call i32 @cli_writen(i32 noundef %i.aeh, ptr noundef nonnull %i.ba, i32 noundef 8192) #15 ; 0 uses
  br label %bb.jq

bb.jq:                                            ; preds = %html_output_flush.exit.i32.i, %bb.jp
  %i.aej = phi i32 [ 0, %html_output_flush.exit.i32.i ], [ %i.aef, %bb.jp ] ; 2 uses
  %i.aek = add nsw i32 %i.aej, 1
  store i32 %i.aek, ptr %i.az, align 4, !tbaa !41
  %i.ael = sext i32 %i.aej to i64
  %i.aem = getelementptr inbounds i8, ptr %i.ba, i64 %i.ael
  store i8 32, ptr %i.aem, align 1, !tbaa !15
  %i.aen = getelementptr inbounds nuw [8 x i8], ptr %i.aed, i64 %indvars.iv62.i
  %i.aeo = load ptr, ptr %i.aen, align 8, !tbaa !30 ; 3 uses
  %i.aep = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aeo) #17 ; 2 uses
  %i.aeq = trunc i64 %i.aep to i32                ; 5 uses
  %i.aer = load i32, ptr %i.az, align 4, !tbaa !41 ; 5 uses
  %i.aes = add nsw i32 %i.aer, %i.aeq
  %i.aet = icmp sgt i32 %i.aes, 8191
  %i.aeu = icmp sgt i32 %i.aer, 0                 ; 2 uses
  %or.cond.i35.i = and i1 %i.aeu, %i.aet
  br i1 %or.cond.i35.i, label %html_output_flush.exit.thread.i38.i, label %html_output_flush.exit.i36.i

html_output_flush.exit.i36.i:                     ; preds = %bb.jq
  %i.aev = icmp sgt i32 %i.aeq, 8191
  br i1 %i.aev, label %bb.jr, label %bb.jt

html_output_flush.exit.thread.i38.i:              ; preds = %bb.jq
  %i.aew = load i32, ptr %.0999, align 4, !tbaa !39
  %i.aex = call i32 @cli_writen(i32 noundef %i.aew, ptr noundef nonnull %i.ba, i32 noundef %i.aer) #15 ; 0 uses
  store i32 0, ptr %i.az, align 4, !tbaa !41
  %i.aey = icmp sgt i32 %i.aeq, 8191
  br i1 %i.aey, label %html_output_flush.exit15.i37.i, label %bb.jt

bb.jr:                                            ; preds = %html_output_flush.exit.i36.i
  br i1 %i.aeu, label %bb.js, label %html_output_flush.exit15.i37.i

bb.js:                                            ; preds = %bb.jr
  %i.aez = load i32, ptr %.0999, align 4, !tbaa !39
  %i.afa = call i32 @cli_writen(i32 noundef %i.aez, ptr noundef nonnull %i.ba, i32 noundef %i.aer) #15 ; 0 uses
  store i32 0, ptr %i.az, align 4, !tbaa !41
  br label %html_output_flush.exit15.i37.i

html_output_flush.exit15.i37.i:                   ; preds = %bb.js, %bb.jr, %html_output_flush.exit.thread.i38.i
  %i.afb = load i32, ptr %.0999, align 4, !tbaa !39
  %i.afc = call i32 @cli_writen(i32 noundef %i.afb, ptr noundef nonnull %i.aeo, i32 noundef %i.aeq) #15 ; 0 uses
  br label %html_output_str.exit39.i

bb.jt:                                            ; preds = %html_output_flush.exit.thread.i38.i, %html_output_flush.exit.i36.i
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

html_output_str.exit39.i:                         ; preds = %bb.jt, %html_output_flush.exit15.i37.i
  %i.afj = getelementptr inbounds nuw [8 x i8], ptr %i.aee, i64 %indvars.iv62.i ; 3 uses
  %i.afk = load ptr, ptr %i.afj, align 8, !tbaa !30
  %.not.i1363 = icmp eq ptr %i.afk, null
  br i1 %.not.i1363, label %html_output_c.exit50.i, label %bb.ju

bb.ju:                                            ; preds = %html_output_str.exit39.i
  %i.afl = load i32, ptr %i.az, align 4, !tbaa !41 ; 3 uses
  %i.afm = icmp sgt i32 %i.afl, 8189
  br i1 %i.afm, label %html_output_flush.exit.thread.i43.i, label %html_output_str.exit44.thread.i

html_output_flush.exit.thread.i43.i:              ; preds = %bb.ju
  %i.afn = load i32, ptr %.0999, align 4, !tbaa !39
  %i.afo = call i32 @cli_writen(i32 noundef %i.afn, ptr noundef nonnull %i.ba, i32 noundef %i.afl) #15 ; 0 uses
  store i32 0, ptr %i.az, align 4, !tbaa !41
  br label %html_output_str.exit44.thread.i

html_output_str.exit44.thread.i:                  ; preds = %html_output_flush.exit.thread.i43.i, %bb.ju
  %i.afp = phi i32 [ 0, %html_output_flush.exit.thread.i43.i ], [ %i.afl, %bb.ju ]
  %i.afq = sext i32 %i.afp to i64
  %i.afr = getelementptr inbounds i8, ptr %i.ba, i64 %i.afq
  store i16 8765, ptr %i.afr, align 1
  %i.afs = load i32, ptr %i.az, align 4, !tbaa !41
  %i.aft = add nsw i32 %i.afs, 2                  ; 2 uses
  store i32 %i.aft, ptr %i.az, align 4, !tbaa !41
  %.pre65.i = load ptr, ptr %i.afj, align 8, !tbaa !30
  %i.afu = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.pre65.i) #17 ; 2 uses
  %i.afv = trunc i64 %i.afu to i32
  %i.afw = icmp sgt i32 %i.afv, 0
  br i1 %i.afw, label %.lr.ph.split.preheader.i, label %._crit_edge.thread80.i

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
  br i1 %exitcond.not.i1367, label %._crit_edge.thread80.ithread-pre-split, label %.lr.ph.split.i, !llvm.loop !48

._crit_edge.thread80.ithread-pre-split:           ; preds = %html_output_c.exit47.i
  %.pr = load i32, ptr %i.az, align 4, !tbaa !41
  br label %._crit_edge.thread80.i

._crit_edge.thread80.i:                           ; preds = %._crit_edge.thread80.ithread-pre-split, %html_output_str.exit44.thread.i
  %i.ago = phi i32 [ %.pr, %._crit_edge.thread80.ithread-pre-split ], [ %i.aft, %html_output_str.exit44.thread.i ] ; 2 uses
  %i.agp = icmp eq i32 %i.ago, 8192
  br i1 %i.agp, label %html_output_flush.exit.i49.i, label %bb.jv

html_output_flush.exit.i49.i:                     ; preds = %._crit_edge.thread80.i
  %i.agq = load i32, ptr %.0999, align 4, !tbaa !39
  %i.agr = call i32 @cli_writen(i32 noundef %i.agq, ptr noundef nonnull %i.ba, i32 noundef 8192) #15 ; 0 uses
  br label %bb.jv

bb.jv:                                            ; preds = %html_output_flush.exit.i49.i, %._crit_edge.thread80.i
  %i.ags = phi i32 [ 0, %html_output_flush.exit.i49.i ], [ %i.ago, %._crit_edge.thread80.i ] ; 2 uses
  %i.agt = add nsw i32 %i.ags, 1
  store i32 %i.agt, ptr %i.az, align 4, !tbaa !41
  %i.agu = sext i32 %i.ags to i64
  %i.agv = getelementptr inbounds i8, ptr %i.ba, i64 %i.agu
  store i8 34, ptr %i.agv, align 1, !tbaa !15
  br label %html_output_c.exit50.i

html_output_c.exit50.i:                           ; preds = %bb.jv, %html_output_str.exit39.i, %bb.jo
  %indvars.iv.next63.i = add nuw nsw i64 %indvars.iv62.i, 1 ; 2 uses
  %exitcond1912.not = icmp eq i64 %indvars.iv.next63.i, %7
  br i1 %exitcond1912.not, label %._crit_edge59.i, label %bb.jo, !llvm.loop !49

._crit_edge59.i:                                  ; preds = %html_output_c.exit50.i, %html_output_str.exit.i
  br i1 %.not.i1538, label %.critedge1220, label %bb.jw

bb.jw:                                            ; preds = %._crit_edge59.i
  %i.agw = load i32, ptr %i.az, align 4, !tbaa !41 ; 2 uses
  %i.agx = icmp eq i32 %i.agw, 8192
  br i1 %i.agx, label %html_output_flush.exit.i52.i, label %bb.jx

html_output_flush.exit.i52.i:                     ; preds = %bb.jw
  %i.agy = load i32, ptr %.0999, align 4, !tbaa !39
  %i.agz = call i32 @cli_writen(i32 noundef %i.agy, ptr noundef nonnull %i.ba, i32 noundef 8192) #15 ; 0 uses
  br label %bb.jx

bb.jx:                                            ; preds = %html_output_flush.exit.i52.i, %bb.jw
  %i.aha = phi i32 [ 0, %html_output_flush.exit.i52.i ], [ %i.agw, %bb.jw ] ; 2 uses
  %i.ahb = add nsw i32 %i.aha, 1
  store i32 %i.ahb, ptr %i.az, align 4, !tbaa !41
  %i.ahc = sext i32 %i.aha to i64
  %i.ahd = getelementptr inbounds i8, ptr %i.ba, i64 %i.ahc
  store i8 62, ptr %i.ahd, align 1, !tbaa !15
  br label %.critedge1220

bb.jy:                                            ; preds = %bb.jb
  br i1 %i.k, label %bb.jz, label %bb.kn

bb.jz:                                            ; preds = %bb.jy
  %i.ahe = load i32, ptr %i.b, align 16
  %i.ahf = xor i32 %i.ahe, 1635018093
  %i.ahg = getelementptr i8, ptr %i.b, i64 4
  %i.ahh = load i8, ptr %i.ahg, align 4
  %i.ahi = zext i8 %i.ahh to i32
  %i.ahj = or i32 %i.ahf, %i.ahi
  %i.ahk = icmp ne i32 %i.ahj, 0
  %i.ahl = zext i1 %i.ahk to i32
  %i.ahm = icmp eq i32 %i.ahl, 0
  br i1 %i.ahm, label %bb.ka, label %bb.kn

bb.ka:                                            ; preds = %bb.jz
  %i.ahn = load i32, ptr %5, align 8, !tbaa !24   ; 2 uses
  %i.aho = icmp sgt i32 %i.ahn, 0
  br i1 %i.aho, label %.lr.ph.i1369, label %.critedge1220

.lr.ph.i1369:                                     ; preds = %bb.ka
  %i.ahp = load ptr, ptr %i.u, align 8, !tbaa !29 ; 2 uses
  %wide.trip.count.i1370 = zext nneg i32 %i.ahn to i64 ; 2 uses
  br label %bb.kc

bb.kb:                                            ; preds = %bb.kc
  %indvars.iv.next.i1372 = add nuw nsw i64 %indvars.iv.i1371, 1 ; 2 uses
  %exitcond.not.i1373 = icmp eq i64 %indvars.iv.next.i1372, %wide.trip.count.i1370
  br i1 %exitcond.not.i1373, label %.lr.ph.i1376, label %bb.kc, !llvm.loop !46

bb.kc:                                            ; preds = %bb.kb, %.lr.ph.i1369
  %indvars.iv.i1371 = phi i64 [ 0, %.lr.ph.i1369 ], [ %indvars.iv.next.i1372, %bb.kb ] ; 3 uses
  %i.ahq = getelementptr inbounds nuw [8 x i8], ptr %i.ahp, i64 %indvars.iv.i1371
  %i.ahr = load ptr, ptr %i.ahq, align 8, !tbaa !30
  %i.ahs = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ahr, ptr noundef nonnull dereferenceable(11) @.str.28) #17
  %i.aht = icmp eq i32 %i.ahs, 0
  br i1 %i.aht, label %bb.kd, label %bb.kb

bb.kd:                                            ; preds = %bb.kc
  %i.ahu = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.ahv = getelementptr inbounds nuw [8 x i8], ptr %i.ahu, i64 %indvars.iv.i1371
  %i.ahw = load ptr, ptr %i.ahv, align 8, !tbaa !30
  br label %.lr.ph.i1376

.lr.ph.i1376:                                     ; preds = %bb.kb, %bb.kd
  %.08.i1368 = phi ptr [ %i.ahw, %bb.kd ], [ null, %bb.kb ] ; 2 uses
  br label %bb.kf

bb.ke:                                            ; preds = %bb.kf
  %indvars.iv.next.i1379 = add nuw nsw i64 %indvars.iv.i1378, 1 ; 2 uses
  %exitcond.not.i1380 = icmp eq i64 %indvars.iv.next.i1379, %wide.trip.count.i1370
  br i1 %exitcond.not.i1380, label %.critedge1220, label %bb.kf, !llvm.loop !46

bb.kf:                                            ; preds = %bb.ke, %.lr.ph.i1376
  %indvars.iv.i1378 = phi i64 [ 0, %.lr.ph.i1376 ], [ %indvars.iv.next.i1379, %bb.ke ] ; 3 uses
  %i.ahx = getelementptr inbounds nuw [8 x i8], ptr %i.ahp, i64 %indvars.iv.i1378
  %i.ahy = load ptr, ptr %i.ahx, align 8, !tbaa !30
  %i.ahz = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ahy, ptr noundef nonnull dereferenceable(8) @.str.29) #17
  %i.aia = icmp eq i32 %i.ahz, 0
  br i1 %i.aia, label %html_tag_arg_value.exit1381, label %bb.ke

html_tag_arg_value.exit1381:                      ; preds = %bb.kf
  %i.aib = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.aic = getelementptr inbounds nuw [8 x i8], ptr %i.aib, i64 %indvars.iv.i1378
  %i.aid = load ptr, ptr %i.aic, align 8, !tbaa !30 ; 7 uses
  %i.aie = icmp ne ptr %.08.i1368, null
  %i.aif = icmp ne ptr %i.aid, null
  %or.cond12 = select i1 %i.aie, i1 %i.aif, i1 false
  br i1 %or.cond12, label %bb.kg, label %.critedge1220

bb.kg:                                            ; preds = %html_tag_arg_value.exit1381
  %i.aig = call i32 @strcasecmp(ptr noundef nonnull %.08.i1368, ptr noundef nonnull @.str.30) #17
  %i.aih = icmp eq i32 %i.aig, 0
  br i1 %i.aih, label %bb.kh, label %.critedge1220

bb.kh:                                            ; preds = %bb.kg
  %i.aii = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aid) #17 ; 6 uses
  %i.aij = add i64 %i.aii, 1
  %i.aik = call ptr @cli_malloc(i64 noundef %i.aij) #15 ; 10 uses
  %.not1166.not = icmp eq ptr %i.aik, null
  br i1 %.not1166.not, label %.critedge1219, label %.preheader1671

.preheader1671:                                   ; preds = %bb.kh
  %.not1878 = icmp eq i64 %i.aii, 0
  br i1 %.not1878, label %._crit_edge1797, label %.lr.ph1796

.lr.ph1796:                                       ; preds = %.preheader1671
  %i.ail = tail call ptr @__ctype_tolower_loc() #16 ; 5 uses
  %xtraiter = and i64 %i.aii, 3                   ; 3 uses
  %i.aim = icmp ult i64 %i.aii, 4
  br i1 %i.aim, label %.epil.preheader, label %.lr.ph1796.new

.lr.ph1796.new:                                   ; preds = %.lr.ph1796
  %unroll_iter = and i64 %i.aii, -4
  br label %bb.ki

bb.ki:                                            ; preds = %bb.ki, %.lr.ph1796.new
  %.010411795 = phi i64 [ 0, %.lr.ph1796.new ], [ %i.ajw, %bb.ki ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph1796.new ], [ %niter.next.3, %bb.ki ]
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
  br i1 %niter.ncmp.3, label %._crit_edge1797.loopexit.unr-lcssa, label %bb.ki, !llvm.loop !50

._crit_edge1797.loopexit.unr-lcssa:               ; preds = %bb.ki
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge1797, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge1797.loopexit.unr-lcssa, %.lr.ph1796
  %.010411795.epil.init = phi i64 [ 0, %.lr.ph1796 ], [ %i.ajw, %._crit_edge1797.loopexit.unr-lcssa ]
  %lcmp.mod2215 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod2215)
  br label %bb.kj

bb.kj:                                            ; preds = %bb.kj, %.epil.preheader
  %.010411795.epil = phi i64 [ %.010411795.epil.init, %.epil.preheader ], [ %i.akf, %bb.kj ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.kj ]
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
  br i1 %epil.iter.cmp.not, label %._crit_edge1797, label %bb.kj, !llvm.loop !51

._crit_edge1797:                                  ; preds = %._crit_edge1797.loopexit.unr-lcssa, %bb.kj, %.preheader1671
  %i.akg = getelementptr inbounds nuw i8, ptr %i.aik, i64 %i.aii
  store i8 0, ptr %i.akg, align 1, !tbaa !15
  %i.akh = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.aik, ptr noundef nonnull dereferenceable(1) @.str.31) #17 ; 2 uses
  %.not1167 = icmp eq ptr %i.akh, null
  br i1 %.not1167, label %.thread, label %.preheader1670

end_hunk_1
