Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_operator_aggregate?download=true
inline.NumInlined: 10453
inline.NumDeleted: 5814
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN6duckdb15WindowHashGroup12ComputeMasksEmm:bb.a
  %.not.i48 = icmp ugt i64 %i.i, %i.be
  br i1 %.not.i48, label %bb.k, label %_ZN6duckdb21TemplatedValidityMaskImE15SetRangeInvalidEmmm.exit51

bb.k:                                             ; preds = %._crit_edge.i47
  %i.bk = and i64 %i.ax, 63                       ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 0
  %i.bm = shl nsw i64 -1, %i.bk
  %i.bn = select i1 %i.bl, i64 0, i64 %i.bm
  %i.bo = load ptr, ptr %i.aw, align 8, !tbaa !1013
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.be
  store i64 %i.bn, ptr %i.bp, align 8, !tbaa !273
  br label %_ZN6duckdb21TemplatedValidityMaskImE15SetRangeInvalidEmmm.exit51

_ZN6duckdb21TemplatedValidityMaskImE15SetRangeInvalidEmmm.exit51: ; preds = %_ZN6duckdb21TemplatedValidityMaskImE14EnsureWritableEv.exit.i46, %._crit_edge.i47, %bb.k
  br i1 %.not41, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE15SetRangeInvalidEmmm.exit51
  %i.bq = load ptr, ptr %i.aw, align 8, !tbaa !1013 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !273
  %i.bs = or i64 %i.br, 1
  store i64 %i.bs, ptr %i.bq, align 8, !tbaa !273
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN6duckdb21TemplatedValidityMaskImE15SetRangeInvalidEmmm.exit51
  %.sroa.065.0 = load ptr, ptr %.sroa.065.080, align 8, !tbaa !302 ; 2 uses
  %.not70 = icmp eq ptr %.sroa.065.0, null
  br i1 %.not70, label %._crit_edge, label %bb.h

bb.n:                                             ; preds = %._crit_edge
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aq, i64 176
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !882
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aq, i64 184
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !882
  %i.bx = icmp eq ptr %i.bu, %i.bw
  br i1 %i.bx, label %bb.dy, label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge
  %i.by = ptrtoint ptr %i.au to i64
  %i.bz = ptrtoint ptr %i.as to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = ashr exact i64 %i.ca, 3                 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cd = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZNK6duckdb10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cc) ; 6 uses
  %i.ce = load ptr, ptr %0, align 8, !tbaa !999, !nonnull !236, !align !300
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 104
  %i.cg = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_12SortStrategyESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cf)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 56 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  call void @_ZN6duckdb28WindowCollectionChunkScannerC2ERNS_20ColumnDataCollectionERKNS_6vectorImLb1ESaImEEEm(ptr noundef nonnull align 8 dereferenceable(232) %15, ptr noundef nonnull align 8 dereferenceable(112) %i.cd, ptr noundef nonnull align 8 dereferenceable(24) %i.ch, i64 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  %i.ci = getelementptr inbounds nuw i8, ptr %16, i64 48 ; 2 uses
  store ptr %i.ci, ptr %16, align 8, !tbaa !1028
  %i.cj = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store i64 1, ptr %i.cj, align 8, !tbaa !1029
  %i.ck = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %16, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.cl, align 8, !tbaa !287
  %i.cm = getelementptr inbounds nuw i8, ptr %16, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, i8 0, i64 16, i1 false)
  %.sroa.061.081 = load ptr, ptr %i.ag, align 8, !tbaa !302 ; 2 uses
  %.not7182 = icmp eq ptr %.sroa.061.081, null
  br i1 %.not7182, label %._crit_edge86, label %.lr.ph85

.lr.ph85:                                         ; preds = %bb.o
  %i.cn = getelementptr inbounds nuw i8, ptr %18, i64 8
  br label %bb.de

._crit_edge86:                                    ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.co = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !273
  %.not.i52 = icmp eq i64 %i.cp, 0
  br i1 %.not.i52, label %bb.do, label %bb.p

bb.p:                                             ; preds = %._crit_edge86
  %i.cq = call i64 @llvm.usub.sat.i64(i64 %1, i64 1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZN6duckdb28WindowCollectionChunkScannerC2ERNS_20ColumnDataCollectionERKNS_6vectorImLb1ESaImEEEm(ptr noundef nonnull align 8 dereferenceable(232) %3, ptr noundef nonnull align 8 dereferenceable(112) %i.cd, ptr noundef nonnull align 8 dereferenceable(24) %i.ch, i64 noundef %i.cq)
          to label %.noexc unwind label %bb.dz

.noexc:                                           ; preds = %bb.p
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 152 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  invoke void @_ZN6duckdb9DataChunkC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %4)
          to label %bb.q unwind label %bb.aa

bb.q:                                             ; preds = %.noexc
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  invoke void @_ZNK6duckdb20ColumnDataCollection19InitializeScanChunkERNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.cd, ptr noundef nonnull align 8 dereferenceable(144) %i.cs, ptr noundef nonnull align 8 dereferenceable(72) %4)
          to label %bb.r unwind label %bb.ab

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  invoke void @_ZN6duckdb9DataChunkC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %5)
          to label %bb.s unwind label %bb.ac

bb.s:                                             ; preds = %bb.r
  invoke void @_ZNK6duckdb20ColumnDataCollection19InitializeScanChunkERNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.cd, ptr noundef nonnull align 8 dereferenceable(144) %i.cs, ptr noundef nonnull align 8 dereferenceable(72) %5)
          to label %bb.t unwind label %bb.ad

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  invoke void @_ZN6duckdb28WindowCollectionChunkScanner16PrefixStructTypeEmm(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %6, ptr noundef nonnull align 8 dereferenceable(232) %3, i64 noundef %i.cb, i64 noundef 0)
          to label %bb.u unwind label %bb.ae

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.v unwind label %bb.af

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN6duckdb6VectorC1ENS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(104) %7, ptr noundef nonnull %8, i64 noundef 2048)
          to label %bb.w unwind label %bb.ag

bb.w:                                             ; preds = %bb.v
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.x unwind label %bb.ah

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN6duckdb6VectorC1ENS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(104) %9, ptr noundef nonnull %10, i64 noundef 2048)
          to label %bb.y unwind label %bb.ai

bb.y:                                             ; preds = %bb.x
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #27
  %i.ct = icmp ne i64 %1, 0
  %i.cu = load ptr, ptr %3, align 8, !tbaa !1011, !nonnull !236, !align !300
  %i.cv = invoke noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection4ScanERNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.cu, ptr noundef nonnull align 8 dereferenceable(144) %i.cs, ptr noundef nonnull align 8 dereferenceable(72) %i.cr)
          to label %bb.z unwind label %bb.aj

bb.z:                                             ; preds = %bb.y
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 224 ; 4 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !1012
  %i.cy = add i64 %i.cx, 1
  store i64 %i.cy, ptr %i.cw, align 8, !tbaa !1012
  br i1 %i.cv, label %bb.ak, label %bb.cn

bb.aa:                                            ; preds = %.noexc
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.ab:                                            ; preds = %bb.q
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.ac:                                            ; preds = %bb.r
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.ad:                                            ; preds = %bb.s
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.ae:                                            ; preds = %bb.t
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.af:                                            ; preds = %bb.u
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.ag:                                            ; preds = %bb.v
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #27
  br label %bb.cy

bb.ah:                                            ; preds = %bb.w
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.ai:                                            ; preds = %bb.x
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #27
  br label %bb.cx

bb.aj:                                            ; preds = %bb.y
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.ak:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  %i.dj = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dj, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef 2048)
          to label %.preheader.i.i unwind label %bb.al

.preheader.i.i:                                   ; preds = %bb.ak
  %i.dk = load ptr, ptr %11, align 8, !tbaa !1036 ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader.i.i
  %index = phi i64 [ 0, %.preheader.i.i ], [ %index.next.1, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %.preheader.i.i ], [ %vec.ind.next.1, %vector.body ] ; 4 uses
  %20 = trunc <4 x i64> %vec.ind to <4 x i32>
  %21 = add <4 x i32> %20, splat (i32 1)
  %22 = trunc <4 x i64> %vec.ind to <4 x i32>
  %i.dl = add <4 x i32> %22, splat (i32 5)
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %index ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store <4 x i32> %21, ptr %i.dm, align 4, !tbaa !107
  store <4 x i32> %i.dl, ptr %i.dn, align 4, !tbaa !107
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 8) ; 2 uses
  %23 = trunc <4 x i64> %vec.ind.next to <4 x i32>
  %24 = add <4 x i32> %23, splat (i32 1)
  %25 = trunc <4 x i64> %vec.ind.next to <4 x i32>
  %i.do = add <4 x i32> %25, splat (i32 5)
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %index ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 48
  store <4 x i32> %24, ptr %i.dq, align 4, !tbaa !107
  store <4 x i32> %i.do, ptr %i.dr, align 4, !tbaa !107
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %vec.ind.next.1 = add nuw <4 x i64> %vec.ind, splat (i64 16)
  %i.ds = icmp eq i64 %index.next.1, 2048
  br i1 %i.ds, label %_ZN6duckdb15SelectionVectorC2Emm.exit.i, label %vector.body, !llvm.loop !1866

bb.al:                                            ; preds = %bb.ak
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.dj) #27
  br label %.body.i

_ZN6duckdb15SelectionVectorC2Emm.exit.i:          ; preds = %vector.body
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  %i.du = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.du, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %12, i64 noundef 2048)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit.i unwind label %bb.am

bb.am:                                            ; preds = %_ZN6duckdb15SelectionVectorC2Emm.exit.i
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.du) #27
  br label %.body91.i

_ZN6duckdb15SelectionVectorC2Em.exit.i:           ; preds = %_ZN6duckdb15SelectionVectorC2Emm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  %i.dw = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dw, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %13, i64 noundef 2048)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit95.preheader.i unwind label %bb.an

_ZN6duckdb15SelectionVectorC2Em.exit95.preheader.i: ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.i
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 176 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.ea = getelementptr inbounds nuw i8, ptr %14, i64 16
  br label %_ZN6duckdb15SelectionVectorC2Em.exit95.i

bb.an:                                            ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.i
  %i.eb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.dw) #27
  br label %.body93.i

_ZN6duckdb15SelectionVectorC2Em.exit95.i:         ; preds = %bb.br, %_ZN6duckdb15SelectionVectorC2Em.exit95.preheader.i
  %.067.i = phi i64 [ %.269.i, %bb.br ], [ %i.cq, %_ZN6duckdb15SelectionVectorC2Em.exit95.preheader.i ] ; 4 uses
  %.048.i = phi i1 [ %.149.i, %bb.br ], [ %i.ct, %_ZN6duckdb15SelectionVectorC2Em.exit95.preheader.i ] ; 2 uses
  %.046.i = phi i64 [ %.2.i, %bb.br ], [ 1, %_ZN6duckdb15SelectionVectorC2Em.exit95.preheader.i ] ; 2 uses
  %i.ec = icmp ult i64 %.067.i, %2
  br i1 %i.ec, label %bb.ao, label %bb.bu

bb.ao:                                            ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit95.i
  br i1 %.048.i, label %bb.ap, label %bb.bd

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.ed = load i64, ptr %i.dx, align 8, !tbaa !453
  %i.ee = trunc i64 %i.ed to i32
  %i.ef = add i32 %i.ee, -1
  store i32 %i.ef, ptr %i.a, align 4, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dy, i8 0, i64 16, i1 false)
  store ptr %i.a, ptr %14, align 8, !tbaa !1036
  invoke void @_ZN6duckdb9DataChunk5ResetEv(ptr noundef nonnull align 8 dereferenceable(72) %5)
          to label %bb.aq unwind label %bb.au

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZNK6duckdb9DataChunk4CopyERS0_RKNS_15SelectionVectorEmm(ptr noundef nonnull align 8 dereferenceable(72) %i.cr, ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(24) %14, i64 noundef 1, i64 noundef 0)
          to label %bb.ar unwind label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.eg = add nuw i64 %.067.i, 1                  ; 3 uses
  %i.eh = load i64, ptr %i.dz, align 8, !tbaa !1037 ; 2 uses
  %.not74.i = icmp ult i64 %i.eg, %2
  br i1 %.not74.i, label %bb.as, label %bb.aw

bb.as:                                            ; preds = %bb.ar
  %i.ei = load ptr, ptr %3, align 8, !tbaa !1011, !nonnull !236, !align !300
  %i.ej = invoke noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection4ScanERNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.ei, ptr noundef nonnull align 8 dereferenceable(144) %i.cs, ptr noundef nonnull align 8 dereferenceable(72) %i.cr)
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ek = load i64, ptr %i.cw, align 8, !tbaa !1012
  %i.el = add i64 %i.ek, 1
  store i64 %i.el, ptr %i.cw, align 8, !tbaa !1012
  br i1 %i.ej, label %bb.av, label %bb.aw

bb.au:                                            ; preds = %bb.as, %bb.aq, %bb.ap
  %i.em = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.bt

bb.av:                                            ; preds = %bb.at
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.at, %bb.ar
  %cond.i = phi i1 [ true, %bb.av ], [ false, %bb.at ], [ false, %bb.ar ]
  %.044.i = phi i32 [ 0, %bb.av ], [ 3, %bb.at ], [ 3, %bb.ar ]
  %.043.i = phi ptr [ %i.cr, %bb.av ], [ null, %bb.at ], [ null, %bb.ar ]
  %i.en = load ptr, ptr %i.ea, align 8, !tbaa !113 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 4 uses
  %i.ep = load atomic i64, ptr %i.eo acquire, align 8 ; 2 uses
  %i.eq = icmp eq i64 %i.ep, 4294967297
  %i.er = trunc i64 %i.ep to i32                  ; 2 uses
  br i1 %i.eq, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i32 0, ptr %i.eo, align 8, !tbaa !118
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 12
  store i32 0, ptr %i.es, align 4, !tbaa !119
  %i.et = load ptr, ptr %i.en, align 8, !tbaa !109
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8
  call void %i.ev(ptr noundef nonnull align 8 dereferenceable(16) %i.en) #27, !inline_history !1867
  %i.ew = load ptr, ptr %i.en, align 8, !tbaa !109
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8
  call void %i.ey(ptr noundef nonnull align 8 dereferenceable(16) %i.en) #27, !inline_history !1867
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.az:                                            ; preds = %bb.ax
  %i.ez = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ez, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fa = add nsw i32 %i.er, -1
  store i32 %i.fa, ptr %i.eo, align 8, !tbaa !107
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.bb:                                            ; preds = %bb.az
  %i.fb = atomicrmw volatile add ptr %i.eo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.bb, %bb.ba
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.er, %bb.ba ], [ %i.fb, %bb.bb ]
  %i.fc = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.fc, label %bb.bc, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !125

bb.bc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.en) #27
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.bc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ay, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br i1 %cond.i, label %bb.bg, label %bb.br

bb.bd:                                            ; preds = %bb.ao
  %i.fd = load i64, ptr %i.dx, align 8, !tbaa !453
  %i.fe = add i64 %i.fd, -1                       ; 3 uses
  %.not73.i = icmp eq i64 %i.fe, 0
  br i1 %.not73.i, label %bb.br, label %bb.be, !llvm.loop !1868

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZN6duckdb9DataChunk5SliceERKS0_RKNS_15SelectionVectorEmm(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %i.cr, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %i.fe, i64 noundef 0)
          to label %bb.bg unwind label %bb.bf

bb.bf:                                            ; preds = %bb.bh, %bb.bg, %bb.be
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.bg:                                            ; preds = %bb.be, %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %.168.i = phi i64 [ %i.eg, %_ZN6duckdb15SelectionVectorD2Ev.exit.i ], [ %.067.i, %bb.be ]
  %.147.i = phi i64 [ %i.eh, %_ZN6duckdb15SelectionVectorD2Ev.exit.i ], [ %.046.i, %bb.be ] ; 21 uses
  %.1.i = phi ptr [ %.043.i, %_ZN6duckdb15SelectionVectorD2Ev.exit.i ], [ %4, %bb.be ] ; 3 uses
  %.042.i = phi ptr [ %5, %_ZN6duckdb15SelectionVectorD2Ev.exit.i ], [ %i.cr, %bb.be ] ; 3 uses
  %.0.i = phi i64 [ 1, %_ZN6duckdb15SelectionVectorD2Ev.exit.i ], [ %i.fe, %bb.be ] ; 2 uses
  invoke void @_ZN6duckdb28WindowCollectionChunkScanner22ReferenceStructColumnsERNS_9DataChunkERNS_6VectorEmm(ptr noundef nonnull align 8 dereferenceable(72) %.042.i, ptr noundef nonnull align 8 dereferenceable(104) %9, i64 noundef %i.cb, i64 noundef 0)
          to label %bb.bh unwind label %bb.bf

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN6duckdb28WindowCollectionChunkScanner22ReferenceStructColumnsERNS_9DataChunkERNS_6VectorEmm(ptr noundef nonnull align 8 dereferenceable(72) %.1.i, ptr noundef nonnull align 8 dereferenceable(104) %7, i64 noundef %i.cb, i64 noundef 0)
          to label %bb.bi unwind label %bb.bf

bb.bi:                                            ; preds = %bb.bh
  %i.fg = invoke noundef i64 @_ZN6duckdb16VectorOperations12DistinctFromERNS_6VectorES2_NS_12optional_ptrIKNS_15SelectionVectorELb1EEEmNS3_IS4_Lb1EEES7_(ptr noundef nonnull align 8 dereferenceable(104) %7, ptr noundef nonnull align 8 dereferenceable(104) %9, ptr null, i64 noundef %.0.i, ptr nonnull %12, ptr nonnull %13)
          to label %bb.bj unwind label %bb.bs     ; 13 uses

bb.bj:                                            ; preds = %bb.bi
  %.not76.i = icmp eq i64 %i.fg, 0                ; 2 uses
  br i1 %.not76.i, label %bb.bk, label %.lr.ph74.i.i

bb.bk:                                            ; preds = %bb.bj
  %i.fh = invoke noundef ptr @_ZN6duckdb10FlatVector26IncrementalSelectionVectorEv()
          to label %._crit_edge75.i.i unwind label %.loopexit.split-lp.i

.lr.ph74.i.i:                                     ; preds = %bb.bj
  %i.fi = load ptr, ptr %12, align 8, !tbaa !1036 ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.fi, null           ; 2 uses
  %i.fj = load ptr, ptr %i.j, align 8, !tbaa !1013 ; 8 uses
  %.sroa.063.069.i.i = load ptr, ptr %i.ag, align 8, !tbaa !302 ; 3 uses
  %.not6770.i.i = icmp eq ptr %.sroa.063.069.i.i, null
  br i1 %.not6770.i.i, label %.lr.ph74.split.us.i.i, label %.lr.ph74.split.i.i
end_hunk_0
