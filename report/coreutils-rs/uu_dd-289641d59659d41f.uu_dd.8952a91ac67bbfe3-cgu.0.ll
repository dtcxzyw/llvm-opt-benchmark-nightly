Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_dd-289641d59659d41f.uu_dd.8952a91ac67bbfe3-cgu.0?download=true
inline.NumInlined: 1600
inline.NumDeleted: 713
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_RNvCsbMXVmEvvZJf_5uu_dd7dd_copy:bb.a
  %.sroa.21.0 = phi i32 [ 0, %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsbMXVmEvvZJf_5uu_dd.exit ], [ %i.agg, %.backedge.backedge ] ; 2 uses
  %.sroa.16.0 = phi i64 [ 0, %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsbMXVmEvvZJf_5uu_dd.exit ], [ %i.agh, %.backedge.backedge ] ; 4 uses
  %.sroa.11.0 = phi i64 [ 0, %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsbMXVmEvvZJf_5uu_dd.exit ], [ %i.agf, %.backedge.backedge ] ; 4 uses
  %.sroa.0.0214 = phi i64 [ 0, %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsbMXVmEvvZJf_5uu_dd.exit ], [ %i.age, %.backedge.backedge ] ; 4 uses
  %.sroa.06.0 = phi i128 [ 0, %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsbMXVmEvvZJf_5uu_dd.exit ], [ %i.agd, %.backedge.backedge ] ; 5 uses
  %.sroa.03.0 = phi i64 [ 0, %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsbMXVmEvvZJf_5uu_dd.exit ], [ %i.agc, %.backedge.backedge ] ; 3 uses
  %i.jl = load ptr, ptr %i.az, align 8, !nonnull !8, !align !13, !noundef !8 ; 4 uses
  %i.jm = load i64, ptr %i.jl, align 8, !range !15, !noundef !8 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jo = load i64, ptr %i.jn, align 8            ; 3 uses
  switch i64 %i.jm, label %bb.em [
    i64 2, label %_RNvCsbMXVmEvvZJf_5uu_dd15calc_loop_bsize.exit
    i64 0, label %bb.el
  ]

bb.bg:                                            ; preds = %bb.em
  switch i64 %i.jm, label %bb.bh [
    i64 2, label %_RNvCsbMXVmEvvZJf_5uu_dd15calc_loop_bsize.exit
    i64 0, label %bb.bi
  ]

bb.bh:                                            ; preds = %bb.bg
  %i.jp = call i64 @llvm.usub.sat.i64(i64 %i.jo, i64 %.sroa.16.0)
  %..i.i = call noundef i64 @llvm.umin.i64(i64 %i.jp, i64 %.sroa.0.0.i)
  br label %_RNvCsbMXVmEvvZJf_5uu_dd15calc_loop_bsize.exit

bb.bi:                                            ; preds = %bb.bg
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jl, i64 112
  %i.jr = load i64, ptr %i.jq, align 8, !noundef !8
  %i.js = add i64 %.sroa.0.0214, %.sroa.11.0
  %i.jt = sub i64 %i.jo, %i.js
  %i.ju = mul i64 %i.jr, %i.jt
  %..i6.i = call noundef i64 @llvm.umin.i64(i64 %i.ju, i64 %.sroa.0.0.i)
  br label %_RNvCsbMXVmEvvZJf_5uu_dd15calc_loop_bsize.exit

_RNvCsbMXVmEvvZJf_5uu_dd15calc_loop_bsize.exit:   ; preds = %.backedge, %bb.bg, %bb.bh, %bb.bi
  %.sroa.05.0.i = phi i64 [ %..i.i, %bb.bh ], [ %..i6.i, %bb.bi ], [ %.sroa.0.0.i, %bb.bg ], [ %.sroa.0.0.i, %.backedge ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2276)
  call void @llvm.experimental.noalias.scope.decl(metadata !2277)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !2278)
  %i.jv = icmp sgt i64 %i.jk, -1
  call void @llvm.assume(i1 %i.jv)
  %i.jw = icmp ugt i64 %.sroa.05.0.i, %i.jk
  br i1 %i.jw, label %bb.bj, label %_RNvMs1_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE6resizeCsbMXVmEvvZJf_5uu_dd.exit.i

bb.bj:                                            ; preds = %_RNvCsbMXVmEvvZJf_5uu_dd15calc_loop_bsize.exit
  %i.jx = sub nuw i64 %.sroa.05.0.i, %i.jk        ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2279)
  %i.jy = load i64, ptr %i.ai, align 8, !range !18, !alias.scope !2280, !noalias !2281, !noundef !8
  %i.jz = sub nsw i64 %i.jy, %i.jk
  %i.ka = icmp ugt i64 %i.jx, %i.jz
  br i1 %i.ka, label %bb.bk, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbMXVmEvvZJf_5uu_dd.exit.i.i.i, !prof !10

bb.bk:                                            ; preds = %bb.bj
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai, i64 noundef %i.jk, i64 noundef %i.jx, i64 noundef 1, i64 noundef 1) #27, !noalias !2282
  %.pre.i.i.i = load i64, ptr %i.hm, align 8, !alias.scope !2283, !noalias !2281
  %.pre608 = load ptr, ptr %i.hl, align 8, !alias.scope !2283, !noalias !2281
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbMXVmEvvZJf_5uu_dd.exit.i.i.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbMXVmEvvZJf_5uu_dd.exit.i.i.i: ; preds = %bb.bk, %bb.bj
  %i.kb = phi ptr [ %i.jj, %bb.bj ], [ %.pre608, %bb.bk ] ; 3 uses
  %i.kc = phi i64 [ %i.jk, %bb.bj ], [ %.pre.i.i.i, %bb.bk ] ; 4 uses
  %i.kd = icmp sgt i64 %i.kc, -1
  call void @llvm.assume(i1 %i.kd)
  %i.ke = getelementptr i8, ptr %i.kb, i64 %i.kc  ; 2 uses
  %i.kf = icmp ugt i64 %i.jx, 1
  br i1 %i.kf, label %._crit_edge.thread.i.i.i, label %._crit_edge.i.i.i

._crit_edge.thread.i.i.i:                         ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbMXVmEvvZJf_5uu_dd.exit.i.i.i
  %i.kg = add i64 %i.jx, -1                       ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.ke, i8 range(i8 -35, 33) -35, i64 %i.kg, i1 false), !noalias !2284
  %i.kh = add i64 %i.kc, %i.kg                    ; 2 uses
  %scevgep.i.i.i = getelementptr i8, ptr %i.kb, i64 %i.kh
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.thread.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbMXVmEvvZJf_5uu_dd.exit.i.i.i
  %.sroa.0.0.lcssa23.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.thread.i.i.i ], [ %i.ke, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbMXVmEvvZJf_5uu_dd.exit.i.i.i ]
  %storemerge.lcssa22.i.i.i = phi i64 [ %i.kh, %._crit_edge.thread.i.i.i ], [ %i.kc, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbMXVmEvvZJf_5uu_dd.exit.i.i.i ]
  store i8 -35, ptr %.sroa.0.0.lcssa23.i.i.i, align 1, !noalias !2284
  %i.ki = add i64 %storemerge.lcssa22.i.i.i, 1
  %.pre609 = load ptr, ptr %i.az, align 8, !alias.scope !2276, !noalias !2285
  br label %_RNvMs1_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE6resizeCsbMXVmEvvZJf_5uu_dd.exit.i

_RNvMs1_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE6resizeCsbMXVmEvvZJf_5uu_dd.exit.i: ; preds = %._crit_edge.i.i.i, %_RNvCsbMXVmEvvZJf_5uu_dd15calc_loop_bsize.exit
  %i.kj = phi ptr [ %i.jj, %_RNvCsbMXVmEvvZJf_5uu_dd15calc_loop_bsize.exit ], [ %i.kb, %._crit_edge.i.i.i ]
  %i.kk = phi ptr [ %i.jl, %_RNvCsbMXVmEvvZJf_5uu_dd15calc_loop_bsize.exit ], [ %.pre609, %._crit_edge.i.i.i ] ; 4 uses
  %storemerge.i.i = phi i64 [ %.sroa.05.0.i, %_RNvCsbMXVmEvvZJf_5uu_dd15calc_loop_bsize.exit ], [ %i.ki, %._crit_edge.i.i.i ] ; 7 uses
  store i64 %storemerge.i.i, ptr %i.hm, align 8, !alias.scope !2286, !noalias !2281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2287
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 104
  %i.km = load i8, ptr %i.kl, align 8, !range !11, !noalias !2285, !noundef !8
  %i.kn = trunc nuw i8 %i.km to i1
  br i1 %i.kn, label %bb.bl, label %bb.cm

bb.bl:                                            ; preds = %_RNvMs1_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE6resizeCsbMXVmEvvZJf_5uu_dd.exit.i
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kk, i64 105
  %i.kp = load i8, ptr %i.ko, align 1, !noalias !2285, !noundef !8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2288)
  call void @llvm.experimental.noalias.scope.decl(metadata !2289)
  %i.kq = icmp sgt i64 %storemerge.i.i, -1
  call void @llvm.assume(i1 %i.kq)
  %.not121.i.i = icmp eq i64 %storemerge.i.i, 0
  br i1 %.not121.i.i, label %.sink.split.i, label %.lr.ph107.i.i

.lr.ph107.i.i:                                    ; preds = %bb.bl
  %i.kr = icmp eq i8 %i.kp, 0
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.kk, i64 112
  %.pre162.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !2290
  %.pre163.i.i = load ptr, ptr %i.hl, align 8, !alias.scope !2291, !noalias !2292
  br label %bb.bm

bb.bm:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec6splice6SpliceINtNtBG_9into_iter8IntoIterhEEECsbMXVmEvvZJf_5uu_dd.exit.i.i, %.lr.ph107.i.i
  %.pre168.i.i = phi i64 [ %storemerge.i.i, %.lr.ph107.i.i ], [ %.pre168.i213.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec6splice6SpliceINtNtBG_9into_iter8IntoIterhEEECsbMXVmEvvZJf_5uu_dd.exit.i.i ] ; 9 uses
  %i.ks = phi ptr [ %.pre163.i.i, %.lr.ph107.i.i ], [ %i.rj, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec6splice6SpliceINtNtBG_9into_iter8IntoIterhEEECsbMXVmEvvZJf_5uu_dd.exit.i.i ] ; 11 uses
  %i.kt = phi i64 [ %.pre162.i.i, %.lr.ph107.i.i ], [ %i.rm, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec6splice6SpliceINtNtBG_9into_iter8IntoIterhEEECsbMXVmEvvZJf_5uu_dd.exit.i.i ]
  %.sroa.0.0106.i.i = phi i64 [ 0, %.lr.ph107.i.i ], [ %.sroa.0.1.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec6splice6SpliceINtNtBG_9into_iter8IntoIterhEEECsbMXVmEvvZJf_5uu_dd.exit.i.i ] ; 3 uses
  %.sroa.02.0105.i.i = phi i64 [ 0, %.lr.ph107.i.i ], [ %.sroa.02.1.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec6splice6SpliceINtNtBG_9into_iter8IntoIterhEEECsbMXVmEvvZJf_5uu_dd.exit.i.i ] ; 3 uses
  %.sroa.04.0104.i.i = phi i64 [ 0, %.lr.ph107.i.i ], [ %i.rn, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec6splice6SpliceINtNtBG_9into_iter8IntoIterhEEECsbMXVmEvvZJf_5uu_dd.exit.i.i ] ; 11 uses
  %.sroa.011.0103.i.i = phi i64 [ 0, %.lr.ph107.i.i ], [ %.sroa.011.1.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec6splice6SpliceINtNtBG_9into_iter8IntoIterhEEECsbMXVmEvvZJf_5uu_dd.exit.i.i ] ; 2 uses
  %i.ku = ptrtoaddr ptr %i.ks to i64
  %i.kv = add i64 %.sroa.04.0104.i.i, %i.kt       ; 3 uses
  %..i.i.i106 = call noundef i64 @llvm.umin.i64(i64 %.pre168.i.i, i64 %i.kv) ; 16 uses
  %i.kw = sub i64 %..i.i.i106, %.sroa.04.0104.i.i ; 3 uses
  %i.kx = icmp ult i64 %i.kv, %.sroa.04.0104.i.i
  br i1 %i.kx, label %bb.bn, label %bb.bo, !prof !2293

._crit_edge.i.i:                                  ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec6splice6SpliceINtNtBG_9into_iter8IntoIterhEEECsbMXVmEvvZJf_5uu_dd.exit.i.i, %bb.bp
  %.sroa.011.0.lcssa.ph.i.i = phi i64 [ %.sroa.011.1.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec6splice6SpliceINtNtBG_9into_iter8IntoIterhEEECsbMXVmEvvZJf_5uu_dd.exit.i.i ], [ %.sroa.011.0103.i.i, %bb.bp ] ; 2 uses
  %.sroa.04.0.lcssa.ph.i.i = phi i64 [ %i.rn, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec6splice6SpliceINtNtBG_9into_iter8IntoIterhEEECsbMXVmEvvZJf_5uu_dd.exit.i.i ], [ %.sroa.04.0104.i.i, %bb.bp ] ; 2 uses
  %.sroa.02.0.lcssa.ph.i.i = phi i64 [ %.sroa.02.1.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec6splice6SpliceINtNtBG_9into_iter8IntoIterhEEECsbMXVmEvvZJf_5uu_dd.exit.i.i ], [ %.sroa.02.0105.i.i, %bb.bp ] ; 2 uses
  %.sroa.0.0.lcssa.ph.i.i = phi i64 [ %.sroa.0.1.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec6splice6SpliceINtNtBG_9into_iter8IntoIterhEEECsbMXVmEvvZJf_5uu_dd.exit.i.i ], [ %.sroa.0.0106.i.i, %bb.bp ] ; 2 uses
  %.lcssa41.ph.i.i = phi i64 [ %.pre168.i213.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec6splice6SpliceINtNtBG_9into_iter8IntoIterhEEECsbMXVmEvvZJf_5uu_dd.exit.i.i ], [ %.pre168.i.i, %bb.bp ]
  %i.ky = icmp ugt i64 %.sroa.04.0.lcssa.ph.i.i, %.lcssa41.ph.i.i
  br i1 %i.ky, label %bb.cs, label %.sink.split.i

bb.bn:                                            ; preds = %bb.bm
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %.sroa.04.0104.i.i, i64 noundef %..i.i.i106, i64 noundef %.pre168.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #30, !noalias !2290
  unreachable

bb.bo:                                            ; preds = %bb.bm
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ks, i64 %.sroa.04.0104.i.i
  %i.la = call { i64, ptr } @_RNvXs4_CsbMXVmEvvZJf_5uu_ddNtB5_5InputNtNtNtCs7tKScEop1B6_5alloc2io4read4Read4read(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull %i.kz, i64 noundef %i.kw) #27, !noalias !2290 ; 2 uses
  %i.lb = extractvalue { i64, ptr } %i.la, 0
  %i.lc = extractvalue { i64, ptr } %i.la, 1      ; 3 uses
  %i.ld = ptrtoint ptr %i.lc to i64               ; 7 uses
  %i.le = trunc nuw i64 %i.lb to i1
  br i1 %i.le, label %.loopexit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.lf = icmp eq ptr %i.lc, null
  br i1 %i.lf, label %._crit_edge.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.lg = icmp ugt i64 %i.kw, %i.ld
  br i1 %i.lg, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.lh = add i64 %.sroa.0.0106.i.i, 1
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec6splice6SpliceINtNtBG_9into_iter8IntoIterhEEECsbMXVmEvvZJf_5uu_dd.exit.i.i

bb.bs:                                            ; preds = %bb.bq
  %i.li = add i64 %.sroa.02.0105.i.i, 1
  %i.lj = sub nuw i64 %i.kw, %i.ld                ; 24 uses
  %.not.i.i.i.i = icmp slt i64 %i.lj, 0           ; 2 uses
  br i1 %i.kr, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  br i1 %.not.i.i.i.i, label %bb.by, label %bb.bu, !prof !17

bb.bu:                                            ; preds = %bb.bt
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !2294
  %i.lk = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.lj, i64 noundef range(i64 1, 17) 1) #27, !noalias !2294 ; 2 uses
  %i.ll = icmp eq ptr %i.lk, null
  br i1 %i.ll, label %bb.by, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbMXVmEvvZJf_5uu_dd.exit.i.i.i

bb.bv:                                            ; preds = %bb.bs
  br i1 %.not.i.i.i.i, label %bb.bx, label %bb.bw, !prof !17

bb.bw:                                            ; preds = %bb.bv
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !2295
  %i.lm = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.lj, i64 noundef range(i64 1, 9) 1) #27, !noalias !2295 ; 3 uses
  %i.ln = icmp eq ptr %i.lm, null
  br i1 %i.ln, label %bb.bx, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbMXVmEvvZJf_5uu_dd.exit.i.i.i

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %bb.bw ], [ 0, %bb.bv ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.lj) #32, !noalias !2296
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbMXVmEvvZJf_5uu_dd.exit.i.i.i: ; preds = %bb.bw
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.lm, i8 %i.kp, i64 %i.lj, i1 false), !noalias !2296
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbMXVmEvvZJf_5uu_dd.exit.i.i.i

bb.by:                                            ; preds = %bb.bu, %bb.bt
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %bb.bu ], [ 0, %bb.bt ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.lj) #32, !noalias !2296
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbMXVmEvvZJf_5uu_dd.exit.i.i.i: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbMXVmEvvZJf_5uu_dd.exit.i.i.i, %bb.bu
  %.sroa.5.0.i.i = phi ptr [ %i.lm, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbMXVmEvvZJf_5uu_dd.exit.i.i.i ], [ %i.lk, %bb.bu ] ; 16 uses
  %.sroa.5.0.i.i1059 = ptrtoaddr ptr %.sroa.5.0.i.i to i64 ; 4 uses
  %i.lo = add i64 %.sroa.04.0104.i.i, %i.ld       ; 14 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2297)
  call void @llvm.experimental.noalias.scope.decl(metadata !2298)
  %i.lp = icmp ugt i64 %i.lo, %..i.i.i106
  br i1 %i.lp, label %bb.bz, label %_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VechE6spliceINtNtNtCs6JMX4GRUq9U_4core3ops5range5RangejEBw_ECsbMXVmEvvZJf_5uu_dd.exit.i.i, !prof !10

bb.bz:                                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbMXVmEvvZJf_5uu_dd.exit.i.i.i
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %i.lo, i64 noundef %..i.i.i106, i64 noundef range(i64 0, -9223372036854775808) %.pre168.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @203) #30, !noalias !2299
  unreachable

_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VechE6spliceINtNtNtCs6JMX4GRUq9U_4core3ops5range5RangejEBw_ECsbMXVmEvvZJf_5uu_dd.exit.i.i: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbMXVmEvvZJf_5uu_dd.exit.i.i.i
  store i64 %i.lo, ptr %i.hm, align 8, !alias.scope !2300, !noalias !2301
  %i.lq = sub nuw nsw i64 %.pre168.i.i, %..i.i.i106 ; 5 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i.i, i64 %i.lj ; 5 uses
  %.not.i.i = icmp ugt i64 %.pre168.i.i, %i.kv
  br i1 %.not.i.i, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VechE6spliceINtNtNtCs6JMX4GRUq9U_4core3ops5range5RangejEBw_ECsbMXVmEvvZJf_5uu_dd.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2302)
  call void @llvm.experimental.noalias.scope.decl(metadata !2303)
  %i.ls = load i64, ptr %i.ai, align 8, !range !18, !alias.scope !2304, !noalias !2305, !noundef !8
  %i.lt = sub nsw i64 %i.ls, %i.lo
  %i.lu = icmp ugt i64 %i.lj, %i.lt
  br i1 %i.lu, label %bb.cb, label %iter.check1102, !prof !10

bb.cb:                                            ; preds = %bb.ca
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai, i64 noundef %i.lo, i64 noundef %i.lj, i64 noundef 1, i64 noundef 1) #27, !noalias !2306
  %.pre.i.i.i.i.i.i = load i64, ptr %i.hm, align 8, !alias.scope !2307, !noalias !2305
  br label %iter.check1102

iter.check1102:                                   ; preds = %bb.cb, %bb.ca
  %i.lv = phi i64 [ %i.lo, %bb.ca ], [ %.pre.i.i.i.i.i.i, %bb.cb ] ; 7 uses
  %i.lw = load ptr, ptr %i.hl, align 8, !alias.scope !2307, !noalias !2305, !nonnull !8, !noundef !8 ; 7 uses
  %min.iters.check1086 = icmp ult i64 %i.lj, 8
  br i1 %min.iters.check1086, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.memcheck1083

vector.memcheck1083:                              ; preds = %iter.check1102
  %i.lx = ptrtoaddr ptr %i.lw to i64
  %i.ly = add i64 %i.lv, %i.lx
  %i.lz = sub i64 %.sroa.5.0.i.i1059, %i.ly
  %diff.check1084 = icmp ugt i64 %i.lz, -32
  br i1 %diff.check1084, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check1087

vector.main.loop.iter.check1087:                  ; preds = %vector.memcheck1083
  %min.iters.check1088 = icmp ult i64 %i.lj, 32
  br i1 %min.iters.check1088, label %vec.epilog.ph1106, label %vector.ph1089

vector.ph1089:                                    ; preds = %vector.main.loop.iter.check1087
  %i.ma = and i64 %i.lj, 24
  %n.vec1090 = and i64 %i.lj, -32                 ; 5 uses
  %i.mb = add i64 %i.lv, %n.vec1090               ; 2 uses
  %i.mc = getelementptr i8, ptr %.sroa.5.0.i.i, i64 %n.vec1090
  %i.md = getelementptr i8, ptr %i.lw, i64 %i.lv
  br label %vector.body1091

vector.body1091:                                  ; preds = %vector.ph1089, %vector.body1091
  %index1092 = phi i64 [ 0, %vector.ph1089 ], [ %index.next1096, %vector.body1091 ] ; 3 uses
  %next.gep1093 = getelementptr i8, ptr %.sroa.5.0.i.i, i64 %index1092 ; 2 uses
  %i.me = getelementptr i8, ptr %next.gep1093, i64 16
  %wide.load1094 = load <16 x i8>, ptr %next.gep1093, align 1, !noalias !2308
  %wide.load1095 = load <16 x i8>, ptr %i.me, align 1, !noalias !2308
  %i.mf = getelementptr i8, ptr %i.md, i64 %index1092 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  store <16 x i8> %wide.load1094, ptr %i.mf, align 1, !noalias !2309
  store <16 x i8> %wide.load1095, ptr %i.mg, align 1, !noalias !2309
  %index.next1096 = add nuw i64 %index1092, 32    ; 2 uses
  %i.mh = icmp eq i64 %index.next1096, %n.vec1090
  br i1 %i.mh, label %middle.block1097, label %vector.body1091, !llvm.loop !1969

middle.block1097:                                 ; preds = %vector.body1091
  %cmp.n1098 = icmp eq i64 %i.lj, %n.vec1090
  br i1 %cmp.n1098, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i, label %vec.epilog.iter.check1104

vec.epilog.iter.check1104:                        ; preds = %middle.block1097
  %min.epilog.iters.check1105 = icmp eq i64 %i.ma, 0
  br i1 %min.epilog.iters.check1105, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph1106, !prof !2312

vec.epilog.ph1106:                                ; preds = %vector.main.loop.iter.check1087, %vec.epilog.iter.check1104
  %vec.epilog.resume.val1099 = phi i64 [ %n.vec1090, %vec.epilog.iter.check1104 ], [ 0, %vector.main.loop.iter.check1087 ]
  %n.vec1107 = and i64 %i.lj, -8                  ; 4 uses
  %i.mi = add i64 %i.lv, %n.vec1107               ; 2 uses
  %i.mj = getelementptr i8, ptr %.sroa.5.0.i.i, i64 %n.vec1107
  %i.mk = getelementptr i8, ptr %i.lw, i64 %i.lv
  br label %vec.epilog.vector.body1108

vec.epilog.vector.body1108:                       ; preds = %vec.epilog.vector.body1108, %vec.epilog.ph1106
  %index1109 = phi i64 [ %vec.epilog.resume.val1099, %vec.epilog.ph1106 ], [ %index.next1112, %vec.epilog.vector.body1108 ] ; 3 uses
  %next.gep1110 = getelementptr i8, ptr %.sroa.5.0.i.i, i64 %index1109
  %wide.load1111 = load <8 x i8>, ptr %next.gep1110, align 1, !noalias !2308
  %i.ml = getelementptr i8, ptr %i.mk, i64 %index1109
  store <8 x i8> %wide.load1111, ptr %i.ml, align 1, !noalias !2309
  %index.next1112 = add nuw i64 %index1109, 8     ; 2 uses
  %i.mm = icmp eq i64 %index.next1112, %n.vec1107
  br i1 %i.mm, label %vec.epilog.middle.block1113, label %vec.epilog.vector.body1108, !llvm.loop !1970

vec.epilog.middle.block1113:                      ; preds = %vec.epilog.vector.body1108
  %cmp.n1114 = icmp eq i64 %i.lj, %n.vec1107
  br i1 %cmp.n1114, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %iter.check1102, %vector.memcheck1083, %vec.epilog.iter.check1104, %vec.epilog.middle.block1113
  %.ph1120 = phi i64 [ %i.lv, %iter.check1102 ], [ %i.lv, %vector.memcheck1083 ], [ %i.mb, %vec.epilog.iter.check1104 ], [ %i.mi, %vec.epilog.middle.block1113 ]
  %.ph1121 = phi ptr [ %.sroa.5.0.i.i, %iter.check1102 ], [ %.sroa.5.0.i.i, %vector.memcheck1083 ], [ %i.mc, %vec.epilog.iter.check1104 ], [ %i.mj, %vec.epilog.middle.block1113 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.mn = phi i64 [ %i.ms, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.ph1120, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.mo = phi ptr [ %i.mq, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.ph1121, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.mp = load i8, ptr %i.mo, align 1, !noalias !2308, !noundef !8
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mo, i64 1 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.mn
  store i8 %i.mp, ptr %i.mr, align 1, !noalias !2309
  %i.ms = add i64 %i.mn, 1                        ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.mq, %i.lr
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1971

bb.cc:                                            ; preds = %_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VechE6spliceINtNtNtCs6JMX4GRUq9U_4core3ops5range5RangejEBw_ECsbMXVmEvvZJf_5uu_dd.exit.i.i
  %.not6.i.i.i.i.i = icmp samesign ult i64 %i.lo, %..i.i.i106
  br i1 %.not6.i.i.i.i.i, label %iter.check, label %.loopexit.i.i.i.i

iter.check:                                       ; preds = %bb.cc
  %min.iters.check1062 = icmp ult i64 %i.lj, 8
  br i1 %min.iters.check1062, label %.lr.ph.i.i.preheader, label %vector.memcheck1058

vector.memcheck1058:                              ; preds = %iter.check
  %i.mt = add i64 %.sroa.04.0104.i.i, %i.ld
  %i.mu = add i64 %i.mt, %i.ku
  %i.mv = sub i64 %.sroa.5.0.i.i1059, %i.mu
  %diff.check1060 = icmp ugt i64 %i.mv, -32
  br i1 %diff.check1060, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck1058
  %min.iters.check1063 = icmp ult i64 %i.lj, 32
  br i1 %min.iters.check1063, label %vec.epilog.ph, label %vector.ph1064

vector.ph1064:                                    ; preds = %vector.main.loop.iter.check
  %i.mw = and i64 %i.lj, 24
  %n.vec1065 = and i64 %i.lj, -32                 ; 5 uses
  %i.mx = add i64 %i.lo, %n.vec1065
  %i.my = getelementptr i8, ptr %.sroa.5.0.i.i, i64 %n.vec1065 ; 2 uses
  %i.mz = getelementptr i8, ptr %i.ks, i64 %i.lo
  br label %vector.body1066

vector.body1066:                                  ; preds = %vector.ph1064, %vector.body1066
  %index1067 = phi i64 [ 0, %vector.ph1064 ], [ %index.next1071, %vector.body1066 ] ; 3 uses
  %next.gep1068 = getelementptr i8, ptr %.sroa.5.0.i.i, i64 %index1067 ; 2 uses
  %i.na = getelementptr i8, ptr %next.gep1068, i64 16
  %wide.load1069 = load <16 x i8>, ptr %next.gep1068, align 1, !noalias !2313
  %wide.load1070 = load <16 x i8>, ptr %i.na, align 1, !noalias !2313
  %i.nb = getelementptr i8, ptr %i.mz, i64 %index1067 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  store <16 x i8> %wide.load1069, ptr %i.nb, align 1, !noalias !2314
  store <16 x i8> %wide.load1070, ptr %i.nc, align 1, !noalias !2314
  %index.next1071 = add nuw i64 %index1067, 32    ; 2 uses
  %i.nd = icmp eq i64 %index.next1071, %n.vec1065
  br i1 %i.nd, label %middle.block1072, label %vector.body1066, !llvm.loop !1976

middle.block1072:                                 ; preds = %vector.body1066
  %cmp.n = icmp eq i64 %i.lj, %n.vec1065
  br i1 %cmp.n, label %.loopexit.i.i.i.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block1072
  %min.epilog.iters.check = icmp eq i64 %i.mw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !2312

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec1065, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1075 = and i64 %i.lj, -8                  ; 4 uses
  %i.ne = add i64 %i.lo, %n.vec1075
  %i.nf = getelementptr i8, ptr %.sroa.5.0.i.i, i64 %n.vec1075 ; 2 uses
  %i.ng = getelementptr i8, ptr %i.ks, i64 %i.lo
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1076 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1079, %vec.epilog.vector.body ] ; 3 uses
  %next.gep1077 = getelementptr i8, ptr %.sroa.5.0.i.i, i64 %index1076
  %wide.load1078 = load <8 x i8>, ptr %next.gep1077, align 1, !noalias !2313
  %i.nh = getelementptr i8, ptr %i.ng, i64 %index1076
  store <8 x i8> %wide.load1078, ptr %i.nh, align 1, !noalias !2314
  %index.next1079 = add nuw i64 %index1076, 8     ; 2 uses
  %i.ni = icmp eq i64 %index.next1079, %n.vec1075
  br i1 %i.ni, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1977

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1080 = icmp eq i64 %i.lj, %n.vec1075
  br i1 %cmp.n1080, label %.loopexit.i.i.i.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vector.memcheck1058, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.03.i.i.i96.i.i.ph = phi i64 [ %i.lo, %iter.check ], [ %i.lo, %vector.memcheck1058 ], [ %i.mx, %vec.epilog.iter.check ], [ %i.ne, %vec.epilog.middle.block ] ; 4 uses
  %.ph1119 = phi ptr [ %.sroa.5.0.i.i, %iter.check ], [ %.sroa.5.0.i.i, %vector.memcheck1058 ], [ %i.my, %vec.epilog.iter.check ], [ %i.nf, %vec.epilog.middle.block ] ; 2 uses
  %i.nj = sub i64 %..i.i.i106, %.sroa.01.03.i.i.i96.i.i.ph
  %xtraiter = and i64 %i.nj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.01.03.i.i.i96.i.i.prol = phi i64 [ %i.nn, %.lr.ph.i.i.prol ], [ %.sroa.01.03.i.i.i96.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.nk = phi ptr [ %i.nl, %.lr.ph.i.i.prol ], [ %.ph1119, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 1 ; 3 uses
  %i.nm = load i8, ptr %i.nk, align 1, !noalias !2313, !noundef !8
  %i.nn = add i64 %.sroa.01.03.i.i.i96.i.i.prol, 1 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.ks, i64 %.sroa.01.03.i.i.i96.i.i.prol
  store i8 %i.nm, ptr %i.no, align 1, !noalias !2314
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1978

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa1136.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.nl, %.lr.ph.i.i.prol ]
  %.sroa.01.03.i.i.i96.i.i.unr = phi i64 [ %.sroa.01.03.i.i.i96.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.nn, %.lr.ph.i.i.prol ]
  %.unr = phi ptr [ %.ph1119, %.lr.ph.i.i.preheader ], [ %i.nl, %.lr.ph.i.i.prol ]
  %i.np = sub i64 %.sroa.01.03.i.i.i96.i.i.ph, %..i.i.i106
  %i.nq = icmp ugt i64 %i.np, -4
  br i1 %i.nq, label %.loopexit.i.i.i.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.01.03.i.i.i96.i.i = phi i64 [ %i.of, %.lr.ph.i.i ], [ %.sroa.01.03.i.i.i96.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %i.nr = phi ptr [ %i.od, %.lr.ph.i.i ], [ %.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 1
  %i.nt = load i8, ptr %i.nr, align 1, !noalias !2313, !noundef !8
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ks, i64 %.sroa.01.03.i.i.i96.i.i
  store i8 %i.nt, ptr %i.nu, align 1, !noalias !2314
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nr, i64 2
  %i.nw = load i8, ptr %i.ns, align 1, !noalias !2313, !noundef !8
  %i.nx = getelementptr i8, ptr %i.ks, i64 %.sroa.01.03.i.i.i96.i.i
  %i.ny = getelementptr i8, ptr %i.nx, i64 1
  store i8 %i.nw, ptr %i.ny, align 1, !noalias !2314
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nr, i64 3
  %i.oa = load i8, ptr %i.nv, align 1, !noalias !2313, !noundef !8
  %i.ob = getelementptr i8, ptr %i.ks, i64 %.sroa.01.03.i.i.i96.i.i
  %i.oc = getelementptr i8, ptr %i.ob, i64 2
  store i8 %i.oa, ptr %i.oc, align 1, !noalias !2314
  %i.od = getelementptr inbounds nuw i8, ptr %i.nr, i64 4 ; 2 uses
  %i.oe = load i8, ptr %i.nz, align 1, !noalias !2313, !noundef !8
  %i.of = add i64 %.sroa.01.03.i.i.i96.i.i, 4     ; 2 uses
  %i.og = getelementptr i8, ptr %i.ks, i64 %.sroa.01.03.i.i.i96.i.i
  %i.oh = getelementptr i8, ptr %i.og, i64 3
  store i8 %i.oe, ptr %i.oh, align 1, !noalias !2314
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %i.of, %..i.i.i106
  br i1 %exitcond.not.i.i.i.i.i.3, label %.loopexit.i.i.i.loopexit.i, label %.lr.ph.i.i, !llvm.loop !1979

.loopexit.i.i.i.loopexit.i:                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block1072
  %.lcssa893 = phi ptr [ %i.nf, %vec.epilog.middle.block ], [ %i.my, %middle.block1072 ], [ %.lcssa1136.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.od, %.lr.ph.i.i ]
  store i64 %..i.i.i106, ptr %i.hm, align 8, !alias.scope !2291, !noalias !2315
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %.loopexit.i.i.i.loopexit.i, %bb.cc
  %i.oi = phi i64 [ %i.lo, %bb.cc ], [ %..i.i.i106, %.loopexit.i.i.i.loopexit.i ] ; 2 uses
  %.val18.i.i.i.i = phi ptr [ %.sroa.5.0.i.i, %bb.cc ], [ %.lcssa893, %.loopexit.i.i.i.loopexit.i ] ; 8 uses
  %i.oj = ptrtoint ptr %i.lr to i64               ; 3 uses
  %i.ok = ptrtoint ptr %.val18.i.i.i.i to i64     ; 6 uses
  %i.ol = sub nuw i64 %i.oj, %i.ok                ; 4 uses
  %.not.i.i23.i.i = icmp eq ptr %i.lr, %.val18.i.i.i.i
  br i1 %.not.i.i23.i.i, label %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.thread.i.i.i, label %bb.cf

_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.loopexit.i.i.i.i: ; preds = %.lr.ph100.i.i
  store i64 %i.ow, ptr %i.hm, align 8, !alias.scope !2291, !noalias !2316
  %.pre.i.i.i.i = ptrtoint ptr %i.qc to i64       ; 2 uses
  %.pre10.i.i.i = sub nuw i64 %i.oj, %.pre.i.i.i.i
  br label %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.i.i.i

_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.i.i.i: ; preds = %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.loopexit.i.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %i.ol, %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i ], [ %.pre10.i.i.i, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.loopexit.i.i.i.i ] ; 3 uses
  %i.om = phi i64 [ %.promoted97.i.i, %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i ], [ %i.ow, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.loopexit.i.i.i.i ]
  %.pre-phi.i.i.i.i = phi i64 [ %i.ok, %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i ], [ %.pre.i.i.i.i, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.loopexit.i.i.i.i ]
  %.val.i.i.i29.i.i.i.i = phi ptr [ %.val18.i.i.i.i, %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i ], [ %i.qc, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.loopexit.i.i.i.i ]
  %.not.i.i.i.i.i.i.i.i = icmp slt i64 %.pre-phi.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ce, label %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.thread.i.i.i, !prof !2317

_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.thread.i.i.i: ; preds = %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.i.i.i, %.loopexit.i.i.i.i
  %i.on = phi ptr [ %i.ox, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.i.i.i ], [ %i.ks, %.loopexit.i.i.i.i ] ; 2 uses
  %.val.i.i.i29.i39.i.i.i = phi ptr [ %.val.i.i.i29.i.i.i.i, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.i.i.i ], [ %.val18.i.i.i.i, %.loopexit.i.i.i.i ] ; 2 uses
  %i.oo = phi i64 [ %i.ow, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.i.i.i ], [ %..i.i.i106, %.loopexit.i.i.i.i ] ; 6 uses
  %.pre-phi.i38.i.i.i = phi i64 [ %.pre-phi.i.i.i.i, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.i.i.i ], [ %i.ok, %.loopexit.i.i.i.i ]
  %i.op = phi i64 [ %i.om, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.i.i.i ], [ %i.oi, %.loopexit.i.i.i.i ] ; 3 uses
  %.pre-phi36.i.i.i = phi i64 [ %.pre-phi.i.i.i, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.i.i.i ], [ 0, %.loopexit.i.i.i.i ] ; 10 uses
  %i.oq = icmp eq ptr %i.lr, %.val.i.i.i29.i39.i.i.i
  br i1 %i.oq, label %.loopexit.i.i.i, label %bb.cd

bb.cd:                                            ; preds = %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.thread.i.i.i
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !2318
  %i.or = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.pre-phi36.i.i.i, i64 noundef range(i64 1, 9) 1) #27, !noalias !2318 ; 6 uses
  %i.os = icmp eq ptr %i.or, null
  br i1 %i.os, label %bb.ce, label %bb.ch

bb.ce:                                            ; preds = %bb.cd, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.i.i.i
  %.pre-phi37.i.i.i = phi i64 [ %.pre-phi36.i.i.i, %bb.cd ], [ %.pre-phi.i.i.i, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.i.i.i ]
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 1, %bb.cd ], [ 0, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.i.i.i ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %.pre-phi37.i.i.i) #32, !noalias !2319
  unreachable

bb.cf:                                            ; preds = %.loopexit.i.i.i.i
  %i.ot = load i64, ptr %i.ai, align 8, !range !18, !alias.scope !2291, !noalias !2320, !noundef !8
  %i.ou = sub nsw i64 %i.ot, %.pre168.i.i
  %i.ov = icmp ugt i64 %i.ol, %i.ou
  br i1 %i.ov, label %bb.cg, label %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i, !prof !10

bb.cg:                                            ; preds = %bb.cf
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai, i64 noundef %.pre168.i.i, i64 noundef %i.ol, i64 noundef 1, i64 noundef 1) #27, !noalias !2321
  %.pre164.i.i = load i64, ptr %i.hm, align 8, !alias.scope !2291, !noalias !2316
  br label %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i

_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i: ; preds = %bb.cg, %bb.cf
  %.promoted97.i.i = phi i64 [ %.pre164.i.i, %bb.cg ], [ %i.oi, %bb.cf ] ; 8 uses
  %i.ow = add i64 %i.ol, %..i.i.i106              ; 7 uses
  %i.ox = load ptr, ptr %i.hl, align 8, !alias.scope !2291, !noalias !2320, !nonnull !8, !noundef !8 ; 7 uses
  %i.oy = ptrtoaddr ptr %i.ox to i64
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ox, i64 %..i.i.i106
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ox, i64 %i.ow
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.pa, ptr nonnull align 1 %i.oz, i64 %i.lq, i1 false), !noalias !2322
  %.not6.i31.i.i.i.i = icmp ult i64 %.promoted97.i.i, %i.ow
  br i1 %.not6.i31.i.i.i.i, label %.lr.ph100.i.i.preheader, label %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.i.i.i

.lr.ph100.i.i.preheader:                          ; preds = %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i
  %i.pb = shl i64 %..i.i.i106, 1
  %i.pc = add i64 %i.pb, %.sroa.5.0.i.i1059
  %i.pd = xor i64 %.promoted97.i.i, -1
  %i.pe = add i64 %i.pc, %i.pd
  %i.pf = add i64 %.sroa.04.0104.i.i, %i.ld
  %i.pg = add i64 %i.pf, %i.ok
  %i.ph = sub i64 %i.pe, %i.pg
  %i.pi = add i64 %..i.i.i106, %.sroa.5.0.i.i1059
  %i.pj = xor i64 %.sroa.04.0104.i.i, -1
  %i.pk = add i64 %i.pi, %i.pj
  %i.pl = add i64 %i.ld, %i.ok
  %i.pm = sub i64 %i.pk, %i.pl
  %i.pn = call i64 @llvm.umin.i64(i64 %i.ph, i64 %i.pm)
  %i.po = add i64 %i.pn, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.po, 33
  br i1 %min.iters.check, label %.lr.ph100.i.i.preheader1117, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph100.i.i.preheader
  %i.pp = add i64 %.promoted97.i.i, %i.oy
  %i.pq = sub i64 %i.ok, %i.pp
  %diff.check = icmp ugt i64 %i.pq, -32
  br i1 %diff.check, label %.lr.ph100.i.i.preheader1117, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.pr = and i64 %i.po, 31                       ; 2 uses
  %i.ps = icmp eq i64 %i.pr, 0
  %i.pt = select i1 %i.ps, i64 32, i64 %i.pr
  %n.vec = sub i64 %i.po, %i.pt                   ; 3 uses
  %i.pu = add i64 %.promoted97.i.i, %n.vec
  %i.pv = getelementptr i8, ptr %.val18.i.i.i.i, i64 %n.vec
  %i.pw = getelementptr i8, ptr %i.ox, i64 %.promoted97.i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.val18.i.i.i.i, i64 %index ; 2 uses
  %i.px = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !noalias !2323
  %wide.load1056 = load <16 x i8>, ptr %i.px, align 1, !noalias !2323
  %i.py = getelementptr i8, ptr %i.pw, i64 %index ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 16
  store <16 x i8> %wide.load, ptr %i.py, align 1, !noalias !2324
  store <16 x i8> %wide.load1056, ptr %i.pz, align 1, !noalias !2324
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.qa = icmp eq i64 %index.next, %n.vec
  br i1 %i.qa, label %.lr.ph100.i.i.preheader1117, label %vector.body, !llvm.loop !1994

.lr.ph100.i.i.preheader1117:                      ; preds = %vector.body, %vector.memcheck, %.lr.ph100.i.i.preheader
  %.sroa.01.03.i35.i.i99.i.i.ph = phi i64 [ %.promoted97.i.i, %vector.memcheck ], [ %.promoted97.i.i, %.lr.ph100.i.i.preheader ], [ %i.pu, %vector.body ]
  %.ph1118 = phi ptr [ %.val18.i.i.i.i, %vector.memcheck ], [ %.val18.i.i.i.i, %.lr.ph100.i.i.preheader ], [ %i.pv, %vector.body ]
  br label %.lr.ph100.i.i

.lr.ph.i33.i.i.i.i:                               ; preds = %.lr.ph100.i.i
  %.not.not.i36.i.i.i.i = icmp eq ptr %i.qc, %i.lr
  br i1 %.not.not.i36.i.i.i.i, label %.loopexit.i.i.i, label %.lr.ph100.i.i, !llvm.loop !1995

.lr.ph100.i.i:                                    ; preds = %.lr.ph100.i.i.preheader1117, %.lr.ph.i33.i.i.i.i
  %.sroa.01.03.i35.i.i99.i.i = phi i64 [ %i.qe, %.lr.ph.i33.i.i.i.i ], [ %.sroa.01.03.i35.i.i99.i.i.ph, %.lr.ph100.i.i.preheader1117 ] ; 2 uses
  %i.qb = phi ptr [ %i.qc, %.lr.ph.i33.i.i.i.i ], [ %.ph1118, %.lr.ph100.i.i.preheader1117 ] ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 1 ; 4 uses
  %i.qd = load i8, ptr %i.qb, align 1, !noalias !2323, !noundef !8
  %i.qe = add i64 %.sroa.01.03.i35.i.i99.i.i, 1   ; 3 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.ox, i64 %.sroa.01.03.i35.i.i99.i.i
  store i8 %i.qd, ptr %i.qf, align 1, !noalias !2324
  %exitcond.not.i37.i.i.i.i = icmp eq i64 %i.qe, %i.ow
  br i1 %exitcond.not.i37.i.i.i.i, label %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.loopexit.i.i.i.i, label %.lr.ph.i33.i.i.i.i

bb.ch:                                            ; preds = %bb.cd
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.or, ptr nonnull align 1 %.val.i.i.i29.i39.i.i.i, i64 %.pre-phi36.i.i.i, i1 false), !noalias !2325
  %i.qg = getelementptr inbounds nuw i8, ptr %i.or, i64 %.pre-phi36.i.i.i
  %.not14.i.i.i.i = icmp eq i64 %.pre-phi.i38.i.i.i, %i.oj
  br i1 %.not14.i.i.i.i, label %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i, label %bb.ci

_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i.loopexit: ; preds = %.lr.ph, %.lr.ph.i42.i.i.i.i, %.lr.ph.i42.i.i.i.i.preheader
  %.pre.i.i21.i.ph = phi i64 [ %.promoted, %.lr.ph.i42.i.i.i.i.preheader ], [ %i.qn, %.lr.ph ], [ %i.qy, %.lr.ph.i42.i.i.i.i ] ; 2 uses
  store i64 %.pre.i.i21.i.ph, ptr %i.hm, align 8
  br label %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i

_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i: ; preds = %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i.loopexit, %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit39.i.i.i.i, %bb.ch
  %.pre.i.i21.i = phi i64 [ %i.op, %bb.ch ], [ %.promoted, %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit39.i.i.i.i ], [ %.pre.i.i21.i.ph, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i.loopexit ]
  %i.qh = phi ptr [ %i.on, %bb.ch ], [ %i.qo, %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit39.i.i.i.i ], [ %i.qo, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i.loopexit ]
  %i.qi = phi i64 [ %i.oo, %bb.ch ], [ %i.qn, %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit39.i.i.i.i ], [ %i.qn, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i.loopexit ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.or, i64 noundef %.pre-phi36.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !2326
  br label %.loopexit.i.i.i

bb.ci:                                            ; preds = %bb.ch
  %i.qj = add i64 %i.oo, %i.lq                    ; 2 uses
  %i.qk = load i64, ptr %i.ai, align 8, !range !18, !alias.scope !2291, !noalias !2327, !noundef !8
  %i.ql = sub i64 %i.qk, %i.qj
  %i.qm = icmp ugt i64 %.pre-phi36.i.i.i, %i.ql
  br i1 %i.qm, label %bb.cj, label %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit39.i.i.i.i, !prof !10

bb.cj:                                            ; preds = %bb.ci
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai, i64 noundef %i.qj, i64 noundef %.pre-phi36.i.i.i, i64 noundef 1, i64 noundef 1) #27, !noalias !2328
  %.pre165.i.i = load i64, ptr %i.hm, align 8, !alias.scope !2291, !noalias !2329
  br label %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit39.i.i.i.i

_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit39.i.i.i.i: ; preds = %bb.cj, %bb.ci
  %.promoted = phi i64 [ %.pre165.i.i, %bb.cj ], [ %i.op, %bb.ci ] ; 6 uses
  %i.qn = add i64 %.pre-phi36.i.i.i, %i.oo        ; 6 uses
  %i.qo = load ptr, ptr %i.hl, align 8, !alias.scope !2291, !noalias !2327, !nonnull !8, !noundef !8 ; 5 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 %i.oo
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qo, i64 %i.qn
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.qq, ptr nonnull align 1 %i.qp, i64 %i.lq, i1 false), !noalias !2330
  %.not6.i40.i.i.i.i = icmp ult i64 %.promoted, %i.qn
  br i1 %.not6.i40.i.i.i.i, label %.lr.ph.i42.i.i.i.i.preheader, label %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i

.lr.ph.i42.i.i.i.i.preheader:                     ; preds = %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit39.i.i.i.i
  %.not.not.i45.i.i.i.i424 = icmp samesign eq i64 %.pre-phi36.i.i.i, 0
  br i1 %.not.not.i45.i.i.i.i424, label %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.i42.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.qo, i64 %.promoted
  %i.qr = add nsw i64 %.pre-phi36.i.i.i, -1       ; 2 uses
  %i.qs = add i64 %i.qr, %i.oo
  %i.qt = sub i64 %i.qs, %.promoted
  %umin = call i64 @llvm.umin.i64(i64 %i.qt, i64 %i.qr)
  %i.qu = add nuw nsw i64 %umin, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, ptr noundef nonnull align 1 dereferenceable(1) %i.or, i64 %i.qu, i1 false), !noalias !2331
  br label %.lr.ph

.lr.ph.i42.i.i.i.i:                               ; preds = %.lr.ph
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qw, i64 1 ; 2 uses
  %.not.not.i45.i.i.i.i = icmp eq ptr %i.qv, %i.qg
  br i1 %.not.not.i45.i.i.i.i, label %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph.i42.i.i.i.i
  %i.qw = phi ptr [ %i.qv, %.lr.ph.i42.i.i.i.i ], [ %i.or, %.lr.ph.preheader ]
  %i.qx = phi i64 [ %i.qy, %.lr.ph.i42.i.i.i.i ], [ %.promoted, %.lr.ph.preheader ]
  %i.qy = add i64 %i.qx, 1                        ; 3 uses
  %exitcond.not.i46.i.i.i.i = icmp eq i64 %i.qy, %i.qn
  br i1 %exitcond.not.i46.i.i.i.i, label %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i.loopexit, label %.lr.ph.i42.i.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i33.i.i.i.i, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.thread.i.i.i
  %i.qz = phi ptr [ %i.qh, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i ], [ %i.on, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.thread.i.i.i ], [ %i.ox, %.lr.ph.i33.i.i.i.i ]
  %i.ra = phi i64 [ %i.qi, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i ], [ %i.oo, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.thread.i.i.i ], [ %i.ow, %.lr.ph.i33.i.i.i.i ] ; 2 uses
  %i.rb = phi i64 [ %.pre.i.i21.i, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i ], [ %i.op, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.thread.i.i.i ], [ %i.qe, %.lr.ph.i33.i.i.i.i ] ; 4 uses
  %i.rc = icmp sgt i64 %i.rb, -1
  call void @llvm.assume(i1 %i.rc)
  %.not3.i.i.i.i.i.i.i = icmp eq i64 %i.ra, %i.rb
  br i1 %.not3.i.i.i.i.i.i.i, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cl, %.loopexit.i.i.i
  %i.rd = phi ptr [ %i.rf, %bb.cl ], [ %i.qz, %.loopexit.i.i.i ]
  %i.re = add nuw i64 %i.rb, %i.lq
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i

bb.cl:                                            ; preds = %.loopexit.i.i.i
  %i.rf = load ptr, ptr %i.hl, align 8, !alias.scope !2291, !noalias !2332, !nonnull !8, !noundef !8 ; 3 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 %i.ra
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rf, i64 %i.rb
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.rh, ptr nonnull align 1 %i.rg, i64 %i.lq, i1 false), !noalias !2333
  br label %bb.ck

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block1097, %vec.epilog.middle.block1113, %bb.ck
  %i.ri = phi ptr [ %i.rd, %bb.ck ], [ %i.lw, %middle.block1097 ], [ %i.lw, %vec.epilog.middle.block1113 ], [ %i.lw, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %storemerge31.i.i = phi i64 [ %i.re, %bb.ck ], [ %i.mb, %middle.block1097 ], [ %i.mi, %vec.epilog.middle.block1113 ], [ %i.ms, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  store i64 %storemerge31.i.i, ptr %i.hm, align 8, !alias.scope !2291, !noalias !2334
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.i.i, i64 noundef %i.lj, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !2335
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec6splice6SpliceINtNtBG_9into_iter8IntoIterhEEECsbMXVmEvvZJf_5uu_dd.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec6splice6SpliceINtNtBG_9into_iter8IntoIterhEEECsbMXVmEvvZJf_5uu_dd.exit.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i, %bb.br
  %.pre168.i213.i = phi i64 [ %.pre168.i.i, %bb.br ], [ %storemerge31.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i ] ; 4 uses
  %i.rj = phi ptr [ %i.ks, %bb.br ], [ %i.ri, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i ]
  %.sroa.02.1.i.i = phi i64 [ %.sroa.02.0105.i.i, %bb.br ], [ %i.li, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i ] ; 2 uses
  %.sroa.0.1.i.i = phi i64 [ %i.lh, %bb.br ], [ %.sroa.0.0106.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i ] ; 2 uses
  %.sroa.011.1.i.i = add i64 %.sroa.011.0103.i.i, %i.ld ; 2 uses
  %i.rk = load ptr, ptr %i.az, align 8, !alias.scope !2336, !noalias !2290, !nonnull !8, !align !13, !noundef !8
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 112
  %i.rm = load i64, ptr %i.rl, align 8, !noalias !2290, !noundef !8 ; 2 uses
  %i.rn = add i64 %i.rm, %.sroa.04.0104.i.i       ; 3 uses
  %i.ro = icmp sgt i64 %.pre168.i213.i, -1
  call void @llvm.assume(i1 %i.ro)
  %i.rp = icmp ult i64 %i.rn, %.pre168.i213.i
  br i1 %i.rp, label %bb.bm, label %._crit_edge.i.i

bb.cm:                                            ; preds = %_RNvMs1_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE6resizeCsbMXVmEvvZJf_5uu_dd.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2337)
  %i.rq = getelementptr inbounds nuw i8, ptr %i.kk, i64 112
  %i.rr = load i64, ptr %i.rq, align 8, !noalias !2338, !noundef !8 ; 2 uses
  %i.rs = icmp eq i64 %i.rr, 0
  br i1 %i.rs, label %bb.cn, label %bb.co, !prof !10

bb.cn:                                            ; preds = %bb.cm
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @3, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #30, !noalias !2338
  unreachable

bb.co:                                            ; preds = %bb.cm
  %i.rt = icmp eq i64 %storemerge.i.i, 0
  br i1 %i.rt, label %.sink.split.i, label %_RNvXs1f_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.i.i

_RNvXs1f_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.i.i: ; preds = %bb.co, %bb.cr
  %.sroa.0.041.i.i = phi i64 [ %i.si, %bb.cr ], [ 0, %bb.co ] ; 2 uses
  %.sroa.04.040.i.i = phi i64 [ %i.sh, %bb.cr ], [ 0, %bb.co ] ; 2 uses
  %.sroa.0.02439.i.i = phi ptr [ %i.ru, %bb.cr ], [ %i.kj, %bb.co ] ; 2 uses
  %.sroa.6.038.i.i = phi i64 [ %i.rv, %bb.cr ], [ %storemerge.i.i, %bb.co ] ; 2 uses
  %..i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.rr, i64 %.sroa.6.038.i.i) ; 3 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %.sroa.0.02439.i.i, i64 %..i.i.i.i
  %i.rv = sub nuw i64 %.sroa.6.038.i.i, %..i.i.i.i ; 2 uses
  %i.rw = call { i64, ptr } @_RNvXs4_CsbMXVmEvvZJf_5uu_ddNtB5_5InputNtNtNtCs7tKScEop1B6_5alloc2io4read4Read4read(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull %.sroa.0.02439.i.i, i64 noundef %..i.i.i.i) #27, !noalias !2339 ; 2 uses
  %i.rx = extractvalue { i64, ptr } %i.rw, 0
  %i.ry = extractvalue { i64, ptr } %i.rw, 1      ; 3 uses
  %i.rz = ptrtoint ptr %i.ry to i64               ; 3 uses
  %i.sa = trunc nuw i64 %i.rx to i1
  br i1 %i.sa, label %.loopexit, label %bb.cp

_RNvXs1f_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i: ; preds = %bb.cr, %bb.cq
  %.sroa.0.032.i.i = phi i64 [ %.sroa.0.041.i.i, %bb.cq ], [ %i.si, %bb.cr ] ; 2 uses
end_hunk_0
