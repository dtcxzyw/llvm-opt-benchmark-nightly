Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/procfs-2e97890f46cddf99.procfs.bf40b31bd625cb91-cgu.0?download=true
inline.NumInlined: 7331
inline.NumDeleted: 1554
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN3std2io7BufRead9read_line17h5973002b778a7cb3E:bb.a

bb.c:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3738
  br label %"_ZN85_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..BufRead$GT$8fill_buf17heeaf71316e7d5835E.exit.i.i.i"

"_ZN85_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..BufRead$GT$8fill_buf17heeaf71316e7d5835E.exit.i.i.i": ; preds = %bb.c, %.noexc16.i
  %i.y = phi i64 [ %i.r, %.noexc16.i ], [ %i.w, %bb.c ]
  %i.z = phi i64 [ %i.q, %.noexc16.i ], [ 0, %bb.c ] ; 2 uses
  %i.aa = sub nuw i64 %i.y, %i.z                  ; 14 uses
  %i.ab = icmp eq ptr %.pre.i.i.i.i.i, null
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %"_ZN85_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..BufRead$GT$8fill_buf17heeaf71316e7d5835E.exit.i.i.i", %"_ZN85_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..BufRead$GT$8fill_buf17heeaf71316e7d5835E.exit.thread.i.i.i"
  %.sroa.9.042.i.i.i = phi i64 [ %i.x, %"_ZN85_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..BufRead$GT$8fill_buf17heeaf71316e7d5835E.exit.thread.i.i.i" ], [ %i.aa, %"_ZN85_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..BufRead$GT$8fill_buf17heeaf71316e7d5835E.exit.i.i.i" ] ; 6 uses
  %i.ac = inttoptr i64 %.sroa.9.042.i.i.i to ptr  ; 8 uses
  %i.ad = and i64 %.sroa.9.042.i.i.i, 3
  switch i64 %i.ad, label %default.unreachable [
    i64 2, label %.split.i.i.i
    i64 3, label %bb.j
    i64 0, label %.split67.i.i.i
    i64 1, label %.split66.i.i.i
  ], !prof !3687

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %"_ZN85_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..BufRead$GT$8fill_buf17heeaf71316e7d5835E.exit.i.i.i"
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i, i64 %i.z ; 4 uses
  %i.af = icmp ult i64 %i.aa, 16
  br i1 %i.af, label %.preheader.i.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.e
  %.not.i.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.f
  %.sroa.01.05.i.i.i.i = phi i64 [ %i.aj, %bb.f ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.sroa.01.05.i.i.i.i
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !3739, !noalias !3742, !noundef !11
  %i.ai = icmp eq i8 %i.ah, 10
  br i1 %i.ai, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread45.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aj = add nuw nsw i64 %.sroa.01.05.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.aj, %i.aa
  br i1 %exitcond.not.i.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i, label %.lr.ph.i.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i: ; preds = %bb.e
  %i.ak = invoke { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef 10, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ae, i64 noundef %i.aa)
          to label %.noexc12.i unwind label %.loopexit.split-lp.loopexit.i ; 2 uses

.noexc12.i:                                       ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i
  %i.al = extractvalue { i64, i64 } %i.ak, 0
  %i.am = trunc nuw i64 %i.al to i1
  br i1 %i.am, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread45.loopexit69.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread45.loopexit69.i.i.i: ; preds = %.noexc12.i
  %i.an = extractvalue { i64, i64 } %i.ak, 1
  br label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread45.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread45.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread45.loopexit69.i.i.i
  %.sroa.4.0.i48.i.i.i = phi i64 [ %i.an, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread45.loopexit69.i.i.i ], [ %.sroa.01.05.i.i.i.i, %.lr.ph.i.i.i.i ] ; 4 uses
  %i.ao = icmp ult i64 %.sroa.4.0.i48.i.i.i, %i.aa
  br i1 %i.ao, label %"_ZN115_$LT$core..ops..range..RangeInclusive$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h8e7b3679257613f5E.exit.i.i.i", label %bb.g, !prof !538

bb.g:                                             ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread45.i.i.i
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %.sroa.4.0.i48.i.i.i, i64 noundef %i.aa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #43
          to label %.noexc13.i unwind label %.loopexit.split-lp.loopexit.split-lp.i

.noexc13.i:                                       ; preds = %bb.g
  unreachable

"_ZN115_$LT$core..ops..range..RangeInclusive$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h8e7b3679257613f5E.exit.i.i.i": ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread45.i.i.i
  %i.ap = add nuw i64 %.sroa.4.0.i48.i.i.i, 1     ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3743)
  call void @llvm.experimental.noalias.scope.decl(metadata !3746)
  %i.aq = load i64, ptr %i.d, align 8, !alias.scope !3749, !noalias !3752, !noundef !11 ; 3 uses
  %i.ar = load i64, ptr %1, align 8, !range !699, !alias.scope !3749, !noalias !3752, !noundef !11
  %i.as = sub i64 %i.ar, %i.aq
  %.not.i.i.i = icmp ult i64 %.sroa.4.0.i48.i.i.i, %i.as
  br i1 %.not.i.i.i, label %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h62dd9250238d5010E.exit.i.i.i", label %bb.h, !prof !538

bb.h:                                             ; preds = %"_ZN115_$LT$core..ops..range..RangeInclusive$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h8e7b3679257613f5E.exit.i.i.i"
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h440846d0dedc0723E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.aq, i64 noundef %i.ap, i64 noundef 1, i64 noundef 1)
          to label %.noexc14.i unwind label %.loopexit.split-lp.loopexit.split-lp.i

.noexc14.i:                                       ; preds = %bb.h
  %.pre.i.i24.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !3753, !noalias !3752
  br label %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h62dd9250238d5010E.exit.i.i.i"

"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h62dd9250238d5010E.exit.i.i.i": ; preds = %.noexc14.i, %"_ZN115_$LT$core..ops..range..RangeInclusive$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h8e7b3679257613f5E.exit.i.i.i"
  %i.at = phi i64 [ %i.aq, %"_ZN115_$LT$core..ops..range..RangeInclusive$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h8e7b3679257613f5E.exit.i.i.i" ], [ %.pre.i.i24.i.i.i, %.noexc14.i ] ; 3 uses
  %i.au = icmp sgt i64 %i.at, -1
  call void @llvm.assume(i1 %i.au)
  %i.av = load ptr, ptr %i.p, align 8, !alias.scope !3753, !noalias !3752, !nonnull !11, !noundef !11
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aw, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.ae, i64 %i.ap, i1 false), !noalias !3754
  %i.ax = add i64 %i.at, %i.ap
  store i64 %i.ax, ptr %i.d, align 8, !alias.scope !3753, !noalias !3752
  %i.ay = load i64, ptr %i.h, align 8, !alias.scope !3755, !noalias !3758, !noundef !11
  %i.az = add i64 %i.ay, %i.ap
  %i.ba = load i64, ptr %i.i, align 8, !alias.scope !3755, !noalias !3758, !noundef !11
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ba, i64 %i.az)
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %i.h, align 8, !alias.scope !3755, !noalias !3758
  %i.bb = add i64 %i.ap, %.sroa.01.0.ph.i.i.i
  br label %.loopexit.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i: ; preds = %bb.f, %.noexc12.i, %.preheader.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3759)
  call void @llvm.experimental.noalias.scope.decl(metadata !3762)
  %i.bc = load i64, ptr %i.d, align 8, !alias.scope !3765, !noalias !3752, !noundef !11 ; 3 uses
  %i.bd = load i64, ptr %1, align 8, !range !699, !alias.scope !3765, !noalias !3752, !noundef !11
  %i.be = sub i64 %i.bd, %i.bc
  %i.bf = icmp ugt i64 %i.aa, %i.be
  br i1 %i.bf, label %bb.i, label %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h62dd9250238d5010E.exit26.i.i.i", !prof !323

bb.i:                                             ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h440846d0dedc0723E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.bc, i64 noundef %i.aa, i64 noundef 1, i64 noundef 1)
          to label %.noexc15.i unwind label %.loopexit.split-lp.loopexit.i

.noexc15.i:                                       ; preds = %bb.i
  %.pre.i.i25.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !3768, !noalias !3752
  br label %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h62dd9250238d5010E.exit26.i.i.i"

"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h62dd9250238d5010E.exit26.i.i.i": ; preds = %.noexc15.i, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i
  %i.bg = phi i64 [ %i.bc, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i ], [ %.pre.i.i25.i.i.i, %.noexc15.i ] ; 3 uses
  %i.bh = icmp sgt i64 %i.bg, -1
  call void @llvm.assume(i1 %i.bh)
  %i.bi = load ptr, ptr %i.p, align 8, !alias.scope !3768, !noalias !3752, !nonnull !11, !noundef !11
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bg
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bj, ptr nonnull readonly align 1 %i.ae, i64 %i.aa, i1 false), !noalias !3769
  %i.bk = add i64 %i.bg, %i.aa
  store i64 %i.bk, ptr %i.d, align 8, !alias.scope !3768, !noalias !3752
  %i.bl = load i64, ptr %i.h, align 8, !alias.scope !3770, !noalias !3758, !noundef !11
  %i.bm = add i64 %i.bl, %i.aa
  %i.bn = load i64, ptr %i.i, align 8, !alias.scope !3770, !noalias !3758, !noundef !11
  %.sroa.0.0.i.i27.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bn, i64 %i.bm)
  store i64 %.sroa.0.0.i.i27.i.i.i, ptr %i.h, align 8, !alias.scope !3770, !noalias !3758
  %i.bo = add i64 %i.aa, %.sroa.01.0.ph.i.i.i     ; 2 uses
  %i.bp = icmp eq i64 %i.aa, 0
  br i1 %i.bp, label %.loopexit.i.i.i, label %.outer.i.i.i

.loopexit.i.i.i:                                  ; preds = %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h62dd9250238d5010E.exit26.i.i.i", %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h62dd9250238d5010E.exit.i.i.i"
  %.sroa.01.1.i.i.i = phi i64 [ %i.bb, %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h62dd9250238d5010E.exit.i.i.i" ], [ %i.bo, %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h62dd9250238d5010E.exit26.i.i.i" ]
  %i.bq = inttoptr i64 %.sroa.01.1.i.i.i to ptr
  br label %.loopexit22.i

.split.i.i.i:                                     ; preds = %bb.d
  %.mask68.i.i.i = and i64 %.sroa.9.042.i.i.i, -4294967296
  %i.br = icmp eq i64 %.mask68.i.i.i, 17179869184
  br i1 %i.br, label %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$RF$$u5b$u8$u5d$$C$std..io..error..Error$GT$$GT$17hd95d8408bf809247E.exit30.i.i.i", label %.loopexit22.i

.split67.i.i.i:                                   ; preds = %bb.d
  %i.bs = icmp ne i64 %.sroa.9.042.i.i.i, 0
  call void @llvm.assume(i1 %i.bs)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.bu = load i8, ptr %i.bt, align 8, !range !3688, !noalias !3742, !noundef !11
  %i.bv = icmp eq i8 %i.bu, 35
  br i1 %i.bv, label %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$RF$$u5b$u8$u5d$$C$std..io..error..Error$GT$$GT$17hd95d8408bf809247E.exit30.i.i.i", label %.loopexit22.i

.split66.i.i.i:                                   ; preds = %bb.d
  %i.bw = getelementptr i8, ptr %i.ac, i64 15
  %i.bx = load i8, ptr %i.bw, align 8, !range !3688, !noalias !3742, !noundef !11
  %i.by = icmp eq i8 %i.bx, 35
  br i1 %i.by, label %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$RF$$u5b$u8$u5d$$C$std..io..error..Error$GT$$GT$17hd95d8408bf809247E.exit30.i.i.i", label %.loopexit22.i

bb.j:                                             ; preds = %bb.d
  %i.bz = icmp ult i64 %.sroa.9.042.i.i.i, 180388626432
  call void @llvm.assume(i1 %i.bz)
  %.mask.i.i.i = and i64 %.sroa.9.042.i.i.i, 270582939648
  %i.ca = icmp eq i64 %.mask.i.i.i, 150323855360
  br i1 %i.ca, label %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$RF$$u5b$u8$u5d$$C$std..io..error..Error$GT$$GT$17hd95d8408bf809247E.exit30.i.i.i", label %.loopexit22.i

"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$RF$$u5b$u8$u5d$$C$std..io..error..Error$GT$$GT$17hd95d8408bf809247E.exit30.i.i.i": ; preds = %bb.j, %.split66.i.i.i, %.split67.i.i.i, %.split.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ac) ]
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h2fcde3704c8dc432E"(ptr nonnull %i.ac)
          to label %.noexc16.i unwind label %.loopexit.i

"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h4f78c4a92701943cE.exit.i": ; preds = %bb.l, %bb.k, %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %.pn.i = phi { ptr, i32 } [ %i.cj, %bb.k ], [ %i.cj, %bb.l ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit23.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp24.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  invoke void @"_ZN56_$LT$std..io..Guard$u20$as$u20$core..ops..drop..Drop$GT$4drop17heb49ac04b342d0f7E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %"_ZN4core3ptr35drop_in_place$LT$std..io..Guard$GT$17h31f86f7eae249bc6E.exit.i" unwind label %bb.p

.loopexit.i:                                      ; preds = %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$RF$$u5b$u8$u5d$$C$std..io..error..Error$GT$$GT$17hd95d8408bf809247E.exit30.i.i.i", %bb.b
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h4f78c4a92701943cE.exit.i"

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.i, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i
  %lpad.loopexit23.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h4f78c4a92701943cE.exit.i"

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %bb.h, %bb.g
  %lpad.loopexit.split-lp24.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h4f78c4a92701943cE.exit.i"

.loopexit22.i:                                    ; preds = %bb.j, %.split66.i.i.i, %.split67.i.i.i, %.split.i.i.i, %.loopexit.i.i.i
  %.sroa.3.0.i.i.i = phi ptr [ %i.bq, %.loopexit.i.i.i ], [ %i.ac, %.split.i.i.i ], [ %i.ac, %.split67.i.i.i ], [ %i.ac, %.split66.i.i.i ], [ %i.ac, %bb.j ] ; 4 uses
  %.sroa.0.0.i.i.i = phi i64 [ 0, %.loopexit.i.i.i ], [ 1, %.split.i.i.i ], [ 1, %.split67.i.i.i ], [ 1, %.split66.i.i.i ], [ 1, %bb.j ] ; 3 uses
  %i.cb = load ptr, ptr %i.c, align 8, !noalias !3716, !nonnull !11, !align !305, !noundef !11 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !nonnull !11, !noundef !11
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !noundef !11
  %i.cg = load i64, ptr %i.g, align 8, !noalias !3716, !noundef !11 ; 2 uses
  %i.ch = sub nuw i64 %i.cf, %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3716
  invoke void @_ZN4core3str8converts9from_utf817h61448895180b8340E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ci, i64 noundef %i.ch)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %.loopexit22.i
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %2 = trunc nuw i64 %.sroa.0.0.i.i.i to i1
  br i1 %2, label %bb.l, label %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h4f78c4a92701943cE.exit.i"

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.i.i.i) ]
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h2fcde3704c8dc432E"(ptr nonnull %.sroa.3.0.i.i.i)
          to label %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h4f78c4a92701943cE.exit.i" unwind label %bb.p

bb.m:                                             ; preds = %.loopexit22.i
  %i.ck = load i64, ptr %i.b, align 8, !range !2380, !noalias !3716, !noundef !11
  %3 = trunc nuw i64 %i.ck to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3716
  br i1 %3, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cl = load ptr, ptr %i.c, align 8, !noalias !3716, !nonnull !11, !align !305, !noundef !11
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load i64, ptr %i.cm, align 8, !noundef !11 ; 2 uses
  %i.co = icmp sgt i64 %i.cn, -1
  call void @llvm.assume(i1 %i.co)
  store i64 %i.cn, ptr %i.g, align 8, !noalias !3716
  br label %_ZN3std2io16append_to_string17h6136f963a9d5b79aE.exit

bb.o:                                             ; preds = %bb.m
  %i.cp = trunc nuw i64 %.sroa.0.0.i.i.i to i1
  %spec.select.i = select i1 %i.cp, ptr %.sroa.3.0.i.i.i, ptr @99
  br label %_ZN3std2io16append_to_string17h6136f963a9d5b79aE.exit

bb.p:                                             ; preds = %bb.l, %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h4f78c4a92701943cE.exit.i"
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable

"_ZN4core3ptr35drop_in_place$LT$std..io..Guard$GT$17h31f86f7eae249bc6E.exit.i": ; preds = %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h4f78c4a92701943cE.exit.i"
  resume { ptr, i32 } %.pn.i

_ZN3std2io16append_to_string17h6136f963a9d5b79aE.exit: ; preds = %bb.n, %bb.o
  %.sroa.4.0.i = phi ptr [ %spec.select.i, %bb.o ], [ %.sroa.3.0.i.i.i, %bb.n ]
  %.sroa.0.0.i = phi i64 [ 1, %bb.o ], [ %.sroa.0.0.i.i.i, %bb.n ]
  call void @"_ZN56_$LT$std..io..Guard$u20$as$u20$core..ops..drop..Drop$GT$4drop17heb49ac04b342d0f7E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3716
  %i.cr = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i, 0
  %i.cs = insertvalue { i64, ptr } %i.cr, ptr %.sroa.4.0.i, 1
  ret { i64, ptr } %i.cs
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @_ZN3std2io7BufRead9read_line17h802a96d533839871E(ptr noalias noundef nonnull align 8 dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3773)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3776)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3778
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !3773, !noalias !3776, !noundef !11 ; 2 uses
  %i.e = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.e)
  store ptr %1, ptr %i.b, align 8, !noalias !3778
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store i64 %i.d, ptr %i.f, align 8, !noalias !3778
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3779)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3782)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3784)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3787)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %.outer.i.i.i

.outer.i.i.i:                                     ; preds = %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h62dd9250238d5010E.exit26.i.i.i", %bb.a
  %.sroa.01.0.ph.i.i.i = phi i64 [ %i.bp, %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h62dd9250238d5010E.exit26.i.i.i" ], [ 0, %bb.a ] ; 2 uses
  br label %.noexc17.i

.noexc17.i:                                       ; preds = %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$RF$$u5b$u8$u5d$$C$std..io..error..Error$GT$$GT$17hd95d8408bf809247E.exit30.i.i.i", %.outer.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3789)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3792)
  %i.m = load i64, ptr %i.g, align 8, !alias.scope !3795, !noalias !3796, !noundef !11 ; 3 uses
  %i.n = load i64, ptr %i.h, align 8, !alias.scope !3795, !noalias !3796, !noundef !11 ; 2 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.m, %i.n
  %.pre.i.i.i.i.i = load ptr, ptr %0, align 8, !alias.scope !3795, !noalias !3796 ; 5 uses
  br i1 %.not.i.i.i.i.i, label %"_ZN85_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..BufRead$GT$8fill_buf17h3144868c6479dbe3E.exit.i.i.i", label %bb.b

bb.b:                                             ; preds = %.noexc17.i
  %i.o = load i64, ptr %i.j, align 8, !alias.scope !3795, !noalias !3796, !noundef !11 ; 5 uses
  %i.p = load i64, ptr %i.k, align 8, !alias.scope !3795, !noalias !3796, !noundef !11 ; 2 uses
  %i.q = sub nuw i64 %i.o, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i, i64 %i.p
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.r, i8 0, i64 %i.q, i1 false), !noalias !3800
  %i.s = invoke { i64, ptr } @"_ZN53_$LT$procfs..FileWrapper$u20$as$u20$std..io..Read$GT$4read17h087f3fcdb92cac2fE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i, ptr noalias noundef nonnull align 1 %.pre.i.i.i.i.i, i64 noundef %i.o)
          to label %.noexc.i unwind label %.loopexit.i ; 2 uses

.noexc.i:                                         ; preds = %bb.b
  %i.t = extractvalue { i64, ptr } %i.s, 0
  %i.u = extractvalue { i64, ptr } %i.s, 1        ; 2 uses
  %i.v = ptrtoint ptr %i.u to i64                 ; 4 uses
  %i.w = trunc nuw i64 %i.t to i1
  br i1 %i.w, label %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17h138f8ba6980f86e5E.exit.i.i.i.i.i", label %bb.c

bb.c:                                             ; preds = %.noexc.i
  %.not.i.i.i.i.i.i.i.i = icmp ult i64 %i.o, %i.v
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17h138f8ba6980f86e5E.exit.thread.i.i.i.i.i", !prof !323

"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17h138f8ba6980f86e5E.exit.thread.i.i.i.i.i": ; preds = %bb.c
  store i64 0, ptr %i.g, align 8, !alias.scope !3795, !noalias !3796
  store i64 %i.v, ptr %i.h, align 8, !alias.scope !3795, !noalias !3796
  store i64 %i.o, ptr %i.k, align 8, !alias.scope !3795, !noalias !3796
  br label %"_ZN85_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..BufRead$GT$8fill_buf17h3144868c6479dbe3E.exit.thread133.i.i.i"

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @100, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #43
          to label %.noexc12.i unwind label %.loopexit.split-lp.loopexit.split-lp.i

.noexc12.i:                                       ; preds = %bb.d
  unreachable

"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17h138f8ba6980f86e5E.exit.i.i.i.i.i": ; preds = %.noexc.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false), !alias.scope !3795, !noalias !3796
  store i64 %i.o, ptr %i.k, align 8, !alias.scope !3795, !noalias !3796
  %.not4.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not4.i.i.i.i.i, label %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h62dd9250238d5010E.exit26.i.i.sink.split.i", label %"_ZN85_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..BufRead$GT$8fill_buf17h3144868c6479dbe3E.exit.thread.i.i.i"

"_ZN85_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..BufRead$GT$8fill_buf17h3144868c6479dbe3E.exit.i.i.i": ; preds = %.noexc17.i
  %i.x = sub nuw i64 %i.n, %i.m                   ; 2 uses
  %i.y = icmp eq ptr %.pre.i.i.i.i.i, null
  br i1 %i.y, label %"_ZN85_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..BufRead$GT$8fill_buf17h3144868c6479dbe3E.exit.thread.i.i.i", label %"_ZN85_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..BufRead$GT$8fill_buf17h3144868c6479dbe3E.exit.thread133.i.i.i"

"_ZN85_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..BufRead$GT$8fill_buf17h3144868c6479dbe3E.exit.thread.i.i.i": ; preds = %"_ZN85_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..BufRead$GT$8fill_buf17h3144868c6479dbe3E.exit.i.i.i", %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17h138f8ba6980f86e5E.exit.i.i.i.i.i"
  %.sroa.9.042.i.i.i = phi i64 [ %i.x, %"_ZN85_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..BufRead$GT$8fill_buf17h3144868c6479dbe3E.exit.i.i.i" ], [ %i.v, %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17h138f8ba6980f86e5E.exit.i.i.i.i.i" ] ; 6 uses
  %i.z = inttoptr i64 %.sroa.9.042.i.i.i to ptr   ; 8 uses
  %i.aa = and i64 %.sroa.9.042.i.i.i, 3
  switch i64 %i.aa, label %default.unreachable [
    i64 2, label %.split.i.i.i
    i64 3, label %bb.i
    i64 0, label %.split67.i.i.i
    i64 1, label %.split66.i.i.i
  ], !prof !3687

default.unreachable:                              ; preds = %"_ZN85_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..BufRead$GT$8fill_buf17h3144868c6479dbe3E.exit.thread.i.i.i"
  unreachable

"_ZN85_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..BufRead$GT$8fill_buf17h3144868c6479dbe3E.exit.thread133.i.i.i": ; preds = %"_ZN85_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..BufRead$GT$8fill_buf17h3144868c6479dbe3E.exit.i.i.i", %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17h138f8ba6980f86e5E.exit.thread.i.i.i.i.i"
  %i.ab = phi i64 [ %i.v, %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17h138f8ba6980f86e5E.exit.thread.i.i.i.i.i" ], [ %i.x, %"_ZN85_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..BufRead$GT$8fill_buf17h3144868c6479dbe3E.exit.i.i.i" ] ; 10 uses
  %i.ac = phi i64 [ 0, %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17h138f8ba6980f86e5E.exit.thread.i.i.i.i.i" ], [ %i.m, %"_ZN85_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..BufRead$GT$8fill_buf17h3144868c6479dbe3E.exit.i.i.i" ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i, i64 %i.ac ; 6 uses
  %i.ae = icmp ult i64 %i.ab, 16
  br i1 %i.ae, label %.preheader.i.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i

.preheader.i.i.i.i:                               ; preds = %"_ZN85_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..BufRead$GT$8fill_buf17h3144868c6479dbe3E.exit.thread133.i.i.i"
  %.not.i.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i.i, label %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h62dd9250238d5010E.exit26.i.i.sink.split.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.e
  %.sroa.01.05.i.i.i.i = phi i64 [ %i.ai, %bb.e ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.sroa.01.05.i.i.i.i
  %i.ag = load i8, ptr %i.af, align 1, !alias.scope !3811, !noalias !3814, !noundef !11
  %i.ah = icmp eq i8 %i.ag, 10
  br i1 %i.ah, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread45.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ai = add nuw nsw i64 %.sroa.01.05.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ai, %i.ab
  br i1 %exitcond.not.i.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i, label %.lr.ph.i.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i: ; preds = %"_ZN85_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..BufRead$GT$8fill_buf17h3144868c6479dbe3E.exit.thread133.i.i.i"
  %i.aj = invoke { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef 10, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ad, i64 noundef %i.ab)
          to label %.noexc13.i unwind label %.loopexit.split-lp.loopexit.i ; 2 uses

.noexc13.i:                                       ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i
  %i.ak = extractvalue { i64, i64 } %i.aj, 0
  %i.al = trunc nuw i64 %i.ak to i1
  br i1 %i.al, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread45.loopexit69.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread45.loopexit69.i.i.i: ; preds = %.noexc13.i
  %i.am = extractvalue { i64, i64 } %i.aj, 1
  br label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread45.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread45.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread45.loopexit69.i.i.i
  %.sroa.4.0.i48.i.i.i = phi i64 [ %i.am, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread45.loopexit69.i.i.i ], [ %.sroa.01.05.i.i.i.i, %.lr.ph.i.i.i.i ] ; 4 uses
  %i.an = icmp ult i64 %.sroa.4.0.i48.i.i.i, %i.ab
  br i1 %i.an, label %"_ZN115_$LT$core..ops..range..RangeInclusive$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h8e7b3679257613f5E.exit.i.i.i", label %bb.f, !prof !538

bb.f:                                             ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread45.i.i.i
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %.sroa.4.0.i48.i.i.i, i64 noundef %i.ab, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #43
          to label %.noexc14.i unwind label %.loopexit.split-lp.loopexit.split-lp.i

.noexc14.i:                                       ; preds = %bb.f
  unreachable

"_ZN115_$LT$core..ops..range..RangeInclusive$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h8e7b3679257613f5E.exit.i.i.i": ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread45.i.i.i
  %i.ao = add nuw i64 %.sroa.4.0.i48.i.i.i, 1     ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3815)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3818)
  %i.ap = load i64, ptr %i.c, align 8, !alias.scope !3821, !noalias !3824, !noundef !11 ; 3 uses
  %i.aq = load i64, ptr %1, align 8, !range !699, !alias.scope !3821, !noalias !3824, !noundef !11
  %i.ar = sub i64 %i.aq, %i.ap
  %.not.i.i.i = icmp ult i64 %.sroa.4.0.i48.i.i.i, %i.ar
  br i1 %.not.i.i.i, label %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h62dd9250238d5010E.exit.i.i.i", label %bb.g, !prof !538

bb.g:                                             ; preds = %"_ZN115_$LT$core..ops..range..RangeInclusive$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h8e7b3679257613f5E.exit.i.i.i"
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h440846d0dedc0723E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ap, i64 noundef %i.ao, i64 noundef 1, i64 noundef 1)
          to label %.noexc15.i unwind label %.loopexit.split-lp.loopexit.split-lp.i

.noexc15.i:                                       ; preds = %bb.g
  %.pre.i.i24.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !3825, !noalias !3824
  br label %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h62dd9250238d5010E.exit.i.i.i"

"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h62dd9250238d5010E.exit.i.i.i": ; preds = %.noexc15.i, %"_ZN115_$LT$core..ops..range..RangeInclusive$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h8e7b3679257613f5E.exit.i.i.i"
  %i.as = phi i64 [ %i.ap, %"_ZN115_$LT$core..ops..range..RangeInclusive$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h8e7b3679257613f5E.exit.i.i.i" ], [ %.pre.i.i24.i.i.i, %.noexc15.i ] ; 3 uses
  %i.at = icmp sgt i64 %i.as, -1
  tail call void @llvm.assume(i1 %i.at)
  %i.au = load ptr, ptr %i.l, align 8, !alias.scope !3825, !noalias !3824, !nonnull !11, !noundef !11
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.as
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.av, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.ad, i64 %i.ao, i1 false), !noalias !3826
  %i.aw = add i64 %i.as, %i.ao
  store i64 %i.aw, ptr %i.c, align 8, !alias.scope !3825, !noalias !3824
  %i.ax = load i64, ptr %i.g, align 8, !alias.scope !3827, !noalias !3830, !noundef !11
  %i.ay = add i64 %i.ax, %i.ao
  %i.az = load i64, ptr %i.h, align 8, !alias.scope !3827, !noalias !3830, !noundef !11
  %.sroa.0.0.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.az, i64 %i.ay)
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %i.g, align 8, !alias.scope !3827, !noalias !3830
  %i.ba = add i64 %i.ao, %.sroa.01.0.ph.i.i.i
  br label %.loopexit.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i: ; preds = %bb.e, %.noexc13.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3831)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3834)
  %i.bb = load i64, ptr %i.c, align 8, !alias.scope !3837, !noalias !3824, !noundef !11 ; 3 uses
  %i.bc = load i64, ptr %1, align 8, !range !699, !alias.scope !3837, !noalias !3824, !noundef !11
  %i.bd = sub i64 %i.bc, %i.bb
  %i.be = icmp ugt i64 %i.ab, %i.bd
  br i1 %i.be, label %bb.h, label %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h62dd9250238d5010E.exit26.i.i.i", !prof !3840

bb.h:                                             ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h440846d0dedc0723E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.bb, i64 noundef %i.ab, i64 noundef 1, i64 noundef 1)
          to label %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h62dd9250238d5010E.exit26.i.i.sink.split.i" unwind label %.loopexit.split-lp.loopexit.i

"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h62dd9250238d5010E.exit26.i.i.sink.split.i": ; preds = %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17h138f8ba6980f86e5E.exit.i.i.i.i.i", %bb.h, %.preheader.i.i.i.i
  %.ph.i = phi i64 [ %i.ab, %bb.h ], [ 0, %.preheader.i.i.i.i ], [ 0, %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17h138f8ba6980f86e5E.exit.i.i.i.i.i" ]
  %.ph137.i = phi ptr [ %i.ad, %bb.h ], [ %i.ad, %.preheader.i.i.i.i ], [ %.pre.i.i.i.i.i, %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17h138f8ba6980f86e5E.exit.i.i.i.i.i" ]
  %.pre.i.i25.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !3841, !noalias !3824
  br label %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h62dd9250238d5010E.exit26.i.i.i"

"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h62dd9250238d5010E.exit26.i.i.i": ; preds = %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h62dd9250238d5010E.exit26.i.i.sink.split.i", %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i
  %i.bf = phi i64 [ %i.ab, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i ], [ %.ph.i, %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h62dd9250238d5010E.exit26.i.i.sink.split.i" ] ; 5 uses
  %i.bg = phi ptr [ %i.ad, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i ], [ %.ph137.i, %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h62dd9250238d5010E.exit26.i.i.sink.split.i" ]
  %i.bh = phi i64 [ %i.bb, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i ], [ %.pre.i.i25.i.i.i, %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h62dd9250238d5010E.exit26.i.i.sink.split.i" ] ; 3 uses
  %i.bi = icmp sgt i64 %i.bh, -1
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = load ptr, ptr %i.l, align 8, !alias.scope !3846, !noalias !3824, !nonnull !11, !noundef !11
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bh
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bk, ptr nonnull readonly align 1 %i.bg, i64 %i.bf, i1 false), !noalias !3847
  %i.bl = add i64 %i.bh, %i.bf
  store i64 %i.bl, ptr %i.c, align 8, !alias.scope !3846, !noalias !3824
  %i.bm = load i64, ptr %i.g, align 8, !alias.scope !3848, !noalias !3830, !noundef !11
  %i.bn = add i64 %i.bm, %i.bf
  %i.bo = load i64, ptr %i.h, align 8, !alias.scope !3848, !noalias !3830, !noundef !11
  %.sroa.0.0.i.i27.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.bo, i64 %i.bn)
  store i64 %.sroa.0.0.i.i27.i.i.i, ptr %i.g, align 8, !alias.scope !3848, !noalias !3830
  %i.bp = add i64 %i.bf, %.sroa.01.0.ph.i.i.i     ; 2 uses
  %i.bq = icmp eq i64 %i.bf, 0
  br i1 %i.bq, label %.loopexit.i.i.i, label %.outer.i.i.i

.loopexit.i.i.i:                                  ; preds = %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h62dd9250238d5010E.exit26.i.i.i", %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h62dd9250238d5010E.exit.i.i.i"
  %.sroa.01.1.i.i.i = phi i64 [ %i.ba, %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h62dd9250238d5010E.exit.i.i.i" ], [ %i.bp, %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h62dd9250238d5010E.exit26.i.i.i" ]
  %i.br = inttoptr i64 %.sroa.01.1.i.i.i to ptr
  br label %.loopexit23.i

.split.i.i.i:                                     ; preds = %"_ZN85_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..BufRead$GT$8fill_buf17h3144868c6479dbe3E.exit.thread.i.i.i"
  %.mask68.i.i.i = and i64 %.sroa.9.042.i.i.i, -4294967296
  %i.bs = icmp eq i64 %.mask68.i.i.i, 17179869184
  br i1 %i.bs, label %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$RF$$u5b$u8$u5d$$C$std..io..error..Error$GT$$GT$17hd95d8408bf809247E.exit30.i.i.i", label %.loopexit23.i

.split67.i.i.i:                                   ; preds = %"_ZN85_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..BufRead$GT$8fill_buf17h3144868c6479dbe3E.exit.thread.i.i.i"
  %i.bt = icmp ne i64 %.sroa.9.042.i.i.i, 0
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.bv = load i8, ptr %i.bu, align 8, !range !3688, !noalias !3814, !noundef !11
  %i.bw = icmp eq i8 %i.bv, 35
  br i1 %i.bw, label %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$RF$$u5b$u8$u5d$$C$std..io..error..Error$GT$$GT$17hd95d8408bf809247E.exit30.i.i.i", label %.loopexit23.i

.split66.i.i.i:                                   ; preds = %"_ZN85_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..BufRead$GT$8fill_buf17h3144868c6479dbe3E.exit.thread.i.i.i"
  %i.bx = getelementptr i8, ptr %i.z, i64 15
  %i.by = load i8, ptr %i.bx, align 8, !range !3688, !noalias !3814, !noundef !11
  %i.bz = icmp eq i8 %i.by, 35
  br i1 %i.bz, label %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$RF$$u5b$u8$u5d$$C$std..io..error..Error$GT$$GT$17hd95d8408bf809247E.exit30.i.i.i", label %.loopexit23.i

bb.i:                                             ; preds = %"_ZN85_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..BufRead$GT$8fill_buf17h3144868c6479dbe3E.exit.thread.i.i.i"
  %i.ca = icmp ult i64 %.sroa.9.042.i.i.i, 180388626432
  tail call void @llvm.assume(i1 %i.ca)
  %.mask.i.i.i = and i64 %.sroa.9.042.i.i.i, 270582939648
  %i.cb = icmp eq i64 %.mask.i.i.i, 150323855360
  br i1 %i.cb, label %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$RF$$u5b$u8$u5d$$C$std..io..error..Error$GT$$GT$17hd95d8408bf809247E.exit30.i.i.i", label %.loopexit23.i

"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$RF$$u5b$u8$u5d$$C$std..io..error..Error$GT$$GT$17hd95d8408bf809247E.exit30.i.i.i": ; preds = %bb.i, %.split66.i.i.i, %.split67.i.i.i, %.split.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.z) ]
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h2fcde3704c8dc432E"(ptr nonnull %i.z)
          to label %.noexc17.i unwind label %.loopexit.i

"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h4f78c4a92701943cE.exit.i": ; preds = %bb.k, %bb.j, %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %.pn.i = phi { ptr, i32 } [ %i.ck, %bb.j ], [ %i.ck, %bb.k ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit24.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp25.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  invoke void @"_ZN56_$LT$std..io..Guard$u20$as$u20$core..ops..drop..Drop$GT$4drop17heb49ac04b342d0f7E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %"_ZN4core3ptr35drop_in_place$LT$std..io..Guard$GT$17h31f86f7eae249bc6E.exit.i" unwind label %bb.o

.loopexit.i:                                      ; preds = %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$RF$$u5b$u8$u5d$$C$std..io..error..Error$GT$$GT$17hd95d8408bf809247E.exit30.i.i.i", %bb.b
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h4f78c4a92701943cE.exit.i"

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.h, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i
  %lpad.loopexit24.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h4f78c4a92701943cE.exit.i"

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %bb.g, %bb.f, %bb.d
  %lpad.loopexit.split-lp25.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h4f78c4a92701943cE.exit.i"

.loopexit23.i:                                    ; preds = %bb.i, %.split66.i.i.i, %.split67.i.i.i, %.split.i.i.i, %.loopexit.i.i.i
  %.sroa.3.0.i.i.i = phi ptr [ %i.br, %.loopexit.i.i.i ], [ %i.z, %.split.i.i.i ], [ %i.z, %.split67.i.i.i ], [ %i.z, %.split66.i.i.i ], [ %i.z, %bb.i ] ; 4 uses
  %.sroa.0.0.i.i.i = phi i64 [ 0, %.loopexit.i.i.i ], [ 1, %.split.i.i.i ], [ 1, %.split67.i.i.i ], [ 1, %.split66.i.i.i ], [ 1, %bb.i ] ; 3 uses
  %i.cc = load ptr, ptr %i.b, align 8, !noalias !3778, !nonnull !11, !align !305, !noundef !11 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !nonnull !11, !noundef !11
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !11
  %i.ch = load i64, ptr %i.f, align 8, !noalias !3778, !noundef !11 ; 2 uses
  %i.ci = sub nuw i64 %i.cg, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3778
  invoke void @_ZN4core3str8converts9from_utf817h61448895180b8340E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.cj, i64 noundef %i.ci)
          to label %bb.l unwind label %bb.j

bb.j:                                             ; preds = %.loopexit23.i
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %2 = trunc nuw i64 %.sroa.0.0.i.i.i to i1
  br i1 %2, label %bb.k, label %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h4f78c4a92701943cE.exit.i"

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.i.i.i) ]
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h2fcde3704c8dc432E"(ptr nonnull %.sroa.3.0.i.i.i)
          to label %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h4f78c4a92701943cE.exit.i" unwind label %bb.o

bb.l:                                             ; preds = %.loopexit23.i
  %i.cl = load i64, ptr %i.a, align 8, !range !2380, !noalias !3778, !noundef !11
  %3 = trunc nuw i64 %i.cl to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3778
  br i1 %3, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cm = load ptr, ptr %i.b, align 8, !noalias !3778, !nonnull !11, !align !305, !noundef !11
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load i64, ptr %i.cn, align 8, !noundef !11 ; 2 uses
  %i.cp = icmp sgt i64 %i.co, -1
  call void @llvm.assume(i1 %i.cp)
  store i64 %i.co, ptr %i.f, align 8, !noalias !3778
  br label %_ZN3std2io16append_to_string17ha7612d0c7b10074cE.exit

bb.n:                                             ; preds = %bb.l
  %i.cq = trunc nuw i64 %.sroa.0.0.i.i.i to i1
  %spec.select.i = select i1 %i.cq, ptr %.sroa.3.0.i.i.i, ptr @99
  br label %_ZN3std2io16append_to_string17ha7612d0c7b10074cE.exit

bb.o:                                             ; preds = %bb.k, %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h4f78c4a92701943cE.exit.i"
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable

"_ZN4core3ptr35drop_in_place$LT$std..io..Guard$GT$17h31f86f7eae249bc6E.exit.i": ; preds = %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h4f78c4a92701943cE.exit.i"
  resume { ptr, i32 } %.pn.i

_ZN3std2io16append_to_string17ha7612d0c7b10074cE.exit: ; preds = %bb.m, %bb.n
  %.sroa.4.0.i = phi ptr [ %spec.select.i, %bb.n ], [ %.sroa.3.0.i.i.i, %bb.m ]
  %.sroa.0.0.i = phi i64 [ 1, %bb.n ], [ %.sroa.0.0.i.i.i, %bb.m ]
  call void @"_ZN56_$LT$std..io..Guard$u20$as$u20$core..ops..drop..Drop$GT$4drop17heb49ac04b342d0f7E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3778
  %i.cs = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i, 0
  %i.ct = insertvalue { i64, ptr } %i.cs, ptr %.sroa.4.0.i, 1
  ret { i64, ptr } %i.ct
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h23f01de31cdacca9E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !align !3851, !noundef !11 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !3852, !noalias !3855, !noundef !11 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.c, 67108864
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h50c0f8c81bb6c463E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h27e1f960e92162ceE.exit"

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h1d34aa19ad65fef9E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h27e1f960e92162ceE.exit"

bb.e:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17hd7ec11e909e70495E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h27e1f960e92162ceE.exit"

"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h27e1f960e92162ceE.exit": ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.i, %bb.d ], [ %i.j, %bb.e ], [ %i.h, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h359294186ef7c5f2E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !align !305, !noundef !11 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !3857, !noalias !3860, !noundef !11 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.c, 67108864
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u64$GT$3fmt17h7c1093c802362d55E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u64$GT$3fmt17h14a8daad5d2c4a1aE.exit"

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h3277f427d6075caeE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u64$GT$3fmt17h14a8daad5d2c4a1aE.exit"

bb.e:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u64$GT$3fmt17h46cb53dc08ca4d34E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u64$GT$3fmt17h14a8daad5d2c4a1aE.exit"

"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u64$GT$3fmt17h14a8daad5d2c4a1aE.exit": ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.i, %bb.d ], [ %i.j, %bb.e ], [ %i.h, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h3c2bcc7e49b274a4E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !align !12, !noundef !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !11
  %i.d = tail call noundef zeroext i1 @"_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h310aa922679ce93dE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc06a86d59da2a3b7E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !align !305, !noundef !11
  %i.b = tail call noundef zeroext i1 @"_ZN58_$LT$std..io..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h62ceb23194058131E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc68774c75f18397fE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !align !305, !noundef !11
  %i.b = tail call noundef zeroext i1 @"_ZN55_$LT$std..path..PathBuf$u20$as$u20$core..fmt..Debug$GT$3fmt17hb5095f6ece0ab423E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hd82d960556626fe9E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !align !305, !noundef !11 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3862)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !3862, !noalias !3865, !nonnull !11, !noundef !11
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !3862, !noalias !3865, !noundef !11
  %i.f = tail call noundef zeroext i1 @"_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h310aa922679ce93dE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.c, i64 noundef %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !3862
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdc52ff35218ba9efE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !align !305, !noundef !11 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3867)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !3867, !noalias !3870, !nonnull !11, !align !12, !noundef !11
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !3867, !noalias !3870, !noundef !11
  %i.e = tail call noundef zeroext i1 @"_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h310aa922679ce93dE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !3867
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17he3eb4c3563660f1eE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !align !12, !noundef !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !11, !align !305, !noundef !11
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !11, !nonnull !11
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 1 %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h00b9a9d1d35d6d36E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !align !305, !noundef !11 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3872)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !3872, !noalias !3875, !nonnull !11, !noundef !11
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !3872, !noalias !3875, !noundef !11
  %i.f = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.c, i64 noundef %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !3872
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17he5b2b0e9409c8b8eE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !align !12, !noundef !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !11
  %i.d = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN45_$LT$$RF$T$u20$as$u20$core..fmt..LowerHex$GT$3fmt17h8b4338ae57529e35E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !align !12, !noundef !11
  %i.b = tail call noundef zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u8$GT$3fmt17h6c991086feef44baE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN45_$LT$$RF$T$u20$as$u20$core..fmt..LowerHex$GT$3fmt17hfdc736df203e66ecE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !align !3877, !noundef !11
  %i.b = tail call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u16$GT$3fmt17h53de4c1af350953cE"(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

end_hunk_0
begin_hunk_1_@"_ZN4core3ptr165drop_in_place$LT$core..iter..adapters..flatten..Flatten$LT$procfs_core..net..SnmpSections$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$$GT$$GT$17h8df567fb1f82b5bfE":bb.a

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4452)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4455)
  %i.r = icmp eq i64 %i.o, 0
  br i1 %i.r, label %"_ZN4core3ptr50drop_in_place$LT$procfs_core..net..SnmpSection$GT$17hcad224812e12d1d1E.exit.i.i.i3.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val1.i.i.i.i.i2.i = load ptr, ptr %i.s, align 8, !alias.scope !4458, !nonnull !11, !noundef !11
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i2.i, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !4458
  br label %"_ZN4core3ptr50drop_in_place$LT$procfs_core..net..SnmpSection$GT$17hcad224812e12d1d1E.exit.i.i.i3.i"

"_ZN4core3ptr50drop_in_place$LT$procfs_core..net..SnmpSection$GT$17hcad224812e12d1d1E.exit.i.i.i3.i": ; preds = %bb.h, %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call fastcc void @"_ZN4core3ptr110drop_in_place$LT$std..collections..hash..map..HashMap$LT$alloc..string..String$C$alloc..string..String$GT$$GT$17h2bdf77755533f9f7E"(ptr noalias noundef readonly align 8 dereferenceable(48) %i.t)
  br label %"_ZN4core3ptr233drop_in_place$LT$core..iter..adapters..flatten..FlattenCompat$LT$procfs_core..net..SnmpSections$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$$C$core..result..IntoIter$LT$procfs_core..net..SnmpSection$GT$$GT$$GT$17h6debdce752bf8722E.exit"

"_ZN4core3ptr233drop_in_place$LT$core..iter..adapters..flatten..FlattenCompat$LT$procfs_core..net..SnmpSections$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$$C$core..result..IntoIter$LT$procfs_core..net..SnmpSection$GT$$GT$$GT$17h6debdce752bf8722E.exit": ; preds = %"_ZN4core3ptr108drop_in_place$LT$core..option..Option$LT$core..result..IntoIter$LT$procfs_core..net..SnmpSection$GT$$GT$$GT$17h776f1cc3059bd498E.exit.i", %bb.f, %"_ZN4core3ptr50drop_in_place$LT$procfs_core..net..SnmpSection$GT$17hcad224812e12d1d1E.exit.i.i.i3.i"
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr171drop_in_place$LT$core..iter..adapters..flatten..Flatten$LT$procfs_core..net..SnmpSections$LT$std..io..buffered..bufreader..BufReader$LT$procfs..FileWrapper$GT$$GT$$GT$$GT$17h47afc0c093900014E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(216) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4459)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4462)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4465)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.c = load i64, ptr %i.b, align 8, !range !413, !alias.scope !4468, !noundef !11 ; 3 uses
  %i.d = icmp eq i64 %i.c, -9223372036854775808
  br i1 %i.d, label %"_ZN4core3ptr165drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$procfs_core..net..SnmpSections$LT$std..io..buffered..bufreader..BufReader$LT$procfs..FileWrapper$GT$$GT$$GT$$GT$17h29699834bdfc5669E.exit.i", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4469)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4472)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val1.i.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !4475, !noundef !11 ; 2 uses
  %i.f = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.f, label %"_ZN4core3ptr65drop_in_place$LT$std..io..buffered..bufreader..buffer..Buffer$GT$17h98db146f3693f46bE.exit.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.b
  %.val.i.i.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !4475, !nonnull !11, !noundef !11
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i, i64 noundef 1) #42, !noalias !4475
  br label %"_ZN4core3ptr65drop_in_place$LT$std..io..buffered..bufreader..buffer..Buffer$GT$17h98db146f3693f46bE.exit.i.i.i.i.i"

"_ZN4core3ptr65drop_in_place$LT$std..io..buffered..bufreader..buffer..Buffer$GT$17h98db146f3693f46bE.exit.i.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i", %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4476)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.val.i.i.i.i.i.i = load i32, ptr %i.g, align 8, !range !522, !alias.scope !4479, !noundef !11
  %i.h = tail call noundef i32 @close(i32 noundef %.val.i.i.i.i.i.i) #42, !noalias !4479 ; 0 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4480)
  %i.i = icmp eq i64 %i.c, 0
  br i1 %i.i, label %"_ZN4core3ptr165drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$procfs_core..net..SnmpSections$LT$std..io..buffered..bufreader..BufReader$LT$procfs..FileWrapper$GT$$GT$$GT$$GT$17h29699834bdfc5669E.exit.i", label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ptr65drop_in_place$LT$std..io..buffered..bufreader..buffer..Buffer$GT$17h98db146f3693f46bE.exit.i.i.i.i.i"
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.val1.i2.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !4483, !nonnull !11, !noundef !11
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i2.i.i.i.i.i.i, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !4483
  br label %"_ZN4core3ptr165drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$procfs_core..net..SnmpSections$LT$std..io..buffered..bufreader..BufReader$LT$procfs..FileWrapper$GT$$GT$$GT$$GT$17h29699834bdfc5669E.exit.i"

"_ZN4core3ptr165drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$procfs_core..net..SnmpSections$LT$std..io..buffered..bufreader..BufReader$LT$procfs..FileWrapper$GT$$GT$$GT$$GT$17h29699834bdfc5669E.exit.i": ; preds = %bb.c, %"_ZN4core3ptr65drop_in_place$LT$std..io..buffered..bufreader..buffer..Buffer$GT$17h98db146f3693f46bE.exit.i.i.i.i.i", %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4484)
  %i.k = load i64, ptr %0, align 8, !range !2186, !alias.scope !4487, !noundef !11 ; 4 uses
  %i.l = icmp eq i64 %i.k, -9223372036854775807
  br i1 %i.l, label %"_ZN4core3ptr108drop_in_place$LT$core..option..Option$LT$core..result..IntoIter$LT$procfs_core..net..SnmpSection$GT$$GT$$GT$17h776f1cc3059bd498E.exit.i", label %bb.d

bb.d:                                             ; preds = %"_ZN4core3ptr165drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$procfs_core..net..SnmpSections$LT$std..io..buffered..bufreader..BufReader$LT$procfs..FileWrapper$GT$$GT$$GT$$GT$17h29699834bdfc5669E.exit.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4488)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4491)
  %i.m = icmp eq i64 %i.k, -9223372036854775808
  br i1 %i.m, label %"_ZN4core3ptr108drop_in_place$LT$core..option..Option$LT$core..result..IntoIter$LT$procfs_core..net..SnmpSection$GT$$GT$$GT$17h776f1cc3059bd498E.exit.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4494)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4497)
  %i.n = icmp eq i64 %i.k, 0
  br i1 %i.n, label %"_ZN4core3ptr50drop_in_place$LT$procfs_core..net..SnmpSection$GT$17hcad224812e12d1d1E.exit.i.i.i.i", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !4500, !nonnull !11, !noundef !11
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !4500
  br label %"_ZN4core3ptr50drop_in_place$LT$procfs_core..net..SnmpSection$GT$17hcad224812e12d1d1E.exit.i.i.i.i"

"_ZN4core3ptr50drop_in_place$LT$procfs_core..net..SnmpSection$GT$17hcad224812e12d1d1E.exit.i.i.i.i": ; preds = %bb.f, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @"_ZN4core3ptr110drop_in_place$LT$std..collections..hash..map..HashMap$LT$alloc..string..String$C$alloc..string..String$GT$$GT$17h2bdf77755533f9f7E"(ptr noalias noundef readonly align 8 dereferenceable(48) %i.p)
  br label %"_ZN4core3ptr108drop_in_place$LT$core..option..Option$LT$core..result..IntoIter$LT$procfs_core..net..SnmpSection$GT$$GT$$GT$17h776f1cc3059bd498E.exit.i"

"_ZN4core3ptr108drop_in_place$LT$core..option..Option$LT$core..result..IntoIter$LT$procfs_core..net..SnmpSection$GT$$GT$$GT$17h776f1cc3059bd498E.exit.i": ; preds = %"_ZN4core3ptr50drop_in_place$LT$procfs_core..net..SnmpSection$GT$17hcad224812e12d1d1E.exit.i.i.i.i", %bb.d, %"_ZN4core3ptr165drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$procfs_core..net..SnmpSections$LT$std..io..buffered..bufreader..BufReader$LT$procfs..FileWrapper$GT$$GT$$GT$$GT$17h29699834bdfc5669E.exit.i"
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4501)
  %i.r = load i64, ptr %i.q, align 8, !range !2186, !alias.scope !4504, !noundef !11 ; 4 uses
  %i.s = icmp eq i64 %i.r, -9223372036854775807
  br i1 %i.s, label %"_ZN4core3ptr239drop_in_place$LT$core..iter..adapters..flatten..FlattenCompat$LT$procfs_core..net..SnmpSections$LT$std..io..buffered..bufreader..BufReader$LT$procfs..FileWrapper$GT$$GT$$C$core..result..IntoIter$LT$procfs_core..net..SnmpSection$GT$$GT$$GT$17hb48f357af79481ccE.exit", label %bb.g

bb.g:                                             ; preds = %"_ZN4core3ptr108drop_in_place$LT$core..option..Option$LT$core..result..IntoIter$LT$procfs_core..net..SnmpSection$GT$$GT$$GT$17h776f1cc3059bd498E.exit.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4505)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4508)
  %i.t = icmp eq i64 %i.r, -9223372036854775808
  br i1 %i.t, label %"_ZN4core3ptr239drop_in_place$LT$core..iter..adapters..flatten..FlattenCompat$LT$procfs_core..net..SnmpSections$LT$std..io..buffered..bufreader..BufReader$LT$procfs..FileWrapper$GT$$GT$$C$core..result..IntoIter$LT$procfs_core..net..SnmpSection$GT$$GT$$GT$17hb48f357af79481ccE.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4511)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4514)
  %i.u = icmp eq i64 %i.r, 0
  br i1 %i.u, label %"_ZN4core3ptr50drop_in_place$LT$procfs_core..net..SnmpSection$GT$17hcad224812e12d1d1E.exit.i.i.i3.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val1.i.i.i.i.i2.i = load ptr, ptr %i.v, align 8, !alias.scope !4517, !nonnull !11, !noundef !11
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i2.i, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !4517
  br label %"_ZN4core3ptr50drop_in_place$LT$procfs_core..net..SnmpSection$GT$17hcad224812e12d1d1E.exit.i.i.i3.i"

"_ZN4core3ptr50drop_in_place$LT$procfs_core..net..SnmpSection$GT$17hcad224812e12d1d1E.exit.i.i.i3.i": ; preds = %bb.i, %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call fastcc void @"_ZN4core3ptr110drop_in_place$LT$std..collections..hash..map..HashMap$LT$alloc..string..String$C$alloc..string..String$GT$$GT$17h2bdf77755533f9f7E"(ptr noalias noundef readonly align 8 dereferenceable(48) %i.w)
  br label %"_ZN4core3ptr239drop_in_place$LT$core..iter..adapters..flatten..FlattenCompat$LT$procfs_core..net..SnmpSections$LT$std..io..buffered..bufreader..BufReader$LT$procfs..FileWrapper$GT$$GT$$C$core..result..IntoIter$LT$procfs_core..net..SnmpSection$GT$$GT$$GT$17hb48f357af79481ccE.exit"

"_ZN4core3ptr239drop_in_place$LT$core..iter..adapters..flatten..FlattenCompat$LT$procfs_core..net..SnmpSections$LT$std..io..buffered..bufreader..BufReader$LT$procfs..FileWrapper$GT$$GT$$C$core..result..IntoIter$LT$procfs_core..net..SnmpSection$GT$$GT$$GT$17hb48f357af79481ccE.exit": ; preds = %"_ZN4core3ptr108drop_in_place$LT$core..option..Option$LT$core..result..IntoIter$LT$procfs_core..net..SnmpSection$GT$$GT$$GT$17h776f1cc3059bd498E.exit.i", %bb.g, %"_ZN4core3ptr50drop_in_place$LT$procfs_core..net..SnmpSection$GT$17hcad224812e12d1d1E.exit.i.i.i3.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr181drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h5380fa808570419fE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4518)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !4518, !noundef !11 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !4518
  %.val2.i = load ptr, ptr %0, align 8, !alias.scope !4518 ; 10 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haf072399a608241cE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !4518, !noundef !11 ; 2 uses
  %.not4.i.i = icmp eq i64 %i.d, -1
  br i1 %.not4.i.i, label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haf072399a608241cE.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.sroa.0.03.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.f, %bb.e ] ; 5 uses
  %i.f = add nuw i64 %.sroa.0.03.i.i, 1
  %i.g = load ptr, ptr %.val2.i, align 8, !noalias !4518, !nonnull !11, !noundef !11
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.0.03.i.i ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !4518, !noundef !11
  %i.j = icmp eq i8 %i.i, -128
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.neg.i.i = xor i64 %.sroa.0.03.i.i, -1
  %i.k = add i64 %.sroa.0.03.i.i, -16
  %i.l = load i64, ptr %i.c, align 8, !noalias !4518, !noundef !11
  %i.m = and i64 %i.l, %i.k
  store i8 -1, ptr %i.h, align 1, !noalias !4518
  %i.n = load ptr, ptr %.val2.i, align 8, !noalias !4518, !nonnull !11, !noundef !11
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i8 -1, ptr %i.p, align 1, !noalias !4518
  %i.q = load ptr, ptr %.val2.i, align 8, !noalias !4518, !nonnull !11, !noundef !11
  %.neg4.i.i = mul i64 %.val1.i, %.neg.i.i
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %.neg4.i.i
  tail call void %.val.i(ptr noundef nonnull %i.r), !noalias !4518, !inline_history !4521
  %i.s = load i64, ptr %i.e, align 8, !noalias !4518, !noundef !11
  %i.t = add i64 %i.s, -1
  store i64 %i.t, ptr %i.e, align 8, !noalias !4518
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %exitcond.not.i.i = icmp eq i64 %.sroa.0.03.i.i, %i.d
  br i1 %exitcond.not.i.i, label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haf072399a608241cE.exit", label %bb.c

"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haf072399a608241cE.exit": ; preds = %bb.e, %bb.a, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noalias !4518, !noundef !11 ; 3 uses
  %i.w = icmp ult i64 %i.v, 8
  %i.x = add i64 %i.v, 1
  %i.y = lshr i64 %i.x, 3
  %i.z = mul nuw i64 %i.y, 7
  %.sroa.03.0.i.i = select i1 %i.w, i64 %i.v, i64 %i.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !4518, !noundef !11
  %i.ac = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.ad = sub i64 %.sroa.03.0.i.i, %i.ab
  store i64 %i.ad, ptr %i.ac, align 8, !noalias !4518
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_ZN4core3ptr19swap_nonoverlapping17h3caeff55f02f2a35E(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i64 noundef range(i64 16, 177) %2) unnamed_addr #9 {
bb.a:
  %i.a = lshr i64 %2, 3                           ; 5 uses
  %min.iters.check = icmp samesign ult i64 %2, 64
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.b = and i64 %2, 248                          ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.b
  %scevgep1 = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %0, %scevgep1
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, 28                       ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4525)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %0, align 1, !alias.scope !4527, !noalias !4530
  %wide.load2 = load <2 x i64>, ptr %i.c, align 1, !alias.scope !4527, !noalias !4530
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %wide.load3 = load <2 x i64>, ptr %1, align 1, !alias.scope !4530, !noalias !4522
  %wide.load4 = load <2 x i64>, ptr %i.d, align 1, !alias.scope !4530, !noalias !4522
  store <2 x i64> %wide.load3, ptr %0, align 1, !alias.scope !4527, !noalias !4530
  store <2 x i64> %wide.load4, ptr %i.c, align 1, !alias.scope !4527, !noalias !4530
  store <2 x i64> %wide.load, ptr %1, align 1, !alias.scope !4530, !noalias !4522
  store <2 x i64> %wide.load2, ptr %i.d, align 1, !alias.scope !4530, !noalias !4522
  %i.e = icmp eq i64 %n.vec, 4
  br i1 %i.e, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4532)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4534)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %wide.load.1 = load <2 x i64>, ptr %i.f, align 1, !alias.scope !4536, !noalias !4537
  %wide.load2.1 = load <2 x i64>, ptr %i.h, align 1, !alias.scope !4536, !noalias !4537
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %wide.load3.1 = load <2 x i64>, ptr %i.g, align 1, !alias.scope !4537, !noalias !4532
  %wide.load4.1 = load <2 x i64>, ptr %i.i, align 1, !alias.scope !4537, !noalias !4532
  store <2 x i64> %wide.load3.1, ptr %i.f, align 1, !alias.scope !4536, !noalias !4537
  store <2 x i64> %wide.load4.1, ptr %i.h, align 1, !alias.scope !4536, !noalias !4537
  store <2 x i64> %wide.load.1, ptr %i.g, align 1, !alias.scope !4537, !noalias !4532
  store <2 x i64> %wide.load2.1, ptr %i.i, align 1, !alias.scope !4537, !noalias !4532
  %i.j = icmp eq i64 %n.vec, 8
  br i1 %i.j, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4538)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4540)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %wide.load.2 = load <2 x i64>, ptr %i.k, align 1, !alias.scope !4542, !noalias !4543
  %wide.load2.2 = load <2 x i64>, ptr %i.m, align 1, !alias.scope !4542, !noalias !4543
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %wide.load3.2 = load <2 x i64>, ptr %i.l, align 1, !alias.scope !4543, !noalias !4538
  %wide.load4.2 = load <2 x i64>, ptr %i.n, align 1, !alias.scope !4543, !noalias !4538
  store <2 x i64> %wide.load3.2, ptr %i.k, align 1, !alias.scope !4542, !noalias !4543
  store <2 x i64> %wide.load4.2, ptr %i.m, align 1, !alias.scope !4542, !noalias !4543
  store <2 x i64> %wide.load.2, ptr %i.l, align 1, !alias.scope !4543, !noalias !4538
  store <2 x i64> %wide.load2.2, ptr %i.n, align 1, !alias.scope !4543, !noalias !4538
  %i.o = icmp eq i64 %n.vec, 12
  br i1 %i.o, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4544)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4546)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %wide.load.3 = load <2 x i64>, ptr %i.p, align 1, !alias.scope !4548, !noalias !4549
  %wide.load2.3 = load <2 x i64>, ptr %i.r, align 1, !alias.scope !4548, !noalias !4549
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %wide.load3.3 = load <2 x i64>, ptr %i.q, align 1, !alias.scope !4549, !noalias !4544
  %wide.load4.3 = load <2 x i64>, ptr %i.s, align 1, !alias.scope !4549, !noalias !4544
  store <2 x i64> %wide.load3.3, ptr %i.p, align 1, !alias.scope !4548, !noalias !4549
  store <2 x i64> %wide.load4.3, ptr %i.r, align 1, !alias.scope !4548, !noalias !4549
  store <2 x i64> %wide.load.3, ptr %i.q, align 1, !alias.scope !4549, !noalias !4544
  store <2 x i64> %wide.load2.3, ptr %i.s, align 1, !alias.scope !4549, !noalias !4544
  %i.t = icmp eq i64 %n.vec, 16
  br i1 %i.t, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4550)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4552)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %wide.load.4 = load <2 x i64>, ptr %i.u, align 1, !alias.scope !4554, !noalias !4555
  %wide.load2.4 = load <2 x i64>, ptr %i.w, align 1, !alias.scope !4554, !noalias !4555
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %wide.load3.4 = load <2 x i64>, ptr %i.v, align 1, !alias.scope !4555, !noalias !4550
  %wide.load4.4 = load <2 x i64>, ptr %i.x, align 1, !alias.scope !4555, !noalias !4550
  store <2 x i64> %wide.load3.4, ptr %i.u, align 1, !alias.scope !4554, !noalias !4555
  store <2 x i64> %wide.load4.4, ptr %i.w, align 1, !alias.scope !4554, !noalias !4555
  store <2 x i64> %wide.load.4, ptr %i.v, align 1, !alias.scope !4555, !noalias !4550
  store <2 x i64> %wide.load2.4, ptr %i.x, align 1, !alias.scope !4555, !noalias !4550
  br label %middle.block

middle.block:                                     ; preds = %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h5541fb43294951f2E.exit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.sroa.0.03.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0.03.i.i.ph, 1
  %lcmp.mod.not = trunc i64 %i.a to i1
  br i1 %lcmp.mod.not, label %scalar.ph.prol, label %scalar.ph.prol.loopexit

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.y = or disjoint i64 %.sroa.0.03.i.i.ph, 1
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.03.i.i.ph ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.03.i.i.ph ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4525)
  %.sroa.0.0.copyload.i.i.i.prol = load i64, ptr %i.z, align 1, !alias.scope !4522, !noalias !4525
  %.sroa.02.0.copyload.i.i.i.prol = load i64, ptr %i.aa, align 1, !alias.scope !4525, !noalias !4522
  store i64 %.sroa.02.0.copyload.i.i.i.prol, ptr %i.z, align 1, !alias.scope !4522, !noalias !4525
  store i64 %.sroa.0.0.copyload.i.i.i.prol, ptr %i.aa, align 1, !alias.scope !4525, !noalias !4522
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.03.i.i.unr = phi i64 [ %.sroa.0.03.i.i.ph, %scalar.ph.preheader ], [ %i.y, %scalar.ph.prol ]
  %i.ab = icmp eq i64 %i.a, %.neg
  br i1 %i.ab, label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h5541fb43294951f2E.exit.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.0.03.i.i = phi i64 [ %i.af, %scalar.ph ], [ %.sroa.0.03.i.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.ac = add nuw nsw i64 %.sroa.0.03.i.i, 1      ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.03.i.i ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.03.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4525)
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ad, align 1, !alias.scope !4522, !noalias !4525
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %i.ae, align 1, !alias.scope !4525, !noalias !4522
  store i64 %.sroa.02.0.copyload.i.i.i, ptr %i.ad, align 1, !alias.scope !4522, !noalias !4525
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.ae, align 1, !alias.scope !4525, !noalias !4522
  %i.af = add nuw nsw i64 %.sroa.0.03.i.i, 2      ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ac ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ac ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4556)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4558)
  %.sroa.0.0.copyload.i.i.i.1 = load i64, ptr %i.ag, align 1, !alias.scope !4556, !noalias !4558
  %.sroa.02.0.copyload.i.i.i.1 = load i64, ptr %i.ah, align 1, !alias.scope !4558, !noalias !4556
  store i64 %.sroa.02.0.copyload.i.i.i.1, ptr %i.ag, align 1, !alias.scope !4556, !noalias !4558
  store i64 %.sroa.0.0.copyload.i.i.i.1, ptr %i.ah, align 1, !alias.scope !4558, !noalias !4556
  %exitcond.not.i.i.1 = icmp eq i64 %i.af, %i.a
  br i1 %exitcond.not.i.i.1, label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h5541fb43294951f2E.exit.i, label %scalar.ph, !llvm.loop !4560

_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h5541fb43294951f2E.exit.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ai = and i64 %2, 7                           ; 2 uses
  %.not.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i, label %_ZN4core3ptr25swap_nonoverlapping_bytes17h2566d41837ce52f6E.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h5541fb43294951f2E.exit.i
  %i.aj = and i64 %2, 248                         ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %i.aj ; 4 uses
  %i.am = icmp samesign ult i64 %i.ai, 4
  br i1 %i.am, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4562)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4565)
  %.sroa.0.0.copyload.i.i4.i = load i32, ptr %i.ak, align 1, !alias.scope !4562, !noalias !4565
  %.sroa.02.0.copyload.i.i5.i = load i32, ptr %i.al, align 1, !alias.scope !4565, !noalias !4562
  store i32 %.sroa.02.0.copyload.i.i5.i, ptr %i.ak, align 1, !alias.scope !4562, !noalias !4565
  store i32 %.sroa.0.0.copyload.i.i4.i, ptr %i.al, align 1, !alias.scope !4565, !noalias !4562
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.b ], [ 4, %bb.c ] ; 4 uses
  %i.an = and i64 %2, 2
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.sroa.0.0.i.i ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 %.sroa.0.0.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4567)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4570)
  %.sroa.0.0.copyload.i9.i.i = load i16, ptr %i.ap, align 1, !alias.scope !4567, !noalias !4570
  %.sroa.02.0.copyload.i10.i.i = load i16, ptr %i.aq, align 1, !alias.scope !4570, !noalias !4567
  store i16 %.sroa.02.0.copyload.i10.i.i, ptr %i.ap, align 1, !alias.scope !4567, !noalias !4570
  store i16 %.sroa.0.0.copyload.i9.i.i, ptr %i.aq, align 1, !alias.scope !4570, !noalias !4567
  %i.ar = or disjoint i64 %.sroa.0.0.i.i, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i = phi i64 [ %.sroa.0.0.i.i, %bb.d ], [ %i.ar, %bb.e ] ; 2 uses
  %3 = trunc i64 %2 to i1
  br i1 %3, label %bb.g, label %_ZN4core3ptr25swap_nonoverlapping_bytes17h2566d41837ce52f6E.exit

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.sroa.0.1.i.i ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 %.sroa.0.1.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4572)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4575)
  %.sroa.0.0.copyload.i11.i.i = load i8, ptr %i.as, align 1, !alias.scope !4572, !noalias !4575
  %.sroa.02.0.copyload.i12.i.i = load i8, ptr %i.at, align 1, !alias.scope !4575, !noalias !4572
  store i8 %.sroa.02.0.copyload.i12.i.i, ptr %i.as, align 1, !alias.scope !4572, !noalias !4575
  store i8 %.sroa.0.0.copyload.i11.i.i, ptr %i.at, align 1, !alias.scope !4575, !noalias !4572
  br label %_ZN4core3ptr25swap_nonoverlapping_bytes17h2566d41837ce52f6E.exit

_ZN4core3ptr25swap_nonoverlapping_bytes17h2566d41837ce52f6E.exit: ; preds = %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h5541fb43294951f2E.exit.i, %bb.f, %bb.g
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr344drop_in_place$LT$core..iter..adapters..map..Map$LT$std..io..Lines$LT$std..io..buffered..bufreader..BufReader$LT$procfs..FileWrapper$GT$$GT$$C$$LT$procfs_core..process..MemoryMaps$u20$as$u20$procfs_core..FromBufRead$GT$..from_buf_read$LT$std..io..buffered..bufreader..BufReader$LT$procfs..FileWrapper$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h094e2ec77da35b12E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4577)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4580)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load i64, ptr %i.a, align 8, !alias.scope !4583, !noundef !11 ; 2 uses
  %i.b = icmp eq i64 %.val1.i.i, 0
  br i1 %i.b, label %"_ZN4core3ptr65drop_in_place$LT$std..io..buffered..bufreader..buffer..Buffer$GT$17h98db146f3693f46bE.exit.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i": ; preds = %bb.a
  %.val.i.i = load ptr, ptr %0, align 8, !alias.scope !4583, !nonnull !11, !noundef !11
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %.val1.i.i, i64 noundef 1) #42, !noalias !4583
  br label %"_ZN4core3ptr65drop_in_place$LT$std..io..buffered..bufreader..buffer..Buffer$GT$17h98db146f3693f46bE.exit.i.i"

"_ZN4core3ptr65drop_in_place$LT$std..io..buffered..bufreader..buffer..Buffer$GT$17h98db146f3693f46bE.exit.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i", %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4584)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val.i.i.i = load i32, ptr %i.d, align 8, !range !522, !alias.scope !4587, !noundef !11
  %i.e = tail call noundef i32 @close(i32 noundef %.val.i.i.i) #42, !noalias !4587 ; 0 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4588)
  %.val.i1.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !4591 ; 2 uses
  %i.f = icmp eq i64 %.val.i1.i.i.i, 0
  br i1 %i.f, label %"_ZN4core3ptr109drop_in_place$LT$std..io..Lines$LT$std..io..buffered..bufreader..BufReader$LT$procfs..FileWrapper$GT$$GT$$GT$17ha8370cff42c21e03E.exit", label %bb.b

bb.b:                                             ; preds = %"_ZN4core3ptr65drop_in_place$LT$std..io..buffered..bufreader..buffer..Buffer$GT$17h98db146f3693f46bE.exit.i.i"
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val1.i2.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !4591, !nonnull !11, !noundef !11
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i2.i.i.i, i64 noundef %.val.i1.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !4591
  br label %"_ZN4core3ptr109drop_in_place$LT$std..io..Lines$LT$std..io..buffered..bufreader..BufReader$LT$procfs..FileWrapper$GT$$GT$$GT$17ha8370cff42c21e03E.exit"

"_ZN4core3ptr109drop_in_place$LT$std..io..Lines$LT$std..io..buffered..bufreader..BufReader$LT$procfs..FileWrapper$GT$$GT$$GT$17ha8370cff42c21e03E.exit": ; preds = %"_ZN4core3ptr65drop_in_place$LT$std..io..buffered..bufreader..buffer..Buffer$GT$17h98db146f3693f46bE.exit.i.i", %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr38drop_in_place$LT$std..fs..DirEntry$GT$17h71c4ed5d8deea3e2E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4592)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4595)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4598)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !4601, !nonnull !11, !noundef !11
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !4601
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Arc$LT$std..sys..fs..unix..InnerReadDir$GT$$GT$17h5e642e2611d6238bE.exit.i"

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hde34f2c2e678ef7eE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %0)
          to label %"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Arc$LT$std..sys..fs..unix..InnerReadDir$GT$$GT$17h5e642e2611d6238bE.exit.i" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2.i = load ptr, ptr %i.e, align 8, !alias.scope !4592, !nonnull !11, !align !12, !noundef !11 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i = load i64, ptr %i.f, align 8, !alias.scope !4592 ; 2 uses
  store i8 0, ptr %.val2.i, align 1
  %i.g = icmp eq i64 %.val3.i, 0
  br i1 %i.g, label %"_ZN4core3ptr47drop_in_place$LT$alloc..ffi..c_str..CString$GT$17hf6e2bd42be3e4d64E.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i": ; preds = %bb.c
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %.val3.i, i64 noundef 1) #42
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..ffi..c_str..CString$GT$17hf6e2bd42be3e4d64E.exit.i"

"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Arc$LT$std..sys..fs..unix..InnerReadDir$GT$$GT$17h5e642e2611d6238bE.exit.i": ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.h, align 8, !alias.scope !4592, !nonnull !11, !align !12, !noundef !11 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.i, align 8, !alias.scope !4592 ; 2 uses
  store i8 0, ptr %.val.i, align 1
  %i.j = icmp eq i64 %.val1.i, 0
  br i1 %i.j, label %"_ZN4core3ptr49drop_in_place$LT$std..sys..fs..unix..DirEntry$GT$17hfbbde0d7899e925dE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i4.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i4.i": ; preds = %"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Arc$LT$std..sys..fs..unix..InnerReadDir$GT$$GT$17h5e642e2611d6238bE.exit.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %.val1.i, i64 noundef 1) #42
  br label %"_ZN4core3ptr49drop_in_place$LT$std..sys..fs..unix..DirEntry$GT$17hfbbde0d7899e925dE.exit"

"_ZN4core3ptr47drop_in_place$LT$alloc..ffi..c_str..CString$GT$17hf6e2bd42be3e4d64E.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i", %bb.c
  resume { ptr, i32 } %i.d

"_ZN4core3ptr49drop_in_place$LT$std..sys..fs..unix..DirEntry$GT$17hfbbde0d7899e925dE.exit": ; preds = %"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Arc$LT$std..sys..fs..unix..InnerReadDir$GT$$GT$17h5e642e2611d6238bE.exit.i", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i4.i"
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h6c9b0e7a1d081e2bE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h3e92cabc75bbb45eE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !11, !noundef !11
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #42
  br label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h3e92cabc75bbb45eE.exit"

"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h3e92cabc75bbb45eE.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @"_ZN4core3ptr40drop_in_place$LT$procfs..FileWrapper$GT$17hc0e045d5bd7d3969E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load i32, ptr %i.a, align 8, !range !522, !noundef !11
  %i.b = tail call noundef i32 @close(i32 noundef %.val) #42 ; 0 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4602)
  %.val.i1 = load i64, ptr %0, align 8, !alias.scope !4602 ; 2 uses
  %i.c = icmp eq i64 %.val.i1, 0
  br i1 %i.c, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h6c9b0e7a1d081e2bE.exit3", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i2 = load ptr, ptr %i.d, align 8, !alias.scope !4602, !nonnull !11, !noundef !11
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i2, i64 noundef %.val.i1, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !4602
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h6c9b0e7a1d081e2bE.exit3"

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h6c9b0e7a1d081e2bE.exit3": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha55e5cb075280506E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !11, !noundef !11
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #42
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha55e5cb075280506E.exit"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha55e5cb075280506E.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h2fcde3704c8dc432E"(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = ptrtoint ptr %.0.val to i64
  %i.b = and i64 %i.a, 3
  switch i64 %i.b, label %default.unreachable [
    i64 2, label %"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17hafc79f24a304e24fE.exit"
    i64 3, label %bb.b
    i64 0, label %"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17hafc79f24a304e24fE.exit"
    i64 1, label %bb.c
  ], !prof !3687

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult ptr %.0.val, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %i.c)
  br label %"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17hafc79f24a304e24fE.exit"

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.0.val, i64 -1    ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %.val.i.i.i.i = load ptr, ptr %i.d, align 8     ; 5 uses
  %i.e = getelementptr i8, ptr %.0.val, i64 7
  %.val1.i.i.i.i = load ptr, ptr %i.e, align 8, !nonnull !11, !align !305, !noundef !11 ; 5 uses
  %i.f = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !11 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  invoke void %i.f(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !699, !invariant.load !11 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !4092, !invariant.load !11 ; 2 uses
  %i.k = icmp ult i64 %i.j, -9223372036854775807
end_hunk_1
begin_hunk_2_@"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h921eef8f3a0a02baE":bb.a
  tail call void @llvm.assume(i1 %i.cu)
  switch i32 %.sroa.4.1.i.ph.i.i.i.i, label %bb.n [
    i32 32, label %bb.t
    i32 13, label %bb.t
    i32 12, label %bb.t
    i32 11, label %bb.t
    i32 10, label %bb.t
    i32 9, label %bb.t
  ]

bb.n:                                             ; preds = %bb.m
  %i.cv = icmp samesign ugt i32 %.sroa.4.1.i.ph.i.i.i.i, 127
  br i1 %i.cv, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.cw = lshr i32 %.sroa.4.1.i.ph.i.i.i.i, 8
  switch i32 %i.cw, label %bb.u [
    i32 0, label %bb.r
    i32 22, label %bb.p
    i32 32, label %bb.s
    i32 48, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.cx = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 5760
  %i.cy = zext i1 %i.cx to i8
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17hd6617f792c314715E.exit.i.i.i6"

bb.q:                                             ; preds = %bb.o
  %i.cz = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 12288
  %i.da = zext i1 %i.cz to i8
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17hd6617f792c314715E.exit.i.i.i6"

bb.r:                                             ; preds = %bb.o
  %i.db = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr @_ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17h4cf41e25fd3a5318E, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !noalias !5201, !noundef !11
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17hd6617f792c314715E.exit.i.i.i6"

bb.s:                                             ; preds = %bb.o
  %i.df = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr @_ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17h4cf41e25fd3a5318E, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !noalias !5201, !noundef !11
  %i.dj = lshr i8 %i.di, 1
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17hd6617f792c314715E.exit.i.i.i6"

"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17hd6617f792c314715E.exit.i.i.i6": ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.sroa.0.0.i.i.i.i.i.i.i7 = phi i8 [ %i.da, %bb.q ], [ %i.de, %bb.r ], [ %i.cy, %bb.p ], [ %i.dj, %bb.s ]
  %i.dk = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i7 to i1
  br i1 %i.dk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17hd6617f792c314715E.exit.i.i.i6", %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %i.dl = icmp eq ptr %.sroa.4.121, %i.ct
  br i1 %i.dl, label %.loopexit, label %.lr.ph.i.i4

bb.u:                                             ; preds = %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17hd6617f792c314715E.exit.i.i.i6", %bb.o, %bb.n
  %i.dm = ptrtoint ptr %i.bj to i64
  %i.dn = ptrtoint ptr %.sroa.4.121 to i64
  %i.do = sub i64 %.sroa.18.019, %i.dn
  %i.dp = add i64 %i.do, %i.dm
  br label %.loopexit

.loopexit:                                        ; preds = %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h4e5310b91e238681E.exit.i.i", %bb.t, %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h35582219c37a2decE.exit", %bb.u
  %.sroa.0.042 = phi i64 [ %.sroa.0.0, %bb.u ], [ %.sroa.0.0, %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h35582219c37a2decE.exit" ], [ %.sroa.0.0, %bb.t ], [ 0, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h4e5310b91e238681E.exit.i.i" ] ; 2 uses
  %.sroa.01.1 = phi i64 [ %i.dp, %bb.u ], [ %.sroa.18.019, %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h35582219c37a2decE.exit" ], [ %.sroa.18.019, %bb.t ], [ 0, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h4e5310b91e238681E.exit.i.i" ]
  %i.dq = sub nuw i64 %.sroa.01.1, %.sroa.0.042
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.042
  %i.ds = insertvalue { ptr, i64 } poison, ptr %i.dr, 0
  %i.dt = insertvalue { ptr, i64 } %i.ds, i64 %i.dq, 1
  ret { ptr, i64 } %i.dt
}

; Function Attrs: cold inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17hc320c9e49cc5f50cE"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i16 noundef range(i16 1, 0) %2, i1 noundef zeroext %3) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  br i1 %3, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread13, label %.preheader16

.preheader16:                                     ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !align !12, !noundef !11
  %i.b = getelementptr i8, ptr %i.a, i64 %1       ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !11 ; 6 uses
  %i.f = load ptr, ptr %i.c, align 8, !nonnull !11, !align !12, !noundef !11 ; 5 uses
  %i.g = icmp ult i64 %i.e, 4
  %i.h = getelementptr i8, ptr %i.f, i64 %i.e
  %i.i = getelementptr i8, ptr %i.h, i64 -4
  br i1 %i.g, label %.preheader.us.preheader, label %.preheader16.split

.preheader.us.preheader:                          ; preds = %.preheader16
  %exitcond.not.i.us30 = icmp eq i64 %i.e, 0      ; 3 uses
  %exitcond.not.i.us = icmp eq i64 %i.e, 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %exitcond.not.i.us.1 = icmp eq i64 %i.e, 2
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread.loopexit.us
  %.sroa.01.018.us = phi i16 [ %i.z, %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread.loopexit.us ], [ %2, %.preheader.us.preheader ] ; 2 uses
  %i.l = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.018.us, i1 true) ; 2 uses
  %i.m = zext nneg i16 %i.l to i64
  %i.n = getelementptr i8, ptr %i.b, i64 %i.m     ; 3 uses
  %i.o = getelementptr i8, ptr %i.n, i64 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5205)
  br i1 %exitcond.not.i.us30, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread13, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  br i1 %exitcond.not.i.us, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread13, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.b
  %i.p = getelementptr i8, ptr %i.n, i64 2
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !5202, !noalias !5205, !noundef !11
  %i.r = load i8, ptr %i.j, align 1, !alias.scope !5205, !noalias !5202, !noundef !11
  %.not13.i.us.1 = icmp eq i8 %i.q, %i.r
  br i1 %.not13.i.us.1, label %bb.c, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread.loopexit.us

bb.c:                                             ; preds = %.lr.ph.1
  br i1 %exitcond.not.i.us.1, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread13, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.n, i64 3
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !5202, !noalias !5205, !noundef !11
  %i.u = load i8, ptr %i.k, align 1, !alias.scope !5205, !noalias !5202, !noundef !11
  %.not13.i.us.2 = icmp eq i8 %i.t, %i.u
  br i1 %.not13.i.us.2, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread13, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread.loopexit.us

.lr.ph:                                           ; preds = %.preheader.us
  %i.v = load i8, ptr %i.o, align 1, !alias.scope !5202, !noalias !5205, !noundef !11
  %i.w = load i8, ptr %i.f, align 1, !alias.scope !5205, !noalias !5202, !noundef !11
  %.not13.i.us = icmp eq i8 %i.v, %i.w
  br i1 %.not13.i.us, label %bb.b, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread.loopexit.us

_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread.loopexit.us: ; preds = %.lr.ph.2, %.lr.ph.1, %.lr.ph
  %i.x = shl nuw i16 1, %i.l
  %i.y = xor i16 %i.x, -1
  %i.z = and i16 %.sroa.01.018.us, %i.y           ; 2 uses
  %i.aa = icmp eq i16 %i.z, 0
  br i1 %i.aa, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread13, label %.preheader.us

.preheader16.split:                               ; preds = %.preheader16, %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread
  %.sroa.01.018 = phi i16 [ %i.ao, %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread ], [ %2, %.preheader16 ] ; 2 uses
  %i.ab = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.018, i1 true) ; 2 uses
  %i.ac = zext nneg i16 %i.ab to i64
  %i.ad = getelementptr i8, ptr %i.b, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 1      ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5205)
  %i.af = getelementptr i8, ptr %i.ae, i64 %i.e
  %i.ag = getelementptr i8, ptr %i.af, i64 -4     ; 3 uses
  %i.ah = icmp ult ptr %i.ae, %i.ag
  br i1 %i.ah, label %.lr.ph.i, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit

.lr.ph.i:                                         ; preds = %.preheader16.split, %bb.d
  %.sroa.04.024.i = phi ptr [ %i.ai, %bb.d ], [ %i.ae, %.preheader16.split ] ; 2 uses
  %.sroa.08.023.i = phi ptr [ %i.aj, %bb.d ], [ %i.f, %.preheader16.split ] ; 2 uses
  %.sroa.04.0.val.i = load i32, ptr %.sroa.04.024.i, align 1, !alias.scope !5202, !noalias !5205
  %.sroa.08.0.val.i = load i32, ptr %.sroa.08.023.i, align 1, !alias.scope !5205, !noalias !5202
  %.not.i = icmp eq i32 %.sroa.04.0.val.i, %.sroa.08.0.val.i
  br i1 %.not.i, label %bb.d, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread

bb.d:                                             ; preds = %.lr.ph.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.04.024.i, i64 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.08.023.i, i64 4
  %i.ak = icmp ult ptr %i.ai, %i.ag
  br i1 %i.ak, label %.lr.ph.i, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit

_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit: ; preds = %bb.d, %.preheader16.split
  %.val14.i = load i32, ptr %i.ag, align 1, !alias.scope !5202, !noalias !5205
  %.val.i = load i32, ptr %i.i, align 1, !alias.scope !5205, !noalias !5202
  %i.al = icmp eq i32 %.val14.i, %.val.i
  br i1 %i.al, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread13, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread

_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread13: ; preds = %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread, %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit, %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread.loopexit.us, %.preheader.us, %.lr.ph.2, %bb.b, %bb.c, %bb.a
  %.sroa.0.0 = phi i1 [ true, %.lr.ph.2 ], [ false, %bb.a ], [ %exitcond.not.i.us30, %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread.loopexit.us ], [ true, %bb.c ], [ true, %bb.b ], [ %exitcond.not.i.us30, %.preheader.us ], [ false, %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread ], [ true, %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit ]
  ret i1 %.sroa.0.0

_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread: ; preds = %.lr.ph.i, %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit
  %i.am = shl nuw i16 1, %i.ab
  %i.an = xor i16 %i.am, -1
  %i.ao = and i16 %.sroa.01.018, %i.an            ; 2 uses
  %i.ap = icmp eq i16 %i.ao, 0
  br i1 %i.ap, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread13, label %.preheader16.split
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core3str7pattern14TwoWaySearcher4next17h1a7a7e725c4a794bE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %1, ptr noalias noundef nonnull readonly align 1 captures(none) %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 1 captures(none) %4, i64 noundef %5, i1 noundef zeroext %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.b = add i64 %5, -1                           ; 2 uses
  %.promoted = load i64, ptr %i.a, align 8        ; 2 uses
  %i.c = add i64 %i.b, %.promoted                 ; 2 uses
  %i.d = icmp ult i64 %i.c, %3
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !11
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %8 = load i64, ptr %1, align 8                  ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = sub i64 %5, %i.h
  %.promoted36 = load i64, ptr %7, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  store i64 %3, ptr %i.a, align 8
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.j = phi i64 [ %.promoted36, %.lr.ph ], [ %i.r, %bb.f ] ; 5 uses
  %i.k = phi i64 [ %i.c, %.lr.ph ], [ %i.t, %bb.f ]
  %i.l = phi i64 [ %.promoted, %.lr.ph ], [ %i.s, %bb.f ] ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %i.k
  %i.n = load i8, ptr %i.m, align 1, !noundef !11
  %i.o = and i8 %i.n, 63
  %i.p = zext nneg i8 %i.o to i64
  %9 = lshr i64 %i.f, %i.p
  %10 = trunc i64 %9 to i1
  br i1 %10, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.j, %._crit_edge
  %storemerge = phi i64 [ 0, %._crit_edge ], [ 1, %bb.j ]
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %i.q = add i64 %i.l, %5                         ; 3 uses
  store i64 %i.q, ptr %i.a, align 8
  br i1 %6, label %bb.f, label %.sink.split

bb.e:                                             ; preds = %bb.b
  %.sroa.0.0.i = tail call i64 @llvm.umax.i64(i64 %i.j, i64 %8)
  %.sroa.01.0 = select i1 %6, i64 %8, i64 %.sroa.0.0.i ; 4 uses
  %umax50 = tail call i64 @llvm.umax.i64(i64 %.sroa.01.0, i64 %5)
  %exitcond.not87.not = icmp ult i64 %.sroa.01.0, %5
  br i1 %exitcond.not87.not, label %.lr.ph90, label %._crit_edge91

.sink.split:                                      ; preds = %bb.d, %bb.r, %bb.o
  %.sink = phi i64 [ %i.i, %bb.o ], [ 0, %bb.r ], [ 0, %bb.d ] ; 2 uses
  %.ph72 = phi i64 [ %i.al, %bb.o ], [ %i.at, %bb.r ], [ %i.q, %bb.d ]
  store i64 %.sink, ptr %7, align 8
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.r, %bb.o, %bb.d
  %i.r = phi i64 [ %i.j, %bb.r ], [ %i.j, %bb.o ], [ %i.j, %bb.d ], [ %.sink, %.sink.split ]
  %i.s = phi i64 [ %i.at, %bb.r ], [ %i.al, %bb.o ], [ %i.q, %bb.d ], [ %.ph72, %.sink.split ] ; 2 uses
  %i.t = add i64 %i.b, %i.s                       ; 2 uses
  %i.u = icmp ult i64 %i.t, %3
  br i1 %i.u, label %bb.b, label %._crit_edge

bb.g:                                             ; preds = %bb.p
  %i.v = add i64 %.sroa.02.088, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %umax50
  br i1 %exitcond.not, label %._crit_edge91, label %.lr.ph90

._crit_edge91:                                    ; preds = %bb.g, %bb.e
  %.sroa.05.0 = select i1 %6, i64 0, i64 %i.j     ; 2 uses
  %i.w = icmp ult i64 %.sroa.05.0, %8
  br i1 %i.w, label %.lr.ph94, label %._crit_edge95

.lr.ph90:                                         ; preds = %bb.e, %bb.g
  %.sroa.02.088 = phi i64 [ %i.v, %bb.g ], [ %.sroa.01.0, %bb.e ] ; 4 uses
  %i.x = add i64 %.sroa.02.088, %i.l              ; 2 uses
  %i.y = icmp ult i64 %i.x, %3
  br i1 %i.y, label %bb.p, label %bb.q

bb.h:                                             ; preds = %bb.m
  %i.z = icmp ult i64 %.sroa.05.0, %i.ab
  br i1 %i.z, label %.lr.ph94, label %._crit_edge95

._crit_edge95:                                    ; preds = %._crit_edge91, %bb.h
  %i.aa = add i64 %i.l, %5                        ; 2 uses
  store i64 %i.aa, ptr %i.a, align 8
  br i1 %6, label %bb.j, label %bb.i

.lr.ph94:                                         ; preds = %._crit_edge91, %bb.h
  %.sroa.57.092 = phi i64 [ %i.ab, %bb.h ], [ %8, %._crit_edge91 ]
  %i.ab = add i64 %.sroa.57.092, -1               ; 6 uses
  %i.ac = icmp ult i64 %i.ab, %5
  br i1 %i.ac, label %bb.k, label %bb.l

bb.i:                                             ; preds = %._crit_edge95
  store i64 0, ptr %7, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge95
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.ad, align 8, !alias.scope !5207
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.aa, ptr %i.ae, align 8, !alias.scope !5207
  br label %bb.c

bb.k:                                             ; preds = %.lr.ph94
  %i.af = add i64 %i.ab, %i.l                     ; 3 uses
  %i.ag = icmp ult i64 %i.af, %3
  br i1 %i.ag, label %bb.m, label %bb.n

bb.l:                                             ; preds = %.lr.ph94
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ab, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116) #43
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 %i.ab
  %i.ai = load i8, ptr %i.ah, align 1, !noundef !11
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %i.af
  %i.ak = load i8, ptr %i.aj, align 1, !noundef !11
  %.not = icmp eq i8 %i.ai, %i.ak
  br i1 %.not, label %bb.h, label %bb.o

bb.n:                                             ; preds = %bb.k
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.af, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #43
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.al = add i64 %i.h, %i.l                      ; 3 uses
  store i64 %i.al, ptr %i.a, align 8
  br i1 %6, label %bb.f, label %.sink.split

bb.p:                                             ; preds = %.lr.ph90
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 %.sroa.02.088
  %i.an = load i8, ptr %i.am, align 1, !noundef !11
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 %i.x
  %i.ap = load i8, ptr %i.ao, align 1, !noundef !11
  %.not22 = icmp eq i8 %i.an, %i.ap
  br i1 %.not22, label %bb.g, label %bb.r

bb.q:                                             ; preds = %.lr.ph90
  %i.aq = add i64 %.sroa.01.0, %i.l
  %umax = tail call i64 @llvm.umax.i64(i64 %3, i64 %i.aq)
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %umax, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @118) #43
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ar = add i64 %i.l, 1
  %i.as = add i64 %i.ar, %.sroa.02.088
  %i.at = sub i64 %i.as, %8                       ; 3 uses
  store i64 %i.at, ptr %i.a, align 8
  br i1 %6, label %bb.f, label %.sink.split
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define internal fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h1da9a8205cf9f1f3E(i64 %.0.val, i64 %.8.val, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = xor i64 %.0.val, 8317987319222330741
  %i.d = xor i64 %.8.val, 7237128888997146477
  %i.e = xor i64 %.0.val, 7816392313619706465
  %i.f = xor i64 %.8.val, 8387220255154660723
  store i64 %i.c, ptr %i.b, align 8, !alias.scope !5210
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 %i.e, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !5210
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %i.d, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !5210
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 %i.f, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !5210
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.0.val, ptr %.sroa.711.0..sroa_idx.i, align 8, !alias.scope !5210
  %.sroa.812.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.8.val, ptr %.sroa.812.0..sroa_idx.i, align 8, !alias.scope !5210
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !5210
  %.val.i = load i64, ptr %0, align 8, !noalias !5213, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5216
  store i64 %.val.i, ptr %i.a, align 8, !noalias !5216
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h03f0a4b434c9b388E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5216
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !alias.scope !5221
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !5221
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !5221 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !5221
  %i.g = load i64, ptr %.sroa.913.0..sroa_idx.i, align 8, !alias.scope !5221, !noundef !11
  %i.h = shl i64 %i.g, 56
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !5221, !noundef !11
  %i.k = or i64 %i.h, %i.j                        ; 2 uses
  %i.l = xor i64 %i.k, %.sroa.22.0.copyload.i.i   ; 3 uses
  %i.m = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.n = add i64 %i.l, %.sroa.10.0.copyload.i.i   ; 2 uses
  %i.o = tail call i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.p = xor i64 %i.o, %i.m                       ; 3 uses
  %i.q = tail call i64 @llvm.fshl.i64(i64 %i.l, i64 %i.l, i64 16)
  %i.r = xor i64 %i.q, %i.n                       ; 3 uses
  %i.s = tail call i64 @llvm.fshl.i64(i64 %i.m, i64 %i.m, i64 32)
  %i.t = add i64 %i.n, %i.p                       ; 3 uses
  %i.u = add i64 %i.r, %i.s                       ; 2 uses
  %i.v = tail call i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 17)
  %i.w = xor i64 %i.t, %i.v                       ; 3 uses
  %i.x = tail call i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 21)
  %i.y = xor i64 %i.x, %i.u                       ; 3 uses
  %i.z = tail call i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 32)
  %i.aa = xor i64 %i.u, %i.k
  %i.ab = xor i64 %i.z, 255
  %i.ac = add i64 %i.aa, %i.w                     ; 3 uses
  %i.ad = add i64 %i.y, %i.ab                     ; 2 uses
  %i.ae = tail call i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 13)
  %i.af = xor i64 %i.ac, %i.ae                    ; 3 uses
  %i.ag = tail call i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 16)
  %i.ah = xor i64 %i.ag, %i.ad                    ; 3 uses
  %i.ai = tail call i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 32)
  %i.aj = add i64 %i.af, %i.ad                    ; 3 uses
  %i.ak = add i64 %i.ah, %i.ai                    ; 2 uses
  %i.al = tail call i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 17)
  %i.am = xor i64 %i.aj, %i.al                    ; 3 uses
  %i.an = tail call i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 21)
  %i.ao = xor i64 %i.an, %i.ak                    ; 3 uses
  %i.ap = tail call i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 32)
  %i.aq = add i64 %i.am, %i.ak                    ; 3 uses
  %i.ar = add i64 %i.ao, %i.ap                    ; 2 uses
  %i.as = tail call i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 13)
  %i.at = xor i64 %i.as, %i.aq                    ; 3 uses
  %i.au = tail call i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16)
  %i.av = xor i64 %i.au, %i.ar                    ; 3 uses
  %i.aw = tail call i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 32)
  %i.ax = add i64 %i.at, %i.ar                    ; 3 uses
  %i.ay = add i64 %i.av, %i.aw                    ; 2 uses
  %i.az = tail call i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 17)
  %i.ba = xor i64 %i.az, %i.ax                    ; 3 uses
  %i.bb = tail call i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 21)
  %i.bc = xor i64 %i.bb, %i.ay                    ; 3 uses
  %i.bd = tail call i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 32)
  %i.be = add i64 %i.ba, %i.ay
  %i.bf = add i64 %i.bc, %i.bd                    ; 2 uses
  %i.bg = tail call i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 13)
  %i.bh = xor i64 %i.bg, %i.be                    ; 3 uses
  %i.bi = tail call i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 16)
  %i.bj = xor i64 %i.bi, %i.bf                    ; 2 uses
  %i.bk = add i64 %i.bh, %i.bf                    ; 3 uses
  %i.bl = tail call i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.bh, i64 17)
  %i.bm = tail call i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 21)
  %i.bn = tail call i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 32)
  %i.bo = xor i64 %i.bm, %i.bl
  %i.bp = xor i64 %i.bo, %i.bn
  %i.bq = xor i64 %i.bp, %i.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.bq
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define internal fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h3b6bbb1ebafcde82E(i64 %.0.val, i64 %.8.val, ptr noalias noundef nonnull readonly align 1 captures(none) %0, i64 noundef %1) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = xor i64 %.0.val, 8317987319222330741
  %i.d = xor i64 %.8.val, 7237128888997146477
  %i.e = xor i64 %.0.val, 7816392313619706465
  %i.f = xor i64 %.8.val, 8387220255154660723
  store i64 %i.c, ptr %i.b, align 8, !alias.scope !5226
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 %i.e, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !5226
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %i.d, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !5226
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 %i.f, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !5226
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.0.val, ptr %.sroa.711.0..sroa_idx.i, align 8, !alias.scope !5226
  %.sroa.812.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.8.val, ptr %.sroa.812.0..sroa_idx.i, align 8, !alias.scope !5226
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !5226
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h03f0a4b434c9b388E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5229
  store i8 -1, ptr %i.a, align 1, !noalias !5229
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h03f0a4b434c9b388E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !5241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5229
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !alias.scope !5242
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !5242
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !5242 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !5242
  %i.g = load i64, ptr %.sroa.913.0..sroa_idx.i, align 8, !alias.scope !5242, !noundef !11
  %i.h = shl i64 %i.g, 56
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !5242, !noundef !11
  %i.k = or i64 %i.h, %i.j                        ; 2 uses
  %i.l = xor i64 %i.k, %.sroa.22.0.copyload.i.i   ; 3 uses
  %i.m = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.n = add i64 %i.l, %.sroa.10.0.copyload.i.i   ; 2 uses
  %i.o = tail call i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.p = xor i64 %i.o, %i.m                       ; 3 uses
  %i.q = tail call i64 @llvm.fshl.i64(i64 %i.l, i64 %i.l, i64 16)
  %i.r = xor i64 %i.q, %i.n                       ; 3 uses
  %i.s = tail call i64 @llvm.fshl.i64(i64 %i.m, i64 %i.m, i64 32)
  %i.t = add i64 %i.n, %i.p                       ; 3 uses
  %i.u = add i64 %i.r, %i.s                       ; 2 uses
  %i.v = tail call i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 17)
  %i.w = xor i64 %i.t, %i.v                       ; 3 uses
  %i.x = tail call i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 21)
  %i.y = xor i64 %i.x, %i.u                       ; 3 uses
  %i.z = tail call i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 32)
  %i.aa = xor i64 %i.u, %i.k
  %i.ab = xor i64 %i.z, 255
  %i.ac = add i64 %i.aa, %i.w                     ; 3 uses
  %i.ad = add i64 %i.y, %i.ab                     ; 2 uses
  %i.ae = tail call i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 13)
  %i.af = xor i64 %i.ac, %i.ae                    ; 3 uses
  %i.ag = tail call i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 16)
  %i.ah = xor i64 %i.ag, %i.ad                    ; 3 uses
  %i.ai = tail call i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 32)
  %i.aj = add i64 %i.af, %i.ad                    ; 3 uses
  %i.ak = add i64 %i.ah, %i.ai                    ; 2 uses
  %i.al = tail call i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 17)
  %i.am = xor i64 %i.aj, %i.al                    ; 3 uses
  %i.an = tail call i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 21)
  %i.ao = xor i64 %i.an, %i.ak                    ; 3 uses
  %i.ap = tail call i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 32)
  %i.aq = add i64 %i.am, %i.ak                    ; 3 uses
  %i.ar = add i64 %i.ao, %i.ap                    ; 2 uses
  %i.as = tail call i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 13)
  %i.at = xor i64 %i.as, %i.aq                    ; 3 uses
  %i.au = tail call i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16)
  %i.av = xor i64 %i.au, %i.ar                    ; 3 uses
  %i.aw = tail call i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 32)
  %i.ax = add i64 %i.at, %i.ar                    ; 3 uses
  %i.ay = add i64 %i.av, %i.aw                    ; 2 uses
  %i.az = tail call i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 17)
  %i.ba = xor i64 %i.az, %i.ax                    ; 3 uses
  %i.bb = tail call i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 21)
  %i.bc = xor i64 %i.bb, %i.ay                    ; 3 uses
  %i.bd = tail call i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 32)
  %i.be = add i64 %i.ba, %i.ay
  %i.bf = add i64 %i.bc, %i.bd                    ; 2 uses
  %i.bg = tail call i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 13)
  %i.bh = xor i64 %i.bg, %i.be                    ; 3 uses
  %i.bi = tail call i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 16)
  %i.bj = xor i64 %i.bi, %i.bf                    ; 2 uses
  %i.bk = add i64 %i.bh, %i.bf                    ; 3 uses
  %i.bl = tail call i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.bh, i64 17)
  %i.bm = tail call i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 21)
  %i.bn = tail call i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 32)
  %i.bo = xor i64 %i.bm, %i.bl
  %i.bp = xor i64 %i.bo, %i.bn
  %i.bq = xor i64 %i.bp, %i.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.bq
end_hunk_2
begin_hunk_3_@"_ZN61_$LT$procfs_core..KernelConfig$u20$as$u20$procfs..Current$GT$7current17h21927df81fe02cb7E":bb.a
  %i.dl = extractvalue { i64, i64 } %i.dk, 0
  %i.dm = trunc nuw i64 %i.dl to i1
  br i1 %i.dm, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread45.loopexit69.i.i.i.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread45.loopexit69.i.i.i.i.i.i: ; preds = %.noexc12.i.i.i.i
  %i.dn = extractvalue { i64, i64 } %i.dk, 1
  br label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread45.i.i.i.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread45.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread45.loopexit69.i.i.i.i.i.i
  %.sroa.4.0.i48.i.i.i.i.i.i = phi i64 [ %i.dn, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread45.loopexit69.i.i.i.i.i.i ], [ %.sroa.01.05.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 4 uses
  %i.do = icmp ult i64 %.sroa.4.0.i48.i.i.i.i.i.i, %i.dd
  br i1 %i.do, label %"_ZN115_$LT$core..ops..range..RangeInclusive$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h8e7b3679257613f5E.exit.i.i.i.i.i.i", label %bb.ai, !prof !538

bb.ai:                                            ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread45.i.i.i.i.i.i
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %.sroa.4.0.i48.i.i.i.i.i.i, i64 noundef %i.dd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #43
          to label %.noexc13.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.loopexit.split-lp.i, !noalias !5769

.noexc13.i.i.i.i:                                 ; preds = %bb.ai
  unreachable

"_ZN115_$LT$core..ops..range..RangeInclusive$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h8e7b3679257613f5E.exit.i.i.i.i.i.i": ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread45.i.i.i.i.i.i
  %i.dp = add nuw i64 %.sroa.4.0.i48.i.i.i.i.i.i, 1 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5775)
  call void @llvm.experimental.noalias.scope.decl(metadata !5778)
  %i.dq = load i64, ptr %.sroa.56.0..sroa_idx.i.i, align 8, !alias.scope !5781, !noalias !5784, !noundef !11 ; 3 uses
  %i.dr = load i64, ptr %i.l, align 8, !range !699, !alias.scope !5781, !noalias !5784, !noundef !11
  %i.ds = sub i64 %i.dr, %i.dq
  %.not.i.i.i.i.i.i = icmp ult i64 %.sroa.4.0.i48.i.i.i.i.i.i, %i.ds
  br i1 %.not.i.i.i.i.i.i, label %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h62dd9250238d5010E.exit.i.i.i.i.i.i", label %bb.aj, !prof !538

bb.aj:                                            ; preds = %"_ZN115_$LT$core..ops..range..RangeInclusive$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h8e7b3679257613f5E.exit.i.i.i.i.i.i"
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h440846d0dedc0723E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef %i.dq, i64 noundef %i.dp, i64 noundef 1, i64 noundef 1)
          to label %.noexc14.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.loopexit.i, !noalias !5769

.noexc14.i.i.i.i:                                 ; preds = %bb.aj
  %.pre.i.i24.i.i.i.i.i.i = load i64, ptr %.sroa.56.0..sroa_idx.i.i, align 8, !alias.scope !5785, !noalias !5784
  br label %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h62dd9250238d5010E.exit.i.i.i.i.i.i"

"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h62dd9250238d5010E.exit.i.i.i.i.i.i": ; preds = %.noexc14.i.i.i.i, %"_ZN115_$LT$core..ops..range..RangeInclusive$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h8e7b3679257613f5E.exit.i.i.i.i.i.i"
  %i.dt = phi i64 [ %i.dq, %"_ZN115_$LT$core..ops..range..RangeInclusive$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h8e7b3679257613f5E.exit.i.i.i.i.i.i" ], [ %.pre.i.i24.i.i.i.i.i.i, %.noexc14.i.i.i.i ] ; 3 uses
  %i.du = icmp sgt i64 %i.dt, -1
  call void @llvm.assume(i1 %i.du)
  %i.dv = load ptr, ptr %.sroa.45.0..sroa_idx.i.i, align 8, !alias.scope !5785, !noalias !5784, !nonnull !11, !noundef !11
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dw, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.de, i64 %i.dp, i1 false), !noalias !5786
  %i.dx = add i64 %i.dt, %i.dp
  store i64 %i.dx, ptr %.sroa.56.0..sroa_idx.i.i, align 8, !alias.scope !5785, !noalias !5784
  %i.dy = add i64 %i.dp, %i.db
  %.sroa.0.0.i.i.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.dc, i64 %i.dy)
  %i.dz = add i64 %i.dp, %.sroa.01.0.ph.i.i.i.i.i.i
  br label %.loopexit.i.i.i.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i.i.i.i: ; preds = %bb.ah, %.noexc12.i.i.i.i, %.preheader.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !5787)
  call void @llvm.experimental.noalias.scope.decl(metadata !5790)
  %i.ea = load i64, ptr %.sroa.56.0..sroa_idx.i.i, align 8, !alias.scope !5793, !noalias !5784, !noundef !11 ; 3 uses
  %i.eb = load i64, ptr %i.l, align 8, !range !699, !alias.scope !5793, !noalias !5784, !noundef !11
  %i.ec = sub i64 %i.eb, %i.ea
  %i.ed = icmp ugt i64 %i.dd, %i.ec
  br i1 %i.ed, label %bb.ak, label %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h62dd9250238d5010E.exit26.i.i.i.i.i.i", !prof !323

bb.ak:                                            ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h440846d0dedc0723E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef %i.ea, i64 noundef %i.dd, i64 noundef 1, i64 noundef 1)
          to label %.noexc15.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.i, !noalias !5769

.noexc15.i.i.i.i:                                 ; preds = %bb.ak
  %.pre.i.i25.i.i.i.i.i.i = load i64, ptr %.sroa.56.0..sroa_idx.i.i, align 8, !alias.scope !5796, !noalias !5784
  br label %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h62dd9250238d5010E.exit26.i.i.i.i.i.i"

"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h62dd9250238d5010E.exit26.i.i.i.i.i.i": ; preds = %.noexc15.i.i.i.i, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i.i.i.i
  %i.ee = phi i64 [ %i.ea, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i.i.i.i ], [ %.pre.i.i25.i.i.i.i.i.i, %.noexc15.i.i.i.i ] ; 3 uses
  %i.ef = icmp sgt i64 %i.ee, -1
  call void @llvm.assume(i1 %i.ef)
  %i.eg = load ptr, ptr %.sroa.45.0..sroa_idx.i.i, align 8, !alias.scope !5796, !noalias !5784, !nonnull !11, !noundef !11
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ee
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eh, ptr nonnull readonly align 1 %i.de, i64 %i.dd, i1 false), !noalias !5797
  %i.ei = add i64 %i.ee, %i.dd
  store i64 %i.ei, ptr %.sroa.56.0..sroa_idx.i.i, align 8, !alias.scope !5796, !noalias !5784
  %i.ej = add i64 %i.dd, %.sroa.01.0.ph.i.i.i.i.i.i ; 2 uses
  %i.ek = icmp eq i64 %i.dc, %i.db
  br i1 %i.ek, label %.loopexit.i.i.i.i.i.i, label %.outer.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h62dd9250238d5010E.exit26.i.i.i.i.i.i", %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h62dd9250238d5010E.exit.i.i.i.i.i.i"
  %.sroa.1077.2 = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.i, %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h62dd9250238d5010E.exit.i.i.i.i.i.i" ], [ %i.db, %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h62dd9250238d5010E.exit26.i.i.i.i.i.i" ]
  %.sroa.01.1.i.i.i.i.i.i = phi i64 [ %i.dz, %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h62dd9250238d5010E.exit.i.i.i.i.i.i" ], [ %i.ej, %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h62dd9250238d5010E.exit26.i.i.i.i.i.i" ]
  %i.el = inttoptr i64 %.sroa.01.1.i.i.i.i.i.i to ptr
  br label %.loopexit22.i.i.i.i

.split.i.i.i.i.i.i:                               ; preds = %bb.ag
  %.mask68.i.i.i.i.i.i = and i64 %i.cx, -4294967296
  %i.em = icmp eq i64 %.mask68.i.i.i.i.i.i, 17179869184
  br i1 %i.em, label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h2fcde3704c8dc432E.exit.i", label %.loopexit22.i.i.i.i

.split67.i.i.i.i.i.i:                             ; preds = %bb.ag
  %i.en = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.eo = load i8, ptr %i.en, align 8, !range !3688, !noalias !5774, !noundef !11
  %i.ep = icmp eq i8 %i.eo, 35
  br i1 %i.ep, label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h2fcde3704c8dc432E.exit.i", label %.loopexit22.i.i.i.i

.split66.i.i.i.i.i.i:                             ; preds = %bb.ag
  %i.eq = getelementptr i8, ptr %i.cu, i64 -1     ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eq) ]
  %i.er = getelementptr i8, ptr %i.cu, i64 15
  %i.es = load i8, ptr %i.er, align 8, !range !3688, !noalias !5774, !noundef !11
  %i.et = icmp eq i8 %i.es, 35
  br i1 %i.et, label %bb.am, label %.loopexit22.i.i.i.i

bb.al:                                            ; preds = %bb.ag
  %i.eu = icmp ult ptr %i.cu, inttoptr (i64 180388626432 to ptr)
  call void @llvm.assume(i1 %i.eu)
  %.mask.i.i.i.i.i.i = and i64 %i.cx, 270582939648
  %i.ev = icmp eq i64 %.mask.i.i.i.i.i.i, 150323855360
  br i1 %i.ev, label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h2fcde3704c8dc432E.exit.i", label %.loopexit22.i.i.i.i

bb.am:                                            ; preds = %.split66.i.i.i.i.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr %i.eq, align 8, !noalias !5769 ; 5 uses
  %i.ew = getelementptr i8, ptr %i.cu, i64 7
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.ew, align 8, !noalias !5769, !nonnull !11, !align !305, !noundef !11 ; 5 uses
  %i.ex = load ptr, ptr %.val1.i.i.i.i.i.i, align 8, !invariant.load !11, !noalias !5769 ; 2 uses
  %.not.i.i.i.i.i.i.i210.i = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i.i.i.i.i210.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i) ], !noalias !5798
  invoke void %i.ex(ptr noundef nonnull %.val.i.i.i.i.i.i)
          to label %bb.ao unwind label %bb.ap, !noalias !5769

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ey = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 8
  %i.ez = load i64, ptr %i.ey, align 8, !range !699, !invariant.load !11, !noalias !5769 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 16
  %i.fb = load i64, ptr %i.fa, align 8, !range !4092, !invariant.load !11, !noalias !5769 ; 2 uses
  %i.fc = icmp ult i64 %i.fb, -9223372036854775807
  call void @llvm.assume(i1 %i.fc), !noalias !5798
  %i.fd = icmp eq i64 %i.ez, 0
  br i1 %i.fd, label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h1f78f1435271451dE.exit.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.ao
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i) ], !noalias !5798
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.ez, i64 noundef range(i64 1, -9223372036854775807) %i.fb) #42, !noalias !5769
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h1f78f1435271451dE.exit.i.i.i.i.i"

bb.ap:                                            ; preds = %bb.an
  %i.fe = landingpad { ptr, i32 }
          cleanup
  %i.ff = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 8
  %i.fg = load i64, ptr %i.ff, align 8, !range !699, !invariant.load !11, !noalias !5769 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 16
  %i.fi = load i64, ptr %i.fh, align 8, !range !4092, !invariant.load !11, !noalias !5769 ; 2 uses
  %i.fj = icmp ult i64 %i.fi, -9223372036854775807
  call void @llvm.assume(i1 %i.fj), !noalias !5798
  %i.fk = icmp eq i64 %i.fg, 0
  br i1 %i.fk, label %bb.aq, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i": ; preds = %bb.ap
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.fg, i64 noundef range(i64 1, -9223372036854775807) %i.fi) #42, !noalias !5769
  br label %bb.aq

bb.aq:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i", %bb.ap
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.eq, i64 noundef 24, i64 noundef 8) #42, !noalias !5769
  br label %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h4f78c4a92701943cE.exit.i.i.i.i"

"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h1f78f1435271451dE.exit.i.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i", %bb.ao
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.eq, i64 noundef 24, i64 noundef 8) #42, !noalias !5769
  br label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h2fcde3704c8dc432E.exit.i"

"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h2fcde3704c8dc432E.exit.i": ; preds = %bb.al, %.split.i.i.i.i.i.i, %.split67.i.i.i.i.i.i, %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h1f78f1435271451dE.exit.i.i.i.i.i"
  %.not.i.i.i.i.i.i.i.i.not = icmp eq i64 %i.cv, 0
  br i1 %.not.i.i.i.i.i.i.i.i.not, label %bb.ae, label %.loopexit

"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h4f78c4a92701943cE.exit.i.i.i.i": ; preds = %bb.as, %bb.ar, %.loopexit.split-lp.loopexit.split-lp.i.i.i.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.i.i.i.loopexit.i, %.loopexit.split-lp.loopexit.i.i.i.i, %.loopexit.i.i.i.i, %bb.aq
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.ft, %bb.ar ], [ %i.ft, %bb.as ], [ %i.fe, %bb.aq ], [ %lpad.loopexit23.i.i.i.i, %.loopexit.split-lp.loopexit.i.i.i.i ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit307.i, %.loopexit.split-lp.loopexit.split-lp.i.i.i.loopexit.i ], [ %lpad.loopexit.split-lp308.i, %.loopexit.split-lp.loopexit.split-lp.i.i.i.loopexit.split-lp.i ]
  invoke void @"_ZN56_$LT$std..io..Guard$u20$as$u20$core..ops..drop..Drop$GT$4drop17heb49ac04b342d0f7E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %.body.i.i unwind label %bb.aw, !noalias !5769

.loopexit.i.i.i.i:                                ; preds = %bb.ae
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h4f78c4a92701943cE.exit.i.i.i.i"

.loopexit.split-lp.loopexit.i.i.i.i:              ; preds = %bb.ak, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i.i
  %lpad.loopexit23.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h4f78c4a92701943cE.exit.i.i.i.i"

.loopexit.split-lp.loopexit.split-lp.i.i.i.loopexit.i: ; preds = %bb.aj
  %lpad.loopexit307.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h4f78c4a92701943cE.exit.i.i.i.i"

.loopexit.split-lp.loopexit.split-lp.i.i.i.loopexit.split-lp.i: ; preds = %bb.ai
  %lpad.loopexit.split-lp308.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h4f78c4a92701943cE.exit.i.i.i.i"

.loopexit22.i.i.i.i:                              ; preds = %.split.i.i.i.i.i.i, %.split67.i.i.i.i.i.i, %.split66.i.i.i.i.i.i, %bb.al, %.loopexit.i.i.i.i.i.i
  %.sroa.27.1 = phi i64 [ %i.cz, %.loopexit.i.i.i.i.i.i ], [ %i.cw, %bb.al ], [ %i.cw, %.split66.i.i.i.i.i.i ], [ %i.cw, %.split67.i.i.i.i.i.i ], [ %i.cw, %.split.i.i.i.i.i.i ]
  %.sroa.19.1 = phi i64 [ %i.da, %.loopexit.i.i.i.i.i.i ], [ %i.cv, %bb.al ], [ %i.cv, %.split66.i.i.i.i.i.i ], [ %i.cv, %.split67.i.i.i.i.i.i ], [ %i.cv, %.split.i.i.i.i.i.i ]
  %.sroa.1077.1 = phi i64 [ %.sroa.1077.2, %.loopexit.i.i.i.i.i.i ], [ 0, %bb.al ], [ 0, %.split66.i.i.i.i.i.i ], [ 0, %.split67.i.i.i.i.i.i ], [ 0, %.split.i.i.i.i.i.i ]
  %.sroa.3.0.i.i.i.i.i.i = phi ptr [ %i.el, %.loopexit.i.i.i.i.i.i ], [ %i.cu, %bb.al ], [ %i.cu, %.split66.i.i.i.i.i.i ], [ %i.cu, %.split67.i.i.i.i.i.i ], [ %i.cu, %.split.i.i.i.i.i.i ] ; 4 uses
  %.sroa.0.0.i.i.i.i.i.i = phi i1 [ false, %.loopexit.i.i.i.i.i.i ], [ true, %bb.al ], [ true, %.split66.i.i.i.i.i.i ], [ true, %.split67.i.i.i.i.i.i ], [ true, %.split.i.i.i.i.i.i ] ; 3 uses
  %i.fl = load ptr, ptr %i.k, align 8, !noalias !5745, !nonnull !11, !align !305, !noundef !11 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8, !noalias !5769, !nonnull !11, !noundef !11
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fp = load i64, ptr %i.fo, align 8, !noalias !5769, !noundef !11
  %i.fq = load i64, ptr %i.ck, align 8, !noalias !5745, !noundef !11 ; 2 uses
  %i.fr = sub nuw i64 %i.fp, %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !5745
  invoke void @_ZN4core3str8converts9from_utf817h61448895180b8340E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fs, i64 noundef %i.fr)
          to label %bb.at unwind label %bb.ar, !noalias !5769

bb.ar:                                            ; preds = %.loopexit22.i.i.i.i
  %i.ft = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %.sroa.0.0.i.i.i.i.i.i, label %bb.as, label %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h4f78c4a92701943cE.exit.i.i.i.i"

bb.as:                                            ; preds = %bb.ar
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.i.i.i.i.i.i) ]
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h2fcde3704c8dc432E"(ptr nonnull %.sroa.3.0.i.i.i.i.i.i)
          to label %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h4f78c4a92701943cE.exit.i.i.i.i" unwind label %bb.aw, !noalias !5769

bb.at:                                            ; preds = %.loopexit22.i.i.i.i
  %i.fu = load i64, ptr %i.j, align 8, !range !2380, !noalias !5745, !noundef !11
  %1 = trunc nuw i64 %i.fu to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5745
  br i1 %1, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fv = load ptr, ptr %i.k, align 8, !noalias !5745, !nonnull !11, !align !305, !noundef !11
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.fx = load i64, ptr %i.fw, align 8, !noalias !5769, !noundef !11 ; 2 uses
  %i.fy = icmp sgt i64 %i.fx, -1
  call void @llvm.assume(i1 %i.fy)
  store i64 %i.fx, ptr %i.ck, align 8, !noalias !5745
  br label %_ZN3std2io16append_to_string17h1b922fc546c55176E.exit.i.i.i

bb.av:                                            ; preds = %bb.at
  %spec.select.i.i.i.i = select i1 %.sroa.0.0.i.i.i.i.i.i, ptr %.sroa.3.0.i.i.i.i.i.i, ptr @99
  br label %_ZN3std2io16append_to_string17h1b922fc546c55176E.exit.i.i.i

bb.aw:                                            ; preds = %bb.as, %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h4f78c4a92701943cE.exit.i.i.i.i"
  %i.fz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !5769
  unreachable

_ZN3std2io16append_to_string17h1b922fc546c55176E.exit.i.i.i: ; preds = %bb.av, %bb.au
  %.sroa.4.0.i.i.i.i = phi ptr [ %spec.select.i.i.i.i, %bb.av ], [ %.sroa.3.0.i.i.i.i.i.i, %bb.au ] ; 2 uses
  %.sroa.0.0.i.i.i.i = phi i1 [ true, %bb.av ], [ %.sroa.0.0.i.i.i.i.i.i, %bb.au ]
  invoke void @"_ZN56_$LT$std..io..Guard$u20$as$u20$core..ops..drop..Drop$GT$4drop17heb49ac04b342d0f7E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %bb.az unwind label %bb.ax, !noalias !5735

bb.ax:                                            ; preds = %_ZN3std2io16append_to_string17h1b922fc546c55176E.exit.i.i.i
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.ax, %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h4f78c4a92701943cE.exit.i.i.i.i"
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ga, %bb.ax ], [ %.pn.i.i.i.i, %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h4f78c4a92701943cE.exit.i.i.i.i" ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5799)
  %.val.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !5799, !noalias !5735 ; 2 uses
  %i.gb = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.gb, label %"_ZN4core3ptr65drop_in_place$LT$std..io..buffered..bufreader..buffer..Buffer$GT$17h98db146f3693f46bE.exit.i.i", label %bb.ay

bb.ay:                                            ; preds = %.body.i.i
  %.val1.i.i.i = load ptr, ptr %.sroa.45.0..sroa_idx.i.i, align 8, !alias.scope !5799, !noalias !5735, !nonnull !11, !noundef !11
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !5802
  br label %"_ZN4core3ptr65drop_in_place$LT$std..io..buffered..bufreader..buffer..Buffer$GT$17h98db146f3693f46bE.exit.i.i"

bb.az:                                            ; preds = %_ZN3std2io16append_to_string17h1b922fc546c55176E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !5745
  br i1 %.sroa.0.0.i.i.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gc = icmp eq ptr %.sroa.4.0.i.i.i.i, null
  br i1 %i.gc, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.sroa.9.0.i = phi ptr [ %.sroa.4.0.i.i.i.i, %bb.az ], [ undef, %bb.ba ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ -9223372036854775808, %bb.az ], [ -9223372036854775807, %bb.ba ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5803)
  %.val.i10.i.i = load i64, ptr %i.l, align 8, !alias.scope !5803, !noalias !5735 ; 2 uses
  %i.gd = icmp eq i64 %.val.i10.i.i, 0
  br i1 %i.gd, label %bb.bj, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %.val1.i11.i.i = load ptr, ptr %.sroa.45.0..sroa_idx.i.i, align 8, !alias.scope !5803, !noalias !5735, !nonnull !11, !noundef !11
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i11.i.i, i64 noundef %.val.i10.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !5806
  br label %bb.bj

bb.bd:                                            ; preds = %bb.ba
  %i.ge = load ptr, ptr %.sroa.45.0..sroa_idx.i.i, align 8, !noalias !5735, !nonnull !11, !noundef !11 ; 3 uses
  %i.gf = load i64, ptr %.sroa.56.0..sroa_idx.i.i, align 8, !noalias !5735, !noundef !11 ; 6 uses
  %.not.i.i.i = icmp eq i64 %i.gf, 0
  br i1 %.not.i.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hff2f7737badcfadeE.exit.thread.i.i", label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hff2f7737badcfadeE.exit.i.i"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hff2f7737badcfadeE.exit.i.i": ; preds = %bb.bd
  %i.gg = getelementptr i8, ptr %i.ge, i64 %i.gf
  %i.gh = getelementptr i8, ptr %i.gg, i64 -1
  %rhsc.i.i.i = load i8, ptr %i.gh, align 1, !alias.scope !5807, !noalias !5810
  %i.gi = icmp eq i8 %rhsc.i.i.i, 10
  br i1 %i.gi, label %bb.be, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hff2f7737badcfadeE.exit.thread.i.i"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hff2f7737badcfadeE.exit.thread.i.i": ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hff2f7737badcfadeE.exit18.i.i", %bb.be, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hff2f7737badcfadeE.exit.i.i", %bb.bd
  %.sroa.11.0.copyload.i = phi i64 [ 0, %bb.bd ], [ %spec.select.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hff2f7737badcfadeE.exit18.i.i" ], [ 0, %bb.be ], [ %i.gf, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hff2f7737badcfadeE.exit.i.i" ]
  %.sroa.0.0.copyload.i = load i64, ptr %i.l, align 8, !noalias !5812
  br label %bb.bj

bb.be:                                            ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hff2f7737badcfadeE.exit.i.i"
  %i.gj = icmp sgt i64 %i.gf, -1
  call void @llvm.assume(i1 %i.gj)
  %i.gk = add nsw i64 %i.gf, -1                   ; 4 uses
  store i64 %i.gk, ptr %.sroa.56.0..sroa_idx.i.i, align 8, !alias.scope !5813, !noalias !5735
  %.not.i13.i.i = icmp eq i64 %i.gk, 0
  br i1 %.not.i13.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hff2f7737badcfadeE.exit.thread.i.i", label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hff2f7737badcfadeE.exit18.i.i"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hff2f7737badcfadeE.exit18.i.i": ; preds = %bb.be
  %i.gl = getelementptr i8, ptr %i.ge, i64 %i.gk
  %i.gm = getelementptr i8, ptr %i.gl, i64 -1
  %rhsc.i16.i.i = load i8, ptr %i.gm, align 1, !alias.scope !5816, !noalias !5819
  %i.gn = icmp eq i8 %rhsc.i16.i.i, 13
  %i.go = add nsw i64 %i.gf, -2
  %spec.select.i = select i1 %i.gn, i64 %i.go, i64 %i.gk
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hff2f7737badcfadeE.exit.thread.i.i"

"_ZN4core3ptr65drop_in_place$LT$std..io..buffered..bufreader..buffer..Buffer$GT$17h98db146f3693f46bE.exit.i.i": ; preds = %bb.bo, %.body181.i, %bb.bi, %bb.ay, %.body.i.i
  %.pn90.i = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.hd, %bb.bi ], [ %eh.lpad-body.i.i, %bb.ay ], [ %.pn.i37, %.body181.i ], [ %.pn.i37, %bb.bo ] ; 2 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bu, i64 noundef 8192, i64 noundef 1) #42, !noalias !5821
  %i.gp = load ptr, ptr %.sroa.6.0, align 8, !invariant.load !11, !noalias !5821 ; 2 uses
  %.not.i.i.i53 = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i53, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %"_ZN4core3ptr65drop_in_place$LT$std..io..buffered..bufreader..buffer..Buffer$GT$17h98db146f3693f46bE.exit.i.i"
  invoke void %i.gp(ptr noundef nonnull %.sroa.0.0)
          to label %bb.bg unwind label %bb.bh, !noalias !5821

bb.bg:                                            ; preds = %bb.bf, %"_ZN4core3ptr65drop_in_place$LT$std..io..buffered..bufreader..buffer..Buffer$GT$17h98db146f3693f46bE.exit.i.i"
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.6.0, i64 8
  %i.gr = load i64, ptr %i.gq, align 8, !range !699, !invariant.load !11, !noalias !5821 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.6.0, i64 16
  %i.gt = load i64, ptr %i.gs, align 8, !range !4092, !invariant.load !11, !noalias !5821 ; 2 uses
  %i.gu = icmp ult i64 %i.gt, -9223372036854775807
  call void @llvm.assume(i1 %i.gu), !noalias !5720
  %i.gv = icmp eq i64 %i.gr, 0
  br i1 %i.gv, label %.body100.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i": ; preds = %bb.bg
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0, i64 noundef %i.gr, i64 noundef range(i64 1, -9223372036854775807) %i.gt) #42, !noalias !5821
  br label %.body100.i

bb.bh:                                            ; preds = %bb.bf
  %i.gw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.6.0, i64 8
  %i.gy = load i64, ptr %i.gx, align 8, !range !699, !invariant.load !11, !noalias !5821 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.6.0, i64 16
  %i.ha = load i64, ptr %i.gz, align 8, !range !4092, !invariant.load !11, !noalias !5821 ; 2 uses
  %i.hb = icmp ult i64 %i.ha, -9223372036854775807
  call void @llvm.assume(i1 %i.hb), !noalias !5720
  %i.hc = icmp eq i64 %i.gy, 0
  br i1 %i.hc, label %.body54, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i": ; preds = %bb.bh
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0, i64 noundef %i.gy, i64 noundef range(i64 1, -9223372036854775807) %i.ha) #42, !noalias !5821
  br label %.body54

bb.bi:                                            ; preds = %bb.bn
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$std..io..buffered..bufreader..buffer..Buffer$GT$17h98db146f3693f46bE.exit.i.i"

bb.bj:                                            ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hff2f7737badcfadeE.exit.thread.i.i", %bb.bc, %bb.bb
  %.pre2.i.i140.i = phi i64 [ undef, %bb.bb ], [ undef, %bb.bc ], [ %.sroa.11.0.copyload.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hff2f7737badcfadeE.exit.thread.i.i" ] ; 14 uses
  %.val.i128.i = phi ptr [ %.sroa.9.0.i, %bb.bb ], [ %.sroa.9.0.i, %bb.bc ], [ %i.ge, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hff2f7737badcfadeE.exit.thread.i.i" ] ; 13 uses
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i, %bb.bb ], [ %.sroa.0.0.i, %bb.bc ], [ %.sroa.0.0.copyload.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hff2f7737badcfadeE.exit.thread.i.i" ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !5735
  switch i64 %.sroa.0.1.i, label %bb.bp [
    i64 -9223372036854775807, label %"_ZN4core3ptr65drop_in_place$LT$std..io..buffered..bufreader..buffer..Buffer$GT$17h98db146f3693f46bE.exit.i.i.i"
    i64 -9223372036854775808, label %bb.bn
  ]

"_ZN4core3ptr65drop_in_place$LT$std..io..buffered..bufreader..buffer..Buffer$GT$17h98db146f3693f46bE.exit.i.i.i": ; preds = %bb.bj
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bu, i64 noundef 8192, i64 noundef 1) #42, !noalias !5826
  %i.he = load ptr, ptr %.sroa.6.0, align 8, !invariant.load !11, !noalias !5826 ; 2 uses
  %.not.i.i.i99.i = icmp eq ptr %i.he, null
  br i1 %.not.i.i.i99.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %"_ZN4core3ptr65drop_in_place$LT$std..io..buffered..bufreader..buffer..Buffer$GT$17h98db146f3693f46bE.exit.i.i.i"
  invoke void %i.he(ptr noundef nonnull %.sroa.0.0)
          to label %bb.bl unwind label %bb.bm, !noalias !5826

bb.bl:                                            ; preds = %bb.bk, %"_ZN4core3ptr65drop_in_place$LT$std..io..buffered..bufreader..buffer..Buffer$GT$17h98db146f3693f46bE.exit.i.i.i"
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.6.0, i64 8
  %i.hg = load i64, ptr %i.hf, align 8, !range !699, !invariant.load !11, !noalias !5826 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.6.0, i64 16
  %i.hi = load i64, ptr %i.hh, align 8, !range !4092, !invariant.load !11, !noalias !5826 ; 2 uses
  %i.hj = icmp ult i64 %i.hi, -9223372036854775807
  call void @llvm.assume(i1 %i.hj)
  %i.hk = icmp eq i64 %i.hg, 0
  br i1 %i.hk, label %"_ZN4core3ptr136drop_in_place$LT$std..io..Lines$LT$std..io..buffered..bufreader..BufReader$LT$alloc..boxed..Box$LT$dyn$u20$std..io..Read$GT$$GT$$GT$$GT$17hbc28563b4d4c7d68E.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i": ; preds = %bb.bl
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0, i64 noundef %i.hg, i64 noundef range(i64 1, -9223372036854775807) %i.hi) #42, !noalias !5826
  br label %"_ZN4core3ptr136drop_in_place$LT$std..io..Lines$LT$std..io..buffered..bufreader..BufReader$LT$alloc..boxed..Box$LT$dyn$u20$std..io..Read$GT$$GT$$GT$$GT$17hbc28563b4d4c7d68E.exit.i"

bb.bm:                                            ; preds = %bb.bk
  %i.hl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.6.0, i64 8
  %i.hn = load i64, ptr %i.hm, align 8, !range !699, !invariant.load !11, !noalias !5826 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.6.0, i64 16
  %i.hp = load i64, ptr %i.ho, align 8, !range !4092, !invariant.load !11, !noalias !5826 ; 2 uses
  %i.hq = icmp ult i64 %i.hp, -9223372036854775807
  call void @llvm.assume(i1 %i.hq)
  %i.hr = icmp eq i64 %i.hn, 0
  br i1 %i.hr, label %.body100.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i": ; preds = %bb.bm
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0, i64 noundef %i.hn, i64 noundef range(i64 1, -9223372036854775807) %i.hp) #42, !noalias !5826
  br label %.body100.i

"_ZN4core3ptr136drop_in_place$LT$std..io..Lines$LT$std..io..buffered..bufreader..BufReader$LT$alloc..boxed..Box$LT$dyn$u20$std..io..Read$GT$$GT$$GT$$GT$17hbc28563b4d4c7d68E.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i", %bb.bl
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hs, ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 48, i1 false), !noalias !5831
  store i64 0, ptr %0, align 8, !alias.scope !5717, !noalias !5831
  br label %"_ZN70_$LT$procfs_core..KernelConfig$u20$as$u20$procfs_core..FromBufRead$GT$13from_buf_read17he6a079499b8f4f92E.exit"
end_hunk_3
begin_hunk_4_@_ZN6procfs3net5route17h0bdb952c1c1259edE:bb.a
  %.sroa.28.0.copyload66.i = load i32, ptr %.sroa.28.0..sroa_idx65.i, align 8, !noalias !15372
  %.sroa.31.0..sroa_idx90.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.31.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.31.0..sroa_idx90.i, i64 12, i1 false), !noalias !15372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt), !noalias !15364
  br label %bb.fi

bb.fw:                                            ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !15387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du), !noalias !15364
  %.sroa.02.0.copyload24.i = load i64, ptr %i.dv, align 8, !noalias !15372
  %.sroa.28.0..sroa_idx67.i = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %.sroa.28.0.copyload68.i = load i32, ptr %.sroa.28.0..sroa_idx67.i, align 8, !noalias !15372
  %.sroa.31.0..sroa_idx91.i = getelementptr inbounds nuw i8, ptr %i.dv, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.31.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.31.0..sroa_idx91.i, i64 12, i1 false), !noalias !15372
  br label %bb.fi

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit992.i.i.i": ; preds = %bb.fx, %bb.fj, %bb.fi
  %.sroa.53.1.i = phi i64 [ %.sroa.53.0.copyload98.i, %bb.fx ], [ 98, %bb.fi ], [ 98, %bb.fj ]
  %.sroa.32.1.i = phi ptr [ %.sroa.32.0.copyload94.i, %bb.fx ], [ @236, %bb.fi ], [ @236, %bb.fj ] ; 2 uses
  %.sroa.28.1.i = phi i32 [ %.sroa.28.0.copyload26.i, %bb.fx ], [ %.sroa.28.0.i, %bb.fi ], [ %.sroa.28.0.i, %bb.fj ] ; 2 uses
  %.sroa.02.1.i = phi i64 [ %.sroa.02.0.copyload3.i, %bb.fx ], [ %.sroa.02.0.i, %bb.fi ], [ %.sroa.02.0.i, %bb.fj ] ; 2 uses
  %i.wa = phi <2 x i32> [ %i.wc, %bb.fx ], [ %i.vn, %bb.fi ], [ %i.vn, %bb.fj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx), !noalias !15364
  call void @llvm.experimental.noalias.scope.decl(metadata !15801)
  call void @llvm.experimental.noalias.scope.decl(metadata !15804)
  call void @llvm.experimental.noalias.scope.decl(metadata !15807)
  %.val3.i.i.i1009.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i16.i, align 8, !alias.scope !15810, !noalias !15364, !noundef !11 ; 2 uses
  %i.wb = icmp eq i64 %.val3.i.i.i1009.i.i.i, 0
  br i1 %i.wb, label %bb.fy, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i1010.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i1010.i.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit992.i.i.i"
  %.val2.i.i.i1011.i.i.i = load ptr, ptr %i.dy, align 8, !alias.scope !15810, !noalias !15364, !nonnull !11, !noundef !11
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i1011.i.i.i, i64 noundef %.val3.i.i.i1009.i.i.i, i64 noundef 1) #42, !noalias !15811
  br label %bb.fy

bb.fx:                                            ; preds = %bb.k
  %.sroa.02.0.copyload3.i = load i64, ptr %i.ah, align 8, !noalias !15372
  %.sroa.28.0..sroa_idx25.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.28.0.copyload26.i = load i32, ptr %.sroa.28.0..sroa_idx25.i, align 8, !noalias !15372
  %.sroa.31.0..sroa_idx70.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.31.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.31.0..sroa_idx70.i, i64 12, i1 false), !noalias !15372
  %.sroa.32.0..sroa_idx93.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %.sroa.32.0.copyload94.i = load ptr, ptr %.sroa.32.0..sroa_idx93.i, align 8, !noalias !15372
  %.sroa.53.0..sroa_idx97.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %.sroa.53.0.copyload98.i = load i64, ptr %.sroa.53.0..sroa_idx97.i, align 8, !noalias !15372
  %.sroa.74.0..sroa_idx99.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.wc = load <2 x i32>, ptr %.sroa.74.0..sroa_idx99.i, align 8, !noalias !15372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !15364
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit992.i.i.i"

bb.fy:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i1010.i.i.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit992.i.i.i"
  %.val.i.i.i1012.i.i.i = load i32, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !range !522, !alias.scope !15810, !noalias !15364, !noundef !11
  %i.wd = call noundef i32 @close(i32 noundef %.val.i.i.i1012.i.i.i) #42, !noalias !15811 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy), !noalias !15364
  call void @llvm.experimental.noalias.scope.decl(metadata !15812)
  %.val.i1014.i.i.i = load ptr, ptr %i.eq, align 8, !alias.scope !15812, !noalias !15364, !nonnull !11, !noundef !11 ; 2 uses
  %.val1.i1015.i.i.i = load i64, ptr %i.er, align 8, !alias.scope !15812, !noalias !15364, !noundef !11 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15815)
  %i.we = icmp eq i64 %.val1.i1015.i.i.i, 0
  br i1 %i.we, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6f68c1b29483b387E.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.fy, %"_ZN4core3ptr49drop_in_place$LT$procfs_core..net..RouteEntry$GT$17h5ce19b57edec157aE.exit.i.i.i.i.i.i"
  %.sroa.0.011.i.i.i.i.i.i = phi i64 [ %i.wg, %"_ZN4core3ptr49drop_in_place$LT$procfs_core..net..RouteEntry$GT$17h5ce19b57edec157aE.exit.i.i.i.i.i.i" ], [ 0, %bb.fy ] ; 2 uses
  %i.wf = getelementptr inbounds nuw [64 x i8], ptr %.val.i1014.i.i.i, i64 %.sroa.0.011.i.i.i.i.i.i ; 2 uses
  %i.wg = add nuw i64 %.sroa.0.011.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i = load i64, ptr %i.wf, align 8, !alias.scope !15818, !noalias !15821 ; 2 uses
  %i.wh = icmp eq i64 %.val8.i.i.i.i.i.i, 0
  br i1 %i.wh, label %"_ZN4core3ptr49drop_in_place$LT$procfs_core..net..RouteEntry$GT$17h5ce19b57edec157aE.exit.i.i.i.i.i.i", label %bb.fz

bb.fz:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.wi = getelementptr i8, ptr %i.wf, i64 8
  %.val9.i.i.i.i.i.i = load ptr, ptr %i.wi, align 8, !alias.scope !15815, !noalias !15821, !nonnull !11, !noundef !11
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !15822
  br label %"_ZN4core3ptr49drop_in_place$LT$procfs_core..net..RouteEntry$GT$17h5ce19b57edec157aE.exit.i.i.i.i.i.i"

"_ZN4core3ptr49drop_in_place$LT$procfs_core..net..RouteEntry$GT$17h5ce19b57edec157aE.exit.i.i.i.i.i.i": ; preds = %bb.fz, %.lr.ph.i.i.i.i.i.i
  %i.wj = icmp eq i64 %i.wg, %.val1.i1015.i.i.i
  br i1 %i.wj, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6f68c1b29483b387E.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6f68c1b29483b387E.exit.i.i.i.i": ; preds = %"_ZN4core3ptr49drop_in_place$LT$procfs_core..net..RouteEntry$GT$17h5ce19b57edec157aE.exit.i.i.i.i.i.i", %bb.fy
  %.val2.i1016.i.i.i = load i64, ptr %i.dz, align 8, !range !699, !alias.scope !15812, !noalias !15364, !noundef !11 ; 2 uses
  %i.wk = icmp eq i64 %.val2.i1016.i.i.i, 0
  br i1 %i.wk, label %"_ZN43_$LT$T$u20$as$u20$procfs_core..FromRead$GT$9from_read17ha137789217d12d5bE.exit.i", label %bb.ga

bb.ga:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6f68c1b29483b387E.exit.i.i.i.i"
  %i.wl = shl nuw i64 %.val2.i1016.i.i.i, 6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i1014.i.i.i, i64 noundef %i.wl, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !15821
  br label %"_ZN43_$LT$T$u20$as$u20$procfs_core..FromRead$GT$9from_read17ha137789217d12d5bE.exit.i"

"_ZN43_$LT$T$u20$as$u20$procfs_core..FromRead$GT$9from_read17ha137789217d12d5bE.exit.i": ; preds = %bb.ga, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6f68c1b29483b387E.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz), !noalias !15364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !15370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !15370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !15370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !15370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !15370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !15370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !15370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !15370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !15370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !15370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !15370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !15370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !noalias !15370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !15370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !15370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da), !noalias !15370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !noalias !15370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj), !noalias !15370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp), !noalias !15370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds), !noalias !15370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv), !noalias !15370
  %.not.i = icmp eq i64 %.sroa.02.1.i, -9223372036854775803
  br i1 %.not.i, label %_ZN11procfs_core8FromRead9from_file17ha660a723c2f1b187E.exit.thread, label %_ZN11procfs_core8FromRead9from_file17ha660a723c2f1b187E.exit

_ZN11procfs_core8FromRead9from_file17ha660a723c2f1b187E.exit.thread: ; preds = %"_ZN43_$LT$T$u20$as$u20$procfs_core..FromRead$GT$9from_read17ha137789217d12d5bE.exit.thread.i", %"_ZN43_$LT$T$u20$as$u20$procfs_core..FromRead$GT$9from_read17ha137789217d12d5bE.exit.i"
  %.sroa.28.2124.i = phi i32 [ %.sroa.28.8.copyload69.i, %"_ZN43_$LT$T$u20$as$u20$procfs_core..FromRead$GT$9from_read17ha137789217d12d5bE.exit.thread.i" ], [ %.sroa.28.1.i, %"_ZN43_$LT$T$u20$as$u20$procfs_core..FromRead$GT$9from_read17ha137789217d12d5bE.exit.i" ]
  %.sroa.32.2123.i = phi ptr [ %.sroa.32.8.copyload96.i, %"_ZN43_$LT$T$u20$as$u20$procfs_core..FromRead$GT$9from_read17ha137789217d12d5bE.exit.thread.i" ], [ %.sroa.32.1.i, %"_ZN43_$LT$T$u20$as$u20$procfs_core..FromRead$GT$9from_read17ha137789217d12d5bE.exit.i" ]
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ed, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.31.i, i64 12, i1 false)
  %i.wm = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store i32 %.sroa.28.2124.i, ptr %i.wm, align 8, !alias.scope !15351
  %.sroa.6.0..sroa_idx104.i = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  store ptr %.sroa.32.2123.i, ptr %.sroa.6.0..sroa_idx104.i, align 8, !alias.scope !15351
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.31.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb)
  br label %bb.gc

_ZN11procfs_core8FromRead9from_file17ha660a723c2f1b187E.exit: ; preds = %bb.b, %"_ZN43_$LT$T$u20$as$u20$procfs_core..FromRead$GT$9from_read17ha137789217d12d5bE.exit.i"
  %.sroa.53.3.i = phi i64 [ %.sroa.8.sroa.6.0.copyload.i, %bb.b ], [ %.sroa.53.1.i, %"_ZN43_$LT$T$u20$as$u20$procfs_core..FromRead$GT$9from_read17ha137789217d12d5bE.exit.i" ]
  %.sroa.32.3.i = phi ptr [ %.sroa.8.sroa.5.0.copyload.i, %bb.b ], [ %.sroa.32.1.i, %"_ZN43_$LT$T$u20$as$u20$procfs_core..FromRead$GT$9from_read17ha137789217d12d5bE.exit.i" ]
  %.sroa.28.3.i = phi i32 [ %.sroa.6.0.copyload.i, %bb.b ], [ %.sroa.28.1.i, %"_ZN43_$LT$T$u20$as$u20$procfs_core..FromRead$GT$9from_read17ha137789217d12d5bE.exit.i" ]
  %.sroa.02.3.i = phi i64 [ %.sroa.0.0.copyload.i, %bb.b ], [ %.sroa.02.1.i, %"_ZN43_$LT$T$u20$as$u20$procfs_core..FromRead$GT$9from_read17ha137789217d12d5bE.exit.i" ]
  %i.wn = phi <2 x i32> [ %i.ej, %bb.b ], [ %i.wa, %"_ZN43_$LT$T$u20$as$u20$procfs_core..FromRead$GT$9from_read17ha137789217d12d5bE.exit.i" ]
  %.sroa.5111.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15825
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5111.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.31.i, i64 12, i1 false), !noalias !15351
  store i64 %.sroa.02.3.i, ptr %i.b, align 8, !noalias !15829
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %.sroa.28.3.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !15829
  %.sroa.6112.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.32.3.i, ptr %.sroa.6112.0..sroa_idx.i, align 8, !noalias !15829
  %.sroa.7113.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sroa.53.3.i, ptr %.sroa.7113.0..sroa_idx.i, align 8, !noalias !15829
  %.sroa.8114.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store <2 x i32> %i.wn, ptr %.sroa.8114.0..sroa_idx.i, align 8, !noalias !15829
  call void @"_ZN68_$LT$procfs_core..ProcError$u20$as$u20$procfs_core..ProcErrorExt$GT$10error_path17h863f75f158574cc8E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.ed, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @526, i64 noundef 15)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15825
  %.pr = load i64, ptr %i.ed, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.31.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb)
  %.not = icmp eq i64 %.pr, -9223372036854775803
  br i1 %.not, label %bb.gc, label %bb.gb

bb.gb:                                            ; preds = %_ZN11procfs_core8FromRead9from_file17ha660a723c2f1b187E.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.ed, i64 48, i1 false)
  br label %bb.gd

bb.gc:                                            ; preds = %_ZN11procfs_core8FromRead9from_file17ha660a723c2f1b187E.exit.thread, %_ZN11procfs_core8FromRead9from_file17ha660a723c2f1b187E.exit
  %i.wo = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.wp = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.wp, ptr noundef nonnull align 8 dereferenceable(24) %i.wo, i64 24, i1 false)
  store i64 -9223372036854775803, ptr %0, align 8
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN6procfs3net5snmp617h6962dc1c91738033E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([664 x i8]) align 8 captures(none) dereferenceable(664) %0) unnamed_addr #1 {
bb.a:
  tail call fastcc void @_ZN11procfs_core8FromRead9from_file17ha929bb3659bab0e1E(ptr noalias noundef align 8 captures(address) dereferenceable(664) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN6procfs3sys2fs11binfmt_misc10hex_to_vec17h8aad7a610b81e383E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 2 uses
  %i.j = alloca [1 x i8], align 1                 ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 11 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 8 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 2 uses
  %i.q = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %2, ptr %i.r, align 8
  %3 = trunc i64 %2 to i1
  br i1 %3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 0, ptr %i.l, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store i64 0, ptr %i.t, align 8
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.q, ptr %i.m, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h3c2bcc7e49b274a4E", ptr %.sroa.426.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !15830
  store ptr @539, ptr %i.d, align 8, !noalias !15838
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 2, ptr %.sroa.472.0..sroa_idx, align 8, !noalias !15838
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.m, ptr %.sroa.573.0..sroa_idx, align 8, !noalias !15838
  %.sroa.674.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 1, ptr %.sroa.674.0..sroa_idx, align 8, !noalias !15838
  %.sroa.775.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %.sroa.775.0..sroa_idx, align 8, !noalias !15838
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !15830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store ptr %i.n, ptr %i.o, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.430.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15839
  store ptr @3, ptr %i.c, align 8, !noalias !15847
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !15847
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.o, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !15847
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !15847
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !15847
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c)
          to label %bb.w unwind label %bb.u

._crit_edge:                                      ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3b66f724c12bddacE.exit", %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  store i64 -9223372036854775803, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.h

bb.d:                                             ; preds = %.lr.ph, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3b66f724c12bddacE.exit"
  %i.w = phi i64 [ 0, %.lr.ph ], [ %i.bf, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3b66f724c12bddacE.exit" ] ; 3 uses
  %.sroa.06.0111 = phi i64 [ 0, %.lr.ph ], [ %i.x, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3b66f724c12bddacE.exit" ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.x = add i64 %.sroa.06.0111, 2                ; 7 uses
  switch i64 %.sroa.06.0111, label %bb.f [
    i64 -2, label %bb.k
    i64 0, label %.thread
  ]

bb.e:                                             ; preds = %bb.f
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %.lr.ph.i, label %.thread

bb.f:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.06.0111
  %i.aa = load i8, ptr %i.z, align 1, !alias.scope !15848, !noundef !11
  %i.ab = icmp sgt i8 %i.aa, -65
  br i1 %i.ab, label %bb.e, label %bb.k

.thread:                                          ; preds = %bb.d, %bb.e
  %.not6.i = icmp ult i64 %i.x, %2
  br i1 %.not6.i, label %bb.g, label %.split7.i

.split7.i:                                        ; preds = %.thread
  %i.ac = icmp eq i64 %i.x, %2
  br i1 %i.ac, label %.lr.ph.i, label %bb.k

bb.g:                                             ; preds = %.thread
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %i.x
  %i.ae = load i8, ptr %i.ad, align 1, !alias.scope !15848, !noundef !11
  %i.af = icmp sgt i8 %i.ae, -65
  br i1 %i.af, label %.lr.ph.i, label %bb.k

bb.h:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit69", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha55e5cb075280506E.exit63", %._crit_edge
  ret void

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit": ; preds = %.loopexit, %.loopexit.split-lp, %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.q ], [ %i.bi, %bb.p ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.val53 = load i64, ptr %i.l, align 8           ; 2 uses
  %i.ag = icmp eq i64 %.val53, 0
  br i1 %i.ag, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha55e5cb075280506E.exit", label %bb.i

bb.i:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit"
  %.val54 = load ptr, ptr %i.s, align 8, !nonnull !11, !noundef !11
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val54, i64 noundef %.val53, i64 noundef range(i64 1, -9223372036854775807) 1) #42
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha55e5cb075280506E.exit"

.loopexit:                                        ; preds = %bb.n
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit"

.loopexit.split-lp:                               ; preds = %bb.k, %.loopexit151
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit"

.lr.ph.i:                                         ; preds = %bb.e, %.split7.i, %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.06.0111 ; 3 uses
  store ptr %i.ah, ptr %i.k, align 8
  store i64 2, ptr %i.u, align 8
  %.pr.i = load i8, ptr %i.ah, align 1, !alias.scope !15851
  %cond.i = icmp eq i8 %.pr.i, 43                 ; 2 uses
  %spec.select.idx = zext i1 %cond.i to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %i.ah, i64 %spec.select.idx ; 2 uses
  %i.ai = load i8, ptr %spec.select, align 1, !alias.scope !15851, !noundef !11 ; 2 uses
  %i.aj = zext i8 %i.ai to i32                    ; 2 uses
  %i.ak = icmp ugt i8 %i.ai, 57
  %i.al = add nsw i32 %i.aj, -65
  %i.am = and i32 %i.al, -33
  %i.an = add nuw nsw i32 %i.am, 10
  %i.ao = add nsw i32 %i.aj, -48
  %spec.select87.i.peel = select i1 %i.ak, i32 %i.an, i32 %i.ao ; 2 uses
  %.not.i56.peel = icmp ult i32 %spec.select87.i.peel, 16
  br i1 %.not.i56.peel, label %bb.j, label %.loopexit151

bb.j:                                             ; preds = %.lr.ph.i
  %i.ap = getelementptr inbounds nuw i8, ptr %spec.select, i64 1
  %i.aq = trunc nuw nsw i32 %spec.select87.i.peel to i8 ; 2 uses
  br i1 %cond.i, label %bb.m, label %.lr.ph.i.peel.newph

.lr.ph.i.peel.newph:                              ; preds = %bb.j
  %i.ar = load i8, ptr %i.ap, align 1, !alias.scope !15851, !noundef !11 ; 2 uses
  %i.as = zext i8 %i.ar to i32                    ; 2 uses
  %i.at = icmp ugt i8 %i.ar, 57
  %i.au = add nsw i32 %i.as, -65
  %i.av = and i32 %i.au, -33
  %i.aw = add nuw nsw i32 %i.av, 10
  %i.ax = add nsw i32 %i.as, -48
  %spec.select87.i = select i1 %i.at, i32 %i.aw, i32 %i.ax ; 2 uses
  %.not.i56 = icmp ult i32 %spec.select87.i, 16
  br i1 %.not.i56, label %.loopexit152, label %.loopexit151

bb.k:                                             ; preds = %bb.d, %bb.g, %bb.f, %.split7.i
  invoke void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %.sroa.06.0111, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @532) #43
          to label %bb.l unwind label %.loopexit.split-lp

bb.l:                                             ; preds = %bb.k
  unreachable

.loopexit151:                                     ; preds = %.lr.ph.i, %.lr.ph.i.peel.newph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i8 1, ptr %i.j, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.k, ptr %i.f, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h3c2bcc7e49b274a4E", ptr %.sroa.440.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15854
  store ptr @535, ptr %i.b, align 8, !noalias !15862
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %.sroa.484.0..sroa_idx, align 8, !noalias !15862
  %.sroa.585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.f, ptr %.sroa.585.0..sroa_idx, align 8, !noalias !15862
  %.sroa.686.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.686.0..sroa_idx, align 8, !noalias !15862
  %.sroa.787.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.787.0..sroa_idx, align 8, !noalias !15862
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.o unwind label %.loopexit.split-lp

.loopexit152:                                     ; preds = %.lr.ph.i.peel.newph
  %i.ay = shl nuw i8 %i.aq, 4
  %i.az = trunc nuw nsw i32 %spec.select87.i to i8
  %i.ba = or disjoint i8 %i.ay, %i.az
  br label %bb.m

bb.m:                                             ; preds = %.loopexit152, %bb.j
  %.lcssa = phi i8 [ %i.aq, %bb.j ], [ %i.ba, %.loopexit152 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bb = load i64, ptr %i.l, align 8, !range !699, !alias.scope !15863, !noundef !11
  %i.bc = icmp eq i64 %i.w, %i.bb
  br i1 %i.bc, label %bb.n, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3b66f724c12bddacE.exit"

bb.n:                                             ; preds = %bb.m
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17ha41f396e8ea6efa1E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @533)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3b66f724c12bddacE.exit" unwind label %.loopexit

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3b66f724c12bddacE.exit": ; preds = %bb.n, %bb.m
  %i.bd = load ptr, ptr %i.s, align 8, !alias.scope !15863, !nonnull !11, !noundef !11
end_hunk_4
begin_hunk_5_@_ZN6procfs3sys6kernel6shmmni17h4fd2c6613cc49f21E:bb.a

; Function Attrs: nonlazybind uwtable
define void @_ZN6procfs3sys6kernel7Version7current17h1d16e5e271d72513E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [48 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16699)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !16699
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !16699
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !16702
  call void @_ZN3std2fs14read_to_string5inner17h9de4c5ac53797604E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @600, i64 noundef 26), !noalias !16706
  %i.i = load i64, ptr %i.e, align 8, !range !413, !noalias !16702, !noundef !11
  %i.j = icmp eq i64 %i.i, -9223372036854775808
  br i1 %i.j, label %bb.b, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !16702
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !16702
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !16702
  br label %_ZN6procfs9read_file17hd683a0ca57460019E.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !noalias !16702, !nonnull !11, !noundef !11
  call void @"_ZN91_$LT$procfs_core..ProcError$u20$as$u20$core..convert..From$LT$std..io..error..Error$GT$$GT$4from17h941382f9de96e267E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.d, ptr noundef nonnull %i.l), !noalias !16706
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.d, align 8, !noalias !16702 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !16702
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !16702
  %.not.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, -9223372036854775803
  br i1 %.not.i.i, label %_ZN6procfs9read_file17hd683a0ca57460019E.exit.thread.i, label %_ZN6procfs9read_file17hd683a0ca57460019E.exit.i

_ZN6procfs9read_file17hd683a0ca57460019E.exit.thread.i: ; preds = %bb.b, %.thread.i.i
  %.sroa.7.0..sroa_idx11.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx11.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !16707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16702
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !16699
  br label %bb.d

_ZN6procfs9read_file17hd683a0ca57460019E.exit.i:  ; preds = %bb.b
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.c, align 8, !noalias !16702
  %.sroa.7.0..sroa_idx10.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx10.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !16702
  %.sroa.8.0..sroa_idx12.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx12.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !noalias !16702
  call void @"_ZN68_$LT$procfs_core..ProcError$u20$as$u20$procfs_core..ProcErrorExt$GT$10error_path17h863f75f158574cc8E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @600, i64 noundef 26), !noalias !16699
  %.pr.i = load i64, ptr %i.f, align 8, !noalias !16699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16702
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !16699
  %.not.i = icmp eq i64 %.pr.i, -9223372036854775803
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN6procfs9read_file17hd683a0ca57460019E.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  br label %_ZN6procfs10read_value17h1d24aea7ee8239faE.exit

bb.d:                                             ; preds = %_ZN6procfs9read_file17hd683a0ca57460019E.exit.i, %_ZN6procfs9read_file17hd683a0ca57460019E.exit.thread.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.01.0.copyload.i = load i64, ptr %i.m, align 8, !noalias !16699 ; 4 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !16699, !nonnull !11, !noundef !11 ; 3 uses
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.52.0.copyload.i = load i64, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !16699
  call void @llvm.experimental.noalias.scope.decl(metadata !16708)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16711
  %i.n = call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h921eef8f3a0a02baE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.4.0.copyload.i, i64 noundef %.sroa.52.0.copyload.i), !noalias !16711 ; 2 uses
  %i.o = extractvalue { ptr, i64 } %i.n, 0
  %i.p = extractvalue { ptr, i64 } %i.n, 1
  invoke void @_ZN6procfs3sys6kernel7Version8from_str17heaad3975f37f1033E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.o, i64 noundef %i.p)
          to label %"_ZN75_$LT$procfs..sys..kernel..Version$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h0a7305fd46b2b439E.exit.i.i" unwind label %bb.e, !noalias !16711

bb.e:                                             ; preds = %bb.g, %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = icmp eq i64 %.sroa.01.0.copyload.i, 0
  br i1 %i.r, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit.i.i", label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %.sroa.01.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !16713
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit.i.i"

"_ZN75_$LT$procfs..sys..kernel..Version$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h0a7305fd46b2b439E.exit.i.i": ; preds = %bb.d
  %i.s = load ptr, ptr %i.b, align 8, !noalias !16711, !noundef !11 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.s, null
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %.not.i1.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %"_ZN75_$LT$procfs..sys..kernel..Version$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h0a7305fd46b2b439E.exit.i.i"
  %i.u = load i64, ptr %i.t, align 8, !noalias !16711, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16711
  invoke void @"_ZN77_$LT$procfs_core..ProcError$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h0196dd0316ea147eE"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.s, i64 noundef %i.u)
          to label %bb.k unwind label %bb.e, !noalias !16711

bb.h:                                             ; preds = %"_ZN75_$LT$procfs..sys..kernel..Version$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h0a7305fd46b2b439E.exit.i.i"
  %.sroa.0.0.copyload.i2.i = load i32, ptr %i.t, align 8, !noalias !16711
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.0.0.copyload.i2.i, ptr %i.v, align 8, !alias.scope !16716, !noalias !16717
  store i64 -9223372036854775803, ptr %0, align 8, !alias.scope !16716, !noalias !16717
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16711
  %i.w = icmp eq i64 %.sroa.01.0.copyload.i, 0
  br i1 %i.w, label %_ZN6procfs10read_value17h1d24aea7ee8239faE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %.sroa.01.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !16718
  br label %_ZN6procfs10read_value17h1d24aea7ee8239faE.exit

bb.k:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !16717
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16711
  br label %bb.i

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit.i.i": ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.q

_ZN6procfs10read_value17h1d24aea7ee8239faE.exit:  ; preds = %bb.c, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !16699
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN6procfs3sys6kernel7Version8from_str17heaad3975f37f1033E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h83cba116e995265dE.exit.i.i.i", %bb.a
  %i.b = phi i64 [ %i.aq, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h83cba116e995265dE.exit.i.i.i" ], [ 0, %bb.a ] ; 7 uses
  %i.c = phi ptr [ %i.am, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h83cba116e995265dE.exit.i.i.i" ], [ %1, %bb.a ] ; 7 uses
  %i.d = ptrtoint ptr %i.c to i64
  %.not.not.not.not.i.not = icmp eq ptr %i.c, %i.a
  br i1 %.not.not.not.not.i.not, label %.lr.ph.split.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 3 uses
  %i.f = load i8, ptr %i.c, align 1, !alias.scope !16721, !noalias !16724, !noundef !11 ; 5 uses
  %i.g = icmp sgt i8 %i.f, -1
  br i1 %i.g, label %bb.d, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4ace3d5b33ad209E.exit12.i.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4ace3d5b33ad209E.exit12.i.i.i.i.i.i": ; preds = %bb.c
  %i.h = and i8 %i.f, 31
  %i.i = zext nneg i8 %i.h to i32                 ; 3 uses
  %i.j = icmp ne ptr %i.e, %i.a
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 3 uses
  %i.l = load i8, ptr %i.e, align 1, !alias.scope !16721, !noalias !16724, !noundef !11
  %i.m = shl nuw nsw i32 %i.i, 6
  %i.n = and i8 %i.l, 63
  %i.o = zext nneg i8 %i.n to i32                 ; 2 uses
  %i.p = or disjoint i32 %i.m, %i.o
  %i.q = icmp samesign ugt i8 %i.f, -33
  br i1 %i.q, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4ace3d5b33ad209E.exit14.i.i.i.i.i.i", label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h83cba116e995265dE.exit.i.i.i"

bb.d:                                             ; preds = %bb.c
  %i.r = zext nneg i8 %i.f to i32
  br label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h83cba116e995265dE.exit.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4ace3d5b33ad209E.exit14.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4ace3d5b33ad209E.exit12.i.i.i.i.i.i"
  %i.s = icmp ne ptr %i.k, %i.a
  tail call void @llvm.assume(i1 %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 3 ; 3 uses
  %i.u = load i8, ptr %i.k, align 1, !alias.scope !16721, !noalias !16724, !noundef !11
  %i.v = shl nuw nsw i32 %i.o, 6
  %i.w = and i8 %i.u, 63
  %i.x = zext nneg i8 %i.w to i32
  %i.y = or disjoint i32 %i.v, %i.x               ; 2 uses
  %i.z = shl nuw nsw i32 %i.i, 12
  %i.aa = or disjoint i32 %i.y, %i.z
  %i.ab = icmp samesign ugt i8 %i.f, -17
  br i1 %i.ab, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4ace3d5b33ad209E.exit16.i.i.i.i.i.i", label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h83cba116e995265dE.exit.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4ace3d5b33ad209E.exit16.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4ace3d5b33ad209E.exit14.i.i.i.i.i.i"
  %i.ac = icmp ne ptr %i.t, %i.a
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ae = load i8, ptr %i.t, align 1, !alias.scope !16721, !noalias !16724, !noundef !11
  %i.af = shl nuw nsw i32 %i.i, 18
  %i.ag = and i32 %i.af, 1835008
  %i.ah = shl nuw nsw i32 %i.y, 6
  %i.ai = and i8 %i.ae, 63
  %i.aj = zext nneg i8 %i.ai to i32
  %i.ak = or disjoint i32 %i.ah, %i.aj
  %i.al = or disjoint i32 %i.ak, %i.ag
  br label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h83cba116e995265dE.exit.i.i.i"

"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h83cba116e995265dE.exit.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4ace3d5b33ad209E.exit16.i.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4ace3d5b33ad209E.exit14.i.i.i.i.i.i", %bb.d, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4ace3d5b33ad209E.exit12.i.i.i.i.i.i"
  %i.am = phi ptr [ %i.t, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4ace3d5b33ad209E.exit14.i.i.i.i.i.i" ], [ %i.ad, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4ace3d5b33ad209E.exit16.i.i.i.i.i.i" ], [ %i.k, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4ace3d5b33ad209E.exit12.i.i.i.i.i.i" ], [ %i.e, %bb.d ] ; 2 uses
  %.sroa.4.0.i.ph.i.i.i.i.i = phi i32 [ %i.aa, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4ace3d5b33ad209E.exit14.i.i.i.i.i.i" ], [ %i.al, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4ace3d5b33ad209E.exit16.i.i.i.i.i.i" ], [ %i.p, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4ace3d5b33ad209E.exit12.i.i.i.i.i.i" ], [ %i.r, %bb.d ] ; 3 uses
  %i.an = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.b, %i.d
  %i.aq = add i64 %i.ap, %i.ao
  %3 = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i.i, 46
  %i.ar = add nsw i32 %.sroa.4.0.i.ph.i.i.i.i.i, -48
  %.sroa.01.0.i.i.i.i.i.i = icmp ult i32 %i.ar, 10
  %.sroa.0.0.i.i.not.i.not.i.i.i = select i1 %3, i1 true, i1 %.sroa.01.0.i.i.i.i.i.i
  br i1 %.sroa.0.0.i.i.not.i.not.i.i.i, label %bb.b, label %bb.e

bb.e:                                             ; preds = %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h83cba116e995265dE.exit.i.i.i"
  %i.as = icmp eq i64 %i.b, 0
  br i1 %i.as, label %.lr.ph.split.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp ult i64 %i.b, %2
  br i1 %.not.i, label %bb.g, label %.split3.i

.split3.i:                                        ; preds = %bb.f
  %i.at = icmp eq i64 %i.b, %2
  br i1 %i.at, label %.lr.ph.split.i.i, label %"_ZN4core3str21_$LT$impl$u20$str$GT$16split_at_checked17h91d8fcfd737e3dc8E.exit"

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %i.b
  %i.av = load i8, ptr %i.au, align 1, !alias.scope !16738, !noalias !16741, !noundef !11
  %i.aw = icmp sgt i8 %i.av, -65
  br i1 %i.aw, label %.lr.ph.split.i.i, label %"_ZN4core3str21_$LT$impl$u20$str$GT$16split_at_checked17h91d8fcfd737e3dc8E.exit"

"_ZN4core3str21_$LT$impl$u20$str$GT$16split_at_checked17h91d8fcfd737e3dc8E.exit": ; preds = %bb.g, %.split3.i
  tail call void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef 0, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @601) #43
  unreachable

.lr.ph.split.i.i:                                 ; preds = %bb.b, %bb.e, %bb.g, %.split3.i
  %i.ax = phi i64 [ %2, %.split3.i ], [ 0, %bb.e ], [ %i.b, %bb.g ], [ %2, %bb.b ] ; 20 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %.lr.ph.split.i.i
  %i.ay = phi i64 [ 0, %.lr.ph.split.i.i ], [ %i.bl, %bb.j ] ; 6 uses
  %i.az = sub nuw i64 %i.ax, %i.ay                ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 %i.ay ; 2 uses
  %i.bb = icmp ult i64 %i.az, 16
  br i1 %i.bb, label %.preheader.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i

.preheader.i.i.i:                                 ; preds = %bb.h
  %.not.i.i.i = icmp eq i64 %i.ax, %i.ay
  br i1 %.not.i.i.i, label %.loopexit59.split.loop.exit65.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.i
  %.sroa.01.05.i.i.i = phi i64 [ %i.bf, %bb.i ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.sroa.01.05.i.i.i
  %i.bd = load i8, ptr %i.bc, align 1, !alias.scope !16743, !noalias !16746, !noundef !11
  %i.be = icmp eq i8 %i.bd, 46
  br i1 %i.be, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.bf = add nuw i64 %.sroa.01.05.i.i.i, 1       ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bf, %i.az
  br i1 %exitcond.not.i.i.i, label %.loopexit59.split.loop.exit65.i, label %.lr.ph.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i: ; preds = %bb.h
  %i.bg = tail call { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef 46, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ba, i64 noundef %i.az), !noalias !16746 ; 2 uses
  %i.bh = extractvalue { i64, i64 } %i.bg, 0
  %i.bi = extractvalue { i64, i64 } %i.bg, 1
  %i.bj = trunc nuw i64 %i.bh to i1
  br i1 %i.bj, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i, label %.loopexit59.split.loop.exit65.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i: ; preds = %.lr.ph.i.i.i, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i
  %.sroa.4.0.i27.i.i = phi i64 [ %i.bi, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.bk = add i64 %i.ay, 1
  %i.bl = add i64 %i.bk, %.sroa.4.0.i27.i.i       ; 6 uses
  %.not21.i.i = icmp ugt i64 %i.bl, %i.ax
  %i.bm = add i64 %i.ay, %.sroa.4.0.i27.i.i
  %or.cond.i.i.not = icmp ult i64 %i.bm, %i.ax
  br i1 %or.cond.i.i.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.k, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i
  br i1 %.not21.i.i, label %.loopexit59.split.loop.exit65.i, label %bb.h

bb.k:                                             ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i
  %i.bn = add i64 %i.ay, %.sroa.4.0.i27.i.i       ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 %i.bn
  %lhsc = load i8, ptr %i.bo, align 1
  %i.bp = icmp eq i8 %lhsc, 46
  br i1 %i.bp, label %bb.l, label %bb.j

bb.l:                                             ; preds = %bb.k
  %i.bq = icmp ult i64 %i.ax, %i.bl
  br i1 %i.bq, label %.loopexit59.split.loop.exit65.i, label %.lr.ph.split.i.i90

.lr.ph.split.i.i90:                               ; preds = %bb.l, %bb.n
  %i.br = phi i64 [ %i.ce, %bb.n ], [ %i.bl, %bb.l ] ; 6 uses
  %i.bs = sub nuw i64 %i.ax, %i.br                ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 %i.br ; 2 uses
  %i.bu = icmp ult i64 %i.bs, 16
  br i1 %i.bu, label %.preheader.i.i.i111, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i92

.preheader.i.i.i111:                              ; preds = %.lr.ph.split.i.i90
  %.not.i.i.i112 = icmp eq i64 %i.ax, %i.br
  br i1 %.not.i.i.i112, label %.loopexit59.split.loop.exit65.i, label %.lr.ph.i.i.i113

.lr.ph.i.i.i113:                                  ; preds = %.preheader.i.i.i111, %bb.m
  %.sroa.01.05.i.i.i114 = phi i64 [ %i.by, %bb.m ], [ 0, %.preheader.i.i.i111 ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.sroa.01.05.i.i.i114
  %i.bw = load i8, ptr %i.bv, align 1, !alias.scope !16752, !noalias !16755, !noundef !11
  %i.bx = icmp eq i8 %i.bw, 46
  br i1 %i.bx, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i104, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i113
  %i.by = add nuw i64 %.sroa.01.05.i.i.i114, 1    ; 2 uses
  %exitcond.not.i.i.i115 = icmp eq i64 %i.by, %i.bs
  br i1 %exitcond.not.i.i.i115, label %.loopexit59.split.loop.exit65.i, label %.lr.ph.i.i.i113

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i92: ; preds = %.lr.ph.split.i.i90
  %i.bz = tail call { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef 46, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bt, i64 noundef %i.bs), !noalias !16755 ; 2 uses
  %i.ca = extractvalue { i64, i64 } %i.bz, 0
  %i.cb = extractvalue { i64, i64 } %i.bz, 1
  %i.cc = trunc nuw i64 %i.ca to i1
  br i1 %i.cc, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i104, label %.loopexit59.split.loop.exit65.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i104: ; preds = %.lr.ph.i.i.i113, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i92
  %.sroa.4.0.i27.i.i105 = phi i64 [ %i.cb, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i92 ], [ %.sroa.01.05.i.i.i114, %.lr.ph.i.i.i113 ] ; 3 uses
  %i.cd = add i64 %i.br, 1
  %i.ce = add i64 %i.cd, %.sroa.4.0.i27.i.i105    ; 6 uses
  %.not21.i.i107 = icmp ugt i64 %i.ce, %i.ax
  %i.cf = add i64 %i.br, %.sroa.4.0.i27.i.i105
  %or.cond.i.i108.not = icmp ult i64 %i.cf, %i.ax
  br i1 %or.cond.i.i108.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.o, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i104
  br i1 %.not21.i.i107, label %.loopexit59.split.loop.exit65.i, label %.lr.ph.split.i.i90

bb.o:                                             ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i104
  %i.cg = add i64 %i.br, %.sroa.4.0.i27.i.i105    ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 %i.cg
  %lhsc360 = load i8, ptr %i.ch, align 1
  %i.ci = icmp eq i8 %lhsc360, 46
  br i1 %i.ci, label %bb.p, label %bb.n

.loopexit59.split.loop.exit65.i:                  ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i, %.preheader.i.i.i, %bb.j, %bb.i, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i92, %.preheader.i.i.i111, %bb.n, %bb.m, %bb.w, %.lr.ph, %.lr.ph.split.us.i, %bb.ac, %.lr.ph441, %.lr.ph.split.us.i156, %bb.ai, %.lr.ph.split.us.i179, %bb.l, %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit", %.loopexit, %bb.af, %bb.af, %bb.z, %bb.z, %.loopexit251, %bb.t, %bb.t, %select.unfold
  %.sink404 = phi ptr [ @604, %bb.w ], [ @605, %bb.z ], [ @604, %bb.t ], [ @603, %bb.m ], [ @606, %bb.af ], [ @604, %.lr.ph.split.us.i ], [ @606, %.lr.ph.split.us.i179 ], [ @604, %select.unfold ], [ @604, %bb.t ], [ @606, %.loopexit ], [ @602, %bb.i ], [ @603, %bb.l ], [ @605, %.loopexit251 ], [ @605, %bb.z ], [ @605, %.lr.ph.split.us.i156 ], [ @606, %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit" ], [ @606, %bb.af ], [ @606, %bb.ai ], [ @605, %bb.ac ], [ @603, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i92 ], [ @605, %.lr.ph441 ], [ @604, %.lr.ph ], [ @603, %bb.n ], [ @603, %.preheader.i.i.i111 ], [ @602, %bb.j ], [ @602, %.preheader.i.i.i ], [ @602, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i ]
  %.sink = phi i64 [ 29, %bb.w ], [ 29, %bb.z ], [ 29, %bb.t ], [ 31, %bb.m ], [ 29, %bb.af ], [ 29, %.lr.ph.split.us.i ], [ 29, %.lr.ph.split.us.i179 ], [ 29, %select.unfold ], [ 29, %bb.t ], [ 29, %.loopexit ], [ 31, %bb.i ], [ 31, %bb.l ], [ 29, %.loopexit251 ], [ 29, %bb.z ], [ 29, %.lr.ph.split.us.i156 ], [ 29, %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit" ], [ 29, %bb.af ], [ 29, %bb.ai ], [ 29, %bb.ac ], [ 31, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i92 ], [ 29, %.lr.ph441 ], [ 29, %.lr.ph ], [ 31, %bb.n ], [ 31, %.preheader.i.i.i111 ], [ 31, %bb.j ], [ 31, %.preheader.i.i.i ], [ 31, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i ]
  store ptr %.sink404, ptr %0, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink, ptr %i.cj, align 8
  br label %bb.am

bb.p:                                             ; preds = %bb.o
  %.sroa.4.1.i102.ph = sub nuw i64 %i.cg, %i.bl   ; 5 uses
  %.sroa.0.1.i103.ph = getelementptr inbounds nuw i8, ptr %1, i64 %i.bl ; 6 uses
  %i.ck = icmp ult i64 %i.ax, %i.ce
  br i1 %i.ck, label %select.unfold, label %.backedge

.backedge:                                        ; preds = %bb.p, %.backedge.backedge
  %i.cl = phi i64 [ %i.cy, %.backedge.backedge ], [ %i.ce, %bb.p ] ; 6 uses
  %i.cm = sub nuw i64 %i.ax, %i.cl                ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 %i.cl ; 2 uses
  %i.co = icmp ult i64 %i.cm, 16
  br i1 %i.co, label %.preheader.i.i.i143, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i124

.preheader.i.i.i143:                              ; preds = %.backedge
  %.not.i.i.i144 = icmp eq i64 %i.ax, %i.cl
  br i1 %.not.i.i.i144, label %select.unfold, label %.lr.ph.i.i.i145

.lr.ph.i.i.i145:                                  ; preds = %.preheader.i.i.i143, %bb.q
  %.sroa.01.05.i.i.i146 = phi i64 [ %i.cs, %bb.q ], [ 0, %.preheader.i.i.i143 ] ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.sroa.01.05.i.i.i146
  %i.cq = load i8, ptr %i.cp, align 1, !alias.scope !16761, !noalias !16764, !noundef !11
  %i.cr = icmp eq i8 %i.cq, 46
  br i1 %i.cr, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i136, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i145
  %i.cs = add nuw i64 %.sroa.01.05.i.i.i146, 1    ; 2 uses
  %exitcond.not.i.i.i147 = icmp eq i64 %i.cs, %i.cm
  br i1 %exitcond.not.i.i.i147, label %select.unfold, label %.lr.ph.i.i.i145

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i124: ; preds = %.backedge
  %i.ct = tail call { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef 46, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.cn, i64 noundef %i.cm), !noalias !16764 ; 2 uses
  %i.cu = extractvalue { i64, i64 } %i.ct, 0
  %i.cv = extractvalue { i64, i64 } %i.ct, 1
  %i.cw = trunc nuw i64 %i.cu to i1
  br i1 %i.cw, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i136, label %select.unfold

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i136: ; preds = %.lr.ph.i.i.i145, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i124
  %.sroa.4.0.i27.i.i137 = phi i64 [ %i.cv, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i124 ], [ %.sroa.01.05.i.i.i146, %.lr.ph.i.i.i145 ] ; 3 uses
  %i.cx = add i64 %i.cl, 1
  %i.cy = add i64 %i.cx, %.sroa.4.0.i27.i.i137    ; 2 uses
  %.not21.i.i139 = icmp ugt i64 %i.cy, %i.ax      ; 2 uses
  %i.cz = add i64 %i.cl, %.sroa.4.0.i27.i.i137
  %or.cond.i.i140.not = icmp ult i64 %i.cz, %i.ax
  br i1 %or.cond.i.i140.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i136
  br i1 %.not21.i.i139, label %select.unfold, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.r, %bb.s
  br label %.backedge

bb.s:                                             ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i136
  %i.da = add i64 %i.cl, %.sroa.4.0.i27.i.i137    ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 %i.da
  %lhsc362 = load i8, ptr %i.db, align 1
  %i.dc = icmp eq i8 %lhsc362, 46                 ; 2 uses
  %brmerge = or i1 %i.dc, %.not21.i.i139
  br i1 %brmerge, label %select.unfold.loopexit466.split.loop.exit504, label %.backedge.backedge

select.unfold.loopexit466.split.loop.exit504:     ; preds = %bb.s
  %.mux.le = select i1 %i.dc, i64 %i.da, i64 %i.ax
  br label %select.unfold

end_hunk_5
begin_hunk_6_@"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$13read_vectored17hce0caa0d6a52ed98E":bb.a

.lr.ph31:                                         ; preds = %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h45d5ae3401ef14f3E.exit.thread24
  %i.ba = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.ay
  br label %bb.j

bb.j:                                             ; preds = %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i", %.lr.ph31
  %.sroa.01.0.i30 = phi i64 [ 0, %.lr.ph31 ], [ %i.bj, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i" ]
  %.sroa.0.0.i29 = phi ptr [ %1, %.lr.ph31 ], [ %i.bd, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i" ] ; 3 uses
  %i.bb = phi ptr [ %i.ba, %.lr.ph31 ], [ %i.bk, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i" ] ; 3 uses
  %i.bc = phi i64 [ %i.ax, %.lr.ph31 ], [ %i.bl, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i" ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i29, i64 16 ; 2 uses
  %i.be = load ptr, ptr %.sroa.0.0.i29, align 8, !alias.scope !26847, !noalias !26850, !noundef !11 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i29, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !26847, !noalias !26850, !noundef !11 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26852)
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.bc, i64 %i.bg) ; 5 uses
  %i.bh = icmp eq i64 %.sroa.0.0.i.i.i, 1
  br i1 %i.bh, label %bb.k, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h619c66867fe4faa1E.exit.i.i"

bb.k:                                             ; preds = %bb.j
  %i.bi = load i8, ptr %i.bb, align 1, !noalias !26855, !noundef !11
  store i8 %i.bi, ptr %i.be, align 1, !alias.scope !26852, !noalias !26857
  br label %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h619c66867fe4faa1E.exit.i.i": ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.be, ptr nonnull readonly align 1 %i.bb, i64 %.sroa.0.0.i.i.i, i1 false), !alias.scope !26858, !noalias !26862
  br label %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i"

"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i": ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h619c66867fe4faa1E.exit.i.i", %bb.k
  %i.bj = add i64 %.sroa.0.0.i.i.i, %.sroa.01.0.i30 ; 2 uses
  %.not.i7 = icmp ule i64 %i.bc, %i.bg
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.sroa.0.0.i.i.i
  %i.bl = sub nuw i64 %i.bc, %.sroa.0.0.i.i.i
  %i.bm = icmp eq ptr %i.bd, %i.a
  %or.cond = select i1 %.not.i7, i1 true, i1 %i.bm
  br i1 %or.cond, label %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$13read_vectored17h05a0c6d1251357b4E.exit", label %bb.j

"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$13read_vectored17h05a0c6d1251357b4E.exit": ; preds = %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i", %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h45d5ae3401ef14f3E.exit.thread24
  %.sroa.01.1.i = phi i64 [ 0, %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h45d5ae3401ef14f3E.exit.thread24 ], [ %i.bj, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i" ] ; 2 uses
  %i.bn = inttoptr i64 %.sroa.01.1.i to ptr
  %i.bo = load i64, ptr %i.s, align 8, !noundef !11
  %i.bp = add i64 %i.bo, %.sroa.01.1.i
  %i.bq = load i64, ptr %i.u, align 8, !noundef !11
  %.sroa.0.0.i8 = tail call noundef i64 @llvm.umin.i64(i64 %i.bq, i64 %i.bp)
  store i64 %.sroa.0.0.i8, ptr %i.s, align 8
  %i.br = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.bn, 1
  br label %bb.l

bb.l:                                             ; preds = %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h45d5ae3401ef14f3E.exit.thread, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$13read_vectored17h05a0c6d1251357b4E.exit", %_ZN3std2io4Read13read_vectored17h8f9bbd44af210acfE.exit
  %.merged = phi { i64, ptr } [ %i.au, %_ZN3std2io4Read13read_vectored17h8f9bbd44af210acfE.exit ], [ %i.aw, %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h45d5ae3401ef14f3E.exit.thread ], [ %i.br, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$13read_vectored17h05a0c6d1251357b4E.exit" ]
  ret { i64, ptr } %.merged
}

; Function Attrs: nonlazybind uwtable
define internal noundef ptr @"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$14read_buf_exact17h722b2c9d9de5e235E"(ptr noalias noundef align 8 dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !11 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !11 ; 4 uses
  %i.e = sub i64 %i.b, %i.d                       ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26864)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !26864, !noalias !26867, !noundef !11 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !26864, !noalias !26867, !noundef !11
  %i.j = sub nuw i64 %i.i, %i.g
  %.not.i.not = icmp ugt i64 %i.e, %i.j
  br i1 %.not.i.not, label %_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17he9ee51956fc467b9E.exit, label %_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17he9ee51956fc467b9E.exit.thread

_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17he9ee51956fc467b9E.exit.thread: ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !alias.scope !26864, !noalias !26867, !nonnull !11, !noundef !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.g
  %i.m = load ptr, ptr %1, align 8, !noalias !26869, !nonnull !11, !align !12, !noundef !11
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull readonly align 1 %i.l, i64 %i.e, i1 false), !alias.scope !26874, !noalias !26878
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !noalias !26869, !noundef !11
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 %i.p)
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.o, align 8, !noalias !26869
  store i64 %i.b, ptr %i.c, align 8, !noalias !26869
  %i.q = add i64 %i.g, %i.e
  store i64 %i.q, ptr %i.f, align 8, !alias.scope !26864, !noalias !26867
  br label %_ZN3std2io22default_read_buf_exact17h221b9f4dfeeb0a3eE.exit

_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17he9ee51956fc467b9E.exit: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26880)
  %.not39.i = icmp eq i64 %i.b, %i.d
  br i1 %.not39.i, label %_ZN3std2io22default_read_buf_exact17h221b9f4dfeeb0a3eE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17he9ee51956fc467b9E.exit, %.backedge.i
  %i.r = phi i64 [ %i.x, %.backedge.i ], [ %i.d, %_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17he9ee51956fc467b9E.exit ]
  %i.s = tail call noundef ptr @"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$8read_buf17h7a62add5da8aad4bE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1) ; 10 uses
  %.not10.i = icmp eq ptr %i.s, null
  br i1 %.not10.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.t = ptrtoint ptr %i.s to i64                 ; 3 uses
  %i.u = and i64 %i.t, 3
  switch i64 %i.u, label %default.unreachable [
    i64 2, label %.split.i
    i64 3, label %bb.d
    i64 0, label %.split37.i
    i64 1, label %.split36.i
  ], !prof !3687

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.lr.ph.i
  %i.v = load i64, ptr %i.c, align 8, !alias.scope !26880, !noalias !26883, !noundef !11 ; 2 uses
  %i.w = icmp eq i64 %i.v, %i.r
  br i1 %i.w, label %_ZN3std2io22default_read_buf_exact17h221b9f4dfeeb0a3eE.exit, label %.backedge.i

.backedge.i:                                      ; preds = %bb.e, %bb.c
  %i.x = phi i64 [ %i.v, %bb.c ], [ %.pre.i, %bb.e ] ; 2 uses
  %i.y = load i64, ptr %i.a, align 8, !alias.scope !26880, !noalias !26883, !noundef !11
  %.not.i1 = icmp eq i64 %i.y, %i.x
  br i1 %.not.i1, label %_ZN3std2io22default_read_buf_exact17h221b9f4dfeeb0a3eE.exit, label %.lr.ph.i

.split.i:                                         ; preds = %bb.b
  %.mask38.i = and i64 %i.t, -4294967296
  %i.z = icmp eq i64 %.mask38.i, 17179869184
  br i1 %i.z, label %bb.e, label %_ZN3std2io22default_read_buf_exact17h221b9f4dfeeb0a3eE.exit

.split37.i:                                       ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ab = load i8, ptr %i.aa, align 8, !range !3688, !noalias !26880, !noundef !11
  %i.ac = icmp eq i8 %i.ab, 35
  br i1 %i.ac, label %bb.e, label %_ZN3std2io22default_read_buf_exact17h221b9f4dfeeb0a3eE.exit

.split36.i:                                       ; preds = %bb.b
  %i.ad = getelementptr i8, ptr %i.s, i64 15
  %i.ae = load i8, ptr %i.ad, align 8, !range !3688, !noalias !26880, !noundef !11
  %i.af = icmp eq i8 %i.ae, 35
  br i1 %i.af, label %bb.e, label %_ZN3std2io22default_read_buf_exact17h221b9f4dfeeb0a3eE.exit

bb.d:                                             ; preds = %bb.b
  %i.ag = icmp ult ptr %i.s, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %i.ag)
  %.mask.i = and i64 %i.t, -4294967296
  %i.ah = icmp eq i64 %.mask.i, 150323855360
  br i1 %i.ah, label %bb.e, label %_ZN3std2io22default_read_buf_exact17h221b9f4dfeeb0a3eE.exit

bb.e:                                             ; preds = %bb.d, %.split36.i, %.split37.i, %.split.i
  tail call fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h2fcde3704c8dc432E"(ptr nonnull %i.s), !noalias !26880
  %.pre.i = load i64, ptr %i.c, align 8, !alias.scope !26880, !noalias !26883
  br label %.backedge.i

_ZN3std2io22default_read_buf_exact17h221b9f4dfeeb0a3eE.exit: ; preds = %bb.d, %.split36.i, %.split37.i, %.split.i, %.backedge.i, %bb.c, %_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17he9ee51956fc467b9E.exit, %_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17he9ee51956fc467b9E.exit.thread
  %.sroa.0.0 = phi ptr [ null, %_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17he9ee51956fc467b9E.exit.thread ], [ null, %_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17he9ee51956fc467b9E.exit ], [ null, %.backedge.i ], [ %i.s, %bb.d ], [ %i.s, %.split.i ], [ %i.s, %.split36.i ], [ @104, %bb.c ], [ %i.s, %.split37.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$14read_to_string17h31aef9269ac8bd77E"(ptr noalias noundef align 8 dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !11 ; 5 uses
  %i.g = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26885)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !26888
  store ptr %1, ptr %i.b, align 8, !noalias !26888
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 0, ptr %i.i, align 8, !noalias !26888
  %i.j = invoke { i64, ptr } @"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$11read_to_end17hfeec9670632730e7E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$14read_to_string28_$u7b$$u7b$closure$u7d$$u7d$17h7e8a37b42dde8c08E.exit.i" unwind label %bb.c ; 2 uses

"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h4f78c4a92701943cE.exit.i": ; preds = %bb.e, %bb.d, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.k, %bb.c ], [ %i.q, %bb.e ], [ %i.q, %bb.d ]
  invoke void @"_ZN56_$LT$std..io..Guard$u20$as$u20$core..ops..drop..Drop$GT$4drop17heb49ac04b342d0f7E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %common.resume unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h4f78c4a92701943cE.exit.i"

"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$14read_to_string28_$u7b$$u7b$closure$u7d$$u7d$17h7e8a37b42dde8c08E.exit.i": ; preds = %bb.b
  %i.l = extractvalue { i64, ptr } %i.j, 0        ; 3 uses
  %i.m = extractvalue { i64, ptr } %i.j, 1        ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !26885, !noalias !26890, !nonnull !11, !noundef !11
  %i.p = load i64, ptr %i.e, align 8, !alias.scope !26885, !noalias !26890, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26888
  invoke void @_ZN4core3str8converts9from_utf817h61448895180b8340E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.o, i64 noundef %i.p)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$14read_to_string28_$u7b$$u7b$closure$u7d$$u7d$17h7e8a37b42dde8c08E.exit.i"
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %2 = trunc nuw i64 %i.l to i1
  br i1 %2, label %bb.e, label %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h4f78c4a92701943cE.exit.i"

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h2fcde3704c8dc432E"(ptr nonnull %i.m)
          to label %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h4f78c4a92701943cE.exit.i" unwind label %bb.i

bb.f:                                             ; preds = %"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$14read_to_string28_$u7b$$u7b$closure$u7d$$u7d$17h7e8a37b42dde8c08E.exit.i"
  %i.r = load i64, ptr %i.a, align 8, !range !2380, !noalias !26888, !noundef !11
  %3 = trunc nuw i64 %i.r to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26888
  br i1 %3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.b, align 8, !noalias !26888, !nonnull !11, !align !305, !noundef !11
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i64, ptr %i.t, align 8, !noundef !11 ; 2 uses
  %i.v = icmp sgt i64 %i.u, -1
  call void @llvm.assume(i1 %i.v)
  store i64 %i.u, ptr %i.i, align 8, !noalias !26888
  br label %_ZN3std2io16append_to_string17hc3adfb9d228934f2E.exit

bb.h:                                             ; preds = %bb.f
  %i.w = trunc nuw i64 %i.l to i1
  %spec.select.i = select i1 %i.w, ptr %i.m, ptr @99
  br label %_ZN3std2io16append_to_string17hc3adfb9d228934f2E.exit

bb.i:                                             ; preds = %bb.e, %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h4f78c4a92701943cE.exit.i"
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable

common.resume:                                    ; preds = %bb.k, %bb.l, %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h4f78c4a92701943cE.exit.i"
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h4f78c4a92701943cE.exit.i" ], [ %i.ac, %bb.l ], [ %i.ac, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_ZN3std2io16append_to_string17hc3adfb9d228934f2E.exit: ; preds = %bb.g, %bb.h
  %.pre-phi19 = phi ptr [ %i.m, %bb.g ], [ %spec.select.i, %bb.h ]
  %.pre-phi = phi i64 [ %i.l, %bb.g ], [ 1, %bb.h ]
  call void @"_ZN56_$LT$std..io..Guard$u20$as$u20$core..ops..drop..Drop$GT$4drop17heb49ac04b342d0f7E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !26888
  %i.y = ptrtoint ptr %.pre-phi19 to i64
  br label %bb.v

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %i.aa, align 8
  %i.ab = invoke { i64, ptr } @"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$11read_to_end17hfeec9670632730e7E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.m unwind label %bb.k       ; 2 uses

bb.k:                                             ; preds = %bb.s, %bb.o, %bb.j
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val14 = load i64, ptr %i.d, align 8           ; 2 uses
  %i.ad = icmp eq i64 %.val14, 0
  br i1 %i.ad, label %common.resume, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val15 = load ptr, ptr %i.z, align 8, !nonnull !11, !noundef !11
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val15, i64 noundef %.val14, i64 noundef range(i64 1, -9223372036854775807) 1) #42
  br label %common.resume

bb.m:                                             ; preds = %bb.j
  %i.ae = extractvalue { i64, ptr } %i.ab, 0
  %i.af = trunc nuw i64 %i.ae to i1
  br i1 %i.af, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ag = extractvalue { i64, ptr } %i.ab, 1
  %i.ah = ptrtoint ptr %i.ag to i64
  br label %bb.w

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ai = load ptr, ptr %i.z, align 8, !nonnull !11, !noundef !11
  %i.aj = load i64, ptr %i.aa, align 8, !noundef !11
  invoke void @_ZN4core3str8converts9from_utf817h61448895180b8340E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ai, i64 noundef %i.aj)
          to label %bb.p unwind label %bb.k

bb.p:                                             ; preds = %bb.o
  %i.ak = load i64, ptr %i.c, align 8, !range !2380, !noundef !11
  %i.al = trunc nuw i64 %i.ak to i1
  br i1 %i.al, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.w

bb.r:                                             ; preds = %bb.p
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !11, !align !12, !noundef !11
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !11 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !26891)
  call void @llvm.experimental.noalias.scope.decl(metadata !26894)
  %i.aq = load i64, ptr %1, align 8, !range !699, !alias.scope !26897, !noundef !11
  %i.ar = sub nsw i64 %i.aq, %i.f
  %i.as = icmp ugt i64 %i.ap, %i.ar
  br i1 %i.as, label %bb.s, label %bb.t, !prof !323

bb.s:                                             ; preds = %bb.r
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h440846d0dedc0723E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.f, i64 noundef %i.ap, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.s
  %.pre.i.i = load i64, ptr %i.e, align 8, !alias.scope !26900
  br label %bb.t

bb.t:                                             ; preds = %.noexc, %bb.r
  %i.at = phi i64 [ %i.f, %bb.r ], [ %.pre.i.i, %.noexc ] ; 3 uses
  %i.au = icmp sgt i64 %i.at, -1
  call void @llvm.assume(i1 %i.au)
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !26900, !nonnull !11, !noundef !11
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.at
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr nonnull readonly align 1 %i.an, i64 %i.ap, i1 false), !noalias !26900
  %i.ay = add i64 %i.at, %i.ap
  store i64 %i.ay, ptr %i.e, align 8, !alias.scope !26900
  %.val12 = load i64, ptr %i.d, align 8           ; 2 uses
  %i.az = icmp eq i64 %.val12, 0
  br i1 %i.az, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha55e5cb075280506E.exit16", label %bb.u

bb.u:                                             ; preds = %bb.t
  %.val13 = load ptr, ptr %i.z, align 8, !nonnull !11, !noundef !11
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13, i64 noundef %.val12, i64 noundef range(i64 1, -9223372036854775807) 1) #42
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha55e5cb075280506E.exit16"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha55e5cb075280506E.exit16": ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.v

bb.v:                                             ; preds = %_ZN3std2io16append_to_string17hc3adfb9d228934f2E.exit, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha55e5cb075280506E.exit16", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha55e5cb075280506E.exit17"
  %.sroa.5.0 = phi i64 [ %i.y, %_ZN3std2io16append_to_string17hc3adfb9d228934f2E.exit ], [ %.sroa.5.1, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha55e5cb075280506E.exit17" ], [ %i.ap, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha55e5cb075280506E.exit16" ]
  %.sroa.0.0 = phi i64 [ %.pre-phi, %_ZN3std2io16append_to_string17hc3adfb9d228934f2E.exit ], [ 1, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha55e5cb075280506E.exit17" ], [ 0, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha55e5cb075280506E.exit16" ]
  %i.ba = inttoptr i64 %.sroa.5.0 to ptr
  %i.bb = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.bc = insertvalue { i64, ptr } %i.bb, ptr %i.ba, 1
  ret { i64, ptr } %i.bc

bb.w:                                             ; preds = %bb.q, %bb.n
  %.sroa.5.1 = phi i64 [ %i.ah, %bb.n ], [ ptrtoint (ptr @99 to i64), %bb.q ]
  %.val = load i64, ptr %i.d, align 8             ; 2 uses
  %i.bd = icmp eq i64 %.val, 0
  br i1 %i.bd, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha55e5cb075280506E.exit17", label %bb.x

bb.x:                                             ; preds = %bb.w
  %.val11 = load ptr, ptr %i.z, align 8, !nonnull !11, !noundef !11
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val11, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #42
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha55e5cb075280506E.exit17"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha55e5cb075280506E.exit17": ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.v
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$16is_read_vectored17h708eb46d631a7a6cE"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$4read17h5cd729b0778ff61eE"(ptr noalias noundef align 8 dereferenceable(72) %0, ptr noalias noundef nonnull align 1 %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !11 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !11 ; 4 uses
  %i.e = icmp ne i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8              ; 6 uses
  %.not = icmp ult i64 %2, %i.g
  %or.cond = select i1 %i.e, i1 true, i1 %.not
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26901)
  %.not.i = icmp ult i64 %i.b, %i.d
  %.pre.i = load ptr, ptr %0, align 8, !alias.scope !26901, !noalias !26904 ; 6 uses
  br i1 %.not.i, label %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h45d5ae3401ef14f3E.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !26901, !noalias !26904, !noundef !11 ; 2 uses
  %i.k = sub nuw i64 %i.g, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.j
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.l, i8 0, i64 %i.k, i1 false), !noalias !26907
  %i.m = tail call { i64, ptr } @"_ZN53_$LT$procfs..FileWrapper$u20$as$u20$std..io..Read$GT$4read17h087f3fcdb92cac2fE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, ptr noalias noundef nonnull align 1 %.pre.i, i64 noundef %i.g), !noalias !26918 ; 2 uses
  %i.n = extractvalue { i64, ptr } %i.m, 0
  %i.o = extractvalue { i64, ptr } %i.m, 1        ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64                 ; 5 uses
  %i.q = trunc nuw i64 %i.n to i1
  br i1 %i.q, label %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17h138f8ba6980f86e5E.exit.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i = icmp ult i64 %i.g, %i.p
  br i1 %.not.i.i.i.i, label %bb.e, label %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17h138f8ba6980f86e5E.exit.thread.i", !prof !323

"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17h138f8ba6980f86e5E.exit.thread.i": ; preds = %bb.d
  store i64 0, ptr %i.a, align 8, !alias.scope !26901, !noalias !26904
  store i64 %i.p, ptr %i.c, align 8, !alias.scope !26901, !noalias !26904
  store i64 %i.g, ptr %i.i, align 8, !alias.scope !26901, !noalias !26904
  br label %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h45d5ae3401ef14f3E.exit.thread17

bb.e:                                             ; preds = %bb.d
end_hunk_6
begin_hunk_7_@"_ZN87_$LT$procfs..sys..kernel.._..InternalBitFlags$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h0222dd0d3694256aE":bb.a
  %i.bs = load i128, ptr %i.y, align 1
  %i.bt = xor i128 109491673784529388931300467582578019909, %i.bs
  %i.bu = getelementptr i8, ptr %i.y, i64 16
  %i.bv = load i64, ptr %i.bu, align 1
  %i.bw = zext i64 %i.bv to i128
  %i.bx = xor i128 6434604070413287749, %i.bw
  %i.by = or i128 %i.bt, %i.bx
  %i.bz = icmp ne i128 %i.by, 0
  %i.ca = zext i1 %i.bz to i32
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.z, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i"

bb.m:                                             ; preds = %bb.g
  %i.cc = load i128, ptr %i.y, align 1
  %i.cd = xor i128 94781673513147319680183853542379966021, %i.cc
  %i.ce = getelementptr i8, ptr %i.y, i64 10
  %i.cf = load i128, ptr %i.ce, align 1
  %i.cg = xor i128 110685882170757350622933374826244227406, %i.cf
  %i.ch = or i128 %i.cd, %i.cg
  %i.ci = icmp ne i128 %i.ch, 0
  %i.cj = zext i1 %i.ci to i32
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.z, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i"

bb.n:                                             ; preds = %bb.g
  %i.cl = load i128, ptr %i.y, align 1
  %i.cm = xor i128 116054657230648283568206067430966709313, %i.cl
  %i.cn = getelementptr i8, ptr %i.y, i64 5
  %i.co = load i128, ptr %i.cn, align 1
  %i.cp = xor i128 93411029313569580462442961078550090335, %i.co
  %i.cq = or i128 %i.cm, %i.cp
  %i.cr = icmp ne i128 %i.cq, 0
  %i.cs = zext i1 %i.cr to i32
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.z, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i"

bb.o:                                             ; preds = %bb.g
  %i.cu = load i128, ptr %i.y, align 1
  %i.cv = xor i128 86759758915589451022415705845495778369, %i.cu
  %i.cw = getelementptr i8, ptr %i.y, i64 12
  %i.cx = load i128, ptr %i.cw, align 1
  %i.cy = xor i128 110717034530477712085809844699737182815, %i.cx
  %i.cz = or i128 %i.cv, %i.cy
  %i.da = icmp ne i128 %i.cz, 0
  %i.db = zext i1 %i.da to i32
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.z, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i"

bb.p:                                             ; preds = %bb.f
  %.sroa.5103.0.copyload.i = load i64, ptr %.sroa.716.0..sroa_idx.i, align 8, !noalias !28429 ; 6 uses
  %.sroa.6104.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6104.0.copyload.i = load ptr, ptr %.sroa.6104.0..sroa_idx.i, align 8, !noalias !28429 ; 4 uses
  %i.dd = icmp slt i64 %i.af, 0
  br i1 %i.dd, label %bb.q, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !91

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.p
  %i.de = icmp eq i64 %i.af, 0
  br i1 %i.de, label %bb.u, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !28430
  %i.df = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.af, i64 noundef range(i64 1, 9) 1) #42, !noalias !28430 ; 2 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %bb.q, label %bb.u

bb.q:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i", %bb.p
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i" ], [ 0, %bb.p ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @922) #43
          to label %.noexc.i.i unwind label %bb.r, !noalias !28448

.noexc.i.i:                                       ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.dh = landingpad { ptr, i32 }
          cleanup
  switch i64 %i.ag, label %bb.s [
    i64 0, label %"_ZN4core3ptr49drop_in_place$LT$bitflags..parser..ParseError$GT$17hfb35e33f49f16f81E.exit.i"
    i64 1, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  %i.di = icmp eq i64 %.sroa.5103.0.copyload.i, 0
  br i1 %i.di, label %"_ZN4core3ptr49drop_in_place$LT$bitflags..parser..ParseError$GT$17hfb35e33f49f16f81E.exit.i", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit.sink.split.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit.sink.split.i.i.i": ; preds = %bb.t, %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6104.0.copyload.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6104.0.copyload.i, i64 noundef %.sroa.5103.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !28449
  br label %"_ZN4core3ptr49drop_in_place$LT$bitflags..parser..ParseError$GT$17hfb35e33f49f16f81E.exit.i"

bb.t:                                             ; preds = %bb.r
  %i.dj = icmp eq i64 %.sroa.5103.0.copyload.i, 0
  br i1 %i.dj, label %"_ZN4core3ptr49drop_in_place$LT$bitflags..parser..ParseError$GT$17hfb35e33f49f16f81E.exit.i", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit.sink.split.i.i.i"

"_ZN4core3ptr49drop_in_place$LT$bitflags..parser..ParseError$GT$17hfb35e33f49f16f81E.exit.i": ; preds = %bb.t, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit.sink.split.i.i.i", %bb.s, %bb.r
  resume { ptr, i32 } %i.dh

bb.u:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.df, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i" ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %i.ae, i64 %i.af, i1 false), !noalias !28454
  switch i64 %i.ag, label %bb.v [
    i64 0, label %"_ZN8bitflags6parser8from_str28_$u7b$$u7b$closure$u7d$$u7d$17h896d3e1feff1d27aE.exit.i"
    i64 1, label %bb.w
  ]

bb.v:                                             ; preds = %bb.u
  %i.dk = icmp eq i64 %.sroa.5103.0.copyload.i, 0
  br i1 %i.dk, label %"_ZN8bitflags6parser8from_str28_$u7b$$u7b$closure$u7d$$u7d$17h896d3e1feff1d27aE.exit.i", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit.sink.split.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit.sink.split.i.i.i.i": ; preds = %bb.w, %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6104.0.copyload.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6104.0.copyload.i, i64 noundef %.sroa.5103.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !28455
  br label %"_ZN8bitflags6parser8from_str28_$u7b$$u7b$closure$u7d$$u7d$17h896d3e1feff1d27aE.exit.i"

bb.w:                                             ; preds = %bb.u
  %i.dl = icmp eq i64 %.sroa.5103.0.copyload.i, 0
  br i1 %i.dl, label %"_ZN8bitflags6parser8from_str28_$u7b$$u7b$closure$u7d$$u7d$17h896d3e1feff1d27aE.exit.i", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit.sink.split.i.i.i.i"

"_ZN8bitflags6parser8from_str28_$u7b$$u7b$closure$u7d$$u7d$17h896d3e1feff1d27aE.exit.i": ; preds = %bb.w, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit.sink.split.i.i.i.i", %bb.v, %bb.u
  %.sroa.9.sroa.8.0.extract.shift2 = and i64 %i.af, 9223372036854710272
  br label %.loopexit

bb.x:                                             ; preds = %bb.f
  %.sroa.716.0.copyload.i = load i16, ptr %.sroa.716.0..sroa_idx.i, align 8, !noalias !28429
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %bb.x
  %.sroa.03.0.i = phi i16 [ %.sroa.716.0.copyload.i, %bb.x ], [ %.val.i84.i, %bb.z ]
  %i.dm = or i16 %.sroa.03.0.i, %.sroa.0.0150.i   ; 2 uses
  br i1 %i.w, label %.loopexit19, label %bb.b

bb.z:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %.sroa.03.0.ptr9.lcssa.i.i = phi ptr [ @581, %bb.h ], [ getelementptr inbounds nuw (i8, ptr @581, i64 24), %bb.i ], [ getelementptr inbounds nuw (i8, ptr @581, i64 48), %bb.j ], [ getelementptr inbounds nuw (i8, ptr @581, i64 72), %bb.k ], [ getelementptr inbounds nuw (i8, ptr @581, i64 96), %bb.l ], [ getelementptr inbounds nuw (i8, ptr @581, i64 120), %bb.m ], [ getelementptr inbounds nuw (i8, ptr @581, i64 144), %bb.n ], [ getelementptr inbounds nuw (i8, ptr @581, i64 168), %bb.o ]
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.03.0.ptr9.lcssa.i.i, i64 16
  %.val.i84.i = load i16, ptr %i.dn, align 2, !noalias !28460, !noundef !11
  br label %bb.y

bb.aa:                                            ; preds = %bb.g
  %i.do = icmp slt i64 %i.z, 0
  br i1 %i.do, label %bb.ab, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i", !prof !24504

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i": ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i", %bb.aa
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !28463
  %i.dp = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) %i.z, i64 noundef range(i64 1, 9) 1) #42, !noalias !28463 ; 3 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %bb.ab, label %_ZN8bitflags6parser10ParseError18invalid_named_flag17h95822a15367d3be6E.exit.i

bb.ab:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i", %bb.aa
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i" ], [ 0, %bb.aa ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 range(i64 1, 0) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @922) #43, !noalias !28478
  unreachable

_ZN8bitflags6parser10ParseError18invalid_named_flag17h95822a15367d3be6E.exit.i: ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dp, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.y, i64 range(i64 1, 0) %i.z, i1 false), !noalias !28479
  %.sroa.9.sroa.8.0.extract.shift = and i64 %i.z, -65536
  br label %.loopexit

.loopexit:                                        ; preds = %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i", %"_ZN8bitflags6parser8from_str28_$u7b$$u7b$closure$u7d$$u7d$17h896d3e1feff1d27aE.exit.i", %_ZN8bitflags6parser10ParseError18invalid_named_flag17h95822a15367d3be6E.exit.i
  %.sroa.9.sroa.8.sroa.0.1.ph = phi i64 [ %.sroa.9.sroa.8.0.extract.shift2, %"_ZN8bitflags6parser8from_str28_$u7b$$u7b$closure$u7d$$u7d$17h896d3e1feff1d27aE.exit.i" ], [ %.sroa.9.sroa.8.0.extract.shift, %_ZN8bitflags6parser10ParseError18invalid_named_flag17h95822a15367d3be6E.exit.i ], [ %i.z, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i" ]
  %.sroa.9.sroa.0.1.ph = phi i64 [ %i.af, %"_ZN8bitflags6parser8from_str28_$u7b$$u7b$closure$u7d$$u7d$17h896d3e1feff1d27aE.exit.i" ], [ %i.z, %_ZN8bitflags6parser10ParseError18invalid_named_flag17h95822a15367d3be6E.exit.i ], [ %i.z, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i" ]
  %.sroa.16.1.ph = phi i64 [ %i.af, %"_ZN8bitflags6parser8from_str28_$u7b$$u7b$closure$u7d$$u7d$17h896d3e1feff1d27aE.exit.i" ], [ %i.z, %_ZN8bitflags6parser10ParseError18invalid_named_flag17h95822a15367d3be6E.exit.i ], [ undef, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i" ]
  %.sroa.14.1.ph = phi ptr [ %.sroa.10.0.i.i.i.i.i.i.i, %"_ZN8bitflags6parser8from_str28_$u7b$$u7b$closure$u7d$$u7d$17h896d3e1feff1d27aE.exit.i" ], [ %i.dp, %_ZN8bitflags6parser10ParseError18invalid_named_flag17h95822a15367d3be6E.exit.i ], [ undef, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i" ]
  %.sroa.0.1.ph = phi i64 [ 2, %"_ZN8bitflags6parser8from_str28_$u7b$$u7b$closure$u7d$$u7d$17h896d3e1feff1d27aE.exit.i" ], [ 1, %_ZN8bitflags6parser10ParseError18invalid_named_flag17h95822a15367d3be6E.exit.i ], [ %i.z, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.9.sroa.0.0.insert.ext = and i64 %.sroa.9.sroa.0.1.ph, 65535
  %.sroa.9.sroa.0.0.insert.insert = or disjoint i64 %.sroa.9.sroa.0.0.insert.ext, %.sroa.9.sroa.8.sroa.0.1.ph
  store i64 %.sroa.0.1.ph, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.9.sroa.0.0.insert.insert, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.14.1.ph, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.16.1.ph, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.ac

.loopexit19:                                      ; preds = %bb.y, %bb.a
  %.sroa.9.sroa.0.1 = phi i16 [ 0, %bb.a ], [ %i.dm, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sroa.9.sroa.0.1, ptr %i.dr, align 8
  store i64 3, ptr %0, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit19, %.loopexit
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN88_$LT$procfs..sys..fs..binfmt_misc.._..InternalBitFlags$u20$as$u20$core..fmt..Display$GT$3fmt17h57d2befff73403f1E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
.peel.begin:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 5 uses
  %i.e = load i8, ptr %0, align 1, !noundef !11   ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28480)
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %.thread.i, label %.lr.ph.split.i.i.peel

.lr.ph.split.i.i.peel:                            ; preds = %.peel.begin
  %or.cond.i.i.peel = trunc i8 %i.e to i1
  br i1 %or.cond.i.i.peel, label %bb.a, label %.lr.ph.split.i.i.1.peel

.lr.ph.split.i.i.1.peel:                          ; preds = %.lr.ph.split.i.i.peel
  %i.g = and i8 %i.e, 2
  %or.cond.i.i.1.peel.not = icmp eq i8 %i.g, 0
  br i1 %or.cond.i.i.1.peel.not, label %.lr.ph.split.i.i.2.peel, label %bb.a

.lr.ph.split.i.i.2.peel:                          ; preds = %.lr.ph.split.i.i.1.peel
  %i.h = and i8 %i.e, 4
  %or.cond.i.i.2.peel.not = icmp eq i8 %i.h, 0
  br i1 %or.cond.i.i.2.peel.not, label %.lr.ph.split.i.i.3.peel, label %bb.a

.lr.ph.split.i.i.3.peel:                          ; preds = %.lr.ph.split.i.i.2.peel
  %i.i = and i8 %i.e, 8
  %or.cond.i.i.3.peel.not = icmp eq i8 %i.i, 0
  br i1 %or.cond.i.i.3.peel.not, label %.loopexit.i, label %bb.a

bb.a:                                             ; preds = %.lr.ph.split.i.i.3.peel, %.lr.ph.split.i.i.2.peel, %.lr.ph.split.i.i.1.peel, %.lr.ph.split.i.i.peel
  %.lcssa56.peel = phi ptr [ @927, %.lr.ph.split.i.i.peel ], [ getelementptr inbounds nuw (i8, ptr @927, i64 24), %.lr.ph.split.i.i.1.peel ], [ getelementptr inbounds nuw (i8, ptr @927, i64 48), %.lr.ph.split.i.i.2.peel ], [ getelementptr inbounds nuw (i8, ptr @927, i64 72), %.lr.ph.split.i.i.3.peel ]
  %.lcssa.peel = phi i64 [ 1, %.lr.ph.split.i.i.peel ], [ 2, %.lr.ph.split.i.i.1.peel ], [ 3, %.lr.ph.split.i.i.2.peel ], [ 4, %.lr.ph.split.i.i.3.peel ]
  %i.j = phi i8 [ -2, %.lr.ph.split.i.i.peel ], [ -3, %.lr.ph.split.i.i.1.peel ], [ -5, %.lr.ph.split.i.i.2.peel ], [ -9, %.lr.ph.split.i.i.3.peel ]
  %i.k = and i8 %i.e, %i.j
  %i.l = load ptr, ptr %.lcssa56.peel, align 8, !noalias !28483, !nonnull !11, !align !12, !noundef !11
  %i.m = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.l, i64 noundef 1)
  br i1 %i.m, label %_ZN8bitflags6parser9to_writer17h590e89c9094588a6E.exit, label %.peel.newph

.peel.newph:                                      ; preds = %bb.a, %bb.h
  %.sroa.13.0.i = phi i8 [ %i.as, %bb.h ], [ %i.k, %bb.a ] ; 11 uses
  %.sroa.7.0.i = phi i64 [ %.lcssa, %bb.h ], [ %.lcssa.peel, %bb.a ] ; 6 uses
  %i.n = icmp ult i64 %.sroa.7.0.i, 4
  br i1 %i.n, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %.peel.newph
  %i.o = icmp eq i8 %.sroa.13.0.i, 0
  br i1 %i.o, label %.thread.i, label %.lr.ph.split.i.i

.thread.i:                                        ; preds = %.lr.ph.i.i, %.peel.begin
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !28480
  br label %.loopexit13.sink.split.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %i.p = getelementptr inbounds nuw [24 x i8], ptr @927, i64 %.sroa.7.0.i ; 2 uses
  %i.q = add nuw nsw i64 %.sroa.7.0.i, 1          ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.val.i.i = load i8, ptr %i.r, align 8, !noalias !28483, !noundef !11 ; 4 uses
  %i.s = and i8 %.val.i.i, %i.e
  %i.t = icmp eq i8 %i.s, %.val.i.i
  %i.u = and i8 %.val.i.i, %.sroa.13.0.i
  %i.v = icmp ne i8 %i.u, 0
  %or.cond.i.i = and i1 %i.v, %i.t
  br i1 %or.cond.i.i, label %bb.b, label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %i.q, 4
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %.lr.ph.split.i.i.1

.lr.ph.split.i.i.1:                               ; preds = %.backedge.i.i
  %i.w = getelementptr inbounds nuw [24 x i8], ptr @927, i64 %i.q ; 2 uses
  %i.x = add nuw nsw i64 %.sroa.7.0.i, 2          ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.val.i.i.1 = load i8, ptr %i.y, align 8, !noalias !28483, !noundef !11 ; 4 uses
  %i.z = and i8 %.val.i.i.1, %i.e
  %i.aa = icmp eq i8 %i.z, %.val.i.i.1
  %i.ab = and i8 %.val.i.i.1, %.sroa.13.0.i
  %i.ac = icmp ne i8 %i.ab, 0
  %or.cond.i.i.1 = and i1 %i.ac, %i.aa
  br i1 %or.cond.i.i.1, label %bb.b, label %.backedge.i.i.1

.backedge.i.i.1:                                  ; preds = %.lr.ph.split.i.i.1
  %exitcond.not.i.i.1 = icmp eq i64 %i.x, 4
  br i1 %exitcond.not.i.i.1, label %.loopexit.i, label %.lr.ph.split.i.i.2

.lr.ph.split.i.i.2:                               ; preds = %.backedge.i.i.1
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr @927, i64 %i.x ; 2 uses
  %i.ae = add nuw nsw i64 %.sroa.7.0.i, 3         ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.val.i.i.2 = load i8, ptr %i.af, align 8, !noalias !28483, !noundef !11 ; 4 uses
  %i.ag = and i8 %.val.i.i.2, %i.e
  %i.ah = icmp eq i8 %i.ag, %.val.i.i.2
  %i.ai = and i8 %.val.i.i.2, %.sroa.13.0.i
  %i.aj = icmp ne i8 %i.ai, 0
  %or.cond.i.i.2 = and i1 %i.aj, %i.ah
  br i1 %or.cond.i.i.2, label %bb.b, label %.backedge.i.i.2

.backedge.i.i.2:                                  ; preds = %.lr.ph.split.i.i.2
  %exitcond.not.i.i.2 = icmp eq i64 %i.ae, 4
  br i1 %exitcond.not.i.i.2, label %.loopexit.i, label %.lr.ph.split.i.i.3

.lr.ph.split.i.i.3:                               ; preds = %.backedge.i.i.2
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr @927, i64 %i.ae ; 2 uses
  %i.al = or disjoint i64 %.sroa.7.0.i, 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.val.i.i.3 = load i8, ptr %i.am, align 8, !noalias !28483, !noundef !11 ; 4 uses
  %i.an = and i8 %.val.i.i.3, %i.e
  %i.ao = icmp eq i8 %i.an, %.val.i.i.3
  %i.ap = and i8 %.val.i.i.3, %.sroa.13.0.i
  %i.aq = icmp ne i8 %i.ap, 0
  %or.cond.i.i.3 = and i1 %i.aq, %i.ao
  br i1 %or.cond.i.i.3, label %bb.b, label %.loopexit.i

bb.b:                                             ; preds = %.lr.ph.split.i.i.3, %.lr.ph.split.i.i.2, %.lr.ph.split.i.i.1, %.lr.ph.split.i.i
  %.lcssa56 = phi ptr [ %i.p, %.lr.ph.split.i.i ], [ %i.w, %.lr.ph.split.i.i.1 ], [ %i.ad, %.lr.ph.split.i.i.2 ], [ %i.ak, %.lr.ph.split.i.i.3 ]
  %.lcssa = phi i64 [ %i.q, %.lr.ph.split.i.i ], [ %i.x, %.lr.ph.split.i.i.1 ], [ %i.ae, %.lr.ph.split.i.i.2 ], [ %i.al, %.lr.ph.split.i.i.3 ]
  %.val.i.i.lcssa = phi i8 [ %.val.i.i, %.lr.ph.split.i.i ], [ %.val.i.i.1, %.lr.ph.split.i.i.1 ], [ %.val.i.i.2, %.lr.ph.split.i.i.2 ], [ %.val.i.i.3, %.lr.ph.split.i.i.3 ]
  %i.ar = xor i8 %.val.i.i.lcssa, -1
  %i.as = and i8 %.sroa.13.0.i, %i.ar
  %i.at = load ptr, ptr %.lcssa56, align 8, !noalias !28483, !nonnull !11, !align !12, !noundef !11
  %i.au = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @929, i64 noundef 3)
  br i1 %i.au, label %_ZN8bitflags6parser9to_writer17h590e89c9094588a6E.exit, label %bb.h

.loopexit.i:                                      ; preds = %.peel.newph, %.lr.ph.split.i.i.3, %.lr.ph.split.i.i.3.peel, %.backedge.i.i, %.backedge.i.i.1, %.backedge.i.i.2
  %.sroa.13.0.i65 = phi i8 [ %.sroa.13.0.i, %.backedge.i.i.2 ], [ %.sroa.13.0.i, %.lr.ph.split.i.i.3 ], [ %i.e, %.lr.ph.split.i.i.3.peel ], [ %.sroa.13.0.i, %.backedge.i.i ], [ %.sroa.13.0.i, %.backedge.i.i.1 ], [ %.sroa.13.0.i, %.peel.newph ] ; 2 uses
  %.sroa.01.0.i61 = phi i1 [ false, %.backedge.i.i.2 ], [ false, %.lr.ph.split.i.i.3 ], [ true, %.lr.ph.split.i.i.3.peel ], [ false, %.backedge.i.i ], [ false, %.backedge.i.i.1 ], [ false, %.peel.newph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !28480
  store i8 %.sroa.13.0.i65, ptr %i.d, align 1, !noalias !28480
  %.not.i = icmp eq i8 %.sroa.13.0.i65, 0
  br i1 %.not.i, label %.loopexit13.sink.split.i, label %bb.c

bb.c:                                             ; preds = %.loopexit.i
  br i1 %.sroa.01.0.i61, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.av = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @929, i64 noundef 3)
  br i1 %i.av, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aw = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @928, i64 noundef 2)
  br i1 %i.aw, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.e, %bb.d
  br label %.loopexit13.sink.split.i

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28487)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !28480
  store ptr %i.d, ptr %i.c, align 8, !noalias !28490
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !28490
  store ptr %i.c, ptr %i.b, align 8, !noalias !28490
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN45_$LT$$RF$T$u20$as$u20$core..fmt..LowerHex$GT$3fmt17h8b4338ae57529e35E", ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !28490
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i.i = load ptr, ptr %i.ax, align 8, !alias.scope !28492, !noalias !28493
  %.val.i.i.i = load ptr, ptr %1, align 8, !alias.scope !28492, !noalias !28493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !28496
  store ptr @70, ptr %i.a, align 8, !noalias !28490
  %.sroa.5.0..sroa_idx.i13.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx.i13.i, align 8, !noalias !28490
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !28490
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !28490
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !28490
  %i.ay = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !28499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !28496
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !28490
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !28480
  br i1 %i.ay, label %bb.f, label %.loopexit13.sink.split.i

.loopexit13.sink.split.i:                         ; preds = %bb.g, %bb.f, %.loopexit.i, %.thread.i
  %.sroa.0.1.ph.i = phi i1 [ true, %bb.f ], [ false, %.loopexit.i ], [ false, %.thread.i ], [ false, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !28480
  br label %_ZN8bitflags6parser9to_writer17h590e89c9094588a6E.exit

bb.h:                                             ; preds = %bb.b
  %i.az = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.at, i64 noundef 1)
  br i1 %i.az, label %_ZN8bitflags6parser9to_writer17h590e89c9094588a6E.exit, label %.peel.newph, !llvm.loop !28500

_ZN8bitflags6parser9to_writer17h590e89c9094588a6E.exit: ; preds = %bb.a, %bb.b, %bb.h, %.loopexit13.sink.split.i
  %.sroa.0.1.i = phi i1 [ %.sroa.0.1.ph.i, %.loopexit13.sink.split.i ], [ true, %bb.h ], [ true, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN89_$LT$procfs..process..ProcessesIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce8a9a3006e74b07E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [40 x i8], align 8                ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_ZN6rustix7backend2fs3dir3Dir4read17hfeacc9ed2f9c01baE(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f)
  %i.g = load i64, ptr %i.e, align 8, !range !2380, !noundef !11
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %"_ZN4core3ptr55drop_in_place$LT$rustix..backend..fs..dir..DirEntry$GT$17h76b45181ea98fc6bE.exit28"
  %i.l = load ptr, ptr %i.i, align 8, !noundef !11 ; 8 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.c, label %bb.d

._crit_edge:                                      ; preds = %"_ZN4core3ptr55drop_in_place$LT$rustix..backend..fs..dir..DirEntry$GT$17h76b45181ea98fc6bE.exit28", %bb.a
end_hunk_7
begin_hunk_8_@"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6remove17he080b811d3490d63E":bb.a
  %i.w = icmp eq i16 %i.v, 0
  br i1 %i.w, label %bb.c, label %.thread, !prof !323

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17ha0b50ab69172aa59E.exit.thread.i.i.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17ha0b50ab69172aa59E.exit.i.i.i", %.lr.ph.i.i.i
  %i.x = add i16 %.sroa.06.0.i34.i.i.i, -1
  %i.y = and i16 %i.x, %.sroa.06.0.i34.i.i.i      ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.y, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.z = add i64 %.sroa.9.0.i.i.i.i, 16           ; 2 uses
  %i.aa = add i64 %.sroa.01.0.i.i.i.i, %i.z
  br label %bb.b

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h71677b580ff57240E.exit.i.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17ha0b50ab69172aa59E.exit.i.i.i"
  %i.ab = getelementptr i8, ptr %i.q, i64 -64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28855)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28858)
  %.idx.neg.i.i = mul i64 %i.o, 72
  %i.ac = sdiv exact i64 %.idx.neg.i.i, 72        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28861)
  %i.ad = add nsw i64 %i.ac, -16
  %i.ae = and i64 %i.ad, %i.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ae ; 2 uses
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.af, align 1, !noalias !28864
  %i.ag = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, splat (i8 -1)
  %i.ah = bitcast <16 x i1> %i.ag to i16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ac ; 2 uses
  %.sroa.0.0.copyload.i825.i.i.i.i.i = load <16 x i8>, ptr %i.ai, align 1, !noalias !28868
  %i.aj = icmp eq <16 x i8> %.sroa.0.0.copyload.i825.i.i.i.i.i, splat (i8 -1)
  %i.ak = bitcast <16 x i1> %i.aj to i16
  %i.al = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.ah, i1 false)
  %i.am = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ak, i1 false)
  %narrow.i.i.i.i.i = add nuw nsw i16 %i.am, %i.al
  %i.an = icmp samesign ugt i16 %narrow.i.i.i.i.i, 15
  br i1 %i.an, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$12remove_entry17h63a611f573fd56f7E.exit", label %bb.d

bb.d:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h71677b580ff57240E.exit.i.i"
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !28871, !noalias !28872, !noundef !11
  %i.aq = add i64 %i.ap, 1
  store i64 %i.aq, ptr %i.ao, align 8, !alias.scope !28871, !noalias !28872
  br label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$12remove_entry17h63a611f573fd56f7E.exit"

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$12remove_entry17h63a611f573fd56f7E.exit": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h71677b580ff57240E.exit.i.i", %bb.d
  %.sroa.0.0.i.i.i.i.i = phi i8 [ -1, %bb.d ], [ -128, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h71677b580ff57240E.exit.i.i" ] ; 2 uses
  store i8 %.sroa.0.0.i.i.i.i.i, ptr %i.ai, align 1, !noalias !28873
  %i.ar = getelementptr i8, ptr %i.af, i64 16
  store i8 %.sroa.0.0.i.i.i.i.i, ptr %i.ar, align 1, !noalias !28873
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !28871, !noalias !28872, !noundef !11
  %i.au = add i64 %i.at, -1
  store i64 %i.au, ptr %i.as, align 8, !alias.scope !28871, !noalias !28872
  %i.av = getelementptr inbounds i8, ptr %i.q, i64 -72
  %.sroa.0.0.copyload = load i64, ptr %i.av, align 8, !noalias !28874 ; 3 uses
  %.sroa.7.0.copyload = load ptr, ptr %i.ab, align 8, !noalias !28874 ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload, -9223372036854775808
  br i1 %.not, label %.thread, label %bb.e

.thread:                                          ; preds = %._crit_edge.i.i.i, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$12remove_entry17h63a611f573fd56f7E.exit"
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit"

bb.e:                                             ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$12remove_entry17h63a611f573fd56f7E.exit"
  %i.aw = getelementptr i8, ptr %i.q, i64 -48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.aw, i64 48, i1 false)
  %i.ax = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.ax, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !28875
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit": ; preds = %bb.f, %bb.e, %.thread
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef align 8 dereferenceable_or_null(48) ptr @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17hb4fcebdbb49aa161E"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1) unnamed_addr #23 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !11
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load i64, ptr %i.d, align 8, !noundef !11
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val5 = load i64, ptr %i.e, align 8, !noundef !11
  %i.f = tail call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h3b6bbb1ebafcde82E(i64 %.val, i64 %.val5, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef 3) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28878)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28881)
  %i.g = lshr i64 %i.f, 57
  %i.h = trunc nuw nsw i64 %i.g to i8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !28884, !noalias !28885, !noundef !11 ; 2 uses
  %i.k = load ptr, ptr %0, align 8, !alias.scope !28884, !noalias !28885, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.0.0.vec.insert.i.i = insertelement <16 x i8> poison, i8 %i.h, i64 0
  %.sroa.0.15.vec.insert.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.9.0.i.i = phi i64 [ 0, %bb.b ], [ %i.ap, %bb.d ]
  %.pn.i = phi i64 [ %i.f, %bb.b ], [ %i.aq, %bb.d ]
  %.sroa.01.0.i.i = and i64 %.pn.i, %i.j          ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i27.i = load <16 x i8>, ptr %i.l, align 1, !noalias !28888 ; 2 uses
  %i.m = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i, %.sroa.0.15.vec.insert.i.i
  %i.n = bitcast <16 x i1> %i.m to i16            ; 2 uses
  %.not.i.not33.i = icmp eq i16 %i.n, 0
  br i1 %.not.i.not33.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17had0e3810efc121a9E.exit.thread.i"
  %.sroa.06.0.i34.i = phi i16 [ %i.ao, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17had0e3810efc121a9E.exit.thread.i" ], [ %i.n, %bb.c ] ; 3 uses
  %i.o = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i, i1 true)
  %i.p = zext nneg i16 %i.o to i64
  %i.q = add i64 %.sroa.01.0.i.i, %i.p
  %i.r = and i64 %i.q, %i.j
  %i.s = sub nsw i64 0, %i.r
  %i.t = getelementptr inbounds [48 x i8], ptr %i.k, i64 %i.s ; 3 uses
  %i.u = getelementptr i8, ptr %i.t, i64 -32
  %.val5.i.i = load i64, ptr %i.u, align 8, !noalias !28891, !noundef !11
  %.not.i.i.i.i.i = icmp eq i64 %.val5.i.i, 3
  br i1 %.not.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17had0e3810efc121a9E.exit.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17had0e3810efc121a9E.exit.thread.i", !prof !5894

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17had0e3810efc121a9E.exit.i": ; preds = %.lr.ph.i
  %i.v = getelementptr i8, ptr %i.t, i64 -40
  %.val4.i.i = load ptr, ptr %i.v, align 8, !noalias !28891, !nonnull !11, !noundef !11 ; 2 uses
  %i.w = load i16, ptr %1, align 1
  %i.x = load i16, ptr %.val4.i.i, align 1
  %i.y = xor i16 %i.w, %i.x
  %i.z = getelementptr i8, ptr %1, i64 2
  %i.aa = getelementptr i8, ptr %.val4.i.i, i64 2
  %i.ab = load i8, ptr %i.z, align 1
  %i.ac = load i8, ptr %i.aa, align 1
  %i.ad = zext i8 %i.ab to i16
  %i.ae = zext i8 %i.ac to i16
  %i.af = xor i16 %i.ad, %i.ae
  %i.ag = or i16 %i.y, %i.af
  %i.ah = icmp ne i16 %i.ag, 0
  %i.ai = zext i1 %i.ah to i32
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17hbcc9bf98bb228400E.exit", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17had0e3810efc121a9E.exit.thread.i", !prof !5899

._crit_edge.i:                                    ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17had0e3810efc121a9E.exit.thread.i", %bb.c
  %i.ak = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i, splat (i8 -1)
  %i.al = bitcast <16 x i1> %i.ak to i16
  %i.am = icmp eq i16 %i.al, 0
  br i1 %i.am, label %bb.d, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17hbcc9bf98bb228400E.exit", !prof !323

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17had0e3810efc121a9E.exit.thread.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17had0e3810efc121a9E.exit.i", %.lr.ph.i
  %i.an = add i16 %.sroa.06.0.i34.i, -1
  %i.ao = and i16 %i.an, %.sroa.06.0.i34.i        ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.ao, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.d:                                             ; preds = %._crit_edge.i
  %i.ap = add i64 %.sroa.9.0.i.i, 16              ; 2 uses
  %i.aq = add i64 %.sroa.01.0.i.i, %i.ap
  br label %bb.c

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17hbcc9bf98bb228400E.exit": ; preds = %._crit_edge.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17had0e3810efc121a9E.exit.i"
  %i.ar = phi ptr [ %i.t, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17had0e3810efc121a9E.exit.i" ], [ null, %._crit_edge.i ] ; 2 uses
  %.not = icmp eq ptr %i.ar, null
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -48
  %.sroa.0.1 = select i1 %.not, ptr null, ptr %i.as
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17hbcc9bf98bb228400E.exit"
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17hbcc9bf98bb228400E.exit" ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 %1, ptr nofree readonly captures(none) %.40.val, i64 noundef range(i64 16, 177) %2, ptr noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.val13 = load ptr, ptr %0, align 8             ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.val14 = load i64, ptr %i.b, align 8, !noundef !11
  %i.c = add i64 %.val14, 1                       ; 7 uses
  %.not6.i = icmp eq i64 %i.c, 0
  br i1 %.not6.i, label %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17he54fe5d713f70050E.exit.thread20, label %.lr.ph.i

_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17he54fe5d713f70050E.exit.thread20: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.val13, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull align 1 %.val13, i64 %i.c, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = lshr i64 %i.c, 4
  %i.f = and i64 %i.c, 15
  %.not9.i.i.i = icmp ne i64 %i.f, 0
  %i.g = zext i1 %.not9.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.e, %i.g  ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13) ]
  %i.h = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.b

._crit_edge.i.unr-lcssa:                          ; preds = %bb.b
  %lcmp.mod.not = trunc i64 %.sroa.05.0.i.i.i to i1
  br i1 %lcmp.mod.not, label %.epil.preheader, label %._crit_edge.i

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.sroa.0.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.r, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod40 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod40)
  %i.i = getelementptr inbounds nuw i8, ptr %.val13, i64 %.sroa.0.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.i, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.j = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.k = or <2 x i64> %i.j, splat (i64 -9187201950435737472)
  store <2 x i64> %i.k, ptr %i.i, align 16
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %. = tail call i64 @llvm.umax.i64(i64 %i.c, i64 16)
  %.29 = tail call i64 @llvm.umin.i64(i64 %i.c, i64 16)
  %i.n = getelementptr inbounds nuw i8, ptr %.val13, i64 %.
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %.val13, i64 %.29, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %3, ptr %i.l, align 8
  store i64 %2, ptr %i.m, align 8
  store ptr %0, ptr %i.a, align 8
  br label %.lr.ph

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.sroa.0.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.r, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %.val13, i64 %.sroa.0.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.o, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.p = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.q = or <2 x i64> %i.p, splat (i64 -9187201950435737472)
  store <2 x i64> %i.q, ptr %i.o, align 16
  %i.r = add i64 %.sroa.0.08.i, 32                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val13, i64 %.sroa.0.08.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.t, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.u = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.v = or <2 x i64> %i.u, splat (i64 -9187201950435737472)
  store <2 x i64> %i.v, ptr %i.t, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.b

.lr.ph:                                           ; preds = %._crit_edge.i, %bb.l
  %.sroa.0.17 = phi i64 [ %.sroa.0.1, %bb.l ], [ 1, %._crit_edge.i ] ; 3 uses
  %.sroa.0.06 = phi i64 [ %.sroa.0.17, %bb.l ], [ 0, %._crit_edge.i ] ; 8 uses
  %i.w = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.0.06
  %i.y = load i8, ptr %i.x, align 1, !noundef !11
  %.not = icmp eq i8 %i.y, -128
  br i1 %.not, label %bb.c, label %bb.l

._crit_edge.loopexit:                             ; preds = %bb.l
  %.pre = load i64, ptr %i.b, align 8             ; 2 uses
  %.pre13 = add i64 %.pre, 1
  %i.z = lshr i64 %.pre13, 3
  %i.aa = mul nuw i64 %i.z, 7
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17he54fe5d713f70050E.exit.thread20, %._crit_edge.loopexit
  %.pre-phi = phi i64 [ %i.aa, %._crit_edge.loopexit ], [ 0, %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17he54fe5d713f70050E.exit.thread20 ]
  %i.ab = phi i64 [ %.pre, %._crit_edge.loopexit ], [ -1, %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17he54fe5d713f70050E.exit.thread20 ] ; 2 uses
  %i.ac = icmp ult i64 %i.ab, 8
  %.sroa.06.0 = select i1 %i.ac, i64 %i.ab, i64 %.pre-phi
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !11
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = sub i64 %.sroa.06.0, %i.ae
  store i64 %i.ag, ptr %i.af, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %.lr.ph
  %.neg = xor i64 %.sroa.0.06, -1
  %.neg9 = mul i64 %2, %.neg
  %i.ah = getelementptr inbounds i8, ptr %i.w, i64 %.neg9 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %bb.c
  %i.ai = invoke noundef i64 %.40.val(ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.06)
          to label %bb.f unwind label %bb.e       ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr181drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h5380fa808570419fE"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #44
          to label %bb.n unwind label %bb.m

bb.f:                                             ; preds = %bb.d
  %.val = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 7 uses
  %.val12 = load i64, ptr %i.b, align 8, !noundef !11 ; 6 uses
  %.sroa.0.04.i = and i64 %.val12, %i.ai          ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.04.i
  %.sroa.0.0.copyload.i35.i = load <16 x i8>, ptr %i.ak, align 1, !noalias !28894
  %i.al = icmp slt <16 x i8> %.sroa.0.0.copyload.i35.i, zeroinitializer
  %i.am = bitcast <16 x i1> %i.al to i16          ; 2 uses
  %.not.not.i.not6.i = icmp eq i16 %i.am, 0
  br i1 %.not.not.i.not6.i, label %.lr.ph.i16, label %._crit_edge.i15, !prof !17394

.lr.ph.i16:                                       ; preds = %bb.f, %.lr.ph.i16
  %.sroa.0.07.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i16 ], [ %.sroa.0.04.i, %bb.f ]
  %i.an = phi i64 [ %i.ao, %.lr.ph.i16 ], [ 0, %bb.f ]
  %i.ao = add i64 %i.an, 16                       ; 2 uses
  %i.ap = add i64 %i.ao, %.sroa.0.07.i
  %.sroa.0.0.i = and i64 %i.ap, %.val12           ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i3.i = load <16 x i8>, ptr %i.aq, align 1, !noalias !28894
  %i.ar = icmp slt <16 x i8> %.sroa.0.0.copyload.i3.i, zeroinitializer
  %i.as = bitcast <16 x i1> %i.ar to i16          ; 2 uses
  %.not.not.i.not.i = icmp eq i16 %i.as, 0
  br i1 %.not.not.i.not.i, label %.lr.ph.i16, label %._crit_edge.i15, !prof !17395

._crit_edge.i15:                                  ; preds = %.lr.ph.i16, %bb.f
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.04.i, %bb.f ], [ %.sroa.0.0.i, %.lr.ph.i16 ]
  %.lcssa.i = phi i16 [ %i.am, %bb.f ], [ %i.as, %.lr.ph.i16 ]
  %i.at = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.au = zext nneg i16 %i.at to i64
  %i.av = add i64 %.sroa.0.0.lcssa.i, %i.au
  %i.aw = and i64 %i.av, %.val12                  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.val, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !noundef !11
  %i.az = icmp sgt i8 %i.ay, -1
  br i1 %i.az, label %bb.g, label %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit, !prof !323

bb.g:                                             ; preds = %._crit_edge.i15
  %.val2.i.i = load <16 x i8>, ptr %.val, align 16
  %i.ba = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.bb = bitcast <16 x i1> %i.ba to i16          ; 2 uses
  %i.bc = icmp ne i16 %i.bb, 0
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bb, i1 true)
  %i.be = zext nneg i16 %i.bd to i64
  br label %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit

_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit: ; preds = %bb.g, %._crit_edge.i15
  %.sroa.0.0.i5.i = phi i64 [ %i.be, %bb.g ], [ %i.aw, %._crit_edge.i15 ] ; 4 uses
  %i.bf = sub i64 %.sroa.0.06, %.sroa.0.04.i
  %i.bg = sub i64 %.sroa.0.0.i5.i, %.sroa.0.04.i
  %i.bh = xor i64 %i.bg, %i.bf
  %.unshifted = and i64 %i.bh, %.val12
  %i.bi = icmp ult i64 %.unshifted, 16
  br i1 %i.bi, label %bb.i, label %bb.h, !prof !538

bb.h:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit
  %.neg10 = xor i64 %.sroa.0.0.i5.i, -1
  %.neg11 = mul i64 %2, %.neg10
  %i.bj = getelementptr inbounds i8, ptr %.val, i64 %.neg11 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !noundef !11
  %i.bm = lshr i64 %i.ai, 57
  %i.bn = trunc nuw nsw i64 %i.bm to i8           ; 2 uses
  %i.bo = add i64 %.sroa.0.0.i5.i, -16
  %i.bp = and i64 %i.bo, %.val12
  store i8 %i.bn, ptr %i.bk, align 1
  %i.bq = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.bp
  %i.bs = getelementptr i8, ptr %i.br, i64 16
  store i8 %i.bn, ptr %i.bs, align 1
  %i.bt = icmp eq i8 %i.bl, -1
  br i1 %i.bt, label %bb.j, label %bb.k

bb.i:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit
  %i.bu = lshr i64 %i.ai, 57
  %i.bv = trunc nuw nsw i64 %i.bu to i8           ; 2 uses
  %i.bw = add i64 %.sroa.0.06, -16
  %i.bx = and i64 %.val12, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.06
  store i8 %i.bv, ptr %i.by, align 1
  %i.bz = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11
  %i.ca = getelementptr i8, ptr %i.bz, i64 %i.bx
  %i.cb = getelementptr i8, ptr %i.ca, i64 16
  store i8 %i.bv, ptr %i.cb, align 1
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.cc = add i64 %.sroa.0.06, -16
  %i.cd = load i64, ptr %i.b, align 8, !noundef !11
  %i.ce = and i64 %i.cd, %i.cc
  %i.cf = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.sroa.0.06
  store i8 -1, ptr %i.cg, align 1
  %i.ch = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11
  %i.ci = getelementptr i8, ptr %i.ch, i64 %i.ce
  %i.cj = getelementptr i8, ptr %i.ci, i64 16
  store i8 -1, ptr %i.cj, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bj, ptr noundef nonnull align 1 dereferenceable(1) %i.ah, i64 %2, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  tail call fastcc void @_ZN4core3ptr19swap_nonoverlapping17h3caeff55f02f2a35E(ptr noundef %i.ah, ptr noundef %i.bj, i64 noundef %2)
  br label %bb.d

bb.l:                                             ; preds = %.lr.ph, %bb.j, %bb.i
  %i.ck = icmp ult i64 %.sroa.0.17, %i.c          ; 2 uses
  %i.cl = zext i1 %i.ck to i64
  %.sroa.0.1 = add nuw i64 %.sroa.0.17, %i.cl
end_hunk_8
