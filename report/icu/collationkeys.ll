Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/collationkeys?download=true
inline.NumInlined: 107
inline.NumDeleted: 37
begin_hunk_0_@_ZN6icu_7815SortKeyByteSink15GetAppendBufferEiiPciPi:bb.a
bb.j:                                             ; preds = %bb.f, %bb.h, %bb.i, %bb.d, %bb.b
  %.1 = phi ptr [ null, %bb.b ], [ %3, %bb.d ], [ %i.o, %bb.f ], [ %i.aa, %bb.h ], [ %3, %bb.i ]
  ret ptr %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN6icu_7813CollationKeys13LevelCallbackD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(8) %0) unnamed_addr #6 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7813CollationKeys13LevelCallbackD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6icu_7813CollationKeys13LevelCallbackD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #13
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_787UMemorydlEPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef signext i8 @_ZN6icu_7813CollationKeys13LevelCallback11needToWriteENS_9Collation5LevelE(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1) unnamed_addr #6 align 2 {
bb.a:
  ret i8 1
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7813CollationKeys26writeSortKeyUpToQuaternaryERNS_17CollationIteratorEPKaRKNS_17CollationSettingsERNS_15SortKeyByteSinkENS_9Collation5LevelERNS0_13LevelCallbackEaR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(389) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull align 8 dereferenceable(852) %2, ptr noundef nonnull align 8 dereferenceable(28) %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, i8 noundef signext %6, ptr noundef nonnull align 4 dereferenceable(4) %7) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.icu_78::(anonymous namespace)::SortKeyLevel", align 8 ; 32 uses
  %9 = alloca %"class.icu_78::(anonymous namespace)::SortKeyLevel", align 8 ; 44 uses
  %10 = alloca %"class.icu_78::(anonymous namespace)::SortKeyLevel", align 8 ; 51 uses
  %11 = alloca %"class.icu_78::(anonymous namespace)::SortKeyLevel", align 8 ; 46 uses
  %i.a = alloca [3 x i8], align 1                 ; 7 uses
  %i.b = load i32, ptr %7, align 4, !tbaa !47
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.nb

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !53   ; 6 uses
  %i.f = ashr i32 %i.e, 12                        ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr @_ZN6icu_78L10levelMasksE, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !18
  %i.j = lshr i32 %i.e, 7
  %i.k = and i32 %i.j, 8
  %spec.select = or i32 %i.k, %i.i
  %notmask = shl nsw i32 -1, %4
  %i.l = and i32 %spec.select, %notmask           ; 6 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.nb, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = and i32 %i.e, 12
  %i.o = icmp eq i32 %i.n, 0                      ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.q = load i32, ptr %i.p, align 4
  %i.r = add i32 %i.q, 1
  %.0351 = select i1 %i.o, i32 0, i32 %i.r        ; 2 uses
  %i.s = and i32 %i.e, 1536
  %.not.i.not = icmp eq i32 %i.s, 512             ; 2 uses
  %i.t = select i1 %.not.i.not, i32 65343, i32 16191
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 13
  store ptr %i.u, ptr %8, align 8, !tbaa !55
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 16 uses
  store i32 40, ptr %i.v, align 8, !tbaa !56
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 13 uses
  store i8 0, ptr %i.w, align 4, !tbaa !57
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 18 uses
  store i32 0, ptr %i.x, align 8, !tbaa !59
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 60 ; 12 uses
  store i8 1, ptr %i.y, align 4, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 13
  store ptr %i.z, ptr %9, align 8, !tbaa !55
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 22 uses
  store i32 40, ptr %i.aa, align 8, !tbaa !56
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 17 uses
  store i8 0, ptr %i.ab, align 4, !tbaa !57
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 30 uses
  store i32 0, ptr %i.ac, align 8, !tbaa !59
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 60 ; 16 uses
  store i8 1, ptr %i.ad, align 4, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 13
  store ptr %i.ae, ptr %10, align 8, !tbaa !55
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 28 uses
  store i32 40, ptr %i.af, align 8, !tbaa !56
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 21 uses
  store i8 0, ptr %i.ag, align 4, !tbaa !57
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 56 ; 35 uses
  store i32 0, ptr %i.ah, align 8, !tbaa !59
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 60 ; 20 uses
  store i8 1, ptr %i.ai, align 4, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 13
  store ptr %i.aj, ptr %11, align 8, !tbaa !55
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 24 uses
  store i32 40, ptr %i.ak, align 8, !tbaa !56
  %i.al = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 19 uses
  store i8 0, ptr %i.al, align 4, !tbaa !57
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 56 ; 32 uses
  store i32 0, ptr %i.am, align 8, !tbaa !59
  %i.an = getelementptr inbounds nuw i8, ptr %11, i64 60 ; 18 uses
  store i8 1, ptr %i.an, align 4, !tbaa !60
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aq = and i32 %i.l, 32
  %.not374 = icmp eq i32 %i.aq, 0                 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.as = and i32 %i.l, 2
  %.not376 = icmp eq i32 %i.as, 0
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 14 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.not384 = icmp eq i8 %6, 0
  %i.az = and i32 %i.l, 4
  %.not388 = icmp eq i32 %i.az, 0                 ; 2 uses
  %i.ba = and i32 %i.e, 2048
  %i.bb = icmp eq i32 %i.ba, 0                    ; 2 uses
  %i.bc = and i32 %i.l, 8
  %.not395 = icmp eq i32 %i.bc, 0                 ; 2 uses
  %i.bd = icmp eq i32 %i.f, 0
  %i.be = and i32 %i.e, 256
  %i.bf = icmp eq i32 %i.be, 0                    ; 2 uses
  %i.bg = and i32 %i.l, 16
  %.not401 = icmp eq i32 %i.bg, 0                 ; 2 uses
  br label %.critedge.outer

.critedge.outer:                                  ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit841, %bb.c
  %.0320.ph = phi i32 [ %.2322, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit841 ], [ 0, %bb.c ]
  %.0310.ph = phi i32 [ %.7317, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit841 ], [ 0, %bb.c ] ; 10 uses
  %.0301.ph = phi i32 [ %.6307, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit841 ], [ 0, %bb.c ] ; 8 uses
  %.0291.ph = phi i32 [ %.8299, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit841 ], [ 0, %bb.c ] ; 11 uses
  %.0286.ph = phi i32 [ %.7, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit841 ], [ 0, %bb.c ]
  %.0281.ph = phi i32 [ %.2283, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit841 ], [ 0, %bb.c ] ; 8 uses
  %.0276.ph = phi i32 [ %.2278, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit841 ], [ 0, %bb.c ] ; 13 uses
  br label %.critedge

.critedge:                                        ; preds = %.critedge.outer, %bb.cb
  %.0320 = phi i32 [ %.2322, %bb.cb ], [ %.0320.ph, %.critedge.outer ] ; 5 uses
  %.0286 = phi i32 [ %.3289, %bb.cb ], [ %.0286.ph, %.critedge.outer ] ; 4 uses
  %i.bh = load i32, ptr %i.ao, align 8, !tbaa !28
  %i.bi = load i32, ptr %i.ap, align 8, !tbaa !29
  %i.bj = icmp eq i32 %i.bh, %i.bi
  br i1 %i.bj, label %bb.d, label %_ZN6icu_7817CollationIterator23clearCEsIfNoneRemainingEv.exit

bb.d:                                             ; preds = %.critedge
  store i32 0, ptr %i.ap, align 8, !tbaa !29
  store i32 0, ptr %i.ao, align 8, !tbaa !28
  br label %_ZN6icu_7817CollationIterator23clearCEsIfNoneRemainingEv.exit

_ZN6icu_7817CollationIterator23clearCEsIfNoneRemainingEv.exit: ; preds = %bb.d, %.critedge
  %i.bk = invoke noundef i64 @_ZN6icu_7817CollationIterator6nextCEER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(389) %0, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ; 3 uses

bb.e:                                             ; preds = %_ZN6icu_7817CollationIterator23clearCEsIfNoneRemainingEv.exit
  %i.bl = lshr i64 %i.bk, 32
  %i.bm = trunc nuw i64 %i.bl to i32              ; 3 uses
  %i.bn = icmp ugt i32 %.0351, %i.bm
  %i.bo = icmp ugt i64 %i.bk, 144115192370823167
  %or.cond = and i1 %i.bo, %i.bn
  br i1 %or.cond, label %bb.f, label %.loopexit956

bb.f:                                             ; preds = %bb.e
  %.not373 = icmp eq i32 %.0286, 0
  br i1 %.not373, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit488.preheader, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bp = add nsw i32 %.0286, -1                  ; 2 uses
  %i.bq = icmp sgt i32 %.0286, 113
  br i1 %i.bq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit
  %.1287974 = phi i32 [ %i.ck, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit ], [ %i.bp, %bb.g ] ; 2 uses
  %i.br = load i32, ptr %i.am, align 8, !tbaa !59 ; 5 uses
  %i.bs = load i32, ptr %i.ak, align 8, !tbaa !56 ; 2 uses
  %i.bt = icmp slt i32 %i.br, %i.bs
  br i1 %i.bt, label %._crit_edge.i, label %bb.h

._crit_edge.i:                                    ; preds = %.lr.ph
  %.pre3.i = load ptr, ptr %11, align 8, !tbaa !55
  br label %bb.o

bb.h:                                             ; preds = %.lr.ph
  %i.bu = load i8, ptr %i.an, align 4, !tbaa !60
  %.not.i.i = icmp eq i8 %i.bu, 0
  br i1 %.not.i.i, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bv = shl nsw i32 %i.bs, 1
  %i.bw = add nsw i32 %i.br, 2
  %spec.select.i.i = call i32 @llvm.smax.i32(i32 %i.bv, i32 %i.bw)
  %spec.store.select.i.i = call i32 @llvm.smax.i32(i32 %spec.select.i.i, i32 200) ; 3 uses
  %i.bx = zext nneg i32 %spec.store.select.i.i to i64
  %i.by = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.bx) #15
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ; 4 uses

.noexc:                                           ; preds = %bb.i
  %.not.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i, label %bb.n, label %bb.j

bb.j:                                             ; preds = %.noexc
  %i.bz = icmp sgt i32 %i.br, 0
  br i1 %i.bz, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ca = load i32, ptr %i.ak, align 8, !tbaa !56
  %spec.select.i.i.i = call i32 @llvm.smin.i32(i32 %i.br, i32 %i.ca)
  %.1.i.i.i.a = call i32 @llvm.smin.i32(i32 %spec.select.i.i.i, i32 %spec.store.select.i.i)
  %i.cb = load ptr, ptr %11, align 8, !tbaa !55
  %i.cc = sext i32 %.1.i.i.i.a to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.by, ptr align 1 %i.cb, i64 %i.cc, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cd = load i8, ptr %i.al, align 4, !tbaa !57
  %.not.i.i.i.i = icmp eq i8 %i.cd, 0
  br i1 %.not.i.i.i.i, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ce = load ptr, ptr %11, align 8, !tbaa !55
  invoke void @uprv_free_78(ptr noundef %i.ce)
          to label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.n:                                             ; preds = %.noexc
  store i8 0, ptr %i.an, align 4, !tbaa !60
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit

_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i: ; preds = %bb.m, %bb.l
  store ptr %i.by, ptr %11, align 8, !tbaa !55
  store i32 %spec.store.select.i.i, ptr %i.ak, align 8, !tbaa !56
  store i8 1, ptr %i.al, align 4, !tbaa !57
  %.pre.i = load i32, ptr %i.am, align 8, !tbaa !59
  br label %bb.o

bb.o:                                             ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i, %._crit_edge.i
  %i.cf = phi ptr [ %i.by, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i ], [ %.pre3.i, %._crit_edge.i ]
  %i.cg = phi i32 [ %.pre.i, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i ], [ %i.br, %._crit_edge.i ] ; 2 uses
  %i.ch = add nsw i32 %i.cg, 1
  store i32 %i.ch, ptr %i.am, align 8, !tbaa !59
  %i.ci = sext i32 %i.cg to i64
  %i.cj = getelementptr inbounds i8, ptr %i.cf, i64 %i.ci
  store i8 -116, ptr %i.cj, align 1, !tbaa !30
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit

_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit: ; preds = %bb.o, %bb.n, %bb.h
  %i.ck = add nsw i32 %.1287974, -113             ; 2 uses
  %i.cl = icmp sgt i32 %.1287974, 225
  br i1 %i.cl, label %.lr.ph, label %._crit_edge, !llvm.loop !31

._crit_edge:                                      ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit, %bb.g
  %.1287.lcssa = phi i32 [ %i.bp, %bb.g ], [ %i.ck, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit ]
  %i.cm = load i32, ptr %i.am, align 8, !tbaa !59 ; 5 uses
  %i.cn = load i32, ptr %i.ak, align 8, !tbaa !56 ; 2 uses
  %i.co = icmp slt i32 %i.cm, %i.cn
  br i1 %i.co, label %._crit_edge.i484, label %bb.p

._crit_edge.i484:                                 ; preds = %._crit_edge
  %.pre3.i485 = load ptr, ptr %11, align 8, !tbaa !55
  br label %bb.w

bb.p:                                             ; preds = %._crit_edge
  %i.cp = load i8, ptr %i.an, align 4, !tbaa !60
  %.not.i.i475 = icmp eq i8 %i.cp, 0
  br i1 %.not.i.i475, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit488.preheader, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cq = shl nsw i32 %i.cn, 1
  %i.cr = add nsw i32 %i.cm, 2
  %spec.select.i.i476 = call i32 @llvm.smax.i32(i32 %i.cq, i32 %i.cr)
  %spec.store.select.i.i477 = call i32 @llvm.smax.i32(i32 %spec.select.i.i476, i32 200) ; 3 uses
  %i.cs = zext nneg i32 %spec.store.select.i.i477 to i64
  %i.ct = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.cs) #15
          to label %.noexc486 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ; 4 uses

.noexc486:                                        ; preds = %bb.q
  %.not.i.i.i478 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i478, label %bb.v, label %bb.r

bb.r:                                             ; preds = %.noexc486
  %i.cu = icmp sgt i32 %i.cm, 0
  br i1 %i.cu, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cv = load i32, ptr %i.ak, align 8, !tbaa !56
  %spec.select.i.i.i482 = call i32 @llvm.smin.i32(i32 %i.cm, i32 %i.cv)
  %.1.i.i.i483 = call i32 @llvm.smin.i32(i32 %spec.select.i.i.i482, i32 %spec.store.select.i.i477)
  %i.cw = load ptr, ptr %11, align 8, !tbaa !55
  %i.cx = sext i32 %.1.i.i.i483 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ct, ptr align 1 %i.cw, i64 %i.cx, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cy = load i8, ptr %i.al, align 4, !tbaa !57
  %.not.i.i.i.i479 = icmp eq i8 %i.cy, 0
  br i1 %.not.i.i.i.i479, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i480, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cz = load ptr, ptr %11, align 8, !tbaa !55
  invoke void @uprv_free_78(ptr noundef %i.cz)
          to label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i480 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.v:                                             ; preds = %.noexc486
  store i8 0, ptr %i.an, align 4, !tbaa !60
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit488.preheader

_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i480: ; preds = %bb.u, %bb.t
  store ptr %i.ct, ptr %11, align 8, !tbaa !55
  store i32 %spec.store.select.i.i477, ptr %i.ak, align 8, !tbaa !56
  store i8 1, ptr %i.al, align 4, !tbaa !57
  %.pre.i481 = load i32, ptr %i.am, align 8, !tbaa !59
  br label %bb.w

bb.w:                                             ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i480, %._crit_edge.i484
  %i.da = phi ptr [ %i.ct, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i480 ], [ %.pre3.i485, %._crit_edge.i484 ]
  %i.db = phi i32 [ %.pre.i481, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i480 ], [ %i.cm, %._crit_edge.i484 ] ; 2 uses
  %i.dc = trunc i32 %.1287.lcssa to i8
  %i.dd = add i8 %i.dc, 28
  %i.de = add nsw i32 %i.db, 1
  store i32 %i.de, ptr %i.am, align 8, !tbaa !59
  %i.df = sext i32 %i.db to i64
  %i.dg = getelementptr inbounds i8, ptr %i.da, i64 %i.df
  store i8 %i.dd, ptr %i.dg, align 1, !tbaa !30
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit488.preheader

_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit488.preheader: ; preds = %bb.w, %bb.v, %bb.p, %bb.f
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit488

_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit488: ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit488.preheader, %bb.ay
  %.0271 = phi i32 [ %i.gr, %bb.ay ], [ %i.bm, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit488.preheader ] ; 5 uses
  br i1 %.not374, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14appendWeight32Ej.exit.preheader, label %bb.x

bb.x:                                             ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit488
  %i.dh = load ptr, ptr %i.ar, align 8, !tbaa !62 ; 2 uses
  %.not = icmp eq ptr %i.dh, null
  br i1 %.not, label %_ZNK6icu_7817CollationSettings7reorderEj.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.di = lshr i32 %.0271, 24
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !30  ; 2 uses
  %i.dm = icmp ne i8 %i.dl, 0
  %i.dn = icmp ult i32 %.0271, 2
  %or.cond.i = or i1 %i.dn, %i.dm
  br i1 %or.cond.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.do = zext i8 %i.dl to i32
  %i.dp = shl nuw i32 %i.do, 24
  %i.dq = and i32 %.0271, 16777215
  %i.dr = or disjoint i32 %i.dp, %i.dq
  br label %_ZNK6icu_7817CollationSettings7reorderEj.exit

bb.aa:                                            ; preds = %bb.y
  %i.ds = invoke noundef i32 @_ZNK6icu_7817CollationSettings9reorderExEj(ptr noundef nonnull align 8 dereferenceable(852) %2, i32 noundef %.0271)
          to label %_ZNK6icu_7817CollationSettings7reorderEj.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

_ZNK6icu_7817CollationSettings7reorderEj.exit:    ; preds = %bb.z, %bb.aa, %bb.x
  %.1272 = phi i32 [ %.0271, %bb.x ], [ %i.dr, %bb.z ], [ %i.ds, %bb.aa ] ; 10 uses
  %i.dt = icmp ugt i32 %.1272, 452984831
  br i1 %i.dt, label %bb.ab, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit503

bb.ab:                                            ; preds = %_ZNK6icu_7817CollationSettings7reorderEj.exit
  %i.du = load i32, ptr %i.am, align 8, !tbaa !59 ; 5 uses
  %i.dv = load i32, ptr %i.ak, align 8, !tbaa !56 ; 2 uses
  %i.dw = icmp slt i32 %i.du, %i.dv
  br i1 %i.dw, label %._crit_edge.i499, label %bb.ac

._crit_edge.i499:                                 ; preds = %bb.ab
  %.pre3.i500 = load ptr, ptr %11, align 8, !tbaa !55
  br label %bb.aj

bb.ac:                                            ; preds = %bb.ab
  %i.dx = load i8, ptr %i.an, align 4, !tbaa !60
  %.not.i.i490 = icmp eq i8 %i.dx, 0
  br i1 %.not.i.i490, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit503, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dy = shl nsw i32 %i.dv, 1
  %i.dz = add nsw i32 %i.du, 2
  %spec.select.i.i491 = call i32 @llvm.smax.i32(i32 %i.dy, i32 %i.dz)
  %spec.store.select.i.i492 = call i32 @llvm.smax.i32(i32 %spec.select.i.i491, i32 200) ; 3 uses
  %i.ea = zext nneg i32 %spec.store.select.i.i492 to i64
  %i.eb = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.ea) #15
          to label %.noexc501 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ; 4 uses

.noexc501:                                        ; preds = %bb.ad
  %.not.i.i.i493 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i493, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %.noexc501
  %i.ec = icmp sgt i32 %i.du, 0
  br i1 %i.ec, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ed = load i32, ptr %i.ak, align 8, !tbaa !56
  %spec.select.i.i.i497 = call i32 @llvm.smin.i32(i32 %i.du, i32 %i.ed)
  %.1.i.i.i498 = call i32 @llvm.smin.i32(i32 %spec.select.i.i.i497, i32 %spec.store.select.i.i492)
  %i.ee = load ptr, ptr %11, align 8, !tbaa !55
  %i.ef = sext i32 %.1.i.i.i498 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eb, ptr align 1 %i.ee, i64 %i.ef, i1 false)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.eg = load i8, ptr %i.al, align 4, !tbaa !57
  %.not.i.i.i.i494 = icmp eq i8 %i.eg, 0
  br i1 %.not.i.i.i.i494, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i495, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.eh = load ptr, ptr %11, align 8, !tbaa !55
  invoke void @uprv_free_78(ptr noundef %i.eh)
          to label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i495 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.ai:                                            ; preds = %.noexc501
  store i8 0, ptr %i.an, align 4, !tbaa !60
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit503

_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i495: ; preds = %bb.ah, %bb.ag
  store ptr %i.eb, ptr %11, align 8, !tbaa !55
  store i32 %spec.store.select.i.i492, ptr %i.ak, align 8, !tbaa !56
  store i8 1, ptr %i.al, align 4, !tbaa !57
  %.pre.i496 = load i32, ptr %i.am, align 8, !tbaa !59
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i495, %._crit_edge.i499
  %i.ei = phi ptr [ %i.eb, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i495 ], [ %.pre3.i500, %._crit_edge.i499 ]
  %i.ej = phi i32 [ %.pre.i496, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i495 ], [ %i.du, %._crit_edge.i499 ] ; 2 uses
  %i.ek = add nsw i32 %i.ej, 1
  store i32 %i.ek, ptr %i.am, align 8, !tbaa !59
  %i.el = sext i32 %i.ej to i64
  %i.em = getelementptr inbounds i8, ptr %i.ei, i64 %i.el
  store i8 27, ptr %i.em, align 1, !tbaa !30
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit503

_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit503: ; preds = %bb.aj, %bb.ai, %bb.ac, %_ZNK6icu_7817CollationSettings7reorderEj.exit
  %i.en = lshr i32 %.1272, 24
  %i.eo = trunc nuw i32 %i.en to i8
  %i.ep = lshr i32 %.1272, 16
  %i.eq = trunc i32 %i.ep to i8
  %i.er = lshr i32 %.1272, 8
  %i.es = trunc i32 %i.er to i8
  %i.et = trunc i32 %.1272 to i8
  %i.eu = and i32 %.1272, 16711680
  %i.ev = icmp eq i32 %i.eu, 0                    ; 2 uses
  br i1 %i.ev, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit503
  %i.ew = and i32 %.1272, 65280
  %i.ex = icmp eq i32 %i.ew, 0
  %i.ey = and i32 %.1272, 255
  %i.ez = icmp eq i32 %i.ey, 0
  %i.fa = select i1 %i.ez, i32 3, i32 4
  %i.fb = select i1 %i.ex, i32 2, i32 %i.fa
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit503
  %i.fc = phi i32 [ %i.fb, %bb.ak ], [ 1, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit503 ] ; 2 uses
  %i.fd = load i32, ptr %i.am, align 8, !tbaa !59 ; 5 uses
  %i.fe = add nsw i32 %i.fd, %i.fc
  %i.ff = load i32, ptr %i.ak, align 8, !tbaa !56 ; 2 uses
  %.not.i504 = icmp sgt i32 %i.fe, %i.ff
  br i1 %.not.i504, label %bb.am, label %._crit_edge.i505

._crit_edge.i505:                                 ; preds = %bb.al
  %.pre18.i = load ptr, ptr %11, align 8, !tbaa !55
  br label %bb.at

bb.am:                                            ; preds = %bb.al
  %i.fg = load i8, ptr %i.an, align 4, !tbaa !60
  %.not.i.i506 = icmp eq i8 %i.fg, 0
  br i1 %.not.i.i506, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14appendWeight32Ej.exit.preheader, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fh = shl nsw i32 %i.ff, 1
  %i.fi = shl nuw nsw i32 %i.fc, 1
  %i.fj = add nsw i32 %i.fd, %i.fi
  %spec.select.i.i507 = call i32 @llvm.smax.i32(i32 %i.fh, i32 %i.fj)
  %spec.store.select.i.i508 = call i32 @llvm.smax.i32(i32 %spec.select.i.i507, i32 200) ; 3 uses
  %i.fk = zext nneg i32 %spec.store.select.i.i508 to i64
  %i.fl = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.fk) #15
          to label %.noexc515 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ; 4 uses

.noexc515:                                        ; preds = %bb.an
  %.not.i.i.i509 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i509, label %bb.as, label %bb.ao

bb.ao:                                            ; preds = %.noexc515
  %i.fm = icmp sgt i32 %i.fd, 0
  br i1 %i.fm, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.fn = load i32, ptr %i.ak, align 8, !tbaa !56
  %spec.select.i.i.i513 = call i32 @llvm.smin.i32(i32 %i.fd, i32 %i.fn)
  %.1.i.i.i514 = call i32 @llvm.smin.i32(i32 %spec.select.i.i.i513, i32 %spec.store.select.i.i508)
  %i.fo = load ptr, ptr %11, align 8, !tbaa !55
  %i.fp = sext i32 %.1.i.i.i514 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fl, ptr align 1 %i.fo, i64 %i.fp, i1 false)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.fq = load i8, ptr %i.al, align 4, !tbaa !57
  %.not.i.i.i.i510 = icmp eq i8 %i.fq, 0
  br i1 %.not.i.i.i.i510, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i511, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fr = load ptr, ptr %11, align 8, !tbaa !55
  invoke void @uprv_free_78(ptr noundef %i.fr)
          to label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i511 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.as:                                            ; preds = %.noexc515
  store i8 0, ptr %i.an, align 4, !tbaa !60
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14appendWeight32Ej.exit.preheader

_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i511: ; preds = %bb.ar, %bb.aq
  store ptr %i.fl, ptr %11, align 8, !tbaa !55
  store i32 %spec.store.select.i.i508, ptr %i.ak, align 8, !tbaa !56
  store i8 1, ptr %i.al, align 4, !tbaa !57
  %.pre.i512 = load i32, ptr %i.am, align 8, !tbaa !59
  br label %bb.at

bb.at:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i511, %._crit_edge.i505
  %i.fs = phi ptr [ %i.fl, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i511 ], [ %.pre18.i, %._crit_edge.i505 ]
  %i.ft = phi i32 [ %.pre.i512, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i511 ], [ %i.fd, %._crit_edge.i505 ] ; 2 uses
  %i.fu = add nsw i32 %i.ft, 1
  store i32 %i.fu, ptr %i.am, align 8, !tbaa !59
  %i.fv = sext i32 %i.ft to i64
  %i.fw = getelementptr inbounds i8, ptr %i.fs, i64 %i.fv
  store i8 %i.eo, ptr %i.fw, align 1, !tbaa !30
  br i1 %i.ev, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14appendWeight32Ej.exit.preheader, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fx = load i32, ptr %i.am, align 8, !tbaa !59 ; 2 uses
  %i.fy = add nsw i32 %i.fx, 1
  store i32 %i.fy, ptr %i.am, align 8, !tbaa !59
  %i.fz = sext i32 %i.fx to i64
  %i.ga = load ptr, ptr %11, align 8, !tbaa !55
  %i.gb = getelementptr inbounds i8, ptr %i.ga, i64 %i.fz
  store i8 %i.eq, ptr %i.gb, align 1, !tbaa !30
  %i.gc = and i32 %.1272, 65280
  %.not14.i = icmp eq i32 %i.gc, 0
  br i1 %.not14.i, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14appendWeight32Ej.exit.preheader, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gd = load i32, ptr %i.am, align 8, !tbaa !59 ; 2 uses
  %i.ge = add nsw i32 %i.gd, 1
  store i32 %i.ge, ptr %i.am, align 8, !tbaa !59
  %i.gf = sext i32 %i.gd to i64
  %i.gg = load ptr, ptr %11, align 8, !tbaa !55
  %i.gh = getelementptr inbounds i8, ptr %i.gg, i64 %i.gf
  store i8 %i.es, ptr %i.gh, align 1, !tbaa !30
  %i.gi = and i32 %.1272, 255
  %.not15.i = icmp eq i32 %i.gi, 0
  br i1 %.not15.i, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14appendWeight32Ej.exit.preheader, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gj = load i32, ptr %i.am, align 8, !tbaa !59 ; 2 uses
  %i.gk = add nsw i32 %i.gj, 1
  store i32 %i.gk, ptr %i.am, align 8, !tbaa !59
  %i.gl = sext i32 %i.gj to i64
  %i.gm = load ptr, ptr %11, align 8, !tbaa !55
  %i.gn = getelementptr inbounds i8, ptr %i.gm, i64 %i.gl
  store i8 %i.et, ptr %i.gn, align 1, !tbaa !30
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14appendWeight32Ej.exit.preheader

_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14appendWeight32Ej.exit.preheader: ; preds = %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.am, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit488
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14appendWeight32Ej.exit

_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14appendWeight32Ej.exit: ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14appendWeight32Ej.exit.preheader, %bb.ax
  %i.go = invoke noundef i64 @_ZN6icu_7817CollationIterator6nextCEER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(389) %0, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %bb.ax unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ; 3 uses

bb.ax:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14appendWeight32Ej.exit
  %i.gp = lshr i64 %i.go, 32                      ; 2 uses
  %i.gq = icmp eq i64 %i.gp, 0
  br i1 %i.gq, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14appendWeight32Ej.exit, label %bb.ay, !llvm.loop !32

bb.ay:                                            ; preds = %bb.ax
  %i.gr = trunc nuw i64 %i.gp to i32              ; 3 uses
  %i.gs = icmp ugt i32 %.0351, %i.gr
  %i.gt = icmp ugt i64 %i.go, 144115192370823167
  %i.gu = and i1 %i.gt, %i.gs
  br i1 %i.gu, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit488, label %.loopexit956, !llvm.loop !33

.loopexit956:                                     ; preds = %bb.ay, %bb.e
  %.3289 = phi i32 [ %.0286, %bb.e ], [ 0, %bb.ay ] ; 9 uses
  %.0275 = phi i64 [ %i.bk, %bb.e ], [ %i.go, %bb.ay ] ; 4 uses
  %.2273 = phi i32 [ %i.bm, %bb.e ], [ %i.gr, %bb.ay ] ; 6 uses
  %i.gv = icmp ult i32 %.2273, 2
  %or.cond435 = or i1 %.not376, %i.gv
  br i1 %or.cond435, label %bb.cb, label %bb.az

bb.az:                                            ; preds = %.loopexit956
  %i.gw = lshr i32 %.2273, 24
  %i.gx = zext nneg i32 %i.gw to i64              ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 %i.gx
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !30
  %i.ha = load ptr, ptr %i.ar, align 8, !tbaa !62 ; 2 uses
  %.not921 = icmp eq ptr %i.ha, null
end_hunk_0
begin_hunk_1_@_ZN6icu_7813CollationKeys26writeSortKeyUpToQuaternaryERNS_17CollationIteratorEPKaRKNS_17CollationSettingsERNS_15SortKeyByteSinkENS_9Collation5LevelERNS0_13LevelCallbackEaR10UErrorCode:bb.a
  %i.ic = load ptr, ptr %3, align 8, !tbaa !17
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 48
  %i.ie = load ptr, ptr %i.id, align 8
  %i.if = invoke noundef signext i8 %i.ie(ptr noundef nonnull align 8 dereferenceable(28) %3, i32 noundef 1, i32 noundef %i.hz)
          to label %.noexc528 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !inline_history !63

.noexc528:                                        ; preds = %bb.bn
  %.not.i525 = icmp eq i8 %i.if, 0
  br i1 %.not.i525, label %_ZN6icu_7815SortKeyByteSink6AppendEj.exitthread-pre-split.sink.split, label %_ZN6icu_7815SortKeyByteSink6AppendEj.exitthread-pre-split.sink.split.sink.split.sink.split

_ZN6icu_7815SortKeyByteSink6AppendEj.exitthread-pre-split.sink.split.sink.split.sink.split: ; preds = %.noexc528, %.noexc524
  %.sink.ph = phi i8 [ 3, %.noexc524 ], [ -1, %.noexc528 ]
  %.pre.i527 = load i32, ptr %i.au, align 4, !tbaa !13
  br label %_ZN6icu_7815SortKeyByteSink6AppendEj.exitthread-pre-split.sink.split.sink.split

_ZN6icu_7815SortKeyByteSink6AppendEj.exitthread-pre-split.sink.split.sink.split: ; preds = %_ZN6icu_7815SortKeyByteSink6AppendEj.exitthread-pre-split.sink.split.sink.split.sink.split, %bb.bm, %bb.bi
  %.sink1214 = phi i32 [ %i.hp, %bb.bi ], [ %i.hz, %bb.bm ], [ %.pre.i527, %_ZN6icu_7815SortKeyByteSink6AppendEj.exitthread-pre-split.sink.split.sink.split.sink.split ]
  %.sink = phi i8 [ 3, %bb.bi ], [ -1, %bb.bm ], [ %.sink.ph, %_ZN6icu_7815SortKeyByteSink6AppendEj.exitthread-pre-split.sink.split.sink.split.sink.split ]
  %i.ig = load ptr, ptr %i.aw, align 8, !tbaa !14
  %i.ih = sext i32 %.sink1214 to i64
  %i.ii = getelementptr inbounds i8, ptr %i.ig, i64 %i.ih
  store i8 %.sink, ptr %i.ii, align 1, !tbaa !30
  br label %_ZN6icu_7815SortKeyByteSink6AppendEj.exitthread-pre-split.sink.split

_ZN6icu_7815SortKeyByteSink6AppendEj.exitthread-pre-split.sink.split: ; preds = %_ZN6icu_7815SortKeyByteSink6AppendEj.exitthread-pre-split.sink.split.sink.split, %.noexc528, %.noexc524
  %i.ij = load i32, ptr %i.au, align 4, !tbaa !13
  %i.ik = add nsw i32 %i.ij, 1
  store i32 %i.ik, ptr %i.au, align 4, !tbaa !13
  br label %_ZN6icu_7815SortKeyByteSink6AppendEj.exitthread-pre-split

_ZN6icu_7815SortKeyByteSink6AppendEj.exitthread-pre-split: ; preds = %_ZN6icu_7815SortKeyByteSink6AppendEj.exitthread-pre-split.sink.split, %bb.bd, %bb.bf
  %.pr1195 = load i32, ptr %i.at, align 8, !tbaa !12
  br label %_ZN6icu_7815SortKeyByteSink6AppendEj.exit

_ZN6icu_7815SortKeyByteSink6AppendEj.exit:        ; preds = %_ZN6icu_7815SortKeyByteSink6AppendEj.exitthread-pre-split, %bb.bl, %bb.bh
  %i.il = phi i32 [ %.pr1195, %_ZN6icu_7815SortKeyByteSink6AppendEj.exitthread-pre-split ], [ %i.hy, %bb.bl ], [ %i.ho, %bb.bh ] ; 2 uses
  %i.im = icmp sgt i32 %i.il, 0
  br i1 %i.im, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %_ZN6icu_7815SortKeyByteSink6AppendEj.exit
  %i.in = add nsw i32 %i.il, -1
  store i32 %i.in, ptr %i.at, align 8, !tbaa !12
  br label %_ZN6icu_7815SortKeyByteSink6AppendEj.exit534

bb.bp:                                            ; preds = %_ZN6icu_7815SortKeyByteSink6AppendEj.exit
  %i.io = load i32, ptr %i.au, align 4, !tbaa !13 ; 3 uses
  %i.ip = load i32, ptr %i.av, align 8, !tbaa !15
  %i.iq = icmp slt i32 %i.io, %i.ip
  br i1 %i.iq, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ir = load ptr, ptr %3, align 8, !tbaa !17
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 48
  %i.it = load ptr, ptr %i.is, align 8
  %i.iu = invoke noundef signext i8 %i.it(ptr noundef nonnull align 8 dereferenceable(28) %3, i32 noundef 1, i32 noundef %i.io)
          to label %.noexc533 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !inline_history !63

.noexc533:                                        ; preds = %bb.bq
  %.not.i530 = icmp eq i8 %i.iu, 0
  br i1 %.not.i530, label %bb.bs, label %._crit_edge.i531

._crit_edge.i531:                                 ; preds = %.noexc533
  %.pre.i532 = load i32, ptr %i.au, align 4, !tbaa !13
  br label %bb.br

bb.br:                                            ; preds = %._crit_edge.i531, %bb.bp
  %i.iv = phi i32 [ %.pre.i532, %._crit_edge.i531 ], [ %i.io, %bb.bp ]
  %i.iw = trunc nuw i32 %i.hi to i8
  %i.ix = load ptr, ptr %i.aw, align 8, !tbaa !14
  %i.iy = sext i32 %i.iv to i64
  %i.iz = getelementptr inbounds i8, ptr %i.ix, i64 %i.iy
  store i8 %i.iw, ptr %i.iz, align 1, !tbaa !30
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %.noexc533
  %i.ja = load i32, ptr %i.au, align 4, !tbaa !13
  %i.jb = add nsw i32 %i.ja, 1
  store i32 %i.jb, ptr %i.au, align 4, !tbaa !13
  br label %_ZN6icu_7815SortKeyByteSink6AppendEj.exit534

_ZN6icu_7815SortKeyByteSink6AppendEj.exit534:     ; preds = %bb.bs, %bb.bo
  %..3274 = select i1 %.not378, i32 %.3274, i32 0
  br label %bb.bt

bb.bt:                                            ; preds = %_ZN6icu_7815SortKeyByteSink6AppendEj.exit534, %_ZNK6icu_7817CollationSettings7reorderEj.exit520
  %.1321 = phi i32 [ %..3274, %_ZN6icu_7815SortKeyByteSink6AppendEj.exit534 ], [ %.0320, %_ZNK6icu_7817CollationSettings7reorderEj.exit520 ] ; 2 uses
  %i.jc = and i32 %.3274, 16711680
  %.not381 = icmp eq i32 %i.jc, 0
  br i1 %.not381, label %bb.bx, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.jd = lshr i32 %.3274, 16
  %i.je = trunc i32 %i.jd to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i8 %i.je, ptr %i.a, align 1, !tbaa !30
  %i.jf = lshr i32 %.3274, 8
  %i.jg = trunc i32 %i.jf to i8
  store i8 %i.jg, ptr %i.ax, align 1, !tbaa !30
  %i.jh = trunc i32 %.3274 to i8
  store i8 %i.jh, ptr %i.ay, align 1, !tbaa !30
  %i.ji = and i32 %.3274, 65280
  %i.jj = icmp eq i32 %i.ji, 0
  %sext.mask = and i32 %.3274, 255
  %i.jk = icmp eq i32 %sext.mask, 0
  %i.jl = select i1 %i.jk, i32 2, i32 3
  %i.jm = select i1 %i.jj, i32 1, i32 %i.jl
  %i.jn = load ptr, ptr %3, align 8, !tbaa !17
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  %i.jp = load ptr, ptr %i.jo, align 8
  invoke void %i.jp(ptr noundef nonnull align 8 dereferenceable(28) %3, ptr noundef nonnull %i.a, i32 noundef %i.jm)
          to label %bb.bv unwind label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bu
  %i.jq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %.loopexit.split-lp

bb.bx:                                            ; preds = %bb.bv, %bb.bt
  br i1 %.not384, label %bb.by, label %bb.cb

bb.by:                                            ; preds = %bb.bx
  %i.jr = load i32, ptr %i.au, align 4, !tbaa !13
  %i.js = load i32, ptr %i.av, align 8, !tbaa !15
  %.not923 = icmp sgt i32 %i.jr, %i.js
  br i1 %.not923, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %bb.by
  %i.jt = load i32, ptr %7, align 4, !tbaa !47
  %i.ju = icmp sgt i32 %i.jt, 0
  br i1 %i.ju, label %.critedge.thread, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.jv = load ptr, ptr %i.aw, align 8, !tbaa !14
  %.not924 = icmp eq ptr %i.jv, null
  br i1 %.not924, label %.critedge.thread.sink.split, label %.critedge.thread

bb.cb:                                            ; preds = %bb.by, %bb.bx, %.loopexit956
  %.2322 = phi i32 [ %.0320, %.loopexit956 ], [ %.1321, %bb.bx ], [ %.1321, %bb.by ] ; 2 uses
  %.4 = phi i32 [ %.2273, %.loopexit956 ], [ %.3274, %bb.bx ], [ %.3274, %bb.by ] ; 4 uses
  %i.jw = trunc i64 %.0275 to i32                 ; 15 uses
  %i.jx = icmp eq i32 %i.jw, 0
  br i1 %i.jx, label %.critedge, label %bb.cc, !llvm.loop !34

bb.cc:                                            ; preds = %bb.cb
  br i1 %.not388, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14appendWeight16Ej.exit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.jy = lshr i32 %i.jw, 16                      ; 7 uses
  %trunc = trunc nuw i32 %i.jy to i16
  switch i16 %trunc, label %bb.cg [
    i16 0, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14appendWeight16Ej.exit
    i16 1280, label %bb.ce
  ]

bb.ce:                                            ; preds = %bb.cd
  %i.jz = icmp ne i32 %.4, 33554432
  %or.cond3 = or i1 %i.bb, %i.jz
  br i1 %or.cond3, label %bb.cf, label %.thread

bb.cf:                                            ; preds = %bb.ce
  %i.ka = add nsw i32 %.0301.ph, 1
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14appendWeight16Ej.exit

bb.cg:                                            ; preds = %bb.cd
  br i1 %i.bb, label %bb.ch, label %.thread

bb.ch:                                            ; preds = %bb.cg
  %.not392 = icmp eq i32 %.0301.ph, 0
  br i1 %.not392, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit562, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.kb = add nsw i32 %.0301.ph, -1               ; 2 uses
  %i.kc = icmp sgt i32 %.0301.ph, 33
  br i1 %i.kc, label %.lr.ph980, label %._crit_edge981

.lr.ph980:                                        ; preds = %bb.ci, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit548
  %.1302978 = phi i32 [ %i.kw, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit548 ], [ %i.kb, %bb.ci ] ; 2 uses
  %i.kd = load i32, ptr %i.ac, align 8, !tbaa !59 ; 5 uses
  %i.ke = load i32, ptr %i.aa, align 8, !tbaa !56 ; 2 uses
  %i.kf = icmp slt i32 %i.kd, %i.ke
  br i1 %i.kf, label %._crit_edge.i544, label %bb.cj

._crit_edge.i544:                                 ; preds = %.lr.ph980
  %.pre3.i545 = load ptr, ptr %9, align 8, !tbaa !55
  br label %bb.cq

bb.cj:                                            ; preds = %.lr.ph980
  %i.kg = load i8, ptr %i.ad, align 4, !tbaa !60
  %.not.i.i535 = icmp eq i8 %i.kg, 0
  br i1 %.not.i.i535, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit548, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.kh = shl nsw i32 %i.ke, 1
  %i.ki = add nsw i32 %i.kd, 2
  %spec.select.i.i536 = call i32 @llvm.smax.i32(i32 %i.kh, i32 %i.ki)
  %spec.store.select.i.i537 = call i32 @llvm.smax.i32(i32 %spec.select.i.i536, i32 200) ; 3 uses
  %i.kj = zext nneg i32 %spec.store.select.i.i537 to i64
  %i.kk = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.kj) #15
          to label %.noexc546 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ; 4 uses

.noexc546:                                        ; preds = %bb.ck
  %.not.i.i.i538 = icmp eq ptr %i.kk, null
  br i1 %.not.i.i.i538, label %bb.cp, label %bb.cl

bb.cl:                                            ; preds = %.noexc546
  %i.kl = icmp sgt i32 %i.kd, 0
  br i1 %i.kl, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.km = load i32, ptr %i.aa, align 8, !tbaa !56
  %spec.select.i.i.i542 = call i32 @llvm.smin.i32(i32 %i.kd, i32 %i.km)
  %.1.i.i.i543 = call i32 @llvm.smin.i32(i32 %spec.select.i.i.i542, i32 %spec.store.select.i.i537)
  %i.kn = load ptr, ptr %9, align 8, !tbaa !55
  %i.ko = sext i32 %.1.i.i.i543 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.kk, ptr align 1 %i.kn, i64 %i.ko, i1 false)
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.kp = load i8, ptr %i.ab, align 4, !tbaa !57
  %.not.i.i.i.i539 = icmp eq i8 %i.kp, 0
  br i1 %.not.i.i.i.i539, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i540, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.kq = load ptr, ptr %9, align 8, !tbaa !55
  invoke void @uprv_free_78(ptr noundef %i.kq)
          to label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i540 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.cp:                                            ; preds = %.noexc546
  store i8 0, ptr %i.ad, align 4, !tbaa !60
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit548

_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i540: ; preds = %bb.co, %bb.cn
  store ptr %i.kk, ptr %9, align 8, !tbaa !55
  store i32 %spec.store.select.i.i537, ptr %i.aa, align 8, !tbaa !56
  store i8 1, ptr %i.ab, align 4, !tbaa !57
  %.pre.i541 = load i32, ptr %i.ac, align 8, !tbaa !59
  br label %bb.cq

bb.cq:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i540, %._crit_edge.i544
  %i.kr = phi ptr [ %i.kk, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i540 ], [ %.pre3.i545, %._crit_edge.i544 ]
  %i.ks = phi i32 [ %.pre.i541, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i540 ], [ %i.kd, %._crit_edge.i544 ] ; 2 uses
  %i.kt = add nsw i32 %i.ks, 1
  store i32 %i.kt, ptr %i.ac, align 8, !tbaa !59
  %i.ku = sext i32 %i.ks to i64
  %i.kv = getelementptr inbounds i8, ptr %i.kr, i64 %i.ku
  store i8 37, ptr %i.kv, align 1, !tbaa !30
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit548

_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit548: ; preds = %bb.cq, %bb.cp, %bb.cj
  %i.kw = add nsw i32 %.1302978, -33              ; 2 uses
  %i.kx = icmp sgt i32 %.1302978, 65
  br i1 %i.kx, label %.lr.ph980, label %._crit_edge981, !llvm.loop !35

._crit_edge981:                                   ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit548, %bb.ci
  %.1302.lcssa = phi i32 [ %i.kb, %bb.ci ], [ %i.kw, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit548 ] ; 2 uses
  %i.ky = icmp ult i32 %i.jw, 83886080
  %i.kz = add nsw i32 %.1302.lcssa, 5
  %i.la = sub i32 69, %.1302.lcssa
  %.0270 = select i1 %i.ky, i32 %i.kz, i32 %i.la
  %i.lb = load i32, ptr %i.ac, align 8, !tbaa !59 ; 5 uses
  %i.lc = load i32, ptr %i.aa, align 8, !tbaa !56 ; 2 uses
  %i.ld = icmp slt i32 %i.lb, %i.lc
  br i1 %i.ld, label %._crit_edge.i558, label %bb.cr

._crit_edge.i558:                                 ; preds = %._crit_edge981
  %.pre3.i559 = load ptr, ptr %9, align 8, !tbaa !55
  br label %bb.cy

bb.cr:                                            ; preds = %._crit_edge981
  %i.le = load i8, ptr %i.ad, align 4, !tbaa !60
  %.not.i.i549 = icmp eq i8 %i.le, 0
  br i1 %.not.i.i549, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit562, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.lf = shl nsw i32 %i.lc, 1
  %i.lg = add nsw i32 %i.lb, 2
  %spec.select.i.i550 = call i32 @llvm.smax.i32(i32 %i.lf, i32 %i.lg)
  %spec.store.select.i.i551 = call i32 @llvm.smax.i32(i32 %spec.select.i.i550, i32 200) ; 3 uses
  %i.lh = zext nneg i32 %spec.store.select.i.i551 to i64
  %i.li = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.lh) #15
          to label %.noexc560 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ; 4 uses

.noexc560:                                        ; preds = %bb.cs
  %.not.i.i.i552 = icmp eq ptr %i.li, null
  br i1 %.not.i.i.i552, label %bb.cx, label %bb.ct

bb.ct:                                            ; preds = %.noexc560
  %i.lj = icmp sgt i32 %i.lb, 0
  br i1 %i.lj, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.lk = load i32, ptr %i.aa, align 8, !tbaa !56
  %spec.select.i.i.i556 = call i32 @llvm.smin.i32(i32 %i.lb, i32 %i.lk)
  %.1.i.i.i557 = call i32 @llvm.smin.i32(i32 %spec.select.i.i.i556, i32 %spec.store.select.i.i551)
  %i.ll = load ptr, ptr %9, align 8, !tbaa !55
  %i.lm = sext i32 %.1.i.i.i557 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.li, ptr align 1 %i.ll, i64 %i.lm, i1 false)
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.ln = load i8, ptr %i.ab, align 4, !tbaa !57
  %.not.i.i.i.i553 = icmp eq i8 %i.ln, 0
  br i1 %.not.i.i.i.i553, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i554, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.lo = load ptr, ptr %9, align 8, !tbaa !55
  invoke void @uprv_free_78(ptr noundef %i.lo)
          to label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i554 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.cx:                                            ; preds = %.noexc560
  store i8 0, ptr %i.ad, align 4, !tbaa !60
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit562

_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i554: ; preds = %bb.cw, %bb.cv
  store ptr %i.li, ptr %9, align 8, !tbaa !55
  store i32 %spec.store.select.i.i551, ptr %i.aa, align 8, !tbaa !56
  store i8 1, ptr %i.ab, align 4, !tbaa !57
  %.pre.i555 = load i32, ptr %i.ac, align 8, !tbaa !59
  br label %bb.cy

bb.cy:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i554, %._crit_edge.i558
  %i.lp = phi ptr [ %i.li, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i554 ], [ %.pre3.i559, %._crit_edge.i558 ]
  %i.lq = phi i32 [ %.pre.i555, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i554 ], [ %i.lb, %._crit_edge.i558 ] ; 2 uses
  %i.lr = trunc i32 %.0270 to i8
  %i.ls = add nsw i32 %i.lq, 1
  store i32 %i.ls, ptr %i.ac, align 8, !tbaa !59
  %i.lt = sext i32 %i.lq to i64
  %i.lu = getelementptr inbounds i8, ptr %i.lp, i64 %i.lt
  store i8 %i.lr, ptr %i.lu, align 1, !tbaa !30
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit562

_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit562: ; preds = %bb.cy, %bb.cx, %bb.cr, %bb.ch
  %i.lv = lshr i64 %.0275, 24
  %i.lw = trunc i64 %i.lv to i8
  %i.lx = trunc i32 %i.jy to i8
  %i.ly = and i32 %i.jw, 16711680
  %i.lz = icmp eq i32 %i.ly, 0                    ; 2 uses
  %i.ma = select i1 %i.lz, i32 1, i32 2           ; 2 uses
  %i.mb = load i32, ptr %i.ac, align 8, !tbaa !59 ; 5 uses
  %i.mc = add nsw i32 %i.mb, %i.ma
  %i.md = load i32, ptr %i.aa, align 8, !tbaa !56 ; 2 uses
  %.not.i563 = icmp sgt i32 %i.mc, %i.md
  br i1 %.not.i563, label %bb.cz, label %._crit_edge.i564

._crit_edge.i564:                                 ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit562
  %.pre12.i = load ptr, ptr %9, align 8, !tbaa !55
  br label %bb.dg

bb.cz:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit562
  %i.me = load i8, ptr %i.ad, align 4, !tbaa !60
  %.not.i.i565 = icmp eq i8 %i.me, 0
  br i1 %.not.i.i565, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14appendWeight16Ej.exit, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.mf = shl nsw i32 %i.md, 1
  %i.mg = shl nuw nsw i32 %i.ma, 1
  %i.mh = add nsw i32 %i.mb, %i.mg
  %spec.select.i.i566 = call i32 @llvm.smax.i32(i32 %i.mf, i32 %i.mh)
  %spec.store.select.i.i567 = call i32 @llvm.smax.i32(i32 %spec.select.i.i566, i32 200) ; 3 uses
  %i.mi = zext nneg i32 %spec.store.select.i.i567 to i64
  %i.mj = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.mi) #15
          to label %.noexc574 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ; 4 uses

.noexc574:                                        ; preds = %bb.da
  %.not.i.i.i568 = icmp eq ptr %i.mj, null
  br i1 %.not.i.i.i568, label %bb.df, label %bb.db

bb.db:                                            ; preds = %.noexc574
  %i.mk = icmp sgt i32 %i.mb, 0
  br i1 %i.mk, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.ml = load i32, ptr %i.aa, align 8, !tbaa !56
  %spec.select.i.i.i572 = call i32 @llvm.smin.i32(i32 %i.mb, i32 %i.ml)
  %.1.i.i.i573 = call i32 @llvm.smin.i32(i32 %spec.select.i.i.i572, i32 %spec.store.select.i.i567)
  %i.mm = load ptr, ptr %9, align 8, !tbaa !55
  %i.mn = sext i32 %.1.i.i.i573 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mj, ptr align 1 %i.mm, i64 %i.mn, i1 false)
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %i.mo = load i8, ptr %i.ab, align 4, !tbaa !57
  %.not.i.i.i.i569 = icmp eq i8 %i.mo, 0
  br i1 %.not.i.i.i.i569, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i570, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.mp = load ptr, ptr %9, align 8, !tbaa !55
  invoke void @uprv_free_78(ptr noundef %i.mp)
          to label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i570 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.df:                                            ; preds = %.noexc574
  store i8 0, ptr %i.ad, align 4, !tbaa !60
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14appendWeight16Ej.exit

_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i570: ; preds = %bb.de, %bb.dd
  store ptr %i.mj, ptr %9, align 8, !tbaa !55
  store i32 %spec.store.select.i.i567, ptr %i.aa, align 8, !tbaa !56
  store i8 1, ptr %i.ab, align 4, !tbaa !57
  %.pre.i571 = load i32, ptr %i.ac, align 8, !tbaa !59
  br label %bb.dg

bb.dg:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i570, %._crit_edge.i564
  %i.mq = phi ptr [ %i.mj, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i570 ], [ %.pre12.i, %._crit_edge.i564 ]
  %i.mr = phi i32 [ %.pre.i571, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i570 ], [ %i.mb, %._crit_edge.i564 ] ; 2 uses
  %i.ms = add nsw i32 %i.mr, 1
  store i32 %i.ms, ptr %i.ac, align 8, !tbaa !59
  %i.mt = sext i32 %i.mr to i64
  %i.mu = getelementptr inbounds i8, ptr %i.mq, i64 %i.mt
  store i8 %i.lw, ptr %i.mu, align 1, !tbaa !30
  br i1 %i.lz, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14appendWeight16Ej.exit, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.mv = load i32, ptr %i.ac, align 8, !tbaa !59 ; 2 uses
  %i.mw = add nsw i32 %i.mv, 1
  store i32 %i.mw, ptr %i.ac, align 8, !tbaa !59
  %i.mx = sext i32 %i.mv to i64
  %i.my = load ptr, ptr %9, align 8, !tbaa !55
  %i.mz = getelementptr inbounds i8, ptr %i.my, i64 %i.mx
  store i8 %i.lx, ptr %i.mz, align 1, !tbaa !30
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14appendWeight16Ej.exit

.thread:                                          ; preds = %bb.ce, %bb.cg
  %.not389 = icmp eq i32 %.0301.ph, 0
  br i1 %.not389, label %.loopexit950, label %bb.di

bb.di:                                            ; preds = %.thread
  %i.na = add nsw i32 %.0301.ph, -1               ; 2 uses
  %i.nb = srem i32 %i.na, 33                      ; 3 uses
  %i.nc = icmp ult i32 %.0281.ph, 1280
  %i.nd = add nsw i32 %i.nb, 5
  %i.ne = sub nsw i32 69, %i.nb
  %.0269 = select i1 %i.nc, i32 %i.nd, i32 %i.ne
  %i.nf = load i32, ptr %i.ac, align 8, !tbaa !59 ; 5 uses
  %i.ng = load i32, ptr %i.aa, align 8, !tbaa !56 ; 2 uses
  %i.nh = icmp slt i32 %i.nf, %i.ng
  br i1 %i.nh, label %._crit_edge.i585, label %bb.dj

._crit_edge.i585:                                 ; preds = %bb.di
  %.pre3.i586 = load ptr, ptr %9, align 8, !tbaa !55
  br label %bb.dq

bb.dj:                                            ; preds = %bb.di
  %i.ni = load i8, ptr %i.ad, align 4, !tbaa !60
  %.not.i.i576 = icmp eq i8 %i.ni, 0
  br i1 %.not.i.i576, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit589, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.nj = shl nsw i32 %i.ng, 1
  %i.nk = add nsw i32 %i.nf, 2
  %spec.select.i.i577 = call i32 @llvm.smax.i32(i32 %i.nj, i32 %i.nk)
  %spec.store.select.i.i578 = call i32 @llvm.smax.i32(i32 %spec.select.i.i577, i32 200) ; 3 uses
  %i.nl = zext nneg i32 %spec.store.select.i.i578 to i64
  %i.nm = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.nl) #15
          to label %.noexc587 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ; 4 uses

.noexc587:                                        ; preds = %bb.dk
  %.not.i.i.i579 = icmp eq ptr %i.nm, null
  br i1 %.not.i.i.i579, label %bb.dp, label %bb.dl

bb.dl:                                            ; preds = %.noexc587
  %i.nn = icmp sgt i32 %i.nf, 0
  br i1 %i.nn, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.no = load i32, ptr %i.aa, align 8, !tbaa !56
  %spec.select.i.i.i583 = call i32 @llvm.smin.i32(i32 %i.nf, i32 %i.no)
  %.1.i.i.i584 = call i32 @llvm.smin.i32(i32 %spec.select.i.i.i583, i32 %spec.store.select.i.i578)
  %i.np = load ptr, ptr %9, align 8, !tbaa !55
  %i.nq = sext i32 %.1.i.i.i584 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.nm, ptr align 1 %i.np, i64 %i.nq, i1 false)
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %i.nr = load i8, ptr %i.ab, align 4, !tbaa !57
  %.not.i.i.i.i580 = icmp eq i8 %i.nr, 0
  br i1 %.not.i.i.i.i580, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i581, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.ns = load ptr, ptr %9, align 8, !tbaa !55
  invoke void @uprv_free_78(ptr noundef %i.ns)
          to label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i581 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.dp:                                            ; preds = %.noexc587
  store i8 0, ptr %i.ad, align 4, !tbaa !60
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit589

_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i581: ; preds = %bb.do, %bb.dn
  store ptr %i.nm, ptr %9, align 8, !tbaa !55
  store i32 %spec.store.select.i.i578, ptr %i.aa, align 8, !tbaa !56
  store i8 1, ptr %i.ab, align 4, !tbaa !57
  %.pre.i582 = load i32, ptr %i.ac, align 8, !tbaa !59
  br label %bb.dq

bb.dq:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i581, %._crit_edge.i585
  %i.nt = phi ptr [ %i.nm, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i581 ], [ %.pre3.i586, %._crit_edge.i585 ]
  %i.nu = phi i32 [ %.pre.i582, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i581 ], [ %i.nf, %._crit_edge.i585 ] ; 2 uses
  %i.nv = trunc nsw i32 %.0269 to i8
  %i.nw = add nsw i32 %i.nu, 1
  store i32 %i.nw, ptr %i.ac, align 8, !tbaa !59
  %i.nx = sext i32 %i.nu to i64
  %i.ny = getelementptr inbounds i8, ptr %i.nt, i64 %i.nx
  store i8 %i.nv, ptr %i.ny, align 1, !tbaa !30
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit589

_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit589: ; preds = %bb.dq, %bb.dp, %bb.dj
  %i.nz = sub nsw i32 %i.na, %i.nb                ; 3 uses
  %i.oa = icmp sgt i32 %i.nz, 0
  br i1 %i.oa, label %.lr.ph976, label %.loopexit950

.lr.ph976:                                        ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit589, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit603
  %.3304975 = phi i32 [ %i.ou, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit603 ], [ %i.nz, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit589 ] ; 2 uses
  %i.ob = load i32, ptr %i.ac, align 8, !tbaa !59 ; 5 uses
  %i.oc = load i32, ptr %i.aa, align 8, !tbaa !56 ; 2 uses
  %i.od = icmp slt i32 %i.ob, %i.oc
  br i1 %i.od, label %._crit_edge.i599, label %bb.dr

._crit_edge.i599:                                 ; preds = %.lr.ph976
  %.pre3.i600 = load ptr, ptr %9, align 8, !tbaa !55
  br label %bb.dy

bb.dr:                                            ; preds = %.lr.ph976
  %i.oe = load i8, ptr %i.ad, align 4, !tbaa !60
  %.not.i.i590 = icmp eq i8 %i.oe, 0
  br i1 %.not.i.i590, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit603, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.of = shl nsw i32 %i.oc, 1
  %i.og = add nsw i32 %i.ob, 2
  %spec.select.i.i591 = call i32 @llvm.smax.i32(i32 %i.of, i32 %i.og)
  %spec.store.select.i.i592 = call i32 @llvm.smax.i32(i32 %spec.select.i.i591, i32 200) ; 3 uses
  %i.oh = zext nneg i32 %spec.store.select.i.i592 to i64
  %i.oi = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.oh) #15
          to label %.noexc601 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ; 4 uses

.noexc601:                                        ; preds = %bb.ds
  %.not.i.i.i593 = icmp eq ptr %i.oi, null
  br i1 %.not.i.i.i593, label %bb.dx, label %bb.dt

bb.dt:                                            ; preds = %.noexc601
  %i.oj = icmp sgt i32 %i.ob, 0
  br i1 %i.oj, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.ok = load i32, ptr %i.aa, align 8, !tbaa !56
  %spec.select.i.i.i597 = call i32 @llvm.smin.i32(i32 %i.ob, i32 %i.ok)
  %.1.i.i.i598 = call i32 @llvm.smin.i32(i32 %spec.select.i.i.i597, i32 %spec.store.select.i.i592)
  %i.ol = load ptr, ptr %9, align 8, !tbaa !55
  %i.om = sext i32 %.1.i.i.i598 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.oi, ptr align 1 %i.ol, i64 %i.om, i1 false)
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.on = load i8, ptr %i.ab, align 4, !tbaa !57
  %.not.i.i.i.i594 = icmp eq i8 %i.on, 0
  br i1 %.not.i.i.i.i594, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i595, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.oo = load ptr, ptr %9, align 8, !tbaa !55
  invoke void @uprv_free_78(ptr noundef %i.oo)
          to label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i595 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.dx:                                            ; preds = %.noexc601
  store i8 0, ptr %i.ad, align 4, !tbaa !60
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit603

_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i595: ; preds = %bb.dw, %bb.dv
  store ptr %i.oi, ptr %9, align 8, !tbaa !55
  store i32 %spec.store.select.i.i592, ptr %i.aa, align 8, !tbaa !56
  store i8 1, ptr %i.ab, align 4, !tbaa !57
  %.pre.i596 = load i32, ptr %i.ac, align 8, !tbaa !59
  br label %bb.dy

bb.dy:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i595, %._crit_edge.i599
  %i.op = phi ptr [ %i.oi, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i595 ], [ %.pre3.i600, %._crit_edge.i599 ]
  %i.oq = phi i32 [ %.pre.i596, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i595 ], [ %i.ob, %._crit_edge.i599 ] ; 2 uses
  %i.or = add nsw i32 %i.oq, 1
  store i32 %i.or, ptr %i.ac, align 8, !tbaa !59
  %i.os = sext i32 %i.oq to i64
  %i.ot = getelementptr inbounds i8, ptr %i.op, i64 %i.os
  store i8 37, ptr %i.ot, align 1, !tbaa !30
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit603

_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit603: ; preds = %bb.dy, %bb.dx, %bb.dr
  %i.ou = add nsw i32 %.3304975, -33              ; 2 uses
  %i.ov = icmp sgt i32 %.3304975, 33
  br i1 %i.ov, label %.lr.ph976, label %.loopexit950, !llvm.loop !36

.loopexit950:                                     ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit603, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit589, %.thread
  %.4305 = phi i32 [ 0, %.thread ], [ %i.nz, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit589 ], [ %i.ou, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit603 ] ; 5 uses
  %i.ow = add i32 %.4, -1
  %or.cond5 = icmp ult i32 %i.ow, 33554432
  br i1 %or.cond5, label %bb.dz, label %bb.el

bb.dz:                                            ; preds = %.loopexit950
  %.val443 = load i32, ptr %i.ac, align 8, !tbaa !59 ; 2 uses
  %i.ox = add nsw i32 %.val443, -1                ; 2 uses
  %i.oy = icmp slt i32 %.0276.ph, %i.ox
  br i1 %i.oy, label %bb.ea, label %bb.ec

bb.ea:                                            ; preds = %bb.dz
  %.val = load ptr, ptr %9, align 8, !tbaa !55    ; 2 uses
  %i.oz = sext i32 %.0276.ph to i64
  %i.pa = getelementptr inbounds i8, ptr %.val, i64 %i.oz
  %i.pb = sext i32 %i.ox to i64
  %i.pc = getelementptr inbounds i8, ptr %.val, i64 %i.pb
  br label %bb.eb

bb.eb:                                            ; preds = %bb.eb, %bb.ea
  %.0268 = phi ptr [ %i.pa, %bb.ea ], [ %i.pf, %bb.eb ] ; 3 uses
  %.0267 = phi ptr [ %i.pc, %bb.ea ], [ %i.pg, %bb.eb ] ; 3 uses
  %i.pd = load i8, ptr %.0268, align 1, !tbaa !30
  %i.pe = load i8, ptr %.0267, align 1, !tbaa !30
  %i.pf = getelementptr inbounds nuw i8, ptr %.0268, i64 1 ; 2 uses
  store i8 %i.pe, ptr %.0268, align 1, !tbaa !30
  %i.pg = getelementptr inbounds i8, ptr %.0267, i64 -1 ; 2 uses
  store i8 %i.pd, ptr %.0267, align 1, !tbaa !30
  %i.ph = icmp ult ptr %i.pf, %i.pg
  br i1 %i.ph, label %bb.eb, label %thread-pre-split, !llvm.loop !37

thread-pre-split:                                 ; preds = %bb.eb
  %.pr = load i32, ptr %i.ac, align 8, !tbaa !59
  br label %bb.ec

bb.ec:                                            ; preds = %thread-pre-split, %bb.dz
  %i.pi = phi i32 [ %.pr, %thread-pre-split ], [ %.val443, %bb.dz ] ; 5 uses
  %i.pj = icmp eq i32 %.4, 1
  %i.pk = load i32, ptr %i.aa, align 8, !tbaa !56 ; 2 uses
  %i.pl = icmp slt i32 %i.pi, %i.pk
  br i1 %i.pl, label %._crit_edge.i613, label %bb.ed

._crit_edge.i613:                                 ; preds = %bb.ec
  %.pre3.i614 = load ptr, ptr %9, align 8, !tbaa !55
  br label %bb.ek

bb.ed:                                            ; preds = %bb.ec
  %i.pm = load i8, ptr %i.ad, align 4, !tbaa !60
  %.not.i.i604 = icmp eq i8 %i.pm, 0
  br i1 %.not.i.i604, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit617, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.pn = shl nsw i32 %i.pk, 1
  %i.po = add nsw i32 %i.pi, 2
  %spec.select.i.i605 = call i32 @llvm.smax.i32(i32 %i.pn, i32 %i.po)
  %spec.store.select.i.i606 = call i32 @llvm.smax.i32(i32 %spec.select.i.i605, i32 200) ; 3 uses
  %i.pp = zext nneg i32 %spec.store.select.i.i606 to i64
  %i.pq = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.pp) #15
          to label %.noexc615 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ; 4 uses

.noexc615:                                        ; preds = %bb.ee
  %.not.i.i.i607 = icmp eq ptr %i.pq, null
  br i1 %.not.i.i.i607, label %bb.ej, label %bb.ef

bb.ef:                                            ; preds = %.noexc615
  %i.pr = icmp sgt i32 %i.pi, 0
  br i1 %i.pr, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.ps = load i32, ptr %i.aa, align 8, !tbaa !56
  %spec.select.i.i.i611 = call i32 @llvm.smin.i32(i32 %i.pi, i32 %i.ps)
  %.1.i.i.i612 = call i32 @llvm.smin.i32(i32 %spec.select.i.i.i611, i32 %spec.store.select.i.i606)
  %i.pt = load ptr, ptr %9, align 8, !tbaa !55
  %i.pu = sext i32 %.1.i.i.i612 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pq, ptr align 1 %i.pt, i64 %i.pu, i1 false)
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %i.pv = load i8, ptr %i.ab, align 4, !tbaa !57
  %.not.i.i.i.i608 = icmp eq i8 %i.pv, 0
  br i1 %.not.i.i.i.i608, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i609, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.pw = load ptr, ptr %9, align 8, !tbaa !55
  invoke void @uprv_free_78(ptr noundef %i.pw)
          to label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i609 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.ej:                                            ; preds = %.noexc615
  store i8 0, ptr %i.ad, align 4, !tbaa !60
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit617

_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i609: ; preds = %bb.ei, %bb.eh
  store ptr %i.pq, ptr %9, align 8, !tbaa !55
  store i32 %spec.store.select.i.i606, ptr %i.aa, align 8, !tbaa !56
  store i8 1, ptr %i.ab, align 4, !tbaa !57
  %.pre.i610 = load i32, ptr %i.ac, align 8, !tbaa !59
  br label %bb.ek

bb.ek:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i609, %._crit_edge.i613
  %i.px = phi ptr [ %i.pq, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i609 ], [ %.pre3.i614, %._crit_edge.i613 ]
  %i.py = phi i32 [ %.pre.i610, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i609 ], [ %i.pi, %._crit_edge.i613 ] ; 2 uses
  %i.pz = select i1 %i.pj, i8 1, i8 2
  %i.qa = add nsw i32 %i.py, 1
  store i32 %i.qa, ptr %i.ac, align 8, !tbaa !59
  %i.qb = sext i32 %i.py to i64
  %i.qc = getelementptr inbounds i8, ptr %i.px, i64 %i.qb
  store i8 %i.pz, ptr %i.qc, align 1, !tbaa !30
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit617

_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit617: ; preds = %bb.ek, %bb.ej, %bb.ed
  %.val442 = load i32, ptr %i.ac, align 8, !tbaa !59
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14appendWeight16Ej.exit

bb.el:                                            ; preds = %.loopexit950
  %i.qd = lshr i64 %.0275, 24
  %i.qe = trunc i64 %i.qd to i8                   ; 2 uses
  %i.qf = trunc i32 %i.jy to i8
  %i.qg = and i32 %i.jw, 16711680
  %i.qh = icmp eq i32 %i.qg, 0                    ; 2 uses
  %i.qi = select i1 %i.qh, i32 1, i32 2           ; 2 uses
  %i.qj = load i32, ptr %i.ac, align 8, !tbaa !59 ; 5 uses
  %i.qk = add nsw i32 %i.qj, %i.qi
  %i.ql = load i32, ptr %i.aa, align 8, !tbaa !56 ; 2 uses
  %.not.i618 = icmp sgt i32 %i.qk, %i.ql
  br i1 %.not.i618, label %bb.em, label %bb.et

bb.em:                                            ; preds = %bb.el
  %i.qm = load i8, ptr %i.ad, align 4, !tbaa !60
  %.not.i.i619 = icmp eq i8 %i.qm, 0
  br i1 %.not.i.i619, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14appendWeight16Ej.exit, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.qn = shl nsw i32 %i.ql, 1
  %i.qo = shl nuw nsw i32 %i.qi, 1
  %i.qp = add nsw i32 %i.qj, %i.qo
  %spec.select.i.i620 = call i32 @llvm.smax.i32(i32 %i.qn, i32 %i.qp)
  %spec.store.select.i.i621 = call i32 @llvm.smax.i32(i32 %spec.select.i.i620, i32 200) ; 3 uses
  %i.qq = zext nneg i32 %spec.store.select.i.i621 to i64
  %i.qr = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.qq) #15
          to label %.noexc627 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ; 3 uses

.noexc627:                                        ; preds = %bb.en
  %.not.i.i.i622 = icmp eq ptr %i.qr, null
  br i1 %.not.i.i.i622, label %bb.es, label %bb.eo

bb.eo:                                            ; preds = %.noexc627
  %i.qs = icmp sgt i32 %i.qj, 0
  br i1 %i.qs, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.qt = load i32, ptr %i.aa, align 8, !tbaa !56
  %spec.select.i.i.i625 = call i32 @llvm.smin.i32(i32 %i.qj, i32 %i.qt)
  %.1.i.i.i626 = call i32 @llvm.smin.i32(i32 %spec.select.i.i.i625, i32 %spec.store.select.i.i621)
  %i.qu = load ptr, ptr %9, align 8, !tbaa !55
  %i.qv = sext i32 %.1.i.i.i626 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.qr, ptr align 1 %i.qu, i64 %i.qv, i1 false)
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  %i.qw = load i8, ptr %i.ab, align 4, !tbaa !57
  %.not.i.i.i.i623 = icmp eq i8 %i.qw, 0
  br i1 %.not.i.i.i.i623, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i624, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.qx = load ptr, ptr %9, align 8, !tbaa !55
  invoke void @uprv_free_78(ptr noundef %i.qx)
          to label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i624 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.es:                                            ; preds = %.noexc627
  store i8 0, ptr %i.ad, align 4, !tbaa !60
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14appendWeight16Ej.exit

_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i624: ; preds = %bb.er, %bb.eq
  store ptr %i.qr, ptr %9, align 8, !tbaa !55
  store i32 %spec.store.select.i.i621, ptr %i.aa, align 8, !tbaa !56
  store i8 1, ptr %i.ab, align 4, !tbaa !57
  %.pre = load i32, ptr %i.ac, align 8, !tbaa !59
  br label %bb.et

bb.et:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i624, %bb.el
  %i.qy = phi i32 [ %.pre, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i624 ], [ %i.qj, %bb.el ] ; 3 uses
  br i1 %i.qh, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.qz = add nsw i32 %i.qy, 1
  store i32 %i.qz, ptr %i.ac, align 8, !tbaa !59
  %i.ra = sext i32 %i.qy to i64
  %i.rb = load ptr, ptr %9, align 8, !tbaa !55
  %i.rc = getelementptr inbounds i8, ptr %i.rb, i64 %i.ra
  store i8 %i.qe, ptr %i.rc, align 1, !tbaa !30
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14appendWeight16Ej.exit

bb.ev:                                            ; preds = %bb.et
  %i.rd = sext i32 %i.qy to i64
  %i.re = load ptr, ptr %9, align 8, !tbaa !55
  %i.rf = getelementptr inbounds i8, ptr %i.re, i64 %i.rd
  store i8 %i.qf, ptr %i.rf, align 1, !tbaa !30
  %i.rg = load i32, ptr %i.ac, align 8, !tbaa !59
  %i.rh = load ptr, ptr %9, align 8, !tbaa !55
  %i.ri = sext i32 %i.rg to i64
  %i.rj = getelementptr i8, ptr %i.rh, i64 %i.ri
  %i.rk = getelementptr i8, ptr %i.rj, i64 1
  store i8 %i.qe, ptr %i.rk, align 1, !tbaa !30
  %i.rl = load i32, ptr %i.ac, align 8, !tbaa !59
  %i.rm = add nsw i32 %i.rl, 2
  store i32 %i.rm, ptr %i.ac, align 8, !tbaa !59
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14appendWeight16Ej.exit

_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14appendWeight16Ej.exit: ; preds = %bb.ev, %bb.eu, %bb.es, %bb.em, %bb.dh, %bb.dg, %bb.df, %bb.cz, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit617, %bb.cf, %bb.cd, %bb.cc
  %.6307 = phi i32 [ %.0301.ph, %bb.cc ], [ %.0301.ph, %bb.cd ], [ %i.ka, %bb.cf ], [ 0, %bb.dh ], [ %.4305, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit617 ], [ 0, %bb.cz ], [ 0, %bb.df ], [ 0, %bb.dg ], [ %.4305, %bb.em ], [ %.4305, %bb.es ], [ %.4305, %bb.eu ], [ %.4305, %bb.ev ]
  %.2283 = phi i32 [ %.0281.ph, %bb.cc ], [ %.0281.ph, %bb.cd ], [ %.0281.ph, %bb.cf ], [ %.0281.ph, %bb.dh ], [ 0, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit617 ], [ %.0281.ph, %bb.cz ], [ %.0281.ph, %bb.df ], [ %.0281.ph, %bb.dg ], [ %i.jy, %bb.em ], [ %i.jy, %bb.es ], [ %i.jy, %bb.eu ], [ %i.jy, %bb.ev ]
  %.2278 = phi i32 [ %.0276.ph, %bb.cc ], [ %.0276.ph, %bb.cd ], [ %.0276.ph, %bb.cf ], [ %.0276.ph, %bb.dh ], [ %.val442, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit617 ], [ %.0276.ph, %bb.cz ], [ %.0276.ph, %bb.df ], [ %.0276.ph, %bb.dg ], [ %.0276.ph, %bb.em ], [ %.0276.ph, %bb.es ], [ %.0276.ph, %bb.eu ], [ %.0276.ph, %bb.ev ]
  br i1 %.not395, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit698.a, label %bb.ew

bb.ew:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14appendWeight16Ej.exit
  br i1 %i.bd, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.rn = icmp eq i32 %.4, 0
  br i1 %i.rn, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit698.a, label %bb.ez

bb.ey:                                            ; preds = %bb.ew
  %i.ro = icmp ult i32 %i.jw, 65536
  br i1 %i.ro, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit698.a, label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ex
  %i.rp = lshr i32 %i.jw, 8
  %i.rq = and i32 %i.rp, 255                      ; 5 uses
  %i.rr = and i32 %i.jw, 49152
  %i.rs = icmp eq i32 %i.rr, 0
  %i.rt = icmp samesign ugt i32 %i.rq, 1          ; 4 uses
  %or.cond7 = select i1 %i.rs, i1 %i.rt, i1 false
  br i1 %or.cond7, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  %i.ru = add nsw i32 %.0310.ph, 1
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit698.a

bb.fb:                                            ; preds = %bb.ez
  %.not397 = icmp eq i32 %.0310.ph, 0             ; 2 uses
  br i1 %i.bf, label %bb.fc, label %bb.fw

bb.fc:                                            ; preds = %bb.fb
  br i1 %.not397, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit656, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %.val445 = load i32, ptr %i.x, align 8          ; 2 uses
  %.not925 = icmp ne i32 %.val445, 0
  %or.cond929.not = select i1 %i.rt, i1 true, i1 %.not925
  br i1 %or.cond929.not, label %bb.fe, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit656.thread

bb.fe:                                            ; preds = %bb.fd
  %i.rv = add nsw i32 %.0310.ph, -1               ; 2 uses
  %i.rw = icmp sgt i32 %.0310.ph, 7
  br i1 %i.rw, label %.lr.ph990, label %._crit_edge991

.lr.ph990:                                        ; preds = %bb.fe, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit642
  %.1311988 = phi i32 [ %i.sq, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit642 ], [ %i.rv, %bb.fe ] ; 2 uses
  %i.rx = load i32, ptr %i.x, align 8, !tbaa !59  ; 5 uses
  %i.ry = load i32, ptr %i.v, align 8, !tbaa !56  ; 2 uses
  %i.rz = icmp slt i32 %i.rx, %i.ry
  br i1 %i.rz, label %._crit_edge.i638, label %bb.ff

._crit_edge.i638:                                 ; preds = %.lr.ph990
  %.pre3.i639 = load ptr, ptr %8, align 8, !tbaa !55
  br label %bb.fm

bb.ff:                                            ; preds = %.lr.ph990
  %i.sa = load i8, ptr %i.y, align 4, !tbaa !60
  %.not.i.i629 = icmp eq i8 %i.sa, 0
  br i1 %.not.i.i629, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit642, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.sb = shl nsw i32 %i.ry, 1
  %i.sc = add nsw i32 %i.rx, 2
  %spec.select.i.i630 = call i32 @llvm.smax.i32(i32 %i.sb, i32 %i.sc)
  %spec.store.select.i.i631 = call i32 @llvm.smax.i32(i32 %spec.select.i.i630, i32 200) ; 3 uses
  %i.sd = zext nneg i32 %spec.store.select.i.i631 to i64
  %i.se = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.sd) #15
          to label %.noexc640 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ; 4 uses

.noexc640:                                        ; preds = %bb.fg
  %.not.i.i.i632 = icmp eq ptr %i.se, null
  br i1 %.not.i.i.i632, label %bb.fl, label %bb.fh

bb.fh:                                            ; preds = %.noexc640
  %i.sf = icmp sgt i32 %i.rx, 0
  br i1 %i.sf, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  %i.sg = load i32, ptr %i.v, align 8, !tbaa !56
  %spec.select.i.i.i636 = call i32 @llvm.smin.i32(i32 %i.rx, i32 %i.sg)
  %.1.i.i.i637 = call i32 @llvm.smin.i32(i32 %spec.select.i.i.i636, i32 %spec.store.select.i.i631)
  %i.sh = load ptr, ptr %8, align 8, !tbaa !55
  %i.si = sext i32 %.1.i.i.i637 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.se, ptr align 1 %i.sh, i64 %i.si, i1 false)
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %i.sj = load i8, ptr %i.w, align 4, !tbaa !57
  %.not.i.i.i.i633 = icmp eq i8 %i.sj, 0
  br i1 %.not.i.i.i.i633, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i634, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.sk = load ptr, ptr %8, align 8, !tbaa !55
  invoke void @uprv_free_78(ptr noundef %i.sk)
          to label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i634 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.fl:                                            ; preds = %.noexc640
  store i8 0, ptr %i.y, align 4, !tbaa !60
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit642

_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i634: ; preds = %bb.fk, %bb.fj
  store ptr %i.se, ptr %8, align 8, !tbaa !55
  store i32 %spec.store.select.i.i631, ptr %i.v, align 8, !tbaa !56
  store i8 1, ptr %i.w, align 4, !tbaa !57
  %.pre.i635 = load i32, ptr %i.x, align 8, !tbaa !59
  br label %bb.fm

bb.fm:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i634, %._crit_edge.i638
  %i.sl = phi ptr [ %i.se, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i634 ], [ %.pre3.i639, %._crit_edge.i638 ]
  %i.sm = phi i32 [ %.pre.i635, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i634 ], [ %i.rx, %._crit_edge.i638 ] ; 2 uses
  %i.sn = add nsw i32 %i.sm, 1
  store i32 %i.sn, ptr %i.x, align 8, !tbaa !59
  %i.so = sext i32 %i.sm to i64
  %i.sp = getelementptr inbounds i8, ptr %i.sl, i64 %i.so
  store i8 112, ptr %i.sp, align 1, !tbaa !30
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit642

_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit642: ; preds = %bb.fm, %bb.fl, %bb.ff
  %i.sq = add nsw i32 %.1311988, -7               ; 2 uses
  %i.sr = icmp sgt i32 %.1311988, 13
  br i1 %i.sr, label %.lr.ph990, label %._crit_edge991.loopexit, !llvm.loop !38

._crit_edge991.loopexit:                          ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit642
  %.pre1061 = load i32, ptr %i.x, align 8, !tbaa !59
  br label %._crit_edge991

._crit_edge991:                                   ; preds = %._crit_edge991.loopexit, %bb.fe
  %i.ss = phi i32 [ %.val445, %bb.fe ], [ %.pre1061, %._crit_edge991.loopexit ] ; 5 uses
  %.1311.lcssa = phi i32 [ %i.rv, %bb.fe ], [ %i.sq, %._crit_edge991.loopexit ] ; 2 uses
  %i.st = icmp samesign ult i32 %i.rq, 2
  %i.su = add nuw nsw i32 %.1311.lcssa, 1
  %i.sv = sub i32 13, %.1311.lcssa
  %.0265 = select i1 %i.st, i32 %i.su, i32 %i.sv
  %i.sw = load i32, ptr %i.v, align 8, !tbaa !56  ; 2 uses
  %i.sx = icmp slt i32 %i.ss, %i.sw
  br i1 %i.sx, label %._crit_edge.i652, label %bb.fn

._crit_edge.i652:                                 ; preds = %._crit_edge991
  %.pre3.i653 = load ptr, ptr %8, align 8, !tbaa !55
  br label %bb.fu

bb.fn:                                            ; preds = %._crit_edge991
  %i.sy = load i8, ptr %i.y, align 4, !tbaa !60
  %.not.i.i643 = icmp eq i8 %i.sy, 0
  br i1 %.not.i.i643, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit656, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.sz = shl nsw i32 %i.sw, 1
  %i.ta = add nsw i32 %i.ss, 2
  %spec.select.i.i644 = call i32 @llvm.smax.i32(i32 %i.sz, i32 %i.ta)
  %spec.store.select.i.i645 = call i32 @llvm.smax.i32(i32 %spec.select.i.i644, i32 200) ; 3 uses
  %i.tb = zext nneg i32 %spec.store.select.i.i645 to i64
  %i.tc = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.tb) #15
          to label %.noexc654 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ; 4 uses

.noexc654:                                        ; preds = %bb.fo
  %.not.i.i.i646 = icmp eq ptr %i.tc, null
  br i1 %.not.i.i.i646, label %bb.ft, label %bb.fp

bb.fp:                                            ; preds = %.noexc654
  %i.td = icmp sgt i32 %i.ss, 0
  br i1 %i.td, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  %i.te = load i32, ptr %i.v, align 8, !tbaa !56
  %spec.select.i.i.i650 = call i32 @llvm.smin.i32(i32 %i.ss, i32 %i.te)
  %.1.i.i.i651 = call i32 @llvm.smin.i32(i32 %spec.select.i.i.i650, i32 %spec.store.select.i.i645)
  %i.tf = load ptr, ptr %8, align 8, !tbaa !55
  %i.tg = sext i32 %.1.i.i.i651 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.tc, ptr align 1 %i.tf, i64 %i.tg, i1 false)
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fp
  %i.th = load i8, ptr %i.w, align 4, !tbaa !57
  %.not.i.i.i.i647 = icmp eq i8 %i.th, 0
  br i1 %.not.i.i.i.i647, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i648, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.ti = load ptr, ptr %8, align 8, !tbaa !55
  invoke void @uprv_free_78(ptr noundef %i.ti)
          to label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i648 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.ft:                                            ; preds = %.noexc654
  store i8 0, ptr %i.y, align 4, !tbaa !60
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit656

_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i648: ; preds = %bb.fs, %bb.fr
  store ptr %i.tc, ptr %8, align 8, !tbaa !55
  store i32 %spec.store.select.i.i645, ptr %i.v, align 8, !tbaa !56
  store i8 1, ptr %i.w, align 4, !tbaa !57
  %.pre.i649 = load i32, ptr %i.x, align 8, !tbaa !59
  br label %bb.fu

bb.fu:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i648, %._crit_edge.i652
  %i.tj = phi ptr [ %i.tc, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i648 ], [ %.pre3.i653, %._crit_edge.i652 ]
  %i.tk = phi i32 [ %.pre.i649, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i648 ], [ %i.ss, %._crit_edge.i652 ] ; 2 uses
  %.0265.tr = trunc i32 %.0265 to i8
  %i.tl = shl i8 %.0265.tr, 4
  %i.tm = add nsw i32 %i.tk, 1
  store i32 %i.tm, ptr %i.x, align 8, !tbaa !59
  %i.tn = sext i32 %i.tk to i64
  %i.to = getelementptr inbounds i8, ptr %i.tj, i64 %i.tn
  store i8 %i.tl, ptr %i.to, align 1, !tbaa !30
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit656

_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit656: ; preds = %bb.fu, %bb.ft, %bb.fn, %bb.fc
  br i1 %i.rt, label %bb.fv, label %thread-pre-split902

bb.fv:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit656
  %i.tp = lshr i32 %i.jw, 10
  %i.tq = and i32 %i.tp, 48
  %i.tr = add nuw nsw i32 %i.tq, 208
  br label %thread-pre-split902

bb.fw:                                            ; preds = %bb.fb
  br i1 %.not397, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit684, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.ts = add nsw i32 %.0310.ph, -1               ; 2 uses
  %i.tt = icmp sgt i32 %.0310.ph, 13
  br i1 %i.tt, label %.lr.ph985, label %._crit_edge986

.lr.ph985:                                        ; preds = %bb.fx, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit670
  %.3313983 = phi i32 [ %i.un, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit670 ], [ %i.ts, %bb.fx ] ; 2 uses
  %i.tu = load i32, ptr %i.x, align 8, !tbaa !59  ; 5 uses
  %i.tv = load i32, ptr %i.v, align 8, !tbaa !56  ; 2 uses
  %i.tw = icmp slt i32 %i.tu, %i.tv
  br i1 %i.tw, label %._crit_edge.i666, label %bb.fy

._crit_edge.i666:                                 ; preds = %.lr.ph985
  %.pre3.i667 = load ptr, ptr %8, align 8, !tbaa !55
  br label %bb.gf

bb.fy:                                            ; preds = %.lr.ph985
  %i.tx = load i8, ptr %i.y, align 4, !tbaa !60
  %.not.i.i657 = icmp eq i8 %i.tx, 0
  br i1 %.not.i.i657, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit670, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.ty = shl nsw i32 %i.tv, 1
  %i.tz = add nsw i32 %i.tu, 2
  %spec.select.i.i658 = call i32 @llvm.smax.i32(i32 %i.ty, i32 %i.tz)
  %spec.store.select.i.i659 = call i32 @llvm.smax.i32(i32 %spec.select.i.i658, i32 200) ; 3 uses
  %i.ua = zext nneg i32 %spec.store.select.i.i659 to i64
  %i.ub = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.ua) #15
          to label %.noexc668 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ; 4 uses

.noexc668:                                        ; preds = %bb.fz
  %.not.i.i.i660 = icmp eq ptr %i.ub, null
  br i1 %.not.i.i.i660, label %bb.ge, label %bb.ga

bb.ga:                                            ; preds = %.noexc668
  %i.uc = icmp sgt i32 %i.tu, 0
  br i1 %i.uc, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %i.ud = load i32, ptr %i.v, align 8, !tbaa !56
  %spec.select.i.i.i664 = call i32 @llvm.smin.i32(i32 %i.tu, i32 %i.ud)
  %.1.i.i.i665 = call i32 @llvm.smin.i32(i32 %spec.select.i.i.i664, i32 %spec.store.select.i.i659)
  %i.ue = load ptr, ptr %8, align 8, !tbaa !55
  %i.uf = sext i32 %.1.i.i.i665 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ub, ptr align 1 %i.ue, i64 %i.uf, i1 false)
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.ga
  %i.ug = load i8, ptr %i.w, align 4, !tbaa !57
  %.not.i.i.i.i661 = icmp eq i8 %i.ug, 0
  br i1 %.not.i.i.i.i661, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i662, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.uh = load ptr, ptr %8, align 8, !tbaa !55
  invoke void @uprv_free_78(ptr noundef %i.uh)
          to label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i662 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.ge:                                            ; preds = %.noexc668
  store i8 0, ptr %i.y, align 4, !tbaa !60
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit670

_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i662: ; preds = %bb.gd, %bb.gc
  store ptr %i.ub, ptr %8, align 8, !tbaa !55
  store i32 %spec.store.select.i.i659, ptr %i.v, align 8, !tbaa !56
  store i8 1, ptr %i.w, align 4, !tbaa !57
  %.pre.i663 = load i32, ptr %i.x, align 8, !tbaa !59
  br label %bb.gf

bb.gf:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i662, %._crit_edge.i666
  %i.ui = phi ptr [ %i.ub, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i662 ], [ %.pre3.i667, %._crit_edge.i666 ]
  %i.uj = phi i32 [ %.pre.i663, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i662 ], [ %i.tu, %._crit_edge.i666 ] ; 2 uses
  %i.uk = add nsw i32 %i.uj, 1
  store i32 %i.uk, ptr %i.x, align 8, !tbaa !59
  %i.ul = sext i32 %i.uj to i64
  %i.um = getelementptr inbounds i8, ptr %i.ui, i64 %i.ul
  store i8 48, ptr %i.um, align 1, !tbaa !30
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit670

_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit670: ; preds = %bb.gf, %bb.ge, %bb.fy
  %i.un = add nsw i32 %.3313983, -13              ; 2 uses
  %i.uo = icmp sgt i32 %.3313983, 25
  br i1 %i.uo, label %.lr.ph985, label %._crit_edge986, !llvm.loop !39

._crit_edge986:                                   ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit670, %bb.fx
  %.3313.lcssa = phi i32 [ %i.ts, %bb.fx ], [ %i.un, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit670 ]
  %i.up = load i32, ptr %i.x, align 8, !tbaa !59  ; 5 uses
  %i.uq = load i32, ptr %i.v, align 8, !tbaa !56  ; 2 uses
  %i.ur = icmp slt i32 %i.up, %i.uq
  br i1 %i.ur, label %._crit_edge.i680, label %bb.gg

._crit_edge.i680:                                 ; preds = %._crit_edge986
  %.pre3.i681 = load ptr, ptr %8, align 8, !tbaa !55
  br label %bb.gn

bb.gg:                                            ; preds = %._crit_edge986
  %i.us = load i8, ptr %i.y, align 4, !tbaa !60
  %.not.i.i671 = icmp eq i8 %i.us, 0
  br i1 %.not.i.i671, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit684, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.ut = shl nsw i32 %i.uq, 1
  %i.uu = add nsw i32 %i.up, 2
  %spec.select.i.i672 = call i32 @llvm.smax.i32(i32 %i.ut, i32 %i.uu)
  %spec.store.select.i.i673 = call i32 @llvm.smax.i32(i32 %spec.select.i.i672, i32 200) ; 3 uses
  %i.uv = zext nneg i32 %spec.store.select.i.i673 to i64
  %i.uw = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.uv) #15
          to label %.noexc682 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ; 4 uses

.noexc682:                                        ; preds = %bb.gh
  %.not.i.i.i674 = icmp eq ptr %i.uw, null
  br i1 %.not.i.i.i674, label %bb.gm, label %bb.gi

bb.gi:                                            ; preds = %.noexc682
  %i.ux = icmp sgt i32 %i.up, 0
  br i1 %i.ux, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  %i.uy = load i32, ptr %i.v, align 8, !tbaa !56
  %spec.select.i.i.i678 = call i32 @llvm.smin.i32(i32 %i.up, i32 %i.uy)
  %.1.i.i.i679 = call i32 @llvm.smin.i32(i32 %spec.select.i.i.i678, i32 %spec.store.select.i.i673)
  %i.uz = load ptr, ptr %8, align 8, !tbaa !55
  %i.va = sext i32 %.1.i.i.i679 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.uw, ptr align 1 %i.uz, i64 %i.va, i1 false)
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %bb.gi
  %i.vb = load i8, ptr %i.w, align 4, !tbaa !57
  %.not.i.i.i.i675 = icmp eq i8 %i.vb, 0
  br i1 %.not.i.i.i.i675, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i676, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.vc = load ptr, ptr %8, align 8, !tbaa !55
  invoke void @uprv_free_78(ptr noundef %i.vc)
          to label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i676 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.gm:                                            ; preds = %.noexc682
  store i8 0, ptr %i.y, align 4, !tbaa !60
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit684

_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i676: ; preds = %bb.gl, %bb.gk
  store ptr %i.uw, ptr %8, align 8, !tbaa !55
  store i32 %spec.store.select.i.i673, ptr %i.v, align 8, !tbaa !56
  store i8 1, ptr %i.w, align 4, !tbaa !57
  %.pre.i677 = load i32, ptr %i.x, align 8, !tbaa !59
  br label %bb.gn

bb.gn:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i676, %._crit_edge.i680
  %i.vd = phi ptr [ %i.uw, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i676 ], [ %.pre3.i681, %._crit_edge.i680 ]
  %i.ve = phi i32 [ %.pre.i677, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i676 ], [ %i.up, %._crit_edge.i680 ] ; 2 uses
  %.3313.tr = trunc i32 %.3313.lcssa to i8
  %i.vf = shl i8 %.3313.tr, 4
  %i.vg = add i8 %i.vf, 48
  %i.vh = add nsw i32 %i.ve, 1
  store i32 %i.vh, ptr %i.x, align 8, !tbaa !59
  %i.vi = sext i32 %i.ve to i64
  %i.vj = getelementptr inbounds i8, ptr %i.vd, i64 %i.vi
  store i8 %i.vg, ptr %i.vj, align 1, !tbaa !30
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit684

_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit684: ; preds = %bb.gn, %bb.gm, %bb.gg, %bb.fw
  br i1 %i.rt, label %bb.go, label %thread-pre-split902

bb.go:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit684
  %i.vk = lshr i32 %i.jw, 10
  %i.vl = and i32 %i.vk, 48
  %i.vm = xor i32 %i.vl, 48
  br label %thread-pre-split902

thread-pre-split902:                              ; preds = %bb.fv, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit656, %bb.go, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit684
  %.0266.ph = phi i32 [ %i.rq, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit684 ], [ %i.vm, %bb.go ], [ %i.rq, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit656 ], [ %i.tr, %bb.fv ]
  %.pr903 = load i32, ptr %i.x, align 8, !tbaa !59
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit656.thread

_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit656.thread: ; preds = %bb.fd, %thread-pre-split902
  %i.vn = phi i32 [ %.pr903, %thread-pre-split902 ], [ 0, %bb.fd ] ; 5 uses
  %.5315 = phi i32 [ 0, %thread-pre-split902 ], [ %.0310.ph, %bb.fd ] ; 3 uses
  %.0266 = phi i32 [ %.0266.ph, %thread-pre-split902 ], [ %i.rq, %bb.fd ]
  %i.vo = load i32, ptr %i.v, align 8, !tbaa !56  ; 2 uses
  %i.vp = icmp slt i32 %i.vn, %i.vo
  br i1 %i.vp, label %._crit_edge.i694.a, label %bb.gp

._crit_edge.i694.a:                               ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit656.thread
  %.pre3.i695.a = load ptr, ptr %8, align 8, !tbaa !55
  br label %bb.gw

bb.gp:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit656.thread
  %i.vq = load i8, ptr %i.y, align 4, !tbaa !60
  %.not.i.i685 = icmp eq i8 %i.vq, 0
  br i1 %.not.i.i685, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit698.a, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.vr = shl nsw i32 %i.vo, 1
  %i.vs = add nsw i32 %i.vn, 2
  %spec.select.i.i686 = call i32 @llvm.smax.i32(i32 %i.vr, i32 %i.vs)
  %spec.store.select.i.i687 = call i32 @llvm.smax.i32(i32 %spec.select.i.i686, i32 200) ; 3 uses
  %i.vt = zext nneg i32 %spec.store.select.i.i687 to i64
  %i.vu = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.vt) #15
          to label %.noexc696.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ; 4 uses

.noexc696.a:                                      ; preds = %bb.gq
  %.not.i.i.i688 = icmp eq ptr %i.vu, null
  br i1 %.not.i.i.i688, label %bb.gv, label %bb.gr

bb.gr:                                            ; preds = %.noexc696.a
  %i.vv = icmp sgt i32 %i.vn, 0
  br i1 %i.vv, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  %i.vw = load i32, ptr %i.v, align 8, !tbaa !56
  %spec.select.i.i.i692 = call i32 @llvm.smin.i32(i32 %i.vn, i32 %i.vw)
  %.1.i.i.i693 = call i32 @llvm.smin.i32(i32 %spec.select.i.i.i692, i32 %spec.store.select.i.i687)
  %i.vx = load ptr, ptr %8, align 8, !tbaa !55
  %i.vy = sext i32 %.1.i.i.i693 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.vu, ptr align 1 %i.vx, i64 %i.vy, i1 false)
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gr
  %i.vz = load i8, ptr %i.w, align 4, !tbaa !57
  %.not.i.i.i.i689 = icmp eq i8 %i.vz, 0
  br i1 %.not.i.i.i.i689, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i690, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.wa = load ptr, ptr %8, align 8, !tbaa !55
  invoke void @uprv_free_78(ptr noundef %i.wa)
          to label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i690 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.gv:                                            ; preds = %.noexc696.a
  store i8 0, ptr %i.y, align 4, !tbaa !60
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit698.a

_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i690: ; preds = %bb.gu, %bb.gt
  store ptr %i.vu, ptr %8, align 8, !tbaa !55
  store i32 %spec.store.select.i.i687, ptr %i.v, align 8, !tbaa !56
  store i8 1, ptr %i.w, align 4, !tbaa !57
  %.pre.i691 = load i32, ptr %i.x, align 8, !tbaa !59
  br label %bb.gw

bb.gw:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i690, %._crit_edge.i694.a
  %i.wb = phi ptr [ %i.vu, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i690 ], [ %.pre3.i695.a, %._crit_edge.i694.a ]
  %i.wc = phi i32 [ %.pre.i691, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i690 ], [ %i.vn, %._crit_edge.i694.a ] ; 2 uses
  %i.wd = trunc i32 %.0266 to i8
  %i.we = add nsw i32 %i.wc, 1
  store i32 %i.we, ptr %i.x, align 8, !tbaa !59
  %i.wf = sext i32 %i.wc to i64
  %i.wg = getelementptr inbounds i8, ptr %i.wb, i64 %i.wf
  store i8 %i.wd, ptr %i.wg, align 1, !tbaa !30
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit698.a

_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit698.a: ; preds = %bb.gw, %bb.gv, %bb.gp, %bb.fa, %bb.ey, %bb.ex, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14appendWeight16Ej.exit
  %.7317 = phi i32 [ %.0310.ph, %bb.ex ], [ %.0310.ph, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14appendWeight16Ej.exit ], [ %.0310.ph, %bb.ey ], [ %i.ru, %bb.fa ], [ %.5315, %bb.gp ], [ %.5315, %bb.gv ], [ %.5315, %bb.gw ]
  br i1 %.not401, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14appendWeight16Ej.exit741, label %bb.gx

bb.gx:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit698.a
  %i.wh = and i32 %i.t, %i.jw                     ; 13 uses
  %i.wi = icmp eq i32 %i.wh, 1280
  br i1 %i.wi, label %bb.gy, label %bb.gz

bb.gy:                                            ; preds = %bb.gx
  %i.wj = add nsw i32 %.0291.ph, 1
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14appendWeight16Ej.exit741

bb.gz:                                            ; preds = %bb.gx
  br i1 %.not.i.not, label %bb.ib, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %.not404 = icmp eq i32 %.0291.ph, 0
  br i1 %.not404, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit726, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.wk = add nsw i32 %.0291.ph, -1               ; 2 uses
  %i.wl = icmp sgt i32 %.0291.ph, 97
  br i1 %i.wl, label %.lr.ph995, label %._crit_edge996

.lr.ph995:                                        ; preds = %bb.hb, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit712
  %.1292993 = phi i32 [ %i.xf, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit712 ], [ %i.wk, %bb.hb ] ; 2 uses
  %i.wm = load i32, ptr %i.ah, align 8, !tbaa !59 ; 5 uses
  %i.wn = load i32, ptr %i.af, align 8, !tbaa !56 ; 2 uses
  %i.wo = icmp slt i32 %i.wm, %i.wn
  br i1 %i.wo, label %._crit_edge.i708, label %bb.hc

._crit_edge.i708:                                 ; preds = %.lr.ph995
  %.pre3.i709 = load ptr, ptr %10, align 8, !tbaa !55
  br label %bb.hj

bb.hc:                                            ; preds = %.lr.ph995
  %i.wp = load i8, ptr %i.ai, align 4, !tbaa !60
  %.not.i.i699.a = icmp eq i8 %i.wp, 0
  br i1 %.not.i.i699.a, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit712, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.wq = shl nsw i32 %i.wn, 1
  %i.wr = add nsw i32 %i.wm, 2
  %spec.select.i.i700.a = call i32 @llvm.smax.i32(i32 %i.wq, i32 %i.wr)
  %spec.store.select.i.i701.a = call i32 @llvm.smax.i32(i32 %spec.select.i.i700.a, i32 200) ; 3 uses
  %i.ws = zext nneg i32 %spec.store.select.i.i701.a to i64
  %i.wt = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.ws) #15
          to label %.noexc710 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ; 4 uses

.noexc710:                                        ; preds = %bb.hd
  %.not.i.i.i702.a = icmp eq ptr %i.wt, null
  br i1 %.not.i.i.i702.a, label %bb.hi, label %bb.he

bb.he:                                            ; preds = %.noexc710
  %i.wu = icmp sgt i32 %i.wm, 0
  br i1 %i.wu, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %bb.he
  %i.wv = load i32, ptr %i.af, align 8, !tbaa !56
  %spec.select.i.i.i706 = call i32 @llvm.smin.i32(i32 %i.wm, i32 %i.wv)
  %.1.i.i.i707 = call i32 @llvm.smin.i32(i32 %spec.select.i.i.i706, i32 %spec.store.select.i.i701.a)
  %i.ww = load ptr, ptr %10, align 8, !tbaa !55
  %i.wx = sext i32 %.1.i.i.i707 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.wt, ptr align 1 %i.ww, i64 %i.wx, i1 false)
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %bb.he
  %i.wy = load i8, ptr %i.ag, align 4, !tbaa !57
  %.not.i.i.i.i703.a = icmp eq i8 %i.wy, 0
  br i1 %.not.i.i.i.i703.a, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i704.a, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.wz = load ptr, ptr %10, align 8, !tbaa !55
  invoke void @uprv_free_78(ptr noundef %i.wz)
          to label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i704.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.hi:                                            ; preds = %.noexc710
  store i8 0, ptr %i.ai, align 4, !tbaa !60
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit712

_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i704.a: ; preds = %bb.hh, %bb.hg
  store ptr %i.wt, ptr %10, align 8, !tbaa !55
  store i32 %spec.store.select.i.i701.a, ptr %i.af, align 8, !tbaa !56
  store i8 1, ptr %i.ag, align 4, !tbaa !57
  %.pre.i705.a = load i32, ptr %i.ah, align 8, !tbaa !59
  br label %bb.hj

bb.hj:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i704.a, %._crit_edge.i708
  %i.xa = phi ptr [ %i.wt, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i704.a ], [ %.pre3.i709, %._crit_edge.i708 ]
  %i.xb = phi i32 [ %.pre.i705.a, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i704.a ], [ %i.wm, %._crit_edge.i708 ] ; 2 uses
  %i.xc = add nsw i32 %i.xb, 1
  store i32 %i.xc, ptr %i.ah, align 8, !tbaa !59
  %i.xd = sext i32 %i.xb to i64
  %i.xe = getelementptr inbounds i8, ptr %i.xa, i64 %i.xd
  store i8 101, ptr %i.xe, align 1, !tbaa !30
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit712

_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit712: ; preds = %bb.hj, %bb.hi, %bb.hc
  %i.xf = add nsw i32 %.1292993, -97              ; 2 uses
  %i.xg = icmp sgt i32 %.1292993, 193
  br i1 %i.xg, label %.lr.ph995, label %._crit_edge996, !llvm.loop !40

._crit_edge996:                                   ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit712, %bb.hb
  %.1292.lcssa = phi i32 [ %i.wk, %bb.hb ], [ %i.xf, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit712 ] ; 2 uses
  %i.xh = icmp samesign ult i32 %i.wh, 1280
  %i.xi = add nsw i32 %.1292.lcssa, 5
  %i.xj = sub i32 197, %.1292.lcssa
  %.0261 = select i1 %i.xh, i32 %i.xi, i32 %i.xj
  %i.xk = load i32, ptr %i.ah, align 8, !tbaa !59 ; 5 uses
  %i.xl = load i32, ptr %i.af, align 8, !tbaa !56 ; 2 uses
  %i.xm = icmp slt i32 %i.xk, %i.xl
  br i1 %i.xm, label %._crit_edge.i722, label %bb.hk

._crit_edge.i722:                                 ; preds = %._crit_edge996
  %.pre3.i723 = load ptr, ptr %10, align 8, !tbaa !55
  br label %bb.hr

bb.hk:                                            ; preds = %._crit_edge996
  %i.xn = load i8, ptr %i.ai, align 4, !tbaa !60
  %.not.i.i713 = icmp eq i8 %i.xn, 0
  br i1 %.not.i.i713, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit726, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.xo = shl nsw i32 %i.xl, 1
  %i.xp = add nsw i32 %i.xk, 2
  %spec.select.i.i714 = call i32 @llvm.smax.i32(i32 %i.xo, i32 %i.xp)
  %spec.store.select.i.i715 = call i32 @llvm.smax.i32(i32 %spec.select.i.i714, i32 200) ; 3 uses
  %i.xq = zext nneg i32 %spec.store.select.i.i715 to i64
  %i.xr = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.xq) #15
          to label %.noexc724.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ; 4 uses

.noexc724.a:                                      ; preds = %bb.hl
  %.not.i.i.i716 = icmp eq ptr %i.xr, null
  br i1 %.not.i.i.i716, label %bb.hq, label %bb.hm

bb.hm:                                            ; preds = %.noexc724.a
  %i.xs = icmp sgt i32 %i.xk, 0
  br i1 %i.xs, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %bb.hm
  %i.xt = load i32, ptr %i.af, align 8, !tbaa !56
  %spec.select.i.i.i720 = call i32 @llvm.smin.i32(i32 %i.xk, i32 %i.xt)
  %.1.i.i.i721 = call i32 @llvm.smin.i32(i32 %spec.select.i.i.i720, i32 %spec.store.select.i.i715)
  %i.xu = load ptr, ptr %10, align 8, !tbaa !55
  %i.xv = sext i32 %.1.i.i.i721 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.xr, ptr align 1 %i.xu, i64 %i.xv, i1 false)
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hn, %bb.hm
  %i.xw = load i8, ptr %i.ag, align 4, !tbaa !57
  %.not.i.i.i.i717 = icmp eq i8 %i.xw, 0
  br i1 %.not.i.i.i.i717, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i718, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.xx = load ptr, ptr %10, align 8, !tbaa !55
  invoke void @uprv_free_78(ptr noundef %i.xx)
          to label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i718 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.hq:                                            ; preds = %.noexc724.a
  store i8 0, ptr %i.ai, align 4, !tbaa !60
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit726

_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i718: ; preds = %bb.hp, %bb.ho
  store ptr %i.xr, ptr %10, align 8, !tbaa !55
  store i32 %spec.store.select.i.i715, ptr %i.af, align 8, !tbaa !56
  store i8 1, ptr %i.ag, align 4, !tbaa !57
  %.pre.i719 = load i32, ptr %i.ah, align 8, !tbaa !59
  br label %bb.hr

bb.hr:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i718, %._crit_edge.i722
  %i.xy = phi ptr [ %i.xr, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i718 ], [ %.pre3.i723, %._crit_edge.i722 ]
  %i.xz = phi i32 [ %.pre.i719, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i718 ], [ %i.xk, %._crit_edge.i722 ] ; 2 uses
  %i.ya = trunc i32 %.0261 to i8
  %i.yb = add nsw i32 %i.xz, 1
  store i32 %i.yb, ptr %i.ah, align 8, !tbaa !59
  %i.yc = sext i32 %i.xz to i64
  %i.yd = getelementptr inbounds i8, ptr %i.xy, i64 %i.yc
  store i8 %i.ya, ptr %i.yd, align 1, !tbaa !30
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit726

_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit726: ; preds = %bb.hr, %bb.hq, %bb.hk, %bb.ha
  %i.ye = icmp samesign ugt i32 %i.wh, 1280
  %i.yf = add nuw nsw i32 %i.wh, 49152
  %spec.select437 = select i1 %i.ye, i32 %i.yf, i32 %i.wh ; 3 uses
  %i.yg = lshr i32 %spec.select437, 8
  %i.yh = trunc i32 %i.yg to i8
  %i.yi = trunc i32 %spec.select437 to i8
  %i.yj = and i32 %spec.select437, 63
  %i.yk = icmp eq i32 %i.yj, 0                    ; 2 uses
  %i.yl = select i1 %i.yk, i32 1, i32 2           ; 2 uses
  %i.ym = load i32, ptr %i.ah, align 8, !tbaa !59 ; 5 uses
  %i.yn = add nsw i32 %i.ym, %i.yl
  %i.yo = load i32, ptr %i.af, align 8, !tbaa !56 ; 2 uses
  %.not.i727 = icmp sgt i32 %i.yn, %i.yo
  br i1 %.not.i727, label %bb.hs, label %._crit_edge.i728

._crit_edge.i728:                                 ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit726
  %.pre12.i729 = load ptr, ptr %10, align 8, !tbaa !55
  br label %bb.hz

bb.hs:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit726
  %i.yp = load i8, ptr %i.ai, align 4, !tbaa !60
  %.not.i.i730 = icmp eq i8 %i.yp, 0
  br i1 %.not.i.i730, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14appendWeight16Ej.exit741, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.yq = shl nsw i32 %i.yo, 1
  %i.yr = shl nuw nsw i32 %i.yl, 1
  %i.ys = add nsw i32 %i.ym, %i.yr
  %spec.select.i.i731 = call i32 @llvm.smax.i32(i32 %i.yq, i32 %i.ys)
  %spec.store.select.i.i732 = call i32 @llvm.smax.i32(i32 %spec.select.i.i731, i32 200) ; 3 uses
  %i.yt = zext nneg i32 %spec.store.select.i.i732 to i64
  %i.yu = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.yt) #15
          to label %.noexc739 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ; 4 uses

.noexc739:                                        ; preds = %bb.ht
  %.not.i.i.i733 = icmp eq ptr %i.yu, null
  br i1 %.not.i.i.i733, label %bb.hy, label %bb.hu

bb.hu:                                            ; preds = %.noexc739
  %i.yv = icmp sgt i32 %i.ym, 0
  br i1 %i.yv, label %bb.hv, label %bb.hw

bb.hv:                                            ; preds = %bb.hu
  %i.yw = load i32, ptr %i.af, align 8, !tbaa !56
  %spec.select.i.i.i737 = call i32 @llvm.smin.i32(i32 %i.ym, i32 %i.yw)
  %.1.i.i.i738 = call i32 @llvm.smin.i32(i32 %spec.select.i.i.i737, i32 %spec.store.select.i.i732)
  %i.yx = load ptr, ptr %10, align 8, !tbaa !55
  %i.yy = sext i32 %.1.i.i.i738 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.yu, ptr align 1 %i.yx, i64 %i.yy, i1 false)
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %bb.hu
  %i.yz = load i8, ptr %i.ag, align 4, !tbaa !57
  %.not.i.i.i.i734 = icmp eq i8 %i.yz, 0
  br i1 %.not.i.i.i.i734, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i735, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.za = load ptr, ptr %10, align 8, !tbaa !55
  invoke void @uprv_free_78(ptr noundef %i.za)
          to label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i735 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.hy:                                            ; preds = %.noexc739
  store i8 0, ptr %i.ai, align 4, !tbaa !60
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14appendWeight16Ej.exit741

_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i735: ; preds = %bb.hx, %bb.hw
  store ptr %i.yu, ptr %10, align 8, !tbaa !55
  store i32 %spec.store.select.i.i732, ptr %i.af, align 8, !tbaa !56
  store i8 1, ptr %i.ag, align 4, !tbaa !57
  %.pre.i736 = load i32, ptr %i.ah, align 8, !tbaa !59
  br label %bb.hz

bb.hz:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i735, %._crit_edge.i728
  %i.zb = phi ptr [ %i.yu, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i735 ], [ %.pre12.i729, %._crit_edge.i728 ]
  %i.zc = phi i32 [ %.pre.i736, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i735 ], [ %i.ym, %._crit_edge.i728 ] ; 2 uses
  %i.zd = add nsw i32 %i.zc, 1
  store i32 %i.zd, ptr %i.ah, align 8, !tbaa !59
  %i.ze = sext i32 %i.zc to i64
  %i.zf = getelementptr inbounds i8, ptr %i.zb, i64 %i.ze
  store i8 %i.yh, ptr %i.zf, align 1, !tbaa !30
  br i1 %i.yk, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14appendWeight16Ej.exit741, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.zg = load i32, ptr %i.ah, align 8, !tbaa !59 ; 2 uses
  %i.zh = add nsw i32 %i.zg, 1
  store i32 %i.zh, ptr %i.ah, align 8, !tbaa !59
  %i.zi = sext i32 %i.zg to i64
  %i.zj = load ptr, ptr %10, align 8, !tbaa !55
  %i.zk = getelementptr inbounds i8, ptr %i.zj, i64 %i.zi
  store i8 %i.yi, ptr %i.zk, align 1, !tbaa !30
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14appendWeight16Ej.exit741

bb.ib:                                            ; preds = %bb.gz
  br i1 %i.bf, label %bb.ic, label %bb.jd

bb.ic:                                            ; preds = %bb.ib
  %.not403 = icmp eq i32 %.0291.ph, 0
  br i1 %.not403, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit769, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.zl = add nsw i32 %.0291.ph, -1               ; 2 uses
  %i.zm = icmp sgt i32 %.0291.ph, 33
  br i1 %i.zm, label %.lr.ph1005, label %._crit_edge1006

.lr.ph1005:                                       ; preds = %bb.id, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit755
  %.32941003 = phi i32 [ %i.aag, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit755 ], [ %i.zl, %bb.id ] ; 2 uses
  %i.zn = load i32, ptr %i.ah, align 8, !tbaa !59 ; 5 uses
  %i.zo = load i32, ptr %i.af, align 8, !tbaa !56 ; 2 uses
  %i.zp = icmp slt i32 %i.zn, %i.zo
  br i1 %i.zp, label %._crit_edge.i751, label %bb.ie

._crit_edge.i751:                                 ; preds = %.lr.ph1005
  %.pre3.i752 = load ptr, ptr %10, align 8, !tbaa !55
  br label %bb.il

bb.ie:                                            ; preds = %.lr.ph1005
  %i.zq = load i8, ptr %i.ai, align 4, !tbaa !60
  %.not.i.i742 = icmp eq i8 %i.zq, 0
  br i1 %.not.i.i742, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit755, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.zr = shl nsw i32 %i.zo, 1
  %i.zs = add nsw i32 %i.zn, 2
  %spec.select.i.i743 = call i32 @llvm.smax.i32(i32 %i.zr, i32 %i.zs)
  %spec.store.select.i.i744 = call i32 @llvm.smax.i32(i32 %spec.select.i.i743, i32 200) ; 3 uses
  %i.zt = zext nneg i32 %spec.store.select.i.i744 to i64
  %i.zu = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.zt) #15
          to label %.noexc753 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ; 4 uses

.noexc753:                                        ; preds = %bb.if
  %.not.i.i.i745 = icmp eq ptr %i.zu, null
  br i1 %.not.i.i.i745, label %bb.ik, label %bb.ig

bb.ig:                                            ; preds = %.noexc753
  %i.zv = icmp sgt i32 %i.zn, 0
  br i1 %i.zv, label %bb.ih, label %bb.ii

bb.ih:                                            ; preds = %bb.ig
  %i.zw = load i32, ptr %i.af, align 8, !tbaa !56
  %spec.select.i.i.i749 = call i32 @llvm.smin.i32(i32 %i.zn, i32 %i.zw)
  %.1.i.i.i750 = call i32 @llvm.smin.i32(i32 %spec.select.i.i.i749, i32 %spec.store.select.i.i744)
  %i.zx = load ptr, ptr %10, align 8, !tbaa !55
  %i.zy = sext i32 %.1.i.i.i750 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.zu, ptr align 1 %i.zx, i64 %i.zy, i1 false)
  br label %bb.ii

bb.ii:                                            ; preds = %bb.ih, %bb.ig
  %i.zz = load i8, ptr %i.ag, align 4, !tbaa !57
  %.not.i.i.i.i746 = icmp eq i8 %i.zz, 0
  br i1 %.not.i.i.i.i746, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i747, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.aaa = load ptr, ptr %10, align 8, !tbaa !55
  invoke void @uprv_free_78(ptr noundef %i.aaa)
          to label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i747 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.ik:                                            ; preds = %.noexc753
  store i8 0, ptr %i.ai, align 4, !tbaa !60
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit755

_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i747: ; preds = %bb.ij, %bb.ii
  store ptr %i.zu, ptr %10, align 8, !tbaa !55
  store i32 %spec.store.select.i.i744, ptr %i.af, align 8, !tbaa !56
  store i8 1, ptr %i.ag, align 4, !tbaa !57
  %.pre.i748 = load i32, ptr %i.ah, align 8, !tbaa !59
  br label %bb.il

bb.il:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i747, %._crit_edge.i751
  %i.aab = phi ptr [ %i.zu, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i747 ], [ %.pre3.i752, %._crit_edge.i751 ]
  %i.aac = phi i32 [ %.pre.i748, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i747 ], [ %i.zn, %._crit_edge.i751 ] ; 2 uses
  %i.aad = add nsw i32 %i.aac, 1
  store i32 %i.aad, ptr %i.ah, align 8, !tbaa !59
  %i.aae = sext i32 %i.aac to i64
  %i.aaf = getelementptr inbounds i8, ptr %i.aab, i64 %i.aae
  store i8 37, ptr %i.aaf, align 1, !tbaa !30
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit755

_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit755: ; preds = %bb.il, %bb.ik, %bb.ie
  %i.aag = add nsw i32 %.32941003, -33            ; 2 uses
  %i.aah = icmp sgt i32 %.32941003, 65
  br i1 %i.aah, label %.lr.ph1005, label %._crit_edge1006, !llvm.loop !41

._crit_edge1006:                                  ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit755, %bb.id
  %.3294.lcssa = phi i32 [ %i.zl, %bb.id ], [ %i.aag, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit755 ] ; 2 uses
  %i.aai = icmp samesign ult i32 %i.wh, 1280
  %i.aaj = add nsw i32 %.3294.lcssa, 5
  %i.aak = sub i32 69, %.3294.lcssa
  %.0260 = select i1 %i.aai, i32 %i.aaj, i32 %i.aak
  %i.aal = load i32, ptr %i.ah, align 8, !tbaa !59 ; 5 uses
  %i.aam = load i32, ptr %i.af, align 8, !tbaa !56 ; 2 uses
  %i.aan = icmp slt i32 %i.aal, %i.aam
  br i1 %i.aan, label %._crit_edge.i765, label %bb.im

._crit_edge.i765:                                 ; preds = %._crit_edge1006
  %.pre3.i766 = load ptr, ptr %10, align 8, !tbaa !55
  br label %bb.it

bb.im:                                            ; preds = %._crit_edge1006
  %i.aao = load i8, ptr %i.ai, align 4, !tbaa !60
  %.not.i.i756.a = icmp eq i8 %i.aao, 0
  br i1 %.not.i.i756.a, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit769, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.aap = shl nsw i32 %i.aam, 1
  %i.aaq = add nsw i32 %i.aal, 2
  %spec.select.i.i757.a = call i32 @llvm.smax.i32(i32 %i.aap, i32 %i.aaq)
  %spec.store.select.i.i758.a = call i32 @llvm.smax.i32(i32 %spec.select.i.i757.a, i32 200) ; 3 uses
  %i.aar = zext nneg i32 %spec.store.select.i.i758.a to i64
  %i.aas = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.aar) #15
          to label %.noexc767 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ; 4 uses

.noexc767:                                        ; preds = %bb.in
  %.not.i.i.i759.a = icmp eq ptr %i.aas, null
  br i1 %.not.i.i.i759.a, label %bb.is, label %bb.io

bb.io:                                            ; preds = %.noexc767
  %i.aat = icmp sgt i32 %i.aal, 0
  br i1 %i.aat, label %bb.ip, label %bb.iq

bb.ip:                                            ; preds = %bb.io
  %i.aau = load i32, ptr %i.af, align 8, !tbaa !56
  %spec.select.i.i.i763 = call i32 @llvm.smin.i32(i32 %i.aal, i32 %i.aau)
  %.1.i.i.i764.a = call i32 @llvm.smin.i32(i32 %spec.select.i.i.i763, i32 %spec.store.select.i.i758.a)
  %i.aav = load ptr, ptr %10, align 8, !tbaa !55
  %i.aaw = sext i32 %.1.i.i.i764.a to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aas, ptr align 1 %i.aav, i64 %i.aaw, i1 false)
  br label %bb.iq

bb.iq:                                            ; preds = %bb.ip, %bb.io
  %i.aax = load i8, ptr %i.ag, align 4, !tbaa !57
  %.not.i.i.i.i760.a = icmp eq i8 %i.aax, 0
  br i1 %.not.i.i.i.i760.a, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i761.a, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.aay = load ptr, ptr %10, align 8, !tbaa !55
  invoke void @uprv_free_78(ptr noundef %i.aay)
          to label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i761.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.is:                                            ; preds = %.noexc767
  store i8 0, ptr %i.ai, align 4, !tbaa !60
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit769

_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i761.a: ; preds = %bb.ir, %bb.iq
  store ptr %i.aas, ptr %10, align 8, !tbaa !55
  store i32 %spec.store.select.i.i758.a, ptr %i.af, align 8, !tbaa !56
  store i8 1, ptr %i.ag, align 4, !tbaa !57
  %.pre.i762.a = load i32, ptr %i.ah, align 8, !tbaa !59
  br label %bb.it

bb.it:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i761.a, %._crit_edge.i765
  %i.aaz = phi ptr [ %i.aas, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i761.a ], [ %.pre3.i766, %._crit_edge.i765 ]
  %i.aba = phi i32 [ %.pre.i762.a, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i761.a ], [ %i.aal, %._crit_edge.i765 ] ; 2 uses
  %i.abb = trunc i32 %.0260 to i8
  %i.abc = add nsw i32 %i.aba, 1
  store i32 %i.abc, ptr %i.ah, align 8, !tbaa !59
  %i.abd = sext i32 %i.aba to i64
  %i.abe = getelementptr inbounds i8, ptr %i.aaz, i64 %i.abd
  store i8 %i.abb, ptr %i.abe, align 1, !tbaa !30
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit769

_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit769: ; preds = %bb.it, %bb.is, %bb.im, %bb.ic
  %i.abf = icmp samesign ugt i32 %i.wh, 1280
  %i.abg = add nuw nsw i32 %i.wh, 16384
  %spec.select438 = select i1 %i.abf, i32 %i.abg, i32 %i.wh ; 3 uses
  %i.abh = lshr i32 %spec.select438, 8
  %i.abi = trunc i32 %i.abh to i8
  %i.abj = trunc i32 %spec.select438 to i8
  %i.abk = and i32 %spec.select438, 63
  %i.abl = icmp eq i32 %i.abk, 0                  ; 2 uses
  %i.abm = select i1 %i.abl, i32 1, i32 2         ; 2 uses
  %i.abn = load i32, ptr %i.ah, align 8, !tbaa !59 ; 5 uses
  %i.abo = add nsw i32 %i.abn, %i.abm
  %i.abp = load i32, ptr %i.af, align 8, !tbaa !56 ; 2 uses
  %.not.i770 = icmp sgt i32 %i.abo, %i.abp
  br i1 %.not.i770, label %bb.iu, label %._crit_edge.i771

._crit_edge.i771:                                 ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit769
  %.pre12.i772 = load ptr, ptr %10, align 8, !tbaa !55
  br label %bb.jb

bb.iu:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit769
  %i.abq = load i8, ptr %i.ai, align 4, !tbaa !60
  %.not.i.i773 = icmp eq i8 %i.abq, 0
  br i1 %.not.i.i773, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14appendWeight16Ej.exit741, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.abr = shl nsw i32 %i.abp, 1
  %i.abs = shl nuw nsw i32 %i.abm, 1
  %i.abt = add nsw i32 %i.abn, %i.abs
  %spec.select.i.i774 = call i32 @llvm.smax.i32(i32 %i.abr, i32 %i.abt)
  %spec.store.select.i.i775 = call i32 @llvm.smax.i32(i32 %spec.select.i.i774, i32 200) ; 3 uses
  %i.abu = zext nneg i32 %spec.store.select.i.i775 to i64
  %i.abv = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.abu) #15
          to label %.noexc782 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ; 4 uses

.noexc782:                                        ; preds = %bb.iv
  %.not.i.i.i776 = icmp eq ptr %i.abv, null
  br i1 %.not.i.i.i776, label %bb.ja, label %bb.iw

bb.iw:                                            ; preds = %.noexc782
  %i.abw = icmp sgt i32 %i.abn, 0
  br i1 %i.abw, label %bb.ix, label %bb.iy

bb.ix:                                            ; preds = %bb.iw
  %i.abx = load i32, ptr %i.af, align 8, !tbaa !56
  %spec.select.i.i.i780 = call i32 @llvm.smin.i32(i32 %i.abn, i32 %i.abx)
  %.1.i.i.i781 = call i32 @llvm.smin.i32(i32 %spec.select.i.i.i780, i32 %spec.store.select.i.i775)
  %i.aby = load ptr, ptr %10, align 8, !tbaa !55
  %i.abz = sext i32 %.1.i.i.i781 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.abv, ptr align 1 %i.aby, i64 %i.abz, i1 false)
  br label %bb.iy

bb.iy:                                            ; preds = %bb.ix, %bb.iw
  %i.aca = load i8, ptr %i.ag, align 4, !tbaa !57
  %.not.i.i.i.i777 = icmp eq i8 %i.aca, 0
  br i1 %.not.i.i.i.i777, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i778, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.acb = load ptr, ptr %10, align 8, !tbaa !55
  invoke void @uprv_free_78(ptr noundef %i.acb)
          to label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i778 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.ja:                                            ; preds = %.noexc782
  store i8 0, ptr %i.ai, align 4, !tbaa !60
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14appendWeight16Ej.exit741

_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i778: ; preds = %bb.iz, %bb.iy
  store ptr %i.abv, ptr %10, align 8, !tbaa !55
  store i32 %spec.store.select.i.i775, ptr %i.af, align 8, !tbaa !56
  store i8 1, ptr %i.ag, align 4, !tbaa !57
  %.pre.i779 = load i32, ptr %i.ah, align 8, !tbaa !59
  br label %bb.jb

bb.jb:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i778, %._crit_edge.i771
  %i.acc = phi ptr [ %i.abv, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i778 ], [ %.pre12.i772, %._crit_edge.i771 ]
  %i.acd = phi i32 [ %.pre.i779, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i778 ], [ %i.abn, %._crit_edge.i771 ] ; 2 uses
  %i.ace = add nsw i32 %i.acd, 1
  store i32 %i.ace, ptr %i.ah, align 8, !tbaa !59
  %i.acf = sext i32 %i.acd to i64
  %i.acg = getelementptr inbounds i8, ptr %i.acc, i64 %i.acf
  store i8 %i.abi, ptr %i.acg, align 1, !tbaa !30
  br i1 %i.abl, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14appendWeight16Ej.exit741, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.ach = load i32, ptr %i.ah, align 8, !tbaa !59 ; 2 uses
  %i.aci = add nsw i32 %i.ach, 1
  store i32 %i.aci, ptr %i.ah, align 8, !tbaa !59
  %i.acj = sext i32 %i.ach to i64
  %i.ack = load ptr, ptr %10, align 8, !tbaa !55
  %i.acl = getelementptr inbounds i8, ptr %i.ack, i64 %i.acj
  store i8 %i.abj, ptr %i.acl, align 1, !tbaa !30
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14appendWeight16Ej.exit741

bb.jd:                                            ; preds = %bb.ib
  %i.acm = icmp samesign ult i32 %i.wh, 257
  br i1 %i.acm, label %bb.jh, label %bb.je

bb.je:                                            ; preds = %bb.jd
  %i.acn = icmp ugt i32 %i.jw, 65535
  br i1 %i.acn, label %bb.jf, label %bb.jg

bb.jf:                                            ; preds = %bb.je
  %i.aco = xor i32 %i.wh, 49152                   ; 3 uses
  %i.acp = icmp samesign ult i32 %i.aco, 50432
  %i.acq = add nsw i32 %i.aco, -16384
  %spec.select439 = select i1 %i.acp, i32 %i.acq, i32 %i.aco
  br label %bb.jh

bb.jg:                                            ; preds = %bb.je
  %i.acr = add nuw nsw i32 %i.wh, 16384
  br label %bb.jh

bb.jh:                                            ; preds = %bb.jf, %bb.jg, %bb.jd
  %.2264 = phi i32 [ %i.wh, %bb.jd ], [ %i.acr, %bb.jg ], [ %spec.select439, %bb.jf ] ; 4 uses
  %.not402 = icmp eq i32 %.0291.ph, 0
  br i1 %.not402, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit812, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  %i.acs = add nsw i32 %.0291.ph, -1              ; 2 uses
  %i.act = icmp sgt i32 %.0291.ph, 33
  br i1 %i.act, label %.lr.ph1000, label %._crit_edge1001

.lr.ph1000:                                       ; preds = %bb.ji, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit798
  %.5296998 = phi i32 [ %i.adn, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit798 ], [ %i.acs, %bb.ji ] ; 2 uses
  %i.acu = load i32, ptr %i.ah, align 8, !tbaa !59 ; 5 uses
  %i.acv = load i32, ptr %i.af, align 8, !tbaa !56 ; 2 uses
  %i.acw = icmp slt i32 %i.acu, %i.acv
  br i1 %i.acw, label %._crit_edge.i794, label %bb.jj

._crit_edge.i794:                                 ; preds = %.lr.ph1000
  %.pre3.i795 = load ptr, ptr %10, align 8, !tbaa !55
  br label %bb.jq

bb.jj:                                            ; preds = %.lr.ph1000
  %i.acx = load i8, ptr %i.ai, align 4, !tbaa !60
  %.not.i.i785 = icmp eq i8 %i.acx, 0
  br i1 %.not.i.i785, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit798, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.acy = shl nsw i32 %i.acv, 1
  %i.acz = add nsw i32 %i.acu, 2
  %spec.select.i.i786 = call i32 @llvm.smax.i32(i32 %i.acy, i32 %i.acz)
  %spec.store.select.i.i787 = call i32 @llvm.smax.i32(i32 %spec.select.i.i786, i32 200) ; 3 uses
  %i.ada = zext nneg i32 %spec.store.select.i.i787 to i64
  %i.adb = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.ada) #15
          to label %.noexc796 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ; 4 uses

.noexc796:                                        ; preds = %bb.jk
  %.not.i.i.i788 = icmp eq ptr %i.adb, null
  br i1 %.not.i.i.i788, label %bb.jp, label %bb.jl

bb.jl:                                            ; preds = %.noexc796
  %i.adc = icmp sgt i32 %i.acu, 0
  br i1 %i.adc, label %bb.jm, label %bb.jn

bb.jm:                                            ; preds = %bb.jl
  %i.add = load i32, ptr %i.af, align 8, !tbaa !56
  %spec.select.i.i.i792 = call i32 @llvm.smin.i32(i32 %i.acu, i32 %i.add)
  %.1.i.i.i793 = call i32 @llvm.smin.i32(i32 %spec.select.i.i.i792, i32 %spec.store.select.i.i787)
  %i.ade = load ptr, ptr %10, align 8, !tbaa !55
  %i.adf = sext i32 %.1.i.i.i793 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.adb, ptr align 1 %i.ade, i64 %i.adf, i1 false)
  br label %bb.jn

bb.jn:                                            ; preds = %bb.jm, %bb.jl
  %i.adg = load i8, ptr %i.ag, align 4, !tbaa !57
  %.not.i.i.i.i789 = icmp eq i8 %i.adg, 0
  br i1 %.not.i.i.i.i789, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i790, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.adh = load ptr, ptr %10, align 8, !tbaa !55
  invoke void @uprv_free_78(ptr noundef %i.adh)
          to label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i790 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.jp:                                            ; preds = %.noexc796
  store i8 0, ptr %i.ai, align 4, !tbaa !60
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit798

_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i790: ; preds = %bb.jo, %bb.jn
  store ptr %i.adb, ptr %10, align 8, !tbaa !55
  store i32 %spec.store.select.i.i787, ptr %i.af, align 8, !tbaa !56
  store i8 1, ptr %i.ag, align 4, !tbaa !57
  %.pre.i791 = load i32, ptr %i.ah, align 8, !tbaa !59
  br label %bb.jq

bb.jq:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i790, %._crit_edge.i794
  %i.adi = phi ptr [ %i.adb, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i790 ], [ %.pre3.i795, %._crit_edge.i794 ]
  %i.adj = phi i32 [ %.pre.i791, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i790 ], [ %i.acu, %._crit_edge.i794 ] ; 2 uses
  %i.adk = add nsw i32 %i.adj, 1
  store i32 %i.adk, ptr %i.ah, align 8, !tbaa !59
  %i.adl = sext i32 %i.adj to i64
  %i.adm = getelementptr inbounds i8, ptr %i.adi, i64 %i.adl
  store i8 -91, ptr %i.adm, align 1, !tbaa !30
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit798

_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit798: ; preds = %bb.jq, %bb.jp, %bb.jj
  %i.adn = add nsw i32 %.5296998, -33             ; 2 uses
  %i.ado = icmp sgt i32 %.5296998, 65
  br i1 %i.ado, label %.lr.ph1000, label %._crit_edge1001, !llvm.loop !42

._crit_edge1001:                                  ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit798, %bb.ji
  %.5296.lcssa = phi i32 [ %i.acs, %bb.ji ], [ %i.adn, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit798 ] ; 2 uses
  %i.adp = icmp ult i32 %.2264, 34048
  %i.adq = add nsw i32 %.5296.lcssa, 133
  %i.adr = sub i32 197, %.5296.lcssa
  %.0259 = select i1 %i.adp, i32 %i.adq, i32 %i.adr
  %i.ads = load i32, ptr %i.ah, align 8, !tbaa !59 ; 5 uses
  %i.adt = load i32, ptr %i.af, align 8, !tbaa !56 ; 2 uses
  %i.adu = icmp slt i32 %i.ads, %i.adt
  br i1 %i.adu, label %._crit_edge.i808, label %bb.jr

._crit_edge.i808:                                 ; preds = %._crit_edge1001
  %.pre3.i809 = load ptr, ptr %10, align 8, !tbaa !55
  br label %bb.jy

bb.jr:                                            ; preds = %._crit_edge1001
  %i.adv = load i8, ptr %i.ai, align 4, !tbaa !60
  %.not.i.i799 = icmp eq i8 %i.adv, 0
  br i1 %.not.i.i799, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit812, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.adw = shl nsw i32 %i.adt, 1
  %i.adx = add nsw i32 %i.ads, 2
  %spec.select.i.i800 = call i32 @llvm.smax.i32(i32 %i.adw, i32 %i.adx)
  %spec.store.select.i.i801 = call i32 @llvm.smax.i32(i32 %spec.select.i.i800, i32 200) ; 3 uses
  %i.ady = zext nneg i32 %spec.store.select.i.i801 to i64
  %i.adz = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.ady) #15
          to label %.noexc810 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ; 4 uses

.noexc810:                                        ; preds = %bb.js
  %.not.i.i.i802 = icmp eq ptr %i.adz, null
  br i1 %.not.i.i.i802, label %bb.jx, label %bb.jt

bb.jt:                                            ; preds = %.noexc810
  %i.aea = icmp sgt i32 %i.ads, 0
  br i1 %i.aea, label %bb.ju, label %bb.jv

bb.ju:                                            ; preds = %bb.jt
  %i.aeb = load i32, ptr %i.af, align 8, !tbaa !56
  %spec.select.i.i.i806 = call i32 @llvm.smin.i32(i32 %i.ads, i32 %i.aeb)
  %.1.i.i.i807 = call i32 @llvm.smin.i32(i32 %spec.select.i.i.i806, i32 %spec.store.select.i.i801)
  %i.aec = load ptr, ptr %10, align 8, !tbaa !55
  %i.aed = sext i32 %.1.i.i.i807 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.adz, ptr align 1 %i.aec, i64 %i.aed, i1 false)
  br label %bb.jv

bb.jv:                                            ; preds = %bb.ju, %bb.jt
  %i.aee = load i8, ptr %i.ag, align 4, !tbaa !57
  %.not.i.i.i.i803 = icmp eq i8 %i.aee, 0
  br i1 %.not.i.i.i.i803, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i804, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  %i.aef = load ptr, ptr %10, align 8, !tbaa !55
  invoke void @uprv_free_78(ptr noundef %i.aef)
          to label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i804 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.jx:                                            ; preds = %.noexc810
  store i8 0, ptr %i.ai, align 4, !tbaa !60
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit812

_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i804: ; preds = %bb.jw, %bb.jv
  store ptr %i.adz, ptr %10, align 8, !tbaa !55
  store i32 %spec.store.select.i.i801, ptr %i.af, align 8, !tbaa !56
  store i8 1, ptr %i.ag, align 4, !tbaa !57
  %.pre.i805 = load i32, ptr %i.ah, align 8, !tbaa !59
  br label %bb.jy

bb.jy:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i804, %._crit_edge.i808
  %i.aeg = phi ptr [ %i.adz, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i804 ], [ %.pre3.i809, %._crit_edge.i808 ]
  %i.aeh = phi i32 [ %.pre.i805, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i804 ], [ %i.ads, %._crit_edge.i808 ] ; 2 uses
  %i.aei = trunc i32 %.0259 to i8
  %i.aej = add nsw i32 %i.aeh, 1
  store i32 %i.aej, ptr %i.ah, align 8, !tbaa !59
  %i.aek = sext i32 %i.aeh to i64
  %i.ael = getelementptr inbounds i8, ptr %i.aeg, i64 %i.aek
  store i8 %i.aei, ptr %i.ael, align 1, !tbaa !30
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit812

_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit812: ; preds = %bb.jy, %bb.jx, %bb.jr, %bb.jh
  %i.aem = lshr i32 %.2264, 8
  %i.aen = trunc i32 %i.aem to i8
  %i.aeo = trunc i32 %.2264 to i8
  %i.aep = and i32 %.2264, 255
  %i.aeq = icmp eq i32 %i.aep, 0                  ; 2 uses
  %i.aer = select i1 %i.aeq, i32 1, i32 2         ; 2 uses
  %i.aes = load i32, ptr %i.ah, align 8, !tbaa !59 ; 5 uses
  %i.aet = add nsw i32 %i.aes, %i.aer
  %i.aeu = load i32, ptr %i.af, align 8, !tbaa !56 ; 2 uses
  %.not.i813 = icmp sgt i32 %i.aet, %i.aeu
  br i1 %.not.i813, label %bb.jz, label %._crit_edge.i814

._crit_edge.i814:                                 ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit812
  %.pre12.i815 = load ptr, ptr %10, align 8, !tbaa !55
  br label %bb.kg

bb.jz:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit812
  %i.aev = load i8, ptr %i.ai, align 4, !tbaa !60
  %.not.i.i816 = icmp eq i8 %i.aev, 0
  br i1 %.not.i.i816, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14appendWeight16Ej.exit741, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %i.aew = shl nsw i32 %i.aeu, 1
  %i.aex = shl nuw nsw i32 %i.aer, 1
  %i.aey = add nsw i32 %i.aes, %i.aex
  %spec.select.i.i817 = call i32 @llvm.smax.i32(i32 %i.aew, i32 %i.aey)
  %spec.store.select.i.i818 = call i32 @llvm.smax.i32(i32 %spec.select.i.i817, i32 200) ; 3 uses
  %i.aez = zext nneg i32 %spec.store.select.i.i818 to i64
  %i.afa = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.aez) #15
          to label %.noexc825 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ; 4 uses

.noexc825:                                        ; preds = %bb.ka
  %.not.i.i.i819 = icmp eq ptr %i.afa, null
  br i1 %.not.i.i.i819, label %bb.kf, label %bb.kb

bb.kb:                                            ; preds = %.noexc825
  %i.afb = icmp sgt i32 %i.aes, 0
  br i1 %i.afb, label %bb.kc, label %bb.kd

bb.kc:                                            ; preds = %bb.kb
  %i.afc = load i32, ptr %i.af, align 8, !tbaa !56
  %spec.select.i.i.i823 = call i32 @llvm.smin.i32(i32 %i.aes, i32 %i.afc)
  %.1.i.i.i824 = call i32 @llvm.smin.i32(i32 %spec.select.i.i.i823, i32 %spec.store.select.i.i818)
  %i.afd = load ptr, ptr %10, align 8, !tbaa !55
  %i.afe = sext i32 %.1.i.i.i824 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.afa, ptr align 1 %i.afd, i64 %i.afe, i1 false)
  br label %bb.kd

bb.kd:                                            ; preds = %bb.kc, %bb.kb
  %i.aff = load i8, ptr %i.ag, align 4, !tbaa !57
  %.not.i.i.i.i820 = icmp eq i8 %i.aff, 0
  br i1 %.not.i.i.i.i820, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i821, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.afg = load ptr, ptr %10, align 8, !tbaa !55
  invoke void @uprv_free_78(ptr noundef %i.afg)
          to label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i821 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.kf:                                            ; preds = %.noexc825
  store i8 0, ptr %i.ai, align 4, !tbaa !60
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14appendWeight16Ej.exit741

_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i821: ; preds = %bb.ke, %bb.kd
  store ptr %i.afa, ptr %10, align 8, !tbaa !55
  store i32 %spec.store.select.i.i818, ptr %i.af, align 8, !tbaa !56
  store i8 1, ptr %i.ag, align 4, !tbaa !57
  %.pre.i822 = load i32, ptr %i.ah, align 8, !tbaa !59
  br label %bb.kg

bb.kg:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i821, %._crit_edge.i814
  %i.afh = phi ptr [ %i.afa, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i821 ], [ %.pre12.i815, %._crit_edge.i814 ]
  %i.afi = phi i32 [ %.pre.i822, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i821 ], [ %i.aes, %._crit_edge.i814 ] ; 2 uses
  %i.afj = add nsw i32 %i.afi, 1
  store i32 %i.afj, ptr %i.ah, align 8, !tbaa !59
  %i.afk = sext i32 %i.afi to i64
  %i.afl = getelementptr inbounds i8, ptr %i.afh, i64 %i.afk
  store i8 %i.aen, ptr %i.afl, align 1, !tbaa !30
  br i1 %i.aeq, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14appendWeight16Ej.exit741, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  %i.afm = load i32, ptr %i.ah, align 8, !tbaa !59 ; 2 uses
  %i.afn = add nsw i32 %i.afm, 1
  store i32 %i.afn, ptr %i.ah, align 8, !tbaa !59
  %i.afo = sext i32 %i.afm to i64
  %i.afp = load ptr, ptr %10, align 8, !tbaa !55
  %i.afq = getelementptr inbounds i8, ptr %i.afp, i64 %i.afo
  store i8 %i.aeo, ptr %i.afq, align 1, !tbaa !30
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14appendWeight16Ej.exit741

_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14appendWeight16Ej.exit741: ; preds = %bb.kh, %bb.kg, %bb.kf, %bb.jz, %bb.jc, %bb.jb, %bb.ja, %bb.iu, %bb.ia, %bb.hz, %bb.hy, %bb.hs, %bb.gy, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit698.a
  %.8299 = phi i32 [ %.0291.ph, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit698.a ], [ %i.wj, %bb.gy ], [ 0, %bb.jc ], [ 0, %bb.ia ], [ 0, %bb.hs ], [ 0, %bb.hy ], [ 0, %bb.hz ], [ 0, %bb.iu ], [ 0, %bb.ja ], [ 0, %bb.jb ], [ 0, %bb.jz ], [ 0, %bb.kf ], [ 0, %bb.kg ], [ 0, %bb.kh ]
  br i1 %.not374, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit841, label %bb.ki

bb.ki:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14appendWeight16Ej.exit741
  %i.afr = and i32 %i.jw, 65535                   ; 2 uses
  %i.afs = and i32 %i.jw, 192
  %i.aft = icmp eq i32 %i.afs, 0
  %i.afu = icmp samesign ugt i32 %i.afr, 256
  %or.cond9 = select i1 %i.aft, i1 %i.afu, i1 false
  br i1 %or.cond9, label %bb.kj, label %bb.kk

bb.kj:                                            ; preds = %bb.ki
  %i.afv = add nsw i32 %.3289, 1
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit841

bb.kk:                                            ; preds = %bb.ki
  %i.afw = icmp eq i32 %i.afr, 256                ; 3 uses
  %brmerge.not1217 = and i1 %i.o, %i.afw
  %.val446 = load i32, ptr %i.am, align 8
  %.not926 = icmp eq i32 %.val446, 0
  %or.cond1210 = select i1 %brmerge.not1217, i1 %.not926, i1 false
  br i1 %or.cond1210, label %bb.kl, label %bb.ks

bb.kl:                                            ; preds = %bb.kk
  %i.afx = load i32, ptr %i.ak, align 8, !tbaa !56
  %i.afy = icmp sgt i32 %i.afx, 0
  br i1 %i.afy, label %._crit_edge.i837, label %bb.km

._crit_edge.i837:                                 ; preds = %bb.kl
  %.pre3.i838 = load ptr, ptr %11, align 8, !tbaa !55
  br label %bb.kr

bb.km:                                            ; preds = %bb.kl
  %i.afz = load i8, ptr %i.an, align 4, !tbaa !60
  %.not.i.i828 = icmp eq i8 %i.afz, 0
  br i1 %.not.i.i828, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit841, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.aga = invoke noalias dereferenceable_or_null(200) ptr @uprv_malloc_78(i64 noundef 200) #15
          to label %.noexc839 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ; 3 uses

.noexc839:                                        ; preds = %bb.kn
  %.not.i.i.i831 = icmp eq ptr %i.aga, null
  br i1 %.not.i.i.i831, label %bb.kq, label %bb.ko

bb.ko:                                            ; preds = %.noexc839
  %i.agb = load i8, ptr %i.al, align 4, !tbaa !57
  %.not.i.i.i.i832 = icmp eq i8 %i.agb, 0
  br i1 %.not.i.i.i.i832, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i833, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  %i.agc = load ptr, ptr %11, align 8, !tbaa !55
  invoke void @uprv_free_78(ptr noundef %i.agc)
          to label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i833 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.kq:                                            ; preds = %.noexc839
  store i8 0, ptr %i.an, align 4, !tbaa !60
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit841

_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i833: ; preds = %bb.kp, %bb.ko
  store ptr %i.aga, ptr %11, align 8, !tbaa !55
  store i32 200, ptr %i.ak, align 8, !tbaa !56
  store i8 1, ptr %i.al, align 4, !tbaa !57
  %.pre.i834 = load i32, ptr %i.am, align 8, !tbaa !59
  br label %bb.kr

bb.kr:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i833, %._crit_edge.i837
  %i.agd = phi ptr [ %i.aga, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i833 ], [ %.pre3.i838, %._crit_edge.i837 ]
  %i.age = phi i32 [ %.pre.i834, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i833 ], [ 0, %._crit_edge.i837 ] ; 2 uses
  %i.agf = add nsw i32 %i.age, 1
  store i32 %i.agf, ptr %i.am, align 8, !tbaa !59
  %i.agg = sext i32 %i.age to i64
  %i.agh = getelementptr inbounds i8, ptr %i.agd, i64 %i.agg
  store i8 1, ptr %i.agh, align 1, !tbaa !30
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit841

bb.ks:                                            ; preds = %bb.kk
  %.not409 = icmp eq i32 %.3289, 0
  br i1 %.not409, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit869, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %i.agi = add nsw i32 %.3289, -1                 ; 2 uses
  %i.agj = icmp sgt i32 %.3289, 113
  br i1 %i.agj, label %.lr.ph1010, label %._crit_edge1011

.lr.ph1010:                                       ; preds = %bb.kt, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit855
  %.42901008 = phi i32 [ %i.ahd, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit855 ], [ %i.agi, %bb.kt ] ; 2 uses
  %i.agk = load i32, ptr %i.am, align 8, !tbaa !59 ; 5 uses
  %i.agl = load i32, ptr %i.ak, align 8, !tbaa !56 ; 2 uses
  %i.agm = icmp slt i32 %i.agk, %i.agl
  br i1 %i.agm, label %._crit_edge.i851, label %bb.ku

._crit_edge.i851:                                 ; preds = %.lr.ph1010
  %.pre3.i852 = load ptr, ptr %11, align 8, !tbaa !55
  br label %bb.lb

bb.ku:                                            ; preds = %.lr.ph1010
  %i.agn = load i8, ptr %i.an, align 4, !tbaa !60
  %.not.i.i842 = icmp eq i8 %i.agn, 0
  br i1 %.not.i.i842, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit855, label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  %i.ago = shl nsw i32 %i.agl, 1
  %i.agp = add nsw i32 %i.agk, 2
  %spec.select.i.i843 = call i32 @llvm.smax.i32(i32 %i.ago, i32 %i.agp)
  %spec.store.select.i.i844 = call i32 @llvm.smax.i32(i32 %spec.select.i.i843, i32 200) ; 3 uses
  %i.agq = zext nneg i32 %spec.store.select.i.i844 to i64
  %i.agr = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.agq) #15
          to label %.noexc853 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ; 4 uses

.noexc853:                                        ; preds = %bb.kv
  %.not.i.i.i845 = icmp eq ptr %i.agr, null
  br i1 %.not.i.i.i845, label %bb.la, label %bb.kw

bb.kw:                                            ; preds = %.noexc853
  %i.ags = icmp sgt i32 %i.agk, 0
  br i1 %i.ags, label %bb.kx, label %bb.ky

bb.kx:                                            ; preds = %bb.kw
  %i.agt = load i32, ptr %i.ak, align 8, !tbaa !56
  %spec.select.i.i.i849 = call i32 @llvm.smin.i32(i32 %i.agk, i32 %i.agt)
  %.1.i.i.i850 = call i32 @llvm.smin.i32(i32 %spec.select.i.i.i849, i32 %spec.store.select.i.i844)
  %i.agu = load ptr, ptr %11, align 8, !tbaa !55
  %i.agv = sext i32 %.1.i.i.i850 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.agr, ptr align 1 %i.agu, i64 %i.agv, i1 false)
  br label %bb.ky

bb.ky:                                            ; preds = %bb.kx, %bb.kw
  %i.agw = load i8, ptr %i.al, align 4, !tbaa !57
  %.not.i.i.i.i846 = icmp eq i8 %i.agw, 0
  br i1 %.not.i.i.i.i846, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i847, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  %i.agx = load ptr, ptr %11, align 8, !tbaa !55
  invoke void @uprv_free_78(ptr noundef %i.agx)
          to label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i847 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.la:                                            ; preds = %.noexc853
  store i8 0, ptr %i.an, align 4, !tbaa !60
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit855

_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i847: ; preds = %bb.kz, %bb.ky
  store ptr %i.agr, ptr %11, align 8, !tbaa !55
  store i32 %spec.store.select.i.i844, ptr %i.ak, align 8, !tbaa !56
  store i8 1, ptr %i.al, align 4, !tbaa !57
  %.pre.i848 = load i32, ptr %i.am, align 8, !tbaa !59
  br label %bb.lb

bb.lb:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i847, %._crit_edge.i851
  %i.agy = phi ptr [ %i.agr, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i847 ], [ %.pre3.i852, %._crit_edge.i851 ]
  %i.agz = phi i32 [ %.pre.i848, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i847 ], [ %i.agk, %._crit_edge.i851 ] ; 2 uses
  %i.aha = add nsw i32 %i.agz, 1
  store i32 %i.aha, ptr %i.am, align 8, !tbaa !59
  %i.ahb = sext i32 %i.agz to i64
  %i.ahc = getelementptr inbounds i8, ptr %i.agy, i64 %i.ahb
  store i8 -116, ptr %i.ahc, align 1, !tbaa !30
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit855

_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit855: ; preds = %bb.lb, %bb.la, %bb.ku
  %i.ahd = add nsw i32 %.42901008, -113           ; 2 uses
  %i.ahe = icmp sgt i32 %.42901008, 225
  br i1 %i.ahe, label %.lr.ph1010, label %._crit_edge1011, !llvm.loop !43

._crit_edge1011:                                  ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit855, %bb.kt
  %.4290.lcssa = phi i32 [ %i.agi, %bb.kt ], [ %i.ahd, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit855 ] ; 2 uses
  %i.ahf = add nsw i32 %.4290.lcssa, 28
  %i.ahg = sub i32 252, %.4290.lcssa
  %.0257 = select i1 %i.afw, i32 %i.ahf, i32 %i.ahg
  %i.ahh = load i32, ptr %i.am, align 8, !tbaa !59 ; 5 uses
  %i.ahi = load i32, ptr %i.ak, align 8, !tbaa !56 ; 2 uses
  %i.ahj = icmp slt i32 %i.ahh, %i.ahi
  br i1 %i.ahj, label %._crit_edge.i865, label %bb.lc

._crit_edge.i865:                                 ; preds = %._crit_edge1011
  %.pre3.i866 = load ptr, ptr %11, align 8, !tbaa !55
  br label %bb.lj

bb.lc:                                            ; preds = %._crit_edge1011
  %i.ahk = load i8, ptr %i.an, align 4, !tbaa !60
  %.not.i.i856 = icmp eq i8 %i.ahk, 0
  br i1 %.not.i.i856, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit869, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  %i.ahl = shl nsw i32 %i.ahi, 1
  %i.ahm = add nsw i32 %i.ahh, 2
  %spec.select.i.i857 = call i32 @llvm.smax.i32(i32 %i.ahl, i32 %i.ahm)
  %spec.store.select.i.i858 = call i32 @llvm.smax.i32(i32 %spec.select.i.i857, i32 200) ; 3 uses
  %i.ahn = zext nneg i32 %spec.store.select.i.i858 to i64
  %i.aho = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.ahn) #15
          to label %.noexc867 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ; 4 uses

.noexc867:                                        ; preds = %bb.ld
  %.not.i.i.i859 = icmp eq ptr %i.aho, null
  br i1 %.not.i.i.i859, label %bb.li, label %bb.le

bb.le:                                            ; preds = %.noexc867
  %i.ahp = icmp sgt i32 %i.ahh, 0
  br i1 %i.ahp, label %bb.lf, label %bb.lg

bb.lf:                                            ; preds = %bb.le
  %i.ahq = load i32, ptr %i.ak, align 8, !tbaa !56
  %spec.select.i.i.i863 = call i32 @llvm.smin.i32(i32 %i.ahh, i32 %i.ahq)
  %.1.i.i.i864 = call i32 @llvm.smin.i32(i32 %spec.select.i.i.i863, i32 %spec.store.select.i.i858)
  %i.ahr = load ptr, ptr %11, align 8, !tbaa !55
  %i.ahs = sext i32 %.1.i.i.i864 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aho, ptr align 1 %i.ahr, i64 %i.ahs, i1 false)
  br label %bb.lg

bb.lg:                                            ; preds = %bb.lf, %bb.le
  %i.aht = load i8, ptr %i.al, align 4, !tbaa !57
  %.not.i.i.i.i860 = icmp eq i8 %i.aht, 0
  br i1 %.not.i.i.i.i860, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i861, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.ahu = load ptr, ptr %11, align 8, !tbaa !55
  invoke void @uprv_free_78(ptr noundef %i.ahu)
          to label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i861 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.li:                                            ; preds = %.noexc867
  store i8 0, ptr %i.an, align 4, !tbaa !60
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit869

_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i861: ; preds = %bb.lh, %bb.lg
  store ptr %i.aho, ptr %11, align 8, !tbaa !55
  store i32 %spec.store.select.i.i858, ptr %i.ak, align 8, !tbaa !56
  store i8 1, ptr %i.al, align 4, !tbaa !57
  %.pre.i862 = load i32, ptr %i.am, align 8, !tbaa !59
  br label %bb.lj

bb.lj:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i861, %._crit_edge.i865
  %i.ahv = phi ptr [ %i.aho, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i861 ], [ %.pre3.i866, %._crit_edge.i865 ]
  %i.ahw = phi i32 [ %.pre.i862, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i861 ], [ %i.ahh, %._crit_edge.i865 ] ; 2 uses
  %i.ahx = trunc i32 %.0257 to i8
  %i.ahy = add nsw i32 %i.ahw, 1
  store i32 %i.ahy, ptr %i.am, align 8, !tbaa !59
  %i.ahz = sext i32 %i.ahw to i64
  %i.aia = getelementptr inbounds i8, ptr %i.ahv, i64 %i.ahz
  store i8 %i.ahx, ptr %i.aia, align 1, !tbaa !30
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit869

_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit869: ; preds = %bb.lj, %bb.li, %bb.lc, %bb.ks
  %i.aib = load i32, ptr %i.am, align 8, !tbaa !59 ; 5 uses
  %i.aic = load i32, ptr %i.ak, align 8, !tbaa !56 ; 2 uses
  %i.aid = icmp slt i32 %i.aib, %i.aic
  br i1 %i.aid, label %._crit_edge.i879, label %bb.lk

._crit_edge.i879:                                 ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit869
  %.pre3.i880 = load ptr, ptr %11, align 8, !tbaa !55
  br label %bb.lr

bb.lk:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit869
  %i.aie = load i8, ptr %i.an, align 4, !tbaa !60
  %.not.i.i870 = icmp eq i8 %i.aie, 0
  br i1 %.not.i.i870, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit841, label %bb.ll

bb.ll:                                            ; preds = %bb.lk
  %i.aif = shl nsw i32 %i.aic, 1
  %i.aig = add nsw i32 %i.aib, 2
  %spec.select.i.i871 = call i32 @llvm.smax.i32(i32 %i.aif, i32 %i.aig)
  %spec.store.select.i.i872 = call i32 @llvm.smax.i32(i32 %spec.select.i.i871, i32 200) ; 3 uses
  %i.aih = zext nneg i32 %spec.store.select.i.i872 to i64
  %i.aii = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.aih) #15
          to label %.noexc881 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ; 4 uses

.noexc881:                                        ; preds = %bb.ll
  %.not.i.i.i873 = icmp eq ptr %i.aii, null
  br i1 %.not.i.i.i873, label %bb.lq, label %bb.lm

bb.lm:                                            ; preds = %.noexc881
  %i.aij = icmp sgt i32 %i.aib, 0
  br i1 %i.aij, label %bb.ln, label %bb.lo

bb.ln:                                            ; preds = %bb.lm
  %i.aik = load i32, ptr %i.ak, align 8, !tbaa !56
  %spec.select.i.i.i877 = call i32 @llvm.smin.i32(i32 %i.aib, i32 %i.aik)
  %.1.i.i.i878 = call i32 @llvm.smin.i32(i32 %spec.select.i.i.i877, i32 %spec.store.select.i.i872)
  %i.ail = load ptr, ptr %11, align 8, !tbaa !55
  %i.aim = sext i32 %.1.i.i.i878 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aii, ptr align 1 %i.ail, i64 %i.aim, i1 false)
  br label %bb.lo

bb.lo:                                            ; preds = %bb.ln, %bb.lm
  %i.ain = load i8, ptr %i.al, align 4, !tbaa !57
  %.not.i.i.i.i874 = icmp eq i8 %i.ain, 0
  br i1 %.not.i.i.i.i874, label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i875, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  %i.aio = load ptr, ptr %11, align 8, !tbaa !55
  invoke void @uprv_free_78(ptr noundef %i.aio)
          to label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i875 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.lq:                                            ; preds = %.noexc881
  store i8 0, ptr %i.an, align 4, !tbaa !60
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit841

_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i875: ; preds = %bb.lp, %bb.lo
  store ptr %i.aii, ptr %11, align 8, !tbaa !55
  store i32 %spec.store.select.i.i872, ptr %i.ak, align 8, !tbaa !56
  store i8 1, ptr %i.al, align 4, !tbaa !57
  %.pre.i876 = load i32, ptr %i.am, align 8, !tbaa !59
  br label %bb.lr

bb.lr:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i875, %._crit_edge.i879
  %i.aip = phi ptr [ %i.aii, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i875 ], [ %.pre3.i880, %._crit_edge.i879 ]
  %i.aiq = phi i32 [ %.pre.i876, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14ensureCapacityEi.exit.i875 ], [ %i.aib, %._crit_edge.i879 ] ; 2 uses
  %i.air = trunc i64 %.0275 to i8
  %i.ais = lshr i8 %i.air, 6
  %i.ait = or disjoint i8 %i.ais, -4
  %i.aiu = select i1 %i.afw, i8 1, i8 %i.ait
  %i.aiv = add nsw i32 %i.aiq, 1
  store i32 %i.aiv, ptr %i.am, align 8, !tbaa !59
  %i.aiw = sext i32 %i.aiq to i64
  %i.aix = getelementptr inbounds i8, ptr %i.aip, i64 %i.aiw
  store i8 %i.aiu, ptr %i.aix, align 1, !tbaa !30
  br label %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit841

_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit841: ; preds = %bb.lr, %bb.lq, %bb.lk, %bb.kr, %bb.kq, %bb.km, %bb.kj, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14appendWeight16Ej.exit741
  %.7 = phi i32 [ %.3289, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14appendWeight16Ej.exit741 ], [ %i.afv, %bb.kj ], [ %.3289, %bb.kr ], [ %.3289, %bb.km ], [ %.3289, %bb.kq ], [ 0, %bb.lk ], [ 0, %bb.lq ], [ 0, %bb.lr ]
  %.mask = and i32 %i.jw, -16777216
  %i.aiy = icmp eq i32 %.mask, 16777216
  br i1 %i.aiy, label %bb.ls, label %.critedge.outer

bb.ls:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel10appendByteEj.exit841
  %i.aiz = load i32, ptr %7, align 4, !tbaa !47
  %i.aja = icmp slt i32 %i.aiz, 1
  br i1 %i.aja, label %bb.lt, label %.critedge.thread

bb.lt:                                            ; preds = %bb.ls
  br i1 %.not388, label %_ZNK6icu_7812_GLOBAL__N_112SortKeyLevel8appendToERNS_8ByteSinkE.exit, label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  %i.ajb = load ptr, ptr %5, align 8, !tbaa !17
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.ajb, i64 16
  %i.ajd = load ptr, ptr %i.ajc, align 8
  %i.aje = invoke noundef signext i8 %i.ajd(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 2)
          to label %bb.lv unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.lv:                                            ; preds = %bb.lu
  %.not415 = icmp eq i8 %i.aje, 0
  br i1 %.not415, label %.critedge.thread, label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  %.val447 = load i8, ptr %i.ad, align 4, !tbaa !60
  invoke void @_ZN6icu_7815SortKeyByteSink6AppendEj(ptr noundef nonnull align 8 dereferenceable(28) %3, i32 noundef 1)
          to label %bb.lx unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.lx:                                            ; preds = %bb.lw
  %i.ajf = and i8 %.val447, 1
  %.val455 = load ptr, ptr %9, align 8, !tbaa !55
  %.val456 = load i32, ptr %i.ac, align 8, !tbaa !59
  %i.ajg = add nsw i32 %.val456, -1
  %i.ajh = load ptr, ptr %3, align 8, !tbaa !17
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajh, i64 16
  %i.ajj = load ptr, ptr %i.aji, align 8
  invoke void %i.ajj(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %.val455, i32 noundef %i.ajg)
          to label %_ZNK6icu_7812_GLOBAL__N_112SortKeyLevel8appendToERNS_8ByteSinkE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !inline_history !44

_ZNK6icu_7812_GLOBAL__N_112SortKeyLevel8appendToERNS_8ByteSinkE.exit: ; preds = %bb.lx, %bb.lt
  %.0255 = phi i8 [ 1, %bb.lt ], [ %i.ajf, %bb.lx ] ; 2 uses
  br i1 %.not395, label %._crit_edge1017.thread, label %bb.ly

bb.ly:                                            ; preds = %_ZNK6icu_7812_GLOBAL__N_112SortKeyLevel8appendToERNS_8ByteSinkE.exit
  %i.ajk = load ptr, ptr %5, align 8, !tbaa !17
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajk, i64 16
  %i.ajm = load ptr, ptr %i.ajl, align 8
  %i.ajn = invoke noundef signext i8 %i.ajm(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 3)
          to label %bb.lz unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.lz:                                            ; preds = %bb.ly
  %.not417 = icmp eq i8 %i.ajn, 0
  br i1 %.not417, label %.critedge.thread, label %bb.ma

bb.ma:                                            ; preds = %bb.lz
  %.val448 = load i8, ptr %i.y, align 4, !tbaa !60
  %i.ajo = and i8 %.val448, %.0255                ; 3 uses
  invoke void @_ZN6icu_7815SortKeyByteSink6AppendEj(ptr noundef nonnull align 8 dereferenceable(28) %3, i32 noundef 1)
          to label %bb.mb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.mb:                                            ; preds = %bb.ma
  %.val444 = load i32, ptr %i.x, align 8, !tbaa !59 ; 2 uses
  %i.ajp = icmp sgt i32 %.val444, 1
  br i1 %i.ajp, label %.lr.ph1016, label %._crit_edge1017.thread

.lr.ph1016:                                       ; preds = %bb.mb
  %i.ajq = add nsw i32 %.val444, -1
  %wide.trip.count = zext nneg i32 %i.ajq to i64
  br label %bb.mc

._crit_edge1017:                                  ; preds = %_ZN6icu_7815SortKeyByteSink6AppendEj.exit889
  %.not418 = icmp eq i8 %.1, 0
  br i1 %.not418, label %._crit_edge1017.thread, label %bb.mj

bb.mc:                                            ; preds = %.lr.ph1016, %_ZN6icu_7815SortKeyByteSink6AppendEj.exit889
  %indvars.iv = phi i64 [ 0, %.lr.ph1016 ], [ %indvars.iv.next, %_ZN6icu_7815SortKeyByteSink6AppendEj.exit889 ] ; 2 uses
  %.02541013 = phi i8 [ 0, %.lr.ph1016 ], [ %.1, %_ZN6icu_7815SortKeyByteSink6AppendEj.exit889 ] ; 2 uses
  %.val457 = load ptr, ptr %8, align 8, !tbaa !55
  %i.ajr = getelementptr inbounds nuw i8, ptr %.val457, i64 %indvars.iv
  %i.ajs = load i8, ptr %i.ajr, align 1, !tbaa !30 ; 2 uses
  %i.ajt = icmp eq i8 %.02541013, 0
  br i1 %i.ajt, label %_ZN6icu_7815SortKeyByteSink6AppendEj.exit889, label %bb.md

bb.md:                                            ; preds = %bb.mc
  %i.aju = lshr i8 %i.ajs, 4
  %i.ajv = or i8 %i.aju, %.02541013
  %i.ajw = load i32, ptr %i.at, align 8, !tbaa !12 ; 2 uses
  %i.ajx = icmp sgt i32 %i.ajw, 0
  br i1 %i.ajx, label %bb.me, label %bb.mf

bb.me:                                            ; preds = %bb.md
  %i.ajy = add nsw i32 %i.ajw, -1
  store i32 %i.ajy, ptr %i.at, align 8, !tbaa !12
  br label %_ZN6icu_7815SortKeyByteSink6AppendEj.exit889

bb.mf:                                            ; preds = %bb.md
  %i.ajz = load i32, ptr %i.au, align 4, !tbaa !13 ; 3 uses
  %i.aka = load i32, ptr %i.av, align 8, !tbaa !15
  %i.akb = icmp slt i32 %i.ajz, %i.aka
  br i1 %i.akb, label %bb.mh, label %bb.mg

bb.mg:                                            ; preds = %bb.mf
  %i.akc = load ptr, ptr %3, align 8, !tbaa !17
  %i.akd = getelementptr inbounds nuw i8, ptr %i.akc, i64 48
  %i.ake = load ptr, ptr %i.akd, align 8
  %i.akf = invoke noundef signext i8 %i.ake(ptr noundef nonnull align 8 dereferenceable(28) %3, i32 noundef 1, i32 noundef %i.ajz)
          to label %.noexc888 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !inline_history !63

.noexc888:                                        ; preds = %bb.mg
  %.not.i885 = icmp eq i8 %i.akf, 0
  br i1 %.not.i885, label %bb.mi, label %._crit_edge.i886

._crit_edge.i886:                                 ; preds = %.noexc888
  %.pre.i887 = load i32, ptr %i.au, align 4, !tbaa !13
  br label %bb.mh

bb.mh:                                            ; preds = %._crit_edge.i886, %bb.mf
  %i.akg = phi i32 [ %.pre.i887, %._crit_edge.i886 ], [ %i.ajz, %bb.mf ]
  %i.akh = load ptr, ptr %i.aw, align 8, !tbaa !14
  %i.aki = sext i32 %i.akg to i64
  %i.akj = getelementptr inbounds i8, ptr %i.akh, i64 %i.aki
  store i8 %i.ajv, ptr %i.akj, align 1, !tbaa !30
  br label %bb.mi

bb.mi:                                            ; preds = %bb.mh, %.noexc888
  %i.akk = load i32, ptr %i.au, align 4, !tbaa !13
  %i.akl = add nsw i32 %i.akk, 1
  store i32 %i.akl, ptr %i.au, align 4, !tbaa !13
  br label %_ZN6icu_7815SortKeyByteSink6AppendEj.exit889

_ZN6icu_7815SortKeyByteSink6AppendEj.exit889:     ; preds = %bb.mi, %bb.me, %bb.mc
  %.1 = phi i8 [ %i.ajs, %bb.mc ], [ 0, %bb.me ], [ 0, %bb.mi ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge1017, label %bb.mc, !llvm.loop !45

bb.mj:                                            ; preds = %._crit_edge1017
  %i.akm = zext i8 %.1 to i32
  invoke void @_ZN6icu_7815SortKeyByteSink6AppendEj(ptr noundef nonnull align 8 dereferenceable(28) %3, i32 noundef %i.akm)
          to label %._crit_edge1017.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp: ; preds = %bb.i, %bb.m, %bb.aa, %bb.ad, %bb.ah, %bb.an, %bb.ar, %bb.fz, %bb.gd, %bb.fg, %bb.fk, %bb.if, %bb.ij, %bb.kv, %bb.kz, %bb.mg, %_ZN6icu_7812_GLOBAL__N_112SortKeyLevel14appendWeight32Ej.exit, %bb.jk, %bb.jo, %bb.hd, %bb.hh, %bb.ck, %bb.co, %bb.ds, %bb.dw, %bb.mj, %bb.mq, %bb.mo, %bb.mm, %bb.mk, %bb.ma, %bb.ly, %bb.lw, %bb.lu, %bb.lx, %bb.mn, %bb.mr, %_ZN6icu_7817CollationIterator23clearCEsIfNoneRemainingEv.exit, %bb.q, %bb.u, %bb.bc, %bb.bj, %bb.bn, %bb.bq, %bb.lp, %bb.ll, %bb.lh, %bb.ld, %bb.kp, %bb.kn, %bb.ke, %bb.ka, %bb.jw, %bb.js, %bb.iz, %bb.iv, %bb.ir, %bb.in, %bb.hx, %bb.ht, %bb.hp, %bb.hl, %bb.gu, %bb.gq, %bb.gl, %bb.gh, %bb.fs, %bb.fo, %bb.er, %bb.en, %bb.ei, %bb.ee, %bb.do, %bb.dk, %bb.de, %bb.da, %bb.cw, %bb.cs
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

._crit_edge1017.thread:                           ; preds = %bb.mb, %._crit_edge1017, %bb.mj, %_ZNK6icu_7812_GLOBAL__N_112SortKeyLevel8appendToERNS_8ByteSinkE.exit
  %.1256 = phi i8 [ %.0255, %_ZNK6icu_7812_GLOBAL__N_112SortKeyLevel8appendToERNS_8ByteSinkE.exit ], [ %i.ajo, %bb.mj ], [ %i.ajo, %._crit_edge1017 ], [ %i.ajo, %bb.mb ] ; 2 uses
  br i1 %.not401, label %_ZNK6icu_7812_GLOBAL__N_112SortKeyLevel8appendToERNS_8ByteSinkE.exit891, label %bb.mk

bb.mk:                                            ; preds = %._crit_edge1017.thread
  %i.akn = load ptr, ptr %5, align 8, !tbaa !17
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akn, i64 16
  %i.akp = load ptr, ptr %i.ako, align 8
  %i.akq = invoke noundef signext i8 %i.akp(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 4)
          to label %bb.ml unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.ml:                                            ; preds = %bb.mk
end_hunk_1
