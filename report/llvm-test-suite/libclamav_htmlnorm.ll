inline.NumInlined: 114
inline.NumDeleted: 5
begin_hunk_0_@cli_readline:bb.a
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
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 13 uses
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph1863, %bb.vv
  %.09011861 = phi i32 [ undef, %.lr.ph1863 ], [ %.1902.lcssa, %bb.vv ] ; 3 uses
  %.09051860 = phi i32 [ undef, %.lr.ph1863 ], [ %.1906.lcssa, %bb.vv ] ; 3 uses
  %.09111859 = phi i32 [ 0, %.lr.ph1863 ], [ %.1912.lcssa, %bb.vv ] ; 3 uses
  %.09171858 = phi i32 [ undef, %.lr.ph1863 ], [ %.1918.lcssa, %bb.vv ] ; 3 uses
  %.09201857 = phi i32 [ 0, %.lr.ph1863 ], [ %.1921.lcssa, %bb.vv ] ; 3 uses
  %.09281856 = phi i32 [ undef, %.lr.ph1863 ], [ %.1929.lcssa, %bb.vv ] ; 3 uses
  %.09311855 = phi i32 [ 0, %.lr.ph1863 ], [ %.1932.lcssa, %bb.vv ] ; 3 uses
  %.09391854 = phi i32 [ undef, %.lr.ph1863 ], [ %.1940.lcssa, %bb.vv ] ; 3 uses
  %.09421853 = phi i32 [ 0, %.lr.ph1863 ], [ %.1943.lcssa, %bb.vv ] ; 3 uses
  %.09501852 = phi i32 [ 1, %.lr.ph1863 ], [ %.1951.lcssa, %bb.vv ] ; 3 uses
  %.09611851 = phi i32 [ 0, %.lr.ph1863 ], [ %.1962.lcssa, %bb.vv ] ; 3 uses
  %.19711850 = phi ptr [ %.0970, %.lr.ph1863 ], [ %.2972, %bb.vv ] ; 5 uses
  %.09831849 = phi i32 [ undef, %.lr.ph1863 ], [ %.1984.lcssa, %bb.vv ] ; 3 uses
  %.09881848 = phi i64 [ undef, %.lr.ph1863 ], [ %.1989.lcssa, %bb.vv ] ; 3 uses
  %.010011847 = phi ptr [ undef, %.lr.ph1863 ], [ %.11002.lcssa, %bb.vv ] ; 3 uses
  %.010051846 = phi i32 [ 0, %.lr.ph1863 ], [ %.11006.lcssa, %bb.vv ] ; 3 uses
  %.010151845 = phi ptr [ null, %.lr.ph1863 ], [ %.21017.lcssa, %bb.vv ]
  %.010261844 = phi ptr [ null, %.lr.ph1863 ], [ %.11027.lcssa, %bb.vv ] ; 3 uses
  %.010321843 = phi i64 [ 0, %.lr.ph1863 ], [ %.11033.lcssa, %bb.vv ] ; 3 uses
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
  %.pre19141916 = phi i8 [ %i.bp, %.backedge ], [ %i.bh, %bb.ag ] ; 46 uses
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
  %i.bo = icmp eq i8 %.pre19141916, 10
  %or.cond1209 = and i1 %.not1114, %i.bo
  br i1 %or.cond1209, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph1821
  store i8 32, ptr %.39761807, align 1, !tbaa !15
  br label %.backedge

.backedge:                                        ; preds = %bb.oz, %bb.al, %bb.am, %html_output_c.exit1348, %.critedge1220, %bb.ra, %html_output_c.exit1498, %bb.vp, %bb.aq, %bb.as, %html_output_c.exit1245, %bb.bo, %html_tag_contents_append.exit, %html_output_c.exit1259, %bb.dc, %bb.db, %bb.cg, %bb.dl, %bb.ei, %bb.du, %html_output_c.exit1272, %html_output_c.exit1292, %bb.mp, %bb.oj, %html_output_c.exit1441, %html_output_c.exit1456, %bb.qi, %bb.pc, %html_output_c.exit1485, %bb.qq, %bb.ap, %bb.bm, %bb.er, %bb.eq, %html_output_c.exit1297, %bb.mq, %bb.qz, %bb.ty, %bb.tz, %html_output_c.exit1572, %html_output_c.exit1575, %html_output_flush.exit, %bb.ux, %bb.ao, %bb.aw, %bb.ay, %bb.mw, %bb.my, %bb.qm, %bb.qo, %bb.rc, %html_output_flush.exit.i1488, %bb.vb, %bb.vd, %bb.vh, %bb.vi, %bb.vk, %bb.ve, %html_output_c.exit1446, %bb.ai, %bb.ak
  %.11033.be = phi i64 [ %.110331799, %bb.ai ], [ %.110331799, %bb.ak ], [ %.110331799, %bb.al ], [ %.110331799, %bb.am ], [ %.110331799, %html_output_flush.exit.i1488 ], [ %.110331799, %bb.vp ], [ %.110331799, %bb.aq ], [ %.110331799, %bb.ao ], [ %.110331799, %bb.as ], [ %.110331799, %bb.vh ], [ %.110331799, %html_tag_contents_append.exit ], [ %.110331799, %bb.ap ], [ %.110331799, %bb.bo ], [ %.110331799, %html_output_c.exit1245 ], [ %.110331799, %bb.cg ], [ %.110331799, %html_output_c.exit1259 ], [ %.110331799, %bb.dc ], [ %.110331799, %bb.db ], [ %.110331799, %html_output_c.exit1272 ], [ %.110331799, %bb.dl ], [ %.110331799, %bb.du ], [ %.110331799, %bb.ei ], [ %.110331799, %html_output_c.exit1292 ], [ %.110331799, %bb.bm ], [ %.110331799, %html_output_c.exit1297 ], [ %.110331799, %bb.eq ], [ %.110331799, %html_output_c.exit1348 ], [ %.110331799, %.critedge1220 ], [ %.110331799, %bb.mp ], [ %.110331799, %bb.er ], [ %.110331799, %bb.ay ], [ 0, %html_output_c.exit1441 ], [ %i.awc, %bb.oj ], [ %.110331799, %bb.mq ], [ %.110331799, %bb.pc ], [ %.110331799, %html_output_c.exit1456 ], [ %.110331799, %bb.qi ], [ %.110331799, %bb.my ], [ %.110331799, %bb.qq ], [ %.110331799, %html_output_c.exit1485 ], [ %.110331799, %bb.ve ], [ %.110331799, %bb.ra ], [ %.110331799, %bb.qo ], [ %.110331799, %html_output_c.exit1498 ], [ %.110331799, %bb.ty ], [ %.110331799, %bb.qz ], [ %.110331799, %bb.ux ], [ %.110331799, %html_output_c.exit1575 ], [ %.110331799, %html_output_c.exit1572 ], [ %.110331799, %bb.tz ], [ %.110331799, %html_output_flush.exit ], [ %.110331799, %bb.vd ], [ %.110331799, %bb.aw ], [ %.110331799, %bb.mw ], [ %.110331799, %bb.qm ], [ %.110331799, %bb.rc ], [ %.110331799, %bb.vb ], [ %.110331799, %bb.vk ], [ %.110331799, %bb.vi ], [ 0, %html_output_c.exit1446 ], [ 0, %bb.oz ] ; 2 uses
  %.11027.be = phi ptr [ %.110271800, %bb.ai ], [ %.110271800, %bb.ak ], [ %.110271800, %bb.al ], [ %.110271800, %bb.am ], [ %.110271800, %html_output_flush.exit.i1488 ], [ %.110271800, %bb.vp ], [ %.110271800, %bb.aq ], [ %.110271800, %bb.ao ], [ %.110271800, %bb.as ], [ %.110271800, %bb.vh ], [ %.110271800, %html_tag_contents_append.exit ], [ %.110271800, %bb.ap ], [ %.110271800, %bb.bo ], [ %.110271800, %html_output_c.exit1245 ], [ %.110271800, %bb.cg ], [ %.110271800, %html_output_c.exit1259 ], [ %.110271800, %bb.dc ], [ %.110271800, %bb.db ], [ %.110271800, %html_output_c.exit1272 ], [ %.110271800, %bb.dl ], [ %.110271800, %bb.du ], [ %.110271800, %bb.ei ], [ %.110271800, %html_output_c.exit1292 ], [ %.110271800, %bb.bm ], [ %.110271800, %html_output_c.exit1297 ], [ %.110271800, %bb.eq ], [ %.110271800, %html_output_c.exit1348 ], [ %.31029, %.critedge1220 ], [ %.110271800, %bb.mp ], [ %.110271800, %bb.er ], [ %.110271800, %bb.ay ], [ %.110271800, %html_output_c.exit1441 ], [ %.110271800, %bb.oj ], [ %.110271800, %bb.mq ], [ %.110271800, %bb.pc ], [ %.110271800, %html_output_c.exit1456 ], [ %.110271800, %bb.qi ], [ %.110271800, %bb.my ], [ %.110271800, %bb.qq ], [ %.110271800, %html_output_c.exit1485 ], [ %.110271800, %bb.ve ], [ %.110271800, %bb.ra ], [ %.110271800, %bb.qo ], [ %.110271800, %html_output_c.exit1498 ], [ %.110271800, %bb.ty ], [ %.110271800, %bb.qz ], [ %.110271800, %bb.ux ], [ %.110271800, %html_output_c.exit1575 ], [ %.110271800, %html_output_c.exit1572 ], [ %.110271800, %bb.tz ], [ %.110271800, %html_output_flush.exit ], [ %.110271800, %bb.vd ], [ %.110271800, %bb.aw ], [ %.110271800, %bb.mw ], [ %.110271800, %bb.qm ], [ %.110271800, %bb.rc ], [ %.110271800, %bb.vb ], [ %.110271800, %bb.vk ], [ %.110271800, %bb.vi ], [ %.110271800, %html_output_c.exit1446 ], [ %.110271800, %bb.oz ] ; 2 uses
  %.11024.be = phi ptr [ %.110241801, %bb.ai ], [ %.110241801, %bb.ak ], [ %.110241801, %bb.al ], [ %.110241801, %bb.am ], [ %.110241801, %html_output_flush.exit.i1488 ], [ %.110241801, %bb.vp ], [ %.110241801, %bb.aq ], [ %.110241801, %bb.ao ], [ %.110241801, %bb.as ], [ %.110241801, %bb.vh ], [ %.39761807, %html_tag_contents_append.exit ], [ %.110241801, %bb.ap ], [ %.110241801, %bb.bo ], [ %.110241801, %html_output_c.exit1245 ], [ %.110241801, %bb.cg ], [ %.110241801, %html_output_c.exit1259 ], [ %.110241801, %bb.dc ], [ %.110241801, %bb.db ], [ %.110241801, %html_output_c.exit1272 ], [ %.110241801, %bb.dl ], [ %.110241801, %bb.du ], [ %.110241801, %bb.ei ], [ %.110241801, %html_output_c.exit1292 ], [ %.110241801, %bb.bm ], [ %.110241801, %html_output_c.exit1297 ], [ %.110241801, %bb.eq ], [ %.110241801, %html_output_c.exit1348 ], [ %.110241801, %.critedge1220 ], [ %.110241801, %bb.mp ], [ %.110241801, %bb.er ], [ %.110241801, %bb.ay ], [ %.110241801, %html_output_c.exit1441 ], [ %.110241801, %bb.oj ], [ %.110241801, %bb.mq ], [ %.110241801, %bb.pc ], [ %.110241801, %html_output_c.exit1456 ], [ %.110241801, %bb.qi ], [ %.110241801, %bb.my ], [ %.110241801, %bb.qq ], [ %.110241801, %html_output_c.exit1485 ], [ %.110241801, %bb.ve ], [ %.110241801, %bb.ra ], [ %.110241801, %bb.qo ], [ %.110241801, %html_output_c.exit1498 ], [ %.110241801, %bb.ty ], [ %.110241801, %bb.qz ], [ %.110241801, %bb.ux ], [ %.110241801, %html_output_c.exit1575 ], [ %.110241801, %html_output_c.exit1572 ], [ %.110241801, %bb.tz ], [ %.110241801, %html_output_flush.exit ], [ %.110241801, %bb.vd ], [ %.110241801, %bb.aw ], [ %.110241801, %bb.mw ], [ %.110241801, %bb.qm ], [ %.110241801, %bb.rc ], [ %.110241801, %bb.vb ], [ %.110241801, %bb.vk ], [ %.110241801, %bb.vi ], [ %.110241801, %html_output_c.exit1446 ], [ %.110241801, %bb.oz ]
  %.21017.be = phi ptr [ %.210171802, %bb.ai ], [ %.210171802, %bb.ak ], [ %.210171802, %bb.al ], [ %.210171802, %bb.am ], [ %.210171802, %html_output_flush.exit.i1488 ], [ %.210171802, %bb.vp ], [ %.210171802, %bb.aq ], [ %.210171802, %bb.ao ], [ %.210171802, %bb.as ], [ %.210171802, %bb.vh ], [ %.31018, %html_tag_contents_append.exit ], [ %.210171802, %bb.ap ], [ %.210171802, %bb.bo ], [ %.210171802, %html_output_c.exit1245 ], [ %.210171802, %bb.cg ], [ %.210171802, %html_output_c.exit1259 ], [ %.210171802, %bb.dc ], [ %.210171802, %bb.db ], [ %.210171802, %html_output_c.exit1272 ], [ %.210171802, %bb.dl ], [ %.210171802, %bb.du ], [ %.210171802, %bb.ei ], [ %.210171802, %html_output_c.exit1292 ], [ %.210171802, %bb.bm ], [ %.210171802, %html_output_c.exit1297 ], [ %.210171802, %bb.eq ], [ %.210171802, %html_output_c.exit1348 ], [ %.61021, %.critedge1220 ], [ %.210171802, %bb.mp ], [ %.210171802, %bb.er ], [ %.210171802, %bb.ay ], [ %.210171802, %html_output_c.exit1441 ], [ %.210171802, %bb.oj ], [ %.210171802, %bb.mq ], [ %.210171802, %bb.pc ], [ %.210171802, %html_output_c.exit1456 ], [ %.210171802, %bb.qi ], [ %.210171802, %bb.my ], [ %.210171802, %bb.qq ], [ %.210171802, %html_output_c.exit1485 ], [ %.210171802, %bb.ve ], [ %.210171802, %bb.ra ], [ %.210171802, %bb.qo ], [ %.210171802, %html_output_c.exit1498 ], [ %.210171802, %bb.ty ], [ %.210171802, %bb.qz ], [ %.210171802, %bb.ux ], [ %.210171802, %html_output_c.exit1575 ], [ %.210171802, %html_output_c.exit1572 ], [ %.210171802, %bb.tz ], [ %.210171802, %html_output_flush.exit ], [ %.210171802, %bb.vd ], [ %.210171802, %bb.aw ], [ %.210171802, %bb.mw ], [ %.210171802, %bb.qm ], [ %.210171802, %bb.rc ], [ %.210171802, %bb.vb ], [ %.210171802, %bb.vk ], [ %.210171802, %bb.vi ], [ %.210171802, %html_output_c.exit1446 ], [ %.210171802, %bb.oz ] ; 2 uses
  %.11006.be = phi i32 [ %.110061803, %bb.ai ], [ %.110061803, %bb.ak ], [ %.110061803, %bb.al ], [ %.110061803, %bb.am ], [ %.110061803, %html_output_flush.exit.i1488 ], [ %.110061803, %bb.vp ], [ %.110061803, %bb.aq ], [ %.110061803, %bb.ao ], [ %.110061803, %bb.as ], [ %.110061803, %bb.vh ], [ %.110061803, %html_tag_contents_append.exit ], [ %.110061803, %bb.ap ], [ %.110061803, %bb.bo ], [ %.110061803, %html_output_c.exit1245 ], [ %.110061803, %bb.cg ], [ %.110061803, %html_output_c.exit1259 ], [ %.110061803, %bb.dc ], [ %.110061803, %bb.db ], [ %.110061803, %html_output_c.exit1272 ], [ %.110061803, %bb.dl ], [ %.110061803, %bb.du ], [ %.110061803, %bb.ei ], [ %.110061803, %html_output_c.exit1292 ], [ %.110061803, %bb.bm ], [ %.110061803, %html_output_c.exit1297 ], [ %.110061803, %bb.eq ], [ %.110061803, %html_output_c.exit1348 ], [ %.61011, %.critedge1220 ], [ %.110061803, %bb.mp ], [ %.110061803, %bb.er ], [ %.110061803, %bb.ay ], [ %.110061803, %html_output_c.exit1441 ], [ %.110061803, %bb.oj ], [ %.110061803, %bb.mq ], [ %.110061803, %bb.pc ], [ %.110061803, %html_output_c.exit1456 ], [ %.110061803, %bb.qi ], [ %.110061803, %bb.my ], [ %.110061803, %bb.qq ], [ %.110061803, %html_output_c.exit1485 ], [ %.110061803, %bb.ve ], [ %.110061803, %bb.ra ], [ %.110061803, %bb.qo ], [ %.110061803, %html_output_c.exit1498 ], [ %.110061803, %bb.ty ], [ %.110061803, %bb.qz ], [ %.110061803, %bb.ux ], [ %.110061803, %html_output_c.exit1575 ], [ %.110061803, %html_output_c.exit1572 ], [ %.110061803, %bb.tz ], [ %.110061803, %html_output_flush.exit ], [ %.110061803, %bb.vd ], [ %.110061803, %bb.aw ], [ %.110061803, %bb.mw ], [ %.110061803, %bb.qm ], [ %.110061803, %bb.rc ], [ %.110061803, %bb.vb ], [ %.110061803, %bb.vk ], [ %.110061803, %bb.vi ], [ %.110061803, %html_output_c.exit1446 ], [ %.110061803, %bb.oz ] ; 2 uses
  %.11002.be = phi ptr [ %.110021804, %bb.ai ], [ %.110021804, %bb.ak ], [ %.110021804, %bb.al ], [ %.110021804, %bb.am ], [ %.110021804, %html_output_flush.exit.i1488 ], [ %.110021804, %bb.vp ], [ %.110021804, %bb.aq ], [ %.110021804, %bb.ao ], [ %.110021804, %bb.as ], [ %.110021804, %bb.vh ], [ %.110021804, %html_tag_contents_append.exit ], [ %.110021804, %bb.ap ], [ %.110021804, %bb.bo ], [ %.110021804, %html_output_c.exit1245 ], [ %.110021804, %bb.cg ], [ %.110021804, %html_output_c.exit1259 ], [ %.110021804, %bb.dc ], [ %.110021804, %bb.db ], [ %.110021804, %html_output_c.exit1272 ], [ %.110021804, %bb.dl ], [ %.110021804, %bb.du ], [ %.110021804, %bb.ei ], [ %.110021804, %html_output_c.exit1292 ], [ %.110021804, %bb.bm ], [ %.110021804, %html_output_c.exit1297 ], [ %.110021804, %bb.eq ], [ %.110021804, %html_output_c.exit1348 ], [ %.110021804, %.critedge1220 ], [ %.110021804, %bb.mp ], [ %.110021804, %bb.er ], [ %.110021804, %bb.ay ], [ %.110021804, %html_output_c.exit1441 ], [ %.110021804, %bb.oj ], [ %.110021804, %bb.mq ], [ %.110021804, %bb.pc ], [ %.110021804, %html_output_c.exit1456 ], [ %.110021804, %bb.qi ], [ %.110021804, %bb.my ], [ %.110021804, %bb.qq ], [ %.110021804, %html_output_c.exit1485 ], [ null, %bb.ve ], [ %.110021804, %bb.ra ], [ %.110021804, %bb.qo ], [ %.110021804, %html_output_c.exit1498 ], [ %.110021804, %bb.ty ], [ %.110021804, %bb.qz ], [ null, %bb.ux ], [ %.110021804, %html_output_c.exit1575 ], [ %i.bpp, %html_output_c.exit1572 ], [ null, %bb.tz ], [ %.110021804, %html_output_flush.exit ], [ %.110021804, %bb.vd ], [ %.110021804, %bb.aw ], [ %.110021804, %bb.mw ], [ %.110021804, %bb.qm ], [ %.110021804, %bb.rc ], [ null, %bb.vb ], [ %.110021804, %bb.vk ], [ null, %bb.vi ], [ %.110021804, %html_output_c.exit1446 ], [ %.110021804, %bb.oz ] ; 2 uses
  %.1989.be = phi i64 [ %.19891805, %bb.ai ], [ %.19891805, %bb.ak ], [ %.19891805, %bb.al ], [ %.19891805, %bb.am ], [ 12, %html_output_flush.exit.i1488 ], [ %i.bvr, %bb.vp ], [ %.19891805, %bb.aq ], [ %i.bs, %bb.ao ], [ %.19891805, %bb.as ], [ 1, %bb.vh ], [ %.19891805, %html_tag_contents_append.exit ], [ %.19891805, %bb.ap ], [ %.19891805, %bb.bo ], [ %.19891805, %html_output_c.exit1245 ], [ %.19891805, %bb.cg ], [ %.19891805, %html_output_c.exit1259 ], [ %.19891805, %bb.dc ], [ %.19891805, %bb.db ], [ %.19891805, %html_output_c.exit1272 ], [ %.19891805, %bb.dl ], [ %.19891805, %bb.du ], [ %.19891805, %bb.ei ], [ %.19891805, %html_output_c.exit1292 ], [ %.19891805, %bb.bm ], [ %.19891805, %html_output_c.exit1297 ], [ %.19891805, %bb.eq ], [ %.19891805, %html_output_c.exit1348 ], [ %.19891805, %.critedge1220 ], [ %.19891805, %bb.mp ], [ %.19891805, %bb.er ], [ %.19891805, %bb.ay ], [ %.19891805, %html_output_c.exit1441 ], [ %.19891805, %bb.oj ], [ %.19891805, %bb.mq ], [ %.19891805, %bb.pc ], [ %.19891805, %html_output_c.exit1456 ], [ %.19891805, %bb.qi ], [ %.19891805, %bb.my ], [ %.19891805, %bb.qq ], [ %.19891805, %html_output_c.exit1485 ], [ 1, %bb.ve ], [ %i.bgx, %bb.ra ], [ %.19891805, %bb.qo ], [ %i.bnv, %html_output_c.exit1498 ], [ %.19891805, %bb.ty ], [ %.19891805, %bb.qz ], [ %.19891805, %bb.ux ], [ %.3991, %html_output_c.exit1575 ], [ %.19891805, %html_output_c.exit1572 ], [ %.19891805, %bb.tz ], [ %.19891805, %html_output_flush.exit ], [ 2, %bb.vd ], [ %.19891805, %bb.aw ], [ %.19891805, %bb.mw ], [ %.19891805, %bb.qm ], [ 12, %bb.rc ], [ 2, %bb.vb ], [ %.19891805, %bb.vk ], [ %.19891805, %bb.vi ], [ %.19891805, %html_output_c.exit1446 ], [ %.19891805, %bb.oz ] ; 2 uses
  %.1984.be = phi i32 [ %.19841806, %bb.ai ], [ %.19841806, %bb.ak ], [ %.19841806, %bb.al ], [ %.19841806, %bb.am ], [ %.19841806, %html_output_flush.exit.i1488 ], [ %.19841806, %bb.vp ], [ %.19841806, %bb.aq ], [ %.19841806, %bb.ao ], [ %.19841806, %bb.as ], [ %.19841806, %bb.vh ], [ %.19841806, %html_tag_contents_append.exit ], [ %.19841806, %bb.ap ], [ %.19841806, %bb.bo ], [ %.19841806, %html_output_c.exit1245 ], [ %.19841806, %bb.cg ], [ %.19841806, %html_output_c.exit1259 ], [ %.19841806, %bb.dc ], [ %.19841806, %bb.db ], [ 2, %html_output_c.exit1272 ], [ %.19841806, %bb.dl ], [ %.19841806, %bb.du ], [ %.19841806, %bb.ei ], [ 2, %html_output_c.exit1292 ], [ %.19841806, %bb.bm ], [ %.2985, %html_output_c.exit1297 ], [ %.19841806, %bb.eq ], [ %.19841806, %html_output_c.exit1348 ], [ %.19841806, %.critedge1220 ], [ %.19841806, %bb.mp ], [ %.19841806, %bb.er ], [ %.19841806, %bb.ay ], [ %.19841806, %html_output_c.exit1441 ], [ %.19841806, %bb.oj ], [ %.19841806, %bb.mq ], [ %.19841806, %bb.pc ], [ %.19841806, %html_output_c.exit1456 ], [ %.19841806, %bb.qi ], [ %.19841806, %bb.my ], [ %.19841806, %bb.qq ], [ %.19841806, %html_output_c.exit1485 ], [ %.19841806, %bb.ve ], [ %.19841806, %bb.ra ], [ %.19841806, %bb.qo ], [ %.19841806, %html_output_c.exit1498 ], [ %.3986, %bb.ty ], [ %.19841806, %bb.qz ], [ 2, %bb.ux ], [ %.19841806, %html_output_c.exit1575 ], [ %.19841806, %html_output_c.exit1572 ], [ %.19841806, %bb.tz ], [ 2, %html_output_flush.exit ], [ %.19841806, %bb.vd ], [ %.19841806, %bb.aw ], [ %.19841806, %bb.mw ], [ %.19841806, %bb.qm ], [ %.19841806, %bb.rc ], [ %.19841806, %bb.vb ], [ %.19841806, %bb.vk ], [ %.19841806, %bb.vi ], [ %.19841806, %html_output_c.exit1446 ], [ %.19841806, %bb.oz ] ; 2 uses
  %.3976.be = phi ptr [ %.39761807, %bb.ai ], [ %i.br, %bb.ak ], [ %.39761807, %bb.al ], [ %.39761807, %bb.am ], [ %.39761807, %html_output_flush.exit.i1488 ], [ %i.bwk, %bb.vp ], [ %i.ca, %bb.aq ], [ %i.bt, %bb.ao ], [ %i.ch, %bb.as ], [ %.39761807, %bb.vh ], [ %i.er, %html_tag_contents_append.exit ], [ %.39761807, %bb.ap ], [ %i.ez, %bb.bo ], [ %i.gj, %html_output_c.exit1245 ], [ %i.hf, %bb.cg ], [ %i.if, %html_output_c.exit1259 ], [ %.39761807, %bb.dc ], [ %i.kh, %bb.db ], [ %i.ld, %html_output_c.exit1272 ], [ %i.lk, %bb.dl ], [ %i.mh, %bb.du ], [ %i.og, %bb.ei ], [ %i.oy, %html_output_c.exit1292 ], [ %.39761807, %bb.bm ], [ %.4977, %html_output_c.exit1297 ], [ %.39761807, %bb.eq ], [ %i.aae, %html_output_c.exit1348 ], [ %.39761807, %.critedge1220 ], [ %i.aqv, %bb.mp ], [ %.39761807, %bb.er ], [ %.39761807, %bb.ay ], [ %i.avs, %html_output_c.exit1441 ], [ %i.awb, %bb.oj ], [ %.39761807, %bb.mq ], [ %i.ayd, %bb.pc ], [ %i.bbu, %html_output_c.exit1456 ], [ %i.bcn, %bb.qi ], [ %.39761807, %bb.my ], [ %i.bdh, %bb.qq ], [ %i.bes, %html_output_c.exit1485 ], [ %.39761807, %bb.ve ], [ %i.bgy, %bb.ra ], [ %.39761807, %bb.qo ], [ %i.bnu, %html_output_c.exit1498 ], [ %.6979, %bb.ty ], [ %.39761807, %bb.qz ], [ %.39761807, %bb.ux ], [ %.7980, %html_output_c.exit1575 ], [ %.39761807, %html_output_c.exit1572 ], [ %.39761807, %bb.tz ], [ %.39761807, %html_output_flush.exit ], [ %.39761807, %bb.vd ], [ %.39761807, %bb.aw ], [ %.39761807, %bb.mw ], [ %.39761807, %bb.qm ], [ %.39761807, %bb.rc ], [ %.39761807, %bb.vb ], [ %.39761807, %bb.vk ], [ %.39761807, %bb.vi ], [ %.39761807, %html_output_c.exit1446 ], [ %.39761807, %bb.oz ] ; 3 uses
  %.1962.be = phi i32 [ %.19621809, %bb.ai ], [ %.19621809, %bb.ak ], [ %.19621809, %bb.al ], [ %.19621809, %bb.am ], [ 1, %html_output_flush.exit.i1488 ], [ %.19621809, %bb.vp ], [ %.19621809, %bb.aq ], [ %.19621809, %bb.ao ], [ %.19621809, %bb.as ], [ %.19621809, %bb.vh ], [ 7, %html_tag_contents_append.exit ], [ 0, %bb.ap ], [ 1, %bb.bo ], [ %.19621809, %html_output_c.exit1245 ], [ 0, %bb.cg ], [ 11, %html_output_c.exit1259 ], [ 8, %bb.dc ], [ %.19621809, %bb.db ], [ 9, %html_output_c.exit1272 ], [ 10, %bb.dl ], [ 0, %bb.du ], [ %.19621809, %bb.ei ], [ 9, %html_output_c.exit1292 ], [ 1, %bb.bm ], [ %.2963, %html_output_c.exit1297 ], [ 0, %bb.eq ], [ %spec.select1213, %html_output_c.exit1348 ], [ %.5966, %.critedge1220 ], [ %.19621809, %bb.mp ], [ 0, %bb.er ], [ 0, %bb.ay ], [ 0, %html_output_c.exit1441 ], [ %.19621809, %bb.oj ], [ %.19621809, %bb.mq ], [ %.19621809, %bb.pc ], [ 0, %html_output_c.exit1456 ], [ %.19621809, %bb.qi ], [ 0, %bb.my ], [ 0, %bb.qq ], [ %.19621809, %html_output_c.exit1485 ], [ %.19621809, %bb.ve ], [ 0, %bb.ra ], [ 0, %bb.qo ], [ %.19621809, %html_output_c.exit1498 ], [ %.6967, %bb.ty ], [ 0, %bb.qz ], [ 8, %bb.ux ], [ %.7968, %html_output_c.exit1575 ], [ %.19621809, %html_output_c.exit1572 ], [ %.19621809, %bb.tz ], [ 8, %html_output_flush.exit ], [ %.19621809, %bb.vd ], [ 0, %bb.aw ], [ 0, %bb.mw ], [ 0, %bb.qm ], [ 1, %bb.rc ], [ %.19621809, %bb.vb ], [ %.19621809, %bb.vk ], [ %.19621809, %bb.vi ], [ 0, %html_output_c.exit1446 ], [ 0, %bb.oz ] ; 2 uses
  %.1951.be = phi i32 [ %.19511810, %bb.ai ], [ %.19511810, %bb.ak ], [ %.19511810, %bb.al ], [ 17, %bb.am ], [ 13, %html_output_flush.exit.i1488 ], [ %spec.select1229, %bb.vp ], [ 5, %bb.aq ], [ %spec.select1211, %bb.ao ], [ 6, %bb.as ], [ 20, %bb.vh ], [ 5, %html_tag_contents_append.exit ], [ %.19621809, %bb.ap ], [ 3, %bb.bo ], [ 1, %html_output_c.exit1245 ], [ 2, %bb.cg ], [ 5, %html_output_c.exit1259 ], [ 5, %bb.dc ], [ 7, %bb.db ], [ 5, %html_output_c.exit1272 ], [ 5, %bb.dl ], [ 11, %bb.du ], [ 8, %bb.ei ], [ 5, %html_output_c.exit1292 ], [ 6, %bb.bm ], [ %.2952, %html_output_c.exit1297 ], [ 8, %bb.eq ], [ %spec.select1214, %html_output_c.exit1348 ], [ 5, %.critedge1220 ], [ 12, %bb.mp ], [ 8, %bb.er ], [ %.19621809, %bb.ay ], [ %.19621809, %html_output_c.exit1441 ], [ 4, %bb.oj ], [ 4, %bb.mq ], [ 12, %bb.pc ], [ %.19621809, %html_output_c.exit1456 ], [ 12, %bb.qi ], [ %.19621809, %bb.my ], [ 15, %bb.qq ], [ 14, %html_output_c.exit1485 ], [ 20, %bb.ve ], [ 16, %bb.ra ], [ %.19621809, %bb.qo ], [ 16, %html_output_c.exit1498 ], [ %.6956, %bb.ty ], [ 1, %bb.qz ], [ 5, %bb.ux ], [ %.7957, %html_output_c.exit1575 ], [ 20, %html_output_c.exit1572 ], [ 20, %bb.tz ], [ 5, %html_output_flush.exit ], [ 20, %bb.vd ], [ %.19621809, %bb.aw ], [ %.19621809, %bb.mw ], [ %.19621809, %bb.qm ], [ 13, %bb.rc ], [ 20, %bb.vb ], [ 20, %bb.vk ], [ 20, %bb.vi ], [ %.19621809, %html_output_c.exit1446 ], [ %.19621809, %bb.oz ] ; 2 uses
  %.1943.be = phi i32 [ %.19431811, %bb.ai ], [ %.19431811, %bb.ak ], [ %.19431811, %bb.al ], [ %.19431811, %bb.am ], [ %.19431811, %html_output_flush.exit.i1488 ], [ %.19431811, %bb.vp ], [ %.19431811, %bb.aq ], [ %.19431811, %bb.ao ], [ %.19431811, %bb.as ], [ %.19431811, %bb.vh ], [ %.19431811, %html_tag_contents_append.exit ], [ %.19431811, %bb.ap ], [ %.19431811, %bb.bo ], [ %.19431811, %html_output_c.exit1245 ], [ %.19431811, %bb.cg ], [ %.19431811, %html_output_c.exit1259 ], [ %.19431811, %bb.dc ], [ %.19431811, %bb.db ], [ %.19431811, %html_output_c.exit1272 ], [ %.19431811, %bb.dl ], [ %.19431811, %bb.du ], [ %.19431811, %bb.ei ], [ %.19431811, %html_output_c.exit1292 ], [ %.19431811, %bb.bm ], [ %.19431811, %html_output_c.exit1297 ], [ %.19431811, %bb.eq ], [ %.19431811, %html_output_c.exit1348 ], [ %.4946, %.critedge1220 ], [ %.19431811, %bb.mp ], [ %.19431811, %bb.er ], [ %.19431811, %bb.ay ], [ %.19431811, %html_output_c.exit1441 ], [ %.19431811, %bb.oj ], [ %.19431811, %bb.mq ], [ %.19431811, %bb.pc ], [ %.19431811, %html_output_c.exit1456 ], [ %.19431811, %bb.qi ], [ %.19431811, %bb.my ], [ %.19431811, %bb.qq ], [ %.19431811, %html_output_c.exit1485 ], [ %.19431811, %bb.ve ], [ %.19431811, %bb.ra ], [ %.19431811, %bb.qo ], [ %.19431811, %html_output_c.exit1498 ], [ %.19431811, %bb.ty ], [ %.19431811, %bb.qz ], [ %.19431811, %bb.ux ], [ %.19431811, %html_output_c.exit1575 ], [ %.19431811, %html_output_c.exit1572 ], [ %.19431811, %bb.tz ], [ %.19431811, %html_output_flush.exit ], [ %.19431811, %bb.vd ], [ %.19431811, %bb.aw ], [ %.19431811, %bb.mw ], [ %.19431811, %bb.qm ], [ %.19431811, %bb.rc ], [ %.19431811, %bb.vb ], [ %.19431811, %bb.vk ], [ %.19431811, %bb.vi ], [ %.19431811, %html_output_c.exit1446 ], [ %.19431811, %bb.oz ] ; 2 uses
  %.1940.be = phi i32 [ %.19401812, %bb.ai ], [ %.19401812, %bb.ak ], [ %.19401812, %bb.al ], [ %.19401812, %bb.am ], [ %.19401812, %html_output_flush.exit.i1488 ], [ %.19401812, %bb.vp ], [ %.19401812, %bb.aq ], [ %.19401812, %bb.ao ], [ %.19401812, %bb.as ], [ %.19401812, %bb.vh ], [ %.19401812, %html_tag_contents_append.exit ], [ %.19401812, %bb.ap ], [ %.19401812, %bb.bo ], [ %.19401812, %html_output_c.exit1245 ], [ %.19401812, %bb.cg ], [ %.19401812, %html_output_c.exit1259 ], [ %.19401812, %bb.dc ], [ %.19401812, %bb.db ], [ %.19401812, %html_output_c.exit1272 ], [ %.19401812, %bb.dl ], [ %.19401812, %bb.du ], [ %.19401812, %bb.ei ], [ %.19401812, %html_output_c.exit1292 ], [ %.19401812, %bb.bm ], [ %.19401812, %html_output_c.exit1297 ], [ %.19401812, %bb.eq ], [ %.19401812, %html_output_c.exit1348 ], [ %.19401812, %.critedge1220 ], [ %.19401812, %bb.mp ], [ %.19401812, %bb.er ], [ %.19401812, %bb.ay ], [ %.19401812, %html_output_c.exit1441 ], [ %.19401812, %bb.oj ], [ %.19401812, %bb.mq ], [ %.19401812, %bb.pc ], [ %.19401812, %html_output_c.exit1456 ], [ %.19401812, %bb.qi ], [ %.19401812, %bb.my ], [ %.19401812, %bb.qq ], [ %.19401812, %html_output_c.exit1485 ], [ %.19401812, %bb.ve ], [ 0, %bb.ra ], [ %.19401812, %bb.qo ], [ %i.bnt, %html_output_c.exit1498 ], [ %.19401812, %bb.ty ], [ %.19401812, %bb.qz ], [ %.19401812, %bb.ux ], [ %.19401812, %html_output_c.exit1575 ], [ %.19401812, %html_output_c.exit1572 ], [ %.19401812, %bb.tz ], [ %.19401812, %html_output_flush.exit ], [ %.19401812, %bb.vd ], [ %.19401812, %bb.aw ], [ %.19401812, %bb.mw ], [ %.19401812, %bb.qm ], [ %.19401812, %bb.rc ], [ %.19401812, %bb.vb ], [ %.19401812, %bb.vk ], [ %.19401812, %bb.vi ], [ %.19401812, %html_output_c.exit1446 ], [ %.19401812, %bb.oz ] ; 2 uses
  %.1932.be = phi i32 [ %.19321813, %bb.ai ], [ %.19321813, %bb.ak ], [ %.19321813, %bb.al ], [ %.19321813, %bb.am ], [ %.19321813, %html_output_flush.exit.i1488 ], [ %.19321813, %bb.vp ], [ %.19321813, %bb.aq ], [ %.19321813, %bb.ao ], [ %.19321813, %bb.as ], [ %.19321813, %bb.vh ], [ %.19321813, %html_tag_contents_append.exit ], [ %.19321813, %bb.ap ], [ %.19321813, %bb.bo ], [ %.19321813, %html_output_c.exit1245 ], [ %.19321813, %bb.cg ], [ %.19321813, %html_output_c.exit1259 ], [ %.19321813, %bb.dc ], [ %.19321813, %bb.db ], [ 0, %html_output_c.exit1272 ], [ %.19321813, %bb.dl ], [ %.19321813, %bb.du ], [ %.19321813, %bb.ei ], [ 0, %html_output_c.exit1292 ], [ %.19321813, %bb.bm ], [ %.10, %html_output_c.exit1297 ], [ %.19321813, %bb.eq ], [ %.19321813, %html_output_c.exit1348 ], [ %.19321813, %.critedge1220 ], [ %.19321813, %bb.mp ], [ %.19321813, %bb.er ], [ %.19321813, %bb.ay ], [ %.18, %html_output_c.exit1441 ], [ %.19321813, %bb.oj ], [ %.19321813, %bb.mq ], [ %.19321813, %bb.pc ], [ %.22, %html_output_c.exit1456 ], [ %.19321813, %bb.qi ], [ %.11, %bb.my ], [ %.19321813, %bb.qq ], [ %.19321813, %html_output_c.exit1485 ], [ %.19321813, %bb.ve ], [ %.19321813, %bb.ra ], [ %.19321813, %bb.qo ], [ %.19321813, %html_output_c.exit1498 ], [ %.27, %bb.ty ], [ %.19321813, %bb.qz ], [ %.19321813, %bb.ux ], [ %.19321813, %html_output_c.exit1575 ], [ %.19321813, %html_output_c.exit1572 ], [ %.19321813, %bb.tz ], [ %.19321813, %html_output_flush.exit ], [ %.19321813, %bb.vd ], [ %.19321813, %bb.aw ], [ %.11, %bb.mw ], [ %.19321813, %bb.qm ], [ %.19321813, %bb.rc ], [ %.19321813, %bb.vb ], [ %.19321813, %bb.vk ], [ %.19321813, %bb.vi ], [ %.19, %html_output_c.exit1446 ], [ %.21, %bb.oz ] ; 2 uses
  %.1929.be = phi i32 [ %.19291814, %bb.ai ], [ %.19291814, %bb.ak ], [ %.19291814, %bb.al ], [ %.19291814, %bb.am ], [ %.19291814, %html_output_flush.exit.i1488 ], [ %.19291814, %bb.vp ], [ %.19291814, %bb.aq ], [ %.19291814, %bb.ao ], [ %.19291814, %bb.as ], [ %.19291814, %bb.vh ], [ %.19291814, %html_tag_contents_append.exit ], [ %.19291814, %bb.ap ], [ %.19291814, %bb.bo ], [ %.19291814, %html_output_c.exit1245 ], [ %.19291814, %bb.cg ], [ %.19291814, %html_output_c.exit1259 ], [ %.19291814, %bb.dc ], [ %.19291814, %bb.db ], [ %.19291814, %html_output_c.exit1272 ], [ %.19291814, %bb.dl ], [ %.19291814, %bb.du ], [ %.19291814, %bb.ei ], [ %.19291814, %html_output_c.exit1292 ], [ %.19291814, %bb.bm ], [ %.19291814, %html_output_c.exit1297 ], [ %.19291814, %bb.eq ], [ %.19291814, %html_output_c.exit1348 ], [ %.19291814, %.critedge1220 ], [ 0, %bb.mp ], [ %.19291814, %bb.er ], [ %.19291814, %bb.ay ], [ %.19291814, %html_output_c.exit1441 ], [ %.19291814, %bb.oj ], [ %.19291814, %bb.mq ], [ 1, %bb.pc ], [ %.19291814, %html_output_c.exit1456 ], [ %.19291814, %bb.qi ], [ %.19291814, %bb.my ], [ %.19291814, %bb.qq ], [ %.19291814, %html_output_c.exit1485 ], [ %.19291814, %bb.ve ], [ %.19291814, %bb.ra ], [ %.19291814, %bb.qo ], [ %.19291814, %html_output_c.exit1498 ], [ %.19291814, %bb.ty ], [ %.19291814, %bb.qz ], [ %.19291814, %bb.ux ], [ %.19291814, %html_output_c.exit1575 ], [ %.19291814, %html_output_c.exit1572 ], [ %.19291814, %bb.tz ], [ %.19291814, %html_output_flush.exit ], [ %.19291814, %bb.vd ], [ %.19291814, %bb.aw ], [ %.19291814, %bb.mw ], [ %.19291814, %bb.qm ], [ %.19291814, %bb.rc ], [ %.19291814, %bb.vb ], [ %.19291814, %bb.vk ], [ %.19291814, %bb.vi ], [ %.19291814, %html_output_c.exit1446 ], [ %.19291814, %bb.oz ] ; 2 uses
  %.1921.be = phi i32 [ %.19211815, %bb.ai ], [ %.19211815, %bb.ak ], [ %.19211815, %bb.al ], [ %.19211815, %bb.am ], [ %.19211815, %html_output_flush.exit.i1488 ], [ %.6926, %bb.vp ], [ %.19211815, %bb.aq ], [ %.19211815, %bb.ao ], [ %.19211815, %bb.as ], [ %.19211815, %bb.vh ], [ %.19211815, %html_tag_contents_append.exit ], [ %.19211815, %bb.ap ], [ %.19211815, %bb.bo ], [ %.19211815, %html_output_c.exit1245 ], [ %.19211815, %bb.cg ], [ %.19211815, %html_output_c.exit1259 ], [ %.19211815, %bb.dc ], [ %.19211815, %bb.db ], [ %.19211815, %html_output_c.exit1272 ], [ %.19211815, %bb.dl ], [ %.19211815, %bb.du ], [ %.19211815, %bb.ei ], [ %.19211815, %html_output_c.exit1292 ], [ %.19211815, %bb.bm ], [ %.19211815, %html_output_c.exit1297 ], [ %.19211815, %bb.eq ], [ %.19211815, %html_output_c.exit1348 ], [ %.19211815, %.critedge1220 ], [ 0, %bb.mp ], [ %.19211815, %bb.er ], [ %.19211815, %bb.ay ], [ %.19211815, %html_output_c.exit1441 ], [ %.19211815, %bb.oj ], [ %.19211815, %bb.mq ], [ 0, %bb.pc ], [ %.19211815, %html_output_c.exit1456 ], [ %.3923, %bb.qi ], [ %.19211815, %bb.my ], [ %.19211815, %bb.qq ], [ %.19211815, %html_output_c.exit1485 ], [ %.19211815, %bb.ve ], [ %.19211815, %bb.ra ], [ %.19211815, %bb.qo ], [ %.4924, %html_output_c.exit1498 ], [ %.19211815, %bb.ty ], [ %.19211815, %bb.qz ], [ %.19211815, %bb.ux ], [ %.5925, %html_output_c.exit1575 ], [ %.19211815, %html_output_c.exit1572 ], [ %.19211815, %bb.tz ], [ %.19211815, %html_output_flush.exit ], [ %.19211815, %bb.vd ], [ %.19211815, %bb.aw ], [ %.19211815, %bb.mw ], [ %.19211815, %bb.qm ], [ %.19211815, %bb.rc ], [ %.19211815, %bb.vb ], [ %.19211815, %bb.vk ], [ %.19211815, %bb.vi ], [ %.19211815, %html_output_c.exit1446 ], [ %.19211815, %bb.oz ] ; 2 uses
  %.1918.be = phi i32 [ %.19181817, %bb.ai ], [ %.19181817, %bb.ak ], [ %.19181817, %bb.al ], [ %.19181817, %bb.am ], [ %.19181817, %html_output_flush.exit.i1488 ], [ %.19181817, %bb.vp ], [ %.19181817, %bb.aq ], [ %.19181817, %bb.ao ], [ %.19181817, %bb.as ], [ %.19181817, %bb.vh ], [ %.19181817, %html_tag_contents_append.exit ], [ %.19181817, %bb.ap ], [ %.19181817, %bb.bo ], [ %.19181817, %html_output_c.exit1245 ], [ %.19181817, %bb.cg ], [ %.19181817, %html_output_c.exit1259 ], [ %.19181817, %bb.dc ], [ %.19181817, %bb.db ], [ 0, %html_output_c.exit1272 ], [ %.19181817, %bb.dl ], [ %.19181817, %bb.du ], [ %.19181817, %bb.ei ], [ 0, %html_output_c.exit1292 ], [ %.19181817, %bb.bm ], [ %., %html_output_c.exit1297 ], [ %.19181817, %bb.eq ], [ %.19181817, %html_output_c.exit1348 ], [ %.19181817, %.critedge1220 ], [ %.19181817, %bb.mp ], [ %.19181817, %bb.er ], [ %.19181817, %bb.ay ], [ %.19181817, %html_output_c.exit1441 ], [ %.19181817, %bb.oj ], [ %.19181817, %bb.mq ], [ %.19181817, %bb.pc ], [ %.19181817, %html_output_c.exit1456 ], [ %.19181817, %bb.qi ], [ %.19181817, %bb.my ], [ %.19181817, %bb.qq ], [ %.19181817, %html_output_c.exit1485 ], [ %.19181817, %bb.ve ], [ %.19181817, %bb.ra ], [ %.19181817, %bb.qo ], [ %.19181817, %html_output_c.exit1498 ], [ %.1226, %bb.ty ], [ %.19181817, %bb.qz ], [ 0, %bb.ux ], [ %.1228, %html_output_c.exit1575 ], [ %.19181817, %html_output_c.exit1572 ], [ %.19181817, %bb.tz ], [ 0, %html_output_flush.exit ], [ %.19181817, %bb.vd ], [ %.19181817, %bb.aw ], [ %.19181817, %bb.mw ], [ %.19181817, %bb.qm ], [ %.19181817, %bb.rc ], [ %.19181817, %bb.vb ], [ %.19181817, %bb.vk ], [ %.19181817, %bb.vi ], [ %.19181817, %html_output_c.exit1446 ], [ %.19181817, %bb.oz ] ; 2 uses
  %.1912.be = phi i32 [ 0, %bb.ai ], [ 0, %bb.ak ], [ %.19121818, %bb.al ], [ %.19121818, %bb.am ], [ %.19121818, %html_output_flush.exit.i1488 ], [ %.19121818, %bb.vp ], [ %.19121818, %bb.aq ], [ %.19121818, %bb.ao ], [ %.19121818, %bb.as ], [ %.19121818, %bb.vh ], [ %.19121818, %html_tag_contents_append.exit ], [ %.19121818, %bb.ap ], [ %.19121818, %bb.bo ], [ %.19121818, %html_output_c.exit1245 ], [ %.19121818, %bb.cg ], [ %.19121818, %html_output_c.exit1259 ], [ %.19121818, %bb.dc ], [ %.19121818, %bb.db ], [ %.19121818, %html_output_c.exit1272 ], [ %.19121818, %bb.dl ], [ %.19121818, %bb.du ], [ %.19121818, %bb.ei ], [ %.19121818, %html_output_c.exit1292 ], [ %.19121818, %bb.bm ], [ %.19121818, %html_output_c.exit1297 ], [ %.19121818, %bb.eq ], [ %.19121818, %html_output_c.exit1348 ], [ %.19121818, %.critedge1220 ], [ %.19121818, %bb.mp ], [ %.19121818, %bb.er ], [ %.19121818, %bb.ay ], [ %.19121818, %html_output_c.exit1441 ], [ %.19121818, %bb.oj ], [ %.19121818, %bb.mq ], [ %.19121818, %bb.pc ], [ %.19121818, %html_output_c.exit1456 ], [ %.19121818, %bb.qi ], [ %.19121818, %bb.my ], [ %.19121818, %bb.qq ], [ %.19121818, %html_output_c.exit1485 ], [ %.19121818, %bb.ve ], [ %.19121818, %bb.ra ], [ %.19121818, %bb.qo ], [ %.19121818, %html_output_c.exit1498 ], [ %.19121818, %bb.ty ], [ %.19121818, %bb.qz ], [ 0, %bb.ux ], [ %.19121818, %html_output_c.exit1575 ], [ 1, %html_output_c.exit1572 ], [ 1, %bb.tz ], [ 0, %html_output_flush.exit ], [ %.19121818, %bb.vd ], [ %.19121818, %bb.aw ], [ %.19121818, %bb.mw ], [ %.19121818, %bb.qm ], [ %.19121818, %bb.rc ], [ %.19121818, %bb.vb ], [ %.19121818, %bb.vk ], [ %.19121818, %bb.vi ], [ %.19121818, %html_output_c.exit1446 ], [ %.19121818, %bb.oz ] ; 2 uses
  %.1906.be = phi i32 [ %.19061819, %bb.ai ], [ %.19061819, %bb.ak ], [ %.19061819, %bb.al ], [ %.19061819, %bb.am ], [ %.19061819, %html_output_flush.exit.i1488 ], [ %.19061819, %bb.vp ], [ %.19061819, %bb.aq ], [ %.19061819, %bb.ao ], [ %.19061819, %bb.as ], [ %.19061819, %bb.vh ], [ %.19061819, %html_tag_contents_append.exit ], [ %.19061819, %bb.ap ], [ %.19061819, %bb.bo ], [ %.19061819, %html_output_c.exit1245 ], [ %.19061819, %bb.cg ], [ %.19061819, %html_output_c.exit1259 ], [ 0, %bb.dc ], [ %.19061819, %bb.db ], [ %.19061819, %html_output_c.exit1272 ], [ %.19061819, %bb.dl ], [ %.19061819, %bb.du ], [ %.2907, %bb.ei ], [ %.19061819, %html_output_c.exit1292 ], [ %.19061819, %bb.bm ], [ %.3908, %html_output_c.exit1297 ], [ 0, %bb.eq ], [ %.19061819, %html_output_c.exit1348 ], [ %.19061819, %.critedge1220 ], [ %.19061819, %bb.mp ], [ 0, %bb.er ], [ %.19061819, %bb.ay ], [ %.19061819, %html_output_c.exit1441 ], [ %.19061819, %bb.oj ], [ %.19061819, %bb.mq ], [ %.19061819, %bb.pc ], [ %.19061819, %html_output_c.exit1456 ], [ %.19061819, %bb.qi ], [ %.19061819, %bb.my ], [ %.19061819, %bb.qq ], [ %.19061819, %html_output_c.exit1485 ], [ %.19061819, %bb.ve ], [ %.19061819, %bb.ra ], [ %.19061819, %bb.qo ], [ %.19061819, %html_output_c.exit1498 ], [ %.4909, %bb.ty ], [ %.19061819, %bb.qz ], [ %.19061819, %bb.ux ], [ %.19061819, %html_output_c.exit1575 ], [ %.19061819, %html_output_c.exit1572 ], [ %.19061819, %bb.tz ], [ %.19061819, %html_output_flush.exit ], [ %.19061819, %bb.vd ], [ %.19061819, %bb.aw ], [ %.19061819, %bb.mw ], [ %.19061819, %bb.qm ], [ %.19061819, %bb.rc ], [ %.19061819, %bb.vb ], [ %.19061819, %bb.vk ], [ %.19061819, %bb.vi ], [ %.19061819, %html_output_c.exit1446 ], [ %.19061819, %bb.oz ] ; 2 uses
  %.1902.be = phi i32 [ %.19021820, %bb.ai ], [ %.19021820, %bb.ak ], [ %.19021820, %bb.al ], [ %.19021820, %bb.am ], [ %.19021820, %html_output_flush.exit.i1488 ], [ %.19021820, %bb.vp ], [ %.19021820, %bb.aq ], [ %.19021820, %bb.ao ], [ %.19021820, %bb.as ], [ %.19021820, %bb.vh ], [ 0, %html_tag_contents_append.exit ], [ %.19021820, %bb.ap ], [ %.19021820, %bb.bo ], [ %.19021820, %html_output_c.exit1245 ], [ 0, %bb.cg ], [ %.19021820, %html_output_c.exit1259 ], [ %.19021820, %bb.dc ], [ %.2903, %bb.db ], [ %.19021820, %html_output_c.exit1272 ], [ %.19021820, %bb.dl ], [ %.19021820, %bb.du ], [ %.19021820, %bb.ei ], [ %.19021820, %html_output_c.exit1292 ], [ %.19021820, %bb.bm ], [ %.19021820, %html_output_c.exit1297 ], [ %.19021820, %bb.eq ], [ %.19021820, %html_output_c.exit1348 ], [ %.19021820, %.critedge1220 ], [ %.19021820, %bb.mp ], [ %.19021820, %bb.er ], [ %.19021820, %bb.ay ], [ %.19021820, %html_output_c.exit1441 ], [ %.19021820, %bb.oj ], [ %.19021820, %bb.mq ], [ %.19021820, %bb.pc ], [ %.19021820, %html_output_c.exit1456 ], [ %.19021820, %bb.qi ], [ %.19021820, %bb.my ], [ %.19021820, %bb.qq ], [ %.19021820, %html_output_c.exit1485 ], [ %.19021820, %bb.ve ], [ %.19021820, %bb.ra ], [ %.19021820, %bb.qo ], [ %.19021820, %html_output_c.exit1498 ], [ %.19021820, %bb.ty ], [ %.19021820, %bb.qz ], [ %.19021820, %bb.ux ], [ %.19021820, %html_output_c.exit1575 ], [ %.19021820, %html_output_c.exit1572 ], [ %.19021820, %bb.tz ], [ %.19021820, %html_output_flush.exit ], [ %.19021820, %bb.vd ], [ %.19021820, %bb.aw ], [ %.19021820, %bb.mw ], [ %.19021820, %bb.qm ], [ %.19021820, %bb.rc ], [ %.19021820, %bb.vb ], [ %.19021820, %bb.vk ], [ %.19021820, %bb.vi ], [ %.19021820, %html_output_c.exit1446 ], [ %.19021820, %bb.oz ] ; 2 uses
  %i.bp = load i8, ptr %.3976.be, align 1, !tbaa !15 ; 2 uses
  %.not1112 = icmp eq i8 %i.bp, 0
  br i1 %.not1112, label %._crit_edge1822, label %.lr.ph1821, !llvm.loop !43

bb.aj:                                            ; preds = %.lr.ph1821
  %i.bq = icmp eq i8 %.pre19141916, 13
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
    i32 3, label %bb.mo
    i32 4, label %bb.mz
    i32 12, label %bb.pa
    i32 14, label %bb.qp
    i32 15, label %bb.qz
    i32 16, label %bb.rb
    i32 18, label %bb.te
    i32 19, label %bb.tz
    i32 20, label %bb.uf
    i32 21, label %bb.ux
    i32 22, label %bb.va
    i32 23, label %bb.vl
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
  %i.bw = zext i8 %.pre19141916 to i64
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
  %i.cd = zext i8 %.pre19141916 to i64
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
end_hunk_0
begin_hunk_1_@cli_html_normalise:bb.a

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
  br i1 %i.acc, label %bb.jc, label %bb.jx

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
  %i.aed = load i32, ptr %5, align 8, !tbaa !24
  %i.aee = icmp sgt i32 %i.aed, 0
  br i1 %i.aee, label %.lr.ph58.i, label %._crit_edge59.i

.lr.ph58.i:                                       ; preds = %html_output_str.exit.i
  %i.aef = load ptr, ptr %i.u, align 8
  %i.aeg = load ptr, ptr %i.v, align 8
  br label %7

7:                                                ; preds = %html_output_c.exit50.i, %.lr.ph58.i
  %indvars.iv62.i = phi i64 [ 0, %.lr.ph58.i ], [ %indvars.iv.next63.i, %html_output_c.exit50.i ] ; 3 uses
  br i1 %.not.i1538, label %html_output_c.exit50.i, label %bb.jo

bb.jo:                                            ; preds = %7
  %i.aeh = load i32, ptr %i.az, align 4, !tbaa !41 ; 2 uses
  %i.aei = icmp eq i32 %i.aeh, 8192
  br i1 %i.aei, label %html_output_flush.exit.i32.i, label %bb.jp

html_output_flush.exit.i32.i:                     ; preds = %bb.jo
  %i.aej = load i32, ptr %.0999, align 4, !tbaa !39
  %i.aek = call i32 @cli_writen(i32 noundef %i.aej, ptr noundef nonnull %i.ba, i32 noundef 8192) #15 ; 0 uses
  br label %bb.jp

bb.jp:                                            ; preds = %html_output_flush.exit.i32.i, %bb.jo
  %i.ael = phi i32 [ 0, %html_output_flush.exit.i32.i ], [ %i.aeh, %bb.jo ] ; 2 uses
  %i.aem = add nsw i32 %i.ael, 1
  store i32 %i.aem, ptr %i.az, align 4, !tbaa !41
  %i.aen = sext i32 %i.ael to i64
  %i.aeo = getelementptr inbounds i8, ptr %i.ba, i64 %i.aen
  store i8 32, ptr %i.aeo, align 1, !tbaa !15
  %i.aep = getelementptr inbounds nuw [8 x i8], ptr %i.aef, i64 %indvars.iv62.i
  %i.aeq = load ptr, ptr %i.aep, align 8, !tbaa !30 ; 3 uses
  %i.aer = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aeq) #17 ; 2 uses
  %i.aes = trunc i64 %i.aer to i32                ; 5 uses
  %i.aet = load i32, ptr %i.az, align 4, !tbaa !41 ; 5 uses
  %i.aeu = add nsw i32 %i.aet, %i.aes
  %i.aev = icmp sgt i32 %i.aeu, 8191
  %i.aew = icmp sgt i32 %i.aet, 0                 ; 2 uses
  %or.cond.i35.i = and i1 %i.aew, %i.aev
  br i1 %or.cond.i35.i, label %html_output_flush.exit.thread.i38.i, label %html_output_flush.exit.i36.i

html_output_flush.exit.i36.i:                     ; preds = %bb.jp
  %i.aex = icmp sgt i32 %i.aes, 8191
  br i1 %i.aex, label %bb.jq, label %bb.js

html_output_flush.exit.thread.i38.i:              ; preds = %bb.jp
  %i.aey = load i32, ptr %.0999, align 4, !tbaa !39
  %i.aez = call i32 @cli_writen(i32 noundef %i.aey, ptr noundef nonnull %i.ba, i32 noundef %i.aet) #15 ; 0 uses
  store i32 0, ptr %i.az, align 4, !tbaa !41
  %i.afa = icmp sgt i32 %i.aes, 8191
  br i1 %i.afa, label %html_output_flush.exit15.i37.i, label %bb.js

bb.jq:                                            ; preds = %html_output_flush.exit.i36.i
  br i1 %i.aew, label %bb.jr, label %html_output_flush.exit15.i37.i

bb.jr:                                            ; preds = %bb.jq
  %i.afb = load i32, ptr %.0999, align 4, !tbaa !39
  %i.afc = call i32 @cli_writen(i32 noundef %i.afb, ptr noundef nonnull %i.ba, i32 noundef %i.aet) #15 ; 0 uses
  store i32 0, ptr %i.az, align 4, !tbaa !41
  br label %html_output_flush.exit15.i37.i

html_output_flush.exit15.i37.i:                   ; preds = %bb.jr, %bb.jq, %html_output_flush.exit.thread.i38.i
  %i.afd = load i32, ptr %.0999, align 4, !tbaa !39
  %i.afe = call i32 @cli_writen(i32 noundef %i.afd, ptr noundef nonnull %i.aeq, i32 noundef %i.aes) #15 ; 0 uses
  br label %html_output_str.exit39.i

bb.js:                                            ; preds = %html_output_flush.exit.thread.i38.i, %html_output_flush.exit.i36.i
  %i.aff = phi i32 [ 0, %html_output_flush.exit.thread.i38.i ], [ %i.aet, %html_output_flush.exit.i36.i ]
  %i.afg = sext i32 %i.aff to i64
  %i.afh = getelementptr inbounds i8, ptr %i.ba, i64 %i.afg
  %sext55.i = shl i64 %i.aer, 32
  %i.afi = ashr exact i64 %sext55.i, 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.afh, ptr nonnull align 1 %i.aeq, i64 %i.afi, i1 false)
  %i.afj = load i32, ptr %i.az, align 4, !tbaa !41
  %i.afk = add nsw i32 %i.afj, %i.aes
  store i32 %i.afk, ptr %i.az, align 4, !tbaa !41
  br label %html_output_str.exit39.i

html_output_str.exit39.i:                         ; preds = %bb.js, %html_output_flush.exit15.i37.i
  %i.afl = getelementptr inbounds nuw [8 x i8], ptr %i.aeg, i64 %indvars.iv62.i ; 3 uses
  %i.afm = load ptr, ptr %i.afl, align 8, !tbaa !30
  %.not.i1363 = icmp eq ptr %i.afm, null
  br i1 %.not.i1363, label %html_output_c.exit50.i, label %bb.jt

bb.jt:                                            ; preds = %html_output_str.exit39.i
  %i.afn = load i32, ptr %i.az, align 4, !tbaa !41 ; 3 uses
  %i.afo = icmp sgt i32 %i.afn, 8189
  br i1 %i.afo, label %html_output_flush.exit.thread.i43.i, label %html_output_str.exit44.thread.i

html_output_flush.exit.thread.i43.i:              ; preds = %bb.jt
  %i.afp = load i32, ptr %.0999, align 4, !tbaa !39
  %i.afq = call i32 @cli_writen(i32 noundef %i.afp, ptr noundef nonnull %i.ba, i32 noundef %i.afn) #15 ; 0 uses
  store i32 0, ptr %i.az, align 4, !tbaa !41
  br label %html_output_str.exit44.thread.i

html_output_str.exit44.thread.i:                  ; preds = %html_output_flush.exit.thread.i43.i, %bb.jt
  %i.afr = phi i32 [ 0, %html_output_flush.exit.thread.i43.i ], [ %i.afn, %bb.jt ]
  %i.afs = sext i32 %i.afr to i64
  %i.aft = getelementptr inbounds i8, ptr %i.ba, i64 %i.afs
  store i16 8765, ptr %i.aft, align 1
  %i.afu = load i32, ptr %i.az, align 4, !tbaa !41
  %i.afv = add nsw i32 %i.afu, 2                  ; 2 uses
  store i32 %i.afv, ptr %i.az, align 4, !tbaa !41
  %.pre65.i = load ptr, ptr %i.afl, align 8, !tbaa !30
  %i.afw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.pre65.i) #17 ; 2 uses
  %i.afx = trunc i64 %i.afw to i32
  %i.afy = icmp sgt i32 %i.afx, 0
  br i1 %i.afy, label %.lr.ph.split.preheader.i, label %._crit_edge.thread80.i

.lr.ph.split.preheader.i:                         ; preds = %html_output_str.exit44.thread.i
  %i.afz = tail call ptr @__ctype_tolower_loc() #16
  %wide.trip.count.i1364 = and i64 %i.afw, 2147483647
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %html_output_c.exit47.i, %.lr.ph.split.preheader.i
  %indvars.iv.i1365 = phi i64 [ 0, %.lr.ph.split.preheader.i ], [ %indvars.iv.next.i1366, %html_output_c.exit47.i ] ; 2 uses
  %i.aga = load ptr, ptr %i.afz, align 8, !tbaa !44
  %i.agb = load ptr, ptr %i.afl, align 8, !tbaa !30
  %i.agc = getelementptr inbounds nuw i8, ptr %i.agb, i64 %indvars.iv.i1365
  %i.agd = load i8, ptr %i.agc, align 1, !tbaa !15
  %i.age = zext i8 %i.agd to i64
  %i.agf = getelementptr inbounds nuw [4 x i8], ptr %i.aga, i64 %i.age
  %i.agg = load i32, ptr %i.agf, align 4, !tbaa !4
  %i.agh = trunc i32 %i.agg to i8
  %i.agi = load i32, ptr %i.az, align 4, !tbaa !41 ; 2 uses
  %i.agj = icmp eq i32 %i.agi, 8192
  br i1 %i.agj, label %html_output_flush.exit.i46.i, label %html_output_c.exit47.i

html_output_flush.exit.i46.i:                     ; preds = %.lr.ph.split.i
  %i.agk = load i32, ptr %.0999, align 4, !tbaa !39
  %i.agl = call i32 @cli_writen(i32 noundef %i.agk, ptr noundef nonnull %i.ba, i32 noundef 8192) #15 ; 0 uses
  br label %html_output_c.exit47.i

html_output_c.exit47.i:                           ; preds = %html_output_flush.exit.i46.i, %.lr.ph.split.i
  %i.agm = phi i32 [ 0, %html_output_flush.exit.i46.i ], [ %i.agi, %.lr.ph.split.i ] ; 2 uses
  %i.agn = add nsw i32 %i.agm, 1
  store i32 %i.agn, ptr %i.az, align 4, !tbaa !41
  %i.ago = sext i32 %i.agm to i64
  %i.agp = getelementptr inbounds i8, ptr %i.ba, i64 %i.ago
  store i8 %i.agh, ptr %i.agp, align 1, !tbaa !15
  %indvars.iv.next.i1366 = add nuw nsw i64 %indvars.iv.i1365, 1 ; 2 uses
  %exitcond.not.i1367 = icmp eq i64 %indvars.iv.next.i1366, %wide.trip.count.i1364
  br i1 %exitcond.not.i1367, label %._crit_edge.thread80.ithread-pre-split, label %.lr.ph.split.i, !llvm.loop !48

._crit_edge.thread80.ithread-pre-split:           ; preds = %html_output_c.exit47.i
  %.pr = load i32, ptr %i.az, align 4, !tbaa !41
  br label %._crit_edge.thread80.i

._crit_edge.thread80.i:                           ; preds = %._crit_edge.thread80.ithread-pre-split, %html_output_str.exit44.thread.i
  %i.agq = phi i32 [ %.pr, %._crit_edge.thread80.ithread-pre-split ], [ %i.afv, %html_output_str.exit44.thread.i ] ; 2 uses
  %i.agr = icmp eq i32 %i.agq, 8192
  br i1 %i.agr, label %html_output_flush.exit.i49.i, label %bb.ju

html_output_flush.exit.i49.i:                     ; preds = %._crit_edge.thread80.i
  %i.ags = load i32, ptr %.0999, align 4, !tbaa !39
  %i.agt = call i32 @cli_writen(i32 noundef %i.ags, ptr noundef nonnull %i.ba, i32 noundef 8192) #15 ; 0 uses
  br label %bb.ju

bb.ju:                                            ; preds = %html_output_flush.exit.i49.i, %._crit_edge.thread80.i
  %i.agu = phi i32 [ 0, %html_output_flush.exit.i49.i ], [ %i.agq, %._crit_edge.thread80.i ] ; 2 uses
  %i.agv = add nsw i32 %i.agu, 1
  store i32 %i.agv, ptr %i.az, align 4, !tbaa !41
  %i.agw = sext i32 %i.agu to i64
  %i.agx = getelementptr inbounds i8, ptr %i.ba, i64 %i.agw
  store i8 34, ptr %i.agx, align 1, !tbaa !15
  br label %html_output_c.exit50.i

html_output_c.exit50.i:                           ; preds = %bb.ju, %html_output_str.exit39.i, %7
  %indvars.iv.next63.i = add nuw nsw i64 %indvars.iv62.i, 1 ; 2 uses
  %i.agy = load i32, ptr %5, align 8, !tbaa !24
  %i.agz = sext i32 %i.agy to i64
  %i.aha = icmp slt i64 %indvars.iv.next63.i, %i.agz
  br i1 %i.aha, label %7, label %._crit_edge59.i, !llvm.loop !49

._crit_edge59.i:                                  ; preds = %html_output_c.exit50.i, %html_output_str.exit.i
  br i1 %.not.i1538, label %.critedge1220, label %bb.jv

bb.jv:                                            ; preds = %._crit_edge59.i
  %i.ahb = load i32, ptr %i.az, align 4, !tbaa !41 ; 2 uses
  %i.ahc = icmp eq i32 %i.ahb, 8192
  br i1 %i.ahc, label %html_output_flush.exit.i52.i, label %bb.jw

html_output_flush.exit.i52.i:                     ; preds = %bb.jv
  %i.ahd = load i32, ptr %.0999, align 4, !tbaa !39
  %i.ahe = call i32 @cli_writen(i32 noundef %i.ahd, ptr noundef nonnull %i.ba, i32 noundef 8192) #15 ; 0 uses
  br label %bb.jw

bb.jw:                                            ; preds = %html_output_flush.exit.i52.i, %bb.jv
  %i.ahf = phi i32 [ 0, %html_output_flush.exit.i52.i ], [ %i.ahb, %bb.jv ] ; 2 uses
  %i.ahg = add nsw i32 %i.ahf, 1
  store i32 %i.ahg, ptr %i.az, align 4, !tbaa !41
  %i.ahh = sext i32 %i.ahf to i64
  %i.ahi = getelementptr inbounds i8, ptr %i.ba, i64 %i.ahh
  store i8 62, ptr %i.ahi, align 1, !tbaa !15
  br label %.critedge1220

bb.jx:                                            ; preds = %bb.jb
  br i1 %i.k, label %bb.jy, label %bb.km

bb.jy:                                            ; preds = %bb.jx
  %i.ahj = load i32, ptr %i.b, align 16
  %i.ahk = xor i32 %i.ahj, 1635018093
  %i.ahl = getelementptr i8, ptr %i.b, i64 4
  %i.ahm = load i8, ptr %i.ahl, align 4
  %i.ahn = zext i8 %i.ahm to i32
  %i.aho = or i32 %i.ahk, %i.ahn
  %i.ahp = icmp ne i32 %i.aho, 0
  %i.ahq = zext i1 %i.ahp to i32
  %i.ahr = icmp eq i32 %i.ahq, 0
  br i1 %i.ahr, label %bb.jz, label %bb.km

bb.jz:                                            ; preds = %bb.jy
  %i.ahs = load i32, ptr %5, align 8, !tbaa !24   ; 2 uses
  %i.aht = icmp sgt i32 %i.ahs, 0
  br i1 %i.aht, label %.lr.ph.i1369, label %.critedge1220

.lr.ph.i1369:                                     ; preds = %bb.jz
  %i.ahu = load ptr, ptr %i.u, align 8, !tbaa !29 ; 2 uses
  %wide.trip.count.i1370 = zext nneg i32 %i.ahs to i64 ; 2 uses
  br label %bb.kb

bb.ka:                                            ; preds = %bb.kb
  %indvars.iv.next.i1372 = add nuw nsw i64 %indvars.iv.i1371, 1 ; 2 uses
  %exitcond.not.i1373 = icmp eq i64 %indvars.iv.next.i1372, %wide.trip.count.i1370
  br i1 %exitcond.not.i1373, label %.lr.ph.i1376, label %bb.kb, !llvm.loop !46

bb.kb:                                            ; preds = %bb.ka, %.lr.ph.i1369
  %indvars.iv.i1371 = phi i64 [ 0, %.lr.ph.i1369 ], [ %indvars.iv.next.i1372, %bb.ka ] ; 3 uses
  %i.ahv = getelementptr inbounds nuw [8 x i8], ptr %i.ahu, i64 %indvars.iv.i1371
  %i.ahw = load ptr, ptr %i.ahv, align 8, !tbaa !30
  %i.ahx = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ahw, ptr noundef nonnull dereferenceable(11) @.str.28) #17
  %i.ahy = icmp eq i32 %i.ahx, 0
  br i1 %i.ahy, label %bb.kc, label %bb.ka

bb.kc:                                            ; preds = %bb.kb
  %i.ahz = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.aia = getelementptr inbounds nuw [8 x i8], ptr %i.ahz, i64 %indvars.iv.i1371
  %i.aib = load ptr, ptr %i.aia, align 8, !tbaa !30
  br label %.lr.ph.i1376

.lr.ph.i1376:                                     ; preds = %bb.ka, %bb.kc
  %.08.i1368 = phi ptr [ %i.aib, %bb.kc ], [ null, %bb.ka ] ; 2 uses
  br label %bb.ke

bb.kd:                                            ; preds = %bb.ke
  %indvars.iv.next.i1379 = add nuw nsw i64 %indvars.iv.i1378, 1 ; 2 uses
  %exitcond.not.i1380 = icmp eq i64 %indvars.iv.next.i1379, %wide.trip.count.i1370
  br i1 %exitcond.not.i1380, label %.critedge1220, label %bb.ke, !llvm.loop !46

bb.ke:                                            ; preds = %bb.kd, %.lr.ph.i1376
  %indvars.iv.i1378 = phi i64 [ 0, %.lr.ph.i1376 ], [ %indvars.iv.next.i1379, %bb.kd ] ; 3 uses
  %i.aic = getelementptr inbounds nuw [8 x i8], ptr %i.ahu, i64 %indvars.iv.i1378
  %i.aid = load ptr, ptr %i.aic, align 8, !tbaa !30
  %i.aie = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aid, ptr noundef nonnull dereferenceable(8) @.str.29) #17
  %i.aif = icmp eq i32 %i.aie, 0
  br i1 %i.aif, label %html_tag_arg_value.exit1381, label %bb.kd

html_tag_arg_value.exit1381:                      ; preds = %bb.ke
  %i.aig = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.aih = getelementptr inbounds nuw [8 x i8], ptr %i.aig, i64 %indvars.iv.i1378
  %i.aii = load ptr, ptr %i.aih, align 8, !tbaa !30 ; 7 uses
  %i.aij = icmp ne ptr %.08.i1368, null
  %i.aik = icmp ne ptr %i.aii, null
  %or.cond12 = select i1 %i.aij, i1 %i.aik, i1 false
  br i1 %or.cond12, label %bb.kf, label %.critedge1220

bb.kf:                                            ; preds = %html_tag_arg_value.exit1381
  %i.ail = call i32 @strcasecmp(ptr noundef nonnull %.08.i1368, ptr noundef nonnull @.str.30) #17
  %i.aim = icmp eq i32 %i.ail, 0
  br i1 %i.aim, label %bb.kg, label %.critedge1220

bb.kg:                                            ; preds = %bb.kf
  %i.ain = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aii) #17 ; 6 uses
  %i.aio = add i64 %i.ain, 1
  %i.aip = call ptr @cli_malloc(i64 noundef %i.aio) #15 ; 10 uses
  %.not1166.not = icmp eq ptr %i.aip, null
  br i1 %.not1166.not, label %.critedge1219, label %.preheader1671

.preheader1671:                                   ; preds = %bb.kg
  %.not1878 = icmp eq i64 %i.ain, 0
  br i1 %.not1878, label %._crit_edge1797, label %.lr.ph1796

.lr.ph1796:                                       ; preds = %.preheader1671
  %i.aiq = tail call ptr @__ctype_tolower_loc() #16 ; 5 uses
  %xtraiter = and i64 %i.ain, 3                   ; 3 uses
  %i.air = icmp ult i64 %i.ain, 4
  br i1 %i.air, label %.epil.preheader, label %.lr.ph1796.new

.lr.ph1796.new:                                   ; preds = %.lr.ph1796
  %unroll_iter = and i64 %i.ain, -4
  br label %bb.kh

bb.kh:                                            ; preds = %bb.kh, %.lr.ph1796.new
  %.010411795 = phi i64 [ 0, %.lr.ph1796.new ], [ %i.akb, %bb.kh ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph1796.new ], [ %niter.next.3, %bb.kh ]
  %i.ais = load ptr, ptr %i.aiq, align 8, !tbaa !44
  %i.ait = getelementptr inbounds nuw i8, ptr %i.aii, i64 %.010411795
  %i.aiu = load i8, ptr %i.ait, align 1, !tbaa !15
  %i.aiv = zext i8 %i.aiu to i64
  %i.aiw = getelementptr inbounds nuw [4 x i8], ptr %i.ais, i64 %i.aiv
  %i.aix = load i32, ptr %i.aiw, align 4, !tbaa !4
  %i.aiy = trunc i32 %i.aix to i8
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aip, i64 %.010411795
  store i8 %i.aiy, ptr %i.aiz, align 1, !tbaa !15
  %i.aja = or disjoint i64 %.010411795, 1         ; 2 uses
  %i.ajb = load ptr, ptr %i.aiq, align 8, !tbaa !44
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.aii, i64 %i.aja
  %i.ajd = load i8, ptr %i.ajc, align 1, !tbaa !15
  %i.aje = zext i8 %i.ajd to i64
  %i.ajf = getelementptr inbounds nuw [4 x i8], ptr %i.ajb, i64 %i.aje
  %i.ajg = load i32, ptr %i.ajf, align 4, !tbaa !4
  %i.ajh = trunc i32 %i.ajg to i8
  %i.aji = getelementptr inbounds nuw i8, ptr %i.aip, i64 %i.aja
  store i8 %i.ajh, ptr %i.aji, align 1, !tbaa !15
  %i.ajj = or disjoint i64 %.010411795, 2         ; 2 uses
  %i.ajk = load ptr, ptr %i.aiq, align 8, !tbaa !44
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.aii, i64 %i.ajj
  %i.ajm = load i8, ptr %i.ajl, align 1, !tbaa !15
  %i.ajn = zext i8 %i.ajm to i64
  %i.ajo = getelementptr inbounds nuw [4 x i8], ptr %i.ajk, i64 %i.ajn
  %i.ajp = load i32, ptr %i.ajo, align 4, !tbaa !4
  %i.ajq = trunc i32 %i.ajp to i8
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.aip, i64 %i.ajj
  store i8 %i.ajq, ptr %i.ajr, align 1, !tbaa !15
  %i.ajs = or disjoint i64 %.010411795, 3         ; 2 uses
  %i.ajt = load ptr, ptr %i.aiq, align 8, !tbaa !44
  %i.aju = getelementptr inbounds nuw i8, ptr %i.aii, i64 %i.ajs
  %i.ajv = load i8, ptr %i.aju, align 1, !tbaa !15
  %i.ajw = zext i8 %i.ajv to i64
  %i.ajx = getelementptr inbounds nuw [4 x i8], ptr %i.ajt, i64 %i.ajw
  %i.ajy = load i32, ptr %i.ajx, align 4, !tbaa !4
  %i.ajz = trunc i32 %i.ajy to i8
  %i.aka = getelementptr inbounds nuw i8, ptr %i.aip, i64 %i.ajs
  store i8 %i.ajz, ptr %i.aka, align 1, !tbaa !15
  %i.akb = add nuw i64 %.010411795, 4             ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge1797.loopexit.unr-lcssa, label %bb.kh, !llvm.loop !50

._crit_edge1797.loopexit.unr-lcssa:               ; preds = %bb.kh
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge1797, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge1797.loopexit.unr-lcssa, %.lr.ph1796
  %.010411795.epil.init = phi i64 [ 0, %.lr.ph1796 ], [ %i.akb, %._crit_edge1797.loopexit.unr-lcssa ]
  %lcmp.mod2215 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod2215)
  br label %bb.ki

bb.ki:                                            ; preds = %bb.ki, %.epil.preheader
  %.010411795.epil = phi i64 [ %.010411795.epil.init, %.epil.preheader ], [ %i.akk, %bb.ki ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ki ]
  %i.akc = load ptr, ptr %i.aiq, align 8, !tbaa !44
  %i.akd = getelementptr inbounds nuw i8, ptr %i.aii, i64 %.010411795.epil
  %i.ake = load i8, ptr %i.akd, align 1, !tbaa !15
  %i.akf = zext i8 %i.ake to i64
  %i.akg = getelementptr inbounds nuw [4 x i8], ptr %i.akc, i64 %i.akf
  %i.akh = load i32, ptr %i.akg, align 4, !tbaa !4
  %i.aki = trunc i32 %i.akh to i8
  %i.akj = getelementptr inbounds nuw i8, ptr %i.aip, i64 %.010411795.epil
  store i8 %i.aki, ptr %i.akj, align 1, !tbaa !15
  %i.akk = add nuw i64 %.010411795.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge1797, label %bb.ki, !llvm.loop !51

._crit_edge1797:                                  ; preds = %._crit_edge1797.loopexit.unr-lcssa, %bb.ki, %.preheader1671
  %i.akl = getelementptr inbounds nuw i8, ptr %i.aip, i64 %i.ain
  store i8 0, ptr %i.akl, align 1, !tbaa !15
  %i.akm = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.aip, ptr noundef nonnull dereferenceable(1) @.str.31) #17 ; 2 uses
  %.not1167 = icmp eq ptr %i.akm, null
  br i1 %.not1167, label %.thread, label %.preheader1670

.thread:                                          ; preds = %._crit_edge1797
  call void @free(ptr noundef nonnull %i.aip) #15
  br label %.critedge1220

.preheader1670:                                   ; preds = %._crit_edge1797, %bb.kj
end_hunk_1
begin_hunk_2_@cli_html_normalise:bb.a

bb.lr:                                            ; preds = %bb.lq, %bb.lp
  %.not1152 = icmp eq ptr %.110271800, null
  br i1 %.not1152, label %html_tag_arg_value.exit1409.thread, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  call fastcc void @html_tag_arg_add(ptr noundef %3, ptr noundef nonnull @.str.37, ptr noundef nonnull %i.anq)
  %i.anv = call ptr @blobCreate() #15
  %i.anw = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.anx = load i32, ptr %3, align 8, !tbaa !24   ; 2 uses
  %i.any = sext i32 %i.anx to i64
  %i.anz = getelementptr [8 x i8], ptr %i.anw, i64 %i.any
  %i.aoa = getelementptr i8, ptr %i.anz, i64 -8
  store ptr %i.anv, ptr %i.aoa, align 8, !tbaa !33
  %i.aob = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.110271800) #17
  %i.aoc = getelementptr inbounds nuw i8, ptr %.110271800, i64 %i.aob
  call fastcc void @html_tag_contents_append(ptr noundef %3, i32 noundef %i.anx, ptr noundef %.110271800, ptr noundef nonnull %i.aoc)
  %i.aod = load i32, ptr %3, align 8, !tbaa !24
  call fastcc void @html_tag_contents_done(ptr noundef nonnull %3, i32 noundef %i.aod)
  %.pr1655.pre = load i32, ptr %5, align 8, !tbaa !24
  br label %html_tag_arg_value.exit1409.thread

html_tag_arg_value.exit1409.thread:               ; preds = %bb.lm, %bb.lr, %bb.ls, %bb.lo, %html_tag_arg_value.exit1409
  %.pr1655 = phi i32 [ %i.anh, %html_tag_arg_value.exit1409 ], [ %i.anh, %bb.lr ], [ %.pr1655.pre, %bb.ls ], [ %i.anh, %bb.lo ], [ %i.anh, %bb.lm ] ; 2 uses
  %i.aoe = icmp sgt i32 %.pr1655, 0
  br i1 %i.aoe, label %.lr.ph.i1411, label %.critedge1220

.lr.ph.i1411:                                     ; preds = %html_tag_arg_value.exit1409.thread
  %i.aof = load ptr, ptr %i.u, align 8, !tbaa !29
  %wide.trip.count.i1412 = zext nneg i32 %.pr1655 to i64
  br label %bb.lu

bb.lt:                                            ; preds = %bb.lu
  %indvars.iv.next.i1414 = add nuw nsw i64 %indvars.iv.i1413, 1 ; 2 uses
  %exitcond.not.i1415 = icmp eq i64 %indvars.iv.next.i1414, %wide.trip.count.i1412
  br i1 %exitcond.not.i1415, label %.critedge1220, label %bb.lu, !llvm.loop !46

bb.lu:                                            ; preds = %bb.lt, %.lr.ph.i1411
  %indvars.iv.i1413 = phi i64 [ 0, %.lr.ph.i1411 ], [ %indvars.iv.next.i1414, %bb.lt ] ; 3 uses
  %i.aog = getelementptr inbounds nuw [8 x i8], ptr %i.aof, i64 %indvars.iv.i1413
  %i.aoh = load ptr, ptr %i.aog, align 8, !tbaa !30
  %i.aoi = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aoh, ptr noundef nonnull dereferenceable(7) @.str.41) #17
  %i.aoj = icmp eq i32 %i.aoi, 0
  br i1 %i.aoj, label %html_tag_arg_value.exit1416, label %bb.lt

html_tag_arg_value.exit1416:                      ; preds = %bb.lu
  %i.aok = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.aol = getelementptr inbounds nuw [8 x i8], ptr %i.aok, i64 %indvars.iv.i1413
  %i.aom = load ptr, ptr %i.aol, align 8, !tbaa !30 ; 4 uses
  %.not1153 = icmp eq ptr %i.aom, null
  br i1 %.not1153, label %.critedge1220, label %bb.lv

bb.lv:                                            ; preds = %html_tag_arg_value.exit1416
  %char01154 = load i8, ptr %i.aom, align 1
  %.not1155 = icmp eq i8 %char01154, 0
  br i1 %.not1155, label %.critedge1220, label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  call fastcc void @html_tag_arg_add(ptr noundef %3, ptr noundef nonnull @.str.41, ptr noundef nonnull %i.aom)
  %i.aon = load i32, ptr %i.bc, align 4, !tbaa !38
  %i.aoo = icmp ne i32 %i.aon, 0
  %i.aop = icmp ne i32 %.110061803, 0
  %or.cond20 = select i1 %i.aoo, i1 %i.aop, i1 false
  br i1 %or.cond20, label %bb.lx, label %bb.ly

bb.lx:                                            ; preds = %bb.lw
  %i.aoq = load i32, ptr %3, align 8, !tbaa !24
  call fastcc void @html_tag_set_inahref(ptr noundef %3, i32 noundef %i.aoq, i32 noundef %.110061803)
  br label %bb.ly

bb.ly:                                            ; preds = %bb.lx, %bb.lw
  %.not1156 = icmp eq ptr %.110271800, null
  br i1 %.not1156, label %.critedge1220, label %bb.lz

bb.lz:                                            ; preds = %bb.ly
  call fastcc void @html_tag_arg_add(ptr noundef %3, ptr noundef nonnull @.str.37, ptr noundef nonnull %i.aom)
  %i.aor = call ptr @blobCreate() #15
  %i.aos = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.aot = load i32, ptr %3, align 8, !tbaa !24   ; 2 uses
  %i.aou = sext i32 %i.aot to i64
  %i.aov = getelementptr [8 x i8], ptr %i.aos, i64 %i.aou
  %i.aow = getelementptr i8, ptr %i.aov, i64 -8
  store ptr %i.aor, ptr %i.aow, align 8, !tbaa !33
  %i.aox = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.110271800) #17
  %i.aoy = getelementptr inbounds nuw i8, ptr %.110271800, i64 %i.aox
  call fastcc void @html_tag_contents_append(ptr noundef %3, i32 noundef %i.aot, ptr noundef %.110271800, ptr noundef nonnull %i.aoy)
  %i.aoz = load i32, ptr %3, align 8, !tbaa !24
  call fastcc void @html_tag_contents_done(ptr noundef nonnull %3, i32 noundef %i.aoz)
  br label %.critedge1220

bb.ma:                                            ; preds = %bb.lk
  %i.apa = load i32, ptr %i.b, align 16
  %i.apb = xor i32 %i.apa, 1634887273
  %i.apc = getelementptr i8, ptr %i.b, i64 3
  %i.apd = load i32, ptr %i.apc, align 1
  %i.ape = xor i32 %i.apd, 6647137
  %i.apf = or i32 %i.apb, %i.ape
  %i.apg = icmp ne i32 %i.apf, 0
  %i.aph = zext i1 %i.apg to i32
  %i.api = icmp eq i32 %i.aph, 0
  br i1 %i.api, label %bb.mb, label %bb.mh

bb.mb:                                            ; preds = %bb.ma
  %i.apj = call fastcc ptr @html_tag_arg_value(ptr noundef %5, ptr noundef nonnull @.str.40) ; 4 uses
  %.not1145 = icmp eq ptr %i.apj, null
  br i1 %.not1145, label %.critedge1220, label %bb.mc

bb.mc:                                            ; preds = %bb.mb
  %char01146 = load i8, ptr %i.apj, align 1
  %.not1147 = icmp eq i8 %char01146, 0
  br i1 %.not1147, label %.critedge1220, label %bb.md

bb.md:                                            ; preds = %bb.mc
  call fastcc void @html_tag_arg_add(ptr noundef %3, ptr noundef nonnull @.str.42, ptr noundef nonnull %i.apj)
  %i.apk = load i32, ptr %i.bc, align 4, !tbaa !38
  %i.apl = icmp ne i32 %i.apk, 0
  %i.apm = icmp ne i32 %.110061803, 0
  %or.cond22 = select i1 %i.apl, i1 %i.apm, i1 false
  br i1 %or.cond22, label %bb.me, label %bb.mf

bb.me:                                            ; preds = %bb.md
  %i.apn = load i32, ptr %3, align 8, !tbaa !24
  call fastcc void @html_tag_set_inahref(ptr noundef %3, i32 noundef %i.apn, i32 noundef %.110061803)
  br label %bb.mf

bb.mf:                                            ; preds = %bb.me, %bb.md
  %.not1148 = icmp eq ptr %.110271800, null
  br i1 %.not1148, label %.critedge1220, label %bb.mg

bb.mg:                                            ; preds = %bb.mf
  call fastcc void @html_tag_arg_add(ptr noundef %3, ptr noundef nonnull @.str.37, ptr noundef nonnull %i.apj)
  %i.apo = call ptr @blobCreate() #15
  %i.app = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.apq = load i32, ptr %3, align 8, !tbaa !24   ; 2 uses
  %i.apr = sext i32 %i.apq to i64
  %i.aps = getelementptr [8 x i8], ptr %i.app, i64 %i.apr
  %i.apt = getelementptr i8, ptr %i.aps, i64 -8
  store ptr %i.apo, ptr %i.apt, align 8, !tbaa !33
  %i.apu = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.110271800) #17
  %i.apv = getelementptr inbounds nuw i8, ptr %.110271800, i64 %i.apu
  call fastcc void @html_tag_contents_append(ptr noundef %3, i32 noundef %i.apq, ptr noundef %.110271800, ptr noundef nonnull %i.apv)
  %i.apw = load i32, ptr %3, align 8, !tbaa !24
  call fastcc void @html_tag_contents_done(ptr noundef nonnull %3, i32 noundef %i.apw)
  br label %.critedge1220

bb.mh:                                            ; preds = %bb.ma
  %i.apx = load i32, ptr %i.b, align 16
  %i.apy = xor i32 %i.apx, 1634038369
  %i.apz = getelementptr i8, ptr %i.b, i64 4
  %i.aqa = load i8, ptr %i.apz, align 4
  %i.aqb = zext i8 %i.aqa to i32
  %i.aqc = or i32 %i.apy, %i.aqb
  %i.aqd = icmp ne i32 %i.aqc, 0
  %i.aqe = zext i1 %i.aqd to i32
  %i.aqf = icmp eq i32 %i.aqe, 0
  br i1 %i.aqf, label %bb.mi, label %.critedge1220

bb.mi:                                            ; preds = %bb.mh
  %i.aqg = call fastcc ptr @html_tag_arg_value(ptr noundef %5, ptr noundef nonnull @.str.34) ; 4 uses
  %.not1142 = icmp eq ptr %i.aqg, null
  br i1 %.not1142, label %.critedge1220, label %bb.mj

bb.mj:                                            ; preds = %bb.mi
  %char0 = load i8, ptr %i.aqg, align 1
  %.not1143 = icmp eq i8 %char0, 0
  br i1 %.not1143, label %.critedge1220, label %bb.mk

bb.mk:                                            ; preds = %bb.mj
  call fastcc void @html_tag_arg_add(ptr noundef %3, ptr noundef nonnull @.str.43, ptr noundef nonnull %i.aqg)
  %i.aqh = load i32, ptr %i.bc, align 4, !tbaa !38
  %i.aqi = icmp ne i32 %i.aqh, 0
  %i.aqj = icmp ne i32 %.110061803, 0
  %or.cond24 = select i1 %i.aqi, i1 %i.aqj, i1 false
  br i1 %or.cond24, label %bb.ml, label %bb.mm

bb.ml:                                            ; preds = %bb.mk
  %i.aqk = load i32, ptr %3, align 8, !tbaa !24
  call fastcc void @html_tag_set_inahref(ptr noundef %3, i32 noundef %i.aqk, i32 noundef %.110061803)
  br label %bb.mm

bb.mm:                                            ; preds = %bb.ml, %bb.mk
  %.not1144 = icmp eq ptr %.110271800, null
  br i1 %.not1144, label %.critedge1220, label %bb.mn

bb.mn:                                            ; preds = %bb.mm
  call fastcc void @html_tag_arg_add(ptr noundef %3, ptr noundef nonnull @.str.37, ptr noundef nonnull %i.aqg)
  %i.aql = call ptr @blobCreate() #15
  %i.aqm = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.aqn = load i32, ptr %3, align 8, !tbaa !24   ; 2 uses
  %i.aqo = sext i32 %i.aqn to i64
  %i.aqp = getelementptr [8 x i8], ptr %i.aqm, i64 %i.aqo
  %i.aqq = getelementptr i8, ptr %i.aqp, i64 -8
  store ptr %i.aql, ptr %i.aqq, align 8, !tbaa !33
  %i.aqr = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.110271800) #17
  %i.aqs = getelementptr inbounds nuw i8, ptr %.110271800, i64 %i.aqr
  call fastcc void @html_tag_contents_append(ptr noundef %3, i32 noundef %i.aqn, ptr noundef %.110271800, ptr noundef nonnull %i.aqs)
  %i.aqt = load i32, ptr %3, align 8, !tbaa !24
  call fastcc void @html_tag_contents_done(ptr noundef nonnull %3, i32 noundef %i.aqt)
  br label %.critedge1220

.critedge1220:                                    ; preds = %bb.lf, %bb.lt, %bb.kp, %bb.kd, %bb.kl, %bb.ll, %html_tag_arg_value.exit1409.thread, %bb.le, %bb.ko, %bb.jz, %.thread, %bb.jw, %._crit_edge59.i, %html_tag_arg_value.exit1381, %bb.kf, %html_tag_arg_value.exit1402, %bb.lj, %bb.iz, %bb.ja, %bb.km, %bb.mf, %bb.mg, %bb.mc, %bb.mb, %bb.mi, %bb.mj, %bb.mn, %bb.mm, %bb.mh, %html_tag_arg_value.exit1416, %bb.lv, %bb.lz, %bb.ly, %html_tag_arg_value.exit1388, %bb.kr, %bb.lb, %bb.la, %bb.iy
  %.31029 = phi ptr [ %.110271800, %bb.km ], [ %.110271800, %bb.iy ], [ %.110271800, %html_tag_arg_value.exit1381 ], [ %.110271800, %html_tag_arg_value.exit1402 ], [ %.110271800, %bb.lb ], [ %.110271800, %bb.la ], [ %.110271800, %bb.kr ], [ %.110271800, %html_tag_arg_value.exit1388 ], [ null, %bb.iz ], [ %.110271800, %bb.lz ], [ null, %bb.ly ], [ %.110271800, %bb.lv ], [ %.110271800, %html_tag_arg_value.exit1416 ], [ %.110271800, %bb.mg ], [ null, %bb.mf ], [ %.110271800, %bb.mc ], [ %.110271800, %bb.mb ], [ %.110271800, %bb.mn ], [ null, %bb.mm ], [ %.110271800, %bb.mj ], [ %.110271800, %bb.mi ], [ %.110271800, %bb.mh ], [ null, %bb.ja ], [ %i.ang, %bb.lj ], [ %.110271800, %bb.kl ], [ %.110271800, %bb.kf ], [ %.110271800, %._crit_edge59.i ], [ %.110271800, %bb.jw ], [ %.110271800, %bb.lt ], [ %.110271800, %.thread ], [ %.110271800, %bb.jz ], [ %.110271800, %bb.kd ], [ %.110271800, %bb.ll ], [ %.110271800, %bb.kp ], [ %.110271800, %bb.ko ], [ %.110271800, %bb.le ], [ %.110271800, %html_tag_arg_value.exit1409.thread ], [ %.110271800, %bb.lf ]
  %.61021 = phi ptr [ %.210171802, %bb.km ], [ %.41019, %bb.iy ], [ %.210171802, %html_tag_arg_value.exit1381 ], [ %spec.select1221, %html_tag_arg_value.exit1402 ], [ %.39761807, %bb.lb ], [ %spec.select1221, %bb.la ], [ %spec.select1221, %bb.kr ], [ %spec.select1221, %html_tag_arg_value.exit1388 ], [ %.41019, %bb.iz ], [ %spec.select1221, %bb.lz ], [ %spec.select1221, %bb.ly ], [ %spec.select1221, %bb.lv ], [ %spec.select1221, %html_tag_arg_value.exit1416 ], [ %spec.select1221, %bb.mg ], [ %spec.select1221, %bb.mf ], [ %spec.select1221, %bb.mc ], [ %spec.select1221, %bb.mb ], [ %spec.select1221, %bb.mn ], [ %spec.select1221, %bb.mm ], [ %spec.select1221, %bb.mj ], [ %spec.select1221, %bb.mi ], [ %spec.select1221, %bb.mh ], [ %.41019, %bb.ja ], [ %spec.select1221, %bb.lj ], [ %.210171802, %bb.kl ], [ %.210171802, %bb.kf ], [ %.210171802, %._crit_edge59.i ], [ %.210171802, %bb.jw ], [ %spec.select1221, %bb.lt ], [ %.210171802, %.thread ], [ %.210171802, %bb.jz ], [ %.210171802, %bb.kd ], [ %spec.select1221, %bb.ll ], [ %spec.select1221, %bb.kp ], [ %spec.select1221, %bb.ko ], [ %spec.select1221, %bb.le ], [ %spec.select1221, %html_tag_arg_value.exit1409.thread ], [ %spec.select1221, %bb.lf ]
  %.61011 = phi i32 [ %.110061803, %bb.km ], [ %.31008, %bb.iy ], [ %.110061803, %html_tag_arg_value.exit1381 ], [ %.110061803, %html_tag_arg_value.exit1402 ], [ %i.amf, %bb.lb ], [ %.51010, %bb.la ], [ %.110061803, %bb.kr ], [ %.110061803, %html_tag_arg_value.exit1388 ], [ %.31008, %bb.iz ], [ %.110061803, %bb.lz ], [ %.110061803, %bb.ly ], [ %.110061803, %bb.lv ], [ %.110061803, %html_tag_arg_value.exit1416 ], [ %.110061803, %bb.mg ], [ %.110061803, %bb.mf ], [ %.110061803, %bb.mc ], [ %.110061803, %bb.mb ], [ %.110061803, %bb.mn ], [ %.110061803, %bb.mm ], [ %.110061803, %bb.mj ], [ %.110061803, %bb.mi ], [ %.110061803, %bb.mh ], [ %.31008, %bb.ja ], [ %.110061803, %bb.lj ], [ %.110061803, %bb.kl ], [ %.110061803, %bb.kf ], [ %.110061803, %._crit_edge59.i ], [ %.110061803, %bb.jw ], [ %.110061803, %bb.lt ], [ %.110061803, %.thread ], [ %.110061803, %bb.jz ], [ %.110061803, %bb.kd ], [ %.110061803, %bb.ll ], [ %.110061803, %bb.kp ], [ %.110061803, %bb.ko ], [ %.110061803, %bb.le ], [ %.110061803, %html_tag_arg_value.exit1409.thread ], [ %.110061803, %bb.lf ]
  %.5966 = phi i32 [ 1, %bb.km ], [ 1, %bb.iy ], [ 1, %html_tag_arg_value.exit1381 ], [ 1, %html_tag_arg_value.exit1402 ], [ 1, %bb.lb ], [ 1, %bb.la ], [ 1, %bb.kr ], [ 1, %html_tag_arg_value.exit1388 ], [ 1, %bb.iz ], [ 1, %bb.lz ], [ 1, %bb.ly ], [ 1, %bb.lv ], [ 1, %html_tag_arg_value.exit1416 ], [ 1, %bb.mg ], [ 1, %bb.mf ], [ 1, %bb.mc ], [ 1, %bb.mb ], [ 1, %bb.mn ], [ 1, %bb.mm ], [ 1, %bb.mj ], [ 1, %bb.mi ], [ 1, %bb.mh ], [ 1, %bb.ja ], [ 1, %bb.lj ], [ 1, %bb.kl ], [ 1, %bb.kf ], [ %.4965, %._crit_edge59.i ], [ %.4965, %bb.jw ], [ 1, %bb.lt ], [ 1, %.thread ], [ 1, %bb.jz ], [ 1, %bb.kd ], [ 1, %bb.ll ], [ 1, %bb.kp ], [ 1, %bb.ko ], [ 1, %bb.le ], [ 1, %html_tag_arg_value.exit1409.thread ], [ 1, %bb.lf ]
  %.4946 = phi i32 [ %.19431811, %bb.km ], [ %.2944, %bb.iy ], [ %.19431811, %html_tag_arg_value.exit1381 ], [ %.19431811, %html_tag_arg_value.exit1402 ], [ %.19431811, %bb.lb ], [ %.19431811, %bb.la ], [ %.19431811, %bb.kr ], [ %.19431811, %html_tag_arg_value.exit1388 ], [ %.2944, %bb.iz ], [ %.19431811, %bb.lz ], [ %.19431811, %bb.ly ], [ %.19431811, %bb.lv ], [ %.19431811, %html_tag_arg_value.exit1416 ], [ %.19431811, %bb.mg ], [ %.19431811, %bb.mf ], [ %.19431811, %bb.mc ], [ %.19431811, %bb.mb ], [ %.19431811, %bb.mn ], [ %.19431811, %bb.mm ], [ %.19431811, %bb.mj ], [ %.19431811, %bb.mi ], [ %.19431811, %bb.mh ], [ %.2944, %bb.ja ], [ %.19431811, %bb.lj ], [ %.19431811, %bb.kl ], [ %.19431811, %bb.kf ], [ %.3945, %._crit_edge59.i ], [ %.3945, %bb.jw ], [ %.19431811, %bb.lt ], [ %.19431811, %.thread ], [ %.19431811, %bb.jz ], [ %.19431811, %bb.kd ], [ %.19431811, %bb.ll ], [ %.19431811, %bb.kp ], [ %.19431811, %bb.ko ], [ %.19431811, %bb.le ], [ %.19431811, %html_tag_arg_value.exit1409.thread ], [ %.19431811, %bb.lf ]
  call void @html_tag_arg_free(ptr noundef nonnull %5)
  br label %.backedge

bb.mo:                                            ; preds = %bb.al
  %i.aqu = icmp eq i8 %.pre19141916, 35
  br i1 %i.aqu, label %bb.mp, label %bb.mq

bb.mp:                                            ; preds = %bb.mo
  %i.aqv = getelementptr inbounds nuw i8, ptr %.39761807, i64 1
  br label %.backedge

bb.mq:                                            ; preds = %bb.mo
  br i1 %i.k, label %.backedge, label %bb.mr

bb.mr:                                            ; preds = %bb.mq
  %i.aqw = icmp eq i32 %.19621809, 9
  %i.aqx = icmp slt i32 %.19321813, 1024
  %or.cond26 = select i1 %i.aqw, i1 %i.aqx, i1 false
  br i1 %or.cond26, label %bb.ms, label %bb.mt

bb.ms:                                            ; preds = %bb.mr
  %i.aqy = add nsw i32 %.19321813, 1
  %i.aqz = sext i32 %.19321813 to i64
  %i.ara = getelementptr inbounds i8, ptr %i.d, i64 %i.aqz
  store i8 38, ptr %i.ara, align 1, !tbaa !15
  br label %bb.mt

bb.mt:                                            ; preds = %bb.ms, %bb.mr
  %.11 = phi i32 [ %i.aqy, %bb.ms ], [ %.19321813, %bb.mr ] ; 2 uses
  br i1 %.not.i1531, label %bb.mw, label %bb.mu

bb.mu:                                            ; preds = %bb.mt
  %i.arb = load i32, ptr %i.av, align 4, !tbaa !41 ; 2 uses
  %i.arc = icmp eq i32 %i.arb, 8192
  br i1 %i.arc, label %html_output_flush.exit.i1420, label %bb.mv

html_output_flush.exit.i1420:                     ; preds = %bb.mu
  %i.ard = load i32, ptr %.0994, align 4, !tbaa !39
  %i.are = call i32 @cli_writen(i32 noundef %i.ard, ptr noundef nonnull %i.aw, i32 noundef 8192) #15 ; 0 uses
  br label %bb.mv

bb.mv:                                            ; preds = %html_output_flush.exit.i1420, %bb.mu
  %i.arf = phi i32 [ 0, %html_output_flush.exit.i1420 ], [ %i.arb, %bb.mu ] ; 2 uses
  %i.arg = add nsw i32 %i.arf, 1
  store i32 %i.arg, ptr %i.av, align 4, !tbaa !41
  %i.arh = sext i32 %i.arf to i64
  %i.ari = getelementptr inbounds i8, ptr %i.aw, i64 %i.arh
  store i8 38, ptr %i.ari, align 1, !tbaa !15
  br label %bb.mw

bb.mw:                                            ; preds = %bb.mv, %bb.mt
  br i1 %.not12.i1532, label %.backedge, label %bb.mx

bb.mx:                                            ; preds = %bb.mw
  %i.arj = load i32, ptr %i.ax, align 4, !tbaa !41 ; 2 uses
  %i.ark = icmp eq i32 %i.arj, 8192
  br i1 %i.ark, label %html_output_flush.exit13.i1419, label %bb.my

html_output_flush.exit13.i1419:                   ; preds = %bb.mx
  %i.arl = load i32, ptr %.0996, align 4, !tbaa !39
  %i.arm = call i32 @cli_writen(i32 noundef %i.arl, ptr noundef nonnull %i.ay, i32 noundef 8192) #15 ; 0 uses
  br label %bb.my

bb.my:                                            ; preds = %html_output_flush.exit13.i1419, %bb.mx
  %i.arn = phi i32 [ 0, %html_output_flush.exit13.i1419 ], [ %i.arj, %bb.mx ] ; 2 uses
  %i.aro = add nsw i32 %i.arn, 1
  store i32 %i.aro, ptr %i.ax, align 4, !tbaa !41
  %i.arp = sext i32 %i.arn to i64
  %i.arq = getelementptr inbounds i8, ptr %i.ay, i64 %i.arp
  store i8 38, ptr %i.arq, align 1, !tbaa !15
  br label %.backedge

bb.mz:                                            ; preds = %bb.al
  %i.arr = icmp eq i8 %.pre19141916, 59
  br i1 %i.arr, label %bb.na, label %bb.og

bb.na:                                            ; preds = %bb.mz
  %i.ars = getelementptr inbounds nuw i8, ptr %i.e, i64 %.110331799
  store i8 0, ptr %i.ars, align 1, !tbaa !15
  %i.art = call ptr @entity_norm(ptr noundef nonnull %6, ptr noundef nonnull %i.e) #15 ; 5 uses
  %.not1130 = icmp eq ptr %i.art, null
  br i1 %.not1130, label %bb.nj, label %.preheader1675

.preheader1675:                                   ; preds = %bb.na
  %char01875 = load i8, ptr %i.art, align 1
  %.not1876 = icmp eq i8 %char01875, 0
  br i1 %.not1876, label %._crit_edge, label %.lr.ph1787

.lr.ph1787:                                       ; preds = %.preheader1675
  %i.aru = tail call ptr @__ctype_tolower_loc() #16
  %i.arv = icmp eq i32 %.19621809, 9
  br label %bb.nb

bb.nb:                                            ; preds = %.lr.ph1787, %bb.ni
  %.121786 = phi i32 [ %.19321813, %.lr.ph1787 ], [ %.13, %bb.ni ] ; 4 uses
  %.010391785 = phi i64 [ 0, %.lr.ph1787 ], [ %i.asx, %bb.ni ] ; 2 uses
  %i.arw = load ptr, ptr %i.aru, align 8, !tbaa !44
  %i.arx = getelementptr inbounds nuw i8, ptr %i.art, i64 %.010391785
  %i.ary = load i8, ptr %i.arx, align 1, !tbaa !15
  %i.arz = zext i8 %i.ary to i64
  %i.asa = getelementptr inbounds nuw [4 x i8], ptr %i.arw, i64 %i.arz
  %i.asb = load i32, ptr %i.asa, align 4, !tbaa !4
  %i.asc = trunc i32 %i.asb to i8                 ; 3 uses
  br i1 %.not.i1531, label %bb.ne, label %bb.nc

bb.nc:                                            ; preds = %bb.nb
  %i.asd = load i32, ptr %i.av, align 4, !tbaa !41 ; 2 uses
  %i.ase = icmp eq i32 %i.asd, 8192
  br i1 %i.ase, label %html_output_flush.exit.i1425, label %bb.nd

html_output_flush.exit.i1425:                     ; preds = %bb.nc
  %i.asf = load i32, ptr %.0994, align 4, !tbaa !39
  %i.asg = call i32 @cli_writen(i32 noundef %i.asf, ptr noundef nonnull %i.aw, i32 noundef 8192) #15 ; 0 uses
  br label %bb.nd

bb.nd:                                            ; preds = %html_output_flush.exit.i1425, %bb.nc
  %i.ash = phi i32 [ 0, %html_output_flush.exit.i1425 ], [ %i.asd, %bb.nc ] ; 2 uses
  %i.asi = add nsw i32 %i.ash, 1
  store i32 %i.asi, ptr %i.av, align 4, !tbaa !41
  %i.asj = sext i32 %i.ash to i64
  %i.ask = getelementptr inbounds i8, ptr %i.aw, i64 %i.asj
  store i8 %i.asc, ptr %i.ask, align 1, !tbaa !15
  br label %bb.ne

bb.ne:                                            ; preds = %bb.nd, %bb.nb
  br i1 %.not12.i1532, label %html_output_c.exit1426, label %bb.nf

bb.nf:                                            ; preds = %bb.ne
  %i.asl = load i32, ptr %i.ax, align 4, !tbaa !41 ; 2 uses
  %i.asm = icmp eq i32 %i.asl, 8192
  br i1 %i.asm, label %html_output_flush.exit13.i1424, label %bb.ng

html_output_flush.exit13.i1424:                   ; preds = %bb.nf
  %i.asn = load i32, ptr %.0996, align 4, !tbaa !39
  %i.aso = call i32 @cli_writen(i32 noundef %i.asn, ptr noundef nonnull %i.ay, i32 noundef 8192) #15 ; 0 uses
  br label %bb.ng

bb.ng:                                            ; preds = %html_output_flush.exit13.i1424, %bb.nf
  %i.asp = phi i32 [ 0, %html_output_flush.exit13.i1424 ], [ %i.asl, %bb.nf ] ; 2 uses
  %i.asq = add nsw i32 %i.asp, 1
  store i32 %i.asq, ptr %i.ax, align 4, !tbaa !41
  %i.asr = sext i32 %i.asp to i64
  %i.ass = getelementptr inbounds i8, ptr %i.ay, i64 %i.asr
  store i8 %i.asc, ptr %i.ass, align 1, !tbaa !15
  br label %html_output_c.exit1426

html_output_c.exit1426:                           ; preds = %bb.ne, %bb.ng
  %i.ast = icmp slt i32 %.121786, 1024
  %or.cond28 = select i1 %i.arv, i1 %i.ast, i1 false
  br i1 %or.cond28, label %bb.nh, label %bb.ni

bb.nh:                                            ; preds = %html_output_c.exit1426
  %i.asu = add nsw i32 %.121786, 1
  %i.asv = sext i32 %.121786 to i64
  %i.asw = getelementptr inbounds i8, ptr %i.d, i64 %i.asv
  store i8 %i.asc, ptr %i.asw, align 1, !tbaa !15
  br label %bb.ni

bb.ni:                                            ; preds = %bb.nh, %html_output_c.exit1426
  %.13 = phi i32 [ %i.asu, %bb.nh ], [ %.121786, %html_output_c.exit1426 ] ; 2 uses
  %i.asx = add nuw i64 %.010391785, 1             ; 2 uses
  %i.asy = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.art) #17
  %i.asz = icmp ult i64 %i.asx, %i.asy
  br i1 %i.asz, label %bb.nb, label %._crit_edge, !llvm.loop !54

._crit_edge:                                      ; preds = %bb.ni, %.preheader1675
  %.12.lcssa = phi i32 [ %.19321813, %.preheader1675 ], [ %.13, %bb.ni ]
  call void @free(ptr noundef nonnull %i.art) #15
  br label %html_output_c.exit1441

bb.nj:                                            ; preds = %bb.na
  br i1 %.not.i1531, label %bb.nm, label %bb.nk

bb.nk:                                            ; preds = %bb.nj
  %i.ata = load i32, ptr %i.av, align 4, !tbaa !41 ; 2 uses
  %i.atb = icmp eq i32 %i.ata, 8192
  br i1 %i.atb, label %html_output_flush.exit.i1430, label %bb.nl

html_output_flush.exit.i1430:                     ; preds = %bb.nk
  %i.atc = load i32, ptr %.0994, align 4, !tbaa !39
  %i.atd = call i32 @cli_writen(i32 noundef %i.atc, ptr noundef nonnull %i.aw, i32 noundef 8192) #15 ; 0 uses
  br label %bb.nl

bb.nl:                                            ; preds = %html_output_flush.exit.i1430, %bb.nk
  %i.ate = phi i32 [ 0, %html_output_flush.exit.i1430 ], [ %i.ata, %bb.nk ] ; 2 uses
  %i.atf = add nsw i32 %i.ate, 1
  store i32 %i.atf, ptr %i.av, align 4, !tbaa !41
  %i.atg = sext i32 %i.ate to i64
  %i.ath = getelementptr inbounds i8, ptr %i.aw, i64 %i.atg
  store i8 38, ptr %i.ath, align 1, !tbaa !15
  br label %bb.nm

bb.nm:                                            ; preds = %bb.nl, %bb.nj
  br i1 %.not12.i1532, label %html_output_c.exit1431, label %bb.nn

bb.nn:                                            ; preds = %bb.nm
  %i.ati = load i32, ptr %i.ax, align 4, !tbaa !41 ; 2 uses
  %i.atj = icmp eq i32 %i.ati, 8192
  br i1 %i.atj, label %html_output_flush.exit13.i1429, label %bb.no

end_hunk_2
begin_hunk_3_@cli_html_normalise:bb.a
html_output_flush.exit.i1586:                     ; preds = %bb.vc
  %i.buc = load i32, ptr %.110021804, align 4, !tbaa !39
  %i.bud = getelementptr inbounds nuw i8, ptr %.110021804, i64 4
  %i.bue = call i32 @cli_writen(i32 noundef %i.buc, ptr noundef nonnull %i.bud, i32 noundef 8192) #15 ; 0 uses
  br label %bb.vd

bb.vd:                                            ; preds = %html_output_flush.exit.i1586, %bb.vc
  %i.buf = phi i32 [ 0, %html_output_flush.exit.i1586 ], [ %i.bua, %bb.vc ] ; 2 uses
  %i.bug = getelementptr inbounds nuw i8, ptr %.110021804, i64 4
  %i.buh = add nsw i32 %i.buf, 1
  store i32 %i.buh, ptr %i.btz, align 4, !tbaa !41
  %i.bui = sext i32 %i.buf to i64
  %i.buj = getelementptr inbounds i8, ptr %i.bug, i64 %i.bui
  store i8 %i.bty, ptr %i.buj, align 1, !tbaa !15
  br label %.backedge

bb.ve:                                            ; preds = %bb.va
  %.not.i1588 = icmp eq ptr %.110021804, null
  br i1 %.not.i1588, label %.backedge, label %bb.vf

bb.vf:                                            ; preds = %bb.ve
  %i.buk = getelementptr inbounds nuw i8, ptr %.110021804, i64 8196 ; 4 uses
  %i.bul = load i32, ptr %i.buk, align 4, !tbaa !41 ; 2 uses
  %i.bum = icmp eq i32 %i.bul, 8192
  br i1 %i.bum, label %html_output_flush.exit.i1589, label %bb.vg

html_output_flush.exit.i1589:                     ; preds = %bb.vf
  %i.bun = load i32, ptr %.110021804, align 4, !tbaa !39
  %i.buo = getelementptr inbounds nuw i8, ptr %.110021804, i64 4
  %i.bup = call i32 @cli_writen(i32 noundef %i.bun, ptr noundef nonnull %i.buo, i32 noundef 8192) #15 ; 0 uses
  br label %bb.vg

bb.vg:                                            ; preds = %html_output_flush.exit.i1589, %bb.vf
  %i.buq = phi i32 [ 0, %html_output_flush.exit.i1589 ], [ %i.bul, %bb.vf ] ; 2 uses
  %i.bur = getelementptr inbounds nuw i8, ptr %.110021804, i64 4 ; 3 uses
  %i.bus = add nsw i32 %i.buq, 1
  store i32 %i.bus, ptr %i.buk, align 4, !tbaa !41
  %i.but = sext i32 %i.buq to i64
  %i.buu = getelementptr inbounds i8, ptr %i.bur, i64 %i.but
  store i8 37, ptr %i.buu, align 1, !tbaa !15
  %i.buv = trunc i32 %.19211815 to i8
  %i.buw = add i8 %i.buv, 48
  %i.bux = load i32, ptr %i.buk, align 4, !tbaa !41 ; 2 uses
  %i.buy = icmp eq i32 %i.bux, 8192
  br i1 %i.buy, label %html_output_flush.exit.i1592, label %bb.vh

html_output_flush.exit.i1592:                     ; preds = %bb.vg
  %i.buz = load i32, ptr %.110021804, align 4, !tbaa !39
  %i.bva = call i32 @cli_writen(i32 noundef %i.buz, ptr noundef nonnull %i.bur, i32 noundef 8192) #15 ; 0 uses
  br label %bb.vh

bb.vh:                                            ; preds = %html_output_flush.exit.i1592, %bb.vg
  %i.bvb = phi i32 [ 0, %html_output_flush.exit.i1592 ], [ %i.bux, %bb.vg ] ; 2 uses
  %i.bvc = add nsw i32 %i.bvb, 1
  store i32 %i.bvc, ptr %i.buk, align 4, !tbaa !41
  %i.bvd = sext i32 %i.bvb to i64
  %i.bve = getelementptr inbounds i8, ptr %i.bur, i64 %i.bvd
  store i8 %i.buw, ptr %i.bve, align 1, !tbaa !15
  br label %.backedge

bb.vi:                                            ; preds = %bb.va
  %.not.i1594 = icmp eq ptr %.110021804, null
  br i1 %.not.i1594, label %.backedge, label %bb.vj

bb.vj:                                            ; preds = %bb.vi
  %i.bvf = getelementptr inbounds nuw i8, ptr %.110021804, i64 8196 ; 2 uses
  %i.bvg = load i32, ptr %i.bvf, align 4, !tbaa !41 ; 2 uses
  %i.bvh = icmp eq i32 %i.bvg, 8192
  br i1 %i.bvh, label %html_output_flush.exit.i1595, label %bb.vk

html_output_flush.exit.i1595:                     ; preds = %bb.vj
  %i.bvi = load i32, ptr %.110021804, align 4, !tbaa !39
  %i.bvj = getelementptr inbounds nuw i8, ptr %.110021804, i64 4
  %i.bvk = call i32 @cli_writen(i32 noundef %i.bvi, ptr noundef nonnull %i.bvj, i32 noundef 8192) #15 ; 0 uses
  br label %bb.vk

bb.vk:                                            ; preds = %html_output_flush.exit.i1595, %bb.vj
  %i.bvl = phi i32 [ 0, %html_output_flush.exit.i1595 ], [ %i.bvg, %bb.vj ] ; 2 uses
  %i.bvm = getelementptr inbounds nuw i8, ptr %.110021804, i64 4
  %i.bvn = add nsw i32 %i.bvl, 1
  store i32 %i.bvn, ptr %i.bvf, align 4, !tbaa !41
  %i.bvo = sext i32 %i.bvl to i64
  %i.bvp = getelementptr inbounds i8, ptr %i.bvm, i64 %i.bvo
  store i8 37, ptr %i.bvp, align 1, !tbaa !15
  br label %.backedge

bb.vl:                                            ; preds = %bb.al
  %i.bvq = shl nsw i32 %.19211815, 4              ; 3 uses
  %i.bvr = add i64 %.19891805, 1                  ; 2 uses
  %i.bvs = tail call ptr @__ctype_b_loc() #16
  %i.bvt = load ptr, ptr %i.bvs, align 8, !tbaa !18
  %i.bvu = zext i8 %.pre19141916 to i32
  %i.bvv = zext i8 %.pre19141916 to i64           ; 2 uses
  %i.bvw = getelementptr inbounds nuw [2 x i8], ptr %i.bvt, i64 %i.bvv
  %i.bvx = load i16, ptr %i.bvw, align 2, !tbaa !20
  %i.bvy = zext i16 %i.bvx to i32                 ; 2 uses
  %i.bvz = and i32 %i.bvy, 4096
  %.not1115 = icmp eq i32 %i.bvz, 0
  br i1 %.not1115, label %bb.vp, label %bb.vm

bb.vm:                                            ; preds = %bb.vl
  %i.bwa = and i32 %i.bvy, 2048
  %.not1116 = icmp eq i32 %i.bwa, 0
  br i1 %.not1116, label %bb.vo, label %bb.vn

bb.vn:                                            ; preds = %bb.vm
  %i.bwb = add i32 %i.bvq, -48
  %i.bwc = add i32 %i.bwb, %i.bvu
  br label %bb.vp

bb.vo:                                            ; preds = %bb.vm
  %i.bwd = tail call ptr @__ctype_tolower_loc() #16
  %i.bwe = load ptr, ptr %i.bwd, align 8, !tbaa !44
  %i.bwf = getelementptr inbounds nuw [4 x i8], ptr %i.bwe, i64 %i.bvv
  %i.bwg = load i32, ptr %i.bwf, align 4, !tbaa !4
  %i.bwh = add i32 %i.bvq, -87
  %i.bwi = add i32 %i.bwh, %i.bwg
  br label %bb.vp

bb.vp:                                            ; preds = %bb.vl, %bb.vn, %bb.vo
  %.8958 = phi i32 [ 23, %bb.vn ], [ 23, %bb.vo ], [ %.19621809, %bb.vl ]
  %.6926 = phi i32 [ %i.bwc, %bb.vn ], [ %i.bwi, %bb.vo ], [ %i.bvq, %bb.vl ]
  %i.bwj = icmp eq i64 %i.bvr, 2
  %spec.select1229 = select i1 %i.bwj, i32 %.19621809, i32 %.8958
  %i.bwk = getelementptr inbounds nuw i8, ptr %.39761807, i64 1
  br label %.backedge

._crit_edge1822:                                  ; preds = %bb.ah, %.backedge, %bb.af
  %.11033.lcssa = phi i64 [ %.11033.be, %.backedge ], [ %.010321843, %bb.af ], [ %.010321843, %bb.ah ] ; 2 uses
  %.11027.lcssa = phi ptr [ %.11027.be, %.backedge ], [ %.010261844, %bb.af ], [ %.010261844, %bb.ah ] ; 2 uses
  %.21017.lcssa = phi ptr [ %.21017.be, %.backedge ], [ %spec.select, %bb.af ], [ %spec.select, %bb.ah ] ; 5 uses
  %.11006.lcssa = phi i32 [ %.11006.be, %.backedge ], [ %.010051846, %bb.af ], [ %.010051846, %bb.ah ] ; 4 uses
  %.11002.lcssa = phi ptr [ %.11002.be, %.backedge ], [ %.010011847, %bb.af ], [ %.010011847, %bb.ah ]
  %.1989.lcssa = phi i64 [ %.1989.be, %.backedge ], [ %.09881848, %bb.af ], [ %.09881848, %bb.ah ]
  %.1984.lcssa = phi i32 [ %.1984.be, %.backedge ], [ %.09831849, %bb.af ], [ %.09831849, %bb.ah ]
  %.3976.lcssa = phi ptr [ %.3976.be, %.backedge ], [ %.19711850, %bb.af ], [ %i.bm, %bb.ah ] ; 2 uses
  %.1962.lcssa = phi i32 [ %.1962.be, %.backedge ], [ %.09611851, %bb.af ], [ %.09611851, %bb.ah ]
  %.1951.lcssa = phi i32 [ %.1951.be, %.backedge ], [ %.09501852, %bb.af ], [ %.09501852, %bb.ah ]
  %.1943.lcssa = phi i32 [ %.1943.be, %.backedge ], [ %.09421853, %bb.af ], [ %.09421853, %bb.ah ]
  %.1940.lcssa = phi i32 [ %.1940.be, %.backedge ], [ %.09391854, %bb.af ], [ %.09391854, %bb.ah ]
  %.1932.lcssa = phi i32 [ %.1932.be, %.backedge ], [ %.09311855, %bb.af ], [ %.09311855, %bb.ah ]
  %.1929.lcssa = phi i32 [ %.1929.be, %.backedge ], [ %.09281856, %bb.af ], [ %.09281856, %bb.ah ]
  %.1921.lcssa = phi i32 [ %.1921.be, %.backedge ], [ %.09201857, %bb.af ], [ %.09201857, %bb.ah ]
  %.1918.lcssa = phi i32 [ %.1918.be, %.backedge ], [ %.09171858, %bb.af ], [ %.09171858, %bb.ah ]
  %.1912.lcssa = phi i32 [ %.1912.be, %.backedge ], [ %.09111859, %bb.af ], [ %.09111859, %bb.ah ]
  %.1906.lcssa = phi i32 [ %.1906.be, %.backedge ], [ %.09051860, %bb.af ], [ %.09051860, %bb.ah ]
  %.1902.lcssa = phi i32 [ %.1902.be, %.backedge ], [ %.09011861, %bb.af ], [ %.09011861, %bb.ah ]
  br i1 %.not1132, label %html_tag_contents_append.exit1598, label %bb.vq

bb.vq:                                            ; preds = %._crit_edge1822
  %i.bwl = load i32, ptr %i.bc, align 4, !tbaa !38
  %i.bwm = icmp ne i32 %i.bwl, 0
  %i.bwn = icmp ne i32 %.11006.lcssa, 0
  %or.cond74 = select i1 %i.bwm, i1 %i.bwn, i1 false
  %i.bwo = icmp ne ptr %.21017.lcssa, null
  %i.bwp = icmp ult ptr %.21017.lcssa, %.3976.lcssa
  %i.bwq = and i1 %i.bwo, %i.bwp
  %or.cond1664 = select i1 %or.cond74, i1 %i.bwq, i1 false
  br i1 %or.cond1664, label %bb.vr, label %html_tag_contents_append.exit1598

bb.vr:                                            ; preds = %bb.vq
  %i.bwr = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.bws = add nsw i32 %.11006.lcssa, -1
  %i.bwt = sext i32 %i.bws to i64                 ; 2 uses
  %i.bwu = getelementptr inbounds [8 x i8], ptr %i.bwr, i64 %i.bwt
  %i.bwv = load ptr, ptr %i.bwu, align 8, !tbaa !33
  %i.bww = call i64 @blobGetDataSize(ptr noundef %i.bwv) #15 ; 2 uses
  %.not18.i1597 = icmp ugt i64 %i.bww, 1023
  br i1 %.not18.i1597, label %html_tag_contents_append.exit1598, label %bb.vs

bb.vs:                                            ; preds = %bb.vr
  %i.bwx = sub nuw nsw i64 1024, %i.bww
  %i.bwy = ptrtoint ptr %.3976.lcssa to i64
  %i.bwz = ptrtoint ptr %.21017.lcssa to i64
  %i.bxa = sub i64 %i.bwy, %i.bwz
  %i.bxb = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.bxc = getelementptr inbounds [8 x i8], ptr %i.bxb, i64 %i.bwt
  %i.bxd = load ptr, ptr %i.bxc, align 8, !tbaa !33
  %i.bxe = call i64 @llvm.umin.i64(i64 %i.bwx, i64 %i.bxa)
  %i.bxf = call i32 @blobAddData(ptr noundef %i.bxd, ptr noundef nonnull %.21017.lcssa, i64 noundef %i.bxe) #15 ; 0 uses
  br label %html_tag_contents_append.exit1598

html_tag_contents_append.exit1598:                ; preds = %bb.vs, %bb.vr, %bb.vq, %._crit_edge1822
  call void @free(ptr noundef %.19711850) #15
  br i1 %i.k, label %bb.vt, label %bb.vu

bb.vt:                                            ; preds = %html_tag_contents_append.exit1598
  %i.bxg = call ptr @encoding_norm_readline(ptr noundef nonnull %6, ptr noundef %.0949, ptr noundef %1, i64 noundef 8192) #15
  br label %bb.vv

bb.vu:                                            ; preds = %html_tag_contents_append.exit1598
  %i.bxh = call ptr @cli_readline(ptr noundef %.0949, ptr noundef %1, i32 noundef 8192)
  br label %bb.vv

bb.vv:                                            ; preds = %bb.vu, %bb.vt
  %.2972 = phi ptr [ %i.bxg, %bb.vt ], [ %i.bxh, %bb.vu ] ; 2 uses
  %.not1106 = icmp eq ptr %.2972, null
  br i1 %.not1106, label %._crit_edge1864, label %bb.af, !llvm.loop !57

._crit_edge1864:                                  ; preds = %bb.vv, %bb.ae
  %.01032.lcssa = phi i64 [ 0, %bb.ae ], [ %.11033.lcssa, %bb.vv ] ; 3 uses
  %.01026.lcssa = phi ptr [ null, %bb.ae ], [ %.11027.lcssa, %bb.vv ] ; 4 uses
  %.01005.lcssa = phi i32 [ 0, %bb.ae ], [ %.11006.lcssa, %bb.vv ] ; 4 uses
  br i1 %i.k, label %bb.vw, label %.loopexit

bb.vw:                                            ; preds = %._crit_edge1864
  %i.bxi = getelementptr inbounds nuw i8, ptr %i.e, i64 %.01032.lcssa
  store i8 0, ptr %i.bxi, align 1, !tbaa !15
  %i.bxj = call ptr @entity_norm(ptr noundef nonnull %6, ptr noundef nonnull %i.e) #15 ; 9 uses
  %.not1107 = icmp eq ptr %i.bxj, null
  br i1 %.not1107, label %bb.vy, label %.preheader

.preheader:                                       ; preds = %bb.vw
  %char01879 = load i8, ptr %i.bxj, align 1
  %.not1880 = icmp eq i8 %char01879, 0
  br i1 %.not1880, label %._crit_edge1870, label %.lr.ph1869

.lr.ph1869:                                       ; preds = %.preheader
  %i.bxk = tail call ptr @__ctype_tolower_loc() #16 ; 3 uses
  %.not.i1599 = icmp eq ptr %.0994, null
  %i.bxl = getelementptr inbounds nuw i8, ptr %.0994, i64 8196 ; 4 uses
  %i.bxm = getelementptr inbounds nuw i8, ptr %.0994, i64 4 ; 4 uses
  %.not12.i1600 = icmp eq ptr %.0996, null        ; 2 uses
  %i.bxn = getelementptr inbounds nuw i8, ptr %.0996, i64 8196 ; 4 uses
  %i.bxo = getelementptr inbounds nuw i8, ptr %.0996, i64 4 ; 4 uses
  br i1 %.not.i1599, label %.lr.ph1869.split.us, label %.lr.ph1869.split

.lr.ph1869.split.us:                              ; preds = %.lr.ph1869
  br i1 %.not12.i1600, label %._crit_edge1870, label %.lr.ph1869.split.us.split

.lr.ph1869.split.us.split:                        ; preds = %.lr.ph1869.split.us, %html_output_c.exit1603.us
  %.09151868.us = phi i64 [ %i.bye, %html_output_c.exit1603.us ], [ 0, %.lr.ph1869.split.us ] ; 2 uses
  %i.bxp = load ptr, ptr %i.bxk, align 8, !tbaa !44
  %i.bxq = getelementptr inbounds nuw i8, ptr %i.bxj, i64 %.09151868.us
  %i.bxr = load i8, ptr %i.bxq, align 1, !tbaa !15
  %i.bxs = zext i8 %i.bxr to i64
  %i.bxt = getelementptr inbounds nuw [4 x i8], ptr %i.bxp, i64 %i.bxs
  %i.bxu = load i32, ptr %i.bxt, align 4, !tbaa !4
  %i.bxv = trunc i32 %i.bxu to i8
  %i.bxw = load i32, ptr %i.bxn, align 4, !tbaa !41 ; 2 uses
  %i.bxx = icmp eq i32 %i.bxw, 8192
  br i1 %i.bxx, label %html_output_flush.exit13.i1601.us, label %html_output_c.exit1603.us

html_output_flush.exit13.i1601.us:                ; preds = %.lr.ph1869.split.us.split
  %i.bxy = load i32, ptr %.0996, align 4, !tbaa !39
  %i.bxz = call i32 @cli_writen(i32 noundef %i.bxy, ptr noundef nonnull %i.bxo, i32 noundef 8192) #15 ; 0 uses
  br label %html_output_c.exit1603.us

html_output_c.exit1603.us:                        ; preds = %html_output_flush.exit13.i1601.us, %.lr.ph1869.split.us.split
  %i.bya = phi i32 [ 0, %html_output_flush.exit13.i1601.us ], [ %i.bxw, %.lr.ph1869.split.us.split ] ; 2 uses
  %i.byb = add nsw i32 %i.bya, 1
  store i32 %i.byb, ptr %i.bxn, align 4, !tbaa !41
  %i.byc = sext i32 %i.bya to i64
  %i.byd = getelementptr inbounds i8, ptr %i.bxo, i64 %i.byc
  store i8 %i.bxv, ptr %i.byd, align 1, !tbaa !15
  %i.bye = add nuw i64 %.09151868.us, 1           ; 2 uses
  %i.byf = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bxj) #17
  %i.byg = icmp ult i64 %i.bye, %i.byf
  br i1 %i.byg, label %.lr.ph1869.split.us.split, label %._crit_edge1870, !llvm.loop !58

.lr.ph1869.split:                                 ; preds = %.lr.ph1869
  br i1 %.not12.i1600, label %.lr.ph1869.split.split.us, label %.lr.ph1869.split.split

.lr.ph1869.split.split.us:                        ; preds = %.lr.ph1869.split, %html_output_c.exit1603.us1872
  %.09151868.us1871 = phi i64 [ %i.byw, %html_output_c.exit1603.us1872 ], [ 0, %.lr.ph1869.split ] ; 2 uses
  %i.byh = load ptr, ptr %i.bxk, align 8, !tbaa !44
  %i.byi = getelementptr inbounds nuw i8, ptr %i.bxj, i64 %.09151868.us1871
  %i.byj = load i8, ptr %i.byi, align 1, !tbaa !15
  %i.byk = zext i8 %i.byj to i64
  %i.byl = getelementptr inbounds nuw [4 x i8], ptr %i.byh, i64 %i.byk
  %i.bym = load i32, ptr %i.byl, align 4, !tbaa !4
  %i.byn = trunc i32 %i.bym to i8
  %i.byo = load i32, ptr %i.bxl, align 4, !tbaa !41 ; 2 uses
  %i.byp = icmp eq i32 %i.byo, 8192
  br i1 %i.byp, label %html_output_flush.exit.i1602.us, label %html_output_c.exit1603.us1872

html_output_flush.exit.i1602.us:                  ; preds = %.lr.ph1869.split.split.us
  %i.byq = load i32, ptr %.0994, align 4, !tbaa !39
  %i.byr = call i32 @cli_writen(i32 noundef %i.byq, ptr noundef nonnull %i.bxm, i32 noundef 8192) #15 ; 0 uses
  br label %html_output_c.exit1603.us1872

html_output_c.exit1603.us1872:                    ; preds = %html_output_flush.exit.i1602.us, %.lr.ph1869.split.split.us
  %i.bys = phi i32 [ 0, %html_output_flush.exit.i1602.us ], [ %i.byo, %.lr.ph1869.split.split.us ] ; 2 uses
  %i.byt = add nsw i32 %i.bys, 1
  store i32 %i.byt, ptr %i.bxl, align 4, !tbaa !41
  %i.byu = sext i32 %i.bys to i64
  %i.byv = getelementptr inbounds i8, ptr %i.bxm, i64 %i.byu
  store i8 %i.byn, ptr %i.byv, align 1, !tbaa !15
  %i.byw = add nuw i64 %.09151868.us1871, 1       ; 2 uses
  %i.byx = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bxj) #17
  %i.byy = icmp ult i64 %i.byw, %i.byx
  br i1 %i.byy, label %.lr.ph1869.split.split.us, label %._crit_edge1870, !llvm.loop !58

.lr.ph1869.split.split:                           ; preds = %.lr.ph1869.split, %html_output_c.exit1603
  %.09151868 = phi i64 [ %i.bzw, %html_output_c.exit1603 ], [ 0, %.lr.ph1869.split ] ; 2 uses
  %i.byz = load ptr, ptr %i.bxk, align 8, !tbaa !44
  %i.bza = getelementptr inbounds nuw i8, ptr %i.bxj, i64 %.09151868
  %i.bzb = load i8, ptr %i.bza, align 1, !tbaa !15
  %i.bzc = zext i8 %i.bzb to i64
  %i.bzd = getelementptr inbounds nuw [4 x i8], ptr %i.byz, i64 %i.bzc
  %i.bze = load i32, ptr %i.bzd, align 4, !tbaa !4
  %i.bzf = trunc i32 %i.bze to i8                 ; 2 uses
  %i.bzg = load i32, ptr %i.bxl, align 4, !tbaa !41 ; 2 uses
  %i.bzh = icmp eq i32 %i.bzg, 8192
  br i1 %i.bzh, label %html_output_flush.exit.i1602, label %bb.vx

html_output_flush.exit.i1602:                     ; preds = %.lr.ph1869.split.split
  %i.bzi = load i32, ptr %.0994, align 4, !tbaa !39
  %i.bzj = call i32 @cli_writen(i32 noundef %i.bzi, ptr noundef nonnull %i.bxm, i32 noundef 8192) #15 ; 0 uses
  br label %bb.vx

bb.vx:                                            ; preds = %html_output_flush.exit.i1602, %.lr.ph1869.split.split
  %i.bzk = phi i32 [ 0, %html_output_flush.exit.i1602 ], [ %i.bzg, %.lr.ph1869.split.split ] ; 2 uses
  %i.bzl = add nsw i32 %i.bzk, 1
  store i32 %i.bzl, ptr %i.bxl, align 4, !tbaa !41
  %i.bzm = sext i32 %i.bzk to i64
  %i.bzn = getelementptr inbounds i8, ptr %i.bxm, i64 %i.bzm
  store i8 %i.bzf, ptr %i.bzn, align 1, !tbaa !15
  %i.bzo = load i32, ptr %i.bxn, align 4, !tbaa !41 ; 2 uses
  %i.bzp = icmp eq i32 %i.bzo, 8192
  br i1 %i.bzp, label %html_output_flush.exit13.i1601, label %html_output_c.exit1603

html_output_flush.exit13.i1601:                   ; preds = %bb.vx
  %i.bzq = load i32, ptr %.0996, align 4, !tbaa !39
  %i.bzr = call i32 @cli_writen(i32 noundef %i.bzq, ptr noundef nonnull %i.bxo, i32 noundef 8192) #15 ; 0 uses
  br label %html_output_c.exit1603

html_output_c.exit1603:                           ; preds = %html_output_flush.exit13.i1601, %bb.vx
  %i.bzs = phi i32 [ 0, %html_output_flush.exit13.i1601 ], [ %i.bzo, %bb.vx ] ; 2 uses
  %i.bzt = add nsw i32 %i.bzs, 1
  store i32 %i.bzt, ptr %i.bxn, align 4, !tbaa !41
  %i.bzu = sext i32 %i.bzs to i64
  %i.bzv = getelementptr inbounds i8, ptr %i.bxo, i64 %i.bzu
  store i8 %i.bzf, ptr %i.bzv, align 1, !tbaa !15
  %i.bzw = add nuw i64 %.09151868, 1              ; 2 uses
  %i.bzx = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bxj) #17
  %i.bzy = icmp ult i64 %i.bzw, %i.bzx
  br i1 %i.bzy, label %.lr.ph1869.split.split, label %._crit_edge1870, !llvm.loop !58

._crit_edge1870:                                  ; preds = %html_output_c.exit1603, %html_output_c.exit1603.us1872, %html_output_c.exit1603.us, %.lr.ph1869.split.us, %.preheader
  call void @free(ptr noundef nonnull %i.bxj) #15
  br label %.loopexit

bb.vy:                                            ; preds = %bb.vw
  %.not1108 = icmp eq i64 %.01032.lcssa, 0
  br i1 %.not1108, label %.loopexit, label %bb.vz

bb.vz:                                            ; preds = %bb.vy
  call fastcc void @html_output_c(ptr noundef %.0994, ptr noundef %.0996, i8 noundef zeroext 38)
  %i.bzz = tail call ptr @__ctype_tolower_loc() #16
  %.not.i1604 = icmp eq ptr %.0994, null
  %i.caa = getelementptr inbounds nuw i8, ptr %.0994, i64 8196 ; 2 uses
  %i.cab = getelementptr inbounds nuw i8, ptr %.0994, i64 4 ; 2 uses
  %.not12.i1605 = icmp eq ptr %.0996, null
  %i.cac = getelementptr inbounds nuw i8, ptr %.0996, i64 8196 ; 2 uses
  %i.cad = getelementptr inbounds nuw i8, ptr %.0996, i64 4 ; 2 uses
  br label %bb.wa

bb.wa:                                            ; preds = %bb.vz, %html_output_c.exit1608
  %.19161873.a = phi i64 [ 0, %bb.vz ], [ %i.cbb, %html_output_c.exit1608 ] ; 2 uses
  %i.cae = load ptr, ptr %i.bzz, align 8, !tbaa !44
  %i.caf = getelementptr inbounds nuw i8, ptr %i.e, i64 %.19161873.a
  %i.cag = load i8, ptr %i.caf, align 1, !tbaa !15
  %i.cah = zext i8 %i.cag to i64
  %i.cai = getelementptr inbounds nuw [4 x i8], ptr %i.cae, i64 %i.cah
  %i.caj = load i32, ptr %i.cai, align 4, !tbaa !4
  %i.cak = trunc i32 %i.caj to i8                 ; 2 uses
  br i1 %.not.i1604, label %8, label %bb.wb

bb.wb:                                            ; preds = %bb.wa
  %i.cal = load i32, ptr %i.caa, align 4, !tbaa !41 ; 2 uses
  %i.cam = icmp eq i32 %i.cal, 8192
  br i1 %i.cam, label %html_output_flush.exit.i1607, label %bb.wc

html_output_flush.exit.i1607:                     ; preds = %bb.wb
  %i.can = load i32, ptr %.0994, align 4, !tbaa !39
  %i.cao = call i32 @cli_writen(i32 noundef %i.can, ptr noundef nonnull %i.cab, i32 noundef 8192) #15 ; 0 uses
  br label %bb.wc

bb.wc:                                            ; preds = %html_output_flush.exit.i1607, %bb.wb
  %i.cap = phi i32 [ 0, %html_output_flush.exit.i1607 ], [ %i.cal, %bb.wb ] ; 2 uses
  %i.caq = add nsw i32 %i.cap, 1
  store i32 %i.caq, ptr %i.caa, align 4, !tbaa !41
  %i.car = sext i32 %i.cap to i64
  %i.cas = getelementptr inbounds i8, ptr %i.cab, i64 %i.car
  store i8 %i.cak, ptr %i.cas, align 1, !tbaa !15
  br label %8

8:                                                ; preds = %bb.wc, %bb.wa
  br i1 %.not12.i1605, label %html_output_c.exit1608, label %bb.wd

bb.wd:                                            ; preds = %8
  %i.cat = load i32, ptr %i.cac, align 4, !tbaa !41 ; 2 uses
  %i.cau = icmp eq i32 %i.cat, 8192
  br i1 %i.cau, label %html_output_flush.exit13.i1606, label %bb.we

html_output_flush.exit13.i1606:                   ; preds = %bb.wd
  %i.cav = load i32, ptr %.0996, align 4, !tbaa !39
  %i.caw = call i32 @cli_writen(i32 noundef %i.cav, ptr noundef nonnull %i.cad, i32 noundef 8192) #15 ; 0 uses
  br label %bb.we

bb.we:                                            ; preds = %html_output_flush.exit13.i1606, %bb.wd
  %i.cax = phi i32 [ 0, %html_output_flush.exit13.i1606 ], [ %i.cat, %bb.wd ] ; 2 uses
  %i.cay = add nsw i32 %i.cax, 1
  store i32 %i.cay, ptr %i.cac, align 4, !tbaa !41
  %i.caz = sext i32 %i.cax to i64
  %i.cba = getelementptr inbounds i8, ptr %i.cad, i64 %i.caz
  store i8 %i.cak, ptr %i.cba, align 1, !tbaa !15
  br label %html_output_c.exit1608

html_output_c.exit1608:                           ; preds = %8, %bb.we
  %i.cbb = add nuw i64 %.19161873.a, 1            ; 2 uses
  %exitcond1912.not = icmp eq i64 %i.cbb, %.01032.lcssa
  br i1 %exitcond1912.not, label %.loopexit, label %bb.wa, !llvm.loop !59

.loopexit:                                        ; preds = %bb.ua, %html_output_c.exit1608, %._crit_edge1864, %bb.vy, %._crit_edge1870, %bb.uc, %bb.an
  %.51031 = phi ptr [ %.01026.lcssa, %._crit_edge1870 ], [ %.110271800, %bb.an ], [ %.110271800, %bb.uc ], [ %.01026.lcssa, %html_output_c.exit1608 ], [ %.01026.lcssa, %bb.vy ], [ %.01026.lcssa, %._crit_edge1864 ], [ %.110271800, %bb.ua ] ; 2 uses
  %.81013 = phi i32 [ %.01005.lcssa, %._crit_edge1870 ], [ %.110061803, %bb.an ], [ %.110061803, %bb.uc ], [ %.01005.lcssa, %html_output_c.exit1608 ], [ %.01005.lcssa, %bb.vy ], [ %.01005.lcssa, %._crit_edge1864 ], [ %.110061803, %bb.ua ] ; 2 uses
  %.0914 = phi i32 [ 1, %._crit_edge1870 ], [ 0, %bb.an ], [ 0, %bb.uc ], [ 1, %html_output_c.exit1608 ], [ 1, %bb.vy ], [ 1, %._crit_edge1864 ], [ 0, %bb.ua ] ; 2 uses
  %.not1204 = icmp eq ptr %.51031, null
  br i1 %.not1204, label %bb.wg, label %bb.wf

bb.wf:                                            ; preds = %.loopexit
  call void @free(ptr noundef nonnull %.51031) #15
  br label %bb.wg

bb.wg:                                            ; preds = %bb.wf, %.loopexit
  %.not1205 = icmp eq i32 %.81013, 0
  br i1 %.not1205, label %.thread1644, label %bb.wh

bb.wh:                                            ; preds = %bb.wg
  %i.cbc = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.cbd = load ptr, ptr %i.cbc, align 8, !tbaa !32
  %i.cbe = add nsw i32 %.81013, -1
  %i.cbf = sext i32 %i.cbe to i64                 ; 2 uses
  %i.cbg = getelementptr inbounds [8 x i8], ptr %i.cbd, i64 %i.cbf
  %i.cbh = load ptr, ptr %i.cbg, align 8, !tbaa !33
  %i.cbi = call i32 @blobAddData(ptr noundef %i.cbh, ptr noundef nonnull @.str.52, i64 noundef 1) #15 ; 0 uses
  %i.cbj = load ptr, ptr %i.cbc, align 8, !tbaa !32
  %i.cbk = getelementptr inbounds [8 x i8], ptr %i.cbj, i64 %i.cbf
  %i.cbl = load ptr, ptr %i.cbk, align 8, !tbaa !33
  call void @blobClose(ptr noundef %i.cbl) #15
  br label %.thread1644

.thread1644:                                      ; preds = %bb.o, %bb.p, %bb.z, %bb.x, %bb.v, %bb.t, %bb.r, %bb.wh, %bb.wg
  %.1100016401654 = phi ptr [ %.0999, %bb.wg ], [ %.0999, %bb.wh ], [ null, %bb.r ], [ null, %bb.t ], [ null, %bb.v ], [ null, %bb.x ], [ null, %bb.z ], [ null, %bb.p ], [ null, %bb.o ] ; 6 uses
  %.199716411653 = phi ptr [ %.0996, %bb.wg ], [ %.0996, %bb.wh ], [ null, %bb.r ], [ null, %bb.t ], [ null, %bb.v ], [ null, %bb.x ], [ null, %bb.z ], [ null, %bb.p ], [ null, %bb.o ] ; 6 uses
  %.199516421652 = phi ptr [ %.0994, %bb.wg ], [ %.0994, %bb.wh ], [ null, %bb.r ], [ null, %bb.t ], [ null, %bb.v ], [ null, %bb.x ], [ null, %bb.z ], [ null, %bb.p ], [ null, %bb.o ] ; 6 uses
  %.091416431651 = phi i32 [ %.0914, %bb.wg ], [ %.0914, %bb.wh ], [ 0, %bb.r ], [ 0, %bb.t ], [ 0, %bb.v ], [ 0, %bb.x ], [ 0, %bb.z ], [ 0, %bb.p ], [ 0, %bb.o ] ; 2 uses
  br i1 %i.k, label %bb.wi, label %bb.wj

bb.wi:                                            ; preds = %.thread1644
  %i.cbm = call i32 @entity_norm_done(ptr noundef nonnull %6) #15 ; 0 uses
  br label %bb.wj

bb.wj:                                            ; preds = %bb.wi, %.thread1644
  call void @html_tag_arg_free(ptr noundef nonnull %5)
  br i1 %.not1094, label %bb.wk, label %bb.wl

bb.wk:                                            ; preds = %bb.wj
  %i.cbn = call i32 @fclose(ptr noundef %.0949)   ; 0 uses
  br label %bb.wl

bb.wl:                                            ; preds = %bb.wk, %bb.wj
  %.not1206 = icmp eq ptr %.199516421652, null
  br i1 %.not1206, label %bb.wo, label %bb.wm

bb.wm:                                            ; preds = %bb.wl
  %i.cbo = getelementptr inbounds nuw i8, ptr %.199516421652, i64 8196 ; 2 uses
  %i.cbp = load i32, ptr %i.cbo, align 4, !tbaa !41 ; 2 uses
  %i.cbq = icmp sgt i32 %i.cbp, 0
  br i1 %i.cbq, label %bb.wn, label %html_output_flush.exit1609

bb.wn:                                            ; preds = %bb.wm
  %i.cbr = load i32, ptr %.199516421652, align 4, !tbaa !39
  %i.cbs = getelementptr inbounds nuw i8, ptr %.199516421652, i64 4
  %i.cbt = call i32 @cli_writen(i32 noundef %i.cbr, ptr noundef nonnull %i.cbs, i32 noundef %i.cbp) #15 ; 0 uses
  store i32 0, ptr %i.cbo, align 4, !tbaa !41
  br label %html_output_flush.exit1609

html_output_flush.exit1609:                       ; preds = %bb.wm, %bb.wn
  %i.cbu = load i32, ptr %.199516421652, align 4, !tbaa !39
  %i.cbv = call i32 @close(i32 noundef %i.cbu) #15 ; 0 uses
  call void @free(ptr noundef nonnull %.199516421652) #15
  br label %bb.wo

bb.wo:                                            ; preds = %html_output_flush.exit1609, %bb.wl
  %.not1207 = icmp eq ptr %.199716411653, null
  br i1 %.not1207, label %bb.wr, label %bb.wp

bb.wp:                                            ; preds = %bb.wo
  %i.cbw = getelementptr inbounds nuw i8, ptr %.199716411653, i64 8196 ; 2 uses
  %i.cbx = load i32, ptr %i.cbw, align 4, !tbaa !41 ; 2 uses
  %i.cby = icmp sgt i32 %i.cbx, 0
  br i1 %i.cby, label %bb.wq, label %html_output_flush.exit1610

bb.wq:                                            ; preds = %bb.wp
  %i.cbz = load i32, ptr %.199716411653, align 4, !tbaa !39
  %i.cca = getelementptr inbounds nuw i8, ptr %.199716411653, i64 4
  %i.ccb = call i32 @cli_writen(i32 noundef %i.cbz, ptr noundef nonnull %i.cca, i32 noundef %i.cbx) #15 ; 0 uses
  store i32 0, ptr %i.cbw, align 4, !tbaa !41
  br label %html_output_flush.exit1610

html_output_flush.exit1610:                       ; preds = %bb.wp, %bb.wq
  %i.ccc = load i32, ptr %.199716411653, align 4, !tbaa !39
  %i.ccd = call i32 @close(i32 noundef %i.ccc) #15 ; 0 uses
  call void @free(ptr noundef nonnull %.199716411653) #15
  br label %bb.wr

bb.wr:                                            ; preds = %html_output_flush.exit1610, %bb.wo
  %.not1208 = icmp eq ptr %.1100016401654, null
  br i1 %.not1208, label %.critedge1219, label %bb.ws

bb.ws:                                            ; preds = %bb.wr
  %i.cce = getelementptr inbounds nuw i8, ptr %.1100016401654, i64 8196 ; 2 uses
  %i.ccf = load i32, ptr %i.cce, align 4, !tbaa !41 ; 2 uses
  %i.ccg = icmp sgt i32 %i.ccf, 0
  br i1 %i.ccg, label %bb.wt, label %html_output_flush.exit1611

bb.wt:                                            ; preds = %bb.ws
  %i.cch = load i32, ptr %.1100016401654, align 4, !tbaa !39
  %i.cci = getelementptr inbounds nuw i8, ptr %.1100016401654, i64 4
  %i.ccj = call i32 @cli_writen(i32 noundef %i.cch, ptr noundef nonnull %i.cci, i32 noundef %i.ccf) #15 ; 0 uses
  store i32 0, ptr %i.cce, align 4, !tbaa !41
  br label %html_output_flush.exit1611

html_output_flush.exit1611:                       ; preds = %bb.ws, %bb.wt
  %i.cck = load i32, ptr %.1100016401654, align 4, !tbaa !39
  %i.ccl = call i32 @close(i32 noundef %i.cck) #15 ; 0 uses
  call void @free(ptr noundef nonnull %.1100016401654) #15
  br label %.critedge1219

.critedge1219:                                    ; preds = %bb.kg, %bb.wr, %html_output_flush.exit1611, %bb.k, %bb.l, %bb.f, %bb.h, %bb.e
  %.7 = phi i32 [ 0, %bb.f ], [ %.091416431651, %bb.wr ], [ %i.s, %bb.k ], [ 0, %bb.e ], [ 0, %bb.h ], [ %i.s, %bb.l ], [ %.091416431651, %html_output_flush.exit1611 ], [ -114, %bb.kg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.7
}

; Function Attrs: nounwind uwtable
define dso_local i32 @html_normalise_fd(i32 noundef %0, ptr noundef %1, ptr nofree noundef captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.m_area_tag, align 8         ; 7 uses
  %5 = alloca %struct.stat, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.a = call i32 @fstat(i32 noundef %0, ptr noundef nonnull %5) #15
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.d = load i64, ptr %i.c, align 8, !tbaa !60   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.d, ptr %i.e, align 8, !tbaa !14
  %i.f = tail call ptr @mmap(ptr noundef null, i64 noundef %i.d, i32 noundef 1, i32 noundef 2, i32 noundef %0, i64 noundef 0) #15 ; 2 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %i.g, align 8, !tbaa !13
  %i.h = icmp eq ptr %i.f, inttoptr (i64 -1 to ptr)
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.1) #15
  %i.i = tail call fastcc i32 @cli_html_normalise(i32 noundef %0, ptr noundef null, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.2) #15
  %i.j = call fastcc i32 @cli_html_normalise(i32 noundef -1, ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %i.k = load ptr, ptr %4, align 8, !tbaa !8
  %i.l = load i64, ptr %i.e, align 8, !tbaa !14
  %i.m = call i32 @munmap(ptr noundef %i.k, i64 noundef %i.l) #15 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.3) #15
  %i.n = tail call fastcc i32 @cli_html_normalise(i32 noundef %0, ptr noundef null, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.0 = phi i32 [ %i.i, %bb.c ], [ %i.j, %bb.d ], [ %i.n, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @html_screnc_decode(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 5 uses
  %2 = alloca %struct.file_buff_tag, align 4      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.b = tail call i64 @lseek(i32 noundef %0, i64 noundef 0, i32 noundef 0) #15 ; 0 uses
  %i.c = tail call i32 @dup(i32 noundef %0) #15   ; 3 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.ai, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noalias ptr @fdopen(i32 noundef %i.c, ptr noundef nonnull @.str.4) #15 ; 12 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
end_hunk_3
