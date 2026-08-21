Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/umutablecptrie?download=true
inline.NumInlined: 131
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN12_GLOBAL__N_18getRangeEPKviPFjS1_jES1_Pj:bb.a

_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie8getRangeEiPFjPKvjES3_Pj.exit: ; preds = %.lr.ph.split.us.i, %_ZN6icu_7812_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES2_.exit147.i, %bb.ad, %bb.a, %bb.c, %bb.f, %bb.s, %bb.y, %_ZN6icu_7812_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES2_.exit150.i
  %.5110.i = phi i32 [ 1114111, %bb.c ], [ -1, %bb.a ], [ 1114111, %bb.f ], [ %spec.select.i, %_ZN6icu_7812_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES2_.exit150.i ], [ %i.ab, %bb.s ], [ %i.al, %bb.y ], [ %.2100175.i, %_ZN6icu_7812_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES2_.exit147.i ], [ %i.bc, %bb.ad ], [ %.098.i, %.lr.ph.split.us.i ]
  ret i32 %.5110.i
}

; Function Attrs: mustprogress uwtable
define void @umutablecptrie_set_78(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !8
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie3setEijR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(69696) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie3setEijR10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69696) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !8
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ugt i32 %1, 1114111
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %3, align 4, !tbaa !8
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !21   ; 2 uses
  %.not.i = icmp slt i32 %1, %i.e
  br i1 %.not.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw nsw i32 %1, 512
  %i.g = and i32 %i.f, 4193792                    ; 2 uses
  %i.h = ashr i32 %i.e, 4                         ; 2 uses
  %i.i = lshr exact i32 %i.g, 4                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !15
  %i.l = icmp sgt i32 %i.i, %i.k
  br i1 %i.l, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.m = tail call noalias dereferenceable_or_null(278528) ptr @uprv_malloc_78(i64 noundef 278528) #14 ; 3 uses
  %.not22.i = icmp eq ptr %i.m, null
  br i1 %.not22.i, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie15ensureHighStartEi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.o = shl nsw i32 %i.h, 2
  %i.p = sext i32 %i.o to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.m, ptr align 4 %i.n, i64 %i.p, i1 false)
  tail call void @uprv_free_78(ptr noundef %i.n)
  store ptr %i.m, ptr %0, align 8, !tbaa !10
  store i32 69632, ptr %i.j, align 8, !tbaa !15
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = sext i32 %i.h to i64
  %i.t = zext nneg i32 %i.i to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.i ], [ %i.s, %bb.h ] ; 3 uses
  %i.u = getelementptr inbounds i8, ptr %i.q, i64 %indvars.iv.i
  store i8 0, ptr %i.u, align 1, !tbaa !33
  %i.v = load i32, ptr %i.r, align 8, !tbaa !19
  %i.w = load ptr, ptr %0, align 8, !tbaa !10
  %i.x = getelementptr inbounds [4 x i8], ptr %i.w, i64 %indvars.iv.i
  store i32 %i.v, ptr %i.x, align 4, !tbaa !26
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.y = icmp slt i64 %indvars.iv.next.i, %i.t
  br i1 %i.y, label %bb.i, label %.critedge.thread.i, !llvm.loop !41

.critedge.thread.i:                               ; preds = %bb.i
  store i32 %i.g, ptr %i.d, align 8, !tbaa !21
  br label %bb.j

bb.j:                                             ; preds = %.critedge.thread.i, %bb.d
  %i.z = lshr i32 %1, 4
  %i.aa = tail call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie12getDataBlockEi(ptr noundef nonnull align 8 dereferenceable(69696) %0, i32 noundef %i.z) ; 2 uses
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie15ensureHighStartEi.exit, label %bb.k

_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie15ensureHighStartEi.exit: ; preds = %bb.f, %bb.j
  store i32 7, ptr %3, align 4, !tbaa !8
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !24
  %i.ae = and i32 %1, 15
  %i.af = add nuw nsw i32 %i.aa, %i.ae
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ag
  store i32 %2, ptr %i.ah, align 4, !tbaa !26
  br label %bb.l

bb.l:                                             ; preds = %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie15ensureHighStartEi.exit, %bb.k, %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @umutablecptrie_setRange_78(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %4, align 4, !tbaa !8
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie8setRangeEiijR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(69696) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie8setRangeEiijR10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69696) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %4, align 4, !tbaa !8
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ugt i32 %1, 1114111
  %i.d = icmp ugt i32 %2, 1114111
  %or.cond = or i1 %i.c, %i.d
  %i.e = icmp sgt i32 %1, %2
  %or.cond60 = or i1 %i.e, %or.cond
  br i1 %or.cond60, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !21   ; 2 uses
  %.not.i = icmp slt i32 %2, %i.g
  br i1 %.not.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = add nuw nsw i32 %2, 512
  %i.i = and i32 %i.h, 4193792                    ; 2 uses
  %i.j = ashr i32 %i.g, 4                         ; 2 uses
  %i.k = lshr exact i32 %i.i, 4                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !15
  %i.n = icmp sgt i32 %i.k, %i.m
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.o = tail call noalias dereferenceable_or_null(278528) ptr @uprv_malloc_78(i64 noundef 278528) #14 ; 3 uses
  %.not22.i = icmp eq ptr %i.o, null
  br i1 %.not22.i, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.q = shl nsw i32 %i.j, 2
  %i.r = sext i32 %i.q to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.p, i64 %i.r, i1 false)
  tail call void @uprv_free_78(ptr noundef %i.p)
  store ptr %i.o, ptr %0, align 8, !tbaa !10
  store i32 69632, ptr %i.l, align 8, !tbaa !15
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = sext i32 %i.j to i64
  %i.v = zext nneg i32 %i.k to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.h ], [ %i.u, %bb.g ] ; 3 uses
  %i.w = getelementptr inbounds i8, ptr %i.s, i64 %indvars.iv.i
  store i8 0, ptr %i.w, align 1, !tbaa !33
  %i.x = load i32, ptr %i.t, align 8, !tbaa !19
  %i.y = load ptr, ptr %0, align 8, !tbaa !10
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %indvars.iv.i
  store i32 %i.x, ptr %i.z, align 4, !tbaa !26
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.aa = icmp slt i64 %indvars.iv.next.i, %i.v
  br i1 %i.aa, label %bb.h, label %.critedge.thread.i, !llvm.loop !41

.critedge.thread.i:                               ; preds = %bb.h
  store i32 %i.i, ptr %i.f, align 8, !tbaa !21
  br label %bb.i

bb.i:                                             ; preds = %.critedge.thread.i, %bb.c
  %i.ab = add nuw nsw i32 %2, 1                   ; 4 uses
  %i.ac = and i32 %1, 15                          ; 5 uses
  %.not57 = icmp eq i32 %i.ac, 0
  br i1 %.not57, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = lshr i32 %1, 4
  %i.ae = tail call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie12getDataBlockEi(ptr noundef nonnull align 8 dereferenceable(69696) %0, i32 noundef %i.ad) ; 2 uses
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = add nuw nsw i32 %1, 15
  %i.ah = and i32 %i.ag, 4194288                  ; 3 uses
  %.not58.not = icmp samesign ugt i32 %i.ah, %i.ab
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !24 ; 2 uses
  %i.ak = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ak ; 4 uses
  br i1 %.not58.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = shl nuw nsw i32 %i.ac, 2
  %.idx = zext nneg i32 %i.am to i64              ; 4 uses
  %5 = lshr exact i64 %.idx, 2
  %6 = sub nuw nsw i64 16, %5                     ; 2 uses
  %min.iters.check = icmp samesign ugt i32 %i.ac, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.body

vector.body:                                      ; preds = %bb.l
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %n.vec = and i64 %6, 24                         ; 2 uses
  %i.an = shl nuw nsw i64 %n.vec, 2
  %i.ao = add nuw nsw i64 %i.an, %.idx
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.ap, align 4, !tbaa !26
  store <4 x i32> %broadcast.splat, ptr %i.aq, align 4, !tbaa !26
  %cmp.n = icmp eq i64 %6, %n.vec
  br i1 %cmp.n, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.l, %vector.body
  %.07.i.idx.ph = phi i64 [ %.idx, %bb.l ], [ %i.ao, %vector.body ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.07.i.idx = phi i64 [ %.07.i.add, %.lr.ph.i ], [ %.07.i.idx.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.07.i.ptr = getelementptr inbounds nuw i8, ptr %i.al, i64 %.07.i.idx
  %.07.i.add = add nuw nsw i64 %.07.i.idx, 4
  store i32 %3, ptr %.07.i.ptr, align 4, !tbaa !26
  %i.ar = icmp samesign ult i64 %.07.i.idx, 60
  br i1 %i.ar, label %.lr.ph.i, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit, !llvm.loop !42

bb.m:                                             ; preds = %bb.k
  %i.as = and i32 %i.ab, 15                       ; 2 uses
  %i.at = zext nneg i32 %i.as to i64              ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.at
  %i.av = icmp samesign ult i32 %i.ac, %i.as
  br i1 %i.av, label %.lr.ph.preheader.i, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71

.lr.ph.preheader.i:                               ; preds = %bb.m
  %i.aw = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.aw ; 3 uses
  %i.ay = ptrtoaddr ptr %i.aj to i64              ; 2 uses
  %i.az = shl nuw nsw i64 %i.ak, 2                ; 2 uses
  %i.ba = shl nuw nsw i64 %i.aw, 2                ; 2 uses
  %i.bb = add i64 %i.az, %i.ay                    ; 2 uses
  %i.bc = add i64 %i.bb, %i.ba
  %i.bd = add i64 %i.bc, 4
  %i.be = shl nuw nsw i64 %i.at, 2
  %i.bf = add i64 %i.bb, %i.be
  %i.bg = tail call i64 @llvm.umax.i64(i64 %i.bd, i64 %i.bf)
  %i.bh = xor i64 %i.ay, -1
  %i.bi = add i64 %i.bg, %i.bh
  %i.bj = add nuw nsw i64 %i.az, %i.ba
  %i.bk = sub i64 %i.bi, %i.bj                    ; 2 uses
  %i.bl = lshr i64 %i.bk, 2
  %i.bm = add nuw nsw i64 %i.bl, 1                ; 2 uses
  %min.iters.check93 = icmp ult i64 %i.bk, 28
  br i1 %min.iters.check93, label %.lr.ph.i61.preheader, label %vector.ph94

vector.ph94:                                      ; preds = %.lr.ph.preheader.i
  %n.vec95 = and i64 %i.bm, 9223372036854775800   ; 3 uses
  %i.bn = shl i64 %n.vec95, 2
  %i.bo = getelementptr i8, ptr %i.ax, i64 %i.bn
  %broadcast.splatinsert96 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat97 = shufflevector <4 x i32> %broadcast.splatinsert96, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body98

vector.body98:                                    ; preds = %vector.body98, %vector.ph94
  %index99 = phi i64 [ 0, %vector.ph94 ], [ %index.next100, %vector.body98 ] ; 2 uses
  %i.bp = shl i64 %index99, 2
  %next.gep = getelementptr i8, ptr %i.ax, i64 %i.bp ; 2 uses
  %i.bq = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat97, ptr %next.gep, align 4, !tbaa !26
  store <4 x i32> %broadcast.splat97, ptr %i.bq, align 4, !tbaa !26
  %index.next100 = add nuw i64 %index99, 8        ; 2 uses
  %i.br = icmp eq i64 %index.next100, %n.vec95
  br i1 %i.br, label %middle.block101, label %vector.body98, !llvm.loop !45

middle.block101:                                  ; preds = %vector.body98
  %cmp.n102 = icmp eq i64 %i.bm, %n.vec95
  br i1 %cmp.n102, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71, label %.lr.ph.i61.preheader

.lr.ph.i61.preheader:                             ; preds = %.lr.ph.preheader.i, %middle.block101
  %.07.i62.ph = phi ptr [ %i.ax, %.lr.ph.preheader.i ], [ %i.bo, %middle.block101 ]
  br label %.lr.ph.i61

.lr.ph.i61:                                       ; preds = %.lr.ph.i61.preheader, %.lr.ph.i61
  %.07.i62 = phi ptr [ %i.bs, %.lr.ph.i61 ], [ %.07.i62.ph, %.lr.ph.i61.preheader ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.07.i62, i64 4 ; 2 uses
  store i32 %3, ptr %.07.i62, align 4, !tbaa !26
  %i.bt = icmp ult ptr %i.bs, %i.au
  br i1 %i.bt, label %.lr.ph.i61, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71, !llvm.loop !46

_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit:    ; preds = %.lr.ph.i, %vector.body, %bb.i
  %.248 = phi i32 [ %1, %bb.i ], [ %i.ah, %vector.body ], [ %i.ah, %.lr.ph.i ] ; 3 uses
  %i.bu = and i32 %i.ab, 15                       ; 2 uses
  %i.bv = and i32 %i.ab, 4194288                  ; 2 uses
  %i.bw = icmp samesign ult i32 %.248, %i.bv
  br i1 %i.bw, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bz = zext nneg i32 %.248 to i64
  %i.ca = insertelement <4 x i32> poison, i32 %3, i64 0
  %i.cb = shufflevector <4 x i32> %i.ca, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit67
  %indvars.iv = phi i64 [ %i.bz, %.lr.ph ], [ %indvars.iv.next, %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit67 ] ; 2 uses
  %i.cc = lshr i64 %indvars.iv, 4                 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !33
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %bb.o, label %.lr.ph.i65

bb.o:                                             ; preds = %bb.n
  %i.cg = load ptr, ptr %0, align 8, !tbaa !10
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.cc
  store i32 %3, ptr %i.ch, align 4, !tbaa !26
  br label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit67

.lr.ph.i65:                                       ; preds = %bb.n
  %i.ci = load ptr, ptr %i.by, align 8, !tbaa !24
  %i.cj = load ptr, ptr %0, align 8, !tbaa !10
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.cc
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !26
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.cm ; 4 uses
  store <4 x i32> %i.cb, ptr %i.cn, align 4, !tbaa !26
  %.07.i66.ptr.4 = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store <4 x i32> %i.cb, ptr %.07.i66.ptr.4, align 4, !tbaa !26
  %.07.i66.ptr.8 = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  store <4 x i32> %i.cb, ptr %.07.i66.ptr.8, align 4, !tbaa !26
  %.07.i66.ptr.12 = getelementptr inbounds nuw i8, ptr %i.cn, i64 48
  store <4 x i32> %i.cb, ptr %.07.i66.ptr.12, align 4, !tbaa !26
  br label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit67

_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit67:  ; preds = %.lr.ph.i65, %bb.o
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16 ; 2 uses
  %i.co = trunc nuw i64 %indvars.iv.next to i32   ; 2 uses
  %i.cp = icmp sgt i32 %i.bv, %i.co
  br i1 %i.cp, label %bb.n, label %._crit_edge, !llvm.loop !47

._crit_edge:                                      ; preds = %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit67, %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit
  %.3.lcssa = phi i32 [ %.248, %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit ], [ %i.co, %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit67 ]
  %.not59 = icmp eq i32 %i.bu, 0
  br i1 %.not59, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.cq = lshr i32 %.3.lcssa, 4
  %i.cr = tail call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie12getDataBlockEi(ptr noundef nonnull align 8 dereferenceable(69696) %0, i32 noundef %i.cq) ; 2 uses
  %i.cs = icmp sgt i32 %i.cr, -1
  br i1 %i.cs, label %.lr.ph.preheader.i68, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71.sink.split

.lr.ph.preheader.i68:                             ; preds = %bb.p
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !24 ; 2 uses
  %i.cv = zext nneg i32 %i.cr to i64              ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.cv ; 5 uses
  %i.cx = zext nneg i32 %i.bu to i64              ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.cx
  %i.cz = ptrtoaddr ptr %i.cu to i64              ; 2 uses
  %i.da = shl nuw nsw i64 %i.cv, 2                ; 2 uses
  %i.db = shl nuw nsw i64 %i.cx, 2
  %i.dc = add nuw i64 %i.da, %i.cz
  %i.dd = tail call i64 @llvm.umax.i64(i64 %i.db, i64 4)
  %i.de = add nuw i64 %i.dc, %i.dd
  %i.df = xor i64 %i.cz, -1
  %i.dg = add i64 %i.de, %i.df
  %i.dh = sub i64 %i.dg, %i.da                    ; 2 uses
  %i.di = lshr i64 %i.dh, 2
  %i.dj = add nuw nsw i64 %i.di, 1                ; 2 uses
  %min.iters.check105 = icmp ult i64 %i.dh, 28
  br i1 %min.iters.check105, label %.lr.ph.i69.preheader, label %vector.body110

vector.body110:                                   ; preds = %.lr.ph.preheader.i68
  %broadcast.splatinsert108 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat109 = shufflevector <4 x i32> %broadcast.splatinsert108, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %n.vec107 = and i64 %i.dj, 9223372036854775800  ; 2 uses
  %i.dk = shl i64 %n.vec107, 2
  %i.dl = getelementptr i8, ptr %i.cw, i64 %i.dk
  %i.dm = getelementptr i8, ptr %i.cw, i64 16
  store <4 x i32> %broadcast.splat109, ptr %i.cw, align 4, !tbaa !26
  store <4 x i32> %broadcast.splat109, ptr %i.dm, align 4, !tbaa !26
  %cmp.n115 = icmp eq i64 %i.dj, %n.vec107
  br i1 %cmp.n115, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71, label %.lr.ph.i69.preheader

.lr.ph.i69.preheader:                             ; preds = %.lr.ph.preheader.i68, %vector.body110
  %.07.i70.ph = phi ptr [ %i.cw, %.lr.ph.preheader.i68 ], [ %i.dl, %vector.body110 ]
  br label %.lr.ph.i69

.lr.ph.i69:                                       ; preds = %.lr.ph.i69.preheader, %.lr.ph.i69
  %.07.i70 = phi ptr [ %i.dn, %.lr.ph.i69 ], [ %.07.i70.ph, %.lr.ph.i69.preheader ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.07.i70, i64 4 ; 2 uses
  store i32 %3, ptr %.07.i70, align 4, !tbaa !26
  %i.do = icmp ult ptr %i.dn, %i.cy
  br i1 %i.do, label %.lr.ph.i69, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71, !llvm.loop !48

_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71.sink.split: ; preds = %bb.p, %bb.j, %bb.e, %bb.b
  %.sink = phi i32 [ 7, %bb.j ], [ 7, %bb.e ], [ 1, %bb.b ], [ 7, %bb.p ]
  store i32 %.sink, ptr %4, align 4, !tbaa !8
  br label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71

_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71:  ; preds = %.lr.ph.i61, %.lr.ph.i69, %middle.block101, %vector.body110, %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71.sink.split, %bb.m, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define ptr @umutablecptrie_buildImmutable_78(ptr nofree noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [1024 x i16], align 16            ; 7 uses
  %4 = alloca %"class.icu_78::(anonymous namespace)::MixedBlocks", align 8 ; 17 uses
  %i.b = alloca [2176 x i16], align 16            ; 7 uses
  %i.c = alloca [128 x i32], align 16             ; 6 uses
  %5 = alloca %"class.icu_78::(anonymous namespace)::AllSameBlocks", align 4 ; 16 uses
  %6 = alloca %"class.icu_78::(anonymous namespace)::MixedBlocks", align 8 ; 33 uses
  %i.d = load i32, ptr %3, align 4, !tbaa !8
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie5buildE11UCPTrieType17UCPTrieValueWidthR10UErrorCode.exit

bb.b:                                             ; preds = %bb.a
  %or.cond.i = icmp ugt i32 %1, 1
  %i.f = icmp ugt i32 %2, 2
  %or.cond5.i = or i1 %or.cond.i, %i.f
  br i1 %or.cond5.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %3, align 4, !tbaa !8
  br label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie5buildE11UCPTrieType17UCPTrieValueWidthR10UErrorCode.exit

bb.d:                                             ; preds = %bb.b
  switch i32 %2, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie10maskValuesEj.exit.i [
    i32 2, label %bb.m
    i32 0, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = load <2 x i32>, ptr %i.g, align 8, !tbaa !26
  %i.i = and <2 x i32> %i.h, splat (i32 65535)
  store <2 x i32> %i.i, ptr %i.g, align 8, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !22
  %i.l = and i32 %i.k, 65535
  store i32 %i.l, ptr %i.j, align 4, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load i32, ptr %i.m, align 8, !tbaa !21
  %i.o = ashr i32 %i.n, 4                         ; 4 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.i.i, label %.preheader.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.r = load ptr, ptr %0, align 8                ; 3 uses
  %wide.trip.count.i.i = zext nneg i32 %i.o to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.s = icmp eq i32 %i.o, 1
  br i1 %i.s, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483646
  br label %bb.g

.preheader.i.i.loopexit.unr-lcssa:                ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %.preheader.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod373 = trunc i32 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod373)
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv.i.i.epil.init
  %i.u = load i8, ptr %i.t, align 1, !tbaa !33
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.f, label %.preheader.i.i

bb.f:                                             ; preds = %.epil.preheader
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.i.i.epil.init ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !26
  %i.y = and i32 %i.x, 65535
  store i32 %i.y, ptr %i.w, align 4, !tbaa !26
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.loopexit.unr-lcssa, %bb.f, %.epil.preheader, %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !27
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph16.i.i, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie10maskValuesEj.exit.i

.lr.ph16.i.i:                                     ; preds = %.preheader.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !24
  br label %bb.l

bb.g:                                             ; preds = %bb.k, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.k ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.k ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv.i.i
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !33
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.i.i ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !26
  %i.aj = and i32 %i.ai, 65535
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !26
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv.next.i.i
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !33
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next.i.i ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !26
  %i.ap = and i32 %i.ao, 65535
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !26
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i.i.loopexit.unr-lcssa, label %bb.g, !llvm.loop !49

bb.l:                                             ; preds = %bb.l, %.lr.ph16.i.i
  %indvars.iv18.i.i = phi i64 [ 0, %.lr.ph16.i.i ], [ %indvars.iv.next19.i.i, %bb.l ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv18.i.i ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !26
  %i.as = and i32 %i.ar, 65535
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !26
  %indvars.iv.next19.i.i = add nuw nsw i64 %indvars.iv18.i.i, 1 ; 2 uses
  %i.at = load i32, ptr %i.z, align 4, !tbaa !27
  %i.au = sext i32 %i.at to i64
  %i.av = icmp slt i64 %indvars.iv.next19.i.i, %i.au
  br i1 %i.av, label %bb.l, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie10maskValuesEj.exit.i, !llvm.loop !50

bb.m:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ax = load <2 x i32>, ptr %i.aw, align 8, !tbaa !26
  %i.ay = and <2 x i32> %i.ax, splat (i32 255)
  store <2 x i32> %i.ay, ptr %i.aw, align 8, !tbaa !26
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !22
  %i.bb = and i32 %i.ba, 255
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !22
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !21
  %i.be = ashr i32 %i.bd, 4                       ; 4 uses
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph.i118.i, label %.preheader.i114.i

.lr.ph.i118.i:                                    ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.bh = load ptr, ptr %0, align 8               ; 3 uses
  %wide.trip.count.i119.i = zext nneg i32 %i.be to i64 ; 2 uses
  %xtraiter375 = and i64 %wide.trip.count.i119.i, 1
  %i.bi = icmp eq i32 %i.be, 1
  br i1 %i.bi, label %.epil.preheader374, label %.lr.ph.i118.i.new

.lr.ph.i118.i.new:                                ; preds = %.lr.ph.i118.i
  %unroll_iter378 = and i64 %wide.trip.count.i119.i, 2147483646
  br label %bb.o

.preheader.i114.i.loopexit.unr-lcssa:             ; preds = %bb.s
  %lcmp.mod376.not = icmp eq i64 %xtraiter375, 0
end_hunk_0
