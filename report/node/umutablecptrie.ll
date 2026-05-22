inline.NumInlined: 129
inline.NumDeleted: 58
begin_hunk_0_@umutablecptrie_buildImmutable_78:bb.a

_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie5buildE11UCPTrieType17UCPTrieValueWidthR10UErrorCode.exit: ; preds = %.loopexit.i, %bb.gj, %bb.fm, %bb.c, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.bfd, %.loopexit.i ], [ null, %bb.c ], [ null, %bb.fm ], [ null, %bb.gj ]
  ret ptr %.0
}

; Function Attrs: allocsize(0)
declare noalias ptr @uprv_malloc_78(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #4

declare i32 @ucpmap_get_78(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @ucpmap_getRange_78(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @ucptrie_getRange_78(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie12getDataBlockEi(ptr noundef nonnull align 8 captures(none) dereferenceable(69696) %0, i32 noundef range(i32 -2147483648, 134217727) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = sext i32 %1 to i64                       ; 5 uses
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 %i.b ; 2 uses
  %i.d = load i8, ptr %i.c, align 1
  %i.e = icmp eq i8 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.b
  %i.h = load i32, ptr %i.g, align 4
  br label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie14allocDataBlockEi.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.i = icmp slt i32 %1, 4096
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 5 uses
  %i.k = load i32, ptr %i.j, align 4              ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8              ; 6 uses
  br i1 %i.i, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = add nsw i32 %i.k, 64                     ; 2 uses
  %i.o = icmp sgt i32 %i.n, %i.m
  br i1 %i.o, label %bb.e, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie14allocDataBlockEi.exit

bb.e:                                             ; preds = %bb.d
  %i.p = icmp slt i32 %i.m, 131072
  br i1 %i.p, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = icmp samesign ult i32 %i.m, 1114112
  br i1 %i.q, label %bb.g, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie14allocDataBlockEi.exit.thread

bb.g:                                             ; preds = %bb.f, %bb.e
  %.014.i = phi i32 [ 131072, %bb.e ], [ 1114112, %bb.f ] ; 2 uses
  %i.r = shl nuw nsw i32 %.014.i, 2
  %i.s = zext nneg i32 %i.r to i64
  %i.t = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.s) #11 ; 3 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie14allocDataBlockEi.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = load i32, ptr %i.j, align 4
  %i.x = sext i32 %i.w to i64
  %i.y = shl nsw i64 %i.x, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.t, ptr align 4 %i.v, i64 %i.y, i1 false)
  tail call void @uprv_free_78(ptr noundef %i.v) #10
  store ptr %i.t, ptr %i.u, align 8
  store i32 %.014.i, ptr %i.l, align 8
  br label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie14allocDataBlockEi.exit

_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie14allocDataBlockEi.exit: ; preds = %bb.d, %bb.h
  store i32 %i.n, ptr %i.j, align 4
  %i.z = icmp slt i32 %i.k, 0
  br i1 %i.z, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie14allocDataBlockEi.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie14allocDataBlockEi.exit
  %i.aa = and i32 %1, -4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = or i32 %1, 3
  %i.ad = sext i32 %i.aa to i64
  %i.ae = sext i32 %i.ac to i64
  %i.af = zext nneg i32 %i.k to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %bb.j ], [ %i.af, %bb.i ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ %i.ad, %bb.i ] ; 5 uses
  %i.ag = load ptr, ptr %i.ab, align 8
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv51 ; 4 uses
  %i.ai = load ptr, ptr %0, align 8
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %indvars.iv
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = insertelement <4 x i32> poison, i32 %i.ak, i64 0
  %i.am = shufflevector <4 x i32> %i.al, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  store <4 x i32> %i.am, ptr %i.ah, align 4
  %.0.ptr.4.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store <4 x i32> %i.am, ptr %.0.ptr.4.i, align 4
  %.0.ptr.8.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store <4 x i32> %i.am, ptr %.0.ptr.8.i, align 4
  %.0.ptr.12.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  store <4 x i32> %i.am, ptr %.0.ptr.12.i, align 4
  %i.an = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv
  store i8 1, ptr %i.an, align 1
  %i.ao = load ptr, ptr %0, align 8
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %indvars.iv
  %i.aq = trunc nuw i64 %indvars.iv51 to i32
  store i32 %i.aq, ptr %i.ap, align 4
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 16
  %i.ar = icmp slt i64 %indvars.iv, %i.ae
  br i1 %i.ar, label %bb.j, label %bb.k, !llvm.loop !91

bb.k:                                             ; preds = %bb.j
  %i.as = load ptr, ptr %0, align 8
  %i.at = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.b
  %i.au = load i32, ptr %i.at, align 4
  br label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie14allocDataBlockEi.exit.thread

bb.l:                                             ; preds = %bb.c
  %i.av = add nsw i32 %i.k, 16                    ; 2 uses
  %i.aw = icmp sgt i32 %i.av, %i.m
  br i1 %i.aw, label %bb.m, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie14allocDataBlockEi.exit33

bb.m:                                             ; preds = %bb.l
  %i.ax = icmp slt i32 %i.m, 131072
  br i1 %i.ax, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = icmp samesign ult i32 %i.m, 1114112
  br i1 %i.ay, label %bb.o, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie14allocDataBlockEi.exit.thread

bb.o:                                             ; preds = %bb.n, %bb.m
  %.014.i31 = phi i32 [ 131072, %bb.m ], [ 1114112, %bb.n ] ; 2 uses
  %i.az = shl nuw nsw i32 %.014.i31, 2
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.ba) #11 ; 3 uses
  %.not.i32 = icmp eq ptr %i.bb, null
  br i1 %.not.i32, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie14allocDataBlockEi.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %i.be = load i32, ptr %i.j, align 4
  %i.bf = sext i32 %i.be to i64
  %i.bg = shl nsw i64 %i.bf, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bb, ptr align 4 %i.bd, i64 %i.bg, i1 false)
  tail call void @uprv_free_78(ptr noundef %i.bd) #10
  store ptr %i.bb, ptr %i.bc, align 8
  store i32 %.014.i31, ptr %i.l, align 8
  br label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie14allocDataBlockEi.exit33

_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie14allocDataBlockEi.exit33: ; preds = %bb.l, %bb.p
  store i32 %i.av, ptr %i.j, align 4
  %i.bh = icmp slt i32 %i.k, 0
  br i1 %i.bh, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie14allocDataBlockEi.exit.thread, label %bb.q

bb.q:                                             ; preds = %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie14allocDataBlockEi.exit33
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = zext nneg i32 %i.k to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bk ; 4 uses
  %i.bm = load ptr, ptr %0, align 8
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.b
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = insertelement <4 x i32> poison, i32 %i.bo, i64 0
  %i.bq = shufflevector <4 x i32> %i.bp, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  store <4 x i32> %i.bq, ptr %i.bl, align 4
  %.0.ptr.4.i37 = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store <4 x i32> %i.bq, ptr %.0.ptr.4.i37, align 4
  %.0.ptr.8.i41 = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  store <4 x i32> %i.bq, ptr %.0.ptr.8.i41, align 4
  %.0.ptr.12.i45 = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  store <4 x i32> %i.bq, ptr %.0.ptr.12.i45, align 4
  store i8 1, ptr %i.c, align 1
  %i.br = load ptr, ptr %0, align 8
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.b
  store i32 %i.k, ptr %i.bs, align 4
  br label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie14allocDataBlockEi.exit.thread

_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie14allocDataBlockEi.exit.thread: ; preds = %bb.n, %bb.o, %bb.f, %bb.g, %bb.q, %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie14allocDataBlockEi.exit33, %bb.k, %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie14allocDataBlockEi.exit, %bb.b
  %.2 = phi i32 [ %i.h, %bb.b ], [ %i.k, %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie14allocDataBlockEi.exit ], [ %i.au, %bb.k ], [ %i.k, %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie14allocDataBlockEi.exit33 ], [ %i.k, %bb.q ], [ -1, %bb.f ], [ -1, %bb.g ], [ -1, %bb.o ], [ -1, %bb.n ]
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN6icu_7812_GLOBAL__N_111MixedBlocks6extendIjEEvPKT_iii(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, ptr noundef nonnull readonly captures(none) %1, i32 noundef range(i32 0, -2147483648) %2, i32 noundef range(i32 128, -2147483648) %3) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = sub nsw i32 %2, %i.b
  %i.d = tail call i32 @llvm.smax.i32(i32 %i.c, i32 -1)
  %.0 = add i32 %i.d, 1                           ; 2 uses
  %i.e = sub nsw i32 %3, %i.b                     ; 2 uses
  %.not25 = icmp sgt i32 %.0, %i.e
  br i1 %.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN6icu_7812_GLOBAL__N_111MixedBlocks8addEntryIjEEvPKT_iji.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN6icu_7812_GLOBAL__N_111MixedBlocks8addEntryIjEEvPKT_iji.exit
  %.126 = phi i32 [ %.0, %.lr.ph ], [ %i.j, %_ZN6icu_7812_GLOBAL__N_111MixedBlocks8addEntryIjEEvPKT_iji.exit ] ; 4 uses
  %.val = load i32, ptr %i.a, align 8
  %.fr46.i.i = freeze i32 %.val                   ; 4 uses
  %i.i = add nsw i32 %.fr46.i.i, %.126
  %i.j = add i32 %.126, 1                         ; 4 uses
  %i.k = sext i32 %.126 to i64
  %i.l = getelementptr inbounds [4 x i8], ptr %1, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4
  %i.n = sext i32 %i.j to i64
  %i.o = sext i32 %i.i to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  %.0.i = phi i32 [ %i.s, %bb.c ], [ %i.m, %bb.b ]
  %i.p = mul i32 %.0.i, 37
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.r = load i32, ptr %i.q, align 4
  %i.s = add i32 %i.p, %i.r                       ; 3 uses
  %i.t = icmp slt i64 %indvars.iv.next.i, %i.o
  br i1 %i.t, label %bb.c, label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeIjEEjPKT_i.exit, !llvm.loop !46

_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeIjEEjPKT_i.exit: ; preds = %bb.c
  %i.u = load i32, ptr %i.f, align 8
  %i.v = shl i32 %i.s, %i.u                       ; 3 uses
  %i.w = load i32, ptr %i.g, align 4              ; 4 uses
  %i.x = add nsw i32 %i.w, -1
  %i.y = urem i32 %i.s, %i.x
  %i.z = add nuw i32 %i.y, 1                      ; 8 uses
  %i.aa = load ptr, ptr %0, align 8               ; 5 uses
  %i.ab = sext i32 %i.z to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4            ; 3 uses
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeIjEEjPKT_i.exit
  %i.af = load i32, ptr %i.h, align 4             ; 2 uses
  %i.ag = xor i32 %i.af, -1                       ; 2 uses
  %i.ah = zext nneg i32 %.126 to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ah
  %i.aj = icmp sgt i32 %.fr46.i.i, 0
  br i1 %i.aj, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us.i.i
  %i.ak = phi i32 [ %i.ay, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us.i.i ], [ %i.ad, %.lr.ph.i.i ] ; 2 uses
  %.02237.us.i.i = phi i32 [ %i.av, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us.i.i ], [ %i.z, %.lr.ph.i.i ] ; 2 uses
  %i.al = and i32 %i.ak, %i.ag
  %i.am = icmp eq i32 %i.al, %i.v
  br i1 %i.am, label %.lr.ph.i.preheader.us.i.i, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us.i.i

.lr.ph.i.preheader.us.i.i:                        ; preds = %.lr.ph.split.us.i.i
  %i.an = and i32 %i.ak, %i.af
  %i.ao = add i32 %i.an, -1
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ap
  br label %.lr.ph.i.us.i.i

.lr.ph.i.us.i.i:                                  ; preds = %bb.d, %.lr.ph.i.preheader.us.i.i
  %.010.i.us.i.i = phi i32 [ %i.bc, %bb.d ], [ %.fr46.i.i, %.lr.ph.i.preheader.us.i.i ] ; 2 uses
  %.069.i.us.i.i = phi ptr [ %i.bb, %bb.d ], [ %i.ai, %.lr.ph.i.preheader.us.i.i ] ; 2 uses
  %.078.i.us.i.i = phi ptr [ %i.ba, %bb.d ], [ %i.aq, %.lr.ph.i.preheader.us.i.i ] ; 2 uses
  %i.ar = load i32, ptr %.078.i.us.i.i, align 4
  %i.as = load i32, ptr %.069.i.us.i.i, align 4
  %i.at = icmp eq i32 %i.ar, %i.as
  br i1 %i.at, label %bb.d, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us.i.i

_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us.i.i: ; preds = %.lr.ph.i.us.i.i, %.lr.ph.split.us.i.i
  %i.au = add nsw i32 %.02237.us.i.i, %i.z
  %i.av = srem i32 %i.au, %i.w                    ; 3 uses
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4            ; 2 uses
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %._crit_edge.i.i, label %.lr.ph.split.us.i.i, !llvm.loop !48

bb.d:                                             ; preds = %.lr.ph.i.us.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.078.i.us.i.i, i64 4
  %i.bb = getelementptr inbounds nuw i8, ptr %.069.i.us.i.i, i64 4
  %i.bc = add nsw i32 %.010.i.us.i.i, -1
  %i.bd = icmp sgt i32 %.010.i.us.i.i, 1
  br i1 %i.bd, label %.lr.ph.i.us.i.i, label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryIjjEEiPKT_PKT0_ij.exit.i, !llvm.loop !49

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %i.be = icmp eq i32 %.fr46.i.i, 0
  br i1 %i.be, label %.lr.ph.split.split.us.i.i, label %.lr.ph.split.split.i.i

.lr.ph.split.split.us.i.i:                        ; preds = %.lr.ph.split.i.i, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us40.i.i
  %i.bf = phi i32 [ %i.bm, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us40.i.i ], [ %i.ad, %.lr.ph.split.i.i ]
  %.02237.us39.i.i = phi i32 [ %i.bj, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us40.i.i ], [ %i.z, %.lr.ph.split.i.i ] ; 2 uses
  %i.bg = and i32 %i.bf, %i.ag
  %i.bh = icmp eq i32 %i.bg, %i.v
  br i1 %i.bh, label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryIjjEEiPKT_PKT0_ij.exit.i, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us40.i.i

_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us40.i.i: ; preds = %.lr.ph.split.split.us.i.i
  %i.bi = add nsw i32 %.02237.us39.i.i, %i.z
  %i.bj = srem i32 %i.bi, %i.w                    ; 3 uses
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4            ; 2 uses
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %._crit_edge.i.i, label %.lr.ph.split.split.us.i.i, !llvm.loop !48

._crit_edge.i.i:                                  ; preds = %.lr.ph.split.split.i.i, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us40.i.i, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us.i.i, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeIjEEjPKT_i.exit
  %.022.lcssa.i.i = phi i32 [ %i.z, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeIjEEjPKT_i.exit ], [ %i.av, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us.i.i ], [ %i.bj, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us40.i.i ], [ %i.bq, %.lr.ph.split.split.i.i ]
  %i.bo = xor i32 %.022.lcssa.i.i, -1
  br label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryIjjEEiPKT_PKT0_ij.exit.i

.lr.ph.split.split.i.i:                           ; preds = %.lr.ph.split.i.i, %.lr.ph.split.split.i.i
  %.02237.i.i = phi i32 [ %i.bq, %.lr.ph.split.split.i.i ], [ %i.z, %.lr.ph.split.i.i ]
  %i.bp = add nsw i32 %.02237.i.i, %i.z
  %i.bq = srem i32 %i.bp, %i.w                    ; 3 uses
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %._crit_edge.i.i, label %.lr.ph.split.split.i.i, !llvm.loop !48

_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryIjjEEiPKT_PKT0_ij.exit.i: ; preds = %.lr.ph.split.split.us.i.i, %bb.d, %._crit_edge.i.i
  %.3.ph.i.i = phi i32 [ %i.bo, %._crit_edge.i.i ], [ %.02237.us.i.i, %bb.d ], [ %.02237.us39.i.i, %.lr.ph.split.split.us.i.i ] ; 2 uses
  %i.bv = icmp slt i32 %.3.ph.i.i, 0
  br i1 %i.bv, label %bb.e, label %_ZN6icu_7812_GLOBAL__N_111MixedBlocks8addEntryIjEEvPKT_iji.exit

bb.e:                                             ; preds = %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryIjjEEiPKT_PKT0_ij.exit.i
  %i.bw = or i32 %i.v, %i.j
  %i.bx = xor i32 %.3.ph.i.i, -1
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.by
  store i32 %i.bw, ptr %i.bz, align 4
  br label %_ZN6icu_7812_GLOBAL__N_111MixedBlocks8addEntryIjEEvPKT_iji.exit

_ZN6icu_7812_GLOBAL__N_111MixedBlocks8addEntryIjEEvPKT_iji.exit: ; preds = %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryIjjEEiPKT_PKT0_ij.exit.i, %bb.e
  %.not = icmp sgt i32 %i.j, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !92
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN6icu_7812_GLOBAL__N_111MixedBlocks6extendItEEvPKT_iii(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, ptr noundef readonly captures(none) %1, i32 noundef range(i32 -131012, 132097) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = add i32 %3, 1
  %i.d = sub i32 %i.c, %i.b
  %.0 = tail call i32 @llvm.smax.i32(i32 %2, i32 %i.d) ; 2 uses
  %i.e = sub nsw i32 %4, %i.b                     ; 2 uses
  %.not1726 = icmp sgt i32 %.0, %i.e
  br i1 %.not1726, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN6icu_7812_GLOBAL__N_111MixedBlocks8addEntryItEEvPKT_iji.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN6icu_7812_GLOBAL__N_111MixedBlocks8addEntryItEEvPKT_iji.exit
  %.127 = phi i32 [ %.0, %.lr.ph ], [ %i.j, %_ZN6icu_7812_GLOBAL__N_111MixedBlocks8addEntryItEEvPKT_iji.exit ] ; 3 uses
  %.val = load i32, ptr %i.a, align 8
  %.fr46.i.i = freeze i32 %.val                   ; 4 uses
  %i.i = add nsw i32 %.fr46.i.i, %.127
  %i.j = add i32 %.127, 1                         ; 4 uses
  %i.k = sext i32 %.127 to i64
  %i.l = getelementptr inbounds [2 x i8], ptr %1, i64 %i.k ; 2 uses
  %i.m = load i16, ptr %i.l, align 2
  %i.n = zext i16 %i.m to i32
  %i.o = sext i32 %i.j to i64
  %i.p = sext i32 %i.i to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %.0.i = phi i32 [ %i.u, %bb.c ], [ %i.n, %bb.b ]
  %i.q = mul i32 %.0.i, 37
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.r = getelementptr inbounds [2 x i8], ptr %1, i64 %indvars.iv.i
  %i.s = load i16, ptr %i.r, align 2
  %i.t = zext i16 %i.s to i32
  %i.u = add i32 %i.q, %i.t                       ; 3 uses
  %i.v = icmp slt i64 %indvars.iv.next.i, %i.p
  br i1 %i.v, label %bb.c, label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeItEEjPKT_i.exit, !llvm.loop !93

_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeItEEjPKT_i.exit: ; preds = %bb.c
  %i.w = load i32, ptr %i.f, align 8
  %i.x = shl i32 %i.u, %i.w                       ; 3 uses
  %i.y = load i32, ptr %i.g, align 4              ; 4 uses
  %i.z = add nsw i32 %i.y, -1
  %i.aa = urem i32 %i.u, %i.z
  %i.ab = add nuw i32 %i.aa, 1                    ; 8 uses
end_hunk_0
