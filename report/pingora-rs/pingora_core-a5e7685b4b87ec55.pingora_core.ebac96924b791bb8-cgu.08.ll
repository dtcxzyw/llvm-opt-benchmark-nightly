Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_core-a5e7685b4b87ec55.pingora_core.ebac96924b791bb8-cgu.08?download=true
inline.NumInlined: 763
inline.NumDeleted: 289
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9metablock20BrotliBuildMetaBlockNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core:bb.a
  br label %vector.body1465

vector.body1465:                                  ; preds = %vector.body1465, %vector.ph1464
  %index1466 = phi i64 [ 0, %vector.ph1464 ], [ %index.next1471.1, %vector.body1465 ] ; 4 uses
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index1466 ; 3 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 16 ; 2 uses
  %wide.load1467 = load <4 x i32>, ptr %i.qu, align 8, !noalias !607
  %wide.load1468 = load <4 x i32>, ptr %i.qv, align 8, !noalias !607
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %index1466 ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 16
  %wide.load1469 = load <4 x i32>, ptr %i.qw, align 4, !alias.scope !608, !noalias !605
  %wide.load1470 = load <4 x i32>, ptr %i.qx, align 4, !alias.scope !608, !noalias !605
  %i.qy = add <4 x i32> %wide.load1469, %wide.load1467
  %i.qz = add <4 x i32> %wide.load1470, %wide.load1468
  store <4 x i32> %i.qy, ptr %i.qu, align 8, !noalias !607
  store <4 x i32> %i.qz, ptr %i.qv, align 8, !noalias !607
  %index.next1471 = or disjoint i64 %index1466, 8 ; 2 uses
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index.next1471 ; 3 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 16 ; 2 uses
  %wide.load1467.1 = load <4 x i32>, ptr %i.ra, align 8, !noalias !607
  %wide.load1468.1 = load <4 x i32>, ptr %i.rb, align 8, !noalias !607
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %index.next1471 ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 16
  %wide.load1469.1 = load <4 x i32>, ptr %i.rc, align 4, !alias.scope !608, !noalias !605
  %wide.load1470.1 = load <4 x i32>, ptr %i.rd, align 4, !alias.scope !608, !noalias !605
  %i.re = add <4 x i32> %wide.load1469.1, %wide.load1467.1
  %i.rf = add <4 x i32> %wide.load1470.1, %wide.load1468.1
  store <4 x i32> %i.re, ptr %i.ra, align 8, !noalias !607
  store <4 x i32> %i.rf, ptr %i.rb, align 8, !noalias !607
  %index.next1471.1 = add nuw nsw i64 %index1466, 16 ; 2 uses
  %i.rg = icmp eq i64 %index.next1471.1, 256
  br i1 %i.rg, label %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram21HistogramAddHistogramNtB2_16HistogramLiteralECskeugdADtBsi_12pingora_core.exit.i.i, label %vector.body1465, !llvm.loop !455

_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram21HistogramAddHistogramNtB2_16HistogramLiteralECskeugdADtBsi_12pingora_core.exit.i.i: ; preds = %vector.body1465
  %i.rh = invoke noundef float @_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc8bit_cost20BrotliPopulationCostNtNtB4_9histogram16HistogramLiteralECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1040) %i.c, ptr noalias nofree noundef nonnull %12)
          to label %.noexc96.i unwind label %.thread156.thread203.loopexit.i, !noalias !591 ; 0 uses

.noexc96.i:                                       ; preds = %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram21HistogramAddHistogramNtB2_16HistogramLiteralECskeugdADtBsi_12pingora_core.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !600
  br label %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc7cluster30BrotliHistogramBitCostDistanceNtNtB4_9histogram16HistogramLiteralECskeugdADtBsi_12pingora_core.exit43.i.i

_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc7cluster30BrotliHistogramBitCostDistanceNtNtB4_9histogram16HistogramLiteralECskeugdADtBsi_12pingora_core.exit43.i.i: ; preds = %.noexc96.i, %bb.dg
  %exitcond184.not.i.i = icmp eq i64 %.sroa.0.082.i.i, %.val71
  br i1 %exitcond184.not.i.i, label %.split79.us.i.invoke.i, label %bb.dh

bb.dh:                                            ; preds = %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc7cluster30BrotliHistogramBitCostDistanceNtNtB4_9histogram16HistogramLiteralECskeugdADtBsi_12pingora_core.exit43.i.i
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %.val70, i64 %.sroa.0.082.i.i
  store i32 %.sroa.019.0.i.i, ptr %i.ri, align 4, !alias.scope !596, !noalias !597
  %i.rj = add nuw nsw i64 %.sroa.0.082.i.i, 1     ; 2 uses
  %exitcond185.not.i.i = icmp eq i64 %i.rj, %i.bx
  br i1 %exitcond185.not.i.i, label %.preheader48.i.i, label %.lr.ph84.split.i.i

.split79.us.i.invoke.i:                           ; preds = %._crit_edge.us.i.i, %bb.ct, %bb.cs, %bb.cr, %bb.cp, %bb.cv, %.lr.ph.split.us85.i.i, %bb.cw, %.lr.ph.split.us.us.i.i, %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc7cluster30BrotliHistogramBitCostDistanceNtNtB4_9histogram16HistogramLiteralECskeugdADtBsi_12pingora_core.exit43.i.i, %bb.df, %bb.dd, %bb.dc, %bb.db, %bb.da, %.lr.ph.i.i, %bb.cz, %bb.cy, %.lr.ph117.i.i
  %i.rk = phi i64 [ %.sroa.11.0.i, %.lr.ph.i.i ], [ %.sroa.11.0.i, %.lr.ph.split.us.us.i.i ], [ %.val71, %.lr.ph117.i.i ], [ %.sroa.11.0.i, %.lr.ph.split.us85.i.i ], [ %.val71, %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc7cluster30BrotliHistogramBitCostDistanceNtNtB4_9histogram16HistogramLiteralECskeugdADtBsi_12pingora_core.exit43.i.i ], [ %i.ca, %bb.cz ], [ %i.pc, %bb.cy ], [ %i.qb, %bb.da ], [ %i.qk, %bb.df ], [ %i.qg, %bb.dc ], [ 0, %bb.db ], [ %i.ca, %bb.dd ], [ %i.ou, %bb.cw ], [ %i.ns, %bb.cv ], [ %.val71, %._crit_edge.us.i.i ], [ %i.ca, %bb.cs ], [ %i.ml, %bb.cp ], [ %i.mp, %bb.ct ], [ 0, %bb.cr ]
  %i.rl = phi i64 [ %.sroa.11.0.i, %.lr.ph.i.i ], [ %.sroa.11.0.i, %.lr.ph.split.us.us.i.i ], [ %.val71, %.lr.ph117.i.i ], [ %.sroa.11.0.i, %.lr.ph.split.us85.i.i ], [ %.val71, %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc7cluster30BrotliHistogramBitCostDistanceNtNtB4_9histogram16HistogramLiteralECskeugdADtBsi_12pingora_core.exit43.i.i ], [ %i.ca, %bb.cz ], [ %i.kh, %bb.cy ], [ %i.kh, %bb.da ], [ %i.kh, %bb.df ], [ %.val71, %bb.dc ], [ 0, %bb.db ], [ %i.ca, %bb.dd ], [ %i.kh, %bb.cw ], [ %i.kh, %bb.cv ], [ %.val71, %._crit_edge.us.i.i ], [ %i.ca, %bb.cs ], [ %.val71, %bb.cp ], [ %i.kh, %bb.ct ], [ 0, %bb.cr ]
  %i.rm = phi ptr [ @4, %.lr.ph.i.i ], [ @11, %.lr.ph.split.us.us.i.i ], [ @1, %.lr.ph117.i.i ], [ @11, %.lr.ph.split.us85.i.i ], [ @10, %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc7cluster30BrotliHistogramBitCostDistanceNtNtB4_9histogram16HistogramLiteralECskeugdADtBsi_12pingora_core.exit43.i.i ], [ @3, %bb.cz ], [ @2, %bb.cy ], [ @5, %bb.da ], [ @9, %bb.df ], [ @7, %bb.dc ], [ @6, %bb.db ], [ @8, %bb.dd ], [ @12, %bb.cw ], [ @12, %bb.cv ], [ @10, %._crit_edge.us.i.i ], [ @8, %bb.cs ], [ @7, %bb.cp ], [ @9, %bb.ct ], [ @6, %bb.cr ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.rk, i64 noundef %i.rl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.rm) #21
          to label %.split79.us.i.cont.i unwind label %.thread156.thread203.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !591

.split79.us.i.cont.i:                             ; preds = %.split79.us.i.invoke.i
  unreachable

_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc7cluster20BrotliHistogramRemapNtNtB4_9histogram16HistogramLiteralECskeugdADtBsi_12pingora_core.exit.i: ; preds = %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram21HistogramAddHistogramNtB2_16HistogramLiteralECskeugdADtBsi_12pingora_core.exit47.i.i
  invoke void @_RNvXNtCsc389t4z7aPt_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsLfzX5BYWvK_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, ptr noalias noundef nonnull align 4 %.sroa.0113.0.i, i64 noundef %.sroa.11.0.i)
          to label %.noexc102 unwind label %.split473

.noexc102:                                        ; preds = %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc7cluster20BrotliHistogramRemapNtNtB4_9histogram16HistogramLiteralECskeugdADtBsi_12pingora_core.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !629)
  %i.rn = invoke { ptr, i64 } @_RNvXNtCsc389t4z7aPt_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsLfzX5BYWvK_15alloc_no_stdlib15stack_allocator9AllocatormE10alloc_cellCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, i64 noundef %i.bx)
          to label %.noexc103 unwind label %.split473 ; 2 uses

.noexc103:                                        ; preds = %.noexc102
  %.sroa.0.086.i.i = extractvalue { ptr, i64 } %i.rn, 0 ; 8 uses
  %.sroa.11.0.i.i = extractvalue { ptr, i64 } %i.rn, 1 ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.086.i.i) ]
  %i.ro = add i64 %i.bx, -1
  %i.rp = call i64 @llvm.umin.i64(i64 %.sroa.11.0.i.i, i64 %i.ro)
  %i.rq = add i64 %i.rp, 1                        ; 3 uses
  %min.iters.check1484 = icmp ult i64 %i.rq, 9
  br i1 %min.iters.check1484, label %scalar.ph1483.preheader, label %vector.ph1485

scalar.ph1483.preheader:                          ; preds = %vector.body1487, %.noexc103
  %.sroa.09.0159.i.i.ph = phi i64 [ 0, %.noexc103 ], [ %n.vec1486, %vector.body1487 ]
  br label %scalar.ph1483

vector.ph1485:                                    ; preds = %.noexc103
  %i.rr = and i64 %i.rq, 7                        ; 2 uses
  %i.rs = icmp eq i64 %i.rr, 0
  %i.rt = select i1 %i.rs, i64 8, i64 %i.rr
  %n.vec1486 = sub i64 %i.rq, %i.rt               ; 2 uses
  br label %vector.body1487

vector.body1487:                                  ; preds = %vector.body1487, %vector.ph1485
  %index1488 = phi i64 [ 0, %vector.ph1485 ], [ %index.next1489, %vector.body1487 ] ; 2 uses
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.086.i.i, i64 %index1488 ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 16
  store <4 x i32> splat (i32 -1), ptr %i.ru, align 4, !noalias !630
  store <4 x i32> splat (i32 -1), ptr %i.rv, align 4, !noalias !630
  %index.next1489 = add nuw i64 %index1488, 8     ; 2 uses
  %i.rw = icmp eq i64 %index.next1489, %n.vec1486
  br i1 %i.rw, label %scalar.ph1483.preheader, label %vector.body1487, !llvm.loop !459

._crit_edge.thread.i.critedge.i:                  ; preds = %.preheader.i.i
  invoke void @_RNvXNtCsc389t4z7aPt_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsLfzX5BYWvK_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, ptr noalias noundef nonnull align 4 %.sroa.0113.0.i, i64 noundef %.sroa.11.0.i)
          to label %.noexc104 unwind label %.split473

.noexc104:                                        ; preds = %._crit_edge.thread.i.critedge.i
  call void @llvm.experimental.noalias.scope.decl(metadata !629)
  %i.rx = invoke { ptr, i64 } @_RNvXs0_NtCsc389t4z7aPt_12alloc_stdlib10heap_allocINtB5_7WrapBoxmENtNtCskKLDkoKarTP_4core7default7Default7defaultCskeugdADtBsi_12pingora_core()
          to label %.noexc105 unwind label %.split473 ; 2 uses

.noexc105:                                        ; preds = %.noexc104
  %.sroa.0.086217.i.i = extractvalue { ptr, i64 } %i.rx, 0
  %.sroa.11.0218.i.i = extractvalue { ptr, i64 } %i.rx, 1
  br label %bb.di

._crit_edge.i.i:                                  ; preds = %bb.ea
  %i.ry = icmp eq i32 %.sroa.0.3.i.i, 0
  br i1 %i.ry, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %._crit_edge.i.i, %.noexc105
  %.sroa.11.0224230238.i.i = phi i64 [ %.sroa.11.0218.i.i, %.noexc105 ], [ %.sroa.11.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %.sroa.0.086219231236.i.i = phi ptr [ %.sroa.0.086217.i.i, %.noexc105 ], [ %.sroa.0.086.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.rz = invoke { ptr, i64 } @_RNvXs0_NtCsc389t4z7aPt_12alloc_stdlib10heap_allocINtB5_7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram16HistogramLiteralENtNtCskKLDkoKarTP_4core7default7Default7defaultCskeugdADtBsi_12pingora_core()
          to label %bb.dk unwind label %.thread112.i.i, !noalias !630 ; 2 uses

bb.dj:                                            ; preds = %._crit_edge.i.i
  %i.sa = zext i32 %.sroa.0.3.i.i to i64
  %i.sb = invoke { ptr, i64 } @_RNvXNtCsc389t4z7aPt_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsLfzX5BYWvK_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram16HistogramLiteralE10alloc_cellCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, i64 noundef %i.sa)
          to label %.thread239.i.i unwind label %.thread112.i.i, !noalias !630 ; 2 uses

.thread239.i.i:                                   ; preds = %bb.dj
  %.sroa.026.0243.i.i = extractvalue { ptr, i64 } %i.sb, 0 ; 2 uses
  %.sroa.5.0244.i.i = extractvalue { ptr, i64 } %i.sb, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.0243.i.i) ]
  br label %.lr.ph166.i.i

bb.dk:                                            ; preds = %bb.di
  %.sroa.026.0.i.i = extractvalue { ptr, i64 } %i.rz, 0 ; 3 uses
  %.sroa.5.0.i.i = extractvalue { ptr, i64 } %i.rz, 1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.0.i.i) ]
  br i1 %i.km, label %._crit_edge167.i.i, label %.lr.ph166.i.i

.lr.ph166.i.i:                                    ; preds = %bb.dk, %.thread239.i.i
  %.sroa.5.0254.i.i = phi i64 [ %.sroa.5.0244.i.i, %.thread239.i.i ], [ %.sroa.5.0.i.i, %bb.dk ] ; 6 uses
  %.sroa.026.0253.i.i = phi ptr [ %.sroa.026.0243.i.i, %.thread239.i.i ], [ %.sroa.026.0.i.i, %bb.dk ] ; 4 uses
  %.sroa.0.086219231235248.i.i = phi ptr [ %.sroa.0.086.i.i, %.thread239.i.i ], [ %.sroa.0.086219231236.i.i, %bb.dk ] ; 6 uses
  %.sroa.11.0224230237245.i.i = phi i64 [ %.sroa.11.0.i.i, %.thread239.i.i ], [ %.sroa.11.0224230238.i.i, %bb.dk ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.086219231235248.i.i) ]
  br label %bb.dq

._crit_edge167.i.i:                               ; preds = %bb.dx, %bb.dk
  %.sroa.5.0257.i.i = phi i64 [ %.sroa.5.0.i.i, %bb.dk ], [ %.sroa.5.0254.i.i, %bb.dx ] ; 7 uses
  %.sroa.026.0252.i.i = phi ptr [ %.sroa.026.0.i.i, %bb.dk ], [ %.sroa.026.0253.i.i, %bb.dx ] ; 5 uses
  %.sroa.0.086219231235249.i.i = phi ptr [ %.sroa.0.086219231236.i.i, %bb.dk ], [ %.sroa.0.086219231235248.i.i, %bb.dx ] ; 4 uses
  %.sroa.11.0224230237246.i.i = phi i64 [ %.sroa.11.0224230238.i.i, %bb.dk ], [ %.sroa.11.0224230237245.i.i, %bb.dx ] ; 3 uses
  %.sroa.0.1.lcssa.i.i = phi i32 [ 0, %bb.dk ], [ %.sroa.0.2.i.i, %bb.dx ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.086219231235249.i.i) ]
  invoke void @_RNvXNtCsc389t4z7aPt_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsLfzX5BYWvK_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, ptr noalias noundef nonnull align 4 %.sroa.0.086219231235249.i.i, i64 noundef %.sroa.11.0224230237246.i.i)
          to label %.preheader.i103.i unwind label %.thread.i.i, !noalias !630

.preheader.i103.i:                                ; preds = %._crit_edge167.i.i
  %i.sc = zext i32 %.sroa.0.1.lcssa.i.i to i64    ; 2 uses
  %.not176.i.i = icmp eq i32 %.sroa.0.1.lcssa.i.i, 0
  br i1 %.not176.i.i, label %._crit_edge172.i.i, label %.lr.ph171.i.i

._crit_edge172.i.i:                               ; preds = %bb.dp, %.preheader.i103.i
  invoke void @_RNvXNtCsc389t4z7aPt_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsLfzX5BYWvK_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram16HistogramLiteralE9free_cellCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, ptr noalias noundef nonnull align 8 %.sroa.026.0252.i.i, i64 noundef %.sroa.5.0257.i.i)
          to label %bb.eu unwind label %.split473

.lr.ph171.i.i:                                    ; preds = %.preheader.i103.i, %bb.dp
  %.sroa.09.3170.i.i = phi i64 [ %i.sh, %bb.dp ], [ 0, %.preheader.i103.i ] ; 5 uses
  %exitcond197.not.i.i = icmp eq i64 %.sroa.09.3170.i.i, %.sroa.5.0257.i.i
  br i1 %exitcond197.not.i.i, label %bb.dl, label %bb.dn

bb.dl:                                            ; preds = %.lr.ph171.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.5.0257.i.i, i64 noundef %.sroa.5.0257.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #23
          to label %bb.dm unwind label %.thread.i.i, !noalias !630

bb.dm:                                            ; preds = %bb.dv, %bb.do, %bb.dl
  unreachable

bb.dn:                                            ; preds = %.lr.ph171.i.i
  %exitcond198.not.i.i = icmp eq i64 %.sroa.09.3170.i.i, %i.kh
  br i1 %exitcond198.not.i.i, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 8868626958514208) %i.kh, i64 noundef range(i64 0, 8868626958514208) %i.kh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #23
          to label %bb.dm unwind label %.split.thread.i.i, !noalias !630

.split.thread.i.i:                                ; preds = %bb.do
  %i.sd = landingpad { ptr, i32 }
          cleanup
  %i.se = mul nuw nsw i64 %.sroa.5.0257.i.i, 1040
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.026.0252.i.i, i64 noundef range(i64 1, 0) %i.se, i64 noundef 8) #22, !noalias !630
  br label %.thread379.thread

bb.dp:                                            ; preds = %bb.dn
  %i.sf = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.026.0252.i.i, i64 %.sroa.09.3170.i.i
  %i.sg = getelementptr inbounds nuw [1040 x i8], ptr %i.kg, i64 %.sroa.09.3170.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.sg, ptr noundef nonnull align 8 dereferenceable(1040) %i.sf, i64 1040, i1 false), !noalias !631
  %i.sh = add nuw nsw i64 %.sroa.09.3170.i.i, 1   ; 2 uses
  %exitcond199.not.i.i = icmp eq i64 %i.sh, %i.sc
  br i1 %exitcond199.not.i.i, label %._crit_edge172.i.i, label %.lr.ph171.i.i

bb.dq:                                            ; preds = %bb.dx, %.lr.ph166.i.i
  %.sroa.0.1164.i.i = phi i32 [ 0, %.lr.ph166.i.i ], [ %.sroa.0.2.i.i, %bb.dx ] ; 4 uses
  %.sroa.09.2163.i.i = phi i64 [ 0, %.lr.ph166.i.i ], [ %i.sz, %bb.dx ] ; 3 uses
  %exitcond195.not.i.i = icmp eq i64 %.sroa.09.2163.i.i, %.val71
  br i1 %exitcond195.not.i.i, label %.invoke298.i.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %.val70, i64 %.sroa.09.2163.i.i ; 2 uses
  %i.sj = load i32, ptr %i.si, align 4, !alias.scope !632, !noalias !633, !noundef !10
  %i.sk = zext i32 %i.sj to i64                   ; 6 uses
  %i.sl = icmp ugt i64 %.sroa.11.0224230237245.i.i, %i.sk
  br i1 %i.sl, label %bb.ds, label %.invoke298.i.i

bb.ds:                                            ; preds = %bb.dr
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.086219231235248.i.i, i64 %i.sk ; 2 uses
  %i.sn = load i32, ptr %i.sm, align 4, !noalias !630, !noundef !10 ; 2 uses
  %i.so = icmp eq i32 %i.sn, %.sroa.0.1164.i.i
  br i1 %i.so, label %bb.dt, label %bb.dx

bb.dt:                                            ; preds = %bb.ds
  %i.sp = icmp samesign ugt i64 %i.kh, %i.sk
  br i1 %i.sp, label %bb.du, label %.invoke298.i.i

.invoke298.i.i:                                   ; preds = %bb.dt, %bb.dr, %bb.dq
  %i.sq = phi i64 [ %i.sk, %bb.dr ], [ %.val71, %bb.dq ], [ %i.sk, %bb.dt ]
  %i.sr = phi i64 [ %.sroa.11.0224230237245.i.i, %bb.dr ], [ %.val71, %bb.dq ], [ %i.kh, %bb.dt ]
  %i.ss = phi ptr [ @28, %bb.dr ], [ @27, %bb.dq ], [ @29, %bb.dt ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.sq, i64 noundef %i.sr, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ss) #23
          to label %.cont299.i.i unwind label %.thread.i.i, !noalias !630

.cont299.i.i:                                     ; preds = %.invoke298.i.i
  unreachable

bb.du:                                            ; preds = %bb.dt
  %i.st = zext i32 %.sroa.0.1164.i.i to i64       ; 3 uses
  %i.su = icmp ugt i64 %.sroa.5.0254.i.i, %i.st
  br i1 %i.su, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.st, i64 noundef %.sroa.5.0254.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #23
          to label %bb.dm unwind label %.thread.thread.i.i, !noalias !630

bb.dw:                                            ; preds = %bb.du
  %i.sv = getelementptr inbounds nuw [1040 x i8], ptr %i.kg, i64 %i.sk
  %i.sw = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.026.0253.i.i, i64 %i.st
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.sw, ptr noundef nonnull align 8 dereferenceable(1040) %i.sv, i64 1040, i1 false), !noalias !631
  %i.sx = add i32 %.sroa.0.1164.i.i, 1
  %.pre.i.i = load i32, ptr %i.sm, align 4, !noalias !630
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.ds
  %i.sy = phi i32 [ %.pre.i.i, %bb.dw ], [ %i.sn, %bb.ds ]
  %.sroa.0.2.i.i = phi i32 [ %i.sx, %bb.dw ], [ %.sroa.0.1164.i.i, %bb.ds ] ; 2 uses
  store i32 %i.sy, ptr %i.si, align 4, !alias.scope !632, !noalias !633
  %i.sz = add nuw nsw i64 %.sroa.09.2163.i.i, 1   ; 2 uses
  %exitcond196.not.i.i = icmp eq i64 %i.sz, %i.bx
  br i1 %exitcond196.not.i.i, label %._crit_edge167.i.i, label %bb.dq

.lr.ph162.i.i:                                    ; preds = %bb.eb, %bb.ea
  %.sroa.0.0161.i.i = phi i32 [ %.sroa.0.3.i.i, %bb.ea ], [ 0, %bb.eb ] ; 3 uses
  %.sroa.09.1160.i.i = phi i64 [ %i.tk, %bb.ea ], [ 0, %bb.eb ] ; 2 uses
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %.val70, i64 %.sroa.09.1160.i.i
  %i.tb = load i32, ptr %i.ta, align 4, !alias.scope !632, !noalias !633, !noundef !10
  %i.tc = zext i32 %i.tb to i64                   ; 3 uses
  %i.td = icmp ugt i64 %.sroa.11.0.i.i, %i.tc
  br i1 %i.td, label %bb.dy, label %.invoke.i.i

.invoke.i.i:                                      ; preds = %scalar.ph1483, %.lr.ph162.i.i
  %i.te = phi i64 [ %i.tc, %.lr.ph162.i.i ], [ %.sroa.11.0.i.i, %scalar.ph1483 ]
  %i.tf = phi ptr [ @31, %.lr.ph162.i.i ], [ @32, %scalar.ph1483 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.te, i64 noundef %.sroa.11.0.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.tf) #23
          to label %.cont.i.i unwind label %.thread112.i.i, !noalias !630

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.dy:                                            ; preds = %.lr.ph162.i.i
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.086.i.i, i64 %i.tc ; 2 uses
  %i.th = load i32, ptr %i.tg, align 4, !noalias !630, !noundef !10
  %i.ti = icmp eq i32 %i.th, -1
  br i1 %i.ti, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  store i32 %.sroa.0.0161.i.i, ptr %i.tg, align 4, !noalias !630
  %i.tj = add i32 %.sroa.0.0161.i.i, 1
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %.sroa.0.3.i.i = phi i32 [ %i.tj, %bb.dz ], [ %.sroa.0.0161.i.i, %bb.dy ] ; 3 uses
  %i.tk = add nuw nsw i64 %.sroa.09.1160.i.i, 1   ; 2 uses
  %exitcond194.not.i.i = icmp eq i64 %i.tk, %i.bx
  br i1 %exitcond194.not.i.i, label %._crit_edge.i.i, label %.lr.ph162.i.i

scalar.ph1483:                                    ; preds = %scalar.ph1483.preheader, %bb.eb
  %.sroa.09.0159.i.i = phi i64 [ %i.tm, %bb.eb ], [ %.sroa.09.0159.i.i.ph, %scalar.ph1483.preheader ] ; 3 uses
  %exitcond.not.i102.i = icmp eq i64 %.sroa.09.0159.i.i, %.sroa.11.0.i.i
  br i1 %exitcond.not.i102.i, label %.invoke.i.i, label %bb.eb

bb.eb:                                            ; preds = %scalar.ph1483
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.086.i.i, i64 %.sroa.09.0159.i.i
  store i32 -1, ptr %i.tl, align 4, !noalias !630
  %i.tm = add nuw i64 %.sroa.09.0159.i.i, 1       ; 2 uses
  %exitcond192.not.i.i = icmp eq i64 %i.tm, %i.bx
  br i1 %exitcond192.not.i.i, label %.lr.ph162.i.i, label %scalar.ph1483, !llvm.loop !461

.thread112.i.i:                                   ; preds = %.invoke.i.i, %bb.dj, %bb.di
  %.sroa.11.0227.i.i = phi i64 [ %.sroa.11.0.i.i, %bb.dj ], [ %.sroa.11.0224230238.i.i, %bb.di ], [ %.sroa.11.0.i.i, %.invoke.i.i ]
  %.sroa.0.086223.i.i = phi ptr [ %.sroa.0.086.i.i, %bb.dj ], [ %.sroa.0.086219231236.i.i, %bb.di ], [ %.sroa.0.086.i.i, %.invoke.i.i ]
  %lpad.thr_comm110.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

.thread.i.i:                                      ; preds = %.invoke298.i.i, %bb.dl, %._crit_edge167.i.i
  %.sroa.5.0256.i.i = phi i64 [ %.sroa.5.0257.i.i, %._crit_edge167.i.i ], [ %.sroa.5.0257.i.i, %bb.dl ], [ %.sroa.5.0254.i.i, %.invoke298.i.i ] ; 2 uses
  %.sroa.026.0251.i.i = phi ptr [ %.sroa.026.0252.i.i, %._crit_edge167.i.i ], [ %.sroa.026.0252.i.i, %bb.dl ], [ %.sroa.026.0253.i.i, %.invoke298.i.i ]
  %.sroa.11.0224230237247.i.i = phi i64 [ %.sroa.11.0224230237246.i.i, %._crit_edge167.i.i ], [ %.sroa.11.0224230237246.i.i, %bb.dl ], [ %.sroa.11.0224230237245.i.i, %.invoke298.i.i ] ; 2 uses
  %.sroa.0.086222.i.i = phi ptr [ %.sroa.0.086219231235249.i.i, %._crit_edge167.i.i ], [ %.sroa.0.086219231235249.i.i, %bb.dl ], [ %.sroa.0.086219231235248.i.i, %.invoke298.i.i ] ; 2 uses
  %i.tn = phi i1 [ false, %._crit_edge167.i.i ], [ false, %bb.dl ], [ true, %.invoke298.i.i ] ; 2 uses
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.to = icmp eq i64 %.sroa.5.0256.i.i, 0
  br i1 %i.to, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram16HistogramLiteralEECskeugdADtBsi_12pingora_core.exit.i.i, label %.split.i.i

.thread.thread.i.i:                               ; preds = %bb.dv
  %i.tp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tq = icmp eq i64 %.sroa.5.0254.i.i, 0
  br i1 %i.tq, label %.thread285.i.i, label %.split.thread274.i.i

.split.thread274.i.i:                             ; preds = %.thread.thread.i.i
  %i.tr = mul nuw nsw i64 %.sroa.5.0254.i.i, 1040
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.026.0253.i.i, i64 noundef range(i64 1, 0) %i.tr, i64 noundef 8) #22, !noalias !630
  br label %.thread285.i.i

.split.i.i:                                       ; preds = %.thread.i.i
  %i.ts = mul nuw nsw i64 %.sroa.5.0256.i.i, 1040
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.026.0251.i.i, i64 noundef range(i64 1, 0) %i.ts, i64 noundef 8) #22, !noalias !630
  br i1 %i.tn, label %bb.ec, label %.thread379.thread

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram16HistogramLiteralEECskeugdADtBsi_12pingora_core.exit.i.i: ; preds = %.thread.i.i
  br i1 %i.tn, label %bb.ec, label %.thread379.thread

bb.ec:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram16HistogramLiteralEECskeugdADtBsi_12pingora_core.exit.i.i, %.split.i.i, %.thread112.i.i
  %.sroa.11.0225.i.i = phi i64 [ %.sroa.11.0224230237247.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram16HistogramLiteralEECskeugdADtBsi_12pingora_core.exit.i.i ], [ %.sroa.11.0227.i.i, %.thread112.i.i ], [ %.sroa.11.0224230237247.i.i, %.split.i.i ] ; 2 uses
  %.sroa.0.086220.i.i = phi ptr [ %.sroa.0.086222.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram16HistogramLiteralEECskeugdADtBsi_12pingora_core.exit.i.i ], [ %.sroa.0.086223.i.i, %.thread112.i.i ], [ %.sroa.0.086222.i.i, %.split.i.i ]
  %.pn5796107.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram16HistogramLiteralEECskeugdADtBsi_12pingora_core.exit.i.i ], [ %lpad.thr_comm110.i.i, %.thread112.i.i ], [ %lpad.thr_comm.split-lp.i.i, %.split.i.i ] ; 2 uses
  %i.tt = icmp eq i64 %.sroa.11.0225.i.i, 0
  br i1 %i.tt, label %.thread379.thread, label %.thread285.i.i

.thread285.i.i:                                   ; preds = %bb.ec, %.split.thread274.i.i, %.thread.thread.i.i
  %.pn5796107291.i.i = phi { ptr, i32 } [ %.pn5796107.i.i, %bb.ec ], [ %i.tp, %.split.thread274.i.i ], [ %i.tp, %.thread.thread.i.i ]
  %.sroa.0.086220290.i.i = phi ptr [ %.sroa.0.086220.i.i, %bb.ec ], [ %.sroa.0.086219231235248.i.i, %.split.thread274.i.i ], [ %.sroa.0.086219231235248.i.i, %.thread.thread.i.i ] ; 2 uses
  %.sroa.11.0225289.i.i = phi i64 [ %.sroa.11.0225.i.i, %bb.ec ], [ %.sroa.11.0224230237245.i.i, %.split.thread274.i.i ], [ %.sroa.11.0224230237245.i.i, %.thread.thread.i.i ]
  %i.tu = shl nuw nsw i64 %.sroa.11.0225289.i.i, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.086220290.i.i) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.086220290.i.i, i64 noundef range(i64 1, 0) %i.tu, i64 noundef 4) #22, !noalias !630
  br label %.thread379.thread

.thread191.i:                                     ; preds = %bb.cj, %bb.ci
  %lpad.thr_comm189.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

bb.ed:                                            ; preds = %bb.cf
  %lpad.thr_comm.split-lp190.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tv = icmp eq i64 %i.md, 0
  br i1 %i.tv, label %.thread144.i, label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %.thread191.i
  %lpad.phi193.i = phi { ptr, i32 } [ %lpad.thr_comm189.i, %.thread191.i ], [ %lpad.thr_comm.split-lp190.i, %bb.ed ]
  %i.tw = shl nuw nsw i64 %i.md, 4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.me, i64 noundef range(i64 1, 0) %i.tw, i64 noundef 4) #22, !noalias !591
  br label %.thread144.i

._crit_edge.i98:                                  ; preds = %bb.ei
  %i.tx = icmp samesign ugt i64 %.sroa.08.2276.i, %.val71
  br i1 %i.tx, label %.invoke.i, label %bb.ef, !prof !11

.invoke.i:                                        ; preds = %bb.ef, %._crit_edge.i98
  %i.ty = phi i64 [ %.sroa.08.2276.i, %._crit_edge.i98 ], [ %.sroa.0.0277.i, %bb.ef ]
  %i.tz = phi i64 [ %.val71, %._crit_edge.i98 ], [ %.sroa.11.0.i, %bb.ef ] ; 2 uses
  %i.ua = phi ptr [ @37, %._crit_edge.i98 ], [ @36, %bb.ef ]
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.ty, i64 noundef %i.tz, i64 noundef %i.tz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ua) #23
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !591

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ef:                                            ; preds = %._crit_edge.i98
  %i.ub = icmp ugt i64 %.sroa.0.0277.i, %.sroa.11.0.i
  br i1 %i.ub, label %.invoke.i, label %bb.eg, !prof !11

bb.eg:                                            ; preds = %bb.ef
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %.val70, i64 %.sroa.08.2276.i
  %i.ud = sub nuw nsw i64 %.val71, %.sroa.08.2276.i
end_hunk_0
begin_hunk_1_@_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9metablock20BrotliBuildMetaBlockNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core:bb.a
  br label %vector.body1537

vector.body1537:                                  ; preds = %vector.body1537, %vector.ph1536
  %index1538 = phi i64 [ 0, %vector.ph1536 ], [ %index.next1543.1, %vector.body1537 ] ; 4 uses
  %i.acr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index1538 ; 3 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acr, i64 16 ; 2 uses
  %wide.load1539 = load <4 x i32>, ptr %i.acr, align 8, !noalias !660
  %wide.load1540 = load <4 x i32>, ptr %i.acs, align 8, !noalias !660
  %i.act = getelementptr inbounds nuw [4 x i8], ptr %i.acj, i64 %index1538 ; 2 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %i.act, i64 16
  %wide.load1541 = load <4 x i32>, ptr %i.act, align 4, !alias.scope !661, !noalias !658
  %wide.load1542 = load <4 x i32>, ptr %i.acu, align 4, !alias.scope !661, !noalias !658
  %i.acv = add <4 x i32> %wide.load1541, %wide.load1539
  %i.acw = add <4 x i32> %wide.load1542, %wide.load1540
  store <4 x i32> %i.acv, ptr %i.acr, align 8, !noalias !660
  store <4 x i32> %i.acw, ptr %i.acs, align 8, !noalias !660
  %index.next1543 = or disjoint i64 %index1538, 8 ; 2 uses
  %i.acx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index.next1543 ; 3 uses
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acx, i64 16 ; 2 uses
  %wide.load1539.1 = load <4 x i32>, ptr %i.acx, align 8, !noalias !660
  %wide.load1540.1 = load <4 x i32>, ptr %i.acy, align 8, !noalias !660
  %i.acz = getelementptr inbounds nuw [4 x i8], ptr %i.acj, i64 %index.next1543 ; 2 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 16
  %wide.load1541.1 = load <4 x i32>, ptr %i.acz, align 4, !alias.scope !661, !noalias !658
  %wide.load1542.1 = load <4 x i32>, ptr %i.ada, align 4, !alias.scope !661, !noalias !658
  %i.adb = add <4 x i32> %wide.load1541.1, %wide.load1539.1
  %i.adc = add <4 x i32> %wide.load1542.1, %wide.load1540.1
  store <4 x i32> %i.adb, ptr %i.acx, align 8, !noalias !660
  store <4 x i32> %i.adc, ptr %i.acy, align 8, !noalias !660
  %index.next1543.1 = add nuw nsw i64 %index1538, 16 ; 2 uses
  %i.add = icmp eq i64 %index.next1543.1, 544
  br i1 %i.add, label %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram21HistogramAddHistogramNtB2_17HistogramDistanceECskeugdADtBsi_12pingora_core.exit.i.i, label %vector.body1537, !llvm.loop !530

_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram21HistogramAddHistogramNtB2_17HistogramDistanceECskeugdADtBsi_12pingora_core.exit.i.i: ; preds = %vector.body1537
  %i.ade = invoke noundef float @_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc8bit_cost20BrotliPopulationCostNtNtB4_9histogram17HistogramDistanceECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2192) %i.a, ptr noalias nofree noundef nonnull %14)
          to label %.noexc96.i298 unwind label %.thread156.thread203.loopexit.i296, !noalias !644 ; 0 uses

.noexc96.i298:                                    ; preds = %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram21HistogramAddHistogramNtB2_17HistogramDistanceECskeugdADtBsi_12pingora_core.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !653
  br label %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc7cluster30BrotliHistogramBitCostDistanceNtNtB4_9histogram17HistogramDistanceECskeugdADtBsi_12pingora_core.exit43.i.i

_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc7cluster30BrotliHistogramBitCostDistanceNtNtB4_9histogram17HistogramDistanceECskeugdADtBsi_12pingora_core.exit43.i.i: ; preds = %.noexc96.i298, %bb.gj
  %exitcond184.not.i.i299 = icmp eq i64 %.sroa.0.082.i.i290, %.val69
  br i1 %exitcond184.not.i.i299, label %.split79.us.i.invoke.i173, label %bb.gk

bb.gk:                                            ; preds = %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc7cluster30BrotliHistogramBitCostDistanceNtNtB4_9histogram17HistogramDistanceECskeugdADtBsi_12pingora_core.exit43.i.i
  %i.adf = getelementptr inbounds nuw [4 x i8], ptr %.val68, i64 %.sroa.0.082.i.i290
  store i32 %.sroa.019.0.i.i292, ptr %i.adf, align 4, !alias.scope !649, !noalias !650
  %i.adg = add nuw nsw i64 %.sroa.0.082.i.i290, 1 ; 2 uses
  %exitcond185.not.i.i300 = icmp eq i64 %i.adg, %i.wi
  br i1 %exitcond185.not.i.i300, label %.preheader48.i.i301, label %.lr.ph84.split.i.i289

.split79.us.i.invoke.i173:                        ; preds = %._crit_edge.us.i.i197, %bb.fw, %bb.fv, %bb.fu, %bb.fs, %bb.fy, %.lr.ph.split.us85.i.i184, %bb.fz, %.lr.ph.split.us.us.i.i285, %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc7cluster30BrotliHistogramBitCostDistanceNtNtB4_9histogram17HistogramDistanceECskeugdADtBsi_12pingora_core.exit43.i.i, %bb.gi, %bb.gg, %bb.gf, %bb.ge, %bb.gd, %.lr.ph.i.i202, %bb.gc, %bb.gb, %.lr.ph117.i.i207
  %i.adh = phi i64 [ %.sroa.11.0.i120, %.lr.ph.i.i202 ], [ %.sroa.11.0.i120, %.lr.ph.split.us.us.i.i285 ], [ %i.cg, %bb.gg ], [ %.val69, %.lr.ph117.i.i207 ], [ %.sroa.11.0.i120, %.lr.ph.split.us85.i.i184 ], [ %i.cg, %bb.gc ], [ %i.aaz, %bb.gb ], [ %i.aby, %bb.gd ], [ %i.ach, %bb.gi ], [ %i.acd, %bb.gf ], [ 0, %bb.ge ], [ %.val69, %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc7cluster30BrotliHistogramBitCostDistanceNtNtB4_9histogram17HistogramDistanceECskeugdADtBsi_12pingora_core.exit43.i.i ], [ %i.aar, %bb.fz ], [ %i.zp, %bb.fy ], [ %i.cg, %bb.fv ], [ %i.ym, %bb.fw ], [ %i.yi, %bb.fs ], [ 0, %bb.fu ], [ %.val69, %._crit_edge.us.i.i197 ]
  %i.adi = phi i64 [ %.sroa.11.0.i120, %.lr.ph.i.i202 ], [ %.sroa.11.0.i120, %.lr.ph.split.us.us.i.i285 ], [ %i.cg, %bb.gg ], [ %.val69, %.lr.ph117.i.i207 ], [ %.sroa.11.0.i120, %.lr.ph.split.us85.i.i184 ], [ %i.cg, %bb.gc ], [ %i.wd, %bb.gb ], [ %i.wd, %bb.gd ], [ %i.wd, %bb.gi ], [ %.val69, %bb.gf ], [ 0, %bb.ge ], [ %.val69, %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc7cluster30BrotliHistogramBitCostDistanceNtNtB4_9histogram17HistogramDistanceECskeugdADtBsi_12pingora_core.exit43.i.i ], [ %i.wd, %bb.fz ], [ %i.wd, %bb.fy ], [ %i.cg, %bb.fv ], [ %i.wd, %bb.fw ], [ %.val69, %bb.fs ], [ 0, %bb.fu ], [ %.val69, %._crit_edge.us.i.i197 ]
  %i.adj = phi ptr [ @4, %.lr.ph.i.i202 ], [ @11, %.lr.ph.split.us.us.i.i285 ], [ @8, %bb.gg ], [ @1, %.lr.ph117.i.i207 ], [ @11, %.lr.ph.split.us85.i.i184 ], [ @3, %bb.gc ], [ @2, %bb.gb ], [ @5, %bb.gd ], [ @9, %bb.gi ], [ @7, %bb.gf ], [ @6, %bb.ge ], [ @10, %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc7cluster30BrotliHistogramBitCostDistanceNtNtB4_9histogram17HistogramDistanceECskeugdADtBsi_12pingora_core.exit43.i.i ], [ @12, %bb.fz ], [ @12, %bb.fy ], [ @8, %bb.fv ], [ @9, %bb.fw ], [ @7, %bb.fs ], [ @6, %bb.fu ], [ @10, %._crit_edge.us.i.i197 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.adh, i64 noundef %i.adi, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.adj) #21
          to label %.split79.us.i.cont.i174 unwind label %.thread156.thread203.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i165, !noalias !644

.split79.us.i.cont.i174:                          ; preds = %.split79.us.i.invoke.i173
  unreachable

_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc7cluster20BrotliHistogramRemapNtNtB4_9histogram17HistogramDistanceECskeugdADtBsi_12pingora_core.exit.i: ; preds = %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram21HistogramAddHistogramNtB2_17HistogramDistanceECskeugdADtBsi_12pingora_core.exit47.i.i
  invoke void @_RNvXNtCsc389t4z7aPt_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsLfzX5BYWvK_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, ptr noalias noundef nonnull align 4 %.sroa.0113.0.i119, i64 noundef %.sroa.11.0.i120)
          to label %.noexc319 unwind label %.split473.thread.thread

.noexc319:                                        ; preds = %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc7cluster20BrotliHistogramRemapNtNtB4_9histogram17HistogramDistanceECskeugdADtBsi_12pingora_core.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !682)
  %i.adk = invoke { ptr, i64 } @_RNvXNtCsc389t4z7aPt_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsLfzX5BYWvK_15alloc_no_stdlib15stack_allocator9AllocatormE10alloc_cellCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, i64 noundef %i.wi)
          to label %.noexc320 unwind label %.split473.thread.thread ; 2 uses

.noexc320:                                        ; preds = %.noexc319
  %.sroa.0.086.i.i214 = extractvalue { ptr, i64 } %i.adk, 0 ; 8 uses
  %.sroa.11.0.i.i215 = extractvalue { ptr, i64 } %i.adk, 1 ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.086.i.i214) ]
  %i.adl = add i64 %i.wi, -1
  %i.adm = call i64 @llvm.umin.i64(i64 %.sroa.11.0.i.i215, i64 %i.adl)
  %i.adn = add i64 %i.adm, 1                      ; 3 uses
  %min.iters.check1556 = icmp ult i64 %i.adn, 9
  br i1 %min.iters.check1556, label %scalar.ph1555.preheader, label %vector.ph1557

scalar.ph1555.preheader:                          ; preds = %vector.body1559, %.noexc320
  %.sroa.09.0159.i.i216.ph = phi i64 [ 0, %.noexc320 ], [ %n.vec1558, %vector.body1559 ]
  br label %scalar.ph1555

vector.ph1557:                                    ; preds = %.noexc320
  %i.ado = and i64 %i.adn, 7                      ; 2 uses
  %i.adp = icmp eq i64 %i.ado, 0
  %i.adq = select i1 %i.adp, i64 8, i64 %i.ado
  %n.vec1558 = sub i64 %i.adn, %i.adq             ; 2 uses
  br label %vector.body1559

vector.body1559:                                  ; preds = %vector.body1559, %vector.ph1557
  %index1560 = phi i64 [ 0, %vector.ph1557 ], [ %index.next1561, %vector.body1559 ] ; 2 uses
  %i.adr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.086.i.i214, i64 %index1560 ; 2 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adr, i64 16
  store <4 x i32> splat (i32 -1), ptr %i.adr, align 4, !noalias !683
  store <4 x i32> splat (i32 -1), ptr %i.ads, align 4, !noalias !683
  %index.next1561 = add nuw i64 %index1560, 8     ; 2 uses
  %i.adt = icmp eq i64 %index.next1561, %n.vec1558
  br i1 %i.adt, label %scalar.ph1555.preheader, label %vector.body1559, !llvm.loop !534

._crit_edge.thread.i.critedge.i282:               ; preds = %.preheader.i.i206
  invoke void @_RNvXNtCsc389t4z7aPt_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsLfzX5BYWvK_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, ptr noalias noundef nonnull align 4 %.sroa.0113.0.i119, i64 noundef %.sroa.11.0.i120)
          to label %.noexc321 unwind label %.split473.thread.thread

.noexc321:                                        ; preds = %._crit_edge.thread.i.critedge.i282
  call void @llvm.experimental.noalias.scope.decl(metadata !682)
  %i.adu = invoke { ptr, i64 } @_RNvXs0_NtCsc389t4z7aPt_12alloc_stdlib10heap_allocINtB5_7WrapBoxmENtNtCskKLDkoKarTP_4core7default7Default7defaultCskeugdADtBsi_12pingora_core()
          to label %.noexc322 unwind label %.split473.thread.thread ; 2 uses

.noexc322:                                        ; preds = %.noexc321
  %.sroa.0.086217.i.i283 = extractvalue { ptr, i64 } %i.adu, 0
  %.sroa.11.0218.i.i284 = extractvalue { ptr, i64 } %i.adu, 1
  br label %bb.gl

._crit_edge.i.i237:                               ; preds = %bb.hd
  %i.adv = icmp eq i32 %.sroa.0.3.i.i235, 0
  br i1 %i.adv, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %._crit_edge.i.i237, %.noexc322
  %.sroa.11.0224230238.i.i278 = phi i64 [ %.sroa.11.0218.i.i284, %.noexc322 ], [ %.sroa.11.0.i.i215, %._crit_edge.i.i237 ] ; 3 uses
  %.sroa.0.086219231236.i.i279 = phi ptr [ %.sroa.0.086217.i.i283, %.noexc322 ], [ %.sroa.0.086.i.i214, %._crit_edge.i.i237 ] ; 3 uses
  %i.adw = invoke { ptr, i64 } @_RNvXs0_NtCsc389t4z7aPt_12alloc_stdlib10heap_allocINtB5_7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram17HistogramDistanceENtNtCskKLDkoKarTP_4core7default7Default7defaultCskeugdADtBsi_12pingora_core()
          to label %bb.gn unwind label %.thread112.i.i223, !noalias !683 ; 2 uses

bb.gm:                                            ; preds = %._crit_edge.i.i237
  %i.adx = zext i32 %.sroa.0.3.i.i235 to i64
  %i.ady = invoke { ptr, i64 } @_RNvXNtCsc389t4z7aPt_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsLfzX5BYWvK_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram17HistogramDistanceE10alloc_cellCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, i64 noundef %i.adx)
          to label %.thread239.i.i238 unwind label %.thread112.i.i223, !noalias !683 ; 2 uses

.thread239.i.i238:                                ; preds = %bb.gm
  %.sroa.026.0243.i.i239 = extractvalue { ptr, i64 } %i.ady, 0 ; 2 uses
  %.sroa.5.0244.i.i240 = extractvalue { ptr, i64 } %i.ady, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.0243.i.i239) ]
  br label %.lr.ph166.i.i241

bb.gn:                                            ; preds = %bb.gl
  %.sroa.026.0.i.i280 = extractvalue { ptr, i64 } %i.adw, 0 ; 3 uses
  %.sroa.5.0.i.i281 = extractvalue { ptr, i64 } %i.adw, 1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.0.i.i280) ]
  br i1 %i.wj, label %._crit_edge167.i.i260, label %.lr.ph166.i.i241

.lr.ph166.i.i241:                                 ; preds = %bb.gn, %.thread239.i.i238
  %.sroa.5.0254.i.i242 = phi i64 [ %.sroa.5.0244.i.i240, %.thread239.i.i238 ], [ %.sroa.5.0.i.i281, %bb.gn ] ; 6 uses
  %.sroa.026.0253.i.i243 = phi ptr [ %.sroa.026.0243.i.i239, %.thread239.i.i238 ], [ %.sroa.026.0.i.i280, %bb.gn ] ; 4 uses
  %.sroa.0.086219231235248.i.i244 = phi ptr [ %.sroa.0.086.i.i214, %.thread239.i.i238 ], [ %.sroa.0.086219231236.i.i279, %bb.gn ] ; 6 uses
  %.sroa.11.0224230237245.i.i245 = phi i64 [ %.sroa.11.0.i.i215, %.thread239.i.i238 ], [ %.sroa.11.0224230238.i.i278, %bb.gn ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.086219231235248.i.i244) ]
  br label %bb.gt

._crit_edge167.i.i260:                            ; preds = %bb.ha, %bb.gn
  %.sroa.5.0257.i.i261 = phi i64 [ %.sroa.5.0.i.i281, %bb.gn ], [ %.sroa.5.0254.i.i242, %bb.ha ] ; 7 uses
  %.sroa.026.0252.i.i262 = phi ptr [ %.sroa.026.0.i.i280, %bb.gn ], [ %.sroa.026.0253.i.i243, %bb.ha ] ; 5 uses
  %.sroa.0.086219231235249.i.i263 = phi ptr [ %.sroa.0.086219231236.i.i279, %bb.gn ], [ %.sroa.0.086219231235248.i.i244, %bb.ha ] ; 4 uses
  %.sroa.11.0224230237246.i.i264 = phi i64 [ %.sroa.11.0224230238.i.i278, %bb.gn ], [ %.sroa.11.0224230237245.i.i245, %bb.ha ] ; 3 uses
  %.sroa.0.1.lcssa.i.i265 = phi i32 [ 0, %bb.gn ], [ %.sroa.0.2.i.i258, %bb.ha ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.086219231235249.i.i263) ]
  invoke void @_RNvXNtCsc389t4z7aPt_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsLfzX5BYWvK_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, ptr noalias noundef nonnull align 4 %.sroa.0.086219231235249.i.i263, i64 noundef %.sroa.11.0224230237246.i.i264)
          to label %.preheader.i103.i266 unwind label %.thread.i.i250, !noalias !683

.preheader.i103.i266:                             ; preds = %._crit_edge167.i.i260
  %i.adz = zext i32 %.sroa.0.1.lcssa.i.i265 to i64 ; 2 uses
  %.not176.i.i267 = icmp eq i32 %.sroa.0.1.lcssa.i.i265, 0
  br i1 %.not176.i.i267, label %._crit_edge172.i.i273, label %.lr.ph171.i.i268

._crit_edge172.i.i273:                            ; preds = %bb.gs, %.preheader.i103.i266
  invoke void @_RNvXNtCsc389t4z7aPt_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsLfzX5BYWvK_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram17HistogramDistanceE9free_cellCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, ptr noalias noundef nonnull align 8 %.sroa.026.0252.i.i262, i64 noundef %.sroa.5.0257.i.i261)
          to label %bb.hx unwind label %.split473.thread.thread

.lr.ph171.i.i268:                                 ; preds = %.preheader.i103.i266, %bb.gs
  %.sroa.09.3170.i.i269 = phi i64 [ %i.aee, %bb.gs ], [ 0, %.preheader.i103.i266 ] ; 5 uses
  %exitcond197.not.i.i270 = icmp eq i64 %.sroa.09.3170.i.i269, %.sroa.5.0257.i.i261
  br i1 %exitcond197.not.i.i270, label %bb.go, label %bb.gq

bb.go:                                            ; preds = %.lr.ph171.i.i268
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.5.0257.i.i261, i64 noundef %.sroa.5.0257.i.i261, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #23
          to label %bb.gp unwind label %.thread.i.i250, !noalias !683

bb.gp:                                            ; preds = %bb.gy, %bb.gr, %bb.go
  unreachable

bb.gq:                                            ; preds = %.lr.ph171.i.i268
  %exitcond198.not.i.i271 = icmp eq i64 %.sroa.09.3170.i.i269, %i.wd
  br i1 %exitcond198.not.i.i271, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 4207742717543238) %i.wd, i64 noundef range(i64 0, 4207742717543238) %i.wd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #23
          to label %bb.gp unwind label %.split.thread.i.i274, !noalias !683

.split.thread.i.i274:                             ; preds = %bb.gr
  %i.aea = landingpad { ptr, i32 }
          cleanup
  %i.aeb = mul nuw nsw i64 %.sroa.5.0257.i.i261, 2192
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.026.0252.i.i262, i64 noundef range(i64 1, 0) %i.aeb, i64 noundef 8) #22, !noalias !683
  br label %.thread379.thread503

bb.gs:                                            ; preds = %bb.gq
  %i.aec = getelementptr inbounds nuw [2192 x i8], ptr %.sroa.026.0252.i.i262, i64 %.sroa.09.3170.i.i269
  %i.aed = getelementptr inbounds nuw [2192 x i8], ptr %i.wc, i64 %.sroa.09.3170.i.i269
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2192) %i.aed, ptr noundef nonnull align 8 dereferenceable(2192) %i.aec, i64 2192, i1 false), !noalias !684
  %i.aee = add nuw nsw i64 %.sroa.09.3170.i.i269, 1 ; 2 uses
  %exitcond199.not.i.i272 = icmp eq i64 %i.aee, %i.adz
  br i1 %exitcond199.not.i.i272, label %._crit_edge172.i.i273, label %.lr.ph171.i.i268

bb.gt:                                            ; preds = %bb.ha, %.lr.ph166.i.i241
  %.sroa.0.1164.i.i246 = phi i32 [ 0, %.lr.ph166.i.i241 ], [ %.sroa.0.2.i.i258, %bb.ha ] ; 4 uses
  %.sroa.09.2163.i.i247 = phi i64 [ 0, %.lr.ph166.i.i241 ], [ %i.aew, %bb.ha ] ; 3 uses
  %exitcond195.not.i.i248 = icmp eq i64 %.sroa.09.2163.i.i247, %.val69
  br i1 %exitcond195.not.i.i248, label %.invoke298.i.i249, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.aef = getelementptr inbounds nuw [4 x i8], ptr %.val68, i64 %.sroa.09.2163.i.i247 ; 2 uses
  %i.aeg = load i32, ptr %i.aef, align 4, !alias.scope !685, !noalias !686, !noundef !10
  %i.aeh = zext i32 %i.aeg to i64                 ; 6 uses
  %i.aei = icmp ugt i64 %.sroa.11.0224230237245.i.i245, %i.aeh
  br i1 %i.aei, label %bb.gv, label %.invoke298.i.i249

bb.gv:                                            ; preds = %bb.gu
  %i.aej = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.086219231235248.i.i244, i64 %i.aeh ; 2 uses
  %i.aek = load i32, ptr %i.aej, align 4, !noalias !683, !noundef !10 ; 2 uses
  %i.ael = icmp eq i32 %i.aek, %.sroa.0.1164.i.i246
  br i1 %i.ael, label %bb.gw, label %bb.ha

bb.gw:                                            ; preds = %bb.gv
  %i.aem = icmp samesign ugt i64 %i.wd, %i.aeh
  br i1 %i.aem, label %bb.gx, label %.invoke298.i.i249

.invoke298.i.i249:                                ; preds = %bb.gw, %bb.gu, %bb.gt
  %i.aen = phi i64 [ %i.aeh, %bb.gu ], [ %.val69, %bb.gt ], [ %i.aeh, %bb.gw ]
  %i.aeo = phi i64 [ %.sroa.11.0224230237245.i.i245, %bb.gu ], [ %.val69, %bb.gt ], [ %i.wd, %bb.gw ]
  %i.aep = phi ptr [ @28, %bb.gu ], [ @27, %bb.gt ], [ @29, %bb.gw ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.aen, i64 noundef %i.aeo, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aep) #23
          to label %.cont299.i.i257 unwind label %.thread.i.i250, !noalias !683

.cont299.i.i257:                                  ; preds = %.invoke298.i.i249
  unreachable

bb.gx:                                            ; preds = %bb.gw
  %i.aeq = zext i32 %.sroa.0.1164.i.i246 to i64   ; 3 uses
  %i.aer = icmp ugt i64 %.sroa.5.0254.i.i242, %i.aeq
  br i1 %i.aer, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.aeq, i64 noundef %.sroa.5.0254.i.i242, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #23
          to label %bb.gp unwind label %.thread.thread.i.i275, !noalias !683

bb.gz:                                            ; preds = %bb.gx
  %i.aes = getelementptr inbounds nuw [2192 x i8], ptr %i.wc, i64 %i.aeh
  %i.aet = getelementptr inbounds nuw [2192 x i8], ptr %.sroa.026.0253.i.i243, i64 %i.aeq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2192) %i.aet, ptr noundef nonnull align 8 dereferenceable(2192) %i.aes, i64 2192, i1 false), !noalias !684
  %i.aeu = add i32 %.sroa.0.1164.i.i246, 1
  %.pre.i.i277 = load i32, ptr %i.aej, align 4, !noalias !683
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %bb.gv
  %i.aev = phi i32 [ %.pre.i.i277, %bb.gz ], [ %i.aek, %bb.gv ]
  %.sroa.0.2.i.i258 = phi i32 [ %i.aeu, %bb.gz ], [ %.sroa.0.1164.i.i246, %bb.gv ] ; 2 uses
  store i32 %i.aev, ptr %i.aef, align 4, !alias.scope !685, !noalias !686
  %i.aew = add nuw nsw i64 %.sroa.09.2163.i.i247, 1 ; 2 uses
  %exitcond196.not.i.i259 = icmp eq i64 %i.aew, %i.wi
  br i1 %exitcond196.not.i.i259, label %._crit_edge167.i.i260, label %bb.gt

.lr.ph162.i.i219:                                 ; preds = %bb.he, %bb.hd
  %.sroa.0.0161.i.i220 = phi i32 [ %.sroa.0.3.i.i235, %bb.hd ], [ 0, %bb.he ] ; 3 uses
  %.sroa.09.1160.i.i221 = phi i64 [ %i.afh, %bb.hd ], [ 0, %bb.he ] ; 2 uses
  %i.aex = getelementptr inbounds nuw [4 x i8], ptr %.val68, i64 %.sroa.09.1160.i.i221
  %i.aey = load i32, ptr %i.aex, align 4, !alias.scope !685, !noalias !686, !noundef !10
  %i.aez = zext i32 %i.aey to i64                 ; 3 uses
  %i.afa = icmp ugt i64 %.sroa.11.0.i.i215, %i.aez
  br i1 %i.afa, label %bb.hb, label %.invoke.i.i222

.invoke.i.i222:                                   ; preds = %scalar.ph1555, %.lr.ph162.i.i219
  %i.afb = phi i64 [ %i.aez, %.lr.ph162.i.i219 ], [ %.sroa.11.0.i.i215, %scalar.ph1555 ]
  %i.afc = phi ptr [ @31, %.lr.ph162.i.i219 ], [ @32, %scalar.ph1555 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.afb, i64 noundef %.sroa.11.0.i.i215, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.afc) #23
          to label %.cont.i.i234 unwind label %.thread112.i.i223, !noalias !683

.cont.i.i234:                                     ; preds = %.invoke.i.i222
  unreachable

bb.hb:                                            ; preds = %.lr.ph162.i.i219
  %i.afd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.086.i.i214, i64 %i.aez ; 2 uses
  %i.afe = load i32, ptr %i.afd, align 4, !noalias !683, !noundef !10
  %i.aff = icmp eq i32 %i.afe, -1
  br i1 %i.aff, label %bb.hc, label %bb.hd

bb.hc:                                            ; preds = %bb.hb
  store i32 %.sroa.0.0161.i.i220, ptr %i.afd, align 4, !noalias !683
  %i.afg = add i32 %.sroa.0.0161.i.i220, 1
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hc, %bb.hb
  %.sroa.0.3.i.i235 = phi i32 [ %i.afg, %bb.hc ], [ %.sroa.0.0161.i.i220, %bb.hb ] ; 3 uses
  %i.afh = add nuw nsw i64 %.sroa.09.1160.i.i221, 1 ; 2 uses
  %exitcond194.not.i.i236 = icmp eq i64 %i.afh, %i.wi
  br i1 %exitcond194.not.i.i236, label %._crit_edge.i.i237, label %.lr.ph162.i.i219

scalar.ph1555:                                    ; preds = %scalar.ph1555.preheader, %bb.he
  %.sroa.09.0159.i.i216 = phi i64 [ %i.afj, %bb.he ], [ %.sroa.09.0159.i.i216.ph, %scalar.ph1555.preheader ] ; 3 uses
  %exitcond.not.i102.i217 = icmp eq i64 %.sroa.09.0159.i.i216, %.sroa.11.0.i.i215
  br i1 %exitcond.not.i102.i217, label %.invoke.i.i222, label %bb.he

bb.he:                                            ; preds = %scalar.ph1555
  %i.afi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.086.i.i214, i64 %.sroa.09.0159.i.i216
  store i32 -1, ptr %i.afi, align 4, !noalias !683
  %i.afj = add nuw i64 %.sroa.09.0159.i.i216, 1   ; 2 uses
  %exitcond192.not.i.i218 = icmp eq i64 %i.afj, %i.wi
  br i1 %exitcond192.not.i.i218, label %.lr.ph162.i.i219, label %scalar.ph1555, !llvm.loop !536

.thread112.i.i223:                                ; preds = %.invoke.i.i222, %bb.gm, %bb.gl
  %.sroa.11.0227.i.i224 = phi i64 [ %.sroa.11.0.i.i215, %bb.gm ], [ %.sroa.11.0224230238.i.i278, %bb.gl ], [ %.sroa.11.0.i.i215, %.invoke.i.i222 ]
  %.sroa.0.086223.i.i225 = phi ptr [ %.sroa.0.086.i.i214, %bb.gm ], [ %.sroa.0.086219231236.i.i279, %bb.gl ], [ %.sroa.0.086.i.i214, %.invoke.i.i222 ]
  %lpad.thr_comm110.i.i226 = landingpad { ptr, i32 }
          cleanup
  br label %bb.hf

.thread.i.i250:                                   ; preds = %.invoke298.i.i249, %bb.go, %._crit_edge167.i.i260
  %.sroa.5.0256.i.i251 = phi i64 [ %.sroa.5.0257.i.i261, %._crit_edge167.i.i260 ], [ %.sroa.5.0257.i.i261, %bb.go ], [ %.sroa.5.0254.i.i242, %.invoke298.i.i249 ] ; 2 uses
  %.sroa.026.0251.i.i252 = phi ptr [ %.sroa.026.0252.i.i262, %._crit_edge167.i.i260 ], [ %.sroa.026.0252.i.i262, %bb.go ], [ %.sroa.026.0253.i.i243, %.invoke298.i.i249 ]
  %.sroa.11.0224230237247.i.i253 = phi i64 [ %.sroa.11.0224230237246.i.i264, %._crit_edge167.i.i260 ], [ %.sroa.11.0224230237246.i.i264, %bb.go ], [ %.sroa.11.0224230237245.i.i245, %.invoke298.i.i249 ] ; 2 uses
  %.sroa.0.086222.i.i254 = phi ptr [ %.sroa.0.086219231235249.i.i263, %._crit_edge167.i.i260 ], [ %.sroa.0.086219231235249.i.i263, %bb.go ], [ %.sroa.0.086219231235248.i.i244, %.invoke298.i.i249 ] ; 2 uses
  %i.afk = phi i1 [ false, %._crit_edge167.i.i260 ], [ false, %bb.go ], [ true, %.invoke298.i.i249 ] ; 2 uses
  %lpad.thr_comm.split-lp.i.i255 = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.afl = icmp eq i64 %.sroa.5.0256.i.i251, 0
  br i1 %i.afl, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram17HistogramDistanceEECskeugdADtBsi_12pingora_core.exit.i.i, label %.split.i.i256

.thread.thread.i.i275:                            ; preds = %bb.gy
  %i.afm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.afn = icmp eq i64 %.sroa.5.0254.i.i242, 0
  br i1 %i.afn, label %.thread285.i.i230, label %.split.thread274.i.i276

.split.thread274.i.i276:                          ; preds = %.thread.thread.i.i275
  %i.afo = mul nuw nsw i64 %.sroa.5.0254.i.i242, 2192
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.026.0253.i.i243, i64 noundef range(i64 1, 0) %i.afo, i64 noundef 8) #22, !noalias !683
  br label %.thread285.i.i230

.split.i.i256:                                    ; preds = %.thread.i.i250
  %i.afp = mul nuw nsw i64 %.sroa.5.0256.i.i251, 2192
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.026.0251.i.i252, i64 noundef range(i64 1, 0) %i.afp, i64 noundef 8) #22, !noalias !683
  br i1 %i.afk, label %bb.hf, label %.thread379.thread503

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram17HistogramDistanceEECskeugdADtBsi_12pingora_core.exit.i.i: ; preds = %.thread.i.i250
  br i1 %i.afk, label %bb.hf, label %.thread379.thread503

bb.hf:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram17HistogramDistanceEECskeugdADtBsi_12pingora_core.exit.i.i, %.split.i.i256, %.thread112.i.i223
  %.sroa.11.0225.i.i227 = phi i64 [ %.sroa.11.0224230237247.i.i253, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram17HistogramDistanceEECskeugdADtBsi_12pingora_core.exit.i.i ], [ %.sroa.11.0227.i.i224, %.thread112.i.i223 ], [ %.sroa.11.0224230237247.i.i253, %.split.i.i256 ] ; 2 uses
  %.sroa.0.086220.i.i228 = phi ptr [ %.sroa.0.086222.i.i254, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram17HistogramDistanceEECskeugdADtBsi_12pingora_core.exit.i.i ], [ %.sroa.0.086223.i.i225, %.thread112.i.i223 ], [ %.sroa.0.086222.i.i254, %.split.i.i256 ]
  %.pn5796107.i.i229 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i255, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram17HistogramDistanceEECskeugdADtBsi_12pingora_core.exit.i.i ], [ %lpad.thr_comm110.i.i226, %.thread112.i.i223 ], [ %lpad.thr_comm.split-lp.i.i255, %.split.i.i256 ] ; 2 uses
  %i.afq = icmp eq i64 %.sroa.11.0225.i.i227, 0
  br i1 %i.afq, label %.thread379.thread503, label %.thread285.i.i230

.thread285.i.i230:                                ; preds = %bb.hf, %.split.thread274.i.i276, %.thread.thread.i.i275
  %.pn5796107291.i.i231 = phi { ptr, i32 } [ %.pn5796107.i.i229, %bb.hf ], [ %i.afm, %.split.thread274.i.i276 ], [ %i.afm, %.thread.thread.i.i275 ]
  %.sroa.0.086220290.i.i232 = phi ptr [ %.sroa.0.086220.i.i228, %bb.hf ], [ %.sroa.0.086219231235248.i.i244, %.split.thread274.i.i276 ], [ %.sroa.0.086219231235248.i.i244, %.thread.thread.i.i275 ] ; 2 uses
  %.sroa.11.0225289.i.i233 = phi i64 [ %.sroa.11.0225.i.i227, %bb.hf ], [ %.sroa.11.0224230237245.i.i245, %.split.thread274.i.i276 ], [ %.sroa.11.0224230237245.i.i245, %.thread.thread.i.i275 ]
  %i.afr = shl nuw nsw i64 %.sroa.11.0225289.i.i233, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.086220290.i.i232) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.086220290.i.i232, i64 noundef range(i64 1, 0) %i.afr, i64 noundef 4) #22, !noalias !683
  br label %.thread379.thread503

.thread191.i311:                                  ; preds = %bb.fm, %bb.fl
  %lpad.thr_comm189.i312 = landingpad { ptr, i32 }
          cleanup
  br label %bb.hh

bb.hg:                                            ; preds = %bb.fi
  %lpad.thr_comm.split-lp190.i309 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.afs = icmp eq i64 %i.ya, 0
  br i1 %i.afs, label %.thread144.i136, label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %.thread191.i311
  %lpad.phi193.i310 = phi { ptr, i32 } [ %lpad.thr_comm189.i312, %.thread191.i311 ], [ %lpad.thr_comm.split-lp190.i309, %bb.hg ]
  %i.aft = shl nuw nsw i64 %i.ya, 4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.yb, i64 noundef range(i64 1, 0) %i.aft, i64 noundef 4) #22, !noalias !644
  br label %.thread144.i136

._crit_edge.i152:                                 ; preds = %bb.hl
  %i.afu = icmp samesign ugt i64 %.sroa.08.2276.i146, %.val69
  br i1 %i.afu, label %.invoke.i313, label %bb.hi, !prof !11

.invoke.i313:                                     ; preds = %bb.hi, %._crit_edge.i152
  %i.afv = phi i64 [ %.sroa.08.2276.i146, %._crit_edge.i152 ], [ %.sroa.0.0277.i145, %bb.hi ]
  %i.afw = phi i64 [ %.val69, %._crit_edge.i152 ], [ %.sroa.11.0.i120, %bb.hi ] ; 2 uses
  %i.afx = phi ptr [ @37, %._crit_edge.i152 ], [ @36, %bb.hi ]
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.afv, i64 noundef %i.afw, i64 noundef %i.afw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.afx) #23
          to label %.cont.i314 unwind label %.loopexit.split-lp.loopexit.split-lp.i161, !noalias !644

.cont.i314:                                       ; preds = %.invoke.i313
  unreachable

bb.hi:                                            ; preds = %._crit_edge.i152
  %i.afy = icmp ugt i64 %.sroa.0.0277.i145, %.sroa.11.0.i120
  br i1 %i.afy, label %.invoke.i313, label %bb.hj, !prof !11

bb.hj:                                            ; preds = %bb.hi
  %i.afz = getelementptr inbounds nuw [4 x i8], ptr %.val68, i64 %.sroa.08.2276.i146
  %i.aga = sub nuw nsw i64 %.val69, %.sroa.08.2276.i146
end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtBa_6marker4SendNtB2L_4SyncEL_ENCINvMNtB1a_5sliceSB15_11sort_by_keysNCNvMB1H_NtB1H_11HttpModules10add_module0E0EB1L_:bb.a
  %i.df = sub i16 0, %i.de
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val14.i.i) ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.val14.i.i, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8, !invariant.load !10, !noalias !1114, !nonnull !10
  %i.di = call noundef i16 %i.dh(ptr noundef nonnull %.val13.i.i) #26, !noalias !1114, !inline_history !1052
  %i.dj = sub i16 0, %i.di
  %i.dk = icmp slt i16 %i.df, %i.dj
  br i1 %i.dk, label %.preheader.i.preheader, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtBa_6marker4SendNtB2O_4SyncEL_ENCINvMNtB1d_5sliceSB18_11sort_by_keysNCNvMB1K_NtB1K_11HttpModules10add_module0E0EB1O_.exit.i

.preheader.i.preheader:                           ; preds = %.noexc35.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, ptr noundef nonnull align 8 dereferenceable(16) %i.cz, i64 16, i1 false), !alias.scope !1113, !noalias !1112
  %i.dl = icmp eq i64 %.sroa.05.010.i, 1
  br i1 %i.dl, label %._crit_edge350, label %.lr.ph349

.preheader.i:                                     ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i34.i348, ptr noundef nonnull align 8 dereferenceable(16) %i.dn, i64 16, i1 false), !alias.scope !1113, !noalias !1112
  %i.dm = icmp eq ptr %i.dn, %2
  br i1 %i.dm, label %._crit_edge350, label %.lr.ph349

.lr.ph349:                                        ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.0.0.i34.i348 = phi ptr [ %i.dn, %.preheader.i ], [ %i.cz, %.preheader.i.preheader ] ; 5 uses
  %i.dn = getelementptr inbounds i8, ptr %.sroa.0.0.i34.i348, i64 -16 ; 4 uses
  %.val9.i.i = load ptr, ptr %i.dn, align 8, !alias.scope !1113, !noalias !1112 ; 2 uses
  %i.do = getelementptr i8, ptr %.sroa.0.0.i34.i348, i64 -8
  %.val10.i.i = load ptr, ptr %i.do, align 8, !alias.scope !1113, !noalias !1112 ; 2 uses
  %i.dp = invoke noundef i16 %i.dd(ptr noundef nonnull %.val11.i.i) #26
          to label %.noexc.i.i unwind label %.loopexit22.i, !noalias !1114, !inline_history !2

.noexc.i.i:                                       ; preds = %.lr.ph349
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i.i) ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.val10.i.i, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !invariant.load !10, !noalias !1114, !nonnull !10
  %i.ds = invoke noundef i16 %i.dr(ptr noundef nonnull %.val9.i.i) #26
          to label %bb.p unwind label %.loopexit22.i, !noalias !1114, !inline_history !2

bb.p:                                             ; preds = %.noexc.i.i
  %i.dt = sub i16 0, %i.dp
  %i.du = sub i16 0, %i.ds
  %i.dv = icmp slt i16 %i.dt, %i.du
  br i1 %i.dv, label %.preheader.i, label %._crit_edge350

._crit_edge350:                                   ; preds = %.preheader.i, %bb.p, %.preheader.i.preheader
  %.sroa.0.0.i34.lcssa.i = phi ptr [ %2, %.preheader.i.preheader ], [ %2, %.preheader.i ], [ %.sroa.0.0.i34.i348, %bb.p ] ; 2 uses
  store ptr %.val11.i.i, ptr %.sroa.0.0.i34.lcssa.i, align 8, !alias.scope !1113, !noalias !1115
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i34.lcssa.i, i64 8
  store ptr %.val12.i.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !1113, !noalias !1115
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtBa_6marker4SendNtB2O_4SyncEL_ENCINvMNtB1d_5sliceSB18_11sort_by_keysNCNvMB1K_NtB1K_11HttpModules10add_module0E0EB1O_.exit.i

.loopexit22.i:                                    ; preds = %.noexc.i.i, %.lr.ph349
  %lpad.loopexit28.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp23.i:                           ; preds = %.noexc.i.1.i, %.lr.ph354
  %lpad.loopexit.split-lp29.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp23.i, %.loopexit22.i
  %.val11.i.lcssa.i = phi ptr [ %.val11.i.i, %.loopexit22.i ], [ %.val11.i.1.i, %.loopexit.split-lp23.i ]
  %.val12.i.lcssa.i = phi ptr [ %.val12.i.i, %.loopexit22.i ], [ %.val12.i.1.i, %.loopexit.split-lp23.i ]
  %.sroa.0.0.i34.lcssa17.i = phi ptr [ %.sroa.0.0.i34.i348, %.loopexit22.i ], [ %.sroa.0.0.i34.1.i353, %.loopexit.split-lp23.i ] ; 2 uses
  %lpad.phi30.i = phi { ptr, i32 } [ %lpad.loopexit28.i, %.loopexit22.i ], [ %lpad.loopexit.split-lp29.i, %.loopexit.split-lp23.i ]
  store ptr %.val11.i.lcssa.i, ptr %.sroa.0.0.i34.lcssa17.i, align 8, !alias.scope !1113, !noalias !1122
  %.sroa.5.0..sroa.0.0.lcssa7.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i34.lcssa17.i, i64 8
  store ptr %.val12.i.lcssa.i, ptr %.sroa.5.0..sroa.0.0.lcssa7.sroa_idx.i.i, align 8, !alias.scope !1113, !noalias !1122
  br label %.body.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtBa_6marker4SendNtB2O_4SyncEL_ENCINvMNtB1d_5sliceSB18_11sort_by_keysNCNvMB1K_NtB1K_11HttpModules10add_module0E0EB1O_.exit.i: ; preds = %._crit_edge350, %.noexc35.i
  %i.dw = add nuw nsw i64 %.sroa.05.010.i, 1      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dw, %i.l
  br i1 %exitcond.not.i, label %.loopexit4.i, label %.noexc35.i

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0138.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph144, %.lr.ph ]
  call fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtBa_6marker4SendNtB2C_4SyncEL_ENCINvMNtB11_5sliceSBW_11sort_by_keysNCNvMB1y_NtB1y_11HttpModules10add_module0E0EB1C_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph145, i64 noundef %.sroa.16.0138.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef align 8 dereferenceable(8) %6)
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtBa_6marker4SendNtB38_4SyncEL_ENCINvMNtB1x_5sliceSB1s_11sort_by_keysNCNvMB24_NtB24_11HttpModules10add_module0E0EB28_.exit

.lr.ph344:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0137343 = phi i32 [ %i.dx, %bb.b ], [ %.sroa.025.0.ph143, %.lr.ph ]
  %.sroa.16.0138342 = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph144, %.lr.ph ] ; 21 uses
  %i.dx = add i32 %.sroa.025.0137343, -1          ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1123)
  %i.dy = lshr i64 %.sroa.16.0138342, 3           ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.dy, 6
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph145, i64 %.idx.i ; 4 uses
  %.idx2.i = mul nuw nsw i64 %i.dy, 112
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph145, i64 %.idx2.i ; 4 uses
  %i.eb = icmp samesign ult i64 %.sroa.16.0138342, 64
  br i1 %i.eb, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph344
  %i.ec = call fastcc noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtBa_6marker4SendNtB2K_4SyncEL_ENCINvMNtB19_5sliceSB14_11sort_by_keysNCNvMB1G_NtB1G_11HttpModules10add_module0E0EB1K_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph145, ptr noundef readonly %i.dz, ptr noundef readonly %i.ea, i64 noundef %i.dy)
  br label %bb.u

bb.s:                                             ; preds = %.lr.ph344
  %.val10.i = load ptr, ptr %.sroa.0.0.ph145, align 8, !alias.scope !1123, !nonnull !10, !noundef !10 ; 2 uses
  %.val11.i = load ptr, ptr %i.d, align 8, !alias.scope !1123, !nonnull !10, !align !14, !noundef !10
  %.val12.i = load ptr, ptr %i.dz, align 8, !alias.scope !1123 ; 3 uses
  %i.ed = getelementptr i8, ptr %i.dz, i64 8
  %.val13.i = load ptr, ptr %i.ed, align 8, !alias.scope !1123 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val11.i, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8, !invariant.load !10, !noalias !1123, !nonnull !10 ; 2 uses
  %i.eg = call noundef i16 %i.ef(ptr noundef nonnull %.val10.i) #26, !noalias !1123, !inline_history !1076
  %i.eh = sub i16 0, %i.eg
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val12.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i) ]
  %i.ei = getelementptr inbounds nuw i8, ptr %.val13.i, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8, !invariant.load !10, !noalias !1123, !nonnull !10 ; 2 uses
  %i.ek = call noundef i16 %i.ej(ptr noundef nonnull %.val12.i) #26, !noalias !1123, !inline_history !1076
  %i.el = sub i16 0, %i.ek
  %i.em = icmp slt i16 %i.eh, %i.el               ; 2 uses
  %.val8.i = load ptr, ptr %i.ea, align 8, !alias.scope !1123 ; 3 uses
  %i.en = getelementptr i8, ptr %i.ea, i64 8
  %.val9.i = load ptr, ptr %i.en, align 8, !alias.scope !1123 ; 2 uses
  %i.eo = call noundef i16 %i.ef(ptr noundef nonnull %.val10.i) #26, !noalias !1123, !inline_history !1076
  %i.ep = sub i16 0, %i.eo
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i) ]
  %i.eq = getelementptr inbounds nuw i8, ptr %.val9.i, i64 24
  %i.er = load ptr, ptr %i.eq, align 8, !invariant.load !10, !noalias !1123, !nonnull !10 ; 2 uses
  %i.es = call noundef i16 %i.er(ptr noundef nonnull %.val8.i) #26, !noalias !1123, !inline_history !1076
  %i.et = sub i16 0, %i.es
  %i.eu = icmp slt i16 %i.ep, %i.et
  %i.ev = xor i1 %i.em, %i.eu
  br i1 %i.ev, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ew = call noundef i16 %i.ej(ptr noundef nonnull %.val12.i) #26, !noalias !1123, !inline_history !1076
  %i.ex = sub i16 0, %i.ew
  %i.ey = call noundef i16 %i.er(ptr noundef nonnull %.val8.i) #26, !noalias !1123, !inline_history !1076
  %i.ez = sub i16 0, %i.ey
  %i.fa = icmp slt i16 %i.ex, %i.ez
  %i.fb = xor i1 %i.em, %i.fa
  %..i.i = select i1 %i.fb, ptr %i.ea, ptr %i.dz
  br label %bb.u

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtBa_6marker4SendNtB38_4SyncEL_ENCINvMNtB1x_5sliceSB1s_11sort_by_keysNCNvMB24_NtB24_11HttpModules10add_module0E0EB28_.exit: ; preds = %.outer._crit_edge.thread, %bb.m, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %.sroa.0.0.i.sink.i = phi ptr [ %i.ec, %bb.r ], [ %.sroa.0.0.ph145, %bb.s ], [ %..i.i, %bb.t ]
  %i.fc = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.fd = sub nuw i64 %i.fc, %i.e                 ; 2 uses
  %.sroa.0.0.i39 = lshr exact i64 %i.fd, 4        ; 3 uses
  %i.fe = icmp samesign ult i64 %.sroa.0.0.i39, %.sroa.16.0138342
  call void @llvm.assume(i1 %i.fe)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph145, i64 %i.fd ; 6 uses
  %i.fg = load ptr, ptr %i.ff, align 8            ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 8 ; 5 uses
  %i.fi = load ptr, ptr %i.fh, align 8            ; 3 uses
  store ptr %i.fg, ptr %i.a, align 8
  store ptr %i.fi, ptr %i.c, align 8
  br i1 %.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.sroa.028.0.val = load ptr, ptr %.sroa.028.0.ph142, align 8, !nonnull !10, !noundef !10
  %.sroa.028.0.val37 = load ptr, ptr %i.f, align 8, !nonnull !10, !align !14, !noundef !10
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.028.0.val37, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8, !invariant.load !10, !nonnull !10
  %i.fl = call noundef i16 %i.fk(ptr noundef nonnull %.sroa.028.0.val) #26, !inline_history !1
  %i.fm = sub i16 0, %i.fl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fg) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fi) ]
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8, !invariant.load !10, !nonnull !10
  %i.fp = call noundef i16 %i.fo(ptr noundef nonnull %i.fg) #26, !inline_history !1
  %i.fq = sub i16 0, %i.fp
  %i.fr = icmp slt i16 %i.fm, %i.fq
  br i1 %i.fr, label %bb.w, label %.thread

bb.w:                                             ; preds = %bb.u, %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !1124)
  call void @llvm.experimental.noalias.scope.decl(metadata !1125)
  %.not91 = icmp samesign ult i64 %3, %.sroa.16.0138342
  br i1 %.not91, label %bb.y, label %bb.x, !prof !21

bb.x:                                             ; preds = %bb.w
  %i.fs = getelementptr [16 x i8], ptr %2, i64 %.sroa.16.0138342 ; 4 uses
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  call void @llvm.trap()
  unreachable

bb.z:                                             ; preds = %bb.ab, %bb.x
  %.sroa.43.0.i = phi ptr [ %i.fs, %bb.x ], [ %i.iq, %bb.ab ] ; 2 uses
  %.sroa.27.0.i = phi i64 [ 0, %bb.x ], [ %.sroa.27.2.lcssa.i, %bb.ab ] ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph145, %bb.x ], [ %i.is, %bb.ab ] ; 3 uses
  %.sroa.0.0.i40 = phi i64 [ %.sroa.0.0.i39, %bb.x ], [ %.sroa.16.0138342, %bb.ab ] ; 3 uses
  %i.ft = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i40, i64 3)
  %i.fu = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph145, i64 %i.ft ; 2 uses
  %i.fv = icmp ult ptr %.sroa.9.0.i, %i.fu
  br i1 %i.fv, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.z
  %.val31.i = load ptr, ptr %i.ff, align 8, !alias.scope !1124, !noalias !1125 ; 5 uses
  %.val32.i = load ptr, ptr %i.fh, align 8, !alias.scope !1124, !noalias !1125 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %.val32.i, i64 24
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph.i
  %.sroa.9.131.i = phi ptr [ %.sroa.9.0.i, %.lr.ph.i ], [ %i.hw, %bb.aa ] ; 10 uses
  %.sroa.27.130.i = phi i64 [ %.sroa.27.0.i, %.lr.ph.i ], [ %i.hv, %bb.aa ] ; 2 uses
  %.sroa.43.129.i = phi ptr [ %.sroa.43.0.i, %.lr.ph.i ], [ %i.hs, %bb.aa ] ; 4 uses
  %.val29.i = load ptr, ptr %.sroa.9.131.i, align 8, !alias.scope !1124, !noalias !1125, !nonnull !10, !noundef !10
  %i.fw = getelementptr i8, ptr %.sroa.9.131.i, i64 8
  %.val32.i.a = load ptr, ptr %i.fw, align 8, !alias.scope !1124, !noalias !1125, !nonnull !10, !align !14, !noundef !10
  %i.fx = getelementptr inbounds nuw i8, ptr %.val32.i.a, i64 24
  %i.fy = load ptr, ptr %i.fx, align 8, !invariant.load !10, !noalias !1126, !nonnull !10
  %i.fz = call noundef i16 %i.fy(ptr noundef nonnull %.val29.i) #26, !noalias !1126, !inline_history !1080
  %i.ga = sub i16 0, %i.fz
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val31.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val32.i) ]
  %i.gb = load ptr, ptr %7, align 8, !invariant.load !10, !noalias !1126, !nonnull !10 ; 4 uses
  %i.gc = call noundef i16 %i.gb(ptr noundef nonnull %.val31.i) #26, !noalias !1126, !inline_history !1080
  %i.gd = sub i16 0, %i.gc
  %i.ge = icmp slt i16 %i.ga, %i.gd               ; 2 uses
  %i.gf = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -16
  %.sroa.01.0.i.i = select i1 %i.ge, ptr %2, ptr %i.gf
  %i.gg = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.27.130.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gg, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.131.i, i64 16, i1 false), !alias.scope !1126, !noalias !1127
  %i.gh = zext i1 %i.ge to i64
  %i.gi = add i64 %.sroa.27.130.i, %i.gh          ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 16 ; 2 uses
  %.val25.i = load ptr, ptr %i.gj, align 8, !alias.scope !1124, !noalias !1125, !nonnull !10, !noundef !10
  %i.gk = getelementptr i8, ptr %.sroa.9.131.i, i64 24
  %.val26.i = load ptr, ptr %i.gk, align 8, !alias.scope !1124, !noalias !1125, !nonnull !10, !align !14, !noundef !10
  %i.gl = getelementptr inbounds nuw i8, ptr %.val26.i, i64 24
  %i.gm = load ptr, ptr %i.gl, align 8, !invariant.load !10, !noalias !1126, !nonnull !10
  %i.gn = call noundef i16 %i.gm(ptr noundef nonnull %.val25.i) #26, !noalias !1126, !inline_history !1080
  %i.go = sub i16 0, %i.gn
  %i.gp = call noundef i16 %i.gb(ptr noundef nonnull %.val31.i) #26, !noalias !1126, !inline_history !1080
  %i.gq = sub i16 0, %i.gp
  %i.gr = icmp slt i16 %i.go, %i.gq               ; 2 uses
  %i.gs = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -32
  %.sroa.01.0.i33.i = select i1 %i.gr, ptr %2, ptr %i.gs
  %i.gt = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i33.i, i64 %i.gi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gt, ptr noundef nonnull align 8 dereferenceable(16) %i.gj, i64 16, i1 false), !alias.scope !1126, !noalias !1128
  %i.gu = zext i1 %i.gr to i64
  %i.gv = add i64 %i.gi, %i.gu                    ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 32 ; 2 uses
  %.val21.i = load ptr, ptr %i.gw, align 8, !alias.scope !1124, !noalias !1125, !nonnull !10, !noundef !10
  %i.gx = getelementptr i8, ptr %.sroa.9.131.i, i64 40
  %.val22.i = load ptr, ptr %i.gx, align 8, !alias.scope !1124, !noalias !1125, !nonnull !10, !align !14, !noundef !10
  %i.gy = getelementptr inbounds nuw i8, ptr %.val22.i, i64 24
  %i.gz = load ptr, ptr %i.gy, align 8, !invariant.load !10, !noalias !1126, !nonnull !10
  %i.ha = call noundef i16 %i.gz(ptr noundef nonnull %.val21.i) #26, !noalias !1126, !inline_history !1080
  %i.hb = sub i16 0, %i.ha
  %i.hc = call noundef i16 %i.gb(ptr noundef nonnull %.val31.i) #26, !noalias !1126, !inline_history !1080
  %i.hd = sub i16 0, %i.hc
  %i.he = icmp slt i16 %i.hb, %i.hd               ; 2 uses
  %i.hf = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -48
  %.sroa.01.0.i34.i = select i1 %i.he, ptr %2, ptr %i.hf
  %i.hg = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i34.i, i64 %i.gv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hg, ptr noundef nonnull align 8 dereferenceable(16) %i.gw, i64 16, i1 false), !alias.scope !1126, !noalias !1129
  %i.hh = zext i1 %i.he to i64
  %i.hi = add i64 %i.gv, %i.hh                    ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 48 ; 2 uses
  %.val17.i = load ptr, ptr %i.hj, align 8, !alias.scope !1124, !noalias !1125, !nonnull !10, !noundef !10
  %i.hk = getelementptr i8, ptr %.sroa.9.131.i, i64 56
  %.val18.i = load ptr, ptr %i.hk, align 8, !alias.scope !1124, !noalias !1125, !nonnull !10, !align !14, !noundef !10
  %i.hl = getelementptr inbounds nuw i8, ptr %.val18.i, i64 24
  %i.hm = load ptr, ptr %i.hl, align 8, !invariant.load !10, !noalias !1126, !nonnull !10
  %i.hn = call noundef i16 %i.hm(ptr noundef nonnull %.val17.i) #26, !noalias !1126, !inline_history !1080
  %i.ho = sub i16 0, %i.hn
  %i.hp = call noundef i16 %i.gb(ptr noundef nonnull %.val31.i) #26, !noalias !1126, !inline_history !1080
  %i.hq = sub i16 0, %i.hp
  %i.hr = icmp slt i16 %i.ho, %i.hq               ; 2 uses
  %i.hs = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -64 ; 3 uses
  %.sroa.01.0.i35.i = select i1 %i.hr, ptr %2, ptr %i.hs
  %i.ht = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i35.i, i64 %i.hi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ht, ptr noundef nonnull align 8 dereferenceable(16) %i.hj, i64 16, i1 false), !alias.scope !1126, !noalias !1130
  %i.hu = zext i1 %i.hr to i64
  %i.hv = add i64 %i.hi, %i.hu                    ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 64 ; 3 uses
  %i.hx = icmp ult ptr %i.hw, %i.fu
  br i1 %i.hx, label %bb.aa, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.aa, %bb.z
  %.sroa.43.1.lcssa.i = phi ptr [ %.sroa.43.0.i, %bb.z ], [ %i.hs, %bb.aa ] ; 2 uses
  %.sroa.27.1.lcssa.i = phi i64 [ %.sroa.27.0.i, %bb.z ], [ %i.hv, %bb.aa ] ; 2 uses
  %.sroa.9.1.lcssa.i = phi ptr [ %.sroa.9.0.i, %bb.z ], [ %i.hw, %bb.aa ] ; 3 uses
  %i.hy = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph145, i64 %.sroa.0.0.i40 ; 2 uses
  %i.hz = icmp ult ptr %.sroa.9.1.lcssa.i, %i.hy
  br i1 %i.hz, label %.lr.ph38.i, label %._crit_edge39.i

.lr.ph38.i:                                       ; preds = %._crit_edge.i
  %.val15.i = load ptr, ptr %i.ff, align 8, !alias.scope !1124, !noalias !1125 ; 2 uses
  %.val16.i = load ptr, ptr %i.fh, align 8, !alias.scope !1124, !noalias !1125 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %.val16.i, i64 24
  br label %.lr.ph38.i.a

._crit_edge39.i:                                  ; preds = %.lr.ph38.i.a, %._crit_edge.i
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.ik, %.lr.ph38.i.a ]
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.in, %.lr.ph38.i.a ] ; 14 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %i.io, %.lr.ph38.i.a ] ; 2 uses
  %i.ia = icmp eq i64 %.sroa.0.0.i40, %.sroa.16.0138342
  br i1 %i.ia, label %bb.ac, label %bb.ab

.lr.ph38.i.a:                                     ; preds = %.lr.ph38.i.a, %.lr.ph38.i
  %.sroa.9.236.i = phi ptr [ %.sroa.9.1.lcssa.i, %.lr.ph38.i ], [ %i.io, %.lr.ph38.i.a ] ; 4 uses
  %.sroa.27.235.i = phi i64 [ %.sroa.27.1.lcssa.i, %.lr.ph38.i ], [ %i.in, %.lr.ph38.i.a ] ; 2 uses
  %.sroa.43.234.i = phi ptr [ %.sroa.43.1.lcssa.i, %.lr.ph38.i ], [ %i.ik, %.lr.ph38.i.a ]
  %.val.i = load ptr, ptr %.sroa.9.236.i, align 8, !alias.scope !1124, !noalias !1125, !nonnull !10, !noundef !10
  %i.ib = getelementptr i8, ptr %.sroa.9.236.i, i64 8
  %.val16.i.a = load ptr, ptr %i.ib, align 8, !alias.scope !1124, !noalias !1125, !nonnull !10, !align !14, !noundef !10
  %i.ic = getelementptr inbounds nuw i8, ptr %.val16.i.a, i64 24
  %i.id = load ptr, ptr %i.ic, align 8, !invariant.load !10, !noalias !1126, !nonnull !10
  %i.ie = call noundef i16 %i.id(ptr noundef nonnull %.val.i) #26, !noalias !1126, !inline_history !1080
  %i.if = sub i16 0, %i.ie
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val15.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val16.i) ]
  %i.ig = load ptr, ptr %8, align 8, !invariant.load !10, !noalias !1126, !nonnull !10
  %i.ih = call noundef i16 %i.ig(ptr noundef nonnull %.val15.i) #26, !noalias !1126, !inline_history !1080
  %i.ii = sub i16 0, %i.ih
  %i.ij = icmp slt i16 %i.if, %i.ii               ; 2 uses
  %i.ik = getelementptr inbounds i8, ptr %.sroa.43.234.i, i64 -16 ; 3 uses
  %.sroa.01.0.i36.i = select i1 %i.ij, ptr %2, ptr %i.ik
  %i.il = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i36.i, i64 %.sroa.27.235.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.il, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.236.i, i64 16, i1 false), !alias.scope !1126, !noalias !1131
  %i.im = zext i1 %i.ij to i64
  %i.in = add i64 %.sroa.27.235.i, %i.im          ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i, i64 16 ; 3 uses
  %i.ip = icmp ult ptr %i.io, %i.hy
  br i1 %i.ip, label %.lr.ph38.i.a, label %._crit_edge39.i

bb.ab:                                            ; preds = %._crit_edge39.i
  %i.iq = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -16 ; 2 uses
  %i.ir = getelementptr inbounds nuw [16 x i8], ptr %i.iq, i64 %.sroa.27.2.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ir, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.2.lcssa.i, i64 16, i1 false), !alias.scope !1126, !noalias !1132
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 16
  br label %bb.z

bb.ac:                                            ; preds = %._crit_edge39.i
  %i.it = shl nuw nsw i64 %.sroa.27.2.lcssa.i, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph145, ptr nonnull align 8 %2, i64 %i.it, i1 false), !alias.scope !1126
  %i.iu = sub i64 %.sroa.16.0138342, %.sroa.27.2.lcssa.i ; 4 uses
  %.not47.i = icmp eq i64 %.sroa.16.0138342, %.sroa.27.2.lcssa.i
  br i1 %.not47.i, label %.loopexit, label %.lr.ph45.i

.lr.ph45.i:                                       ; preds = %bb.ac
  %i.iv = getelementptr [16 x i8], ptr %.sroa.0.0.ph145, i64 %.sroa.27.2.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.27.2.lcssa.i, 1
  %xtraiter = and i64 %i.iu, 1
  %i.iw = icmp eq i64 %.sroa.16.0138342, %.neg
  br i1 %i.iw, label %.epil.preheader, label %.lr.ph45.i.new

.lr.ph45.i.new:                                   ; preds = %.lr.ph45.i
  %unroll_iter = and i64 %i.iu, -2
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.lr.ph45.i.new
  %.sroa.07.043.i = phi i64 [ 0, %.lr.ph45.i.new ], [ %i.ja, %bb.ad ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph45.i.new ], [ %niter.next.1, %bb.ad ]
  %i.ix = xor i64 %.sroa.07.043.i, -1
  %i.iy = getelementptr [16 x i8], ptr %i.fs, i64 %i.ix
  %i.iz = getelementptr [16 x i8], ptr %i.iv, i64 %.sroa.07.043.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.iz, ptr noundef nonnull align 8 dereferenceable(16) %i.iy, i64 16, i1 false), !alias.scope !1126
  %i.ja = add nuw i64 %.sroa.07.043.i, 2          ; 2 uses
  %i.jb = xor i64 %.sroa.07.043.i, -2
  %i.jc = getelementptr [16 x i8], ptr %i.fs, i64 %i.jb
  %i.jd = getelementptr [16 x i8], ptr %i.iv, i64 %.sroa.07.043.i
  %i.je = getelementptr i8, ptr %i.jd, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.je, ptr noundef nonnull align 8 dereferenceable(16) %i.jc, i64 16, i1 false), !alias.scope !1126
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.ad

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.ad
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph45.i
  %.sroa.07.043.i.epil.init = phi i64 [ 0, %.lr.ph45.i ], [ %i.ja, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod435 = trunc i64 %i.iu to i1
  call void @llvm.assume(i1 %lcmp.mod435)
  %i.jf = xor i64 %.sroa.07.043.i.epil.init, -1
  %i.jg = getelementptr [16 x i8], ptr %i.fs, i64 %i.jf
  %i.jh = getelementptr [16 x i8], ptr %i.iv, i64 %.sroa.07.043.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jh, ptr noundef nonnull align 8 dereferenceable(16) %i.jg, i64 16, i1 false), !alias.scope !1126
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.ac
  %i.ji = icmp eq i64 %.sroa.27.2.lcssa.i, 0
  br i1 %i.ji, label %.thread, label %bb.ae

bb.ae:                                            ; preds = %.loopexit
  %.not.i42 = icmp ugt i64 %.sroa.27.2.lcssa.i, %.sroa.16.0138342
  br i1 %.not.i42, label %bb.af, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB4_6marker4SendNtB2a_4SyncEL_E12split_at_mutB1a_.exit, !prof !11

bb.af:                                            ; preds = %bb.ae
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @152, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @140) #21, !noalias !1133
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB4_6marker4SendNtB2a_4SyncEL_E12split_at_mutB1a_.exit: ; preds = %bb.ae
  %i.jj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph145, i64 %.sroa.27.2.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph145) ]
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtBa_6marker4SendNtB2L_4SyncEL_ENCINvMNtB1a_5sliceSB15_11sort_by_keysNCNvMB1H_NtB1H_11HttpModules10add_module0E0EB1L_(ptr noalias nofree noundef nonnull align 8 %i.jj, i64 noundef %i.iu, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.dx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.jk = icmp ult i64 %.sroa.27.2.lcssa.i, 33
  br i1 %i.jk, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %bb.v, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !1134)
  call void @llvm.experimental.noalias.scope.decl(metadata !1135)
  %.not92 = icmp samesign ult i64 %3, %.sroa.16.0138342
  br i1 %.not92, label %bb.ah, label %bb.ag, !prof !21

bb.ag:                                            ; preds = %.thread
  %i.jl = getelementptr [16 x i8], ptr %2, i64 %.sroa.16.0138342 ; 4 uses
  br label %bb.ai

bb.ah:                                            ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.ai:                                            ; preds = %bb.ak, %bb.ag
  %.sroa.43.0.i45 = phi ptr [ %i.jl, %bb.ag ], [ %i.mj, %bb.ak ] ; 2 uses
  %.sroa.27.0.i46 = phi i64 [ 0, %bb.ag ], [ %i.ml, %bb.ak ] ; 2 uses
  %.sroa.9.0.i47 = phi ptr [ %.sroa.0.0.ph145, %bb.ag ], [ %i.mm, %bb.ak ] ; 3 uses
  %.sroa.0.0.i48 = phi i64 [ %.sroa.0.0.i39, %bb.ag ], [ %.sroa.16.0138342, %bb.ak ] ; 3 uses
  %i.jm = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i48, i64 3)
  %i.jn = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph145, i64 %i.jm ; 2 uses
  %i.jo = icmp ult ptr %.sroa.9.0.i47, %i.jn
  br i1 %i.jo, label %.lr.ph.i70, label %._crit_edge.i49

.lr.ph.i70:                                       ; preds = %bb.ai
  %.val31.i71 = load ptr, ptr %i.ff, align 8, !alias.scope !1134, !noalias !1135, !nonnull !10, !noundef !10 ; 4 uses
  %.val32.i72 = load ptr, ptr %i.fh, align 8, !alias.scope !1134, !noalias !1135, !nonnull !10, !align !14, !noundef !10
  %9 = getelementptr inbounds nuw i8, ptr %.val32.i72, i64 24
  %10 = load ptr, ptr %9, align 8, !invariant.load !10, !noalias !1136, !nonnull !10 ; 4 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %.lr.ph.i70
  %.sroa.9.131.i72 = phi ptr [ %.sroa.9.0.i47, %.lr.ph.i70 ], [ %i.lp, %bb.aj ] ; 10 uses
  %.sroa.27.130.i73 = phi i64 [ %.sroa.27.0.i46, %.lr.ph.i70 ], [ %i.lo, %bb.aj ] ; 2 uses
  %.sroa.43.129.i74 = phi ptr [ %.sroa.43.0.i45, %.lr.ph.i70 ], [ %i.ll, %bb.aj ] ; 4 uses
  %.val32.i77 = load ptr, ptr %.sroa.9.131.i72, align 8, !alias.scope !1134, !noalias !1135 ; 2 uses
  %i.jp = getelementptr i8, ptr %.sroa.9.131.i72, i64 8
  %i.jq = load ptr, ptr %i.jp, align 8, !alias.scope !1134, !noalias !1135 ; 2 uses
  %i.jr = call noundef i16 %10(ptr noundef nonnull %.val31.i71) #26, !noalias !1136, !inline_history !1099
  %i.js = sub i16 0, %i.jr
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val32.i77) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jq) ]
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jq, i64 24
  %i.ju = load ptr, ptr %i.jt, align 8, !invariant.load !10, !noalias !1136, !nonnull !10
  %i.jv = call noundef i16 %i.ju(ptr noundef nonnull %.val32.i77) #26, !noalias !1136, !inline_history !1099
  %i.jw = sub i16 0, %i.jv
  %i.jx = icmp sge i16 %i.js, %i.jw               ; 2 uses
  %i.jy = getelementptr inbounds i8, ptr %.sroa.43.129.i74, i64 -16
  %.sroa.01.0.i.i78 = select i1 %i.jx, ptr %2, ptr %i.jy
  %i.jz = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i.i78, i64 %.sroa.27.130.i73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jz, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.131.i72, i64 16, i1 false), !alias.scope !1136, !noalias !1137
  %i.ka = zext i1 %i.jx to i64
  %i.kb = add i64 %.sroa.27.130.i73, %i.ka        ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i72, i64 16 ; 2 uses
  %.val25.i79 = load ptr, ptr %i.kc, align 8, !alias.scope !1134, !noalias !1135 ; 2 uses
  %i.kd = getelementptr i8, ptr %.sroa.9.131.i72, i64 24
  %.val26.i80 = load ptr, ptr %i.kd, align 8, !alias.scope !1134, !noalias !1135 ; 2 uses
  %i.ke = call noundef i16 %10(ptr noundef nonnull %.val31.i71) #26, !noalias !1136, !inline_history !1099
  %i.kf = sub i16 0, %i.ke
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25.i79) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val26.i80) ]
  %i.kg = getelementptr inbounds nuw i8, ptr %.val26.i80, i64 24
  %i.kh = load ptr, ptr %i.kg, align 8, !invariant.load !10, !noalias !1136, !nonnull !10
  %i.ki = call noundef i16 %i.kh(ptr noundef nonnull %.val25.i79) #26, !noalias !1136, !inline_history !1099
  %i.kj = sub i16 0, %i.ki
  %i.kk = icmp sge i16 %i.kf, %i.kj               ; 2 uses
  %i.kl = getelementptr inbounds i8, ptr %.sroa.43.129.i74, i64 -32
  %.sroa.01.0.i33.i81 = select i1 %i.kk, ptr %2, ptr %i.kl
  %i.km = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i33.i81, i64 %i.kb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.km, ptr noundef nonnull align 8 dereferenceable(16) %i.kc, i64 16, i1 false), !alias.scope !1136, !noalias !1138
  %i.kn = zext i1 %i.kk to i64
  %i.ko = add i64 %i.kb, %i.kn                    ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i72, i64 32 ; 2 uses
  %.val21.i82 = load ptr, ptr %i.kp, align 8, !alias.scope !1134, !noalias !1135 ; 2 uses
  %i.kq = getelementptr i8, ptr %.sroa.9.131.i72, i64 40
  %.val22.i83 = load ptr, ptr %i.kq, align 8, !alias.scope !1134, !noalias !1135 ; 2 uses
  %i.kr = call noundef i16 %10(ptr noundef nonnull %.val31.i71) #26, !noalias !1136, !inline_history !1099
  %i.ks = sub i16 0, %i.kr
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val21.i82) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val22.i83) ]
  %i.kt = getelementptr inbounds nuw i8, ptr %.val22.i83, i64 24
  %i.ku = load ptr, ptr %i.kt, align 8, !invariant.load !10, !noalias !1136, !nonnull !10
  %i.kv = call noundef i16 %i.ku(ptr noundef nonnull %.val21.i82) #26, !noalias !1136, !inline_history !1099
  %i.kw = sub i16 0, %i.kv
  %i.kx = icmp sge i16 %i.ks, %i.kw               ; 2 uses
  %i.ky = getelementptr inbounds i8, ptr %.sroa.43.129.i74, i64 -48
  %.sroa.01.0.i34.i84 = select i1 %i.kx, ptr %2, ptr %i.ky
  %i.kz = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i34.i84, i64 %i.ko
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kz, ptr noundef nonnull align 8 dereferenceable(16) %i.kp, i64 16, i1 false), !alias.scope !1136, !noalias !1139
  %i.la = zext i1 %i.kx to i64
  %i.lb = add i64 %i.ko, %i.la                    ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i72, i64 48 ; 2 uses
  %.val17.i85 = load ptr, ptr %i.lc, align 8, !alias.scope !1134, !noalias !1135 ; 2 uses
  %i.ld = getelementptr i8, ptr %.sroa.9.131.i72, i64 56
  %.val18.i86 = load ptr, ptr %i.ld, align 8, !alias.scope !1134, !noalias !1135 ; 2 uses
  %i.le = call noundef i16 %10(ptr noundef nonnull %.val31.i71) #26, !noalias !1136, !inline_history !1099
  %i.lf = sub i16 0, %i.le
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val17.i85) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val18.i86) ]
  %i.lg = getelementptr inbounds nuw i8, ptr %.val18.i86, i64 24
  %i.lh = load ptr, ptr %i.lg, align 8, !invariant.load !10, !noalias !1136, !nonnull !10
  %i.li = call noundef i16 %i.lh(ptr noundef nonnull %.val17.i85) #26, !noalias !1136, !inline_history !1099
  %i.lj = sub i16 0, %i.li
  %i.lk = icmp sge i16 %i.lf, %i.lj               ; 2 uses
  %i.ll = getelementptr inbounds i8, ptr %.sroa.43.129.i74, i64 -64 ; 3 uses
  %.sroa.01.0.i35.i87 = select i1 %i.lk, ptr %2, ptr %i.ll
  %i.lm = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i35.i87, i64 %i.lb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lm, ptr noundef nonnull align 8 dereferenceable(16) %i.lc, i64 16, i1 false), !alias.scope !1136, !noalias !1140
  %i.ln = zext i1 %i.lk to i64
  %i.lo = add i64 %i.lb, %i.ln                    ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i72, i64 64 ; 3 uses
  %i.lq = icmp ult ptr %i.lp, %i.jn
  br i1 %i.lq, label %bb.aj, label %._crit_edge.i49

._crit_edge.i49:                                  ; preds = %bb.aj, %bb.ai
  %.sroa.43.1.lcssa.i50 = phi ptr [ %.sroa.43.0.i45, %bb.ai ], [ %i.ll, %bb.aj ] ; 2 uses
  %.sroa.27.1.lcssa.i51 = phi i64 [ %.sroa.27.0.i46, %bb.ai ], [ %i.lo, %bb.aj ] ; 2 uses
  %.sroa.9.1.lcssa.i52 = phi ptr [ %.sroa.9.0.i47, %bb.ai ], [ %i.lp, %bb.aj ] ; 3 uses
  %i.lr = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph145, i64 %.sroa.0.0.i48 ; 2 uses
  %i.ls = icmp ult ptr %.sroa.9.1.lcssa.i52, %i.lr
  br i1 %i.ls, label %.lr.ph38.i61, label %._crit_edge39.i53

.lr.ph38.i61:                                     ; preds = %._crit_edge.i49
  %.val15.i62 = load ptr, ptr %i.ff, align 8, !alias.scope !1134, !noalias !1135, !nonnull !10, !noundef !10
  %.val16.i63 = load ptr, ptr %i.fh, align 8, !alias.scope !1134, !noalias !1135, !nonnull !10, !align !14, !noundef !10
  %11 = getelementptr inbounds nuw i8, ptr %.val16.i63, i64 24
  %12 = load ptr, ptr %11, align 8, !invariant.load !10, !noalias !1136, !nonnull !10
  br label %.lr.ph38.i61.a

._crit_edge39.i53:                                ; preds = %.lr.ph38.i61.a, %._crit_edge.i49
  %.sroa.43.2.lcssa.i54 = phi ptr [ %.sroa.43.1.lcssa.i50, %._crit_edge.i49 ], [ %i.md, %.lr.ph38.i61.a ]
  %.sroa.27.2.lcssa.i55 = phi i64 [ %.sroa.27.1.lcssa.i51, %._crit_edge.i49 ], [ %i.mg, %.lr.ph38.i61.a ] ; 10 uses
  %.sroa.9.2.lcssa.i56 = phi ptr [ %.sroa.9.1.lcssa.i52, %._crit_edge.i49 ], [ %i.mh, %.lr.ph38.i61.a ] ; 2 uses
  %i.lt = icmp eq i64 %.sroa.0.0.i48, %.sroa.16.0138342
  br i1 %i.lt, label %bb.al, label %bb.ak

.lr.ph38.i61.a:                                   ; preds = %.lr.ph38.i61.a, %.lr.ph38.i61
  %.sroa.9.236.i62 = phi ptr [ %.sroa.9.1.lcssa.i52, %.lr.ph38.i61 ], [ %i.mh, %.lr.ph38.i61.a ] ; 4 uses
  %.sroa.27.235.i63 = phi i64 [ %.sroa.27.1.lcssa.i51, %.lr.ph38.i61 ], [ %i.mg, %.lr.ph38.i61.a ] ; 2 uses
  %.sroa.43.234.i64 = phi ptr [ %.sroa.43.1.lcssa.i50, %.lr.ph38.i61 ], [ %i.md, %.lr.ph38.i61.a ]
  %.val16.i68 = load ptr, ptr %.sroa.9.236.i62, align 8, !alias.scope !1134, !noalias !1135 ; 2 uses
  %i.lu = getelementptr i8, ptr %.sroa.9.236.i62, i64 8
  %i.lv = load ptr, ptr %i.lu, align 8, !alias.scope !1134, !noalias !1135 ; 2 uses
  %i.lw = call noundef i16 %12(ptr noundef nonnull %.val15.i62) #26, !noalias !1136, !inline_history !1099
  %i.lx = sub i16 0, %i.lw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val16.i68) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lv) ]
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lv, i64 24
  %i.lz = load ptr, ptr %i.ly, align 8, !invariant.load !10, !noalias !1136, !nonnull !10
  %i.ma = call noundef i16 %i.lz(ptr noundef nonnull %.val16.i68) #26, !noalias !1136, !inline_history !1099
  %i.mb = sub i16 0, %i.ma
  %i.mc = icmp sge i16 %i.lx, %i.mb               ; 2 uses
  %i.md = getelementptr inbounds i8, ptr %.sroa.43.234.i64, i64 -16 ; 3 uses
  %.sroa.01.0.i36.i69 = select i1 %i.mc, ptr %2, ptr %i.md
  %i.me = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i36.i69, i64 %.sroa.27.235.i63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.me, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.236.i62, i64 16, i1 false), !alias.scope !1136, !noalias !1141
  %i.mf = zext i1 %i.mc to i64
  %i.mg = add i64 %.sroa.27.235.i63, %i.mf        ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i62, i64 16 ; 3 uses
  %i.mi = icmp ult ptr %i.mh, %i.lr
  br i1 %i.mi, label %.lr.ph38.i61.a, label %._crit_edge39.i53

bb.ak:                                            ; preds = %._crit_edge39.i53
  %i.mj = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i54, i64 -16
  %i.mk = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.sroa.27.2.lcssa.i55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mk, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.2.lcssa.i56, i64 16, i1 false), !alias.scope !1136, !noalias !1142
  %i.ml = add i64 %.sroa.27.2.lcssa.i55, 1
  %i.mm = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i56, i64 16
  br label %bb.ai

bb.al:                                            ; preds = %._crit_edge39.i53
  %i.mn = shl nuw nsw i64 %.sroa.27.2.lcssa.i55, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph145, ptr nonnull align 8 %2, i64 %i.mn, i1 false), !alias.scope !1136
  %i.mo = sub i64 %.sroa.16.0138342, %.sroa.27.2.lcssa.i55 ; 6 uses
  %.not47.i57 = icmp eq i64 %.sroa.16.0138342, %.sroa.27.2.lcssa.i55
  br i1 %.not47.i57, label %.outer._crit_edge.thread, label %.lr.ph45.i58

.lr.ph45.i58:                                     ; preds = %bb.al
  %i.mp = getelementptr [16 x i8], ptr %.sroa.0.0.ph145, i64 %.sroa.27.2.lcssa.i55 ; 3 uses
  %.neg448 = add i64 %.sroa.27.2.lcssa.i55, 1
  %xtraiter443 = and i64 %i.mo, 1
  %i.mq = icmp eq i64 %.sroa.16.0138342, %.neg448
  br i1 %i.mq, label %.epil.preheader436, label %.lr.ph45.i58.new

.lr.ph45.i58.new:                                 ; preds = %.lr.ph45.i58
  %unroll_iter446 = and i64 %i.mo, -2
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %.lr.ph45.i58.new
  %.sroa.07.043.i59 = phi i64 [ 0, %.lr.ph45.i58.new ], [ %i.mu, %bb.am ] ; 5 uses
  %niter447 = phi i64 [ 0, %.lr.ph45.i58.new ], [ %niter447.next.1, %bb.am ]
  %i.mr = xor i64 %.sroa.07.043.i59, -1
  %i.ms = getelementptr [16 x i8], ptr %i.jl, i64 %i.mr
  %i.mt = getelementptr [16 x i8], ptr %i.mp, i64 %.sroa.07.043.i59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mt, ptr noundef nonnull align 8 dereferenceable(16) %i.ms, i64 16, i1 false), !alias.scope !1136
  %i.mu = add nuw i64 %.sroa.07.043.i59, 2        ; 2 uses
  %i.mv = xor i64 %.sroa.07.043.i59, -2
  %i.mw = getelementptr [16 x i8], ptr %i.jl, i64 %i.mv
  %i.mx = getelementptr [16 x i8], ptr %i.mp, i64 %.sroa.07.043.i59
  %i.my = getelementptr i8, ptr %i.mx, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.my, ptr noundef nonnull align 8 dereferenceable(16) %i.mw, i64 16, i1 false), !alias.scope !1136
  %niter447.next.1 = add i64 %niter447, 2         ; 2 uses
  %niter447.ncmp.1 = icmp eq i64 %niter447.next.1, %unroll_iter446
  br i1 %niter447.ncmp.1, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtBa_6marker4SendNtB2T_4SyncEL_ENCINvB2_9quicksortB1d_NCINvMNtB1i_5sliceSB1d_11sort_by_keysNCNvMB1P_NtB1P_11HttpModules10add_module0E0E0EB1T_.exit.unr-lcssa, label %bb.am

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtBa_6marker4SendNtB2T_4SyncEL_ENCINvB2_9quicksortB1d_NCINvMNtB1i_5sliceSB1d_11sort_by_keysNCNvMB1P_NtB1P_11HttpModules10add_module0E0E0EB1T_.exit.unr-lcssa: ; preds = %bb.am
  %lcmp.mod444.not = icmp eq i64 %xtraiter443, 0
  br i1 %lcmp.mod444.not, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtBa_6marker4SendNtB2T_4SyncEL_ENCINvB2_9quicksortB1d_NCINvMNtB1i_5sliceSB1d_11sort_by_keysNCNvMB1P_NtB1P_11HttpModules10add_module0E0E0EB1T_.exit, label %.epil.preheader436

.epil.preheader436:                               ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtBa_6marker4SendNtB2T_4SyncEL_ENCINvB2_9quicksortB1d_NCINvMNtB1i_5sliceSB1d_11sort_by_keysNCNvMB1P_NtB1P_11HttpModules10add_module0E0E0EB1T_.exit.unr-lcssa, %.lr.ph45.i58
  %.sroa.07.043.i59.epil.init = phi i64 [ 0, %.lr.ph45.i58 ], [ %i.mu, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtBa_6marker4SendNtB2T_4SyncEL_ENCINvB2_9quicksortB1d_NCINvMNtB1i_5sliceSB1d_11sort_by_keysNCNvMB1P_NtB1P_11HttpModules10add_module0E0E0EB1T_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod445 = trunc i64 %i.mo to i1
  call void @llvm.assume(i1 %lcmp.mod445)
  %i.mz = xor i64 %.sroa.07.043.i59.epil.init, -1
  %i.na = getelementptr [16 x i8], ptr %i.jl, i64 %i.mz
  %i.nb = getelementptr [16 x i8], ptr %i.mp, i64 %.sroa.07.043.i59.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nb, ptr noundef nonnull align 8 dereferenceable(16) %i.na, i64 16, i1 false), !alias.scope !1136
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtBa_6marker4SendNtB2T_4SyncEL_ENCINvB2_9quicksortB1d_NCINvMNtB1i_5sliceSB1d_11sort_by_keysNCNvMB1P_NtB1P_11HttpModules10add_module0E0E0EB1T_.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtBa_6marker4SendNtB2T_4SyncEL_ENCINvB2_9quicksortB1d_NCINvMNtB1i_5sliceSB1d_11sort_by_keysNCNvMB1P_NtB1P_11HttpModules10add_module0E0E0EB1T_.exit: ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtBa_6marker4SendNtB2T_4SyncEL_ENCINvB2_9quicksortB1d_NCINvMNtB1i_5sliceSB1d_11sort_by_keysNCNvMB1P_NtB1P_11HttpModules10add_module0E0E0EB1T_.exit.unr-lcssa, %.epil.preheader436
  %i.nc = icmp ugt i64 %.sroa.27.2.lcssa.i55, %.sroa.16.0138342
  br i1 %i.nc, label %bb.an, label %.outer, !prof !11

.outer._crit_edge.thread:                         ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtBa_6marker4SendNtB38_4SyncEL_ENCINvMNtB1x_5sliceSB1s_11sort_by_keysNCNvMB24_NtB24_11HttpModules10add_module0E0EB28_.exit

.outer:                                           ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtBa_6marker4SendNtB2T_4SyncEL_ENCINvB2_9quicksortB1d_NCINvMNtB1i_5sliceSB1d_11sort_by_keysNCNvMB1P_NtB1P_11HttpModules10add_module0E0E0EB1T_.exit
  %i.nd = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph145, i64 %.sroa.27.2.lcssa.i55 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ne = icmp ult i64 %i.mo, 33
  br i1 %i.ne, label %.outer._crit_edge, label %.lr.ph

bb.an:                                            ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtBa_6marker4SendNtB2T_4SyncEL_ENCINvB2_9quicksortB1d_NCINvMNtB1i_5sliceSB1d_11sort_by_keysNCNvMB1P_NtB1P_11HttpModules10add_module0E0E0EB1T_.exit
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.27.2.lcssa.i55, i64 noundef %.sroa.16.0138342, i64 noundef %.sroa.16.0138342, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @141) #21
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXCskD7i0qFYELX_3lruINtB3_6KeyReflENtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtCsaHowi4STlW6_9hashbrown6hasher13DefaultHasherECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 16 captures(none) dereferenceable(48) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !10
  %.val = load i32, ptr %i.a, align 4, !noundef !10 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1151)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = load i8, ptr %i.b, align 16, !alias.scope !1152, !noundef !10 ; 3 uses
  %i.d = icmp ugt i8 %i.c, 96
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = zext i32 %.val to i128
  %i.f = zext nneg i8 %i.c to i128
  %i.g = shl nuw i128 %i.e, %i.f
  %i.h = load i128, ptr %1, align 16, !alias.scope !1152, !noundef !10
  %i.i = or i128 %i.h, %i.g
  %i.j = add nuw i8 %i.c, 32
  br label %_RINvXse_NtNtCskKLDkoKarTP_4core4hash5implslNtB8_4Hash4hashNtNtCsaHowi4STlW6_9hashbrown6hasher13DefaultHasherECskeugdADtBsi_12pingora_core.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load i128, ptr %1, align 16, !alias.scope !1152, !noundef !10 ; 2 uses
  %i.l = trunc i128 %i.k to i64
  %i.m = lshr i128 %i.k, 64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !1152, !noundef !10
  %i.p = xor i64 %i.o, %i.l
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load ptr, ptr %i.q, align 16, !alias.scope !1152, !nonnull !10, !align !14, !noundef !10
  %i.s = load i64, ptr %i.r, align 8, !noalias !1152, !noundef !10
  %i.t = zext i64 %i.p to i128
  %i.u = zext i64 %i.s to i128
  %i.v = xor i128 %i.m, %i.u
  %i.w = mul nuw i128 %i.v, %i.t                  ; 2 uses
  %i.x = lshr i128 %i.w, 64
  %i.y = xor i128 %i.x, %i.w
  %i.z = trunc i128 %i.y to i64
  store i64 %i.z, ptr %i.n, align 8, !alias.scope !1152
  %i.aa = zext i32 %.val to i128
  br label %_RINvXse_NtNtCskKLDkoKarTP_4core4hash5implslNtB8_4Hash4hashNtNtCsaHowi4STlW6_9hashbrown6hasher13DefaultHasherECskeugdADtBsi_12pingora_core.exit

_RINvXse_NtNtCskKLDkoKarTP_4core4hash5implslNtB8_4Hash4hashNtNtCsaHowi4STlW6_9hashbrown6hasher13DefaultHasherECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.b, %bb.c
  %.sink.i = phi i128 [ %i.aa, %bb.c ], [ %i.i, %bb.b ]
  %storemerge.i.i.i = phi i8 [ 32, %bb.c ], [ %i.j, %bb.b ]
  store i128 %.sink.i, ptr %1, align 16, !alias.scope !1152
  store i8 %storemerge.i.i.i, ptr %i.b, align 16, !alias.scope !1152
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtCsiRgJJXJ4lb7_6brotli3enc7cluster13HistogramPairNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskeugdADtBsi_12pingora_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(16) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 4                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 4, i64 noundef 16)
  %i.d = load i64, ptr %i.a, align 8, !range !25, !noundef !10
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !27, !noundef !10 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskeugdADtBsi_12pingora_core.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #23
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskeugdADtBsi_12pingora_core.exit: ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !nonnull !10, !noundef !10
  %i.k = icmp ule i64 %2, %i.g
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.g, ptr %i.c, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsiRgJJXJ4lb7_6brotli3enc7cluster13HistogramPairE11extend_withCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.b)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskeugdADtBsi_12pingora_core.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiRgJJXJ4lb7_6brotli3enc7cluster13HistogramPairEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #25
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskeugdADtBsi_12pingora_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.n
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram11ContextTypeNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskeugdADtBsi_12pingora_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i8 noundef range(i8 0, 4) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
end_hunk_2
