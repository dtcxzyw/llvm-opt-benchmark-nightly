Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_func_window?download=true
inline.NumInlined: 11766
inline.NumDeleted: 5032
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZN6duckdb34WindowDistinctAggregatorLocalState6SortedEv:bb.a
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = sdiv exact i64 %i.ai, 24                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  %.not = icmp ule i64 %i.r, %i.o                 ; 3 uses
  %i.ak = add i64 %i.s, -1
  %i.al = select i1 %.not, i64 %i.ak, i64 0
  call void @_ZN6duckdb28WindowCollectionChunkScannerC2ERNS_20ColumnDataCollectionERKNS_6vectorImLb1ESaImEEEm(ptr noundef nonnull align 8 dereferenceable(232) %14, ptr noundef nonnull align 8 dereferenceable(112) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 noundef %i.al)
  %i.am = getelementptr inbounds nuw i8, ptr %14, i64 152 ; 5 uses
  %i.an = load ptr, ptr %14, align 8, !tbaa !933, !nonnull !344, !align !494
  %i.ao = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ap = invoke noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection4ScanERNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.an, ptr noundef nonnull align 8 dereferenceable(144) %i.ao, ptr noundef nonnull align 8 dereferenceable(72) %i.am)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %14, i64 224 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !934
  %i.as = add i64 %i.ar, 1
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !934
  br i1 %i.ap, label %bb.c, label %bb.du

bb.c:                                             ; preds = %bb.b
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.at = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %bb.e unwind label %bb.h       ; 2 uses

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.at)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !572
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !507 ; 3 uses
  %i.ax = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorISt5tupleIJmmEELb1ESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.aw)
          to label %bb.g unwind label %bb.h       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 0, ptr %i.ay, align 8, !tbaa !507
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !507
  br label %bb.l

bb.h:                                             ; preds = %bb.d, %bb.i, %bb.e, %bb.j, %bb.m, %bb.a, %bb.f
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.c
  %i.ba = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %bb.j unwind label %bb.h       ; 2 uses

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.ba)
          to label %bb.k unwind label %bb.h

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !572
  %i.bd = getelementptr inbounds nuw i8, ptr %14, i64 176
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !698
  %i.bf = getelementptr [8 x i8], ptr %i.bc, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 -8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !507
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.g
  %.0 = phi i64 [ %i.aw, %bb.g ], [ %i.bh, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !507
  %.not.i = icmp eq i64 %i.bj, 0
  br i1 %.not.i, label %bb.dt, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = call i64 @llvm.usub.sat.i64(i64 %i.s, i64 1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZN6duckdb28WindowCollectionChunkScannerC2ERNS_20ColumnDataCollectionERKNS_6vectorImLb1ESaImEEEm(ptr noundef nonnull align 8 dereferenceable(232) %2, ptr noundef nonnull align 8 dereferenceable(112) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 noundef %i.bk)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  invoke void @_ZN6duckdb9DataChunkC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %bb.n unwind label %bb.x

bb.n:                                             ; preds = %.noexc
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  invoke void @_ZNK6duckdb20ColumnDataCollection19InitializeScanChunkERNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.e, ptr noundef nonnull align 8 dereferenceable(144) %i.bm, ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %bb.o unwind label %bb.y

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  invoke void @_ZN6duckdb9DataChunkC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %4)
          to label %bb.p unwind label %bb.z

bb.p:                                             ; preds = %bb.o
  invoke void @_ZNK6duckdb20ColumnDataCollection19InitializeScanChunkERNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.e, ptr noundef nonnull align 8 dereferenceable(144) %i.bm, ptr noundef nonnull align 8 dereferenceable(72) %4)
          to label %bb.q unwind label %bb.aa

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  invoke void @_ZN6duckdb28WindowCollectionChunkScanner16PrefixStructTypeEmm(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %5, ptr noundef nonnull align 8 dereferenceable(232) %2, i64 noundef %i.aj, i64 noundef 0)
          to label %bb.r unwind label %bb.ab

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.s unwind label %bb.ac

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN6duckdb6VectorC1ENS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(104) %6, ptr noundef nonnull %7, i64 noundef 2048)
          to label %bb.t unwind label %bb.ad

bb.t:                                             ; preds = %bb.s
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.u unwind label %bb.ae

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN6duckdb6VectorC1ENS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(104) %8, ptr noundef nonnull %9, i64 noundef 2048)
          to label %bb.v unwind label %bb.af

bb.v:                                             ; preds = %bb.u
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #29
  %i.bn = load ptr, ptr %2, align 8, !tbaa !933, !nonnull !344, !align !494
  %i.bo = invoke noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection4ScanERNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.bn, ptr noundef nonnull align 8 dereferenceable(144) %i.bm, ptr noundef nonnull align 8 dereferenceable(72) %i.bl)
          to label %bb.w unwind label %bb.ag

bb.w:                                             ; preds = %bb.v
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 224 ; 4 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !934
  %i.br = add i64 %i.bq, 1
  store i64 %i.br, ptr %i.bp, align 8, !tbaa !934
  br i1 %i.bo, label %bb.ah, label %bb.dc

bb.x:                                             ; preds = %.noexc
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.y:                                             ; preds = %bb.n
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

bb.z:                                             ; preds = %bb.o
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.aa:                                            ; preds = %bb.p
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.ab:                                            ; preds = %bb.q
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.ac:                                            ; preds = %bb.r
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

bb.ad:                                            ; preds = %bb.s
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #29
  br label %bb.dn

bb.ae:                                            ; preds = %bb.t
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.af:                                            ; preds = %bb.u
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #29
  br label %bb.dm

bb.ag:                                            ; preds = %bb.v
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.ah:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  %i.cc = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef 2048)
          to label %.preheader.i.i unwind label %bb.ai

.preheader.i.i:                                   ; preds = %bb.ah
  %i.cd = load ptr, ptr %10, align 8, !tbaa !632  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader.i.i
  %index = phi i64 [ 0, %.preheader.i.i ], [ %index.next.1, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %.preheader.i.i ], [ %vec.ind.next.1, %vector.body ] ; 4 uses
  %15 = trunc <4 x i64> %vec.ind to <4 x i32>
  %16 = add <4 x i32> %15, splat (i32 1)
  %17 = trunc <4 x i64> %vec.ind to <4 x i32>
  %i.ce = add <4 x i32> %17, splat (i32 5)
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %index ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store <4 x i32> %16, ptr %i.cf, align 4, !tbaa !79
  store <4 x i32> %i.ce, ptr %i.cg, align 4, !tbaa !79
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 8) ; 2 uses
  %18 = trunc <4 x i64> %vec.ind.next to <4 x i32>
  %19 = add <4 x i32> %18, splat (i32 1)
  %20 = trunc <4 x i64> %vec.ind.next to <4 x i32>
  %i.ch = add <4 x i32> %20, splat (i32 5)
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %index ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  store <4 x i32> %19, ptr %i.cj, align 4, !tbaa !79
  store <4 x i32> %i.ch, ptr %i.ck, align 4, !tbaa !79
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %vec.ind.next.1 = add nuw <4 x i64> %vec.ind, splat (i64 16)
  %i.cl = icmp eq i64 %index.next.1, 2048
  br i1 %i.cl, label %_ZN6duckdb15SelectionVectorC2Emm.exit.i, label %vector.body, !llvm.loop !1622

bb.ai:                                            ; preds = %bb.ah
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.cc) #29
  br label %.body.i

_ZN6duckdb15SelectionVectorC2Emm.exit.i:          ; preds = %vector.body
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  %i.cn = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef 2048)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit.i unwind label %bb.aj

bb.aj:                                            ; preds = %_ZN6duckdb15SelectionVectorC2Emm.exit.i
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.cn) #29
  br label %.body91.i

_ZN6duckdb15SelectionVectorC2Em.exit.i:           ; preds = %_ZN6duckdb15SelectionVectorC2Emm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  %i.cp = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cp, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %12, i64 noundef 2048)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit95.preheader.i unwind label %bb.ak

_ZN6duckdb15SelectionVectorC2Em.exit95.preheader.i: ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.i
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 176 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %_ZN6duckdb15SelectionVectorC2Em.exit95.i

bb.ak:                                            ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.cp) #29
  br label %.body93.i

_ZN6duckdb15SelectionVectorC2Em.exit95.i:         ; preds = %bb.ch, %_ZN6duckdb15SelectionVectorC2Em.exit95.preheader.i
  %.1 = phi i64 [ %.0, %_ZN6duckdb15SelectionVectorC2Em.exit95.preheader.i ], [ %.2, %bb.ch ] ; 4 uses
  %.067.i = phi i64 [ %i.bk, %_ZN6duckdb15SelectionVectorC2Em.exit95.preheader.i ], [ %.269.i, %bb.ch ] ; 4 uses
  %.048.i = phi i1 [ %.not, %_ZN6duckdb15SelectionVectorC2Em.exit95.preheader.i ], [ %.149.i, %bb.ch ] ; 2 uses
  %i.cx = icmp ult i64 %.067.i, %i.aa
  br i1 %i.cx, label %bb.al, label %bb.cj

bb.al:                                            ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit95.i
  br i1 %.048.i, label %bb.am, label %bb.ba

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.cy = load i64, ptr %i.cq, align 8, !tbaa !698
  %i.cz = trunc i64 %i.cy to i32
  %i.da = add i32 %i.cz, -1
  store i32 %i.da, ptr %i.a, align 4, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cr, i8 0, i64 16, i1 false)
  store ptr %i.a, ptr %13, align 8, !tbaa !632
  invoke void @_ZN6duckdb9DataChunk5ResetEv(ptr noundef nonnull align 8 dereferenceable(72) %4)
          to label %bb.an unwind label %bb.ar

bb.an:                                            ; preds = %bb.am
  invoke void @_ZNK6duckdb9DataChunk4CopyERS0_RKNS_15SelectionVectorEmm(ptr noundef nonnull align 8 dereferenceable(72) %i.bl, ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(24) %13, i64 noundef 1, i64 noundef 0)
          to label %bb.ao unwind label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.db = add nuw i64 %.067.i, 1                  ; 3 uses
  %.not74.i = icmp ult i64 %i.db, %i.aa
  br i1 %.not74.i, label %bb.ap, label %bb.at

bb.ap:                                            ; preds = %bb.ao
  %i.dc = load ptr, ptr %2, align 8, !tbaa !933, !nonnull !344, !align !494
  %i.dd = invoke noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection4ScanERNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.dc, ptr noundef nonnull align 8 dereferenceable(144) %i.bm, ptr noundef nonnull align 8 dereferenceable(72) %i.bl)
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.de = load i64, ptr %i.bp, align 8, !tbaa !934
  %i.df = add i64 %i.de, 1
  store i64 %i.df, ptr %i.bp, align 8, !tbaa !934
  br i1 %i.dd, label %bb.as, label %bb.at

bb.ar:                                            ; preds = %bb.ap, %bb.an, %bb.am
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %.body99.i

bb.as:                                            ; preds = %bb.aq
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.aq, %bb.ao
  %cond.i = phi i1 [ true, %bb.as ], [ false, %bb.aq ], [ false, %bb.ao ]
  %.044.i = phi i32 [ 0, %bb.as ], [ 3, %bb.aq ], [ 3, %bb.ao ]
  %.043.i = phi ptr [ %i.bl, %bb.as ], [ null, %bb.aq ], [ null, %bb.ao ]
  %i.dh = load ptr, ptr %i.cs, align 8, !tbaa !509 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8 ; 4 uses
  %i.dj = load atomic i64, ptr %i.di acquire, align 8 ; 2 uses
  %i.dk = icmp eq i64 %i.dj, 4294967297
  %i.dl = trunc i64 %i.dj to i32                  ; 2 uses
  br i1 %i.dk, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 0, ptr %i.di, align 8, !tbaa !554
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 12
  store i32 0, ptr %i.dm, align 4, !tbaa !555
  %i.dn = load ptr, ptr %i.dh, align 8, !tbaa !437
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = load ptr, ptr %i.do, align 8
  call void %i.dp(ptr noundef nonnull align 8 dereferenceable(16) %i.dh) #29, !inline_history !1623
  %i.dq = load ptr, ptr %i.dh, align 8, !tbaa !437
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(16) %i.dh) #29, !inline_history !1623
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.aw:                                            ; preds = %bb.au
  %i.dt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !511
  %.not.i.i.i.i.i.i = icmp eq i8 %i.dt, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.du = add nsw i32 %i.dl, -1
  store i32 %i.du, ptr %i.di, align 8, !tbaa !79
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ay:                                            ; preds = %bb.aw
  %i.dv = atomicrmw volatile add ptr %i.di, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ay, %bb.ax
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.dl, %bb.ax ], [ %i.dv, %bb.ay ]
  %i.dw = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.dw, label %bb.az, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !458

bb.az:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dh) #29
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.av, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br i1 %cond.i, label %bb.bc, label %bb.ch

bb.ba:                                            ; preds = %bb.al
  %i.dx = load i64, ptr %i.cq, align 8, !tbaa !698
  %i.dy = add i64 %i.dx, -1                       ; 3 uses
  %.not73.i = icmp eq i64 %i.dy, 0
  br i1 %.not73.i, label %bb.ch, label %bb.bb, !llvm.loop !1624

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZN6duckdb9DataChunk5SliceERKS0_RKNS_15SelectionVectorEmm(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(72) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %i.dy, i64 noundef 0)
          to label %bb.bc unwind label %bb.ci

bb.bc:                                            ; preds = %bb.bb, %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %.168.i = phi i64 [ %i.db, %_ZN6duckdb15SelectionVectorD2Ev.exit.i ], [ %.067.i, %bb.bb ]
  %.1.i = phi ptr [ %.043.i, %_ZN6duckdb15SelectionVectorD2Ev.exit.i ], [ %3, %bb.bb ] ; 3 uses
  %.042.i = phi ptr [ %4, %_ZN6duckdb15SelectionVectorD2Ev.exit.i ], [ %i.bl, %bb.bb ] ; 2 uses
  %.0.i = phi i64 [ 1, %_ZN6duckdb15SelectionVectorD2Ev.exit.i ], [ %i.dy, %bb.bb ]
  invoke void @_ZN6duckdb28WindowCollectionChunkScanner22ReferenceStructColumnsERNS_9DataChunkERNS_6VectorEmm(ptr noundef nonnull align 8 dereferenceable(72) %.042.i, ptr noundef nonnull align 8 dereferenceable(104) %8, i64 noundef %i.aj, i64 noundef 0)
          to label %bb.bd unwind label %bb.ci

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZN6duckdb28WindowCollectionChunkScanner22ReferenceStructColumnsERNS_9DataChunkERNS_6VectorEmm(ptr noundef nonnull align 8 dereferenceable(72) %.1.i, ptr noundef nonnull align 8 dereferenceable(104) %6, i64 noundef %i.aj, i64 noundef 0)
          to label %bb.be unwind label %bb.ci

bb.be:                                            ; preds = %bb.bd
  %i.dz = invoke noundef i64 @_ZN6duckdb16VectorOperations12DistinctFromERNS_6VectorES2_NS_12optional_ptrIKNS_15SelectionVectorELb1EEEmNS3_IS4_Lb1EEES7_(ptr noundef nonnull align 8 dereferenceable(104) %6, ptr noundef nonnull align 8 dereferenceable(104) %8, ptr null, i64 noundef %.0.i, ptr nonnull %11, ptr nonnull %12)
          to label %bb.bf unwind label %bb.ci     ; 4 uses

bb.bf:                                            ; preds = %bb.be
  %.not76.i = icmp eq i64 %i.dz, 0                ; 2 uses
  br i1 %.not76.i, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.ea = invoke noundef ptr @_ZN6duckdb10FlatVector26IncrementalSelectionVectorEv()
          to label %bb.bh unwind label %bb.ci

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.eb = phi ptr [ %12, %bb.bf ], [ %i.ea, %bb.bg ]
  %i.ec = getelementptr i8, ptr %.042.i, i64 24
  %.042.val.i = load i64, ptr %i.ec, align 8, !tbaa !698
  %i.ed = getelementptr inbounds nuw i8, ptr %.1.i, i64 24
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !698
  %i.ef = call noundef i64 @llvm.umin.i64(i64 %.042.val.i, i64 %i.ee) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %1)
          to label %.noexc.i unwind label %bb.ci

.noexc.i:                                         ; preds = %bb.bh
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
  %i.l = load ptr, ptr %2, align 8, !tbaa !445    ; 2 uses
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
define internal fastcc void @"_ZN6duckdbL18WindowDeltaScannerIZNS_25WindowTokenTreeLocalState11BuildLeavesEvE3$_0EEvRNS_20ColumnDataCollectionEmmRKNS_6vectorImLb1ESaImEEEmT_"(ptr noundef nonnull align 8 dereferenceable(112) %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %4, ptr nonnull %5) unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !2032 {
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
  %i.c = load i64, ptr %i.b, align 8, !tbaa !507
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.cc, label %bb.b

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
  %i.h = load ptr, ptr %6, align 8, !tbaa !933, !nonnull !344, !align !494
  %i.i = invoke noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection4ScanERNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.h, ptr noundef nonnull align 8 dereferenceable(144) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %i.e)
          to label %bb.l unwind label %bb.v

bb.l:                                             ; preds = %bb.k
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 224 ; 4 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !934
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %i.j, align 8, !tbaa !934
  br i1 %i.i, label %bb.w, label %bb.bt

bb.m:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.n:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.o:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.p:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.q:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.r:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.s:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #29
  br label %bb.cf

bb.t:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.u:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #29
  br label %bb.ce

bb.v:                                             ; preds = %bb.k
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.w:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  %i.w = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %14, i64 noundef 2048)
          to label %.preheader.i unwind label %bb.x

.preheader.i:                                     ; preds = %bb.w
  %i.x = load ptr, ptr %14, align 8, !tbaa !632   ; 2 uses
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
  br i1 %i.af, label %_ZN6duckdb15SelectionVectorC2Emm.exit, label %vector.body, !llvm.loop !2028

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

_ZN6duckdb15SelectionVectorC2Em.exit95:           ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit95.preheader, %bb.az
  %.067 = phi i64 [ %.269, %bb.az ], [ %i.d, %_ZN6duckdb15SelectionVectorC2Em.exit95.preheader ] ; 4 uses
  %.048 = phi i1 [ %.149, %bb.az ], [ %i.g, %_ZN6duckdb15SelectionVectorC2Em.exit95.preheader ] ; 2 uses
  %.046 = phi i64 [ %.2, %bb.az ], [ 1, %_ZN6duckdb15SelectionVectorC2Em.exit95.preheader ] ; 2 uses
  %i.ap = icmp ult i64 %.067, %2
  br i1 %i.ap, label %bb.aa, label %bb.ba

bb.aa:                                            ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit95
  br i1 %.048, label %bb.ab, label %bb.ap

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.aq = load i64, ptr %i.ak, align 8, !tbaa !698
  %i.ar = trunc i64 %i.aq to i32
  %i.as = add i32 %i.ar, -1
  store i32 %i.as, ptr %i.a, align 4, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false)
  store ptr %i.a, ptr %17, align 8, !tbaa !632
  invoke void @_ZN6duckdb9DataChunk5ResetEv(ptr noundef nonnull align 8 dereferenceable(72) %8)
          to label %bb.ac unwind label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZNK6duckdb9DataChunk4CopyERS0_RKNS_15SelectionVectorEmm(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(24) %17, i64 noundef 1, i64 noundef 0)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.at = add nuw i64 %.067, 1                    ; 3 uses
  %i.au = load i64, ptr %i.am, align 8, !tbaa !985 ; 2 uses
  %.not74 = icmp ult i64 %i.at, %2
  br i1 %.not74, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.av = load ptr, ptr %6, align 8, !tbaa !933, !nonnull !344, !align !494
  %i.aw = invoke noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection4ScanERNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.av, ptr noundef nonnull align 8 dereferenceable(144) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %i.e)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ax = load i64, ptr %i.j, align 8, !tbaa !934
  %i.ay = add i64 %i.ax, 1
  store i64 %i.ay, ptr %i.j, align 8, !tbaa !934
  br i1 %i.aw, label %bb.ah, label %bb.ai

bb.ag:                                            ; preds = %bb.ae, %bb.ac, %bb.ab
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %17) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %.loopexit.split-lp.loopexit.split-lp

bb.ah:                                            ; preds = %bb.af
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ad, %bb.af, %bb.ah
  %cond = phi i1 [ true, %bb.ah ], [ false, %bb.af ], [ false, %bb.ad ]
  %.044 = phi i32 [ 0, %bb.ah ], [ 3, %bb.af ], [ 3, %bb.ad ]
  %.043 = phi ptr [ %i.e, %bb.ah ], [ null, %bb.af ], [ null, %bb.ad ]
  %i.ba = load ptr, ptr %i.an, align 8, !tbaa !509 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 4 uses
  %i.bc = load atomic i64, ptr %i.bb acquire, align 8 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 4294967297
  %i.be = trunc i64 %i.bc to i32                  ; 2 uses
  br i1 %i.bd, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.bb, align 8, !tbaa !554
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  store i32 0, ptr %i.bf, align 4, !tbaa !555
  %i.bg = load ptr, ptr %i.ba, align 8, !tbaa !437
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #29, !inline_history !25
  %i.bj = load ptr, ptr %i.ba, align 8, !tbaa !437
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #29, !inline_history !25
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

bb.al:                                            ; preds = %bb.aj
  %i.bm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !511
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
  br i1 %i.bp, label %bb.ao, label %_ZN6duckdb15SelectionVectorD2Ev.exit, !prof !458

bb.ao:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #29
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

_ZN6duckdb15SelectionVectorD2Ev.exit:             ; preds = %bb.ai, %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br i1 %cond, label %bb.ar, label %bb.az

bb.ap:                                            ; preds = %bb.aa
  %i.bq = load i64, ptr %i.ak, align 8, !tbaa !698
  %i.br = add i64 %i.bq, -1                       ; 3 uses
  %.not73 = icmp eq i64 %i.br, 0
  br i1 %.not73, label %bb.az, label %bb.aq, !llvm.loop !2029

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN6duckdb9DataChunk5SliceERKS0_RKNS_15SelectionVectorEmm(ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %14, i64 noundef %i.br, i64 noundef 0)
          to label %bb.ar unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ar:                                            ; preds = %bb.aq, %_ZN6duckdb15SelectionVectorD2Ev.exit
  %.168 = phi i64 [ %i.at, %_ZN6duckdb15SelectionVectorD2Ev.exit ], [ %.067, %bb.aq ]
  %.147 = phi i64 [ %i.au, %_ZN6duckdb15SelectionVectorD2Ev.exit ], [ %.046, %bb.aq ] ; 3 uses
  %.1 = phi ptr [ %.043, %_ZN6duckdb15SelectionVectorD2Ev.exit ], [ %7, %bb.aq ] ; 2 uses
  %.042 = phi ptr [ %8, %_ZN6duckdb15SelectionVectorD2Ev.exit ], [ %i.e, %bb.aq ] ; 2 uses
  %.0 = phi i64 [ 1, %_ZN6duckdb15SelectionVectorD2Ev.exit ], [ %i.br, %bb.aq ] ; 2 uses
  invoke void @_ZN6duckdb28WindowCollectionChunkScanner22ReferenceStructColumnsERNS_9DataChunkERNS_6VectorEmm(ptr noundef nonnull align 8 dereferenceable(72) %.042, ptr noundef nonnull align 8 dereferenceable(104) %12, i64 noundef %4, i64 noundef 0)
          to label %bb.as unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN6duckdb28WindowCollectionChunkScanner22ReferenceStructColumnsERNS_9DataChunkERNS_6VectorEmm(ptr noundef nonnull align 8 dereferenceable(72) %.1, ptr noundef nonnull align 8 dereferenceable(104) %10, i64 noundef %4, i64 noundef 0)
          to label %bb.at unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.at:                                            ; preds = %bb.as
  %i.bs = invoke noundef i64 @_ZN6duckdb16VectorOperations12DistinctFromERNS_6VectorES2_NS_12optional_ptrIKNS_15SelectionVectorELb1EEEmNS3_IS4_Lb1EEES7_(ptr noundef nonnull align 8 dereferenceable(104) %10, ptr noundef nonnull align 8 dereferenceable(104) %12, ptr null, i64 noundef %.0, ptr nonnull %15, ptr nonnull %16)
          to label %bb.au unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.au:                                            ; preds = %bb.at
  %.not76 = icmp eq i64 %i.bs, 0                  ; 2 uses
  br i1 %.not76, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.bt = invoke noundef ptr @_ZN6duckdb10FlatVector26IncrementalSelectionVectorEv()
          to label %bb.aw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.bu = phi ptr [ %16, %bb.au ], [ %i.bt, %bb.av ]
  %i.bv = getelementptr i8, ptr %.042, i64 24
  %.042.val = load i64, ptr %i.bv, align 8, !tbaa !698
  %i.bw = getelementptr i8, ptr %.1, i64 24
  %.1.val = load i64, ptr %i.bw, align 8, !tbaa !698
  %i.bx = call noundef i64 @llvm.umin.i64(i64 %.042.val, i64 %.1.val) ; 2 uses
  %i.by = sub i64 %i.bx, %i.bs
  %.not.i = icmp eq i64 %i.bx, %i.bs
  br i1 %.not.i, label %.preheader.i98, label %.lr.ph.i

.preheader.i98:                                   ; preds = %.noexc, %bb.aw
end_hunk_1
