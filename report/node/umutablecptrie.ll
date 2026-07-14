inline.NumInlined: 129
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 22
begin_hunk_0_@umutablecptrie_set_78:bb.a

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
  %i.ac = and i32 %1, 15                          ; 4 uses
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
  %5 = ptrtoint ptr %i.aj to i64                  ; 2 uses
  %i.ak = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ak ; 4 uses
  br i1 %.not58.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = shl nuw nsw i32 %i.ac, 2
  %.idx = zext nneg i32 %i.am to i64              ; 3 uses
  %i.an = and i32 %1, 15                          ; 2 uses
  %narrow = sub nuw nsw i32 16, %i.an
  %i.ao = zext nneg i32 %narrow to i64            ; 2 uses
  %min.iters.check = icmp samesign ugt i32 %i.an, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.body

vector.body:                                      ; preds = %bb.l
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %n.vec = and i64 %i.ao, 24                      ; 2 uses
  %i.ap = shl nuw nsw i64 %n.vec, 2
  %i.aq = add nuw nsw i64 %i.ap, %.idx
  %i.ar = getelementptr i8, ptr %i.al, i64 %.idx  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.ar, align 4
  store <4 x i32> %broadcast.splat, ptr %i.as, align 4
  %cmp.n = icmp eq i64 %n.vec, %i.ao
  br i1 %cmp.n, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.l, %vector.body
  %.07.i.idx.ph = phi i64 [ %.idx, %bb.l ], [ %i.aq, %vector.body ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.07.i.idx = phi i64 [ %.07.i.add, %.lr.ph.i ], [ %.07.i.idx.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.07.i.ptr = getelementptr inbounds nuw i8, ptr %i.al, i64 %.07.i.idx
  %.07.i.add = add nuw nsw i64 %.07.i.idx, 4
  store i32 %3, ptr %.07.i.ptr, align 4
  %i.at = icmp samesign ult i64 %.07.i.idx, 60
  br i1 %i.at, label %.lr.ph.i, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit, !llvm.loop !13

bb.m:                                             ; preds = %bb.k
  %i.au = and i32 %i.ab, 15                       ; 2 uses
  %i.av = zext nneg i32 %i.au to i64              ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.av
  %i.ax = icmp samesign ult i32 %i.ac, %i.au
  br i1 %i.ax, label %.lr.ph.preheader.i, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71

.lr.ph.preheader.i:                               ; preds = %bb.m
  %i.ay = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ay ; 3 uses
  %i.ba = shl nuw nsw i64 %i.ak, 2                ; 2 uses
  %6 = add i64 %i.ba, %5                          ; 2 uses
  %7 = shl nuw nsw i64 %i.ay, 2                   ; 2 uses
  %i.bb = add i64 %6, %7
  %i.bc = add i64 %i.bb, 4
  %i.bd = shl nuw nsw i64 %i.av, 2
  %i.be = add i64 %6, %i.bd
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 %i.be)
  %8 = xor i64 %5, -1
  %i.bf = add i64 %umax, %8
  %9 = add nuw nsw i64 %i.ba, %7
  %10 = sub i64 %i.bf, %9                         ; 2 uses
  %i.bg = lshr i64 %10, 2
  %i.bh = add nuw nsw i64 %i.bg, 1                ; 2 uses
  %min.iters.check93 = icmp ult i64 %10, 28
  br i1 %min.iters.check93, label %.lr.ph.i61.preheader, label %vector.ph94

vector.ph94:                                      ; preds = %.lr.ph.preheader.i
  %n.vec96 = and i64 %i.bh, 9223372036854775800   ; 3 uses
  %i.bi = shl i64 %n.vec96, 2
  %i.bj = getelementptr i8, ptr %i.az, i64 %i.bi
  %broadcast.splatinsert97 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat98 = shufflevector <4 x i32> %broadcast.splatinsert97, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body99

vector.body99:                                    ; preds = %vector.body99, %vector.ph94
  %index100 = phi i64 [ 0, %vector.ph94 ], [ %index.next101, %vector.body99 ] ; 2 uses
  %i.bk = shl i64 %index100, 2
  %next.gep = getelementptr i8, ptr %i.az, i64 %i.bk ; 2 uses
  %i.bl = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat98, ptr %next.gep, align 4
  store <4 x i32> %broadcast.splat98, ptr %i.bl, align 4
  %index.next101 = add nuw i64 %index100, 8       ; 2 uses
  %i.bm = icmp eq i64 %index.next101, %n.vec96
  br i1 %i.bm, label %middle.block102, label %vector.body99, !llvm.loop !16

middle.block102:                                  ; preds = %vector.body99
  %cmp.n103 = icmp eq i64 %i.bh, %n.vec96
  br i1 %cmp.n103, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71, label %.lr.ph.i61.preheader

.lr.ph.i61.preheader:                             ; preds = %.lr.ph.preheader.i, %middle.block102
  %.07.i62.ph = phi ptr [ %i.az, %.lr.ph.preheader.i ], [ %i.bj, %middle.block102 ]
  br label %.lr.ph.i61

.lr.ph.i61:                                       ; preds = %.lr.ph.i61.preheader, %.lr.ph.i61
  %.07.i62 = phi ptr [ %i.bn, %.lr.ph.i61 ], [ %.07.i62.ph, %.lr.ph.i61.preheader ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.07.i62, i64 4 ; 2 uses
  store i32 %3, ptr %.07.i62, align 4
  %i.bo = icmp ult ptr %i.bn, %i.aw
  br i1 %i.bo, label %.lr.ph.i61, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71, !llvm.loop !17

_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit:    ; preds = %.lr.ph.i, %vector.body, %bb.i
  %.2 = phi i32 [ %1, %bb.i ], [ %i.ah, %vector.body ], [ %i.ah, %.lr.ph.i ] ; 3 uses
  %i.bp = and i32 %i.ab, 15                       ; 2 uses
  %i.bq = and i32 %i.ab, 4194288                  ; 2 uses
  %i.br = icmp samesign ult i32 %.2, %i.bq
  br i1 %i.br, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bu = zext nneg i32 %.2 to i64
  %i.bv = insertelement <4 x i32> poison, i32 %3, i64 0
  %i.bw = shufflevector <4 x i32> %i.bv, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit67
  %indvars.iv = phi i64 [ %i.bu, %.lr.ph ], [ %indvars.iv.next, %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit67 ] ; 2 uses
  %i.bx = lshr i64 %indvars.iv, 4                 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1
  %i.ca = icmp eq i8 %i.bz, 0
  br i1 %i.ca, label %bb.o, label %.lr.ph.i65

bb.o:                                             ; preds = %bb.n
  %i.cb = load ptr, ptr %0, align 8
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.bx
  store i32 %3, ptr %i.cc, align 4
  br label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit67

.lr.ph.i65:                                       ; preds = %bb.n
  %i.cd = load ptr, ptr %i.bt, align 8
  %i.ce = load ptr, ptr %0, align 8
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.bx
  %i.cg = load i32, ptr %i.cf, align 4
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.ch ; 4 uses
  store <4 x i32> %i.bw, ptr %i.ci, align 4
  %.07.i66.ptr.4 = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store <4 x i32> %i.bw, ptr %.07.i66.ptr.4, align 4
  %.07.i66.ptr.8 = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  store <4 x i32> %i.bw, ptr %.07.i66.ptr.8, align 4
  %.07.i66.ptr.12 = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  store <4 x i32> %i.bw, ptr %.07.i66.ptr.12, align 4
  br label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit67

_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit67:  ; preds = %.lr.ph.i65, %bb.o
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16 ; 2 uses
  %i.cj = trunc nuw i64 %indvars.iv.next to i32   ; 2 uses
  %i.ck = icmp sgt i32 %i.bq, %i.cj
  br i1 %i.ck, label %bb.n, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit67, %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit
  %.3.lcssa = phi i32 [ %.2, %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit ], [ %i.cj, %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit67 ]
  %.not59 = icmp eq i32 %i.bp, 0
  br i1 %.not59, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.cl = lshr i32 %.3.lcssa, 4
  %i.cm = tail call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie12getDataBlockEi(ptr noundef nonnull align 8 dereferenceable(69696) %0, i32 noundef %i.cl) ; 2 uses
  %i.cn = icmp sgt i32 %i.cm, -1
  br i1 %i.cn, label %.lr.ph.preheader.i68, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71.sink.split

.lr.ph.preheader.i68:                             ; preds = %bb.p
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cp = load ptr, ptr %i.co, align 8            ; 2 uses
  %11 = ptrtoint ptr %i.cp to i64                 ; 2 uses
  %i.cq = zext nneg i32 %i.cm to i64              ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.cq ; 4 uses
  %i.cs = zext nneg i32 %i.bp to i64              ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.cs
  %i.cu = shl nuw nsw i64 %i.cq, 2                ; 2 uses
  %12 = add nuw i64 %i.cu, %11
  %13 = shl nuw nsw i64 %i.cs, 2
  %i.cv = tail call i64 @llvm.umax.i64(i64 %13, i64 4)
  %umax105 = add nuw i64 %12, %i.cv
  %14 = xor i64 %11, -1
  %i.cw = add i64 %umax105, %14
  %15 = sub i64 %i.cw, %i.cu                      ; 2 uses
  %i.cx = lshr i64 %15, 2
  %i.cy = add nuw nsw i64 %i.cx, 1                ; 2 uses
  %min.iters.check107 = icmp ult i64 %15, 28
  br i1 %min.iters.check107, label %.lr.ph.i69.preheader, label %vector.ph108

vector.ph108:                                     ; preds = %.lr.ph.preheader.i68
  %n.vec110 = and i64 %i.cy, 9223372036854775800  ; 3 uses
  %i.cz = shl i64 %n.vec110, 2
  %i.da = getelementptr i8, ptr %i.cr, i64 %i.cz
  %broadcast.splatinsert111 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat112 = shufflevector <4 x i32> %broadcast.splatinsert111, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body113

vector.body113:                                   ; preds = %vector.body113, %vector.ph108
  %index114 = phi i64 [ 0, %vector.ph108 ], [ %index.next116, %vector.body113 ] ; 2 uses
  %i.db = shl i64 %index114, 2
  %next.gep115 = getelementptr i8, ptr %i.cr, i64 %i.db ; 2 uses
  %i.dc = getelementptr i8, ptr %next.gep115, i64 16
  store <4 x i32> %broadcast.splat112, ptr %next.gep115, align 4
  store <4 x i32> %broadcast.splat112, ptr %i.dc, align 4
  %index.next116 = add nuw i64 %index114, 8       ; 2 uses
  %i.dd = icmp eq i64 %index.next116, %n.vec110
  br i1 %i.dd, label %middle.block117, label %vector.body113, !llvm.loop !19

middle.block117:                                  ; preds = %vector.body113
  %cmp.n118 = icmp eq i64 %i.cy, %n.vec110
  br i1 %cmp.n118, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71, label %.lr.ph.i69.preheader

.lr.ph.i69.preheader:                             ; preds = %.lr.ph.preheader.i68, %middle.block117
  %.07.i70.ph = phi ptr [ %i.cr, %.lr.ph.preheader.i68 ], [ %i.da, %middle.block117 ]
  br label %.lr.ph.i69

.lr.ph.i69:                                       ; preds = %.lr.ph.i69.preheader, %.lr.ph.i69
  %.07.i70 = phi ptr [ %i.de, %.lr.ph.i69 ], [ %.07.i70.ph, %.lr.ph.i69.preheader ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.07.i70, i64 4 ; 2 uses
  store i32 %3, ptr %.07.i70, align 4
  %i.df = icmp ult ptr %i.de, %i.ct
  br i1 %i.df, label %.lr.ph.i69, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71, !llvm.loop !20

_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71.sink.split: ; preds = %bb.p, %bb.j, %bb.e, %bb.b
  %.sink = phi i32 [ 7, %bb.j ], [ 7, %bb.e ], [ 1, %bb.b ], [ 7, %bb.p ]
  store i32 %.sink, ptr %4, align 4
  br label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71

_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71:  ; preds = %.lr.ph.i61, %.lr.ph.i69, %middle.block102, %middle.block117, %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71.sink.split, %bb.m, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @umutablecptrie_buildImmutable_78(ptr nofree noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i16], align 16            ; 6 uses
  %4 = alloca %"class.icu_78::(anonymous namespace)::MixedBlocks", align 8 ; 16 uses
  %i.b = alloca [2176 x i16], align 16            ; 7 uses
  %i.c = alloca [128 x i32], align 16             ; 5 uses
  %5 = alloca %"class.icu_78::(anonymous namespace)::AllSameBlocks", align 4 ; 15 uses
  %6 = alloca %"class.icu_78::(anonymous namespace)::MixedBlocks", align 8 ; 23 uses
  %i.d = load i32, ptr %3, align 4
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie5buildE11UCPTrieType17UCPTrieValueWidthR10UErrorCode.exit

bb.b:                                             ; preds = %bb.a
  %or.cond.i = icmp ugt i32 %1, 1
  %i.f = icmp ugt i32 %2, 2
  %or.cond5.i = or i1 %or.cond.i, %i.f
  br i1 %or.cond5.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %3, align 4
  br label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie5buildE11UCPTrieType17UCPTrieValueWidthR10UErrorCode.exit

bb.d:                                             ; preds = %bb.b
  switch i32 %2, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie10maskValuesEj.exit.i [
    i32 2, label %bb.m
    i32 0, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = load <2 x i32>, ptr %i.g, align 8
  %i.i = and <2 x i32> %i.h, splat (i32 65535)
  store <2 x i32> %i.i, ptr %i.g, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, 65535
  store i32 %i.l, ptr %i.j, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load i32, ptr %i.m, align 8
  %i.o = ashr i32 %i.n, 4                         ; 4 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.i.i, label %.preheader.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %wide.trip.count.i.i = zext nneg i32 %i.o to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.r = icmp eq i32 %i.o, 1
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483646
  br label %bb.g

.preheader.i.i.loopexit.unr-lcssa:                ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %.preheader.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod331 = trunc i32 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod331)
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv.i.i.epil.init
  %i.t = load i8, ptr %i.s, align 1
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.f, label %.preheader.i.i

bb.f:                                             ; preds = %.epil.preheader
  %i.v = load ptr, ptr %0, align 8
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i.i.epil.init ; 2 uses
  %i.x = load i32, ptr %i.w, align 4
  %i.y = and i32 %i.x, 65535
  store i32 %i.y, ptr %i.w, align 4
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.loopexit.unr-lcssa, %bb.f, %.epil.preheader, %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph16.i.i, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie10maskValuesEj.exit.i

.lr.ph16.i.i:                                     ; preds = %.preheader.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.l

bb.g:                                             ; preds = %bb.k, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.k ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.k ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv.i.i
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = load ptr, ptr %0, align 8
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.i.i ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = and i32 %i.ai, 65535
  store i32 %i.aj, ptr %i.ah, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv.next.i.i
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.an = load ptr, ptr %0, align 8
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next.i.i ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = and i32 %i.ap, 65535
  store i32 %i.aq, ptr %i.ao, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i.i.loopexit.unr-lcssa, label %bb.g, !llvm.loop !21

bb.l:                                             ; preds = %bb.l, %.lr.ph16.i.i
  %indvars.iv18.i.i = phi i64 [ 0, %.lr.ph16.i.i ], [ %indvars.iv.next19.i.i, %bb.l ] ; 2 uses
  %i.ar = load ptr, ptr %i.ac, align 8
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv18.i.i ; 2 uses
  %i.at = load i32, ptr %i.as, align 4
  %i.au = and i32 %i.at, 65535
  store i32 %i.au, ptr %i.as, align 4
  %indvars.iv.next19.i.i = add nuw nsw i64 %indvars.iv18.i.i, 1 ; 2 uses
  %i.av = load i32, ptr %i.z, align 4
  %i.aw = sext i32 %i.av to i64
  %i.ax = icmp slt i64 %indvars.iv.next19.i.i, %i.aw
  br i1 %i.ax, label %bb.l, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie10maskValuesEj.exit.i, !llvm.loop !22

bb.m:                                             ; preds = %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.az = load <2 x i32>, ptr %i.ay, align 8
  %i.ba = and <2 x i32> %i.az, splat (i32 255)
  store <2 x i32> %i.ba, ptr %i.ay, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = and i32 %i.bc, 255
  store i32 %i.bd, ptr %i.bb, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bf = load i32, ptr %i.be, align 8
  %i.bg = ashr i32 %i.bf, 4                       ; 4 uses
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %.lr.ph.i118.i, label %.preheader.i114.i

.lr.ph.i118.i:                                    ; preds = %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %wide.trip.count.i119.i = zext nneg i32 %i.bg to i64 ; 2 uses
  %xtraiter333 = and i64 %wide.trip.count.i119.i, 1
end_hunk_0
