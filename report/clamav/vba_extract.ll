Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/vba_extract?download=true
inline.NumInlined: 47
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@vba_normalize:bb.a
  %i.c = icmp eq i32 %.08090.ph, 2
  %i.d = add i64 %.07378106.ph, 1                 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.07378106.ph
  store i8 13, ptr %i.e, align 1, !tbaa !13
  br i1 %i.c, label %bb.b, label %spec.store.select14.si.unfold.false

bb.b:                                             ; preds = %.preheader.peel
  %i.f = add nuw i64 %.0727996.ph, 1              ; 9 uses
  %exitcond.not.jt3.peel = icmp eq i64 %i.f, %1
  br i1 %exitcond.not.jt3.peel, label %._crit_edge, label %.lr.ph.jt3.peel

.lr.ph.jt3.peel:                                  ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !13    ; 2 uses
  switch i8 %i.h, label %.loopexit [
    i8 34, label %.thread
    i8 95, label %.preheader148.preheader
    i8 13, label %.preheader.preheader.peel.newph
    i8 10, label %.loopexit147
    i8 9, label %spec.store.select14.si.unfold.false.sink.split
    i8 32, label %spec.store.select14.si.unfold.false.sink.split
  ]

.preheader.preheader.peel.newph:                  ; preds = %.lr.ph.jt3.peel
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  store i8 13, ptr %i.i, align 1, !tbaa !13
  %i.j = add i64 %.07378106.ph, 2
  br label %spec.store.select14.si.unfold.false

.lr.ph.jt0:                                       ; preds = %bb.j
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %i.an
  %i.l = load i8, ptr %i.k, align 1, !tbaa !13    ; 3 uses
  switch i8 %i.l, label %.loopexit [
    i8 34, label %bb.c
    i8 95, label %.preheader148.preheader
    i8 13, label %.preheader.peel
    i8 10, label %spec.store.select14.si.unfold.false.sink.split
    i8 9, label %bb.f
    i8 32, label %bb.f
  ]

bb.c:                                             ; preds = %.lr.ph.jt0, %.lr.ph
  %.07378104 = phi i64 [ %.3.jt0, %.lr.ph.jt0 ], [ %.07378, %.lr.ph ] ; 2 uses
  %.0727994 = phi i64 [ %i.an, %.lr.ph.jt0 ], [ %.07279, %.lr.ph ] ; 2 uses
  %.08088 = phi i32 [ %.2.jt0, %.lr.ph.jt0 ], [ %.080, %.lr.ph ] ; 2 uses
  %i.m = icmp eq i32 %.08088, 1
  br i1 %i.m, label %.thread.thread, label %.thread

.thread:                                          ; preds = %.lr.ph.jt3.peel, %bb.c
  %.08088118 = phi i32 [ %.08088, %bb.c ], [ 3, %.lr.ph.jt3.peel ] ; 2 uses
  %.0727994116 = phi i64 [ %.0727994, %bb.c ], [ %i.f, %.lr.ph.jt3.peel ] ; 4 uses
  %.07378104114 = phi i64 [ %.07378104, %bb.c ], [ %i.d, %.lr.ph.jt3.peel ] ; 4 uses
  switch i32 %.08088118, label %spec.store.select14.si.unfold.false.sink.split [
    i32 5, label %.thread.thread
    i32 2, label %.thread.thread
    i32 0, label %.thread.thread
  ]

.thread.thread:                                   ; preds = %.lr.ph.jt2.peel, %.thread, %.thread, %.thread, %bb.c
  %.0727994117 = phi i64 [ %.0727994116, %.thread ], [ %.0727994, %bb.c ], [ %.0727994116, %.thread ], [ %.0727994116, %.thread ], [ %i.s, %.lr.ph.jt2.peel ]
  %.07378104115 = phi i64 [ %.07378104114, %.thread ], [ %.07378104, %bb.c ], [ %.07378104114, %.thread ], [ %.07378104114, %.thread ], [ %i.q, %.lr.ph.jt2.peel ] ; 2 uses
  %.1.jt0 = phi i32 [ 1, %.thread ], [ 0, %bb.c ], [ 1, %.thread ], [ 1, %.thread ], [ 1, %.lr.ph.jt2.peel ]
  %i.n = add i64 %.07378104115, 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.07378104115
  store i8 34, ptr %i.o, align 1, !tbaa !13
  br label %bb.j

.preheader148.preheader:                          ; preds = %.lr.ph.jt3.peel, %.lr.ph, %.lr.ph.jt0
  %.07378105.ph = phi i64 [ %.07378, %.lr.ph ], [ %.3.jt0, %.lr.ph.jt0 ], [ %i.d, %.lr.ph.jt3.peel ] ; 3 uses
  %.0727995.ph = phi i64 [ %.07279, %.lr.ph ], [ %i.an, %.lr.ph.jt0 ], [ %i.f, %.lr.ph.jt3.peel ] ; 2 uses
  %.08089.ph = phi i32 [ %.080, %.lr.ph ], [ %.2.jt0, %.lr.ph.jt0 ], [ 3, %.lr.ph.jt3.peel ] ; 2 uses
  %i.p = icmp eq i32 %.08089.ph, 5
  %i.q = add i64 %.07378105.ph, 1                 ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %.07378105.ph
  store i8 95, ptr %i.r, align 1, !tbaa !13
  br i1 %i.p, label %bb.d, label %spec.store.select14.si.unfold.false

bb.d:                                             ; preds = %.preheader148.preheader
  %i.s = add nuw i64 %.0727995.ph, 1              ; 9 uses
  %exitcond.not.jt2.peel = icmp eq i64 %i.s, %1
  br i1 %exitcond.not.jt2.peel, label %._crit_edge, label %.lr.ph.jt2.peel

.lr.ph.jt2.peel:                                  ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !13    ; 2 uses
  switch i8 %i.u, label %.loopexit [
    i8 34, label %.thread.thread
    i8 95, label %.preheader148.preheader.peel.newph
    i8 13, label %.preheader.peel
    i8 10, label %.loopexit152
    i8 9, label %.thread120
    i8 32, label %.thread120
  ]

.preheader148.preheader.peel.newph:               ; preds = %.lr.ph.jt2.peel
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  store i8 95, ptr %i.v, align 1, !tbaa !13
  %i.w = add i64 %.07378105.ph, 2
  br label %spec.store.select14.si.unfold.false

bb.e:                                             ; preds = %.lr.ph
  switch i32 %.080, label %spec.store.select14.si.unfold.false.sink.split [
    i32 2, label %.loopexit152
    i32 3, label %.loopexit147
  ]

.loopexit152:                                     ; preds = %.lr.ph.jt2.peel, %bb.e
  %.07378109 = phi i64 [ %.07378, %bb.e ], [ %i.q, %.lr.ph.jt2.peel ]
  %.0727999 = phi i64 [ %.07279, %bb.e ], [ %i.s, %.lr.ph.jt2.peel ]
  %i.x = add i64 %.07378109, -1
  br label %bb.j

.loopexit147:                                     ; preds = %.lr.ph.jt3.peel, %bb.e
  %.07378108 = phi i64 [ %.07378, %bb.e ], [ %i.d, %.lr.ph.jt3.peel ]
  %.0727998 = phi i64 [ %.07279, %bb.e ], [ %i.f, %.lr.ph.jt3.peel ]
  %i.y = add i64 %.07378108, -2
  br label %bb.j

bb.f:                                             ; preds = %.lr.ph.jt0, %.lr.ph.jt0, %.lr.ph, %.lr.ph
  %.07378107 = phi i64 [ %.3.jt0, %.lr.ph.jt0 ], [ %.3.jt0, %.lr.ph.jt0 ], [ %.07378, %.lr.ph ], [ %.07378, %.lr.ph ] ; 2 uses
  %.0727997 = phi i64 [ %i.an, %.lr.ph.jt0 ], [ %i.an, %.lr.ph.jt0 ], [ %.07279, %.lr.ph ], [ %.07279, %.lr.ph ] ; 2 uses
  %.08091 = phi i32 [ %.2.jt0, %.lr.ph.jt0 ], [ %.2.jt0, %.lr.ph.jt0 ], [ %.080, %.lr.ph ], [ %.080, %.lr.ph ] ; 2 uses
  %.not = icmp eq i32 %.08091, 5
  br i1 %.not, label %spec.store.select14.si.unfold.false, label %.thread120

.thread120:                                       ; preds = %.lr.ph.jt2.peel, %.lr.ph.jt2.peel, %bb.f
  %.08091128 = phi i32 [ %.08091, %bb.f ], [ 2, %.lr.ph.jt2.peel ], [ 2, %.lr.ph.jt2.peel ] ; 2 uses
  %.0727997126 = phi i64 [ %.0727997, %bb.f ], [ %i.s, %.lr.ph.jt2.peel ], [ %i.s, %.lr.ph.jt2.peel ] ; 2 uses
  %.07378107125 = phi i64 [ %.07378107, %bb.f ], [ %i.q, %.lr.ph.jt2.peel ], [ %i.q, %.lr.ph.jt2.peel ] ; 2 uses
  %i.z = add i64 %.07378107125, 1                 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %.07378107125
  store i8 32, ptr %i.aa, align 1, !tbaa !13
  %i.ab = and i32 %.08091128, -3
  %or.cond6 = icmp eq i32 %i.ab, 0
  br i1 %or.cond6, label %bb.j, label %spec.store.select14.si.unfold.false

.loopexit:                                        ; preds = %.lr.ph.jt2.peel, %.lr.ph.jt3.peel, %.lr.ph.jt0, %.lr.ph
  %i.ac = phi i8 [ %i.b, %.lr.ph ], [ %i.h, %.lr.ph.jt3.peel ], [ %i.l, %.lr.ph.jt0 ], [ %i.u, %.lr.ph.jt2.peel ] ; 4 uses
  %.07378103 = phi i64 [ %.07378, %.lr.ph ], [ %i.d, %.lr.ph.jt3.peel ], [ %.3.jt0, %.lr.ph.jt0 ], [ %i.q, %.lr.ph.jt2.peel ] ; 3 uses
  %.0727993 = phi i64 [ %.07279, %.lr.ph ], [ %i.f, %.lr.ph.jt3.peel ], [ %i.an, %.lr.ph.jt0 ], [ %i.s, %.lr.ph.jt2.peel ] ; 2 uses
  %.08087 = phi i32 [ %.080, %.lr.ph ], [ 3, %.lr.ph.jt3.peel ], [ %.2.jt0, %.lr.ph.jt0 ], [ 2, %.lr.ph.jt2.peel ] ; 2 uses
  switch i32 %.08087, label %spec.store.select14.si.unfold.false.sink.split [
    i32 5, label %bb.g
    i32 2, label %bb.g
    i32 0, label %bb.g
  ]

bb.g:                                             ; preds = %.loopexit, %.loopexit, %.loopexit
  %i.ad = add i8 %i.ac, -65
  %or.cond77 = icmp ult i8 %i.ad, 26
  br i1 %or.cond77, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ae = tail call ptr @__ctype_tolower_loc() #17
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !54
  %i.ag = zext nneg i8 %i.ac to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %.071 = load i32, ptr %i.ah, align 4, !tbaa !14
  %i.ai = trunc i32 %.071 to i8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.sink = phi i8 [ %i.ai, %bb.h ], [ %i.ac, %bb.g ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %.07378103
  store i8 %.sink, ptr %i.aj, align 1, !tbaa !13
  %.275 = add i64 %.07378103, 1
  br label %bb.j

spec.store.select14.si.unfold.false.sink.split:   ; preds = %.lr.ph.jt3.peel, %.lr.ph.jt3.peel, %.loopexit, %bb.e, %.lr.ph.jt0, %.thread
  %.lcssa194.sink228 = phi i64 [ %.3.jt0, %.lr.ph.jt0 ], [ %.07378103, %.loopexit ], [ %.07378104114, %.thread ], [ %.07378, %bb.e ], [ %i.d, %.lr.ph.jt3.peel ], [ %i.d, %.lr.ph.jt3.peel ] ; 2 uses
  %.sink226 = phi i8 [ %i.l, %.lr.ph.jt0 ], [ %i.ac, %.loopexit ], [ 34, %.thread ], [ 10, %bb.e ], [ 32, %.lr.ph.jt3.peel ], [ 32, %.lr.ph.jt3.peel ]
  %.07279101.ph = phi i64 [ %i.an, %.lr.ph.jt0 ], [ %.0727993, %.loopexit ], [ %.0727994116, %.thread ], [ %.07279, %bb.e ], [ %i.f, %.lr.ph.jt3.peel ], [ %i.f, %.lr.ph.jt3.peel ]
  %.2.ph = phi i32 [ %.2.jt0, %.lr.ph.jt0 ], [ %.08087, %.loopexit ], [ %.08088118, %.thread ], [ %.080, %bb.e ], [ 3, %.lr.ph.jt3.peel ], [ 3, %.lr.ph.jt3.peel ]
  %i.ak = add i64 %.lcssa194.sink228, 1
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %.lcssa194.sink228
  store i8 %.sink226, ptr %i.al, align 1, !tbaa !13
  br label %spec.store.select14.si.unfold.false

spec.store.select14.si.unfold.false:              ; preds = %.preheader148.preheader, %.preheader148.preheader.peel.newph, %.preheader.peel, %.preheader.preheader.peel.newph, %spec.store.select14.si.unfold.false.sink.split, %bb.f, %.thread120
  %.07279101 = phi i64 [ %i.f, %.preheader.preheader.peel.newph ], [ %.07279101.ph, %spec.store.select14.si.unfold.false.sink.split ], [ %.0727997126, %.thread120 ], [ %.0727997, %bb.f ], [ %.0727996.ph, %.preheader.peel ], [ %.0727995.ph, %.preheader148.preheader ], [ %i.s, %.preheader148.preheader.peel.newph ]
  %.3 = phi i64 [ %i.j, %.preheader.preheader.peel.newph ], [ %i.ak, %spec.store.select14.si.unfold.false.sink.split ], [ %i.z, %.thread120 ], [ %.07378107, %bb.f ], [ %i.d, %.preheader.peel ], [ %i.q, %.preheader148.preheader ], [ %i.w, %.preheader148.preheader.peel.newph ] ; 2 uses
  %.2 = phi i32 [ 3, %.preheader.preheader.peel.newph ], [ %.2.ph, %spec.store.select14.si.unfold.false.sink.split ], [ %.08091128, %.thread120 ], [ 5, %bb.f ], [ %.08090.ph, %.preheader.peel ], [ %.08089.ph, %.preheader148.preheader ], [ 2, %.preheader148.preheader.peel.newph ]
  %i.am = add nuw i64 %.07279101, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.am, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.j:                                             ; preds = %.thread120, %.loopexit147, %.loopexit152, %.thread.thread, %bb.i
  %.07279102 = phi i64 [ %.0727997126, %.thread120 ], [ %.0727998, %.loopexit147 ], [ %.0727999, %.loopexit152 ], [ %.0727994117, %.thread.thread ], [ %.0727993, %bb.i ]
  %.3.jt0 = phi i64 [ %i.z, %.thread120 ], [ %i.y, %.loopexit147 ], [ %i.x, %.loopexit152 ], [ %i.n, %.thread.thread ], [ %.275, %bb.i ] ; 8 uses
  %.2.jt0 = phi i32 [ 5, %.thread120 ], [ 5, %.loopexit147 ], [ 5, %.loopexit152 ], [ %.1.jt0, %.thread.thread ], [ 0, %bb.i ] ; 7 uses
  %i.an = add nuw i64 %.07279102, 1               ; 9 uses
  %exitcond.not.jt0 = icmp eq i64 %i.an, %1
  br i1 %exitcond.not.jt0, label %._crit_edge, label %.lr.ph.jt0

._crit_edge:                                      ; preds = %spec.store.select14.si.unfold.false, %bb.j, %bb.d, %bb.b, %bb.a
  %.073.lcssa = phi i64 [ 0, %bb.a ], [ %i.d, %bb.b ], [ %i.q, %bb.d ], [ %.3.jt0, %bb.j ], [ %.3, %spec.store.select14.si.unfold.false ]
  ret i64 %.073.lcssa
}

; Function Attrs: nounwind uwtable
define noundef ptr @cli_vba_readdir(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 9 uses
  %i.b = alloca i16, align 2                      ; 18 uses
  %i.c = alloca i16, align 2                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %3 = alloca %struct.vba56_header, align 1       ; 4 uses
  %i.e = alloca [1024 x i8], align 16             ; 5 uses
  %i.f = alloca ptr, align 8                      ; 7 uses
  %i.g = alloca i32, align 4                      ; 7 uses
  %i.h = alloca i16, align 2                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #15
  store i32 0, ptr %i.g, align 4, !tbaa !14
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.124) #15
  %i.i = icmp eq ptr %0, null
  br i1 %i.i, label %bb.bn, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = call i32 @uniq_get(ptr noundef %1, ptr noundef nonnull @.str.125, i32 noundef 12, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #15
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.126) #15
  br label %bb.bn

bb.d:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.g, align 4, !tbaa !14
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.bn, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !10
  %i.n = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 1024, ptr noundef nonnull @.str.1, ptr noundef nonnull %0, ptr noundef %i.m, i32 noundef %2) #15 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 1023
  store i8 0, ptr %i.o, align 1, !tbaa !13
  %i.p = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.e, i32 noundef 0) #15 ; 45 uses
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %bb.bn, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = call i64 @cli_readn(i32 noundef %i.p, ptr noundef nonnull %3, i64 noundef 34) #15
  %.not126 = icmp eq i64 %i.r, 34
  br i1 %.not126, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = call i32 @close(i32 noundef %i.p) #15    ; 0 uses
  br label %bb.bn

bb.h:                                             ; preds = %bb.f
  %i.t = load i16, ptr %3, align 1
  %i.u = icmp ne i16 %i.t, 25036
  %i.v = zext i1 %i.u to i32
  %.not127 = icmp eq i32 %i.v, 0
  br i1 %.not127, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = call i32 @close(i32 noundef %i.p) #15    ; 0 uses
  br label %bb.bn

bb.j:                                             ; preds = %bb.h
  %i.x = call fastcc i32 @vba_read_project_strings(i32 noundef %i.p, i32 noundef 1) ; 2 uses
  %i.y = call i64 @lseek(i32 noundef %i.p, i64 noundef 0, i32 noundef 1) #15 ; 2 uses
  %i.z = icmp eq i64 %i.y, -1
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.127) #15
  %i.aa = call i32 @close(i32 noundef %i.p) #15   ; 0 uses
  br label %bb.bn

bb.l:                                             ; preds = %bb.j
  %i.ab = call i64 @lseek(i32 noundef %i.p, i64 noundef 34, i32 noundef 0) #15
  %i.ac = icmp eq i64 %i.ab, -1
  br i1 %i.ac, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.127) #15
  %i.ad = call i32 @close(i32 noundef %i.p) #15   ; 0 uses
  br label %bb.bn

bb.n:                                             ; preds = %bb.l
  %i.ae = call fastcc i32 @vba_read_project_strings(i32 noundef %i.p, i32 noundef 0) ; 2 uses
  %i.af = icmp ne i32 %i.x, 0
  %i.ag = icmp ne i32 %i.ae, 0
  %or.cond = select i1 %i.af, i1 true, i1 %i.ag
  br i1 %or.cond, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = call i32 @close(i32 noundef %i.p) #15   ; 0 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.128) #15
  br label %bb.bn

bb.p:                                             ; preds = %bb.n
  %.not219.not.not.not.not.not.not.not.not = icmp sgt i32 %i.x, %i.ae ; 10 uses
  br i1 %.not219.not.not.not.not.not.not.not.not, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ai = call i64 @lseek(i32 noundef %i.p, i64 noundef %i.y, i32 noundef 0) #15
  %i.aj = icmp eq i64 %i.ai, -1
  br i1 %i.aj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.129) #15
  %i.ak = call i32 @close(i32 noundef %i.p) #15   ; 0 uses
  br label %bb.bn

bb.s:                                             ; preds = %bb.p, %bb.q
  %.str.131.sink = phi ptr [ @.str.130, %bb.q ], [ @.str.131, %bb.p ]
  %.0108 = phi i32 [ 1, %bb.q ], [ 0, %bb.p ]
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull %.str.131.sink) #15
  br label %bb.t

bb.t:                                             ; preds = %bb.v, %bb.s
  %i.al = call i64 @cli_readn(i32 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 2) #15
  %.not128 = icmp eq i64 %i.al, 2
  br i1 %.not128, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.am = call i32 @close(i32 noundef %i.p) #15   ; 0 uses
  br label %bb.bn

bb.v:                                             ; preds = %bb.t
  %i.an = load i16, ptr %i.b, align 2, !tbaa !50
  %.not129 = icmp eq i16 %i.an, -1
  br i1 %.not129, label %bb.w, label %bb.t

bb.w:                                             ; preds = %bb.v
  %i.ao = call fastcc i32 @seekandread(i32 noundef %i.p, i64 noundef -3, i32 noundef 1, ptr noundef %i.b, i64 noundef 2)
  %.not130 = icmp eq i32 %i.ao, 0
  br i1 %.not130, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ap = call i32 @close(i32 noundef %i.p) #15   ; 0 uses
  br label %bb.bn

bb.y:                                             ; preds = %bb.w
  %i.aq = load i16, ptr %i.b, align 2, !tbaa !50
  %.not131 = icmp eq i16 %i.aq, -1
  br i1 %.not131, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ar = call i64 @lseek(i32 noundef %i.p, i64 noundef 1, i32 noundef 1) #15
  %i.as = icmp eq i64 %i.ar, -1
  br i1 %i.as, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.132) #15
  %i.at = call i32 @close(i32 noundef %i.p) #15   ; 0 uses
  br label %bb.bn

bb.ab:                                            ; preds = %bb.z, %bb.y
  %i.au = call i64 @cli_readn(i32 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 2) #15
  %.not.i = icmp eq i64 %i.au, 2
  br i1 %.not.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.av = call i32 @close(i32 noundef %i.p) #15   ; 0 uses
  br label %bb.bn

bb.ad:                                            ; preds = %bb.ab
  %i.aw = load i16, ptr %i.b, align 2, !tbaa !50  ; 2 uses
  %rev.i.i = call i16 @llvm.bswap.i16(i16 %i.aw)
  %.0.i.i = select i1 %.not219.not.not.not.not.not.not.not.not, i16 %rev.i.i, i16 %i.aw ; 3 uses
  store i16 %.0.i.i, ptr %i.b, align 2, !tbaa !50
  %.not133 = icmp eq i16 %.0.i.i, -1
  br i1 %.not133, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ax = zext i16 %.0.i.i to i64
  %i.ay = call i64 @lseek(i32 noundef %i.p, i64 noundef %i.ax, i32 noundef 1) #15
  %i.az = icmp eq i64 %i.ay, -1
  br i1 %i.az, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.132) #15
  %i.ba = call i32 @close(i32 noundef %i.p) #15   ; 0 uses
  br label %bb.bn

bb.ag:                                            ; preds = %bb.ae, %bb.ad
  %i.bb = call i64 @cli_readn(i32 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 2) #15
  %.not.i146 = icmp eq i64 %i.bb, 2
  br i1 %.not.i146, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bc = call i32 @close(i32 noundef %i.p) #15   ; 0 uses
  br label %bb.bn

bb.ai:                                            ; preds = %bb.ag
  %i.bd = load i16, ptr %i.b, align 2, !tbaa !50  ; 2 uses
  %rev.i.i149 = call i16 @llvm.bswap.i16(i16 %i.bd)
  %.0.i.i150 = select i1 %.not219.not.not.not.not.not.not.not.not, i16 %rev.i.i149, i16 %i.bd ; 2 uses
  %i.be = icmp eq i16 %.0.i.i150, -1
  %spec.store.select = select i1 %i.be, i16 0, i16 %.0.i.i150 ; 2 uses
  store i16 %spec.store.select, ptr %i.b, align 2
  %i.bf = zext i16 %spec.store.select to i64
  %i.bg = add nuw nsw i64 %i.bf, 100
  %i.bh = call i64 @lseek(i32 noundef %i.p, i64 noundef %i.bg, i32 noundef 1) #15
  %i.bi = icmp eq i64 %i.bh, -1
  br i1 %i.bi, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.133) #15
  %i.bj = call i32 @close(i32 noundef %i.p) #15   ; 0 uses
  br label %bb.bn

bb.ak:                                            ; preds = %bb.ai
  %i.bk = call i64 @cli_readn(i32 noundef %i.p, ptr noundef nonnull %i.a, i64 noundef 2) #15
  %.not.i152 = icmp eq i64 %i.bk, 2
  br i1 %.not.i152, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bl = call i32 @close(i32 noundef %i.p) #15   ; 0 uses
  br label %bb.bn

bb.am:                                            ; preds = %bb.ak
  %i.bm = load i16, ptr %i.a, align 2, !tbaa !50  ; 2 uses
  %rev.i.i155 = call i16 @llvm.bswap.i16(i16 %i.bm)
  %.0.i.i156 = select i1 %.not219.not.not.not.not.not.not.not.not, i16 %rev.i.i155, i16 %i.bm ; 2 uses
  store i16 %.0.i.i156, ptr %i.a, align 2, !tbaa !50
  %i.bn = zext i16 %.0.i.i156 to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.134, i32 noundef %i.bn) #15
  %i.bo = load i16, ptr %i.a, align 2, !tbaa !50  ; 3 uses
  %i.bp = zext nneg i16 %i.bo to i32
  %i.bq = icmp eq i16 %i.bo, 0
  br i1 %i.bq, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.br = call i32 @close(i32 noundef %i.p) #15   ; 0 uses
  br label %bb.bn

bb.ao:                                            ; preds = %bb.am
  %i.bs = icmp ugt i16 %i.bo, 1000
  br i1 %i.bs, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.135) #15
  %i.bt = call i32 @close(i32 noundef %i.p) #15   ; 0 uses
  br label %bb.bn

bb.aq:                                            ; preds = %bb.ao
  %i.bu = call fastcc ptr @create_vba_project(i32 noundef %i.bp, ptr noundef nonnull %0, ptr noundef %1) ; 10 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.ar, label %.preheader

.preheader:                                       ; preds = %bb.aq
  %i.bw = load i16, ptr %i.a, align 2, !tbaa !50
  %.not241 = icmp eq i16 %i.bw, 0
  br i1 %.not241, label %.loopexit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  br label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.bz = call i32 @close(i32 noundef %i.p) #15   ; 0 uses
  br label %bb.bn

bb.as:                                            ; preds = %.lr.ph, %.thread213
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.thread213 ] ; 6 uses
  %.0110238 = phi i16 [ 0, %.lr.ph ], [ %.2, %.thread213 ] ; 2 uses
  %.0112237 = phi ptr [ null, %.lr.ph ], [ %.2114, %.thread213 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #15
  %4 = load ptr, ptr %i.bx, align 8, !tbaa !58
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  store i32 0, ptr %i.ca, align 4, !tbaa !14
  %i.cb = call i64 @cli_readn(i32 noundef %i.p, ptr noundef nonnull %i.h, i64 noundef 2) #15
  %.not.i158 = icmp eq i64 %i.cb, 2
  br i1 %.not.i158, label %bb.at, label %.loopexit.sink.split

bb.at:                                            ; preds = %bb.as
  %i.cc = load i16, ptr %i.h, align 2, !tbaa !50  ; 2 uses
  %rev.i.i161 = call i16 @llvm.bswap.i16(i16 %i.cc)
  %.0.i.i162 = select i1 %.not219.not.not.not.not.not.not.not.not, i16 %rev.i.i161, i16 %i.cc ; 5 uses
  store i16 %.0.i.i162, ptr %i.h, align 2, !tbaa !50
  %i.cd = icmp eq i16 %.0.i.i162, 0
  br i1 %i.cd, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.136) #15
  br label %.loopexit.sink.split

bb.av:                                            ; preds = %bb.at
  %i.ce = icmp ugt i16 %.0.i.i162, %.0110238
  br i1 %i.ce, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.cf = zext i16 %.0.i.i162 to i64
  %i.cg = call ptr @cli_max_realloc(ptr noundef %.0112237, i64 noundef %i.cf) #15 ; 2 uses
  %.not137 = icmp eq ptr %i.cg, null
  %i.ch = load i16, ptr %i.h, align 2             ; 2 uses
  br i1 %.not137, label %.loopexit.sink.split, label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.ci = phi i16 [ %i.ch, %bb.aw ], [ %.0.i.i162, %bb.av ]
  %.2114 = phi ptr [ %i.cg, %bb.aw ], [ %.0112237, %bb.av ] ; 13 uses
  %.2 = phi i16 [ %i.ch, %bb.aw ], [ %.0110238, %bb.av ]
  %i.cj = zext i16 %i.ci to i64
  %i.ck = call i64 @cli_readn(i32 noundef %i.p, ptr noundef %.2114, i64 noundef %i.cj) #15
  %i.cl = load i16, ptr %i.h, align 2, !tbaa !50  ; 2 uses
  %i.cm = zext i16 %i.cl to i64
  %.not138 = icmp eq i64 %i.ck, %i.cm
  br i1 %.not138, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.137) #15
  br label %.loopexit.sink.split

bb.az:                                            ; preds = %bb.ax
  %i.cn = zext i16 %i.cl to i32
  %i.co = call fastcc ptr @get_unicode_name(ptr noundef %.2114, i32 noundef %i.cn, i32 noundef %.0108) ; 9 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %.loopexit.sink.split, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.cq = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.co) #16
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = call i32 @uniq_get(ptr noundef %1, ptr noundef nonnull %i.co, i32 noundef %i.cr, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #15
  %.not139 = icmp eq i32 %i.cs, 0
  br i1 %.not139, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.138, ptr noundef nonnull %i.co) #15
  call void @free(ptr noundef nonnull %i.co) #15
  br label %.loopexit.sink.split

bb.bc:                                            ; preds = %bb.ba
  %i.ct = load i32, ptr %i.g, align 4, !tbaa !14  ; 2 uses
  %i.cu = load ptr, ptr %i.bx, align 8, !tbaa !58
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv
  store i32 %i.ct, ptr %i.cv, align 4, !tbaa !14
  %i.cw = icmp eq i32 %i.ct, 0
  %i.cx = load ptr, ptr %i.f, align 8, !tbaa !10  ; 2 uses
  br i1 %i.cw, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.139, ptr noundef nonnull %i.co, ptr noundef %i.cx) #15
  call void @free(ptr noundef nonnull %i.co) #15
  br label %.loopexit.sink.split

bb.be:                                            ; preds = %bb.bc
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.140, ptr noundef nonnull %i.co, ptr noundef %i.cx) #15
  call void @free(ptr noundef nonnull %i.co) #15
  %i.cy = load ptr, ptr %i.f, align 8, !tbaa !10
  %i.cz = load ptr, ptr %i.bu, align 8, !tbaa !59
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv
  store ptr %i.cy, ptr %i.da, align 8, !tbaa !10
  %i.db = call i64 @cli_readn(i32 noundef %i.p, ptr noundef nonnull %i.h, i64 noundef 2) #15
  %.not.i164 = icmp eq i64 %i.db, 2
  br i1 %.not.i164, label %bb.bf, label %.loopexit.sink.split

bb.bf:                                            ; preds = %bb.be
  %i.dc = load i16, ptr %i.h, align 2, !tbaa !50  ; 2 uses
  %rev.i.i167 = call i16 @llvm.bswap.i16(i16 %i.dc)
  %.0.i.i168 = select i1 %.not219.not.not.not.not.not.not.not.not, i16 %rev.i.i167, i16 %i.dc ; 2 uses
  store i16 %.0.i.i168, ptr %i.h, align 2, !tbaa !50
  %i.dd = zext i16 %.0.i.i168 to i64
  %i.de = call i64 @lseek(i32 noundef %i.p, i64 noundef %i.dd, i32 noundef 1) #15 ; 0 uses
  %i.df = call i64 @cli_readn(i32 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 2) #15
  %.not.i170 = icmp eq i64 %i.df, 2
  br i1 %.not.i170, label %bb.bg, label %.loopexit.sink.split

bb.bg:                                            ; preds = %bb.bf
  %i.dg = load i16, ptr %i.b, align 2, !tbaa !50  ; 2 uses
  %rev.i.i173 = call i16 @llvm.bswap.i16(i16 %i.dg)
  %.0.i.i174 = select i1 %.not219.not.not.not.not.not.not.not.not, i16 %rev.i.i173, i16 %i.dg ; 3 uses
  store i16 %.0.i.i174, ptr %i.b, align 2, !tbaa !50
  %i.dh = icmp eq i16 %.0.i.i174, -1
  br i1 %i.dh, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.di = call i64 @lseek(i32 noundef %i.p, i64 noundef 2, i32 noundef 1) #15 ; 0 uses
  %i.dj = call i64 @cli_readn(i32 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 2) #15
  %.not.i176 = icmp eq i64 %i.dj, 2
  br i1 %.not.i176, label %bb.bi, label %.loopexit.sink.split

bb.bi:                                            ; preds = %bb.bh
  %i.dk = load i16, ptr %i.b, align 2, !tbaa !50  ; 2 uses
  %rev.i.i179 = call i16 @llvm.bswap.i16(i16 %i.dk)
  %.0.i.i180 = select i1 %.not219.not.not.not.not.not.not.not.not, i16 %rev.i.i179, i16 %i.dk ; 2 uses
  store i16 %.0.i.i180, ptr %i.b, align 2, !tbaa !50
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bg, %bb.bi
  %.0.i.i174.sink = phi i16 [ %.0.i.i180, %bb.bi ], [ %.0.i.i174, %bb.bg ]
  %.sink295 = phi i64 [ 8, %bb.bi ], [ 10, %bb.bg ]
  %i.dl = zext i16 %.0.i.i174.sink to i64
  %i.dm = add nuw nsw i64 %.sink295, %i.dl
  %i.dn = call i64 @lseek(i32 noundef %i.p, i64 noundef %i.dm, i32 noundef 1) #15 ; 0 uses
  %i.do = call i64 @cli_readn(i32 noundef %i.p, ptr noundef nonnull %i.c, i64 noundef 2) #15
  %.not.i182 = icmp eq i64 %i.do, 2
  br i1 %.not.i182, label %bb.bk, label %.loopexit.sink.split

bb.bk:                                            ; preds = %bb.bj
  %i.dp = load i16, ptr %i.c, align 2, !tbaa !50  ; 2 uses
  %rev.i.i185 = call i16 @llvm.bswap.i16(i16 %i.dp)
  %.0.i.i186 = select i1 %.not219.not.not.not.not.not.not.not.not, i16 %rev.i.i185, i16 %i.dp ; 2 uses
  store i16 %.0.i.i186, ptr %i.c, align 2, !tbaa !50
  %i.dq = zext i16 %.0.i.i186 to i64
  %i.dr = shl nuw nsw i64 %i.dq, 3
  %i.ds = or disjoint i64 %i.dr, 5
  %i.dt = call i64 @lseek(i32 noundef %i.p, i64 noundef %i.ds, i32 noundef 1) #15 ; 0 uses
  %i.du = call i64 @cli_readn(i32 noundef range(i32 0, -1) %i.p, ptr noundef nonnull %i.d, i64 noundef 4) #15
  %.not.i188 = icmp eq i64 %i.du, 4
  br i1 %.not.i188, label %.thread213, label %.loopexit.sink.split

.thread213:                                       ; preds = %bb.bk
  %i.dv = load i32, ptr %i.d, align 4, !tbaa !14  ; 2 uses
  %i.dw = call i32 @llvm.bswap.i32(i32 %i.dv)
  %.0.i.i191 = select i1 %.not219.not.not.not.not.not.not.not.not, i32 %i.dw, i32 %i.dv ; 2 uses
  store i32 %.0.i.i191, ptr %i.d, align 4, !tbaa !14
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.141, i32 noundef %.0.i.i191) #15
  %i.dx = load i32, ptr %i.d, align 4, !tbaa !14
  %i.dy = load ptr, ptr %i.by, align 8, !tbaa !60
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv
  store i32 %i.dx, ptr %i.dz, align 4, !tbaa !14
  %i.ea = call i64 @lseek(i32 noundef %i.p, i64 noundef 2, i32 noundef 1) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.eb = load i16, ptr %i.a, align 2, !tbaa !50
  %i.ec = zext i16 %i.eb to i64
  %i.ed = icmp samesign ult i64 %indvars.iv.next, %i.ec
  br i1 %i.ed, label %bb.as, label %.loopexit

.loopexit.sink.split:                             ; preds = %bb.aw, %bb.bk, %bb.bj, %bb.bh, %bb.bf, %bb.be, %bb.as, %bb.az, %bb.bd, %bb.bb, %bb.ay, %bb.au
  %.4.ph = phi ptr [ %.2114, %bb.bb ], [ %.0112237, %bb.au ], [ %.2114, %bb.ay ], [ %.2114, %bb.bd ], [ %.0112237, %bb.aw ], [ %.2114, %bb.az ], [ %.0112237, %bb.as ], [ %.2114, %bb.be ], [ %.2114, %bb.bf ], [ %.2114, %bb.bh ], [ %.2114, %bb.bk ], [ %.2114, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #15
  br label %.loopexit

.loopexit:                                        ; preds = %.thread213, %.loopexit.sink.split
  %.0109229.in = phi i64 [ %indvars.iv, %.loopexit.sink.split ], [ %indvars.iv.next, %.thread213 ]
  %.4 = phi ptr [ %.4.ph, %.loopexit.sink.split ], [ %.2114, %.thread213 ] ; 2 uses
  %.0109229 = trunc i64 %.0109229.in to i32       ; 2 uses
  %.not145 = icmp eq ptr %.4, null
  br i1 %.not145, label %.loopexit.thread, label %bb.bl

bb.bl:                                            ; preds = %.loopexit
  call void @free(ptr noundef nonnull %.4) #15
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.preheader, %bb.bl, %.loopexit
  %.0109229270 = phi i32 [ %.0109229, %.loopexit ], [ %.0109229, %bb.bl ], [ 0, %.preheader ]
  %i.ee = call i32 @close(i32 noundef %i.p) #15   ; 0 uses
  %i.ef = load i16, ptr %i.a, align 2, !tbaa !50
  %i.eg = zext i16 %i.ef to i32
  %i.eh = icmp samesign ult i32 %.0109229270, %i.eg
  br i1 %i.eh, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %.loopexit.thread
  %i.ei = load ptr, ptr %i.bu, align 8, !tbaa !59
  call void @free(ptr noundef %i.ei) #15
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !58
  call void @free(ptr noundef %i.ek) #15
  %i.el = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !61
  call void @free(ptr noundef %i.em) #15
  %i.en = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !60
  call void @free(ptr noundef %i.eo) #15
  call void @free(ptr noundef nonnull %i.bu) #15
  br label %bb.bn

bb.bn:                                            ; preds = %.loopexit.thread, %bb.e, %bb.d, %bb.a, %bb.bm, %bb.ar, %bb.ap, %bb.an, %bb.al, %bb.aj, %bb.ah, %bb.af, %bb.ac, %bb.aa, %bb.x, %bb.u, %bb.r, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.c
  %.0116 = phi ptr [ null, %bb.o ], [ null, %bb.c ], [ null, %bb.a ], [ null, %bb.d ], [ null, %bb.g ], [ null, %bb.i ], [ null, %bb.k ], [ null, %bb.m ], [ null, %bb.r ], [ null, %bb.u ], [ null, %bb.aa ], [ null, %bb.af ], [ null, %bb.aj ], [ null, %bb.an ], [ null, %bb.ap ], [ null, %bb.ar ], [ null, %bb.bm ], [ null, %bb.e ], [ null, %bb.al ], [ null, %bb.ah ], [ null, %bb.ac ], [ null, %bb.x ], [ %i.bu, %.loopexit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret ptr %.0116
}

declare i64 @cli_readn(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @vba_read_project_strings(i32 noundef range(i32 0, -1) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 7 uses
  %i.b = alloca i16, align 2                      ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i16 0, ptr %i.b, align 2, !tbaa !50
  %.not.i.i = icmp eq i32 %1, 0                   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.044 = phi ptr [ null, %bb.a ], [ %.246, %.backedge ] ; 6 uses
  %.040 = phi i16 [ 0, %bb.a ], [ %.242, %.backedge ] ; 2 uses
  %.038 = phi i32 [ 0, %bb.a ], [ %i.ao, %.backedge ] ; 5 uses
  %.not = phi i1 [ false, %bb.a ], [ %or.cond, %.backedge ]
  br i1 %.not, label %thread-pre-split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = call i64 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.b, i64 noundef 2) #15
  %.not.i = icmp eq i64 %i.c, 2
  br i1 %.not.i, label %read_uint16.exit, label %read_uint16.exit.thread

read_uint16.exit:                                 ; preds = %bb.c
  %i.d = load i16, ptr %i.b, align 2, !tbaa !50   ; 2 uses
  %rev.i.i = call i16 @llvm.bswap.i16(i16 %i.d)
  %.0.i.i = select i1 %.not.i.i, i16 %i.d, i16 %rev.i.i ; 2 uses
  store i16 %.0.i.i, ptr %i.b, align 2, !tbaa !50
  br label %bb.d

thread-pre-split:                                 ; preds = %bb.b
  %.pr = load i16, ptr %i.b, align 2, !tbaa !50
  br label %bb.d

bb.d:                                             ; preds = %thread-pre-split, %read_uint16.exit
  %i.e = phi i16 [ %.pr, %thread-pre-split ], [ %.0.i.i, %read_uint16.exit ] ; 3 uses
  %i.f = icmp ult i16 %i.e, 6
  br i1 %i.f, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.g = call i64 @lseek(i32 noundef %0, i64 noundef -2, i32 noundef 1) #15
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %bb.f, label %read_uint16.exit.thread

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.156) #15
  br label %read_uint16.exit.thread

bb.g:                                             ; preds = %bb.d
  %i.i = icmp ugt i16 %i.e, %.040
  br i1 %i.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.j = zext i16 %i.e to i64
  %i.k = call ptr @cli_max_realloc(ptr noundef %.044, i64 noundef %i.j) #15 ; 2 uses
  %.not54 = icmp eq ptr %i.k, null
  br i1 %.not54, label %read_uint16.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = load i16, ptr %i.b, align 2, !tbaa !50
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %.246 = phi ptr [ %i.k, %bb.i ], [ %.044, %bb.g ] ; 9 uses
  %.242 = phi i16 [ %i.l, %bb.i ], [ %.040, %bb.g ]
  %i.m = call i64 @lseek(i32 noundef %0, i64 noundef 0, i32 noundef 1) #15 ; 2 uses
  %i.n = icmp eq i64 %i.m, -1
  br i1 %i.n, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.156) #15
  br label %read_uint16.exit.thread

bb.l:                                             ; preds = %bb.j
  %i.o = load i16, ptr %i.b, align 2, !tbaa !50
  %i.p = zext i16 %i.o to i64
  %i.q = call i64 @cli_readn(i32 noundef %0, ptr noundef %.246, i64 noundef %i.p) #15
  %i.r = load i16, ptr %i.b, align 2, !tbaa !50   ; 2 uses
  %i.s = zext i16 %i.r to i64
  %.not55 = icmp eq i64 %i.q, %i.s
  br i1 %.not55, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.157) #15
  %i.t = call i64 @lseek(i32 noundef %0, i64 noundef %i.m, i32 noundef 0) #15
  %i.u = icmp eq i64 %i.t, -1
  br i1 %i.u, label %bb.n, label %read_uint16.exit.thread

bb.n:                                             ; preds = %bb.m
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.158) #15
  br label %read_uint16.exit.thread

bb.o:                                             ; preds = %bb.l
  %i.v = zext i16 %i.r to i32
  %i.w = call fastcc ptr @get_unicode_name(ptr noundef %.246, i32 noundef %i.v, i32 noundef %1) ; 6 uses
  %i.x = load i16, ptr %i.b, align 2, !tbaa !50
  %i.y = zext i16 %i.x to i32
  %.not56 = icmp eq ptr %i.w, null                ; 2 uses
  %i.z = select i1 %.not56, ptr @.str.160, ptr %i.w
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.159, i32 noundef %i.y, ptr noundef nonnull %i.z) #15
  br i1 %.not56, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aa = load i16, ptr %i.w, align 1
  %i.ab = icmp ne i16 23594, %i.aa
  %i.ac = zext i1 %i.ab to i32
  %.not57 = icmp eq i32 %i.ac, 0
  br i1 %.not57, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !13
  %i.af = sext i8 %i.ae to i32
  %memchr = call ptr @memchr(ptr nonnull dereferenceable(1) @.str.162, i32 %i.af, i64 5)
  %i.ag = icmp eq ptr %memchr, null
  br i1 %i.ag, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %i.ah = load i16, ptr %i.b, align 2, !tbaa !50
  %i.ai = zext i16 %i.ah to i64
  %i.aj = sub nuw nsw i64 -2, %i.ai
  %i.ak = call i64 @lseek(i32 noundef %0, i64 noundef %i.aj, i32 noundef 1) #15
  %i.al = icmp eq i64 %i.ak, -1
  br i1 %i.al, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.163) #15
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.5 = phi i32 [ 0, %bb.s ], [ %.038, %bb.r ]
  call void @free(ptr noundef %i.w) #15
  br label %read_uint16.exit.thread

bb.u:                                             ; preds = %bb.q
  call void @free(ptr noundef nonnull %i.w) #15
  %i.am = call i64 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.b, i64 noundef 2) #15
  %.not.i59 = icmp eq i64 %i.am, 2
  br i1 %.not.i59, label %bb.v, label %read_uint16.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.an = load i16, ptr %i.b, align 2, !tbaa !50  ; 2 uses
  %rev.i.i62 = call i16 @llvm.bswap.i16(i16 %i.an)
  %.0.i.i63 = select i1 %.not.i.i, i16 %i.an, i16 %rev.i.i62 ; 2 uses
  store i16 %.0.i.i63, ptr %i.b, align 2, !tbaa !50
  %i.ao = add nuw nsw i32 %.038, 1
  %i.ap = add i16 %.0.i.i63, -1
  %or.cond = icmp ult i16 %i.ap, -2               ; 2 uses
  br i1 %or.cond, label %.backedge, label %bb.w

.backedge:                                        ; preds = %bb.v, %vba56_test_middle.exit
  br label %bb.b

bb.w:                                             ; preds = %bb.v
  %i.aq = call i64 @lseek(i32 noundef %0, i64 noundef 10, i32 noundef 1) #15 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, -1
  br i1 %i.ar, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.164) #15
  br label %read_uint16.exit.thread

bb.y:                                             ; preds = %bb.w
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.165, i64 noundef %i.aq) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.as = call i64 @cli_readn(i32 noundef range(i32 0, -1) %0, ptr noundef nonnull %i.a, i64 noundef 20) #15
  %.not.i65 = icmp eq i64 %i.as, 20
  br i1 %.not.i65, label %bb.z, label %vba56_test_middle.exit

bb.z:                                             ; preds = %bb.y
  %i.at = load i128, ptr %i.a, align 16
  %i.au = xor i128 %i.at, 103079424519808894343311399813643043072
  %i.av = getelementptr i8, ptr %i.a, i64 16
  %i.aw = load i32, ptr %i.av, align 16
  %i.ax = zext i32 %i.aw to i128
  %i.ay = xor i128 %i.ax, 46091
  %i.az = or i128 %i.au, %i.ay
  %i.ba = icmp ne i128 %i.az, 0
  %i.bb = zext i1 %i.ba to i32
  %.not2.i = icmp eq i32 %i.bb, 0
  br i1 %.not2.i, label %.sink.split.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bc = load i128, ptr %i.a, align 16
  %i.bd = xor i128 %i.bc, 103079424519808847309927644500192198656
  %i.be = getelementptr i8, ptr %i.a, i64 16
  %i.bf = load i32, ptr %i.be, align 16
  %i.bg = zext i32 %i.bf to i128
  %i.bh = xor i128 %i.bg, 46091
  %i.bi = or i128 %i.bd, %i.bh
  %i.bj = icmp ne i128 %i.bi, 0
  %i.bk = zext i1 %i.bj to i32
  %.not4.i = icmp eq i32 %i.bk, 0
  br i1 %.not4.i, label %.sink.split.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.166) #15
  %i.bl = call i64 @lseek(i32 noundef range(i32 0, -1) %0, i64 noundef -20, i32 noundef 1) #15
  %i.bm = icmp eq i64 %i.bl, -1
  br i1 %i.bm, label %.sink.split.i, label %vba56_test_middle.exit

.sink.split.i:                                    ; preds = %bb.ab, %bb.aa, %bb.z
  %.str.168.sink.i = phi ptr [ @.str.167, %bb.ab ], [ @.str.168, %bb.aa ], [ @.str.168, %bb.z ]
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull %.str.168.sink.i) #15
  br label %vba56_test_middle.exit

vba56_test_middle.exit:                           ; preds = %bb.y, %bb.ab, %.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %.backedge

read_uint16.exit.thread:                          ; preds = %bb.u, %bb.h, %bb.c, %bb.k, %bb.e, %bb.t, %bb.x, %bb.m, %bb.f, %bb.n
  %.347.ph = phi ptr [ %.246, %bb.n ], [ %.044, %bb.f ], [ %.044, %bb.e ], [ %.246, %bb.m ], [ %.246, %bb.x ], [ %.246, %bb.k ], [ %.246, %bb.t ], [ %.246, %bb.u ], [ %.044, %bb.h ], [ %.044, %bb.c ]
  %.6.ph = phi i32 [ 0, %bb.n ], [ 0, %bb.f ], [ %.038, %bb.e ], [ %.038, %bb.m ], [ 0, %bb.x ], [ 0, %bb.k ], [ %.5, %bb.t ], [ %.038, %bb.u ], [ 0, %bb.h ], [ 0, %bb.c ]
  call void @free(ptr noundef %.347.ph) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  ret i32 %.6.ph
}

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @seekandread(i32 noundef %0, i64 noundef %1, i32 noundef range(i32 0, 2) %2, ptr noundef nonnull %3, i64 noundef range(i64 1, 4294967296) %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @lseek(i32 noundef %0, i64 noundef %1, i32 noundef %2) #15
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.204) #15
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i64 @cli_readn(i32 noundef %0, ptr noundef nonnull %3, i64 noundef %4) #15
  %i.d = icmp eq i64 %i.c, %4
  %i.e = zext i1 %i.d to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.e, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @create_vba_project(i32 noundef range(i32 1, 65536) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 1, i64 noundef 64) #18 ; 9 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.205) #15
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %0 to i64                  ; 2 uses
  %i.d = shl nuw nsw i64 %i.c, 3
  %i.e = tail call ptr @cli_max_malloc(i64 noundef %i.d) #15 ; 2 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !59
  %i.f = shl nuw nsw i64 %i.c, 2                  ; 2 uses
  %i.g = tail call ptr @cli_max_malloc(i64 noundef %i.f) #15 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !58
  %i.i = tail call ptr @cli_safer_strdup(ptr noundef %1) #15 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.i, ptr %i.j, align 8, !tbaa !61
  %i.k = tail call ptr @cli_max_malloc(i64 noundef %i.f) #15 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !60
  %i.m = icmp eq ptr %i.g, null
  %i.n = icmp eq ptr %i.e, null
  %or.cond20 = select i1 %i.m, i1 true, i1 %i.n
  br i1 %or.cond20, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = icmp eq ptr %i.i, null
  %i.p = icmp eq ptr %i.k, null
  %or.cond = select i1 %i.o, i1 true, i1 %i.p
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @cli_free_vba_project(ptr noundef nonnull %i.a)
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.206) #15
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 %0, ptr %i.q, align 8, !tbaa !70
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %2, ptr %i.r, align 8, !tbaa !71
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.e ], [ %i.a, %bb.f ]
  ret ptr %.0
}

declare ptr @cli_max_realloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @get_unicode_name(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef range(i32 0, 65536) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !13
  %i.c = icmp eq i8 %i.b, 0
  %i.d = icmp eq i32 %1, 0
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = mul nuw nsw i32 %1, 7
  %i.f = add nuw nsw i32 %i.e, 1
  %i.g = zext nneg i32 %i.f to i64
  %i.h = tail call ptr @cli_max_malloc(i64 noundef %i.g) #15 ; 6 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.169) #15
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.f, label %.lr.ph.preheader

bb.f:                                             ; preds = %bb.e
  %i.j = and i32 %1, 1
  %.not69 = icmp eq i32 %i.j, 0
  br i1 %.not69, label %.lr.ph.preheader, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.170, i32 noundef %1) #15
  %i.k = add nsw i32 %1, -1                       ; 2 uses
  %.not92 = icmp eq i32 %i.k, 0
  br i1 %.not92, label %.thread._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f, %bb.e, %bb.g
  %.05991 = phi i32 [ %i.k, %bb.g ], [ %1, %bb.e ], [ %1, %bb.f ]
  %i.l = phi i64 [ 2, %bb.g ], [ 1, %bb.e ], [ 2, %bb.f ]
  %i.m = zext nneg i32 %.05991 to i64             ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.m ] ; 3 uses
  %.06181 = phi ptr [ %i.h, %.lr.ph.preheader ], [ %.3, %bb.m ] ; 13 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !13    ; 5 uses
  %.not70 = icmp sgt i8 %i.o, -1
  br i1 %.not70, label %bb.h, label %.thread

bb.h:                                             ; preds = %.lr.ph
  %i.p = tail call ptr @__ctype_b_loc() #17
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !73
  %i.r = zext nneg i8 %i.o to i64                 ; 2 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2, !tbaa !50
  %i.u = and i16 %i.t, 16384
  %.not71 = icmp eq i16 %i.u, 0
  br i1 %.not71, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = tail call ptr @__ctype_tolower_loc() #17
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !54
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.r
  %i.y = load i32, ptr %i.x, align 4, !tbaa !14
  %i.z = trunc i32 %i.y to i8
  store i8 %i.z, ptr %.06181, align 1, !tbaa !13
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.aa = icmp samesign ult i8 %i.o, 10
  br i1 %i.aa, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %.06181, i64 1
  store i8 95, ptr %.06181, align 1, !tbaa !13
  %i.ac = load i8, ptr %i.n, align 1, !tbaa !13
  %i.ad = add i8 %i.ac, 48
  %i.ae = getelementptr inbounds nuw i8, ptr %.06181, i64 2
  store i8 %i.ad, ptr %i.ab, align 1, !tbaa !13
  br label %bb.l

.thread:                                          ; preds = %.lr.ph, %bb.j
  %i.af = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %.not72 = icmp samesign ult i64 %i.af, %i.m
  br i1 %.not72, label %.thread76, label %.thread._crit_edge

.thread76:                                        ; preds = %.thread
  %i.ag = icmp slt i8 %i.o, 0
  %i.ah = zext nneg i8 %i.o to i16
  %i.ai = shl nuw nsw i16 %i.ah, 8
  %i.aj = select i1 %i.ag, i16 0, i16 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.af
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !13  ; 3 uses
  %i.am = sext i8 %i.al to i16
  %i.an = or i16 %i.aj, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %.06181, i64 1
  store i8 95, ptr %.06181, align 1, !tbaa !13
  %i.ap = and i8 %i.al, 15
  %i.aq = add nuw nsw i8 %i.ap, 97
  %i.ar = getelementptr inbounds nuw i8, ptr %.06181, i64 2
  store i8 %i.aq, ptr %i.ao, align 1, !tbaa !13
  %i.as = lshr i8 %i.al, 4
  %i.at = add nuw nsw i8 %i.as, 97
  %i.au = getelementptr inbounds nuw i8, ptr %.06181, i64 3
  store i8 %i.at, ptr %i.ar, align 1, !tbaa !13
  %i.av = lshr i16 %i.an, 8
  %i.aw = trunc nuw i16 %i.av to i8
  %i.ax = and i8 %i.aw, 15
  %i.ay = add nuw nsw i8 %i.ax, 97
  %i.az = getelementptr inbounds nuw i8, ptr %.06181, i64 4
  store i8 %i.ay, ptr %i.au, align 1, !tbaa !13
  %i.ba = getelementptr inbounds nuw i8, ptr %.06181, i64 5
  store i8 97, ptr %i.az, align 1, !tbaa !13
  %i.bb = getelementptr inbounds nuw i8, ptr %.06181, i64 6
  store i8 97, ptr %i.ba, align 1, !tbaa !13
  br label %bb.l

bb.l:                                             ; preds = %.thread76, %bb.k
  %.2 = phi ptr [ %i.ae, %bb.k ], [ %i.bb, %.thread76 ] ; 2 uses
  store i8 95, ptr %.2, align 1, !tbaa !13
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.l
  %.2.pn = phi ptr [ %.2, %bb.l ], [ %.06181, %bb.i ]
  %.3 = getelementptr inbounds nuw i8, ptr %.2.pn, i64 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.l ; 2 uses
  %i.bc = icmp samesign ult i64 %indvars.iv.next, %i.m
  br i1 %i.bc, label %.lr.ph, label %.thread._crit_edge

.thread._crit_edge:                               ; preds = %bb.m, %.thread, %bb.g
  %.061.lcssa = phi ptr [ %i.h, %bb.g ], [ %.06181, %.thread ], [ %.3, %bb.m ] ; 2 uses
  store i8 0, ptr %.061.lcssa, align 1, !tbaa !13
  %i.bd = ptrtoint ptr %.061.lcssa to i64
  %i.be = ptrtoint ptr %i.h to i64
  %reass.sub = sub i64 %i.bd, %i.be
  %i.bf = add i64 %reass.sub, 1
  %i.bg = tail call ptr @cli_max_realloc(ptr noundef nonnull %i.h, i64 noundef %i.bf) #15 ; 2 uses
  %.not73 = icmp eq ptr %i.bg, null
  %i.bh = select i1 %.not73, ptr %i.h, ptr %i.bg
  br label %bb.n

end_hunk_0
begin_hunk_1_@cli_ppt_vba_read:bb.a

ppt_read_atom_header.exit.thread.i:               ; preds = %bb.z, %bb.f
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.175) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %ppt_stream_iter.exit

bb.g:                                             ; preds = %bb.z, %.lr.ph.i
  %i.p = load i16, ptr %3, align 4, !tbaa !79
  %i.q = zext i16 %i.p to i32                     ; 2 uses
  %i.r = and i32 %i.q, 15
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.176, i32 noundef %i.r) #15
  %i.s = lshr i32 %i.q, 4
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.177, i32 noundef %i.s) #15
  %i.t = load i16, ptr %i.k, align 2, !tbaa !80   ; 2 uses
  %i.u = zext i16 %i.t to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.178, i32 noundef %i.u) #15
  %i.v = load i32, ptr %i.l, align 4, !tbaa !81   ; 4 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.179, i32 noundef %i.v) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %ppt_stream_iter.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = icmp eq i16 %i.t, 4113
  br i1 %i.x, label %bb.i, label %bb.y

bb.i:                                             ; preds = %bb.h
  %i.y = call i64 @lseek(i32 noundef %0, i64 noundef 4, i32 noundef 1) #15
  %i.z = icmp eq i64 %i.y, -1
  br i1 %i.z, label %ppt_stream_iter.exit.thread.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = add i32 %i.v, -4                        ; 3 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.172, i32 noundef %i.aa) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.ab = call i64 @lseek(i32 noundef %0, i64 noundef 0, i32 noundef 1) #15
  %i.ac = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 4096, ptr noundef nonnull @.str.180, ptr noundef nonnull %i.g, i64 noundef %i.ab) #15 ; 0 uses
  %i.ad = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.c, i32 noundef 705, i32 noundef 384) #15 ; 8 uses
  %i.ae = icmp eq i32 %i.ad, -1
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.181, ptr noundef nonnull %i.c) #15
  br label %ppt_unlzw.exit.thread.i

bb.l:                                             ; preds = %bb.j
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.m, i8 0, i64 104, i1 false)
  store ptr %i.a, ptr %2, align 8, !tbaa !84
  store ptr %i.b, ptr %i.n, align 8, !tbaa !85
  store i32 8192, ptr %i.o, align 8, !tbaa !86
  %i.af = call i32 @llvm.umin.i32(i32 %i.aa, i32 8192) ; 3 uses
  store i32 %i.af, ptr %i.m, align 8, !tbaa !87
  %i.ag = zext nneg i32 %i.af to i64              ; 2 uses
  %i.ah = call i64 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.ag) #15
  %.not.i20.i = icmp eq i64 %i.ah, %i.ag
  br i1 %.not.i20.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = call i32 @close(i32 noundef %i.ad) #15  ; 0 uses
  %i.aj = call i32 @cli_unlink(ptr noundef nonnull %i.c) #15 ; 0 uses
  br label %ppt_unlzw.exit.thread.i

bb.n:                                             ; preds = %bb.l
  %i.ak = call i32 @inflateInit_(ptr noundef nonnull %2, ptr noundef nonnull @.str.182, i32 noundef 112) #15
  %.not21.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not21.i.i, label %.preheader.preheader.i.i, label %bb.o

.preheader.preheader.i.i:                         ; preds = %bb.n
  %i.al = sub nuw i32 %i.aa, %i.af
  br label %.preheader.i.i

bb.o:                                             ; preds = %bb.n
  %i.am = call i32 @close(i32 noundef %i.ad) #15  ; 0 uses
  %i.an = call i32 @cli_unlink(ptr noundef nonnull %i.c) #15 ; 0 uses
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.183) #15
  br label %ppt_unlzw.exit.thread.i

.preheader.i.i:                                   ; preds = %bb.w, %.preheader.preheader.i.i
  %.0.i21.i = phi i32 [ %.1.i.i, %bb.w ], [ %i.al, %.preheader.preheader.i.i ] ; 3 uses
  %i.ao = load i32, ptr %i.o, align 8, !tbaa !86
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.p, label %bb.s

bb.p:                                             ; preds = %.preheader.i.i
  %i.aq = call i64 @cli_writen(i32 noundef %i.ad, ptr noundef nonnull %i.b, i64 noundef 8192) #15
  %.not22.i.i = icmp eq i64 %i.aq, 8192
  br i1 %.not22.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ar = call i32 @close(i32 noundef %i.ad) #15  ; 0 uses
  %i.as = call i32 @inflateEnd(ptr noundef nonnull %2) #15 ; 0 uses
  br label %ppt_unlzw.exit.thread.i

bb.r:                                             ; preds = %bb.p
  store ptr %i.b, ptr %i.n, align 8, !tbaa !85
  store i32 8192, ptr %i.o, align 8, !tbaa !86
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.preheader.i.i
  %i.at = load i32, ptr %i.m, align 8, !tbaa !87
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  store ptr %i.a, ptr %2, align 8, !tbaa !84
  %i.av = call i32 @llvm.umin.i32(i32 %.0.i21.i, i32 8192) ; 2 uses
  store i32 %i.av, ptr %i.m, align 8, !tbaa !87
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = call i64 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.aw) #15
  %i.ay = load i32, ptr %i.m, align 8, !tbaa !87  ; 2 uses
  %i.az = zext i32 %i.ay to i64
  %.not23.i.i = icmp eq i64 %i.ax, %i.az
  br i1 %.not23.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ba = call i32 @close(i32 noundef %i.ad) #15  ; 0 uses
  %i.bb = call i32 @inflateEnd(ptr noundef nonnull %2) #15 ; 0 uses
  br label %ppt_unlzw.exit.thread.i

bb.v:                                             ; preds = %bb.t
  %i.bc = sub i32 %.0.i21.i, %i.ay
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %.1.i.i = phi i32 [ %i.bc, %bb.v ], [ %.0.i21.i, %bb.s ]
  %i.bd = call i32 @inflate(ptr noundef nonnull %2, i32 noundef 0) #15
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %.preheader.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bf = load i32, ptr %i.o, align 8, !tbaa !86
  %i.bg = sub i32 8192, %i.bf
  %i.bh = zext i32 %i.bg to i64
  %i.bi = call i64 @cli_writen(i32 noundef %i.ad, ptr noundef nonnull %i.b, i64 noundef %i.bh) #15
  %i.bj = load i32, ptr %i.o, align 8, !tbaa !86
  %i.bk = sub i32 8192, %i.bj
  %i.bl = zext i32 %i.bk to i64
  %.not24.i.i = icmp eq i64 %i.bi, %i.bl
  %i.bm = call i32 @close(i32 noundef %i.ad) #15  ; 0 uses
  %i.bn = call i32 @inflateEnd(ptr noundef nonnull %2) #15
  br i1 %.not24.i.i, label %ppt_unlzw.exit.i, label %ppt_unlzw.exit.thread.i

ppt_unlzw.exit.thread.i:                          ; preds = %bb.x, %bb.u, %bb.q, %bb.o, %bb.m, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %ppt_stream_iter.exit.thread.sink.split

ppt_unlzw.exit.i:                                 ; preds = %bb.x
  %.not.i = icmp eq i32 %i.bn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br i1 %.not.i, label %bb.z, label %ppt_stream_iter.exit.thread.sink.split

bb.y:                                             ; preds = %bb.h
  %i.bo = call i64 @lseek(i32 noundef %0, i64 noundef 0, i32 noundef 1) #15
  %i.bp = zext i32 %i.v to i64
  %i.bq = add nsw i64 %i.bo, %i.bp                ; 2 uses
  %i.br = call i64 @lseek(i32 noundef %0, i64 noundef %i.bq, i32 noundef 0) #15
  %.not18.i = icmp eq i64 %i.br, %i.bq
  br i1 %.not18.i, label %bb.z, label %ppt_stream_iter.exit

bb.z:                                             ; preds = %bb.y, %ppt_unlzw.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.174) #15
  %i.bs = call i64 @cli_readn(i32 noundef %0, ptr noundef nonnull %3, i64 noundef 8) #15
  %.not.i.i = icmp eq i64 %i.bs, 8
  br i1 %.not.i.i, label %bb.g, label %ppt_read_atom_header.exit.thread.i

ppt_stream_iter.exit.thread.sink.split:           ; preds = %ppt_unlzw.exit.i, %bb.i, %ppt_unlzw.exit.thread.i
  %.str.171.sink = phi ptr [ @.str.173, %ppt_unlzw.exit.thread.i ], [ @.str.171, %bb.i ], [ @.str.173, %ppt_unlzw.exit.i ]
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull %.str.171.sink) #15
  br label %ppt_stream_iter.exit.thread

ppt_stream_iter.exit.thread:                      ; preds = %bb.g, %ppt_stream_iter.exit.thread.sink.split
  %i.bt = call i32 @cli_rmdirs(ptr noundef nonnull %i.g) #15 ; 0 uses
  call void @free(ptr noundef %i.g) #15
  br label %ppt_stream_iter.exit

ppt_stream_iter.exit:                             ; preds = %bb.y, %ppt_read_atom_header.exit.thread.i, %bb.c, %ppt_stream_iter.exit.thread, %bb.e
  %.0 = phi ptr [ null, %bb.c ], [ null, %bb.e ], [ null, %ppt_stream_iter.exit.thread ], [ %i.g, %ppt_read_atom_header.exit.thread.i ], [ %i.g, %bb.y ]
  ret ptr %.0
}

declare ptr @cli_gentemp_with_prefix(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @mkdir(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #3

declare void @cli_errmsg(ptr noundef, ...) local_unnamed_addr #2

declare i32 @cli_rmdirs(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define noundef ptr @cli_wm_readdir(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 9 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca i16, align 2                      ; 10 uses
  %i.d = alloca i8, align 1                       ; 9 uses
  %i.e = alloca i16, align 2                      ; 6 uses
  %i.f = alloca i8, align 1                       ; 12 uses
  %i.g = alloca [2 x i8], align 1                 ; 7 uses
  %1 = alloca %struct.anon, align 4               ; 6 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %2 = alloca %struct.macro_info_tag, align 8     ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  %i.i = tail call i64 @lseek(i32 noundef %0, i64 noundef 280, i32 noundef 0) #15
  %i.j = icmp eq i64 %i.i, -1
  br i1 %i.j, label %seekandread.exit.thread.i, label %seekandread.exit.i

seekandread.exit.thread.i:                        ; preds = %bb.a
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.204) #15
  br label %word_read_fib.exit.thread

seekandread.exit.i:                               ; preds = %bb.a
  %i.k = call i64 @cli_readn(i32 noundef %0, ptr noundef nonnull %1, i64 noundef 8) #15
  %.not.i = icmp eq i64 %i.k, 8
  br i1 %.not.i, label %bb.b, label %word_read_fib.exit.thread

word_read_fib.exit.thread:                        ; preds = %seekandread.exit.thread.i, %seekandread.exit.i
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.184) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  br label %bb.bh

bb.b:                                             ; preds = %seekandread.exit.i
  %i.l = load i32, ptr %1, align 4, !tbaa !89     ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !90   ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.147) #15
  br label %bb.bh

bb.d:                                             ; preds = %bb.b
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.148, i32 noundef %i.l) #15
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.149, i32 noundef %i.n) #15
  %i.p = add i32 %i.l, 1
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = call i64 @lseek(i32 noundef %0, i64 noundef %i.q, i32 noundef 0) #15
  %.not47 = icmp eq i64 %i.r, %i.q
  br i1 %.not47, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.150) #15
  br label %bb.bh

bb.f:                                             ; preds = %bb.d
  %i.s = add i32 %i.n, %i.l
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  store ptr null, ptr %2, align 8, !tbaa !93
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 14 uses
  store i16 0, ptr %i.u, align 8, !tbaa !94
  %i.v = call i64 @lseek(i32 noundef %0, i64 noundef 0, i32 noundef 1) #15
  %i.w = icmp slt i64 %i.v, %i.t
  br i1 %i.w, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %word_read_macro_info.exit
  %i.y = call i64 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.h, i64 noundef 1) #15
  %.not49 = icmp eq i64 %i.y, 1
  br i1 %.not49, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.151) #15
  br label %.critedge

bb.i:                                             ; preds = %bb.g
  %i.z = load i8, ptr %i.h, align 1, !tbaa !13    ; 2 uses
  switch i8 %i.z, label %bb.ax [
    i8 1, label %bb.j
    i8 3, label %bb.x
    i8 5, label %bb.ad
    i8 16, label %bb.ah
    i8 17, label %bb.ar
    i8 64, label %word_read_macro_info.exit.thread
    i8 18, label %word_read_macro_info.exit.thread
  ]

bb.j:                                             ; preds = %bb.i
  %i.aa = load i16, ptr %i.u, align 8, !tbaa !94
  %.not54 = icmp eq i16 %i.aa, 0
  br i1 %.not54, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = load ptr, ptr %2, align 8, !tbaa !93
  call void @free(ptr noundef %i.ab) #15
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ac = call i64 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.u, i64 noundef 2) #15
  %.not.i.i = icmp eq i64 %i.ac, 2
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.185) #15
  store i16 0, ptr %i.u, align 8, !tbaa !94
  br label %word_read_macro_info.exit.thread

bb.n:                                             ; preds = %bb.l
  %i.ad = load i16, ptr %i.u, align 8, !tbaa !94
  %i.ae = zext i16 %i.ad to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.186, i32 noundef %i.ae) #15
  %i.af = load i16, ptr %i.u, align 8, !tbaa !94  ; 2 uses
  %i.ag = icmp eq i16 %i.af, 0
  br i1 %i.ag, label %word_read_macro_info.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = zext i16 %i.af to i64
  %i.ai = mul nuw nsw i64 %i.ah, 12
  %i.aj = call ptr @cli_max_malloc(i64 noundef %i.ai) #15 ; 2 uses
  store ptr %i.aj, ptr %2, align 8, !tbaa !93
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i16 0, ptr %i.u, align 8, !tbaa !94
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.187) #15
  br label %word_read_macro_info.exit.thread

bb.q:                                             ; preds = %bb.o
  %i.al = load i16, ptr %i.u, align 8, !tbaa !94  ; 7 uses
  %i.am = zext i16 %i.al to i32
  %i.an = icmp eq i16 %i.al, 0
  br i1 %i.an, label %word_read_macro_info.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ao = zext i16 %i.al to i64
  %i.ap = mul nuw nsw i64 %i.ao, 24               ; 3 uses
  %i.aq = call ptr @cli_max_malloc(i64 noundef %i.ap) #15 ; 9 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.188) #15
  br label %bb.w

bb.t:                                             ; preds = %bb.r
  %i.as = call i64 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.aq, i64 noundef %i.ap) #15
  %.not.i16.i = icmp eq i64 %i.as, %i.ap
  br i1 %.not.i16.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @free(ptr noundef nonnull %i.aq) #15
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.189, i32 noundef %i.am) #15
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.at = load ptr, ptr %2, align 8, !tbaa !93    ; 5 uses
  %xtraiter = and i16 %i.al, 1
  %lcmp.mod.not = icmp eq i16 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.v
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !96
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i8 %i.av, ptr %i.aw, align 4, !tbaa !98
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  %i.ay = load i32, ptr %i.ax, align 1, !tbaa !99
  store i32 %i.ay, ptr %i.at, align 4, !tbaa !100
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 20
  %i.ba = load i32, ptr %i.az, align 1, !tbaa !101
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !102
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.be = add nsw i16 %i.al, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.v
  %.024.i.i.unr = phi i16 [ %i.al, %bb.v ], [ %i.be, %.prol.loopexit.unr-lcssa ]
  %.023.i.i.unr = phi ptr [ %i.at, %bb.v ], [ %i.bc, %.prol.loopexit.unr-lcssa ]
  %.0.i17.i.unr = phi ptr [ %i.aq, %bb.v ], [ %i.bd, %.prol.loopexit.unr-lcssa ]
  %i.bf = icmp eq i16 %i.al, 1
  br i1 %i.bf, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.024.i.i = phi i16 [ %i.bz, %.new ], [ %.024.i.i.unr, %.prol.loopexit ]
  %.023.i.i = phi ptr [ %i.bx, %.new ], [ %.023.i.i.unr, %.prol.loopexit ] ; 7 uses
  %.0.i17.i = phi ptr [ %i.by, %.new ], [ %.0.i17.i.unr, %.prol.loopexit ] ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i17.i, i64 1
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !96
  %i.bi = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 8
  store i8 %i.bh, ptr %i.bi, align 4, !tbaa !98
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i17.i, i64 12
  %i.bk = load i32, ptr %i.bj, align 1, !tbaa !99
end_hunk_1
begin_hunk_2_@cli_wm_readdir:bb.a
  br label %word_read_macro_info.exit

.loopexit132:                                     ; preds = %bb.ag, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  br label %word_read_macro_info.exit.thread

bb.ah:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.dg = call i64 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.c, i64 noundef 2) #15
  %.not.i.i70 = icmp eq i64 %i.dg, 2
  br i1 %.not.i.i70, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.198) #15
  br label %bb.aq

bb.aj:                                            ; preds = %bb.ah
  %i.dh = load i16, ptr %i.c, align 2, !tbaa !50  ; 2 uses
  %.not18.i = icmp eq i16 %i.dh, -1               ; 2 uses
  br i1 %.not18.i, label %bb.ak, label %read_uint16.exit22.i

bb.ak:                                            ; preds = %bb.aj
  %i.di = call i64 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.c, i64 noundef 2) #15
  %.not.i19.i = icmp eq i64 %i.di, 2
  br i1 %.not.i19.i, label %.read_uint16.exit22_crit_edge.i, label %bb.al

.read_uint16.exit22_crit_edge.i:                  ; preds = %bb.ak
  %.pre.i71 = load i16, ptr %i.c, align 2, !tbaa !50
  br label %read_uint16.exit22.i

bb.al:                                            ; preds = %bb.ak
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.198) #15
  br label %bb.aq

read_uint16.exit22.i:                             ; preds = %.read_uint16.exit22_crit_edge.i, %bb.aj
  %i.dj = phi i16 [ %.pre.i71, %.read_uint16.exit22_crit_edge.i ], [ %i.dh, %bb.aj ]
  %i.dk = sext i16 %i.dj to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.199, i32 noundef %i.dk) #15
  %i.dl = load i16, ptr %i.c, align 2, !tbaa !50  ; 2 uses
  %i.dm = icmp sgt i16 %i.dl, 0
  br i1 %i.dm, label %.lr.ph.i, label %word_skip_macro_extnames.exit

.lr.ph.i:                                         ; preds = %read_uint16.exit22.i
  %i.dn = zext nneg i16 %i.dl to i32              ; 2 uses
  br i1 %.not18.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.an
  %.01127.us.i = phi i32 [ %i.dw, %bb.an ], [ %i.dn, %.lr.ph.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  %i.do = call i64 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.d, i64 noundef 1) #15
  %.not16.us.i = icmp eq i64 %i.do, 1
  br i1 %.not16.us.i, label %bb.am, label %.critedge.i

bb.am:                                            ; preds = %.lr.ph.split.us.i
  %i.dp = load i8, ptr %i.d, align 1
  %i.dq = zext i8 %i.dp to i64
  %i.dr = shl nuw nsw i64 %i.dq, 1
  %.reass.i = add nuw nsw i64 %i.dr, 3
  %i.ds = call i64 @lseek(i32 noundef %0, i64 noundef %.reass.i, i32 noundef 1) #15
  %i.dt = icmp eq i64 %i.ds, -1
  br i1 %i.dt, label %.critedge.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.du = load i16, ptr %i.c, align 2, !tbaa !50
  %i.dv = sext i16 %i.du to i32
  %i.dw = sub nsw i32 %.01127.us.i, %i.dv         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  %i.dx = icmp sgt i32 %i.dw, 0
  br i1 %i.dx, label %.lr.ph.split.us.i, label %word_skip_macro_extnames.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.ap
  %.01127.i = phi i32 [ %i.eg, %bb.ap ], [ %i.dn, %.lr.ph.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  %i.dy = call i64 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.d, i64 noundef 1) #15
  %.not16.i = icmp eq i64 %i.dy, 1
  br i1 %.not16.i, label %bb.ao, label %.critedge.i

bb.ao:                                            ; preds = %.lr.ph.split.i
  %i.dz = load i8, ptr %i.d, align 1
  %i.ea = zext i8 %i.dz to i64
  %i.eb = add nuw nsw i64 %i.ea, 2
  %i.ec = call i64 @lseek(i32 noundef %0, i64 noundef %i.eb, i32 noundef 1) #15
  %i.ed = icmp eq i64 %i.ec, -1
  br i1 %i.ed, label %.critedge.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ee = load i16, ptr %i.c, align 2, !tbaa !50
  %i.ef = sext i16 %i.ee to i32
  %i.eg = sub nsw i32 %.01127.i, %i.ef            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  %i.eh = icmp sgt i32 %i.eg, 0
  br i1 %i.eh, label %.lr.ph.split.i, label %word_skip_macro_extnames.exit

.critedge.i:                                      ; preds = %bb.ao, %.lr.ph.split.i, %bb.am, %.lr.ph.split.us.i
  %.str.200.sink.i = phi ptr [ @.str.198, %.lr.ph.split.us.i ], [ @.str.200, %bb.am ], [ @.str.198, %.lr.ph.split.i ], [ @.str.200, %bb.ao ]
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull %.str.200.sink.i) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  br label %bb.aq

word_skip_macro_extnames.exit:                    ; preds = %bb.ap, %bb.an, %read_uint16.exit22.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %word_read_macro_info.exit

bb.aq:                                            ; preds = %.critedge.i, %bb.ai, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %word_read_macro_info.exit.thread

bb.ar:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.ei = call i64 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.a, i64 noundef 2) #15
  %.not.i.i72 = icmp eq i64 %i.ei, 2
  br i1 %.not.i.i72, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.201) #15
  br label %bb.aw

bb.at:                                            ; preds = %bb.ar
  %i.ej = load i16, ptr %i.a, align 2, !tbaa !50
  %i.ek = zext i16 %i.ej to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.202, i32 noundef %i.ek) #15
  %i.el = load i16, ptr %i.a, align 2, !tbaa !50  ; 2 uses
  %i.em = add i16 %i.el, -1
  store i16 %i.em, ptr %i.a, align 2, !tbaa !50
  %.not614.i = icmp eq i16 %i.el, 0
  br i1 %.not614.i, label %word_skip_macro_intnames.exit, label %.lr.ph.i74

.lr.ph.i74:                                       ; preds = %bb.at, %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.en = call i64 @lseek(i32 noundef %0, i64 noundef 2, i32 noundef 1) #15
  %i.eo = icmp eq i64 %i.en, -1
  br i1 %i.eo, label %seekandread.exit.thread.i78, label %seekandread.exit.i75

seekandread.exit.thread.i78:                      ; preds = %.lr.ph.i74
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.204) #15
  br label %.critedge.i77

seekandread.exit.i75:                             ; preds = %.lr.ph.i74
  %i.ep = call i64 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.b, i64 noundef 1) #15
  %.not.i76 = icmp eq i64 %i.ep, 1
  br i1 %.not.i76, label %bb.au, label %.critedge.i77

bb.au:                                            ; preds = %seekandread.exit.i75
  %i.eq = load i8, ptr %i.b, align 1, !tbaa !13
  %i.er = zext i8 %i.eq to i64
  %i.es = add nuw nsw i64 %i.er, 1
  %i.et = call i64 @lseek(i32 noundef %0, i64 noundef %i.es, i32 noundef 1) #15
  %i.eu = icmp eq i64 %i.et, -1
  br i1 %i.eu, label %.critedge.i77, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  %i.ev = load i16, ptr %i.a, align 2, !tbaa !50  ; 2 uses
  %i.ew = add i16 %i.ev, -1
  store i16 %i.ew, ptr %i.a, align 2, !tbaa !50
  %.not6.i = icmp eq i16 %i.ev, 0
  br i1 %.not6.i, label %word_skip_macro_intnames.exit, label %.lr.ph.i74

.critedge.i77:                                    ; preds = %bb.au, %seekandread.exit.i75, %seekandread.exit.thread.i78
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.203) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %bb.aw

word_skip_macro_intnames.exit:                    ; preds = %bb.av, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %word_read_macro_info.exit

bb.aw:                                            ; preds = %.critedge.i77, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %word_read_macro_info.exit.thread

bb.ax:                                            ; preds = %bb.i
  %i.ex = zext i8 %i.z to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.152, i32 noundef %i.ex) #15
  br label %word_read_macro_info.exit.thread

word_read_macro_info.exit.thread:                 ; preds = %bb.i, %bb.i, %bb.ax, %word_skip_oxo3.exit.thread, %bb.w, %bb.m, %bb.n, %bb.p, %bb.q, %.unr-lcssa, %word_skip_oxo3.exit.thread92, %.loopexit132, %bb.aq, %bb.aw
  %i.ey = call i64 @lseek(i32 noundef %0, i64 noundef 0, i32 noundef 1) #15 ; 0 uses
  br label %.critedge

word_read_macro_info.exit:                        ; preds = %word_skip_macro_intnames.exit, %word_skip_macro_extnames.exit, %word_skip_menu_info.exit, %word_skip_oxo3.exit.thread89, %word_skip_oxo3.exit
  %i.ez = call i64 @lseek(i32 noundef %0, i64 noundef 0, i32 noundef 1) #15
  %i.fa = icmp slt i64 %i.ez, %i.t
  br i1 %i.fa, label %bb.g, label %.critedge

.critedge:                                        ; preds = %word_read_macro_info.exit, %word_read_macro_info.exit.thread, %bb.f, %bb.h
  %i.fb = load i16, ptr %i.u, align 8, !tbaa !94  ; 2 uses
  %i.fc = icmp eq i16 %i.fb, 0
  br i1 %i.fc, label %bb.bh, label %bb.ay

bb.ay:                                            ; preds = %.critedge
  %i.fd = zext i16 %i.fb to i32
  %i.fe = call fastcc ptr @create_vba_project(i32 noundef %i.fd, ptr noundef nonnull @.str.153, ptr noundef null) ; 11 uses
  %.not55 = icmp eq ptr %i.fe, null
  br i1 %.not55, label %.loopexit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ff = load i16, ptr %i.u, align 8, !tbaa !94
  %i.fg = zext i16 %i.ff to i64
  %i.fh = shl nuw nsw i64 %i.fg, 2
  %i.fi = call ptr @cli_max_malloc(i64 noundef %i.fh) #15
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 24 ; 4 uses
  store ptr %i.fi, ptr %i.fj, align 8, !tbaa !62
  %i.fk = load i16, ptr %i.u, align 8, !tbaa !94
  %i.fl = zext i16 %i.fk to i64
  %i.fm = call ptr @cli_max_malloc(i64 noundef %i.fl) #15 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fe, i64 32 ; 3 uses
  store ptr %i.fm, ptr %i.fn, align 8, !tbaa !63
  %3 = load ptr, ptr %i.fj, align 8, !tbaa !62
  %.not56 = icmp eq ptr %3, null
  %.not57 = icmp eq ptr %i.fm, null
  %or.cond63 = select i1 %.not56, i1 true, i1 %.not57
  br i1 %or.cond63, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fo = load i16, ptr %i.u, align 8, !tbaa !94
  %.not = icmp eq i16 %i.fo, 0
  br i1 %.not, label %.loopexit, label %.lr.ph107

.lr.ph107:                                        ; preds = %bb.ba
  %i.fp = load ptr, ptr %2, align 8, !tbaa !93
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph107, %bb.bb
  %indvars.iv = phi i64 [ 0, %.lr.ph107 ], [ %indvars.iv.next, %bb.bb ] ; 4 uses
  %.0106 = phi ptr [ %i.fp, %.lr.ph107 ], [ %i.fz, %bb.bb ] ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.0106, i64 4
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !102
  %4 = load ptr, ptr %i.fq, align 8, !tbaa !60
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  store i32 %i.fs, ptr %i.ft, align 4, !tbaa !14
  %i.fu = load i32, ptr %.0106, align 4, !tbaa !100
  %5 = load ptr, ptr %i.fj, align 8, !tbaa !62
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  store i32 %i.fu, ptr %i.fv, align 4, !tbaa !14
  %i.fw = getelementptr inbounds nuw i8, ptr %.0106, i64 8
  %i.fx = load i8, ptr %i.fw, align 4, !tbaa !98
  %6 = load ptr, ptr %i.fn, align 8, !tbaa !63
  %i.fy = getelementptr inbounds nuw i8, ptr %6, i64 %indvars.iv
  store i8 %i.fx, ptr %i.fy, align 1, !tbaa !13
  %i.fz = getelementptr inbounds nuw i8, ptr %.0106, i64 12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ga = load i16, ptr %i.u, align 8, !tbaa !94
  %i.gb = zext i16 %i.ga to i64
  %i.gc = icmp samesign ult i64 %indvars.iv.next, %i.gb
  br i1 %i.gc, label %bb.bb, label %.loopexit

bb.bc:                                            ; preds = %bb.az
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.154) #15
  %i.gd = load ptr, ptr %i.fe, align 8, !tbaa !59
  call void @free(ptr noundef %i.gd) #15
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !58
  call void @free(ptr noundef %i.gf) #15
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fe, i64 40
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !61
  call void @free(ptr noundef %i.gh) #15
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !60
  call void @free(ptr noundef %i.gj) #15
  %7 = load ptr, ptr %i.fj, align 8, !tbaa !62    ; 2 uses
  %.not58 = icmp eq ptr %7, null
  br i1 %.not58, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @free(ptr noundef nonnull %7) #15
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %8 = load ptr, ptr %i.fn, align 8, !tbaa !63    ; 2 uses
  %.not59 = icmp eq ptr %8, null
  br i1 %.not59, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @free(ptr noundef nonnull %8) #15
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  call void @free(ptr noundef nonnull %i.fe) #15
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bb, %bb.ba, %bb.bg, %bb.ay
  %.039 = phi ptr [ null, %bb.ay ], [ null, %bb.bg ], [ %i.fe, %bb.ba ], [ %i.fe, %bb.bb ]
  %i.gk = load ptr, ptr %2, align 8, !tbaa !93
  call void @free(ptr noundef %i.gk) #15
  br label %bb.bh

bb.bh:                                            ; preds = %word_read_fib.exit.thread, %.critedge, %.loopexit, %bb.e, %bb.c
  %.041 = phi ptr [ null, %bb.c ], [ null, %bb.e ], [ null, %word_read_fib.exit.thread ], [ %.039, %.loopexit ], [ null, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #15
  ret ptr %.041
}

declare ptr @cli_max_malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @cli_wm_decrypt_macro(i32 noundef %0, i64 noundef %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  %i.b = icmp slt i32 %0, 0
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i32 %2 to i64                       ; 5 uses
  %i.d = tail call ptr @cli_max_malloc(i64 noundef %i.c) #15 ; 14 uses
  %i.e = ptrtoaddr ptr %i.d to i64                ; 3 uses
  %i.f = icmp eq ptr %i.d, null
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.155) #15
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call i64 @lseek(i32 noundef %0, i64 noundef %1, i32 noundef 0) #15
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %seekandread.exit.thread, label %seekandread.exit

seekandread.exit.thread:                          ; preds = %bb.d
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.204) #15
  br label %bb.e

seekandread.exit:                                 ; preds = %bb.d
  %i.i = tail call i64 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.d, i64 noundef range(i64 1, 4294967296) %i.c) #15
  %.not = icmp eq i64 %i.i, %i.c
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %seekandread.exit.thread, %seekandread.exit
  tail call void @free(ptr noundef nonnull %i.d) #15
  br label %.loopexit

bb.f:                                             ; preds = %seekandread.exit
  %.not23 = icmp eq i8 %3, 0
  br i1 %.not23, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.c
  %i.k = add i64 %i.e, %i.c
  %i.l = add i64 %i.e, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.k, i64 %i.l)
  %i.m = sub i64 %umax, %i.e                      ; 7 uses
  %min.iters.check = icmp ult i64 %i.m, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check32 = icmp ult i64 %i.m, 32
  br i1 %min.iters.check32, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.n = and i64 %i.m, 24
  %n.vec = and i64 %i.m, -32                      ; 4 uses
  %i.o = getelementptr i8, ptr %i.d, i64 %n.vec
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %3, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %i.d, i64 %index ; 3 uses
  %i.p = getelementptr i8, ptr %next.gep, i64 16  ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !13
  %wide.load33 = load <16 x i8>, ptr %i.p, align 1, !tbaa !13
  %i.q = xor <16 x i8> %wide.load, %broadcast.splat
  %i.r = xor <16 x i8> %wide.load33, %broadcast.splat
  store <16 x i8> %i.q, ptr %next.gep, align 1, !tbaa !13
  store <16 x i8> %i.r, ptr %i.p, align 1, !tbaa !13
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !103

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.n, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !106

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec34 = and i64 %i.m, -8                     ; 3 uses
  %i.t = getelementptr i8, ptr %i.d, i64 %n.vec34
  %broadcast.splatinsert35 = insertelement <8 x i8> poison, i8 %3, i64 0
  %broadcast.splat36 = shufflevector <8 x i8> %broadcast.splatinsert35, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index37 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next40, %vec.epilog.vector.body ] ; 2 uses
  %next.gep38 = getelementptr i8, ptr %i.d, i64 %index37 ; 2 uses
  %wide.load39 = load <8 x i8>, ptr %next.gep38, align 1, !tbaa !13
  %i.u = xor <8 x i8> %wide.load39, %broadcast.splat36
  store <8 x i8> %i.u, ptr %next.gep38, align 1, !tbaa !13
  %index.next40 = add nuw i64 %index37, 8         ; 2 uses
  %i.v = icmp eq i64 %index.next40, %n.vec34
  br i1 %i.v, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !104

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n41 = icmp eq i64 %i.m, %n.vec34
  br i1 %cmp.n41, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.026.ph = phi ptr [ %i.d, %iter.check ], [ %i.o, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.026 = phi ptr [ %i.y, %.lr.ph ], [ %.026.ph, %.lr.ph.preheader ] ; 3 uses
  %i.w = load i8, ptr %.026, align 1, !tbaa !13
  %i.x = xor i8 %i.w, %3
  store i8 %i.x, ptr %.026, align 1, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %.026, i64 1 ; 2 uses
  %i.z = icmp ult ptr %i.y, %i.j
  br i1 %i.z, label %.lr.ph, label %.loopexit, !llvm.loop !105

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.f, %bb.a, %bb.e, %bb.c
  %.018 = phi ptr [ null, %bb.e ], [ null, %bb.a ], [ null, %bb.c ], [ %i.d, %bb.f ], [ %i.d, %middle.block ], [ %i.d, %vec.epilog.middle.block ], [ %i.d, %.lr.ph ]
  ret ptr %.018
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cli_free_vba_project(ptr noundef captures(address_is_null) %0) local_unnamed_addr #10 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61   ; 2 uses
  %.not20 = icmp eq ptr %i.b, null
  br i1 %.not20, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.b) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58   ; 2 uses
  %.not21 = icmp eq ptr %i.d, null
  br i1 %.not21, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.d) #15
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.e = load ptr, ptr %0, align 8, !tbaa !59     ; 2 uses
  %.not22 = icmp eq ptr %i.e, null
  br i1 %.not22, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.e) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !60   ; 2 uses
  %.not23 = icmp eq ptr %i.g, null
  br i1 %.not23, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.g) #15
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !62   ; 2 uses
  %.not24 = icmp eq ptr %i.i, null
  br i1 %.not24, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @free(ptr noundef nonnull %i.i) #15
  br label %bb.l

end_hunk_2
