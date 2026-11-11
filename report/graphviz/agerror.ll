Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/agerror?download=true
inline.NumInlined: 38
inline.NumDeleted: 19
begin_hunk_0_@aglasterr:bb.a
  %i.r = icmp ugt i64 %i.p, 31
  br i1 %i.r, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @agxbmore(i64 noundef %i.p)
  %.pre.i.i5 = load i8, ptr getelementptr inbounds nuw (i8, ptr @last, i64 31), align 1, !tbaa !11 ; 2 uses
  %.not.i.i = icmp eq i8 %.pre.i.i5, -1
  br i1 %.not.i.i, label %bb.i, label %.thread

.thread:                                          ; preds = %bb.g, %bb.h
  %i.s = phi i8 [ %.pre.i.i5, %bb.h ], [ 0, %bb.g ]
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @last, i64 %i.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr nonnull readonly align 1 %.0.i, i64 %i.p, i1 false)
  %i.v = trunc i64 %i.p to i8
  %i.w = load i8, ptr getelementptr inbounds nuw (i8, ptr @last, i64 31), align 1, !tbaa !11
  %i.x = add i8 %i.w, %i.v
  store i8 %i.x, ptr getelementptr inbounds nuw (i8, ptr @last, i64 31), align 1, !tbaa !11
  br label %agxbput.exit

bb.i:                                             ; preds = %bb.h
  %i.y = load i64, ptr getelementptr inbounds nuw (i8, ptr @last, i64 8), align 8
  %i.z = load ptr, ptr @last, align 8, !tbaa !11
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr nonnull readonly align 1 %.0.i, i64 %i.p, i1 false)
  %i.ab = load i64, ptr getelementptr inbounds nuw (i8, ptr @last, i64 8), align 8, !tbaa !11
  %i.ac = add i64 %i.ab, %i.p
  store i64 %i.ac, ptr getelementptr inbounds nuw (i8, ptr @last, i64 8), align 8, !tbaa !11
  br label %agxbput.exit

agxbput.exit:                                     ; preds = %agxbdisown.exit, %.thread, %bb.i
  %.val = load i8, ptr %.0.i, align 1
  %i.ad = icmp eq i8 %.val, 0
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %agxbput.exit
  tail call void @free(ptr noundef nonnull %.0.i) #18
  br label %bb.k

bb.k:                                             ; preds = %agxbput.exit, %bb.j
  %.0 = phi ptr [ null, %bb.j ], [ %.0.i, %agxbput.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define noundef i32 @agerr(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ...) local_unnamed_addr #2 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.va_start.p0(ptr nonnull %2)
  call fastcc void @agerr_va(i32 noundef %0, ptr noundef %1, ptr noundef %2)
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #4

; Function Attrs: nounwind uwtable
define internal fastcc void @agerr_va(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull %2) unnamed_addr #2 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = alloca [32 x i8], align 16               ; 7 uses
  %4 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  %i.b = icmp eq i32 %0, 3                        ; 3 uses
  %i.c = load i32, ptr @agerrno, align 4
  %i.d = icmp eq i32 %0, 2
  %i.e = select i1 %i.d, i32 1, i32 %0
  %i.f = select i1 %i.b, i32 %i.c, i32 %i.e       ; 3 uses
  store i32 %i.f, ptr @agerrno, align 4, !tbaa !10
  %i.g = load i32, ptr @agmaxerr, align 4, !tbaa !10
  %i.h = tail call range(i32 4, 3) i32 @llvm.smax.i32(i32 range(i32 4, 3) %i.g, i32 range(i32 4, 3) %i.f)
  store i32 %i.h, ptr @agmaxerr, align 4, !tbaa !10
  %i.i = load i32, ptr @agerrlevel, align 4, !tbaa !10
  %.not = icmp ult i32 %i.f, %i.i
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.va_copy.p0(ptr nonnull %4, ptr nonnull %2)
  %i.j = call i32 @vsnprintf(ptr noundef null, i64 noundef 0, ptr noundef readonly %1, ptr noundef nonnull %4) #18 ; 2 uses
  call void @llvm.va_end.p0(ptr nonnull %4)
  %i.k = icmp sgt i32 %i.j, -1
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.m = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.out) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %out.exit

bb.d:                                             ; preds = %bb.b
  %narrow.i = add nuw i32 %i.j, 1
  %i.n = zext i32 %narrow.i to i64                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.o = call noalias ptr @malloc(i64 noundef %i.n) #22 ; 5 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.r = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.q, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.out) #19 ; 0 uses
  br label %out.exit

bb.f:                                             ; preds = %bb.d
  %i.s = load ptr, ptr @usererrf, align 8, !tbaa !9 ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  %i.t = select i1 %.not.i, ptr @default_usererrf, ptr %i.s ; 3 uses
  br i1 %i.b, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = icmp eq i32 %0, 1
  %i.v = select i1 %i.u, ptr @.str.5, ptr @.str.6
  %i.w = call i32 %i.t(ptr noundef nonnull %i.v) #18, !inline_history !14 ; 0 uses
  %i.x = call i32 %i.t(ptr noundef nonnull @.str.7) #18, !inline_history !14 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.y = call i32 @vsnprintf(ptr noundef nonnull %i.o, i64 noundef %i.n, ptr noundef readonly %1, ptr noundef nonnull %2) #18
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef nonnull %i.o) #18
  %i.aa = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ab = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aa, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.out) #19 ; 0 uses
  br label %out.exit

bb.j:                                             ; preds = %bb.h
  %i.ac = call i32 %i.t(ptr noundef nonnull %i.o) #18, !inline_history !14 ; 0 uses
  call void @free(ptr noundef nonnull %i.o) #18
  br label %out.exit

bb.k:                                             ; preds = %bb.a
  br i1 %i.b, label %agxbclear.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = load i8, ptr getelementptr inbounds nuw (i8, ptr @last, i64 31), align 1, !tbaa !11
  %.not.i12 = icmp eq i8 %i.ad, -1
  br i1 %.not.i12, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @last, i64 31), align 1, !tbaa !11
  br label %agxbclear.exit

bb.n:                                             ; preds = %bb.l
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @last, i64 8), align 8, !tbaa !11
  br label %agxbclear.exit

agxbclear.exit:                                   ; preds = %bb.n, %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.va_copy.p0(ptr nonnull %3, ptr nonnull %2)
  %i.ae = call i32 @vsnprintf(ptr noundef null, i64 noundef 0, ptr noundef readonly %1, ptr noundef nonnull %3) #18 ; 2 uses
  call void @llvm.va_end.p0(ptr nonnull %3)
  %i.af = icmp sgt i32 %i.ae, -1
  %narrow.i13 = add nuw i32 %i.ae, 1
  %i.ag = zext i32 %narrow.i13 to i64             ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br i1 %i.af, label %bb.o, label %out.exit

bb.o:                                             ; preds = %agxbclear.exit
  %i.ah = load i8, ptr getelementptr inbounds nuw (i8, ptr @last, i64 31), align 1, !tbaa !11 ; 3 uses
  %.not.i.i = icmp ne i8 %i.ah, -1                ; 3 uses
  %i.ai = load i64, ptr getelementptr inbounds nuw (i8, ptr @last, i64 16), align 8
  %.0.i.i = select i1 %.not.i.i, i64 31, i64 %i.ai
  %i.aj = zext i8 %i.ah to i64                    ; 2 uses
  %i.ak = load i64, ptr getelementptr inbounds nuw (i8, ptr @last, i64 8), align 8 ; 2 uses
  %.0.i41.i = select i1 %.not.i.i, i64 %i.aj, i64 %i.ak
  %i.al = sub i64 %.0.i.i, %.0.i41.i              ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.ag
  br i1 %i.am, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.an = sub nuw nsw i64 %i.ag, %i.al            ; 2 uses
  %i.ao = icmp eq i64 %i.an, 1
  %or.cond.i = select i1 %.not.i.i, i1 %i.ao, i1 false
  br i1 %or.cond.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call fastcc void @agxbmore(i64 noundef %i.an)
  %.pre.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @last, i64 31), align 1, !tbaa !11 ; 2 uses
  %.pre4.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @last, i64 8), align 8
  %.pre6.i = zext i8 %.pre.i to i64
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  br label %bb.t

bb.s:                                             ; preds = %bb.q, %bb.o
  %.pre-phi.i = phi i64 [ %i.aj, %bb.o ], [ %.pre6.i, %bb.q ]
  %i.ap = phi i64 [ %i.ak, %bb.o ], [ %.pre4.i, %bb.q ]
  %i.aq = phi i8 [ %i.ah, %bb.o ], [ %.pre.i, %bb.q ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %.not.i.i.i = icmp eq i8 %i.aq, -1              ; 2 uses
  %.0.i.i.i = select i1 %.not.i.i.i, i64 %i.ap, i64 %.pre-phi.i
  %i.ar = load ptr, ptr @last, align 8
  %.v.i.i = select i1 %.not.i.i.i, ptr %i.ar, ptr @last
  %5 = getelementptr inbounds nuw i8, ptr %.v.i.i, i64 %.0.i.i.i
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.13.i = phi i1 [ false, %bb.s ], [ true, %bb.r ]
  %i.as = phi ptr [ %5, %bb.s ], [ %i.a, %bb.r ]
  %i.at = call i32 @vsnprintf(ptr noundef %i.as, i64 noundef %i.ag, ptr noundef readonly %1, ptr noundef nonnull %2) #18 ; 4 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.av = load i8, ptr getelementptr inbounds nuw (i8, ptr @last, i64 31), align 1, !tbaa !11 ; 3 uses
  %.not.i14 = icmp eq i8 %i.av, -1
  br i1 %.not.i14, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.13.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.aw = zext i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr @last, i64 %i.aw
  %i.ay = zext nneg i32 %i.at to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr nonnull align 16 %i.a, i64 %i.ay, i1 false)
  %.pre5.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @last, i64 31), align 1, !tbaa !11
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.az = phi i8 [ %.pre5.i, %bb.w ], [ %i.av, %bb.v ]
  %i.ba = trunc i32 %i.at to i8
  %i.bb = add i8 %i.az, %i.ba
  store i8 %i.bb, ptr getelementptr inbounds nuw (i8, ptr @last, i64 31), align 1, !tbaa !11
  br label %bb.z

bb.y:                                             ; preds = %bb.u
  %i.bc = zext nneg i32 %i.at to i64
  %i.bd = load i64, ptr getelementptr inbounds nuw (i8, ptr @last, i64 8), align 8, !tbaa !11
  %i.be = add i64 %i.bd, %i.bc
  store i64 %i.be, ptr getelementptr inbounds nuw (i8, ptr @last, i64 8), align 8, !tbaa !11
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %out.exit

out.exit:                                         ; preds = %bb.z, %agxbclear.exit, %bb.j, %bb.i, %bb.e, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #4

; Function Attrs: nounwind uwtable
define void @agerrorf(ptr nofree noundef readonly captures(none) %0, ...) local_unnamed_addr #2 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.va_start.p0(ptr nonnull %1)
  call fastcc void @agerr_va(i32 noundef 1, ptr noundef %0, ptr noundef %1)
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret void
}

; Function Attrs: nounwind uwtable
define void @agwarningf(ptr nofree noundef readonly captures(none) %0, ...) local_unnamed_addr #2 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.va_start.p0(ptr nonnull %1)
  call fastcc void @agerr_va(i32 noundef 0, ptr noundef %0, ptr noundef %1)
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 4, 3) i32 @agerrors() local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr @agmaxerr, align 4, !tbaa !10
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 4, 3) i32 @agreseterrors() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @agmaxerr, align 4, !tbaa !10
  store i32 0, ptr @agmaxerr, align 4, !tbaa !10
  ret i32 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strndup(ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @graphviz_exit() unnamed_addr #9 {
bb.a:
  tail call void @exit(i32 noundef 1) #23
  unreachable
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #10

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @agxbmore(i64 noundef %0) unnamed_addr #11 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @last, i64 31), align 1, !tbaa !11 ; 2 uses
  %.not.i = icmp eq i8 %i.a, -1                   ; 2 uses
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @last, i64 16), align 8 ; 4 uses
  %.0.i = select i1 %.not.i, i64 %i.b, i64 31     ; 3 uses
  %i.c = icmp eq i64 %.0.i, 0
  %i.d = shl i64 %.0.i, 1
  %i.e = select i1 %i.c, i64 8192, i64 %i.d
  %i.f = add i64 %.0.i, %0
  %spec.select = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %i.e) ; 9 uses
  %i.g = zext i8 %i.a to i64                      ; 2 uses
  br i1 %.not.i, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @last, align 8, !tbaa !11  ; 2 uses
  %i.i = icmp eq i64 %spec.select, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef %i.h) #18
  br label %gv_recalloc.exit

bb.d:                                             ; preds = %bb.b
  %i.j = tail call ptr @realloc(ptr noundef %i.h, i64 noundef %spec.select) #24 ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.1, i64 noundef %spec.select) #19 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.n = icmp ugt i64 %spec.select, %i.b
  br i1 %i.n, label %bb.g, label %gv_recalloc.exit

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.b
  %i.p = sub nuw i64 %spec.select, %i.b
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.o, i8 0, i64 %i.p, i1 false)
  br label %gv_recalloc.exit

bb.h:                                             ; preds = %bb.a
  %i.q = icmp ne i64 %spec.select, 0
  %i.r = tail call noalias ptr @calloc(i64 noundef %spec.select, i64 noundef 1) #25 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  %or.cond3.i = and i1 %i.q, %i.s
  br i1 %or.cond3.i, label %bb.i, label %gv_calloc.exit

bb.i:                                             ; preds = %bb.h
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.u = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.t, ptr noundef nonnull @.str.1, i64 noundef %spec.select) #19 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

gv_calloc.exit:                                   ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr nonnull align 8 @last, i64 %i.g, i1 false)
  store i64 %i.g, ptr getelementptr inbounds nuw (i8, ptr @last, i64 8), align 8, !tbaa !11
  br label %gv_recalloc.exit

gv_recalloc.exit:                                 ; preds = %bb.g, %bb.f, %bb.c, %gv_calloc.exit
  %.0 = phi ptr [ %i.r, %gv_calloc.exit ], [ null, %bb.c ], [ %i.j, %bb.g ], [ %i.j, %bb.f ]
  store ptr %.0, ptr @last, align 8, !tbaa !11
  store i64 %spec.select, ptr getelementptr inbounds nuw (i8, ptr @last, i64 16), align 8, !tbaa !11
  store i8 -1, ptr getelementptr inbounds nuw (i8, ptr @last, i64 31), align 1, !tbaa !11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_copy.p0(ptr, ptr) #4

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @default_usererrf(ptr nofree noundef readonly captures(none) %0) unnamed_addr #16 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !11      ; 2 uses
  %.not27 = icmp eq i8 %i.a, 0
end_hunk_0
