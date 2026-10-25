Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/mem?download=true
inline.NumInlined: 43
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@OPENSSL_memdup:bb.a

bb.e:                                             ; preds = %bb.c
  %i.e = icmp ugt i64 %1, -9
  br i1 %i.e, label %OPENSSL_malloc.exit.thread11, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = add nuw i64 %1, 8
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #19 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %OPENSSL_malloc.exit.thread11, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 %1, ptr %i.g, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %OPENSSL_memcpy.exit

OPENSSL_malloc.exit.thread11:                     ; preds = %bb.d, %bb.e, %bb.f
  tail call void @ERR_put_error(i32 noundef 14, i32 noundef 0, i32 noundef 65, ptr noundef nonnull @.str, i32 noundef 150) #18
  br label %bb.h

OPENSSL_malloc.exit:                              ; preds = %bb.b
  %i.j = tail call ptr %i.b(i64 noundef %1, ptr noundef nonnull @.str.1, i32 noundef 0) #18, !inline_history !15 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.h, label %OPENSSL_memcpy.exit

OPENSSL_memcpy.exit:                              ; preds = %bb.g, %bb.d, %OPENSSL_malloc.exit
  %.1.i10 = phi ptr [ %i.j, %OPENSSL_malloc.exit ], [ %i.i, %bb.g ], [ %i.c, %bb.d ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.1.i10, ptr readonly align 1 %0, i64 %1, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %OPENSSL_malloc.exit.thread11, %OPENSSL_memcpy.exit, %OPENSSL_malloc.exit, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %.1.i10, %OPENSSL_memcpy.exit ], [ null, %OPENSSL_malloc.exit ], [ null, %OPENSSL_malloc.exit.thread11 ]
  ret ptr %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 0, 2) i32 @OPENSSL_isalpha(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %0, -33
  %i.b = add i32 %i.a, -65
  %narrow = icmp ult i32 %i.b, 26
  %i.c = zext i1 %narrow to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 0, 2) i32 @OPENSSL_isdigit(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %0, -48
  %i.b = icmp ult i32 %i.a, 10
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 0, 2) i32 @OPENSSL_isxdigit(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %0, -48
  %i.b = icmp ult i32 %i.a, 10
  %i.c = and i32 %0, -33
  %i.d = add i32 %i.c, -65
  %i.e = icmp ult i32 %i.d, 6
  %narrow = or i1 %i.b, %i.e
  %i.f = zext i1 %narrow to i32
  ret i32 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 0, 2) i32 @OPENSSL_fromxdigit(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = add i32 %1, -58
  %i.b = icmp ult i32 %i.a, -10
  br i1 %i.b, label %bb.b, label %.sink.split

bb.b:                                             ; preds = %bb.a
  %i.c = add i32 %1, -97
  %or.cond = icmp ult i32 %i.c, 6
  br i1 %or.cond, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add i32 %1, -65
  %or.cond3 = icmp ult i32 %i.d, 6
  br i1 %or.cond3, label %.sink.split, label %bb.d

.sink.split:                                      ; preds = %bb.c, %bb.b, %bb.a
  %.sink16 = phi i8 [ -87, %bb.b ], [ -48, %bb.a ], [ -55, %bb.c ]
  %i.e = trunc nuw nsw i32 %1 to i8
  %i.f = add nsw i8 %.sink16, %i.e
  store i8 %i.f, ptr %0, align 1, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 1, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define ptr @OPENSSL_hexstr2buf(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %OPENSSL_free.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %.0811.i = phi i64 [ %i.r, %bb.c ], [ 0, %bb.a ] ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.0811.i
  %i.d = load i8, ptr %i.c, align 1, !tbaa !19
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %OPENSSL_strnlen.exit, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.f = or disjoint i64 %.0811.i, 1              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !19
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %OPENSSL_strnlen.exit, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.j = or disjoint i64 %.0811.i, 2              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !19
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %OPENSSL_strnlen.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.2
  %exitcond.not.i.2 = icmp eq i64 %.0811.i, 32764
  br i1 %exitcond.not.i.2, label %OPENSSL_free.exit, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.b
  %i.n = or disjoint i64 %.0811.i, 3              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !19
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %OPENSSL_strnlen.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.3
  %i.r = add nuw nsw i64 %.0811.i, 4
  br label %.lr.ph.i

OPENSSL_strnlen.exit:                             ; preds = %.lr.ph.i.3, %.lr.ph.i.2, %.lr.ph.i.1, %.lr.ph.i
  %.0811.i.lcssa = phi i64 [ %.0811.i, %.lr.ph.i ], [ %i.f, %.lr.ph.i.1 ], [ %i.j, %.lr.ph.i.2 ], [ %i.n, %.lr.ph.i.3 ] ; 4 uses
  %i.s = and i64 %.0811.i.lcssa, 1
  %.not = icmp eq i64 %i.s, 0
  br i1 %.not, label %bb.d, label %OPENSSL_free.exit

bb.d:                                             ; preds = %OPENSSL_strnlen.exit
  %i.t = lshr exact i64 %.0811.i.lcssa, 1         ; 7 uses
  %i.u = load ptr, ptr @malloc_impl, align 8, !tbaa !12 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = tail call ptr %i.u(i64 noundef %i.t, ptr noundef nonnull @.str.1, i32 noundef 0) #18, !inline_history !16
  br label %OPENSSL_malloc.exit.i

bb.f:                                             ; preds = %bb.d
  %.not19.i.i = icmp eq ptr @OPENSSL_memory_alloc, null
  br i1 %.not19.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = tail call ptr @OPENSSL_memory_alloc(i64 noundef %i.t) #18 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  %i.y = icmp ne i64 %.0811.i.lcssa, 0
  %or.cond.i.i = and i1 %i.y, %i.x
  br i1 %or.cond.i.i, label %OPENSSL_malloc.exit.thread.i, label %OPENSSL_malloc.exit.i

bb.h:                                             ; preds = %bb.f
  %i.z = add nuw nsw i64 %i.t, 8
  %i.aa = tail call noalias ptr @malloc(i64 noundef %i.z) #19 ; 3 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %OPENSSL_malloc.exit.thread.i, label %OPENSSL_malloc.exit.thread7.i

OPENSSL_malloc.exit.thread7.i:                    ; preds = %bb.h
  store i64 %i.t, ptr %i.aa, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  br label %bb.i

OPENSSL_malloc.exit.thread.i:                     ; preds = %bb.h, %bb.g
  tail call void @ERR_put_error(i32 noundef 14, i32 noundef 0, i32 noundef 65, ptr noundef nonnull @.str, i32 noundef 150) #18
  br label %OPENSSL_free.exit

OPENSSL_malloc.exit.i:                            ; preds = %bb.g, %bb.e
  %.1.i.i = phi ptr [ %i.v, %bb.e ], [ %i.w, %bb.g ] ; 2 uses
  %.not.i = icmp eq ptr %.1.i.i, null
  br i1 %.not.i, label %OPENSSL_free.exit, label %bb.i

bb.i:                                             ; preds = %OPENSSL_malloc.exit.i, %OPENSSL_malloc.exit.thread7.i
  %.1.i10.i = phi ptr [ %i.ac, %OPENSSL_malloc.exit.thread7.i ], [ %.1.i.i, %OPENSSL_malloc.exit.i ] ; 6 uses
  %i.ad = icmp eq i64 %.0811.i.lcssa, 0
  br i1 %i.ad, label %.critedge34, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.1.i10.i, i8 0, i64 %i.t, i1 false)
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge
  %.056 = phi i64 [ %i.bb, %.critedge ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.ae = shl nuw nsw i64 %.056, 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %i.ae ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !19  ; 3 uses
  %i.ah = sext i8 %i.ag to i32
  %i.ai = add nsw i32 %i.ah, -58
  %i.aj = icmp ult i32 %i.ai, -10
  br i1 %i.aj, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.lr.ph
  %switch.tableidx = add i8 %i.ag, -65            ; 2 uses
  %or.cond.i = icmp ult i8 %switch.tableidx, 38
  br i1 %or.cond.i, label %bb.k, label %OPENSSL_fromxdigit.exit.thread

bb.k:                                             ; preds = %bb.j
  %switch.maskindex = zext nneg i8 %switch.tableidx to i64
  %switch.shifted = lshr i64 270582939711, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  br i1 %switch.lobit, label %bb.l, label %OPENSSL_fromxdigit.exit.thread

bb.l:                                             ; preds = %bb.k, %.lr.ph
  %.sink16.i = phi i8 [ 0, %.lr.ph ], [ 9, %bb.k ]
  %i.ak = add i8 %.sink16.i, %i.ag
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !19  ; 2 uses
  %i.an = sext i8 %i.am to i32                    ; 3 uses
  %i.ao = add nsw i32 %i.an, -58
  %i.ap = icmp ult i32 %i.ao, -10
  br i1 %i.ap, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.aq = add nsw i32 %i.an, -97
  %or.cond.i38 = icmp ult i32 %i.aq, 6
  br i1 %or.cond.i38, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = add nsw i32 %i.an, -65
  %or.cond3.i39 = icmp ult i32 %i.ar, 6
  br i1 %or.cond3.i39, label %.critedge, label %OPENSSL_fromxdigit.exit.thread

OPENSSL_fromxdigit.exit.thread:                   ; preds = %bb.k, %bb.j, %bb.n
  %i.as = load ptr, ptr @free_impl, align 8, !tbaa !12 ; 2 uses
  %.not.i41 = icmp eq ptr %i.as, null
  br i1 %.not.i41, label %bb.p, label %bb.o

bb.o:                                             ; preds = %OPENSSL_fromxdigit.exit.thread
  tail call void %i.as(ptr noundef nonnull %.1.i10.i, ptr noundef nonnull @.str.1, i32 noundef 0) #18, !inline_history !18
  br label %OPENSSL_free.exit

bb.p:                                             ; preds = %OPENSSL_fromxdigit.exit.thread
  %.not11.i = icmp eq ptr @OPENSSL_memory_free, null
  br i1 %.not11.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @OPENSSL_memory_free(ptr noundef nonnull %.1.i10.i) #18
  br label %OPENSSL_free.exit

bb.r:                                             ; preds = %bb.p
  %i.at = getelementptr inbounds i8, ptr %.1.i10.i, i64 -8 ; 5 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !14
  %i.av = add i64 %i.au, 8                        ; 3 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %OPENSSL_cleanse.exit.i, label %OPENSSL_memset.exit.i.i

OPENSSL_memset.exit.i.i:                          ; preds = %bb.r
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.at, i8 0, i64 %i.av, i1 false)
  tail call void asm sideeffect "", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.at) #18, !srcloc !17
  br label %OPENSSL_cleanse.exit.i

OPENSSL_cleanse.exit.i:                           ; preds = %OPENSSL_memset.exit.i.i, %bb.r
  %.not12.i = icmp eq ptr @sdallocx, null
  br i1 %.not12.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %OPENSSL_cleanse.exit.i
  tail call void @sdallocx(ptr noundef nonnull %i.at, i64 noundef %i.av, i32 noundef 0) #18
  br label %OPENSSL_free.exit

bb.t:                                             ; preds = %OPENSSL_cleanse.exit.i
  tail call void @free(ptr noundef nonnull %i.at) #18
  br label %OPENSSL_free.exit

.critedge:                                        ; preds = %bb.n, %bb.m, %bb.l
  %.sink16.i36 = phi i8 [ -87, %bb.m ], [ -48, %bb.l ], [ -55, %bb.n ]
  %i.ax = add nsw i8 %.sink16.i36, %i.am
  %i.ay = shl i8 %i.ak, 4
  %i.az = or i8 %i.ax, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %.1.i10.i, i64 %.056
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !19
  %i.bb = add nuw nsw i64 %.056, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.bb, %i.t
  br i1 %exitcond.not, label %.critedge34, label %.lr.ph, !llvm.loop !34

.critedge34:                                      ; preds = %.critedge, %bb.i
  store i64 %i.t, ptr %1, align 8, !tbaa !14
  br label %OPENSSL_free.exit

OPENSSL_free.exit:                                ; preds = %bb.b, %OPENSSL_malloc.exit.i, %OPENSSL_malloc.exit.thread.i, %bb.t, %bb.s, %bb.q, %bb.o, %OPENSSL_strnlen.exit, %.critedge34, %bb.a
  %.5 = phi ptr [ null, %bb.a ], [ null, %OPENSSL_strnlen.exit ], [ null, %bb.t ], [ %.1.i10.i, %.critedge34 ], [ null, %OPENSSL_malloc.exit.i ], [ null, %bb.o ], [ null, %bb.q ], [ null, %bb.s ], [ null, %OPENSSL_malloc.exit.thread.i ], [ null, %bb.b ]
  ret ptr %.5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 0, 2) i32 @OPENSSL_isalnum(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %0, -33
  %i.b = add i32 %i.a, -65
  %narrow.i = icmp ult i32 %i.b, 26
  %i.c = add i32 %0, -48
  %i.d = icmp ult i32 %i.c, 10
  %narrow = or i1 %i.d, %narrow.i
  %i.e = zext i1 %narrow to i32
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @OPENSSL_tolower(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %0, -65
  %or.cond = icmp ult i32 %i.a, 26
  %i.b = or disjoint i32 %0, 32
  %.0 = select i1 %or.cond, i32 %i.b, i32 %0
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 0, 2) i32 @OPENSSL_isspace(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %0, -9
  %or.cond7 = icmp ult i32 %i.a, 5
  %i.b = icmp eq i32 %0, 32
  %narrow = or i1 %i.b, %or.cond7
  %i.c = zext i1 %narrow to i32
  ret i32 %i.c
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 -1, 2) i32 @OPENSSL_strcasecmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !19
  %i.b = sext i8 %i.a to i32                      ; 3 uses
  %i.c = add nsw i32 %i.b, -65
  %or.cond.i20 = icmp ult i32 %i.c, 26
  %i.d = or disjoint i32 %i.b, 32
  %.0.i21 = select i1 %or.cond.i20, i32 %i.d, i32 %i.b ; 2 uses
  %i.e = load i8, ptr %1, align 1, !tbaa !19
  %i.f = sext i8 %i.e to i32                      ; 3 uses
  %i.g = add nsw i32 %i.f, -65
  %or.cond.i1522 = icmp ult i32 %i.g, 26
  %i.h = or disjoint i32 %i.f, 32
  %.0.i1623 = select i1 %or.cond.i1522, i32 %i.h, i32 %i.f ; 2 uses
  %i.i = icmp slt i32 %.0.i21, %.0.i1623
  br i1 %i.i, label %.thread, label %.lr.ph

bb.b:                                             ; preds = %bb.c
  %i.j = add i64 %.01125, 1                       ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !19
  %i.m = sext i8 %i.l to i32                      ; 3 uses
  %i.n = add nsw i32 %i.m, -65
  %or.cond.i = icmp ult i32 %i.n, 26
  %i.o = or disjoint i32 %i.m, 32
  %.0.i = select i1 %or.cond.i, i32 %i.o, i32 %i.m ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.j
  %i.q = load i8, ptr %i.p, align 1, !tbaa !19
  %i.r = sext i8 %i.q to i32                      ; 3 uses
  %i.s = add nsw i32 %i.r, -65
  %or.cond.i15 = icmp ult i32 %i.s, 26
  %i.t = or disjoint i32 %i.r, 32
  %.0.i16 = select i1 %or.cond.i15, i32 %i.t, i32 %i.r ; 2 uses
  %i.u = icmp slt i32 %.0.i, %.0.i16
  br i1 %i.u, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.0.i1627 = phi i32 [ %.0.i16, %bb.b ], [ %.0.i1623, %bb.a ]
  %.0.i26 = phi i32 [ %.0.i, %bb.b ], [ %.0.i21, %bb.a ] ; 2 uses
  %.01125 = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ]
  %i.v = icmp sgt i32 %.0.i26, %.0.i1627
  br i1 %i.v, label %.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %.not = icmp eq i32 %.0.i26, 0
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.c, %.lr.ph, %bb.b, %bb.a
  %.119 = phi i32 [ -1, %bb.a ], [ 1, %.lr.ph ], [ -1, %bb.b ], [ 0, %bb.c ]
  ret i32 %.119
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 -1, 2) i32 @OPENSSL_strncasecmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #6 {
bb.a:
  %.not35 = icmp eq i64 %2, 0
  br i1 %.not35, label %.thread24, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.01428 = phi i64 [ %i.m, %bb.c ], [ 0, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.01428
  %i.b = load i8, ptr %i.a, align 1, !tbaa !19
  %i.c = sext i8 %i.b to i32                      ; 3 uses
  %i.d = add nsw i32 %i.c, -65
  %or.cond.i = icmp ult i32 %i.d, 26
  %i.e = or disjoint i32 %i.c, 32
  %.0.i = select i1 %or.cond.i, i32 %i.e, i32 %i.c ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.01428
  %i.g = load i8, ptr %i.f, align 1, !tbaa !19
  %i.h = sext i8 %i.g to i32                      ; 3 uses
  %i.i = add nsw i32 %i.h, -65
  %or.cond.i19 = icmp ult i32 %i.i, 26
  %i.j = or disjoint i32 %i.h, 32
  %.0.i20 = select i1 %or.cond.i19, i32 %i.j, i32 %i.h ; 2 uses
  %i.k = icmp slt i32 %.0.i, %.0.i20
  br i1 %i.k, label %.thread24, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.l = icmp sgt i32 %.0.i, %.0.i20
  br i1 %i.l, label %.thread24, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i32 %.0.i, 0
  %i.m = add nuw i64 %.01428, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.m, %2
  %or.cond = select i1 %.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %.thread24, label %.lr.ph, !llvm.loop !35

.thread24:                                        ; preds = %bb.c, %bb.b, %.lr.ph, %bb.a
  %i.n = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ 1, %bb.b ], [ -1, %.lr.ph ]
  ret i32 %i.n
}

; Function Attrs: nofree nounwind uwtable
define noundef i32 @BIO_snprintf(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ...) local_unnamed_addr #9 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.a = call noundef i32 @vsnprintf(ptr noundef %0, i64 noundef %1, ptr noundef readonly %2, ptr noundef nonnull %3) #18
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret i32 %i.a
}

end_hunk_0
