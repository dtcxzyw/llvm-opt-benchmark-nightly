Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/ucurr?download=true
inline.NumInlined: 408
inline.NumDeleted: 83
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZL13getCacheEntryPKcR10UErrorCode:bb.a
  ret ptr %.041
}

declare i32 @u_strToUpper_78(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZL18searchCurrencyNamePK18CurrencyNameStructiPKDsiPiS4_S4_(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull readonly captures(none) %2, i32 noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef nonnull captures(none) initializes((0, 4)) %5, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %6) unnamed_addr #5 {
bb.a:
  store i32 -1, ptr %6, align 4, !tbaa !33
  store i32 0, ptr %5, align 4, !tbaa !33
  %smax = tail call i32 @llvm.smax.i32(i32 %3, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  %exitcond.not63 = icmp slt i32 %3, 1
  br i1 %exitcond.not63, label %_ZL12linearSearchPK18CurrencyNameStructiiPKDsiPiS4_S4_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = add nsw i32 %1, -1
  br label %bb.c

bb.b:                                             ; preds = %bb.s
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZL12linearSearchPK18CurrencyNameStructiiPKDsiPiS4_S4_.exit, label %bb.c, !llvm.loop !91

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.03866 = phi i32 [ %i.a, %.lr.ph ], [ %storemerge.i, %bb.b ] ; 5 uses
  %.03965 = phi i32 [ 0, %.lr.ph ], [ %.071.lcssa.i, %bb.b ] ; 5 uses
  %indvars.iv64 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 9 uses
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv64
  %i.c = load i16, ptr %i.b, align 2, !tbaa !28   ; 5 uses
  %.not97.i = icmp sgt i32 %.03965, %.03866
  br i1 %.not97.i, label %_ZL12linearSearchPK18CurrencyNameStructiiPKDsiPiS4_S4_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.p
  %.07599.i = phi i32 [ %.277.i, %bb.p ], [ %.03866, %bb.c ] ; 3 uses
  %.07898.i = phi i32 [ %.280.i, %bb.p ], [ %.03965, %bb.c ] ; 2 uses
  %i.d = add nsw i32 %.07898.i, %.07599.i
  %i.e = sdiv i32 %i.d, 2                         ; 8 uses
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [24 x i8], ptr %0, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !51
  %i.j = sext i32 %i.i to i64
  %.not87.i = icmp slt i64 %indvars.iv64, %i.j
  br i1 %.not87.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.k = add nsw i32 %i.e, 1
  br label %bb.p

bb.e:                                             ; preds = %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !50
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %indvars.iv64
  %i.o = load i16, ptr %i.n, align 2, !tbaa !28   ; 2 uses
  %i.p = icmp ugt i16 %i.c, %i.o
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.e, 1
  br label %bb.p

bb.g:                                             ; preds = %bb.e
  %i.r = icmp ult i16 %i.c, %i.o
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = add nsw i32 %i.e, -1
  br label %bb.p

bb.i:                                             ; preds = %bb.g
  %i.t = icmp slt i32 %.03965, %i.e
  br i1 %i.t, label %.lr.ph103.i, label %._crit_edge104.i

.lr.ph103.i:                                      ; preds = %bb.i, %bb.l
  %.069101.i = phi i32 [ %.170.i, %bb.l ], [ %i.e, %bb.i ] ; 3 uses
  %.071100.i = phi i32 [ %.172.i, %bb.l ], [ %.03965, %bb.i ] ; 2 uses
  %i.u = add nsw i32 %.071100.i, %.069101.i
  %i.v = sdiv i32 %i.u, 2                         ; 4 uses
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [24 x i8], ptr %0, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !51
  %i.aa = sext i32 %i.z to i64
  %.not88.i = icmp slt i64 %indvars.iv64, %i.aa
  br i1 %.not88.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph103.i
  %i.ab = add nsw i32 %i.v, 1
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph103.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !50
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %indvars.iv64
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !28
  %i.ag = icmp ult i16 %i.af, %i.c                ; 2 uses
  %i.ah = add nsw i32 %i.v, 1
  %spec.select.i = select i1 %i.ag, i32 %i.ah, i32 %.071100.i
  %spec.select89.i = select i1 %i.ag, i32 %.069101.i, i32 %i.v
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.172.i = phi i32 [ %i.ab, %bb.j ], [ %spec.select.i, %bb.k ] ; 3 uses
  %.170.i = phi i32 [ %.069101.i, %bb.j ], [ %spec.select89.i, %bb.k ] ; 2 uses
  %i.ai = icmp slt i32 %.172.i, %.170.i
  br i1 %i.ai, label %.lr.ph103.i, label %._crit_edge104.i, !llvm.loop !92

._crit_edge104.i:                                 ; preds = %bb.l, %bb.i
  %.071.lcssa.i = phi i32 [ %.03965, %bb.i ], [ %.172.i, %bb.l ] ; 6 uses
  %i.aj = icmp slt i32 %i.e, %.03866
  br i1 %i.aj, label %.lr.ph108.i, label %_ZL12binarySearchPK18CurrencyNameStructiDsPiS2_.exit

.lr.ph108.i:                                      ; preds = %._crit_edge104.i, %bb.o
  %.2106.i = phi i32 [ %.3.i, %bb.o ], [ %.03866, %._crit_edge104.i ] ; 3 uses
  %.273105.i = phi i32 [ %.374.i, %bb.o ], [ %i.e, %._crit_edge104.i ] ; 2 uses
  %i.ak = add nsw i32 %.273105.i, %.2106.i
  %i.al = sdiv i32 %i.ak, 2                       ; 4 uses
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [24 x i8], ptr %0, i64 %i.am ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !51
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp sgt i64 %indvars.iv64, %i.aq
  br i1 %i.ar, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph108.i
  %i.as = add nsw i32 %i.al, 1
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph108.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !50
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %indvars.iv64
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !28
  %i.ax = icmp ugt i16 %i.aw, %i.c                ; 2 uses
  %i.ay = add nsw i32 %i.al, 1
  %spec.select90.i = select i1 %i.ax, i32 %.273105.i, i32 %i.ay
  %spec.select91.i = select i1 %i.ax, i32 %i.al, i32 %.2106.i
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.374.i = phi i32 [ %i.as, %bb.m ], [ %spec.select90.i, %bb.n ] ; 2 uses
  %.3.i = phi i32 [ %.2106.i, %bb.m ], [ %spec.select91.i, %bb.n ] ; 3 uses
  %i.az = icmp slt i32 %.374.i, %.3.i
  br i1 %i.az, label %.lr.ph108.i, label %_ZL12binarySearchPK18CurrencyNameStructiDsPiS2_.exit, !llvm.loop !93

bb.p:                                             ; preds = %bb.h, %bb.f, %bb.d
  %.280.i = phi i32 [ %.07898.i, %bb.h ], [ %i.k, %bb.d ], [ %i.q, %bb.f ] ; 2 uses
  %.277.i = phi i32 [ %i.s, %bb.h ], [ %.07599.i, %bb.d ], [ %.07599.i, %bb.f ] ; 2 uses
  %.not.i = icmp sgt i32 %.280.i, %.277.i
  br i1 %.not.i, label %_ZL12linearSearchPK18CurrencyNameStructiiPKDsiPiS4_S4_.exit, label %.lr.ph.i, !llvm.loop !94

_ZL12binarySearchPK18CurrencyNameStructiDsPiS2_.exit: ; preds = %bb.o, %._crit_edge104.i
  %.2.lcssa.i = phi i32 [ %.03866, %._crit_edge104.i ], [ %.3.i, %bb.o ] ; 2 uses
  %i.ba = sext i32 %.2.lcssa.i to i64
  %i.bb = getelementptr inbounds [24 x i8], ptr %0, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !50
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %indvars.iv64
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !28
  %i.bg = icmp ugt i16 %i.bf, %i.c
  %i.bh = sext i1 %i.bg to i32
  %storemerge.i = add nsw i32 %.2.lcssa.i, %i.bh  ; 4 uses
  %i.bi = sext i32 %.071.lcssa.i to i64           ; 2 uses
  %i.bj = getelementptr inbounds [24 x i8], ptr %0, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !51
  %indvars.iv.next = add nuw nsw i64 %indvars.iv64, 1 ; 4 uses
  %i.bm = zext i32 %i.bl to i64
  %i.bn = icmp eq i64 %indvars.iv.next, %i.bm
  %.182.i = select i1 %i.bn, i32 %.071.lcssa.i, i32 -1 ; 2 uses
  %i.bo = icmp eq i32 %.071.lcssa.i, -1
  br i1 %i.bo, label %_ZL12linearSearchPK18CurrencyNameStructiiPKDsiPiS4_S4_.exit, label %bb.q

bb.q:                                             ; preds = %_ZL12binarySearchPK18CurrencyNameStructiDsPiS2_.exit
  %i.bp = load i32, ptr %4, align 4, !tbaa !33
  %i.bq = trunc nuw i64 %indvars.iv.next to i32   ; 2 uses
  %. = tail call i32 @llvm.smax.i32(i32 %i.bp, i32 %i.bq)
  store i32 %., ptr %4, align 4, !tbaa !33
  %.not29 = icmp eq i32 %.182.i, -1
  br i1 %.not29, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 %i.bq, ptr %5, align 4, !tbaa !33
  store i32 %.182.i, ptr %6, align 4, !tbaa !33
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.br = sub nsw i32 %storemerge.i, %.071.lcssa.i
  %i.bs = icmp slt i32 %i.br, 10
  br i1 %i.bs, label %bb.t, label %bb.b, !llvm.loop !91

bb.t:                                             ; preds = %bb.s
  %i.bt = load i32, ptr %4, align 4, !tbaa !33    ; 2 uses
  %.not51.i = icmp sgt i32 %.071.lcssa.i, %storemerge.i
  br i1 %.not51.i, label %_ZL12linearSearchPK18CurrencyNameStructiiPKDsiPiS4_S4_.exit, label %.lr.ph54.preheader.i

.lr.ph54.preheader.i:                             ; preds = %bb.t
  %i.bu = sext i32 %i.bt to i64
  %i.bv = add i32 %storemerge.i, 1
  %.pre61.i = load i32, ptr %5, align 4, !tbaa !33
  br label %.lr.ph54.i

.lr.ph54.i:                                       ; preds = %.loopexit.i, %.lr.ph54.preheader.i
  %7 = phi i32 [ %.pre61.i, %.lr.ph54.preheader.i ], [ %8, %.loopexit.i ] ; 2 uses
  %indvars.iv56.i = phi i64 [ %i.bi, %.lr.ph54.preheader.i ], [ %indvars.iv.next57.i, %.loopexit.i ] ; 3 uses
  %i.bw = getelementptr inbounds [24 x i8], ptr %0, i64 %indvars.iv56.i ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !51 ; 7 uses
  %i.bz = icmp sle i32 %i.by, %7
  %.not45.i = icmp sgt i32 %i.by, %3
  %or.cond.i = or i1 %.not45.i, %i.bz
  br i1 %or.cond.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %.lr.ph54.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !50
  %i.cc = sext i32 %i.by to i64
  %i.cd = shl nsw i64 %i.cc, 1
  %bcmp.i = tail call i32 @bcmp(ptr %i.cb, ptr nonnull readonly %2, i64 %i.cd)
  %i.ce = icmp eq i32 %bcmp.i, 0
  br i1 %i.ce, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cf = load i32, ptr %4, align 4, !tbaa !33
  %..i = tail call i32 @llvm.smax.i32(i32 %i.cf, i32 %i.by)
  store i32 %..i, ptr %4, align 4, !tbaa !33
  %i.cg = trunc nsw i64 %indvars.iv56.i to i32
  store i32 %i.cg, ptr %6, align 4, !tbaa !33
  store i32 %i.by, ptr %5, align 4, !tbaa !33
  br label %.loopexit.i

bb.w:                                             ; preds = %bb.u, %.lr.ph54.i
  %i.ch = tail call i32 @llvm.smin.i32(i32 %i.by, i32 %3) ; 2 uses
  %i.ci = icmp slt i32 %i.bt, %i.ch
  br i1 %i.ci, label %.lr.ph.i31, label %.loopexit.i

.lr.ph.i31:                                       ; preds = %bb.w
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !50
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %.lr.ph.i31
  %indvars.iv.i = phi i64 [ %i.bu, %.lr.ph.i31 ], [ %indvars.iv.next.i, %bb.y ] ; 3 uses
  %i.cl = getelementptr inbounds [2 x i8], ptr %i.ck, i64 %indvars.iv.i
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !28
  %i.cn = getelementptr inbounds [2 x i8], ptr %2, i64 %indvars.iv.i
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !28
  %.not46.i = icmp eq i16 %i.cm, %i.co
  br i1 %.not46.i, label %bb.y, label %.loopexit.loopexit.i

bb.y:                                             ; preds = %bb.x
  %i.cp = load i32, ptr %4, align 4, !tbaa !33
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cq = trunc i64 %indvars.iv.next.i to i32     ; 2 uses
  %.48.i = tail call i32 @llvm.smax.i32(i32 %i.cp, i32 %i.cq)
  store i32 %.48.i, ptr %4, align 4, !tbaa !33
  %exitcond.not.i = icmp eq i32 %i.ch, %i.cq
  br i1 %exitcond.not.i, label %.loopexit.loopexit.i, label %bb.x, !llvm.loop !95

.loopexit.loopexit.i:                             ; preds = %bb.y, %bb.x
  %.pre.i = load i32, ptr %5, align 4, !tbaa !33
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %bb.w, %bb.v
  %8 = phi i32 [ %.pre.i, %.loopexit.loopexit.i ], [ %7, %bb.w ], [ %i.by, %bb.v ]
  %indvars.iv.next57.i = add nsw i64 %indvars.iv56.i, 1 ; 2 uses
  %lftr.wideiv59.i = trunc i64 %indvars.iv.next57.i to i32
  %exitcond60.not.i = icmp eq i32 %i.bv, %lftr.wideiv59.i
  br i1 %exitcond60.not.i, label %_ZL12linearSearchPK18CurrencyNameStructiiPKDsiPiS4_S4_.exit, label %.lr.ph54.i, !llvm.loop !96

_ZL12linearSearchPK18CurrencyNameStructiiPKDsiPiS4_S4_.exit: ; preds = %bb.b, %_ZL12binarySearchPK18CurrencyNameStructiDsPiS2_.exit, %bb.c, %bb.p, %.loopexit.i, %bb.a, %bb.t
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z21uprv_currencyLeads_78PKcRN6icu_7810UnicodeSetER10UErrorCode(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !19
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc noundef ptr @_ZL13getCacheEntryPKcR10UErrorCode(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %2) ; 6 uses
  %i.d = load i32, ptr %2, align 4, !tbaa !19
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %.preheader42, label %bb.n

.preheader42:                                     ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 184 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !41
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %.preheader42
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  br label %bb.c

.preheader:                                       ; preds = %bb.g, %.preheader42
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 168 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !39
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph45, label %._crit_edge

.lr.ph45:                                         ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  br label %bb.i

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !42
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %indvars.iv ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !50   ; 2 uses
  %i.r = load i16, ptr %i.q, align 2, !tbaa !28
  %i.s = zext i16 %i.r to i32                     ; 5 uses
  %i.t = and i32 %i.s, 64512
  %or.cond = icmp eq i32 %i.t, 55296
  br i1 %or.cond, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.v = load i32, ptr %i.u, align 8, !tbaa !51
  %.not38 = icmp eq i32 %i.v, 1
  br i1 %.not38, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.x = load i16, ptr %i.w, align 2, !tbaa !28
  %i.y = zext i16 %i.x to i32                     ; 2 uses
  %i.z = and i32 %i.y, 64512
  %i.aa = icmp eq i32 %i.z, 56320
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = shl nuw nsw i32 %i.s, 10
  %i.ac = add nsw i32 %i.ab, -56613888
  %i.ad = add nuw nsw i32 %i.ac, %i.y
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.134 = phi i32 [ %i.s, %bb.c ], [ %i.ad, %bb.f ], [ %i.s, %bb.e ], [ %i.s, %bb.d ]
  %i.ae = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEi(ptr noundef nonnull align 8 dereferenceable(200) %1, i32 noundef %.134) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.af = load i32, ptr %i.f, align 8, !tbaa !41
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp slt i64 %indvars.iv.next, %i.ag
  br i1 %i.ah, label %bb.c, label %.preheader, !llvm.loop !97

._crit_edge:                                      ; preds = %bb.m, %.preheader
  tail call void @umtx_lock_78(ptr noundef nonnull @_ZL19gCurrencyCacheMutex)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 188 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !45
  %i.ak = add nsw i32 %i.aj, -1                   ; 2 uses
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !45
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.h, label %_ZL17releaseCacheEntryP22CurrencyNameCacheEntry.exit

bb.h:                                             ; preds = %._crit_edge
  tail call fastcc void @_ZL16deleteCacheEntryP22CurrencyNameCacheEntry(ptr noundef nonnull %i.c)
  br label %_ZL17releaseCacheEntryP22CurrencyNameCacheEntry.exit

_ZL17releaseCacheEntryP22CurrencyNameCacheEntry.exit: ; preds = %._crit_edge, %bb.h
  tail call void @umtx_unlock_78(ptr noundef nonnull @_ZL19gCurrencyCacheMutex)
  br label %bb.n

bb.i:                                             ; preds = %.lr.ph45, %bb.m
  %indvars.iv47 = phi i64 [ 0, %.lr.ph45 ], [ %indvars.iv.next48, %bb.m ] ; 2 uses
  %i.am = load ptr, ptr %i.m, align 8, !tbaa !40
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %indvars.iv47 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !50 ; 2 uses
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !28
  %i.ar = zext i16 %i.aq to i32                   ; 5 uses
  %i.as = and i32 %i.ar, 64512
  %or.cond41 = icmp eq i32 %i.as, 55296
  br i1 %or.cond41, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.au = load i32, ptr %i.at, align 8, !tbaa !51
  %.not37 = icmp eq i32 %i.au, 1
  br i1 %.not37, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !28
  %i.ax = zext i16 %i.aw to i32                   ; 2 uses
  %i.ay = and i32 %i.ax, 64512
  %i.az = icmp eq i32 %i.ay, 56320
  br i1 %i.az, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ba = shl nuw nsw i32 %i.ar, 10
  %i.bb = add nsw i32 %i.ba, -56613888
  %i.bc = add nuw nsw i32 %i.bb, %i.ax
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %.1 = phi i32 [ %i.ar, %bb.i ], [ %i.bc, %bb.l ], [ %i.ar, %bb.k ], [ %i.ar, %bb.j ]
  %i.bd = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEi(ptr noundef nonnull align 8 dereferenceable(200) %1, i32 noundef %.1) ; 0 uses
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1 ; 2 uses
  %i.be = load i32, ptr %i.j, align 8, !tbaa !39
  %i.bf = sext i32 %i.be to i64
  %i.bg = icmp slt i64 %indvars.iv.next48, %i.bf
  br i1 %i.bg, label %bb.i, label %._crit_edge, !llvm.loop !98

bb.n:                                             ; preds = %_ZL17releaseCacheEntryP22CurrencyNameCacheEntry.exit, %bb.b, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEi(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @uprv_getStaticCurrencyName_78(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = call ptr @ucurr_getName_78(ptr noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %3)
  %i.c = load i32, ptr %3, align 4, !tbaa !19
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.a, align 4, !tbaa !33
  call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %2)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i16, ptr %i.f, align 8, !tbaa !17   ; 2 uses
  %i.h = icmp slt i16 %i.g, 0
  %i.i = ashr i16 %i.g, 5
  %i.j = sext i16 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.l = load i32, ptr %i.k, align 4
  %i.m = select i1 %i.h, i32 %i.l, i32 %i.j
  %i.n = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 0, i32 noundef %i.m, ptr noundef %i.b, i32 noundef 0, i32 noundef %i.e) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define i32 @ucurr_getDefaultFractionDigits_78(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !19
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %ucurr_getDefaultFractionDigitsForUsage_78.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc noundef ptr @_ZL13_findMetaDataPKDsR10UErrorCode(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.d = load i32, ptr %i.c, align 4, !tbaa !33
  br label %ucurr_getDefaultFractionDigitsForUsage_78.exit

ucurr_getDefaultFractionDigitsForUsage_78.exit:   ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ 0, %bb.a ], [ %i.d, %bb.b ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress uwtable
define i32 @ucurr_getDefaultFractionDigitsForUsage_78(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !19
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.f, label %bb.b

end_hunk_0
