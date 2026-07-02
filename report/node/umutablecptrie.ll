inline.NumInlined: 129
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN12_GLOBAL__N_18getRangeEPKviPFjS1_jES1_Pj:bb.a

_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie8getRangeEiPFjPKvjES3_Pj.exit: ; preds = %.lr.ph.split.us.i, %_ZN6icu_7812_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES2_.exit147.i, %bb.ad, %bb.a, %bb.c, %bb.f, %bb.s, %bb.y, %_ZN6icu_7812_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES2_.exit150.i
  %.5.i = phi i32 [ 1114111, %bb.c ], [ -1, %bb.a ], [ 1114111, %bb.f ], [ %spec.select.i, %_ZN6icu_7812_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES2_.exit150.i ], [ %i.ab, %bb.s ], [ %i.al, %bb.y ], [ %.2106175.i, %_ZN6icu_7812_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES2_.exit147.i ], [ %i.bc, %bb.ad ], [ %.0104.i, %.lr.ph.split.us.i ]
  ret i32 %.5.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @umutablecptrie_set_78(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %3, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie3setEijR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(69696) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie3setEijR10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69696) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %3, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ugt i32 %1, 1114111
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %3, align 4
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %.not.i = icmp slt i32 %1, %i.e
  br i1 %.not.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw nsw i32 %1, 512
  %i.g = and i32 %i.f, 4193792                    ; 2 uses
  %i.h = ashr i32 %i.e, 4                         ; 2 uses
  %i.i = lshr exact i32 %i.g, 4                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = icmp sgt i32 %i.i, %i.k
  br i1 %i.l, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.m = tail call noalias dereferenceable_or_null(278528) ptr @uprv_malloc_78(i64 noundef 278528) #11 ; 3 uses
  %.not22.i = icmp eq ptr %i.m, null
  br i1 %.not22.i, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie15ensureHighStartEi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = load ptr, ptr %0, align 8                ; 2 uses
  %i.o = shl nsw i32 %i.h, 2
  %i.p = sext i32 %i.o to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.m, ptr align 4 %i.n, i64 %i.p, i1 false)
  tail call void @uprv_free_78(ptr noundef %i.n) #10
  store ptr %i.m, ptr %0, align 8
  store i32 69632, ptr %i.j, align 8
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
  store i8 0, ptr %i.u, align 1
  %i.v = load i32, ptr %i.r, align 8
  %i.w = load ptr, ptr %0, align 8
  %i.x = getelementptr inbounds [4 x i8], ptr %i.w, i64 %indvars.iv.i
  store i32 %i.v, ptr %i.x, align 4
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.y = icmp slt i64 %indvars.iv.next.i, %i.t
  br i1 %i.y, label %bb.i, label %.critedge.thread.i, !llvm.loop !12

.critedge.thread.i:                               ; preds = %bb.i
  store i32 %i.g, ptr %i.d, align 8
  br label %bb.j

bb.j:                                             ; preds = %.critedge.thread.i, %bb.d
  %i.z = lshr i32 %1, 4
  %i.aa = tail call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie12getDataBlockEi(ptr noundef nonnull align 8 dereferenceable(69696) %0, i32 noundef %i.z) ; 2 uses
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie15ensureHighStartEi.exit, label %bb.k

_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie15ensureHighStartEi.exit: ; preds = %bb.f, %bb.j
  store i32 7, ptr %3, align 4
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = and i32 %1, 15
  %i.af = add nuw nsw i32 %i.aa, %i.ae
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ag
  store i32 %2, ptr %i.ah, align 4
  br label %bb.l

bb.l:                                             ; preds = %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie15ensureHighStartEi.exit, %bb.k, %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @umutablecptrie_setRange_78(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %4, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie8setRangeEiijR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(69696) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie8setRangeEiijR10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69696) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %4, align 4
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
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %.not.i = icmp slt i32 %2, %i.g
  br i1 %.not.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = add nuw nsw i32 %2, 512
  %i.i = and i32 %i.h, 4193792                    ; 2 uses
  %i.j = ashr i32 %i.g, 4                         ; 2 uses
  %i.k = lshr exact i32 %i.i, 4                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8
  %i.n = icmp sgt i32 %i.k, %i.m
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.o = tail call noalias dereferenceable_or_null(278528) ptr @uprv_malloc_78(i64 noundef 278528) #11 ; 3 uses
  %.not22.i = icmp eq ptr %i.o, null
  br i1 %.not22.i, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %0, align 8                ; 2 uses
  %i.q = shl nsw i32 %i.j, 2
  %i.r = sext i32 %i.q to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.p, i64 %i.r, i1 false)
  tail call void @uprv_free_78(ptr noundef %i.p) #10
  store ptr %i.o, ptr %0, align 8
  store i32 69632, ptr %i.l, align 8
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
  store i8 0, ptr %i.w, align 1
  %i.x = load i32, ptr %i.t, align 8
  %i.y = load ptr, ptr %0, align 8
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %indvars.iv.i
  store i32 %i.x, ptr %i.z, align 4
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.aa = icmp slt i64 %indvars.iv.next.i, %i.v
  br i1 %i.aa, label %bb.h, label %.critedge.thread.i, !llvm.loop !12

.critedge.thread.i:                               ; preds = %bb.h
  store i32 %i.i, ptr %i.f, align 8
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
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ak = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.al = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.al ; 4 uses
  br i1 %.not58.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = shl nuw nsw i32 %i.ac, 2
  %.idx = zext nneg i32 %i.an to i64              ; 4 uses
  %5 = lshr exact i64 %.idx, 2
  %6 = sub nuw nsw i64 16, %5                     ; 2 uses
  %min.iters.check = icmp samesign ugt i32 %i.ac, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.body

vector.body:                                      ; preds = %bb.l
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %n.vec = and i64 %6, 24                         ; 2 uses
  %i.ao = shl nuw nsw i64 %n.vec, 2
  %i.ap = add nuw nsw i64 %i.ao, %.idx
  %i.aq = getelementptr i8, ptr %i.am, i64 %.idx  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.aq, align 4
  store <4 x i32> %broadcast.splat, ptr %i.ar, align 4
  %cmp.n = icmp eq i64 %6, %n.vec
  br i1 %cmp.n, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.l, %vector.body
  %.07.i.idx.ph = phi i64 [ %.idx, %bb.l ], [ %i.ap, %vector.body ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.07.i.idx = phi i64 [ %.07.i.add, %.lr.ph.i ], [ %.07.i.idx.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.07.i.ptr = getelementptr inbounds nuw i8, ptr %i.am, i64 %.07.i.idx
  %.07.i.add = add nuw nsw i64 %.07.i.idx, 4
  store i32 %3, ptr %.07.i.ptr, align 4
  %i.as = icmp samesign ult i64 %.07.i.idx, 60
  br i1 %i.as, label %.lr.ph.i, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit, !llvm.loop !13

bb.m:                                             ; preds = %bb.k
  %i.at = and i32 %i.ab, 15                       ; 2 uses
  %i.au = zext nneg i32 %i.at to i64              ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.au
  %i.aw = icmp samesign ult i32 %i.ac, %i.at
  br i1 %i.aw, label %.lr.ph.preheader.i, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71

.lr.ph.preheader.i:                               ; preds = %bb.m
  %i.ax = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ax ; 3 uses
  %i.az = shl nuw nsw i64 %i.al, 2                ; 2 uses
  %i.ba = add i64 %i.az, %i.ak                    ; 2 uses
  %i.bb = shl nuw nsw i64 %i.ax, 2                ; 2 uses
  %i.bc = add i64 %i.ba, %i.bb
  %i.bd = add i64 %i.bc, 4
  %i.be = shl nuw nsw i64 %i.au, 2
  %i.bf = add i64 %i.ba, %i.be
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bd, i64 %i.bf)
  %i.bg = xor i64 %i.ak, -1
  %i.bh = add i64 %umax, %i.bg
  %i.bi = add nuw nsw i64 %i.az, %i.bb
  %i.bj = sub i64 %i.bh, %i.bi                    ; 2 uses
  %i.bk = lshr i64 %i.bj, 2
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check93 = icmp ult i64 %i.bj, 28
  br i1 %min.iters.check93, label %.lr.ph.i61.preheader, label %vector.ph94

vector.ph94:                                      ; preds = %.lr.ph.preheader.i
  %n.vec96 = and i64 %i.bl, 9223372036854775800   ; 3 uses
  %i.bm = shl i64 %n.vec96, 2
  %i.bn = getelementptr i8, ptr %i.ay, i64 %i.bm
  %broadcast.splatinsert97 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat98 = shufflevector <4 x i32> %broadcast.splatinsert97, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body99

vector.body99:                                    ; preds = %vector.body99, %vector.ph94
  %index100 = phi i64 [ 0, %vector.ph94 ], [ %index.next101, %vector.body99 ] ; 2 uses
  %i.bo = shl i64 %index100, 2
  %next.gep = getelementptr i8, ptr %i.ay, i64 %i.bo ; 2 uses
  %i.bp = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat98, ptr %next.gep, align 4
  store <4 x i32> %broadcast.splat98, ptr %i.bp, align 4
  %index.next101 = add nuw i64 %index100, 8       ; 2 uses
  %i.bq = icmp eq i64 %index.next101, %n.vec96
  br i1 %i.bq, label %middle.block102, label %vector.body99, !llvm.loop !16

middle.block102:                                  ; preds = %vector.body99
  %cmp.n103 = icmp eq i64 %i.bl, %n.vec96
  br i1 %cmp.n103, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71, label %.lr.ph.i61.preheader

.lr.ph.i61.preheader:                             ; preds = %.lr.ph.preheader.i, %middle.block102
  %.07.i62.ph = phi ptr [ %i.ay, %.lr.ph.preheader.i ], [ %i.bn, %middle.block102 ]
  br label %.lr.ph.i61

.lr.ph.i61:                                       ; preds = %.lr.ph.i61.preheader, %.lr.ph.i61
  %.07.i62 = phi ptr [ %i.br, %.lr.ph.i61 ], [ %.07.i62.ph, %.lr.ph.i61.preheader ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.07.i62, i64 4 ; 2 uses
  store i32 %3, ptr %.07.i62, align 4
  %i.bs = icmp ult ptr %i.br, %i.av
  br i1 %i.bs, label %.lr.ph.i61, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71, !llvm.loop !17

_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit:    ; preds = %.lr.ph.i, %vector.body, %bb.i
  %.2 = phi i32 [ %1, %bb.i ], [ %i.ah, %vector.body ], [ %i.ah, %.lr.ph.i ] ; 3 uses
  %i.bt = and i32 %i.ab, 15                       ; 2 uses
  %i.bu = and i32 %i.ab, 4194288                  ; 2 uses
  %i.bv = icmp samesign ult i32 %.2, %i.bu
  br i1 %i.bv, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.by = zext nneg i32 %.2 to i64
  %i.bz = insertelement <4 x i32> poison, i32 %3, i64 0
  %i.ca = shufflevector <4 x i32> %i.bz, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit67
  %indvars.iv = phi i64 [ %i.by, %.lr.ph ], [ %indvars.iv.next, %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit67 ] ; 2 uses
  %i.cb = lshr i64 %indvars.iv, 4                 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = icmp eq i8 %i.cd, 0
  br i1 %i.ce, label %bb.o, label %.lr.ph.i65

bb.o:                                             ; preds = %bb.n
  %i.cf = load ptr, ptr %0, align 8
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.cb
  store i32 %3, ptr %i.cg, align 4
  br label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit67

.lr.ph.i65:                                       ; preds = %bb.n
  %i.ch = load ptr, ptr %i.bx, align 8
  %i.ci = load ptr, ptr %0, align 8
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.cb
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.cl ; 4 uses
  store <4 x i32> %i.ca, ptr %i.cm, align 4
  %.07.i66.ptr.4 = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store <4 x i32> %i.ca, ptr %.07.i66.ptr.4, align 4
  %.07.i66.ptr.8 = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  store <4 x i32> %i.ca, ptr %.07.i66.ptr.8, align 4
  %.07.i66.ptr.12 = getelementptr inbounds nuw i8, ptr %i.cm, i64 48
  store <4 x i32> %i.ca, ptr %.07.i66.ptr.12, align 4
  br label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit67

_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit67:  ; preds = %.lr.ph.i65, %bb.o
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16 ; 2 uses
  %i.cn = trunc nuw i64 %indvars.iv.next to i32   ; 2 uses
  %i.co = icmp sgt i32 %i.bu, %i.cn
  br i1 %i.co, label %bb.n, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit67, %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit
  %.3.lcssa = phi i32 [ %.2, %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit ], [ %i.cn, %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit67 ]
  %.not59 = icmp eq i32 %i.bt, 0
  br i1 %.not59, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.cp = lshr i32 %.3.lcssa, 4
  %i.cq = tail call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie12getDataBlockEi(ptr noundef nonnull align 8 dereferenceable(69696) %0, i32 noundef %i.cp) ; 2 uses
  %i.cr = icmp sgt i32 %i.cq, -1
  br i1 %i.cr, label %.lr.ph.preheader.i68, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71.sink.split

.lr.ph.preheader.i68:                             ; preds = %bb.p
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8            ; 2 uses
  %i.cu = ptrtoint ptr %i.ct to i64               ; 2 uses
  %i.cv = zext nneg i32 %i.cq to i64              ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cv ; 4 uses
  %i.cx = zext nneg i32 %i.bt to i64              ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.cx
  %i.cz = shl nuw nsw i64 %i.cv, 2                ; 2 uses
  %i.da = add nuw i64 %i.cz, %i.cu
  %i.db = shl nuw nsw i64 %i.cx, 2
  %i.dc = tail call i64 @llvm.umax.i64(i64 %i.db, i64 4)
  %umax105 = add nuw i64 %i.da, %i.dc
  %i.dd = xor i64 %i.cu, -1
  %i.de = add i64 %umax105, %i.dd
  %i.df = sub i64 %i.de, %i.cz                    ; 2 uses
  %i.dg = lshr i64 %i.df, 2
  %i.dh = add nuw nsw i64 %i.dg, 1                ; 2 uses
  %min.iters.check107 = icmp ult i64 %i.df, 28
  br i1 %min.iters.check107, label %.lr.ph.i69.preheader, label %vector.ph108

vector.ph108:                                     ; preds = %.lr.ph.preheader.i68
  %n.vec110 = and i64 %i.dh, 9223372036854775800  ; 3 uses
  %i.di = shl i64 %n.vec110, 2
  %i.dj = getelementptr i8, ptr %i.cw, i64 %i.di
  %broadcast.splatinsert111 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat112 = shufflevector <4 x i32> %broadcast.splatinsert111, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body113

vector.body113:                                   ; preds = %vector.body113, %vector.ph108
  %index114 = phi i64 [ 0, %vector.ph108 ], [ %index.next116, %vector.body113 ] ; 2 uses
  %i.dk = shl i64 %index114, 2
  %next.gep115 = getelementptr i8, ptr %i.cw, i64 %i.dk ; 2 uses
  %i.dl = getelementptr i8, ptr %next.gep115, i64 16
  store <4 x i32> %broadcast.splat112, ptr %next.gep115, align 4
  store <4 x i32> %broadcast.splat112, ptr %i.dl, align 4
  %index.next116 = add nuw i64 %index114, 8       ; 2 uses
  %i.dm = icmp eq i64 %index.next116, %n.vec110
  br i1 %i.dm, label %middle.block117, label %vector.body113, !llvm.loop !19

middle.block117:                                  ; preds = %vector.body113
  %cmp.n118 = icmp eq i64 %i.dh, %n.vec110
  br i1 %cmp.n118, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71, label %.lr.ph.i69.preheader

.lr.ph.i69.preheader:                             ; preds = %.lr.ph.preheader.i68, %middle.block117
  %.07.i70.ph = phi ptr [ %i.cw, %.lr.ph.preheader.i68 ], [ %i.dj, %middle.block117 ]
  br label %.lr.ph.i69

.lr.ph.i69:                                       ; preds = %.lr.ph.i69.preheader, %.lr.ph.i69
  %.07.i70 = phi ptr [ %i.dn, %.lr.ph.i69 ], [ %.07.i70.ph, %.lr.ph.i69.preheader ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.07.i70, i64 4 ; 2 uses
  store i32 %3, ptr %.07.i70, align 4
  %i.do = icmp ult ptr %i.dn, %i.cy
  br i1 %i.do, label %.lr.ph.i69, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71, !llvm.loop !20

_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71.sink.split: ; preds = %bb.p, %bb.j, %bb.e, %bb.b
  %.sink = phi i32 [ 7, %bb.j ], [ 7, %bb.e ], [ 1, %bb.b ], [ 7, %bb.p ]
  store i32 %.sink, ptr %4, align 4
  br label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71

_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71:  ; preds = %.lr.ph.i61, %.lr.ph.i69, %middle.block102, %middle.block117, %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71.sink.split, %bb.m, %._crit_edge, %bb.a
  ret void
}
end_hunk_0
begin_hunk_1_@umutablecptrie_buildImmutable_78:bb.a
  %epil.iter370.next = add i32 %epil.iter370, 1   ; 2 uses
  %epil.iter370.cmp.not = icmp eq i32 %epil.iter370.next, 7
  br i1 %epil.iter370.cmp.not, label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeEj.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.epil, !llvm.loop !37

_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeEj.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.epil
  %i.pn = shl i32 %i.pm, %.sink312.i154.i.i
  %i.po = add nsw i32 %.0.i118.i166.i.i, -1
  %i.pp = urem i32 %i.pm, %i.po
  %i.pq = add nuw nsw i32 %i.pp, 1                ; 4 uses
  %i.pr = zext nneg i32 %i.pq to i64
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %i.pr
  %i.pt = load i32, ptr %i.ps, align 4            ; 2 uses
  %i.pu = icmp eq i32 %i.pt, 0
  br i1 %i.pu, label %._crit_edge.i.i.i.i.i, label %.lr.ph.split.us.i.i.i.preheader.i.i

.lr.ph.split.us.i.i.i.preheader.i.i:              ; preds = %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeEj.exit.i.i.i.i
  %i.pv = xor i32 %.sink.i157.i.i, -1
  %i.pw = shl nuw nsw i32 %i.om, 2
  %.idx.i.i.i.i.i.i = zext nneg i32 %i.pw to i64
  br label %.lr.ph.split.us.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i:                        ; preds = %bb.cg, %.lr.ph.split.us.i.i.i.preheader.i.i
  %i.px = phi i32 [ %i.qn, %bb.cg ], [ %i.pt, %.lr.ph.split.us.i.i.i.preheader.i.i ] ; 2 uses
  %.02129.us.i.i.i.i.i = phi i32 [ %i.qk, %bb.cg ], [ %i.pq, %.lr.ph.split.us.i.i.i.preheader.i.i ] ; 2 uses
  %i.py = and i32 %i.px, %i.pv
  %i.pz = icmp eq i32 %i.py, %i.pn
  br i1 %i.pz, label %.lr.ph.i.preheader.us.i.i.i.i.i, label %bb.cg

.lr.ph.i.preheader.us.i.i.i.i.i:                  ; preds = %.lr.ph.split.us.i.i.i.i.i
  %i.qa = and i32 %i.px, %.sink.i157.i.i
  %i.qb = zext nneg i32 %i.qa to i64
  %i.qc = getelementptr [4 x i8], ptr %i.mf, i64 %i.qb
  %i.qd = getelementptr i8, ptr %i.qc, i64 -4     ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 %.idx.i.i.i.i.i.i ; 2 uses
  br label %.lr.ph.i.us.i.i.i.i.i

.lr.ph.i.us.i.i.i.i.i:                            ; preds = %bb.cf, %.lr.ph.i.preheader.us.i.i.i.i.i
  %.08.i.us.i.i.i.i.i = phi ptr [ %i.qh, %bb.cf ], [ %i.qd, %.lr.ph.i.preheader.us.i.i.i.i.i ] ; 3 uses
  %i.qf = load i32, ptr %.08.i.us.i.i.i.i.i, align 4
  %i.qg = icmp eq i32 %i.qf, %i.ot
  br i1 %i.qg, label %bb.cf, label %_ZN6icu_7812_GLOBAL__N_115allValuesSameAsEPKjij.exit.loopexit.us.i.i.i.i.i

bb.cf:                                            ; preds = %.lr.ph.i.us.i.i.i.i.i
  %i.qh = getelementptr inbounds nuw i8, ptr %.08.i.us.i.i.i.i.i, i64 4 ; 3 uses
  %i.qi = icmp ult ptr %i.qh, %i.qe
  br i1 %i.qi, label %.lr.ph.i.us.i.i.i.i.i, label %_ZN6icu_7812_GLOBAL__N_115allValuesSameAsEPKjij.exit.loopexit.us.i.i.i.i.i, !llvm.loop !24

bb.cg:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_115allValuesSameAsEPKjij.exit.loopexit.us.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i
  %i.qj = add nuw nsw i32 %.02129.us.i.i.i.i.i, %i.pq
  %i.qk = urem i32 %i.qj, %.0.i118.i166.i.i       ; 3 uses
  %i.ql = zext nneg i32 %i.qk to i64
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %i.ql
  %i.qn = load i32, ptr %i.qm, align 4            ; 2 uses
  %i.qo = icmp eq i32 %i.qn, 0
  br i1 %i.qo, label %._crit_edge.i.i.i.i.i, label %.lr.ph.split.us.i.i.i.i.i, !llvm.loop !38

_ZN6icu_7812_GLOBAL__N_115allValuesSameAsEPKjij.exit.loopexit.us.i.i.i.i.i: ; preds = %bb.cf, %.lr.ph.i.us.i.i.i.i.i
  %.0.lcssa.i.ph.us.i.i.i.i.i = phi ptr [ %.08.i.us.i.i.i.i.i, %.lr.ph.i.us.i.i.i.i.i ], [ %i.qh, %bb.cf ]
  %i.qp = icmp eq ptr %.0.lcssa.i.ph.us.i.i.i.i.i, %i.qe
  br i1 %i.qp, label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryEPKjjj.exit.i.i.i.i, label %bb.cg

._crit_edge.i.i.i.i.i:                            ; preds = %bb.cg, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeEj.exit.i.i.i.i
  %.021.lcssa.i.i.i.i.i = phi i32 [ %i.pq, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeEj.exit.i.i.i.i ], [ %i.qk, %bb.cg ]
  %i.qq = xor i32 %.021.lcssa.i.i.i.i.i, -1
  br label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryEPKjjj.exit.i.i.i.i

_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryEPKjjj.exit.i.i.i.i: ; preds = %_ZN6icu_7812_GLOBAL__N_115allValuesSameAsEPKjij.exit.loopexit.us.i.i.i.i.i, %._crit_edge.i.i.i.i.i
  %.3.ph.i.i.i.i.i = phi i32 [ %i.qq, %._crit_edge.i.i.i.i.i ], [ %.02129.us.i.i.i.i.i, %_ZN6icu_7812_GLOBAL__N_115allValuesSameAsEPKjij.exit.loopexit.us.i.i.i.i.i ] ; 2 uses
  %i.qr = icmp sgt i32 %.3.ph.i.i.i.i.i, -1
  br i1 %i.qr, label %bb.ch, label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks16findAllSameBlockEPKjj.exit.i.i.i

bb.ch:                                            ; preds = %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryEPKjjj.exit.i.i.i.i
  %i.qs = zext nneg i32 %.3.ph.i.i.i.i.i to i64
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %i.qs
  %i.qu = load i32, ptr %i.qt, align 4
  %i.qv = and i32 %i.qu, %.sink.i157.i.i
  %i.qw = add nsw i32 %i.qv, -1
  br label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks16findAllSameBlockEPKjj.exit.i.i.i

_ZNK6icu_7812_GLOBAL__N_111MixedBlocks16findAllSameBlockEPKjj.exit.i.i.i: ; preds = %bb.ch, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryEPKjjj.exit.i.i.i.i
  %.0.i126.i.i.i = phi i32 [ %i.qw, %bb.ch ], [ -1, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryEPKjjj.exit.i.i.i.i ] ; 4 uses
  %i.qx = icmp eq i32 %.0108204.i.i.i, %.011.i.i.i
  %.not115.i.i.i = icmp uge i32 %.0108204.i.i.i, %i.cs
  %i.qy = icmp sgt i32 %.0.i126.i.i.i, -1         ; 2 uses
  %i.qz = and i1 %i.qx, %.not115.i.i.i
  %or.cond116188.i.i.i = and i1 %i.qz, %i.qy
  %i.ra = icmp slt i32 %.0.i126.i.i.i, %.1110.i.i.i
  %or.cond117189.i.i.i = select i1 %or.cond116188.i.i.i, i1 %i.ra, i1 false
  br i1 %or.cond117189.i.i.i, label %.lr.ph191.split.preheader.i.i.i, label %.critedge.i76.i.i

.lr.ph191.split.preheader.i.i.i:                  ; preds = %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks16findAllSameBlockEPKjj.exit.i.i.i
  %i.rb = sub nuw nsw i32 %.199206.i.i.i, %.1104.i.i.i ; 2 uses
  %i.rc = zext nneg i32 %.1104.i.i.i to i64
  br label %.lr.ph191.split.i.i.i

.lr.ph191.split.i.i.i:                            ; preds = %_ZN6icu_7812_GLOBAL__N_116findAllSameBlockEPKjiiji.exit.i.i.i, %.lr.ph191.split.preheader.i.i.i
  %.0105190.i.i.i = phi i32 [ %.02241.i.i.i.i, %_ZN6icu_7812_GLOBAL__N_116findAllSameBlockEPKjiiji.exit.i.i.i ], [ %.0.i126.i.i.i, %.lr.ph191.split.preheader.i.i.i ] ; 4 uses
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ci, %.lr.ph191.split.i.i.i
  %indvars.iv.i.i77.i.i = phi i64 [ 0, %.lr.ph191.split.i.i.i ], [ %indvars.iv.next.i.i78.i.i, %bb.ci ] ; 2 uses
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.or, i64 %indvars.iv.i.i77.i.i
  %i.re = load i32, ptr %i.rd, align 4
  %i.rf = icmp eq i32 %i.re, %.0105190.i.i.i      ; 2 uses
  %indvars.iv.next.i.i78.i.i = add nuw nsw i64 %indvars.iv.i.i77.i.i, 4 ; 2 uses
  %i.rg = icmp samesign uge i64 %indvars.iv.next.i.i78.i.i, %i.oe
  %or.cond.not.i.i.i.i = select i1 %i.rf, i1 true, i1 %i.rg
  br i1 %or.cond.not.i.i.i.i, label %_ZN6icu_7812_GLOBAL__N_122isStartOfSomeFastBlockEjPKji.exit.i.i.i, label %bb.ci, !llvm.loop !39

_ZN6icu_7812_GLOBAL__N_122isStartOfSomeFastBlockEjPKji.exit.i.i.i: ; preds = %bb.ci
  br i1 %i.rf, label %bb.cj, label %.critedge.thread.i.i.i

bb.cj:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_122isStartOfSomeFastBlockEjPKji.exit.i.i.i
  %.not40.i.not.i.i.i = icmp ult i32 %.0105190.i.i.i, %i.rb
  br i1 %.not40.i.not.i.i.i, label %.lr.ph.i.i79.i.i, label %.critedge.thread279.i.i.i

.lr.ph.i.i79.i.i:                                 ; preds = %bb.cj, %.loopexit36.i.i.i.i
  %.02241.i.in.i.i.i = phi i32 [ %.2.i.i.i.i, %.loopexit36.i.i.i.i ], [ %.0105190.i.i.i, %bb.cj ] ; 2 uses
  %.02241.i.i.i.i = add nsw i32 %.02241.i.in.i.i.i, 1 ; 5 uses
  %i.rh = sext i32 %.02241.i.i.i.i to i64         ; 2 uses
  %i.ri = getelementptr inbounds [4 x i8], ptr %i.mf, i64 %i.rh
  %i.rj = load i32, ptr %i.ri, align 4
  %i.rk = icmp eq i32 %i.rj, %i.ot
  br i1 %i.rk, label %.preheader.i.i.i.i, label %.loopexit36.i.i.i.i

bb.ck:                                            ; preds = %.preheader.i.i.i.i
  %indvars.iv.next.i128.i.i.i = add nuw nsw i64 %indvars.iv.i127.i.i.i, 1 ; 2 uses
  %.not29.i.i.i.i = icmp eq i64 %indvars.iv.next.i128.i.i.i, %i.rc
  br i1 %.not29.i.i.i.i, label %_ZN6icu_7812_GLOBAL__N_116findAllSameBlockEPKjiiji.exit.i.i.i, label %.preheader.i.i.i.i, !llvm.loop !40

.preheader.i.i.i.i:                               ; preds = %.lr.ph.i.i79.i.i, %bb.ck
  %indvars.iv.i127.i.i.i = phi i64 [ %indvars.iv.next.i128.i.i.i, %bb.ck ], [ 1, %.lr.ph.i.i79.i.i ] ; 2 uses
  %i.rl = add nsw i64 %indvars.iv.i127.i.i.i, %i.rh ; 2 uses
  %i.rm = getelementptr inbounds [4 x i8], ptr %i.mf, i64 %i.rl
  %i.rn = load i32, ptr %i.rm, align 4
  %.not28.i.i.i.i = icmp eq i32 %i.rn, %i.ot
  br i1 %.not28.i.i.i.i, label %bb.ck, label %.loopexit36.loopexit.i.i.i.i

.loopexit36.loopexit.i.i.i.i:                     ; preds = %.preheader.i.i.i.i
  %i.ro = trunc nsw i64 %i.rl to i32
  br label %.loopexit36.i.i.i.i

.loopexit36.i.i.i.i:                              ; preds = %.loopexit36.loopexit.i.i.i.i, %.lr.ph.i.i79.i.i
  %.2.i.i.i.i = phi i32 [ %.02241.i.i.i.i, %.lr.ph.i.i79.i.i ], [ %i.ro, %.loopexit36.loopexit.i.i.i.i ] ; 2 uses
  %.not.not.i.i.i.i = icmp slt i32 %.2.i.i.i.i, %i.rb
  br i1 %.not.not.i.i.i.i, label %.lr.ph.i.i79.i.i, label %.critedge.thread279.i.i.i, !llvm.loop !41

_ZN6icu_7812_GLOBAL__N_116findAllSameBlockEPKjiiji.exit.i.i.i: ; preds = %bb.ck
  %i.rp = icmp sgt i32 %.02241.i.in.i.i.i, -2     ; 2 uses
  %i.rq = icmp slt i32 %.02241.i.i.i.i, %.1110.i.i.i
  %or.cond117.i.i.i = select i1 %i.rp, i1 %i.rq, i1 false
  br i1 %or.cond117.i.i.i, label %.lr.ph191.split.i.i.i, label %.critedge.i76.i.i, !llvm.loop !42

.critedge.i76.i.i:                                ; preds = %_ZN6icu_7812_GLOBAL__N_116findAllSameBlockEPKjiiji.exit.i.i.i, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks16findAllSameBlockEPKjj.exit.i.i.i
  %.0105.lcssa.i.i.i = phi i32 [ %.0.i126.i.i.i, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks16findAllSameBlockEPKjj.exit.i.i.i ], [ %.02241.i.i.i.i, %_ZN6icu_7812_GLOBAL__N_116findAllSameBlockEPKjiiji.exit.i.i.i ]
  %.lcssa177.i.i.i = phi i1 [ %i.qy, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks16findAllSameBlockEPKjj.exit.i.i.i ], [ %i.rp, %_ZN6icu_7812_GLOBAL__N_116findAllSameBlockEPKjiiji.exit.i.i.i ]
  br i1 %.lcssa177.i.i.i, label %.critedge.thread.i.i.i, label %.critedge.thread279.i.i.i

.critedge.thread.i.i.i:                           ; preds = %_ZN6icu_7812_GLOBAL__N_122isStartOfSomeFastBlockEjPKji.exit.i.i.i, %.critedge.i76.i.i
  %.0105180.i.i.i = phi i32 [ %.0105.lcssa.i.i.i, %.critedge.i76.i.i ], [ %.0105190.i.i.i, %_ZN6icu_7812_GLOBAL__N_122isStartOfSomeFastBlockEjPKji.exit.i.i.i ]
  store i32 %.0105180.i.i.i, ptr %i.os, align 4
  br label %bb.cu

.critedge.thread279.i.i.i:                        ; preds = %bb.cj, %.loopexit36.i.i.i.i, %.critedge.i76.i.i
  %.neg10.i.i.i.i = add nuw i32 %.199206.i.i.i, 1
  %i.rr = sub i32 %.neg10.i.i.i.i, %.1104.i.i.i   ; 3 uses
  %i.rs = icmp samesign ult i32 %i.rr, %.199206.i.i.i
  br i1 %i.rs, label %.lr.ph.preheader.i129.i.i.i, label %_ZN6icu_7812_GLOBAL__N_117getAllSameOverlapEPKjiji.exit.i.i.i

.lr.ph.preheader.i129.i.i.i:                      ; preds = %.critedge.thread279.i.i.i
  %i.rt = zext nneg i32 %.199206.i.i.i to i64
  %i.ru = zext nneg i32 %i.rr to i64
  br label %.lr.ph.i130.i.i.i

.lr.ph.i130.i.i.i:                                ; preds = %bb.cl, %.lr.ph.preheader.i129.i.i.i
  %indvars.iv.i131.i.i.i = phi i64 [ %i.rt, %.lr.ph.preheader.i129.i.i.i ], [ %indvars.iv.next.i132.i.i.i, %bb.cl ] ; 3 uses
  %i.rv = getelementptr [4 x i8], ptr %i.mf, i64 %indvars.iv.i131.i.i.i
  %i.rw = getelementptr i8, ptr %i.rv, i64 -4
  %i.rx = load i32, ptr %i.rw, align 4
  %i.ry = icmp eq i32 %i.rx, %i.ot
  br i1 %i.ry, label %bb.cl, label %.critedge.loopexit.split.loop.exit16.i.i.i.i

bb.cl:                                            ; preds = %.lr.ph.i130.i.i.i
  %indvars.iv.next.i132.i.i.i = add nsw i64 %indvars.iv.i131.i.i.i, -1 ; 2 uses
  %i.rz = icmp sgt i64 %indvars.iv.next.i132.i.i.i, %i.ru
  br i1 %i.rz, label %.lr.ph.i130.i.i.i, label %_ZN6icu_7812_GLOBAL__N_117getAllSameOverlapEPKjiji.exit.i.i.i, !llvm.loop !43

.critedge.loopexit.split.loop.exit16.i.i.i.i:     ; preds = %.lr.ph.i130.i.i.i
  %i.sa = trunc nuw nsw i64 %indvars.iv.i131.i.i.i to i32
  br label %_ZN6icu_7812_GLOBAL__N_117getAllSameOverlapEPKjiji.exit.i.i.i

_ZN6icu_7812_GLOBAL__N_117getAllSameOverlapEPKjiji.exit.i.i.i: ; preds = %bb.cl, %.critedge.loopexit.split.loop.exit16.i.i.i.i, %.critedge.thread279.i.i.i
  %.0.lcssa.i.i.i.i = phi i32 [ %.199206.i.i.i, %.critedge.thread279.i.i.i ], [ %i.sa, %.critedge.loopexit.split.loop.exit16.i.i.i.i ], [ %i.rr, %bb.cl ] ; 3 uses
  %i.sb = sub nsw i32 %.199206.i.i.i, %.0.lcssa.i.i.i.i ; 3 uses
  store i32 %.0.lcssa.i.i.i.i, ptr %i.os, align 4
  %i.sc = icmp slt i32 %i.sb, %.1104.i.i.i
  br i1 %i.sc, label %.lr.ph198.preheader.i.i.i, label %._crit_edge199.i.i.i

.lr.ph198.preheader.i.i.i:                        ; preds = %_ZN6icu_7812_GLOBAL__N_117getAllSameOverlapEPKjiji.exit.i.i.i
  %i.sd = zext i32 %.199206.i.i.i to i64          ; 3 uses
  %i.se = add i32 %.0.lcssa.i.i.i.i, -1
  %7 = add i32 %i.se, %.1104.i.i.i
  %8 = sub i32 %7, %.199206.i.i.i                 ; 2 uses
  %i.sf = zext i32 %8 to i64
  %i.sg = add nuw nsw i64 %i.sf, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %8, 7
  br i1 %min.iters.check, label %.lr.ph198.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph198.preheader.i.i.i
  %n.vec = and i64 %i.sg, 8589934584              ; 4 uses
  %i.sh = add nuw nsw i64 %n.vec, %i.sd           ; 2 uses
  %i.si = trunc i64 %n.vec to i32
  %i.sj = add i32 %i.sb, %i.si
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ot, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep449 = getelementptr [4 x i8], ptr %i.mf, i64 %i.sd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep450 = getelementptr [4 x i8], ptr %invariant.gep449, i64 %index ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %gep450, i64 16
  store <4 x i32> %broadcast.splat, ptr %gep450, align 4
  store <4 x i32> %broadcast.splat, ptr %i.sk, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.sl = icmp eq i64 %index.next, %n.vec
  br i1 %i.sl, label %middle.block, label %vector.body, !llvm.loop !44

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.sg, %n.vec
  br i1 %cmp.n, label %._crit_edge199.loopexit.i.i.i, label %.lr.ph198.i.i.i.preheader

.lr.ph198.i.i.i.preheader:                        ; preds = %.lr.ph198.preheader.i.i.i, %middle.block
  %indvars.iv255.i.i.i.ph = phi i64 [ %i.sd, %.lr.ph198.preheader.i.i.i ], [ %i.sh, %middle.block ]
  %.1106196.i.i.i.ph = phi i32 [ %i.sb, %.lr.ph198.preheader.i.i.i ], [ %i.sj, %middle.block ]
  br label %.lr.ph198.i.i.i

.lr.ph198.i.i.i:                                  ; preds = %.lr.ph198.i.i.i.preheader, %.lr.ph198.i.i.i
  %indvars.iv255.i.i.i = phi i64 [ %indvars.iv.next256.i.i.i, %.lr.ph198.i.i.i ], [ %indvars.iv255.i.i.i.ph, %.lr.ph198.i.i.i.preheader ] ; 2 uses
  %.1106196.i.i.i = phi i32 [ %i.sn, %.lr.ph198.i.i.i ], [ %.1106196.i.i.i.ph, %.lr.ph198.i.i.i.preheader ]
  %indvars.iv.next256.i.i.i = add nuw nsw i64 %indvars.iv255.i.i.i, 1 ; 2 uses
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %indvars.iv255.i.i.i
  store i32 %i.ot, ptr %i.sm, align 4
  %i.sn = add nsw i32 %.1106196.i.i.i, 1          ; 2 uses
  %exitcond258.not.i.i.i = icmp eq i32 %i.sn, %.1104.i.i.i
  br i1 %exitcond258.not.i.i.i, label %._crit_edge199.loopexit.i.i.i, label %.lr.ph198.i.i.i, !llvm.loop !45

._crit_edge199.loopexit.i.i.i:                    ; preds = %.lr.ph198.i.i.i, %middle.block
  %indvars.iv.next256.i.i.i.lcssa = phi i64 [ %i.sh, %middle.block ], [ %indvars.iv.next256.i.i.i, %.lr.ph198.i.i.i ]
  %i.so = trunc nuw i64 %indvars.iv.next256.i.i.i.lcssa to i32
  br label %._crit_edge199.i.i.i

._crit_edge199.i.i.i:                             ; preds = %._crit_edge199.loopexit.i.i.i, %_ZN6icu_7812_GLOBAL__N_117getAllSameOverlapEPKjiji.exit.i.i.i
  %.2100.lcssa.i.i.i = phi i32 [ %.199206.i.i.i, %_ZN6icu_7812_GLOBAL__N_117getAllSameOverlapEPKjiji.exit.i.i.i ], [ %i.so, %._crit_edge199.loopexit.i.i.i ] ; 2 uses
  call fastcc void @_ZN6icu_7812_GLOBAL__N_111MixedBlocks6extendIjEEvPKT_iii(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef nonnull %i.mf, i32 noundef %.199206.i.i.i, i32 noundef %.2100.lcssa.i.i.i)
  br label %bb.cu

bb.cm:                                            ; preds = %bb.ce
  %i.sp = load ptr, ptr %i.gh, align 8            ; 2 uses
  %i.sq = ptrtoaddr ptr %i.sp to i64
  %i.sr = load ptr, ptr %0, align 8
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.sr, i64 %i.oo ; 3 uses
  %i.st = load i32, ptr %i.ss, align 4
  %i.su = zext i32 %i.st to i64                   ; 2 uses
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %i.sp, i64 %i.su ; 14 uses
  %i.sw = load i32, ptr %i.sv, align 4            ; 2 uses
  %i.sx = tail call i32 @llvm.smax.i32(i32 %i.om, i32 2)
  %smax.i.i.i.i = zext nneg i32 %i.sx to i64
  %i.sy = add nsw i64 %smax.i.i.i.i, -1           ; 2 uses
  %xtraiter359 = and i64 %i.sy, 3
  %i.sz = icmp eq i32 %i.om, 0
  br i1 %i.sz, label %.epil.preheader358, label %.new

.new:                                             ; preds = %bb.cm
  %unroll_iter364 = and i64 %i.sy, -4
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cn, %.new
  %indvars.iv.i.i.i.i.i = phi i64 [ 1, %.new ], [ %indvars.iv.next.i.i.i.i.i.3, %bb.cn ] ; 5 uses
  %.0.i.i.i.i.i = phi i32 [ %i.sw, %.new ], [ %i.ts, %bb.cn ]
  %niter365 = phi i64 [ 0, %.new ], [ %niter365.next.3, %bb.cn ]
  %i.ta = mul i32 %.0.i.i.i.i.i, 37
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.sv, i64 %indvars.iv.i.i.i.i.i
  %i.tc = load i32, ptr %i.tb, align 4
  %i.td = add i32 %i.ta, %i.tc
  %i.te = mul i32 %i.td, 37
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %i.sv, i64 %indvars.iv.i.i.i.i.i
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 4
  %i.th = load i32, ptr %i.tg, align 4
  %i.ti = add i32 %i.te, %i.th
  %i.tj = mul i32 %i.ti, 37
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr %i.sv, i64 %indvars.iv.i.i.i.i.i
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 8
  %i.tm = load i32, ptr %i.tl, align 4
  %i.tn = add i32 %i.tj, %i.tm
  %i.to = mul i32 %i.tn, 37
  %indvars.iv.next.i.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 4 ; 2 uses
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.sv, i64 %indvars.iv.i.i.i.i.i
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 12
  %i.tr = load i32, ptr %i.tq, align 4
  %i.ts = add i32 %i.to, %i.tr                    ; 2 uses
  %niter365.next.3 = add nuw i64 %niter365, 4     ; 2 uses
  %niter365.ncmp.3 = icmp eq i64 %niter365.next.3, %unroll_iter364
  br i1 %niter365.ncmp.3, label %.epil.preheader358, label %bb.cn, !llvm.loop !46

.epil.preheader358:                               ; preds = %bb.cn, %bb.cm
  %indvars.iv.i.i.i.i.i.epil.init = phi i64 [ 1, %bb.cm ], [ %indvars.iv.next.i.i.i.i.i.3, %bb.cn ]
  %.0.i.i.i.i.i.epil.init = phi i32 [ %i.sw, %bb.cm ], [ %i.ts, %bb.cn ]
  br label %bb.co

bb.co:                                            ; preds = %bb.co, %.epil.preheader358
  %indvars.iv.i.i.i.i.i.epil = phi i64 [ %indvars.iv.next.i.i.i.i.i.epil, %bb.co ], [ %indvars.iv.i.i.i.i.i.epil.init, %.epil.preheader358 ] ; 2 uses
  %.0.i.i.i.i.i.epil = phi i32 [ %i.tw, %bb.co ], [ %.0.i.i.i.i.i.epil.init, %.epil.preheader358 ]
  %epil.iter360 = phi i64 [ %epil.iter360.next, %bb.co ], [ 0, %.epil.preheader358 ]
  %i.tt = mul i32 %.0.i.i.i.i.i.epil, 37
  %indvars.iv.next.i.i.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.i.i.epil, 1
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %i.sv, i64 %indvars.iv.i.i.i.i.i.epil
  %i.tv = load i32, ptr %i.tu, align 4
  %i.tw = add i32 %i.tt, %i.tv                    ; 3 uses
  %epil.iter360.next = add i64 %epil.iter360, 1   ; 2 uses
  %epil.iter360.cmp.not = icmp eq i64 %epil.iter360.next, %xtraiter359
  br i1 %epil.iter360.cmp.not, label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeIjEEjPKT_i.exit.i.i.i.i, label %bb.co, !llvm.loop !47

_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeIjEEjPKT_i.exit.i.i.i.i: ; preds = %bb.co
  %i.tx = shl i32 %i.tw, %.sink312.i154.i.i
  %i.ty = add nsw i32 %.0.i118.i166.i.i, -1
  %i.tz = urem i32 %i.tw, %i.ty
  %i.ua = add nuw nsw i32 %i.tz, 1                ; 4 uses
  %i.ub = zext nneg i32 %i.ua to i64
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %i.ub
  %i.ud = load i32, ptr %i.uc, align 4            ; 2 uses
  %i.ue = icmp eq i32 %i.ud, 0
  br i1 %i.ue, label %._crit_edge.i.i136.i.i.i, label %.lr.ph.split.us.i.i139.i.preheader.i.i

.lr.ph.split.us.i.i139.i.preheader.i.i:           ; preds = %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeIjEEjPKT_i.exit.i.i.i.i
  %i.uf = xor i32 %.sink.i157.i.i, -1
  br label %.lr.ph.split.us.i.i139.i.i.i

.lr.ph.split.us.i.i139.i.i.i:                     ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us.i.i.i.i.i, %.lr.ph.split.us.i.i139.i.preheader.i.i
  %i.ug = phi i32 [ %i.uu, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us.i.i.i.i.i ], [ %i.ud, %.lr.ph.split.us.i.i139.i.preheader.i.i ] ; 2 uses
  %.02237.us.i.i.i.i.i = phi i32 [ %i.ur, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us.i.i.i.i.i ], [ %i.ua, %.lr.ph.split.us.i.i139.i.preheader.i.i ] ; 2 uses
  %i.uh = and i32 %i.ug, %i.uf
  %i.ui = icmp eq i32 %i.uh, %i.tx
  br i1 %i.ui, label %.lr.ph.i.preheader.us.i.i140.i.i.i, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us.i.i.i.i.i

.lr.ph.i.preheader.us.i.i140.i.i.i:               ; preds = %.lr.ph.split.us.i.i139.i.i.i
  %i.uj = and i32 %i.ug, %.sink.i157.i.i
  %i.uk = zext nneg i32 %i.uj to i64
  %i.ul = getelementptr [4 x i8], ptr %i.mf, i64 %i.uk
  %i.um = getelementptr i8, ptr %i.ul, i64 -4
  br label %.lr.ph.i.us.i.i141.i.i.i

.lr.ph.i.us.i.i141.i.i.i:                         ; preds = %bb.cp, %.lr.ph.i.preheader.us.i.i140.i.i.i
  %.010.i.us.i.i.i.i.i = phi i32 [ %i.uy, %bb.cp ], [ %i.om, %.lr.ph.i.preheader.us.i.i140.i.i.i ] ; 2 uses
  %.069.i.us.i.i.i.i.i = phi ptr [ %i.ux, %bb.cp ], [ %i.sv, %.lr.ph.i.preheader.us.i.i140.i.i.i ] ; 2 uses
  %.078.i.us.i.i.i.i.i = phi ptr [ %i.uw, %bb.cp ], [ %i.um, %.lr.ph.i.preheader.us.i.i140.i.i.i ] ; 2 uses
  %i.un = load i32, ptr %.078.i.us.i.i.i.i.i, align 4
  %i.uo = load i32, ptr %.069.i.us.i.i.i.i.i, align 4
  %i.up = icmp eq i32 %i.un, %i.uo
  br i1 %i.up, label %bb.cp, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us.i.i.i.i.i

_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us.i.i.i.i.i: ; preds = %.lr.ph.i.us.i.i141.i.i.i, %.lr.ph.split.us.i.i139.i.i.i
  %i.uq = add nuw nsw i32 %.02237.us.i.i.i.i.i, %i.ua
  %i.ur = urem i32 %i.uq, %.0.i118.i166.i.i       ; 3 uses
  %i.us = zext nneg i32 %i.ur to i64
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %i.us
  %i.uu = load i32, ptr %i.ut, align 4            ; 2 uses
  %i.uv = icmp eq i32 %i.uu, 0
  br i1 %i.uv, label %._crit_edge.i.i136.i.i.i, label %.lr.ph.split.us.i.i139.i.i.i, !llvm.loop !48

bb.cp:                                            ; preds = %.lr.ph.i.us.i.i141.i.i.i
  %i.uw = getelementptr inbounds nuw i8, ptr %.078.i.us.i.i.i.i.i, i64 4
  %i.ux = getelementptr inbounds nuw i8, ptr %.069.i.us.i.i.i.i.i, i64 4
  %i.uy = add nsw i32 %.010.i.us.i.i.i.i.i, -1
  %i.uz = icmp sgt i32 %.010.i.us.i.i.i.i.i, 1
  br i1 %i.uz, label %.lr.ph.i.us.i.i141.i.i.i, label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryIjjEEiPKT_PKT0_ij.exit.i.i.i.i, !llvm.loop !49

._crit_edge.i.i136.i.i.i:                         ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us.i.i.i.i.i, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeIjEEjPKT_i.exit.i.i.i.i
  %.022.lcssa.i.i.i.i.i = phi i32 [ %i.ua, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeIjEEjPKT_i.exit.i.i.i.i ], [ %i.ur, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us.i.i.i.i.i ]
  %i.va = xor i32 %.022.lcssa.i.i.i.i.i, -1
  br label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryIjjEEiPKT_PKT0_ij.exit.i.i.i.i

_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryIjjEEiPKT_PKT0_ij.exit.i.i.i.i: ; preds = %bb.cp, %._crit_edge.i.i136.i.i.i
  %.3.ph.i.i137.i.i.i = phi i32 [ %i.va, %._crit_edge.i.i136.i.i.i ], [ %.02237.us.i.i.i.i.i, %bb.cp ] ; 2 uses
  %i.vb = icmp sgt i32 %.3.ph.i.i137.i.i.i, -1
  br i1 %i.vb, label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockIjjEEiPKT_PKT0_i.exit.i.i.i, label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockIjjEEiPKT_PKT0_i.exit.thread.i.i.i

_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockIjjEEiPKT_PKT0_i.exit.i.i.i: ; preds = %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryIjjEEiPKT_PKT0_ij.exit.i.i.i.i
  %i.vc = zext nneg i32 %.3.ph.i.i137.i.i.i to i64
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %i.vc
  %i.ve = load i32, ptr %i.vd, align 4
  %i.vf = and i32 %i.ve, %.sink.i157.i.i          ; 2 uses
  %i.vg = icmp sgt i32 %i.vf, 0
  br i1 %i.vg, label %bb.cq, label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockIjjEEiPKT_PKT0_i.exit.thread.i.i.i

bb.cq:                                            ; preds = %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockIjjEEiPKT_PKT0_i.exit.i.i.i
  %i.vh = add nsw i32 %i.vf, -1
  store i32 %i.vh, ptr %i.ss, align 4
  br label %bb.cu

_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockIjjEEiPKT_PKT0_i.exit.thread.i.i.i: ; preds = %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockIjjEEiPKT_PKT0_i.exit.i.i.i, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryIjjEEiPKT_PKT0_ij.exit.i.i.i.i
  %i.vi = zext nneg i32 %.1104.i.i.i to i64       ; 4 uses
  %i.vj = zext i32 %.199206.i.i.i to i64          ; 6 uses
end_hunk_1
