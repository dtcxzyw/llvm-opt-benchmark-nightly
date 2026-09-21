Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/store?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@setUnicodeVersion:bb.a

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @u_versionFromString_78(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @setUnicodeVersionNC(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr %0, align 1
  %i.b = tail call i32 @llvm.bswap.i32(i32 %i.a)
  store i32 %i.b, ptr getelementptr inbounds nuw (i8, ptr @indexes, i64 8), align 8, !tbaa !9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @init() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(278816) ptr @uprv_calloc_78(i64 noundef 1, i64 noundef 278816) #15 ; 2 uses
  store ptr %i.a, ptr @sprepTrie, align 8, !tbaa !12
  %i.b = tail call ptr @utrie_open_78(ptr noundef %i.a, ptr noundef null, i32 noundef 11500, i32 noundef 0, i32 noundef 0, i8 noundef signext 0) #14
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str, i64 34, i64 1, ptr %i.d) #16 ; 0 uses
  tail call void @exit(i32 noundef 7) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: allocsize(0,1)
declare noalias ptr @uprv_calloc_78(i64 noundef, i64 noundef) local_unnamed_addr #4

declare ptr @utrie_open_78(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @setOptions(i32 noundef %0) local_unnamed_addr #7 {
bb.a:
  store i32 %0, ptr getelementptr inbounds nuw (i8, ptr @indexes, i64 28), align 4, !tbaa !9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @storeMapping(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @hashTable, align 8, !tbaa !16
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @uhash_open_78(ptr noundef nonnull @hashEntry, ptr noundef nonnull @compareEntries, ptr noundef null, ptr noundef %4) #14 ; 2 uses
  store ptr %i.c, ptr @hashTable, align 8, !tbaa !16
  %i.d = tail call ptr @uhash_setValueDeleter_78(ptr noundef %i.c, ptr noundef nonnull @valueDeleter) #14 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load ptr, ptr @sprepTrie, align 8, !tbaa !12
  %i.f = tail call i32 @utrie_get32_78(ptr noundef %i.e, i32 noundef %0, ptr noundef null) #14
  switch i32 %i.f, label %bb.d [
    i32 0, label %bb.e
    i32 65522, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str.1, i32 noundef %0) #18 ; 0 uses
  tail call void @exit(i32 noundef 1) #17
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.c
  %i.i = icmp sgt i32 %2, 0
  br i1 %i.i, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.e
  %min.iters.check = icmp ult i32 %2, 8
  br i1 %min.iters.check, label %.lr.ph.preheader98, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %i.j = add nsw i32 %2, -1                       ; 2 uses
  %i.k = trunc i32 %i.j to i16
  %i.l = icmp ugt i16 %i.k, 32766
  %i.m = icmp ugt i32 %i.j, 65535
  %i.n = or i1 %i.l, %i.m
  br i1 %i.n, label %.lr.ph.preheader98, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i32 %2, 131064                     ; 3 uses
  %i.o = trunc i32 %n.vec to i16
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i16> [ zeroinitializer, %vector.ph ], [ %i.x, %vector.body ]
  %vec.phi95 = phi <4 x i16> [ zeroinitializer, %vector.ph ], [ %i.y, %vector.body ]
  %i.p = zext i32 %index to i64
  %sext97 = shl i64 %i.p, 48
  %i.q = ashr exact i64 %sext97, 46
  %i.r = getelementptr inbounds i8, ptr %1, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <4 x i32>, ptr %i.r, align 4, !tbaa !9
  %wide.load96 = load <4 x i32>, ptr %i.s, align 4, !tbaa !9
  %i.t = icmp ult <4 x i32> %wide.load, splat (i32 65536)
  %i.u = icmp ult <4 x i32> %wide.load96, splat (i32 65536)
  %i.v = select <4 x i1> %i.t, <4 x i16> splat (i16 1), <4 x i16> splat (i16 2)
  %i.w = select <4 x i1> %i.u, <4 x i16> splat (i16 1), <4 x i16> splat (i16 2)
  %i.x = add <4 x i16> %i.v, %vec.phi             ; 2 uses
  %i.y = add <4 x i16> %i.w, %vec.phi95           ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.z = icmp eq i32 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i16> %i.y, %i.x
  %i.aa = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %2, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader98

.lr.ph.preheader98:                               ; preds = %vector.scevcheck, %.lr.ph.preheader, %middle.block
  %.06479.ph = phi i16 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %i.o, %middle.block ]
  %.06678.ph = phi i16 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader98, %.lr.ph
  %.06479 = phi i16 [ %i.ah, %.lr.ph ], [ %.06479.ph, %.lr.ph.preheader98 ] ; 2 uses
  %.06678 = phi i16 [ %i.ag, %.lr.ph ], [ %.06678.ph, %.lr.ph.preheader98 ]
  %i.ab = sext i16 %.06479 to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !9
  %i.ae = icmp ult i32 %i.ad, 65536
  %i.af = select i1 %i.ae, i16 1, i16 2
  %i.ag = add i16 %i.af, %.06678                  ; 2 uses
  %i.ah = add i16 %.06479, 1                      ; 2 uses
  %i.ai = sext i16 %i.ah to i32
  %i.aj = icmp sgt i32 %2, %i.ai
  br i1 %i.aj, label %.lr.ph, label %._crit_edge, !llvm.loop !27

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.lcssa = phi i16 [ %i.aa, %middle.block ], [ %i.ag, %.lr.ph ] ; 4 uses
  %i.ak = sext i16 %.lcssa to i32                 ; 4 uses
  switch i16 %.lcssa, label %.lr.ph83.preheader [
    i16 0, label %._crit_edge.thread
    i16 1, label %bb.g
  ]

._crit_edge.thread:                               ; preds = %bb.e, %._crit_edge
  %i.al = load ptr, ptr @sprepTrie, align 8, !tbaa !12
  %i.am = tail call signext i8 @utrie_set32_78(ptr noundef %i.al, i32 noundef %0, i32 noundef 65276) #14
  %.not76 = icmp eq i8 %i.am, 0
  br i1 %.not76, label %bb.f, label %.critedge

bb.f:                                             ; preds = %._crit_edge.thread
  %i.an = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite77 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 40, i64 1, ptr %i.an) #16 ; 0 uses
  tail call void @exit(i32 noundef 1) #17
  unreachable

bb.g:                                             ; preds = %._crit_edge
  %i.ao = load i32, ptr %1, align 4, !tbaa !9
  %i.ap = sub i32 %0, %i.ao                       ; 2 uses
  %sext = shl i32 %i.ap, 16
  %i.aq = ashr exact i32 %sext, 16
  %i.ar = add nsw i32 %i.aq, 8192
  %or.cond = icmp ult i32 %i.ar, 16384
  br i1 %or.cond, label %bb.h, label %.lr.ph83.preheader

bb.h:                                             ; preds = %bb.g
  %i.as = shl i32 %i.ap, 2
  %i.at = and i32 %i.as, 65532                    ; 2 uses
  %i.au = icmp samesign ult i32 %i.at, 65520
  br i1 %i.au, label %bb.i, label %.lr.ph83.preheader

bb.i:                                             ; preds = %bb.h
  %i.av = load ptr, ptr @sprepTrie, align 8, !tbaa !12
  %i.aw = tail call signext i8 @utrie_set32_78(ptr noundef %i.av, i32 noundef %0, i32 noundef %i.at) #14
  %.not75 = icmp eq i8 %i.aw, 0
  br i1 %.not75, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.ax = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.2, i64 40, i64 1, ptr %i.ax) #16 ; 0 uses
  tail call void @exit(i32 noundef 1) #17
  unreachable

.lr.ph83.preheader:                               ; preds = %._crit_edge, %bb.g, %bb.h
  %i.ay = add nsw i32 %i.ak, 1
  %i.az = sext i32 %i.ay to i64
  %i.ba = tail call noalias ptr @uprv_calloc_78(i64 noundef %i.az, i64 noundef 2) #15 ; 3 uses
  br label %.lr.ph83

.lr.ph83:                                         ; preds = %.lr.ph83.preheader, %bb.m
  %.06381 = phi i16 [ %i.bo, %bb.m ], [ 0, %.lr.ph83.preheader ] ; 4 uses
  %.16580 = phi i16 [ %6, %bb.m ], [ 0, %.lr.ph83.preheader ] ; 2 uses
  %5 = sext i16 %.16580 to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %1, i64 %5
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !9  ; 4 uses
  %i.bd = icmp ult i32 %i.bc, 65536
  br i1 %i.bd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph83
  %i.be = trunc nuw i32 %i.bc to i16
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph83
  %i.bf = lshr i32 %i.bc, 10
  %i.bg = trunc i32 %i.bf to i16
  %i.bh = add i16 %i.bg, -10304
  %i.bi = add i16 %.06381, 1
  %i.bj = sext i16 %.06381 to i64
  %i.bk = getelementptr inbounds [2 x i8], ptr %i.ba, i64 %i.bj
  store i16 %i.bh, ptr %i.bk, align 2, !tbaa !19
  %i.bl = trunc i32 %i.bc to i16
  %i.bm = and i16 %i.bl, 1023
  %i.bn = or disjoint i16 %i.bm, -9216
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.sink94 = phi i16 [ 1, %bb.k ], [ 2, %bb.l ]
  %.06381.sink = phi i16 [ %.06381, %bb.k ], [ %i.bi, %bb.l ]
  %.sink = phi i16 [ %i.be, %bb.k ], [ %i.bn, %bb.l ]
  %i.bo = add i16 %.06381, %.sink94
  %i.bp = sext i16 %.06381.sink to i64
  %i.bq = getelementptr inbounds [2 x i8], ptr %i.ba, i64 %i.bp
  store i16 %.sink, ptr %i.bq, align 2, !tbaa !19
  %6 = add i16 %.16580, 1                         ; 2 uses
  %7 = sext i16 %6 to i32
  %8 = icmp sgt i32 %2, %7
  br i1 %8, label %.lr.ph83, label %._crit_edge84, !llvm.loop !28

._crit_edge84:                                    ; preds = %bb.m
  %i.br = tail call noalias dereferenceable_or_null(16) ptr @uprv_malloc_78(i64 noundef 16) #19 ; 4 uses
  store ptr %i.ba, ptr %i.br, align 8, !tbaa !22
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  store i32 %3, ptr %i.bs, align 4, !tbaa !31
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i16 %.lcssa, ptr %i.bt, align 8, !tbaa !23
  %i.bu = icmp sgt i16 %.lcssa, 3
  br i1 %i.bu, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge84
  %i.bv = load i32, ptr @mappingDataCapacity, align 4, !tbaa !9
  %i.bw = add nsw i32 %i.bv, 1
  store i32 %i.bw, ptr @mappingDataCapacity, align 4, !tbaa !9
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge84
  %i.bx = load i32, ptr @maxLength, align 4, !tbaa !9
  %i.by = icmp slt i32 %i.bx, %i.ak
  br i1 %i.by, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 %i.ak, ptr @maxLength, align 4, !tbaa !9
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bz = load ptr, ptr @hashTable, align 8, !tbaa !16
  %i.ca = tail call ptr @uhash_iput_78(ptr noundef %i.bz, i32 noundef %0, ptr noundef nonnull %i.br, ptr noundef %4) #14 ; 0 uses
  %i.cb = load i32, ptr @mappingDataCapacity, align 4, !tbaa !9
  %i.cc = add nsw i32 %i.cb, %i.ak
  store i32 %i.cc, ptr @mappingDataCapacity, align 4, !tbaa !9
  %i.cd = load i32, ptr %4, align 4, !tbaa !9     ; 2 uses
  %i.ce = icmp sgt i32 %i.cd, 0
  br i1 %i.ce, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.cf = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.cg = tail call ptr @u_errorName_78(i32 noundef %i.cd) #14
  %i.ch = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cf, ptr noundef nonnull @.str.5, ptr noundef %i.cg) #18 ; 0 uses
  %i.ci = load i32, ptr %4, align 4, !tbaa !9
  tail call void @exit(i32 noundef %i.ci) #20
  unreachable

.critedge:                                        ; preds = %bb.i, %bb.q, %._crit_edge.thread
  ret void
}

declare ptr @uhash_open_78(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal i32 @hashEntry(ptr %0) #8 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %.sroa.0.0.extract.trunc = trunc i64 %i.a to i32
  ret i32 %.sroa.0.0.extract.trunc
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal signext range(i8 0, 2) i8 @compareEntries(ptr %0, ptr %1) #8 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %.sroa.01.0.extract.trunc = trunc i64 %i.a to i32
  %i.b = ptrtoint ptr %1 to i64
  %.sroa.0.0.extract.trunc = trunc i64 %i.b to i32
  %i.c = icmp ne i32 %.sroa.01.0.extract.trunc, %.sroa.0.0.extract.trunc
  %i.d = zext i1 %i.c to i8
  ret i8 %i.d
}

declare ptr @uhash_setValueDeleter_78(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @valueDeleter(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22
  tail call void @uprv_free_78(ptr noundef %i.a) #14
  tail call void @uprv_free_78(ptr noundef nonnull %0) #14
  ret void
}

declare i32 @utrie_get32_78(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare signext i8 @utrie_set32_78(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare noalias ptr @uprv_malloc_78(i64 noundef) local_unnamed_addr #9

declare ptr @uhash_iput_78(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @u_errorName_78(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @storeRange(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %2, 65520                        ; 4 uses
  %i.b = icmp sgt i32 %i.a, 65535
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite34 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 51, i64 1, ptr %i.c) #16 ; 0 uses
  tail call void @exit(i32 noundef 12) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %0, %1
  %i.e = load ptr, ptr @sprepTrie, align 8, !tbaa !12 ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @utrie_get32_78(ptr noundef %i.e, i32 noundef %0, ptr noundef null) #14 ; 5 uses
  %.not29 = icmp eq i32 %i.f, 0
  br i1 %.not29, label %._crit_edge, label %bb.e

._crit_edge:                                      ; preds = %bb.d
  %.pre = and i32 %i.a, 65535
  br label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.g = icmp ult i32 %i.f, 65520
  %i.h = icmp eq i32 %2, 2
  %or.cond = and i1 %i.h, %i.g
  br i1 %or.cond, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.i = icmp samesign ult i32 %i.f, 65519
  br i1 %i.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.j = add nuw nsw i32 %i.f, 1
  %i.k = load ptr, ptr @sprepTrie, align 8, !tbaa !12
  %i.l = tail call signext i8 @utrie_set32_78(ptr noundef %i.k, i32 noundef %0, i32 noundef %i.j) #14
  %.not32 = icmp eq i8 %i.l, 0
  br i1 %.not32, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite33 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 40, i64 1, ptr %i.m) #16 ; 0 uses
  tail call void @exit(i32 noundef 1) #17
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.o = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str.3, i32 noundef 65520) #18 ; 0 uses
  tail call void @exit(i32 noundef 12) #17
  unreachable

bb.j:                                             ; preds = %bb.e
  %i.p = and i32 %i.a, 65535                      ; 2 uses
  %.not30 = icmp eq i32 %i.f, %i.p
  br i1 %.not30, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.r = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.q, ptr noundef nonnull @.str.7, i32 noundef %0) #18 ; 0 uses
  tail call void @exit(i32 noundef 1) #17
  unreachable

bb.l:                                             ; preds = %._crit_edge, %bb.j
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %i.p, %bb.j ]
  %i.s = load ptr, ptr @sprepTrie, align 8, !tbaa !12
  %i.t = tail call signext i8 @utrie_set32_78(ptr noundef %i.s, i32 noundef %0, i32 noundef %.pre-phi) #14
  %.not31 = icmp eq i8 %i.t, 0
  br i1 %.not31, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.v = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.u, ptr noundef nonnull @.str.8, i32 noundef %0) #18 ; 0 uses
  tail call void @exit(i32 noundef 1) #17
  unreachable

bb.n:                                             ; preds = %bb.c
  %i.w = add i32 %1, 1
  %i.x = and i32 %i.a, 65535
  %i.y = tail call signext i8 @utrie_setRange32_78(ptr noundef %i.e, i32 noundef %0, i32 noundef %i.w, i32 noundef %i.x, i8 noundef signext 0) #14
  %.not = icmp eq i8 %i.y, 0
  br i1 %.not, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.z = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.9, i64 41, i64 1, ptr %i.z) #16 ; 0 uses
  tail call void @exit(i32 noundef 12) #17
  unreachable

.critedge:                                        ; preds = %bb.g, %bb.n, %bb.l
  ret void
}

declare signext i8 @utrie_setRange32_78(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @generateData(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 0, ptr %i.b, align 4, !tbaa !9
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #21
  %i.d = add i64 %i.c, 100
end_hunk_0
