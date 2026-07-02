inline.NumInlined: 8
begin_hunk_0_@processAnnotations:bb.a

bb.g:                                             ; preds = %bb.e
  %i.n = load i64, ptr @to_timestamp, align 8, !tbaa !14 ; 3 uses
  %.not15 = icmp sgt i64 %i.j, %i.n
  br i1 %.not15, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.o = load i64, ptr @epos, align 8, !tbaa !14  ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.q = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef %1, i64 noundef %i.n) ; 0 uses
  call void @exit(i32 noundef 1) #16
  unreachable

bb.j:                                             ; preds = %bb.h
  %.not16 = icmp eq i32 %2, 0
  br i1 %.not16, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.r = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef %1, i64 noundef %i.n, i64 noundef %i.o) ; 0 uses
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  call void @exit(i32 noundef 1) #16
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.s = call i32 @fileno(ptr noundef %0) #13
  %i.t = load i64, ptr @epos, align 8, !tbaa !14
  %i.u = call i32 @ftruncate64(i32 noundef %i.s, i64 noundef %i.t) #13
  %i.v = icmp eq i32 %i.u, -1
  br i1 %i.v, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.w = load i64, ptr @to_timestamp, align 8, !tbaa !14
  %i.x = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef %1, i64 noundef %i.w) ; 0 uses
  call void @exit(i32 noundef 1) #16
  unreachable

bb.n:                                             ; preds = %bb.l, %bb.g
  %.0 = phi i32 [ 1, %bb.g ], [ 0, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.o

bb.o:                                             ; preds = %bb.c, %bb.n
  %.1 = phi i32 [ %.0, %bb.n ], [ 1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.1
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @ftruncate64(i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 4) i32 @checkSingleAof(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca [2 x i8], align 1                 ; 4 uses
  %5 = alloca %struct.stat, align 8               ; 4 uses
  %i.c = alloca [2 x ptr], align 16               ; 5 uses
  %i.d = alloca [1024 x i8], align 16             ; 4 uses
  %i.e = alloca [2 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.f = tail call noalias ptr @fopen64(ptr noundef %1, ptr noundef nonnull @.str.17) ; 17 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__errno_location() #17
  %i.i = load i32, ptr %i.h, align 4, !tbaa !9
  %i.j = tail call ptr @strerror(i32 noundef %i.i) #13
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef %1, ptr noundef %i.j) ; 0 uses
  tail call void @exit(i32 noundef 1) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.l = tail call i32 @fileno(ptr noundef nonnull %i.f) #13
  %i.m = call i32 @fstat64(i32 noundef %i.l, ptr noundef nonnull %5) #13
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, ptr noundef %0) ; 0 uses
  %i.p = tail call i32 @fclose(ptr noundef nonnull %i.f) ; 0 uses
  tail call void @exit(i32 noundef 1) #16
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.r = load i64, ptr %i.q, align 8, !tbaa !24   ; 5 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = tail call i32 @fclose(ptr noundef nonnull %i.f) ; 0 uses
  br label %bb.an

bb.g:                                             ; preds = %bb.e
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store ptr null, ptr %i.c, align 16, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %1, ptr %i.u, align 8, !tbaa !18
  %i.v = call i32 @redis_check_rdb_main(i32 noundef 2, ptr noundef nonnull %i.c, ptr noundef nonnull %i.f) #13
  %i.w = icmp eq i32 %i.v, -1
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %puts68 = call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  call void @exit(i32 noundef 1) #16
  unreachable

bb.j:                                             ; preds = %bb.h
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %.preheader

.preheader:                                       ; preds = %bb.j, %bb.g
  br label %.outer

.outer:                                           ; preds = %.preheader, %bb.u
  %.ph = phi i32 [ 0, %.preheader ], [ %.pre, %bb.u ] ; 3 uses
  %.051.ph = phi i64 [ 0, %.preheader ], [ %.1, %bb.u ]
  %.not57 = icmp eq i32 %.ph, 0
  br label %bb.k

bb.k:                                             ; preds = %.outer, %bb.s
  %.051 = phi i64 [ %.1, %bb.s ], [ %.051.ph, %.outer ]
  br i1 %.not57, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.x = call i64 @ftello64(ptr noundef nonnull %i.f)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1 = phi i64 [ %.051, %bb.k ], [ %i.x, %bb.l ] ; 7 uses
  %i.y = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 2, ptr noundef nonnull %i.f)
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.aa = call i32 @feof(ptr noundef nonnull %i.f) #13
  %.not60 = icmp eq i32 %i.aa, 0
  br i1 %.not60, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.ab = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, ptr noundef %0) ; 0 uses
  call void @exit(i32 noundef 1) #16
  unreachable

bb.p:                                             ; preds = %bb.m
  %i.ac = call i32 @fseek(ptr noundef nonnull %i.f, i64 noundef -1, i32 noundef 1)
  %i.ad = icmp eq i32 %i.ac, -1
  br i1 %i.ad, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ae = tail call ptr @__errno_location() #17
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !9
  %i.ag = call ptr @strerror(i32 noundef %i.af) #13
  %i.ah = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef %0, ptr noundef %i.ag) ; 0 uses
  call void @exit(i32 noundef 1) #16
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ai = load i8, ptr %i.b, align 1, !tbaa !13
  switch i8 %i.ai, label %bb.v [
    i8 35, label %bb.s
    i8 42, label %bb.u
  ]

bb.s:                                             ; preds = %bb.r
  %i.aj = call i32 @processAnnotations(ptr noundef nonnull %i.f, ptr noundef %1, i32 noundef %2)
  %.not59 = icmp eq i32 %i.aj, 0
  br i1 %.not59, label %bb.t, label %bb.k

bb.t:                                             ; preds = %bb.s
  %i.ak = call i32 @fclose(ptr noundef nonnull %i.f) ; 0 uses
  br label %bb.an

bb.u:                                             ; preds = %bb.r
  %i.al = call i32 @processRESP(ptr noundef nonnull %i.f, ptr noundef %1, ptr noundef nonnull %i.a)
  %.not58 = icmp eq i32 %i.al, 0
  %.pre = load i32, ptr %i.a, align 4             ; 2 uses
  br i1 %.not58, label %.loopexit, label %.outer

bb.v:                                             ; preds = %bb.r
  %i.am = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, ptr noundef %0) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.u, %bb.n, %bb.v
  %i.an = phi i32 [ %.ph, %bb.v ], [ %.ph, %bb.n ], [ %.pre, %bb.u ]
  %i.ao = call i32 @feof(ptr noundef nonnull %i.f) #13
  %i.ap = icmp ne i32 %i.ao, 0
  %i.aq = icmp ne i32 %i.an, 0
  %or.cond = select i1 %i.ap, i1 %i.aq, i1 false
  %char0 = load i8, ptr @error, align 16          ; 2 uses
  %i.ar = icmp eq i8 %char0, 0
  %or.cond69 = select i1 %or.cond, i1 %i.ar, i1 false
  br i1 %or.cond69, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(42) %i.d, ptr noundef nonnull align 1 dereferenceable(42) @.str.25, i64 42, i1 false)
  %i.as = load i64, ptr @epos, align 8, !tbaa !14
  %i.at = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @error, i64 noundef 1044, ptr noundef nonnull @.str.2, i64 noundef %i.as, ptr noundef nonnull %i.d) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  %char061.pr = load i8, ptr @error, align 16
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.loopexit
  %char061 = phi i8 [ %char061.pr, %bb.w ], [ %char0, %.loopexit ]
  %.not62 = icmp eq i8 %char061, 0
  br i1 %.not62, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %puts63 = call i32 @puts(ptr nonnull dereferenceable(1) @error) ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.au = sub nsw i64 %i.r, %.1                   ; 3 uses
  %i.av = icmp eq i64 %i.r, %.1
  %i.aw = load i64, ptr @to_timestamp, align 8    ; 2 uses
  %i.ax = icmp ne i64 %i.aw, 0
  %or.cond3 = select i1 %i.av, i1 %i.ax, i1 false
  br i1 %or.cond3, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ay = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, ptr noundef %0, i64 noundef %i.aw) ; 0 uses
  %i.az = call i32 @fclose(ptr noundef nonnull %i.f) ; 0 uses
  br label %bb.an

bb.ab:                                            ; preds = %bb.z
  %i.ba = load i64, ptr @line, align 8, !tbaa !16
  %i.bb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, ptr noundef %0, i64 noundef %i.r, i64 noundef %.1, i64 noundef %i.ba, i64 noundef %i.au) ; 0 uses
  %i.bc = icmp sgt i64 %i.au, 0
  br i1 %i.bc, label %bb.ac, label %bb.am

bb.ac:                                            ; preds = %bb.ab
  %.not64 = icmp eq i32 %3, 0
  br i1 %.not64, label %bb.al, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not65 = icmp eq i32 %2, 0
  br i1 %.not65, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.bd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29, ptr noundef %0) ; 0 uses
  call void @exit(i32 noundef 1) #16
  unreachable

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  %i.be = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, ptr noundef %0, i64 noundef %i.r, i64 noundef %i.au, i64 noundef %.1) ; 0 uses
  %i.bf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31) ; 0 uses
  %i.bg = load ptr, ptr @stdin, align 8, !tbaa !27
  %i.bh = call ptr @fgets(ptr noundef nonnull %i.e, i32 noundef 2, ptr noundef %i.bg)
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bj = call i32 @strncasecmp(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.32, i64 noundef 1) #15
  %.not66 = icmp eq i32 %i.bj, 0
  br i1 %.not66, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %puts67 = call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  call void @exit(i32 noundef 1) #16
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.bk = call i32 @fileno(ptr noundef nonnull %i.f) #13
  %i.bl = call i32 @ftruncate64(i32 noundef %i.bk, i64 noundef %.1) #13
  %i.bm = icmp eq i32 %i.bl, -1
  br i1 %i.bm, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.bn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34, ptr noundef %0) ; 0 uses
  call void @exit(i32 noundef 1) #16
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.bo = call i32 @fclose(ptr noundef nonnull %i.f) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  br label %bb.an

bb.al:                                            ; preds = %bb.ac
  %i.bp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.35, ptr noundef %0) ; 0 uses
  call void @exit(i32 noundef 1) #16
  unreachable

bb.am:                                            ; preds = %bb.ab
  %i.bq = call i32 @fclose(ptr noundef nonnull %i.f) ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ak, %bb.aa, %bb.t, %bb.f
  %.0 = phi i32 [ 1, %bb.f ], [ 0, %bb.aa ], [ 2, %bb.ak ], [ 0, %bb.am ], [ 3, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen64(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fstat64(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #2

declare i32 @redis_check_rdb_main(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @feof(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strncasecmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @fileIsRDB(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %1 = alloca %struct.stat, align 8               ; 4 uses
  %i.a = alloca [5 x i8], align 1                 ; 6 uses
  %i.b = tail call noalias ptr @fopen64(ptr noundef %0, ptr noundef nonnull @.str.36) ; 7 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__errno_location() #17
  %i.e = load i32, ptr %i.d, align 4, !tbaa !9
  %i.f = tail call ptr @strerror(i32 noundef %i.e) #13
  %i.g = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.37, ptr noundef %0, ptr noundef %i.f) ; 0 uses
  tail call void @exit(i32 noundef 1) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  %i.h = tail call i32 @fileno(ptr noundef nonnull %i.b) #13
  %i.i = call i32 @fstat64(i32 noundef %i.h, ptr noundef nonnull %1) #13
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38, ptr noundef %0) ; 0 uses
  %i.l = tail call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  tail call void @exit(i32 noundef 1) #16
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = load i64, ptr %i.m, align 8, !tbaa !24   ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = tail call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.q = icmp sgt i64 %i.n, 7
  br i1 %i.q, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.r = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 5, i64 noundef 1, ptr noundef nonnull %i.b)
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.t = load i32, ptr %i.a, align 1
  %i.u = xor i32 %i.t, 1229210962
  %i.v = getelementptr i8, ptr %i.a, i64 4
  %i.w = load i8, ptr %i.v, align 1
end_hunk_0
