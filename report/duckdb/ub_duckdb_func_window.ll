Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_func_window?download=true
inline.NumInlined: 11766
inline.NumDeleted: 5032
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZN6duckdb34WindowDistinctAggregatorLocalState6SortedEv:bb.a
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !705
  %i.as = add i64 %i.ar, 1
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !705
  br i1 %i.ap, label %bb.d, label %bb.ee

bb.c:                                             ; preds = %bb.a
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %bb.b
  br i1 %.not, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.au = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %bb.f unwind label %bb.i       ; 2 uses

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.au)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !343
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !278 ; 3 uses
  %i.ay = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorISt5tupleIJmmEELb1ESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.ax)
          to label %bb.h unwind label %bb.j       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i64 0, ptr %i.az, align 8, !tbaa !278
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !278
  br label %bb.o

bb.i:                                             ; preds = %bb.f, %bb.e
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.g
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.d
  %i.bc = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %bb.l unwind label %bb.n       ; 2 uses

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.bc)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !343
  %i.bf = getelementptr inbounds nuw i8, ptr %14, i64 176
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !469
  %i.bh = getelementptr [8 x i8], ptr %i.be, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.bh, i64 -8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !278
  br label %bb.o

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %bb.m, %bb.h
  %.0 = phi i64 [ %i.ax, %bb.h ], [ %i.bj, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !278
  %.not.i = icmp eq i64 %i.bm, 0
  br i1 %.not.i, label %bb.ed, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bn = call i64 @llvm.usub.sat.i64(i64 %i.s, i64 1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZN6duckdb28WindowCollectionChunkScannerC2ERNS_20ColumnDataCollectionERKNS_6vectorImLb1ESaImEEEm(ptr noundef nonnull align 8 dereferenceable(232) %2, ptr noundef nonnull align 8 dereferenceable(112) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 noundef %i.bn)
          to label %.noexc unwind label %bb.en

.noexc:                                           ; preds = %bb.p
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  invoke void @_ZN6duckdb9DataChunkC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %bb.q unwind label %bb.aa

bb.q:                                             ; preds = %.noexc
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  invoke void @_ZNK6duckdb20ColumnDataCollection19InitializeScanChunkERNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.e, ptr noundef nonnull align 8 dereferenceable(144) %i.bp, ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %bb.r unwind label %bb.ab

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  invoke void @_ZN6duckdb9DataChunkC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %4)
          to label %bb.s unwind label %bb.ac

bb.s:                                             ; preds = %bb.r
  invoke void @_ZNK6duckdb20ColumnDataCollection19InitializeScanChunkERNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.e, ptr noundef nonnull align 8 dereferenceable(144) %i.bp, ptr noundef nonnull align 8 dereferenceable(72) %4)
          to label %bb.t unwind label %bb.ad

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  invoke void @_ZN6duckdb28WindowCollectionChunkScanner16PrefixStructTypeEmm(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %5, ptr noundef nonnull align 8 dereferenceable(232) %2, i64 noundef %i.aj, i64 noundef 0)
          to label %bb.u unwind label %bb.ae

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.v unwind label %bb.af

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN6duckdb6VectorC1ENS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(104) %6, ptr noundef nonnull %7, i64 noundef 2048)
          to label %bb.w unwind label %bb.ag

bb.w:                                             ; preds = %bb.v
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.x unwind label %bb.ah

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN6duckdb6VectorC1ENS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(104) %8, ptr noundef nonnull %9, i64 noundef 2048)
          to label %bb.y unwind label %bb.ai

bb.y:                                             ; preds = %bb.x
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #29
  %i.bq = icmp ule i64 %i.r, %i.o
  %i.br = load ptr, ptr %2, align 8, !tbaa !704, !nonnull !115, !align !265
  %i.bs = invoke noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection4ScanERNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.br, ptr noundef nonnull align 8 dereferenceable(144) %i.bp, ptr noundef nonnull align 8 dereferenceable(72) %i.bo)
          to label %bb.z unwind label %bb.aj

bb.z:                                             ; preds = %bb.y
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 224 ; 4 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !705
  %i.bv = add i64 %i.bu, 1
  store i64 %i.bv, ptr %i.bt, align 8, !tbaa !705
  br i1 %i.bs, label %bb.ak, label %bb.dm

bb.aa:                                            ; preds = %.noexc
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

bb.ab:                                            ; preds = %bb.q
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

bb.ac:                                            ; preds = %bb.r
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

bb.ad:                                            ; preds = %bb.s
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.ae:                                            ; preds = %bb.t
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.af:                                            ; preds = %bb.u
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

bb.ag:                                            ; preds = %bb.v
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #29
  br label %bb.dx

bb.ah:                                            ; preds = %bb.w
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

bb.ai:                                            ; preds = %bb.x
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #29
  br label %bb.dw

bb.aj:                                            ; preds = %bb.y
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.dv

bb.ak:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  %i.cg = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef 2048)
          to label %.preheader.i.i unwind label %bb.al

.preheader.i.i:                                   ; preds = %bb.ak
  %i.ch = load ptr, ptr %10, align 8, !tbaa !403  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader.i.i
  %index = phi i64 [ 0, %.preheader.i.i ], [ %index.next.1, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %.preheader.i.i ], [ %vec.ind.next.1, %vector.body ] ; 4 uses
  %15 = trunc <4 x i64> %vec.ind to <4 x i32>
  %16 = add <4 x i32> %15, splat (i32 1)
  %17 = trunc <4 x i64> %vec.ind to <4 x i32>
  %i.ci = add <4 x i32> %17, splat (i32 5)
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %index ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store <4 x i32> %16, ptr %i.cj, align 4, !tbaa !79
  store <4 x i32> %i.ci, ptr %i.ck, align 4, !tbaa !79
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 8) ; 2 uses
  %18 = trunc <4 x i64> %vec.ind.next to <4 x i32>
  %19 = add <4 x i32> %18, splat (i32 1)
  %20 = trunc <4 x i64> %vec.ind.next to <4 x i32>
  %i.cl = add <4 x i32> %20, splat (i32 5)
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %index ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 48
  store <4 x i32> %19, ptr %i.cn, align 4, !tbaa !79
  store <4 x i32> %i.cl, ptr %i.co, align 4, !tbaa !79
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %vec.ind.next.1 = add nuw <4 x i64> %vec.ind, splat (i64 16)
  %i.cp = icmp eq i64 %index.next.1, 2048
  br i1 %i.cp, label %_ZN6duckdb15SelectionVectorC2Emm.exit.i, label %vector.body, !llvm.loop !1250

bb.al:                                            ; preds = %bb.ak
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.cg) #29
  br label %.body.i

_ZN6duckdb15SelectionVectorC2Emm.exit.i:          ; preds = %vector.body
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  %i.cr = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cr, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef 2048)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit.i unwind label %bb.am

bb.am:                                            ; preds = %_ZN6duckdb15SelectionVectorC2Emm.exit.i
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.cr) #29
  br label %.body91.i

_ZN6duckdb15SelectionVectorC2Em.exit.i:           ; preds = %_ZN6duckdb15SelectionVectorC2Emm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  %i.ct = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %12, i64 noundef 2048)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit95.preheader.i unwind label %bb.an

_ZN6duckdb15SelectionVectorC2Em.exit95.preheader.i: ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.i
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 176 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %_ZN6duckdb15SelectionVectorC2Em.exit95.i

bb.an:                                            ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ct) #29
  br label %.body93.i

_ZN6duckdb15SelectionVectorC2Em.exit95.i:         ; preds = %bb.cq, %_ZN6duckdb15SelectionVectorC2Em.exit95.preheader.i
  %.1 = phi i64 [ %.0, %_ZN6duckdb15SelectionVectorC2Em.exit95.preheader.i ], [ %.2, %bb.cq ] ; 4 uses
  %.067.i = phi i64 [ %i.bn, %_ZN6duckdb15SelectionVectorC2Em.exit95.preheader.i ], [ %.269.i, %bb.cq ] ; 4 uses
  %.048.i = phi i1 [ %i.bq, %_ZN6duckdb15SelectionVectorC2Em.exit95.preheader.i ], [ %.149.i, %bb.cq ] ; 2 uses
  %i.db = icmp ult i64 %.067.i, %i.aa
  br i1 %i.db, label %bb.ao, label %bb.ct

bb.ao:                                            ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit95.i
  br i1 %.048.i, label %bb.ap, label %bb.bd

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.dc = load i64, ptr %i.cu, align 8, !tbaa !469
  %i.dd = trunc i64 %i.dc to i32
  %i.de = add i32 %i.dd, -1
  store i32 %i.de, ptr %i.a, align 4, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, i8 0, i64 16, i1 false)
  store ptr %i.a, ptr %13, align 8, !tbaa !403
  invoke void @_ZN6duckdb9DataChunk5ResetEv(ptr noundef nonnull align 8 dereferenceable(72) %4)
          to label %bb.aq unwind label %bb.au

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZNK6duckdb9DataChunk4CopyERS0_RKNS_15SelectionVectorEmm(ptr noundef nonnull align 8 dereferenceable(72) %i.bo, ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(24) %13, i64 noundef 1, i64 noundef 0)
          to label %bb.ar unwind label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.df = add nuw i64 %.067.i, 1                  ; 3 uses
  %.not74.i = icmp ult i64 %i.df, %i.aa
  br i1 %.not74.i, label %bb.as, label %bb.aw

bb.as:                                            ; preds = %bb.ar
  %i.dg = load ptr, ptr %2, align 8, !tbaa !704, !nonnull !115, !align !265
  %i.dh = invoke noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection4ScanERNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.dg, ptr noundef nonnull align 8 dereferenceable(144) %i.bp, ptr noundef nonnull align 8 dereferenceable(72) %i.bo)
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.di = load i64, ptr %i.bt, align 8, !tbaa !705
  %i.dj = add i64 %i.di, 1
  store i64 %i.dj, ptr %i.bt, align 8, !tbaa !705
  br i1 %i.dh, label %bb.av, label %bb.aw

bb.au:                                            ; preds = %bb.as, %bb.aq, %bb.ap
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %.body99.i

bb.av:                                            ; preds = %bb.at
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.at, %bb.ar
  %cond.i = phi i1 [ true, %bb.av ], [ false, %bb.at ], [ false, %bb.ar ]
  %.044.i = phi i32 [ 0, %bb.av ], [ 3, %bb.at ], [ 3, %bb.ar ]
  %.043.i = phi ptr [ %i.bo, %bb.av ], [ null, %bb.at ], [ null, %bb.ar ]
  %i.dl = load ptr, ptr %i.cw, align 8, !tbaa !280 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 4 uses
  %i.dn = load atomic i64, ptr %i.dm acquire, align 8 ; 2 uses
  %i.do = icmp eq i64 %i.dn, 4294967297
  %i.dp = trunc i64 %i.dn to i32                  ; 2 uses
  br i1 %i.do, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i32 0, ptr %i.dm, align 8, !tbaa !325
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 12
  store i32 0, ptr %i.dq, align 4, !tbaa !326
  %i.dr = load ptr, ptr %i.dl, align 8, !tbaa !208
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(16) %i.dl) #29, !inline_history !1251
  %i.du = load ptr, ptr %i.dl, align 8, !tbaa !208
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8
  call void %i.dw(ptr noundef nonnull align 8 dereferenceable(16) %i.dl) #29, !inline_history !1251
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.az:                                            ; preds = %bb.ax
  %i.dx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !282
  %.not.i.i.i.i.i.i = icmp eq i8 %i.dx, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.dy = add nsw i32 %i.dp, -1
  store i32 %i.dy, ptr %i.dm, align 8, !tbaa !79
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.bb:                                            ; preds = %bb.az
  %i.dz = atomicrmw volatile add ptr %i.dm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.bb, %bb.ba
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.dp, %bb.ba ], [ %i.dz, %bb.bb ]
  %i.ea = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ea, label %bb.bc, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !229

bb.bc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dl) #29
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.bc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ay, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br i1 %cond.i, label %bb.bg, label %bb.cq

bb.bd:                                            ; preds = %bb.ao
  %i.eb = load i64, ptr %i.cu, align 8, !tbaa !469
  %i.ec = add i64 %i.eb, -1                       ; 3 uses
  %.not73.i = icmp eq i64 %i.ec, 0
  br i1 %.not73.i, label %bb.cq, label %bb.be, !llvm.loop !1252

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZN6duckdb9DataChunk5SliceERKS0_RKNS_15SelectionVectorEmm(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(72) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %i.ec, i64 noundef 0)
          to label %bb.bg unwind label %bb.bf

bb.bf:                                            ; preds = %bb.bh, %bb.bg, %bb.be
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %.body99.i

bb.bg:                                            ; preds = %bb.be, %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %.168.i = phi i64 [ %i.df, %_ZN6duckdb15SelectionVectorD2Ev.exit.i ], [ %.067.i, %bb.be ]
  %.1.i = phi ptr [ %.043.i, %_ZN6duckdb15SelectionVectorD2Ev.exit.i ], [ %3, %bb.be ] ; 3 uses
  %.042.i = phi ptr [ %4, %_ZN6duckdb15SelectionVectorD2Ev.exit.i ], [ %i.bo, %bb.be ] ; 2 uses
  %.0.i = phi i64 [ 1, %_ZN6duckdb15SelectionVectorD2Ev.exit.i ], [ %i.ec, %bb.be ]
  invoke void @_ZN6duckdb28WindowCollectionChunkScanner22ReferenceStructColumnsERNS_9DataChunkERNS_6VectorEmm(ptr noundef nonnull align 8 dereferenceable(72) %.042.i, ptr noundef nonnull align 8 dereferenceable(104) %8, i64 noundef %i.aj, i64 noundef 0)
          to label %bb.bh unwind label %bb.bf

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN6duckdb28WindowCollectionChunkScanner22ReferenceStructColumnsERNS_9DataChunkERNS_6VectorEmm(ptr noundef nonnull align 8 dereferenceable(72) %.1.i, ptr noundef nonnull align 8 dereferenceable(104) %6, i64 noundef %i.aj, i64 noundef 0)
          to label %bb.bi unwind label %bb.bf

bb.bi:                                            ; preds = %bb.bh
  %i.ee = invoke noundef i64 @_ZN6duckdb16VectorOperations12DistinctFromERNS_6VectorES2_NS_12optional_ptrIKNS_15SelectionVectorELb1EEEmNS3_IS4_Lb1EEES7_(ptr noundef nonnull align 8 dereferenceable(104) %6, ptr noundef nonnull align 8 dereferenceable(104) %8, ptr null, i64 noundef %.0.i, ptr nonnull %11, ptr nonnull %12)
          to label %bb.bj unwind label %bb.cr     ; 4 uses

bb.bj:                                            ; preds = %bb.bi
  %.not76.i = icmp eq i64 %i.ee, 0                ; 2 uses
  br i1 %.not76.i, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.ef = invoke noundef ptr @_ZN6duckdb10FlatVector26IncrementalSelectionVectorEv()
          to label %bb.bl unwind label %bb.cs

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.eg = phi ptr [ %12, %bb.bj ], [ %i.ef, %bb.bk ]
  %i.eh = getelementptr i8, ptr %.042.i, i64 24
  %.042.val.i = load i64, ptr %i.eh, align 8, !tbaa !469
  %i.ei = getelementptr inbounds nuw i8, ptr %.1.i, i64 24
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !469
  %i.ek = call noundef i64 @llvm.umin.i64(i64 %.042.val.i, i64 %i.ej) ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdb6vectorIhLb1ESaIhEEixEm:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !216    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.l) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.i) #29
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorIhLb1ESaIhEE3getILb1EEERhm.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 %1
  ret ptr %i.o
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN6duckdbL18WindowDeltaScannerIZNS_25WindowTokenTreeLocalState11BuildLeavesEvE3$_0EEvRNS_20ColumnDataCollectionEmmRKNS_6vectorImLb1ESaImEEEmT_"(ptr noundef nonnull align 8 dereferenceable(112) %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %4, ptr nonnull %5) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.duckdb::WindowCollectionChunkScanner", align 8 ; 19 uses
  %7 = alloca %"class.duckdb::DataChunk", align 8 ; 9 uses
  %8 = alloca %"class.duckdb::DataChunk", align 8 ; 10 uses
  %9 = alloca %"struct.duckdb::LogicalType", align 8 ; 8 uses
  %10 = alloca %"class.duckdb::Vector", align 8   ; 8 uses
  %11 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %12 = alloca %"class.duckdb::Vector", align 8   ; 8 uses
  %13 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %14 = alloca %"struct.duckdb::SelectionVector", align 8 ; 9 uses
  %15 = alloca %"struct.duckdb::SelectionVector", align 8 ; 9 uses
  %16 = alloca %"struct.duckdb::SelectionVector", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %17 = alloca %"struct.duckdb::SelectionVector", align 8 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !278
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.ce, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %1, i64 1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @_ZN6duckdb28WindowCollectionChunkScannerC2ERNS_20ColumnDataCollectionERKNS_6vectorImLb1ESaImEEEm(ptr noundef nonnull align 8 dereferenceable(232) %6, ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 152 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  invoke void @_ZN6duckdb9DataChunkC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %7)
          to label %bb.c unwind label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  invoke void @_ZNK6duckdb20ColumnDataCollection19InitializeScanChunkERNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(144) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %7)
          to label %bb.d unwind label %bb.n

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  invoke void @_ZN6duckdb9DataChunkC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %8)
          to label %bb.e unwind label %bb.o

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK6duckdb20ColumnDataCollection19InitializeScanChunkERNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(144) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %8)
          to label %bb.f unwind label %bb.p

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  invoke void @_ZN6duckdb28WindowCollectionChunkScanner16PrefixStructTypeEmm(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %9, ptr noundef nonnull align 8 dereferenceable(232) %6, i64 noundef %4, i64 noundef 0)
          to label %bb.g unwind label %bb.q

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.h unwind label %bb.r

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN6duckdb6VectorC1ENS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(104) %10, ptr noundef nonnull %11, i64 noundef 2048)
          to label %bb.i unwind label %bb.s

bb.i:                                             ; preds = %bb.h
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.j unwind label %bb.t

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN6duckdb6VectorC1ENS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(104) %12, ptr noundef nonnull %13, i64 noundef 2048)
          to label %bb.k unwind label %bb.u

bb.k:                                             ; preds = %bb.j
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #29
  %i.g = icmp ne i64 %1, 0
  %i.h = load ptr, ptr %6, align 8, !tbaa !704, !nonnull !115, !align !265
  %i.i = invoke noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection4ScanERNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.h, ptr noundef nonnull align 8 dereferenceable(144) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %i.e)
          to label %bb.l unwind label %bb.v

bb.l:                                             ; preds = %bb.k
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 224 ; 4 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !705
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %i.j, align 8, !tbaa !705
  br i1 %i.i, label %bb.w, label %bb.bv

bb.m:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.n:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.o:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.p:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.q:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.r:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.s:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #29
  br label %bb.ch

bb.t:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.u:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #29
  br label %bb.cg

bb.v:                                             ; preds = %bb.k
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.w:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  %i.w = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %14, i64 noundef 2048)
          to label %.preheader.i unwind label %bb.x

.preheader.i:                                     ; preds = %bb.w
  %i.x = load ptr, ptr %14, align 8, !tbaa !403   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader.i
  %index = phi i64 [ 0, %.preheader.i ], [ %index.next.1, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %.preheader.i ], [ %vec.ind.next.1, %vector.body ] ; 4 uses
  %18 = trunc <4 x i64> %vec.ind to <4 x i32>
  %19 = add <4 x i32> %18, splat (i32 1)
  %20 = trunc <4 x i64> %vec.ind to <4 x i32>
  %i.y = add <4 x i32> %20, splat (i32 5)
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <4 x i32> %19, ptr %i.z, align 4, !tbaa !79
  store <4 x i32> %i.y, ptr %i.aa, align 4, !tbaa !79
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 8) ; 2 uses
  %21 = trunc <4 x i64> %vec.ind.next to <4 x i32>
  %22 = add <4 x i32> %21, splat (i32 1)
  %23 = trunc <4 x i64> %vec.ind.next to <4 x i32>
  %i.ab = add <4 x i32> %23, splat (i32 5)
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  store <4 x i32> %22, ptr %i.ad, align 4, !tbaa !79
  store <4 x i32> %i.ab, ptr %i.ae, align 4, !tbaa !79
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %vec.ind.next.1 = add nuw <4 x i64> %vec.ind, splat (i64 16)
  %i.af = icmp eq i64 %index.next.1, 2048
  br i1 %i.af, label %_ZN6duckdb15SelectionVectorC2Emm.exit, label %vector.body, !llvm.loop !1542

bb.x:                                             ; preds = %bb.w
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.w) #29
  br label %.body

_ZN6duckdb15SelectionVectorC2Emm.exit:            ; preds = %vector.body
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  %i.ah = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %15, i64 noundef 2048)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit unwind label %bb.y

bb.y:                                             ; preds = %_ZN6duckdb15SelectionVectorC2Emm.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ah) #29
  br label %.body91

_ZN6duckdb15SelectionVectorC2Em.exit:             ; preds = %_ZN6duckdb15SelectionVectorC2Emm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #29
  %i.aj = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %16, i64 noundef 2048)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit95.preheader unwind label %bb.z

_ZN6duckdb15SelectionVectorC2Em.exit95.preheader: ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 176 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.an = getelementptr inbounds nuw i8, ptr %17, i64 16
  br label %_ZN6duckdb15SelectionVectorC2Em.exit95

bb.z:                                             ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.aj) #29
  br label %.body93

_ZN6duckdb15SelectionVectorC2Em.exit95:           ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit95.preheader, %bb.ba
  %.067 = phi i64 [ %.269, %bb.ba ], [ %i.d, %_ZN6duckdb15SelectionVectorC2Em.exit95.preheader ] ; 4 uses
  %.048 = phi i1 [ %.149, %bb.ba ], [ %i.g, %_ZN6duckdb15SelectionVectorC2Em.exit95.preheader ] ; 2 uses
  %.046 = phi i64 [ %.2, %bb.ba ], [ 1, %_ZN6duckdb15SelectionVectorC2Em.exit95.preheader ] ; 2 uses
  %i.ap = icmp ult i64 %.067, %2
  br i1 %i.ap, label %bb.aa, label %bb.bc

bb.aa:                                            ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit95
  br i1 %.048, label %bb.ab, label %bb.ap

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.aq = load i64, ptr %i.ak, align 8, !tbaa !469
  %i.ar = trunc i64 %i.aq to i32
  %i.as = add i32 %i.ar, -1
  store i32 %i.as, ptr %i.a, align 4, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false)
  store ptr %i.a, ptr %17, align 8, !tbaa !403
  invoke void @_ZN6duckdb9DataChunk5ResetEv(ptr noundef nonnull align 8 dereferenceable(72) %8)
          to label %bb.ac unwind label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZNK6duckdb9DataChunk4CopyERS0_RKNS_15SelectionVectorEmm(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(24) %17, i64 noundef 1, i64 noundef 0)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.at = add nuw i64 %.067, 1                    ; 3 uses
  %i.au = load i64, ptr %i.am, align 8, !tbaa !756 ; 2 uses
  %.not74 = icmp ult i64 %i.at, %2
  br i1 %.not74, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.av = load ptr, ptr %6, align 8, !tbaa !704, !nonnull !115, !align !265
  %i.aw = invoke noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection4ScanERNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.av, ptr noundef nonnull align 8 dereferenceable(144) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %i.e)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ax = load i64, ptr %i.j, align 8, !tbaa !705
  %i.ay = add i64 %i.ax, 1
  store i64 %i.ay, ptr %i.j, align 8, !tbaa !705
  br i1 %i.aw, label %bb.ah, label %bb.ai

bb.ag:                                            ; preds = %bb.ae, %bb.ac, %bb.ab
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %17) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %.loopexit.split-lp

bb.ah:                                            ; preds = %bb.af
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ad, %bb.af, %bb.ah
  %cond = phi i1 [ true, %bb.ah ], [ false, %bb.af ], [ false, %bb.ad ]
  %.044 = phi i32 [ 0, %bb.ah ], [ 3, %bb.af ], [ 3, %bb.ad ]
  %.043 = phi ptr [ %i.e, %bb.ah ], [ null, %bb.af ], [ null, %bb.ad ]
  %i.ba = load ptr, ptr %i.an, align 8, !tbaa !280 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 4 uses
  %i.bc = load atomic i64, ptr %i.bb acquire, align 8 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 4294967297
  %i.be = trunc i64 %i.bc to i32                  ; 2 uses
  br i1 %i.bd, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.bb, align 8, !tbaa !325
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  store i32 0, ptr %i.bf, align 4, !tbaa !326
  %i.bg = load ptr, ptr %i.ba, align 8, !tbaa !208
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #29, !inline_history !25
  %i.bj = load ptr, ptr %i.ba, align 8, !tbaa !208
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #29, !inline_history !25
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

bb.al:                                            ; preds = %bb.aj
  %i.bm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !282
  %.not.i.i.i.i.i = icmp eq i8 %i.bm, 0
  br i1 %.not.i.i.i.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bn = add nsw i32 %i.be, -1
  store i32 %i.bn, ptr %i.bb, align 8, !tbaa !79
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.an:                                            ; preds = %bb.al
  %i.bo = atomicrmw volatile add ptr %i.bb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.an, %bb.am
  %.0.i.i.i.i.i.i = phi i32 [ %i.be, %bb.am ], [ %i.bo, %bb.an ]
  %i.bp = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bp, label %bb.ao, label %_ZN6duckdb15SelectionVectorD2Ev.exit, !prof !229

bb.ao:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #29
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

_ZN6duckdb15SelectionVectorD2Ev.exit:             ; preds = %bb.ai, %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br i1 %cond, label %bb.as, label %bb.ba

bb.ap:                                            ; preds = %bb.aa
  %i.bq = load i64, ptr %i.ak, align 8, !tbaa !469
  %i.br = add i64 %i.bq, -1                       ; 3 uses
  %.not73 = icmp eq i64 %i.br, 0
  br i1 %.not73, label %bb.ba, label %bb.aq, !llvm.loop !1543

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN6duckdb9DataChunk5SliceERKS0_RKNS_15SelectionVectorEmm(ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %14, i64 noundef %i.br, i64 noundef 0)
          to label %bb.as unwind label %bb.ar

bb.ar:                                            ; preds = %bb.at, %bb.as, %bb.aq
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.as:                                            ; preds = %bb.aq, %_ZN6duckdb15SelectionVectorD2Ev.exit
  %.168 = phi i64 [ %i.at, %_ZN6duckdb15SelectionVectorD2Ev.exit ], [ %.067, %bb.aq ]
  %.147 = phi i64 [ %i.au, %_ZN6duckdb15SelectionVectorD2Ev.exit ], [ %.046, %bb.aq ] ; 3 uses
  %.1 = phi ptr [ %.043, %_ZN6duckdb15SelectionVectorD2Ev.exit ], [ %7, %bb.aq ] ; 2 uses
  %.042 = phi ptr [ %8, %_ZN6duckdb15SelectionVectorD2Ev.exit ], [ %i.e, %bb.aq ] ; 2 uses
  %.0 = phi i64 [ 1, %_ZN6duckdb15SelectionVectorD2Ev.exit ], [ %i.br, %bb.aq ] ; 2 uses
  invoke void @_ZN6duckdb28WindowCollectionChunkScanner22ReferenceStructColumnsERNS_9DataChunkERNS_6VectorEmm(ptr noundef nonnull align 8 dereferenceable(72) %.042, ptr noundef nonnull align 8 dereferenceable(104) %12, i64 noundef %4, i64 noundef 0)
          to label %bb.at unwind label %bb.ar

bb.at:                                            ; preds = %bb.as
  invoke void @_ZN6duckdb28WindowCollectionChunkScanner22ReferenceStructColumnsERNS_9DataChunkERNS_6VectorEmm(ptr noundef nonnull align 8 dereferenceable(72) %.1, ptr noundef nonnull align 8 dereferenceable(104) %10, i64 noundef %4, i64 noundef 0)
          to label %bb.au unwind label %bb.ar

bb.au:                                            ; preds = %bb.at
  %i.bt = invoke noundef i64 @_ZN6duckdb16VectorOperations12DistinctFromERNS_6VectorES2_NS_12optional_ptrIKNS_15SelectionVectorELb1EEEmNS3_IS4_Lb1EEES7_(ptr noundef nonnull align 8 dereferenceable(104) %10, ptr noundef nonnull align 8 dereferenceable(104) %12, ptr null, i64 noundef %.0, ptr nonnull %15, ptr nonnull %16)
          to label %bb.av unwind label %bb.bb     ; 4 uses

bb.av:                                            ; preds = %bb.au
  %.not76 = icmp eq i64 %i.bt, 0                  ; 2 uses
  br i1 %.not76, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.bu = invoke noundef ptr @_ZN6duckdb10FlatVector26IncrementalSelectionVectorEv()
          to label %bb.ax unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.bv = phi ptr [ %16, %bb.av ], [ %i.bu, %bb.aw ]
  %i.bw = getelementptr i8, ptr %.042, i64 24
  %.042.val = load i64, ptr %i.bw, align 8, !tbaa !469
  %i.bx = getelementptr i8, ptr %.1, i64 24
  %.1.val = load i64, ptr %i.bx, align 8, !tbaa !469
  %i.by = call noundef i64 @llvm.umin.i64(i64 %.042.val, i64 %.1.val) ; 2 uses
end_hunk_1
