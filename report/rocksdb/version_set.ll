Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/version_set?download=true
inline.NumInlined: 15221
inline.NumDeleted: 6435
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN7rocksdb18VersionStorageInfo28GenerateLevel0NonOverlappingEv:bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.not.i.i.i20 = icmp eq ptr @_ZTHN7rocksdb10perf_levelE, null
  %i.au = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN7rocksdb10perf_levelE)
  %.not.i3.i.i = icmp eq ptr @_ZTHN7rocksdb12perf_contextE, null
  %i.av = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN7rocksdb12perf_contextE) ; 2 uses
  br label %bb.g

.loopexit32:                                      ; preds = %.lr.ph.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp:                               ; preds = %bb.d, %bb.e, %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.g:                                             ; preds = %.lr.ph, %.critedge
  %i.aw = phi ptr [ %i.am, %.lr.ph ], [ %i.ci, %.critedge ]
  %.01133 = phi i64 [ 1, %.lr.ph ], [ %i.cg, %.critedge ] ; 2 uses
  %i.ax = getelementptr [88 x i8], ptr %i.aw, i64 %.01133 ; 4 uses
  %i.ay = load ptr, ptr %0, align 16, !tbaa !971
  %i.az = getelementptr i8, ptr %i.ax, i64 -16    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 56 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #42
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !9
  %i.bd = getelementptr i8, ptr %i.ax, i64 -8     ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !14
  %i.bf = add i64 %i.be, -8
  store ptr %i.bc, ptr %1, align 8
  store i64 %i.bf, ptr %i.as, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #42
  %i.bg = load ptr, ptr %i.ba, align 8, !tbaa !9
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 64 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !14
  %i.bj = add i64 %i.bi, -8
  store ptr %i.bg, ptr %2, align 8
  store i64 %i.bj, ptr %i.at, align 8
  br i1 %.not.i.i.i20, label %_ZTWN7rocksdb10perf_levelE.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_ZTHN7rocksdb10perf_levelE()
          to label %_ZTWN7rocksdb10perf_levelE.exit.i.i unwind label %bb.l

_ZTWN7rocksdb10perf_levelE.exit.i.i:              ; preds = %bb.h, %bb.g
  %i.bk = load i8, ptr %i.au, align 1, !tbaa !15
  %i.bl = icmp ugt i8 %i.bk, 1
  br i1 %i.bl, label %bb.i, label %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i

bb.i:                                             ; preds = %_ZTWN7rocksdb10perf_levelE.exit.i.i
  br i1 %.not.i3.i.i, label %_ZTWN7rocksdb12perf_contextE.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_ZTHN7rocksdb12perf_contextE()
          to label %_ZTWN7rocksdb12perf_contextE.exit.i.i unwind label %bb.l

_ZTWN7rocksdb12perf_contextE.exit.i.i:            ; preds = %bb.j, %bb.i
  %i.bm = load i64, ptr %i.av, align 8, !tbaa !17
  %i.bn = add i64 %i.bm, 1
  store i64 %i.bn, ptr %i.av, align 8, !tbaa !17
  br label %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i

_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i: ; preds = %_ZTWN7rocksdb12perf_contextE.exit.i.i, %_ZTWN7rocksdb10perf_levelE.exit.i.i
  %i.bo = load ptr, ptr %i.bb, align 8, !tbaa !19
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !22
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = invoke noundef i32 %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc23 unwind label %bb.l, !inline_history !1308 ; 2 uses

.noexc23:                                         ; preds = %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #42
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.k, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_5SliceES3_.exit

bb.k:                                             ; preds = %.noexc23
  %i.bv = load ptr, ptr %i.az, align 8, !tbaa !9
  %i.bw = load i64, ptr %i.bd, align 8, !tbaa !14
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bw
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -8
  %.0.copyload.i.i = load i64, ptr %i.by, align 1
  %i.bz = load ptr, ptr %i.ba, align 8, !tbaa !9
  %i.ca = load i64, ptr %i.bh, align 8, !tbaa !14
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ca
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -8
  %.0.copyload.i18.i = load i64, ptr %i.cc, align 1
  %i.cd = icmp ugt i64 %.0.copyload.i.i, %.0.copyload.i18.i
  br i1 %i.cd, label %.critedge, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_5SliceES3_.exit.thread30

_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_5SliceES3_.exit: ; preds = %.noexc23
  %i.ce = icmp slt i32 %i.bt, 0
  br i1 %i.ce, label %.critedge, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_5SliceES3_.exit.thread30

_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_5SliceES3_.exit.thread30: ; preds = %bb.k, %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_5SliceES3_.exit
  store i8 0, ptr %i.a, align 8, !tbaa !977
  %.pre = load ptr, ptr %3, align 8, !tbaa !1304
  br label %.loopexit

bb.l:                                             ; preds = %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i, %bb.j, %bb.h
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.critedge:                                        ; preds = %bb.k, %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_5SliceES3_.exit
  %i.cg = add nuw i64 %.01133, 1                  ; 2 uses
  %i.ch = load ptr, ptr %i.w, align 8, !tbaa !1307
  %i.ci = load ptr, ptr %3, align 8, !tbaa !1304  ; 3 uses
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = sdiv exact i64 %i.cl, 88
  %i.cn = icmp ult i64 %i.cg, %i.cm
  br i1 %i.cn, label %bb.g, label %.loopexit, !llvm.loop !1309

.loopexit:                                        ; preds = %.critedge, %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb14FdWithKeyRangeESt6vectorIS3_SaIS3_EEEEZNS2_18VersionStorageInfo28GenerateLevel0NonOverlappingEvE3$_0EvT_SB_T0_.exit", %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_5SliceES3_.exit.thread30
  %i.co = phi ptr [ %.pre, %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_5SliceES3_.exit.thread30 ], [ %i.am, %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb14FdWithKeyRangeESt6vectorIS3_SaIS3_EEEEZNS2_18VersionStorageInfo28GenerateLevel0NonOverlappingEvE3$_0EvT_SB_T0_.exit" ], [ %i.ci, %.critedge ] ; 3 uses
  %.not.i.i.i24 = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i24, label %_ZNSt6vectorIN7rocksdb14FdWithKeyRangeESaIS1_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %.loopexit
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !1310
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = ptrtoint ptr %i.co to i64
  %i.ct = sub i64 %i.cr, %i.cs
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.ct) #43
  br label %_ZNSt6vectorIN7rocksdb14FdWithKeyRangeESaIS1_EED2Ev.exit

_ZNSt6vectorIN7rocksdb14FdWithKeyRangeESaIS1_EED2Ev.exit: ; preds = %.loopexit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #42
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %_ZNSt6vectorIN7rocksdb14FdWithKeyRangeESaIS1_EED2Ev.exit
  ret void

bb.o:                                             ; preds = %.loopexit32, %.loopexit.split-lp, %bb.l
  %.pn = phi { ptr, i32 } [ %i.cf, %bb.l ], [ %lpad.loopexit, %.loopexit32 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.cu = load ptr, ptr %3, align 8, !tbaa !1304  ; 2 uses
  %.not.i.i.i26 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i26, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.o, %bb.c
  %.sink45 = phi ptr [ %i.u, %bb.c ], [ %i.cu, %bb.o ] ; 2 uses
  %.pn.pn.ph = phi { ptr, i32 } [ %i.t, %bb.c ], [ %.pn, %bb.o ]
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !1310
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = ptrtoint ptr %.sink45 to i64
  %i.cz = sub i64 %i.cx, %i.cy
  call void @_ZdlPvm(ptr noundef nonnull %.sink45, i64 noundef %i.cz) #43
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.o, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %i.t, %bb.c ], [ %.pn, %bb.o ], [ %.pn.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #42
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb18VersionStorageInfo23GenerateBottommostFilesEv(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(4288) %0) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %2 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.d = load i64, ptr %i.a, align 16, !tbaa !156 ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !158  ; 2 uses
  %i.f = load ptr, ptr %i.b, align 16, !tbaa !157 ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 4
  %i.k = sub i64 0, %i.d
  %.not = icmp eq i64 %i.j, %i.k
  br i1 %.not, label %._crit_edge31, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2712 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 3376 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 3520 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3528 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 3536 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 3512
  %.pre = load ptr, ptr %i.l, align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.w = phi ptr [ %i.f, %.preheader.lr.ph ], [ %i.ai, %._crit_edge ] ; 2 uses
  %i.x = phi ptr [ %i.e, %.preheader.lr.ph ], [ %i.aj, %._crit_edge ]
  %i.y = phi i64 [ %i.d, %.preheader.lr.ph ], [ %i.ak, %._crit_edge ]
  %i.z = phi ptr [ %.pre, %.preheader.lr.ph ], [ %i.al, %._crit_edge ] ; 2 uses
  %.01630 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.am, %._crit_edge ] ; 7 uses
  %i.aa = icmp ult i64 %.01630, 8                 ; 2 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.01630
  %i.ac = getelementptr [16 x i8], ptr %i.w, i64 %.01630
  %i.ad = getelementptr i8, ptr %i.ac, i64 -128
  %.0.i26 = select i1 %i.aa, ptr %i.ab, ptr %i.ad ; 2 uses
  %i.ae = load i64, ptr %.0.i26, align 8, !tbaa !430
  %.not32 = icmp eq i64 %i.ae, 0
  br i1 %.not32, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.af = trunc i64 %.01630 to i32                ; 6 uses
  %i.ag = icmp eq i32 %i.af, 0
  %.0121732.i = add nsw i32 %i.af, 1              ; 2 uses
  %i.ah = sext i32 %.0121732.i to i64
  br label %bb.b

._crit_edge31:                                    ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge.loopexit:                             ; preds = %_ZN7rocksdb18VersionStorageInfo29RangeMightExistAfterSortedRunERKNS_5SliceES3_ii.exit
  %.pre35 = load i64, ptr %i.a, align 16, !tbaa !156
  %.pre36 = load ptr, ptr %i.c, align 8, !tbaa !158
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.ai = phi ptr [ %i.eg, %._crit_edge.loopexit ], [ %i.w, %.preheader ] ; 2 uses
  %i.aj = phi ptr [ %.pre36, %._crit_edge.loopexit ], [ %i.x, %.preheader ] ; 2 uses
  %i.ak = phi i64 [ %.pre35, %._crit_edge.loopexit ], [ %i.y, %.preheader ] ; 2 uses
  %i.al = phi ptr [ %i.ee, %._crit_edge.loopexit ], [ %i.z, %.preheader ]
  %i.am = add nuw i64 %.01630, 1                  ; 2 uses
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = ptrtoint ptr %i.ai to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 4
  %i.ar = add i64 %i.aq, %i.ak
  %i.as = icmp ult i64 %i.am, %i.ar
  br i1 %i.as, label %.preheader, label %._crit_edge31, !llvm.loop !1311

bb.b:                                             ; preds = %.lr.ph, %_ZN7rocksdb18VersionStorageInfo29RangeMightExistAfterSortedRunERKNS_5SliceES3_ii.exit
  %.0.i29 = phi ptr [ %.0.i26, %.lr.ph ], [ %.0.i, %_ZN7rocksdb18VersionStorageInfo29RangeMightExistAfterSortedRunERKNS_5SliceES3_ii.exit ]
  %.01527 = phi i64 [ 0, %.lr.ph ], [ %i.ed, %_ZN7rocksdb18VersionStorageInfo29RangeMightExistAfterSortedRunERKNS_5SliceES3_ii.exit ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i29, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !436
  %i.av = getelementptr inbounds nuw [88 x i8], ptr %i.au, i64 %.01527 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #42
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !9
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !14
  %i.ba = add i64 %i.az, -8
  store ptr %i.ax, ptr %1, align 8
  store i64 %i.ba, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #42
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !9
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 80
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !14
  %i.bf = add i64 %i.be, -8
  store ptr %i.bc, ptr %2, align 8
  store i64 %i.bf, ptr %i.n, align 8
  br i1 %i.ag, label %bb.c, label %.thread31.i

bb.c:                                             ; preds = %bb.b
  %i.bg = trunc i64 %.01527 to i32
  %i.bh = load ptr, ptr %i.p, align 8, !tbaa !29  ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !222
  %i.bk = load ptr, ptr %i.bh, align 8, !tbaa !113
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = lshr exact i64 %i.bn, 3
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = add i32 %i.bp, -1
  %.not.i = icmp eq i32 %i.bq, %i.bg
  br i1 %.not.i, label %bb.d, label %_ZN7rocksdb18VersionStorageInfo29RangeMightExistAfterSortedRunERKNS_5SliceES3_ii.exit

bb.d:                                             ; preds = %bb.c
  %i.br = load i32, ptr %i.o, align 16, !tbaa !887 ; 2 uses
  %i.bs = icmp sgt i32 %i.br, 1
  br i1 %i.bs, label %.lr.ph.split.us.i.preheader, label %.loopexit

.lr.ph.split.us.i.preheader:                      ; preds = %bb.d
  %wide.trip.count = zext nneg i32 %i.br to i64
  br label %.lr.ph.split.us.i

.thread31.i:                                      ; preds = %bb.b
  %i.bt = load i32, ptr %i.o, align 16, !tbaa !887 ; 2 uses
  %i.bu = icmp slt i32 %.0121732.i, %i.bt
  br i1 %i.bu, label %.lr.ph.split.i, label %.loopexit

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %_ZN7rocksdb18VersionStorageInfo14OverlapInLevelEiPKNS_5SliceES3_.exit.thread.us.i
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i, %_ZN7rocksdb18VersionStorageInfo14OverlapInLevelEiPKNS_5SliceES3_.exit.thread.us.i ], [ 1, %.lr.ph.split.us.i.preheader ] ; 2 uses
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %indvars.iv27.i ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !222
  %i.by = load ptr, ptr %i.bv, align 8, !tbaa !113
  %.not14.us.not.i = icmp eq ptr %i.bx, %i.by
  br i1 %.not14.us.not.i, label %_ZN7rocksdb18VersionStorageInfo14OverlapInLevelEiPKNS_5SliceES3_.exit.thread.us.i, label %_ZN7rocksdb18VersionStorageInfo29RangeMightExistAfterSortedRunERKNS_5SliceES3_ii.exit

_ZN7rocksdb18VersionStorageInfo14OverlapInLevelEiPKNS_5SliceES3_.exit.thread.us.i: ; preds = %.lr.ph.split.us.i
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next28.i, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.split.us.i, !llvm.loop !1312

.lr.ph.split.i:                                   ; preds = %.thread31.i, %_ZN7rocksdb18VersionStorageInfo14OverlapInLevelEiPKNS_5SliceES3_.exit.thread.i
  %i.bz = phi i32 [ %i.cq, %_ZN7rocksdb18VersionStorageInfo14OverlapInLevelEiPKNS_5SliceES3_.exit.thread.i ], [ %i.bt, %.thread31.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN7rocksdb18VersionStorageInfo14OverlapInLevelEiPKNS_5SliceES3_.exit.thread.i ], [ %i.ah, %.thread31.i ] ; 7 uses
  %.012.in18.i = phi i32 [ %i.ct, %_ZN7rocksdb18VersionStorageInfo14OverlapInLevelEiPKNS_5SliceES3_.exit.thread.i ], [ %i.af, %.thread31.i ]
  %i.ca = load ptr, ptr %i.p, align 8, !tbaa !29
  %i.cb = getelementptr inbounds [24 x i8], ptr %i.ca, i64 %indvars.iv.i ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !222
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !113
  %.not14.i = icmp eq ptr %i.cd, %i.ce
  br i1 %.not14.i, label %_ZN7rocksdb18VersionStorageInfo14OverlapInLevelEiPKNS_5SliceES3_.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.i
  %i.cf = load i32, ptr %i.q, align 4, !tbaa !603
  %i.cg = sext i32 %i.cf to i64
  %.not.i.i = icmp slt i64 %indvars.iv.i, %i.cg
  br i1 %.not.i.i, label %_ZN7rocksdb18VersionStorageInfo14OverlapInLevelEiPKNS_5SliceES3_.exit.i, label %_ZN7rocksdb18VersionStorageInfo14OverlapInLevelEiPKNS_5SliceES3_.exit.thread.i

_ZN7rocksdb18VersionStorageInfo14OverlapInLevelEiPKNS_5SliceES3_.exit.i: ; preds = %bb.e
  %i.ch = load ptr, ptr %0, align 16, !tbaa !971
  %i.ci = icmp sgt i32 %.012.in18.i, -1
  %i.cj = icmp ult i64 %indvars.iv.i, 8
  %i.ck = load ptr, ptr %i.l, align 8
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.ck, i64 %indvars.iv.i
  %i.cm = load ptr, ptr %i.b, align 16
  %i.cn = getelementptr [16 x i8], ptr %i.cm, i64 %indvars.iv.i
  %i.co = getelementptr i8, ptr %i.cn, i64 -128
  %.0.i.i.i = select i1 %i.cj, ptr %i.cl, ptr %i.co
  %i.cp = call noundef zeroext i1 @_ZN7rocksdb21SomeFileOverlapsRangeERKNS_21InternalKeyComparatorEbRKNS_15LevelFilesBriefEPKNS_5SliceES8_(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i1 noundef zeroext %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br i1 %i.cp, label %_ZN7rocksdb18VersionStorageInfo29RangeMightExistAfterSortedRunERKNS_5SliceES3_ii.exit, label %_ZN7rocksdb18VersionStorageInfo14OverlapInLevelEiPKNS_5SliceES3_.exit._ZN7rocksdb18VersionStorageInfo14OverlapInLevelEiPKNS_5SliceES3_.exit.thread_crit_edge.i

_ZN7rocksdb18VersionStorageInfo14OverlapInLevelEiPKNS_5SliceES3_.exit._ZN7rocksdb18VersionStorageInfo14OverlapInLevelEiPKNS_5SliceES3_.exit.thread_crit_edge.i: ; preds = %_ZN7rocksdb18VersionStorageInfo14OverlapInLevelEiPKNS_5SliceES3_.exit.i
  %.pre.i = load i32, ptr %i.o, align 16, !tbaa !887
  br label %_ZN7rocksdb18VersionStorageInfo14OverlapInLevelEiPKNS_5SliceES3_.exit.thread.i

_ZN7rocksdb18VersionStorageInfo14OverlapInLevelEiPKNS_5SliceES3_.exit.thread.i: ; preds = %_ZN7rocksdb18VersionStorageInfo14OverlapInLevelEiPKNS_5SliceES3_.exit._ZN7rocksdb18VersionStorageInfo14OverlapInLevelEiPKNS_5SliceES3_.exit.thread_crit_edge.i, %bb.e, %.lr.ph.split.i
  %i.cq = phi i32 [ %.pre.i, %_ZN7rocksdb18VersionStorageInfo14OverlapInLevelEiPKNS_5SliceES3_.exit._ZN7rocksdb18VersionStorageInfo14OverlapInLevelEiPKNS_5SliceES3_.exit.thread_crit_edge.i ], [ %i.bz, %bb.e ], [ %i.bz, %.lr.ph.split.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cr = sext i32 %i.cq to i64
  %i.cs = icmp slt i64 %indvars.iv.next.i, %i.cr
  %i.ct = trunc nsw i64 %indvars.iv.i to i32
  br i1 %i.cs, label %.lr.ph.split.i, label %.loopexit, !llvm.loop !1312

.loopexit:                                        ; preds = %_ZN7rocksdb18VersionStorageInfo14OverlapInLevelEiPKNS_5SliceES3_.exit.thread.i, %_ZN7rocksdb18VersionStorageInfo14OverlapInLevelEiPKNS_5SliceES3_.exit.thread.us.i, %bb.d, %.thread31.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.av, i64 48 ; 3 uses
  %i.cv = load i64, ptr %i.r, align 16, !tbaa !126 ; 3 uses
  %i.cw = icmp ult i64 %i.cv, 8
  br i1 %i.cw, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.loopexit
  %i.cx = load ptr, ptr %i.v, align 8, !tbaa !979
  %i.cy = add nuw nsw i64 %i.cv, 1
  store i64 %i.cy, ptr %i.r, align 16, !tbaa !126
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %i.cv ; 2 uses
  store i32 %i.af, ptr %i.cz, align 8, !tbaa !1313
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load ptr, ptr %i.cu, align 8, !tbaa !225
  store ptr %i.db, ptr %i.da, align 8, !tbaa !1315
  br label %_ZN7rocksdb18VersionStorageInfo29RangeMightExistAfterSortedRunERKNS_5SliceES3_ii.exit

bb.g:                                             ; preds = %.loopexit
  %i.dc = load ptr, ptr %i.t, align 8, !tbaa !128 ; 7 uses
  %i.dd = load ptr, ptr %i.u, align 16, !tbaa !129
  %.not.i20 = icmp eq ptr %i.dc, %i.dd
  br i1 %.not.i20, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %i.af, ptr %i.dc, align 8, !tbaa !1313
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.df = load ptr, ptr %i.cu, align 8, !tbaa !225
  store ptr %i.df, ptr %i.de, align 8, !tbaa !1315
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store ptr %i.dg, ptr %i.t, align 8, !tbaa !128
  br label %_ZN7rocksdb18VersionStorageInfo29RangeMightExistAfterSortedRunERKNS_5SliceES3_ii.exit

bb.i:                                             ; preds = %bb.g
  %i.dh = load ptr, ptr %i.s, align 16, !tbaa !127 ; 5 uses
  %i.di = ptrtoint ptr %i.dc to i64
  %i.dj = ptrtoint ptr %i.dh to i64               ; 2 uses
  %i.dk = sub i64 %i.di, %i.dj                    ; 3 uses
  %i.dl = icmp eq i64 %i.dk, 9223372036854775792
  br i1 %i.dl, label %bb.j, label %_ZNKSt6vectorISt4pairIiPN7rocksdb12FileMetaDataEESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.112) #44
  unreachable

_ZNKSt6vectorISt4pairIiPN7rocksdb12FileMetaDataEESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.dm = ashr exact i64 %i.dk, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dm, i64 1)
  %i.dn = add nsw i64 %.sroa.speculated.i.i.i, %i.dm ; 2 uses
  %i.do = icmp ult i64 %i.dn, %i.dm
  %i.dp = call i64 @llvm.umin.i64(i64 %i.dn, i64 576460752303423487)
  %i.dq = select i1 %i.do, i64 576460752303423487, i64 %i.dp ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dq, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.dr = shl nuw nsw i64 %i.dq, 4
  %i.ds = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dr) #45 ; 5 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dk ; 2 uses
  store i32 %i.af, ptr %i.dt, align 8, !tbaa !1313
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load ptr, ptr %i.cu, align 8, !tbaa !225
  store ptr %i.dv, ptr %i.du, align 8, !tbaa !1315
  %.not10.i.i.i.i.i = icmp eq ptr %i.dh, %i.dc
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIiPN7rocksdb12FileMetaDataEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorISt4pairIiPN7rocksdb12FileMetaDataEESaIS4_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.dx, %.lr.ph.i.i.i.i.i ], [ %i.ds, %_ZNKSt6vectorISt4pairIiPN7rocksdb12FileMetaDataEESaIS4_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.dw, %.lr.ph.i.i.i.i.i ], [ %i.dh, %_ZNKSt6vectorISt4pairIiPN7rocksdb12FileMetaDataEESaIS4_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !1316
  %i.dw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dw, %i.dc
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIiPN7rocksdb12FileMetaDataEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1320

_ZNSt6vectorISt4pairIiPN7rocksdb12FileMetaDataEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorISt4pairIiPN7rocksdb12FileMetaDataEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ds, %_ZNKSt6vectorISt4pairIiPN7rocksdb12FileMetaDataEESaIS4_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.dx, %.lr.ph.i.i.i.i.i ]
  %i.dy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i24.i.i = icmp eq ptr %i.dh, null
  br i1 %.not.i24.i.i, label %_ZNSt6vectorISt4pairIiPN7rocksdb12FileMetaDataEESaIS4_EE17_M_realloc_insertIJiRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt4pairIiPN7rocksdb12FileMetaDataEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i.i
  %i.dz = load ptr, ptr %i.u, align 16, !tbaa !129
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = sub i64 %i.ea, %i.dj
  call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef %i.eb) #43
  br label %_ZNSt6vectorISt4pairIiPN7rocksdb12FileMetaDataEESaIS4_EE17_M_realloc_insertIJiRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIiPN7rocksdb12FileMetaDataEESaIS4_EE17_M_realloc_insertIJiRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorISt4pairIiPN7rocksdb12FileMetaDataEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i.i
  store ptr %i.ds, ptr %i.s, align 16, !tbaa !127
  store ptr %i.dy, ptr %i.t, align 8, !tbaa !128
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %i.dq
  store ptr %i.ec, ptr %i.u, align 16, !tbaa !129
  br label %_ZN7rocksdb18VersionStorageInfo29RangeMightExistAfterSortedRunERKNS_5SliceES3_ii.exit

_ZN7rocksdb18VersionStorageInfo29RangeMightExistAfterSortedRunERKNS_5SliceES3_ii.exit: ; preds = %_ZN7rocksdb18VersionStorageInfo14OverlapInLevelEiPKNS_5SliceES3_.exit.i, %.lr.ph.split.us.i, %bb.f, %bb.h, %_ZNSt6vectorISt4pairIiPN7rocksdb12FileMetaDataEESaIS4_EE17_M_realloc_insertIJiRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #42
  %i.ed = add nuw i64 %.01527, 1                  ; 2 uses
  %i.ee = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %i.ee, i64 %.01630
  %i.eg = load ptr, ptr %i.b, align 16            ; 2 uses
  %i.eh = getelementptr [16 x i8], ptr %i.eg, i64 %.01630
  %i.ei = getelementptr i8, ptr %i.eh, i64 -128
  %.0.i = select i1 %i.aa, ptr %i.ef, ptr %i.ei   ; 2 uses
  %i.ej = load i64, ptr %.0.i, align 8, !tbaa !430
  %i.ek = icmp ult i64 %i.ed, %i.ej
  br i1 %i.ek, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !1321
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb18VersionStorageInfo25GenerateFileLocationIndexEv(ptr noundef nonnull align 16 dereferenceable(4288) %0) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 16, !tbaa !887 ; 4 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2712
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !29   ; 6 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %i.b, 5
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check91 = icmp ult i32 %i.b, 17
  br i1 %min.iters.check91, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
end_hunk_0
