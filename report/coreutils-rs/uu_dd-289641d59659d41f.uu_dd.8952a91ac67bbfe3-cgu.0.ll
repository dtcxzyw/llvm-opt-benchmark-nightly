Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_dd-289641d59659d41f.uu_dd.8952a91ac67bbfe3-cgu.0?download=true
inline.NumInlined: 1600
inline.NumDeleted: 713
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_RNvCsbMXVmEvvZJf_5uu_dd7dd_copy:bb.a
  %i.kb = sub nsw i64 %i.ka, %i.jm
  %i.kc = icmp ugt i64 %i.jz, %i.kb
  br i1 %i.kc, label %bb.bk, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbMXVmEvvZJf_5uu_dd.exit.i.i.i, !prof !10

bb.bk:                                            ; preds = %bb.bj
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai, i64 noundef %i.jm, i64 noundef %i.jz, i64 noundef 1, i64 noundef 1) #27, !noalias !2288
  %.pre.i.i.i = load i64, ptr %i.hm, align 8, !alias.scope !2289, !noalias !2287
  %.pre612 = load ptr, ptr %i.hl, align 8, !alias.scope !2289, !noalias !2287
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbMXVmEvvZJf_5uu_dd.exit.i.i.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbMXVmEvvZJf_5uu_dd.exit.i.i.i: ; preds = %bb.bk, %bb.bj
  %i.kd = phi ptr [ %i.jl, %bb.bj ], [ %.pre612, %bb.bk ] ; 3 uses
  %i.ke = phi i64 [ %i.jm, %bb.bj ], [ %.pre.i.i.i, %bb.bk ] ; 4 uses
  %i.kf = icmp sgt i64 %i.ke, -1
  call void @llvm.assume(i1 %i.kf)
  %i.kg = getelementptr i8, ptr %i.kd, i64 %i.ke  ; 2 uses
  %i.kh = icmp ugt i64 %i.jz, 1
  br i1 %i.kh, label %._crit_edge.thread.i.i.i, label %._crit_edge.i.i.i

._crit_edge.thread.i.i.i:                         ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbMXVmEvvZJf_5uu_dd.exit.i.i.i
  %i.ki = add i64 %i.jz, -1                       ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.kg, i8 range(i8 -35, 33) -35, i64 %i.ki, i1 false), !noalias !2290
  %i.kj = add i64 %i.ke, %i.ki                    ; 2 uses
  %scevgep.i.i.i = getelementptr i8, ptr %i.kd, i64 %i.kj
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.thread.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbMXVmEvvZJf_5uu_dd.exit.i.i.i
  %.sroa.0.0.lcssa23.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.thread.i.i.i ], [ %i.kg, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbMXVmEvvZJf_5uu_dd.exit.i.i.i ]
  %storemerge.lcssa22.i.i.i = phi i64 [ %i.kj, %._crit_edge.thread.i.i.i ], [ %i.ke, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbMXVmEvvZJf_5uu_dd.exit.i.i.i ]
  store i8 -35, ptr %.sroa.0.0.lcssa23.i.i.i, align 1, !noalias !2290
  %i.kk = add i64 %storemerge.lcssa22.i.i.i, 1
  %.pre613 = load ptr, ptr %i.az, align 8, !alias.scope !2282, !noalias !2291
  br label %_RNvMs1_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE6resizeCsbMXVmEvvZJf_5uu_dd.exit.i

_RNvMs1_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE6resizeCsbMXVmEvvZJf_5uu_dd.exit.i: ; preds = %._crit_edge.i.i.i, %_RNvCsbMXVmEvvZJf_5uu_dd15calc_loop_bsize.exit
  %i.kl = phi ptr [ %i.jl, %_RNvCsbMXVmEvvZJf_5uu_dd15calc_loop_bsize.exit ], [ %i.kd, %._crit_edge.i.i.i ]
  %i.km = phi ptr [ %i.jn, %_RNvCsbMXVmEvvZJf_5uu_dd15calc_loop_bsize.exit ], [ %.pre613, %._crit_edge.i.i.i ] ; 4 uses
  %storemerge.i.i = phi i64 [ %.sroa.05.0.i, %_RNvCsbMXVmEvvZJf_5uu_dd15calc_loop_bsize.exit ], [ %i.kk, %._crit_edge.i.i.i ] ; 7 uses
  store i64 %storemerge.i.i, ptr %i.hm, align 8, !alias.scope !2292, !noalias !2287
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2293
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 104
  %i.ko = load i8, ptr %i.kn, align 8, !range !11, !noalias !2291, !noundef !8
  %i.kp = trunc nuw i8 %i.ko to i1
  br i1 %i.kp, label %bb.bl, label %bb.cm

bb.bl:                                            ; preds = %_RNvMs1_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE6resizeCsbMXVmEvvZJf_5uu_dd.exit.i
  %i.kq = getelementptr inbounds nuw i8, ptr %i.km, i64 105
  %i.kr = load i8, ptr %i.kq, align 1, !noalias !2291, !noundef !8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2294)
  call void @llvm.experimental.noalias.scope.decl(metadata !2295)
  %i.ks = icmp sgt i64 %storemerge.i.i, -1
  call void @llvm.assume(i1 %i.ks)
  %.not121.i.i = icmp eq i64 %storemerge.i.i, 0
  br i1 %.not121.i.i, label %.sink.split.i, label %.lr.ph107.i.i

.lr.ph107.i.i:                                    ; preds = %bb.bl
  %i.kt = icmp eq i8 %i.kr, 0
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.km, i64 112
  %.pre162.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !2296
  %.pre163.i.i = load ptr, ptr %i.hl, align 8, !alias.scope !2297, !noalias !2298
  br label %bb.bm

bb.bm:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec6splice6SpliceINtNtBG_9into_iter8IntoIterhEEECsbMXVmEvvZJf_5uu_dd.exit.i.i, %.lr.ph107.i.i
  %.pre168.i.i = phi i64 [ %storemerge.i.i, %.lr.ph107.i.i ], [ %.pre168.i221.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec6splice6SpliceINtNtBG_9into_iter8IntoIterhEEECsbMXVmEvvZJf_5uu_dd.exit.i.i ] ; 9 uses
  %i.ku = phi ptr [ %.pre163.i.i, %.lr.ph107.i.i ], [ %i.ra, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec6splice6SpliceINtNtBG_9into_iter8IntoIterhEEECsbMXVmEvvZJf_5uu_dd.exit.i.i ] ; 11 uses
  %i.kv = phi i64 [ %.pre162.i.i, %.lr.ph107.i.i ], [ %i.rd, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec6splice6SpliceINtNtBG_9into_iter8IntoIterhEEECsbMXVmEvvZJf_5uu_dd.exit.i.i ]
  %.sroa.0.0106.i.i = phi i64 [ 0, %.lr.ph107.i.i ], [ %.sroa.0.1.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec6splice6SpliceINtNtBG_9into_iter8IntoIterhEEECsbMXVmEvvZJf_5uu_dd.exit.i.i ] ; 3 uses
  %.sroa.02.0105.i.i = phi i64 [ 0, %.lr.ph107.i.i ], [ %.sroa.02.1.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec6splice6SpliceINtNtBG_9into_iter8IntoIterhEEECsbMXVmEvvZJf_5uu_dd.exit.i.i ] ; 3 uses
  %.sroa.04.0104.i.i = phi i64 [ 0, %.lr.ph107.i.i ], [ %i.re, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec6splice6SpliceINtNtBG_9into_iter8IntoIterhEEECsbMXVmEvvZJf_5uu_dd.exit.i.i ] ; 11 uses
  %.sroa.011.0103.i.i = phi i64 [ 0, %.lr.ph107.i.i ], [ %.sroa.011.1.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec6splice6SpliceINtNtBG_9into_iter8IntoIterhEEECsbMXVmEvvZJf_5uu_dd.exit.i.i ] ; 2 uses
  %i.kw = ptrtoaddr ptr %i.ku to i64
  %i.kx = add i64 %.sroa.04.0104.i.i, %i.kv       ; 3 uses
  %..i.i.i106 = call noundef i64 @llvm.umin.i64(i64 %.pre168.i.i, i64 %i.kx) ; 16 uses
  %i.ky = sub i64 %..i.i.i106, %.sroa.04.0104.i.i ; 3 uses
  %i.kz = icmp ult i64 %i.kx, %.sroa.04.0104.i.i
  br i1 %i.kz, label %bb.bn, label %bb.bo, !prof !2299

._crit_edge.i.i:                                  ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec6splice6SpliceINtNtBG_9into_iter8IntoIterhEEECsbMXVmEvvZJf_5uu_dd.exit.i.i, %bb.bp
  %.sroa.011.0.lcssa.ph.i.i = phi i64 [ %.sroa.011.1.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec6splice6SpliceINtNtBG_9into_iter8IntoIterhEEECsbMXVmEvvZJf_5uu_dd.exit.i.i ], [ %.sroa.011.0103.i.i, %bb.bp ] ; 2 uses
  %.sroa.04.0.lcssa.ph.i.i = phi i64 [ %i.re, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec6splice6SpliceINtNtBG_9into_iter8IntoIterhEEECsbMXVmEvvZJf_5uu_dd.exit.i.i ], [ %.sroa.04.0104.i.i, %bb.bp ] ; 2 uses
  %.sroa.02.0.lcssa.ph.i.i = phi i64 [ %.sroa.02.1.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec6splice6SpliceINtNtBG_9into_iter8IntoIterhEEECsbMXVmEvvZJf_5uu_dd.exit.i.i ], [ %.sroa.02.0105.i.i, %bb.bp ] ; 2 uses
  %.sroa.0.0.lcssa.ph.i.i = phi i64 [ %.sroa.0.1.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec6splice6SpliceINtNtBG_9into_iter8IntoIterhEEECsbMXVmEvvZJf_5uu_dd.exit.i.i ], [ %.sroa.0.0106.i.i, %bb.bp ] ; 2 uses
  %.lcssa41.ph.i.i = phi i64 [ %.pre168.i221.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec6splice6SpliceINtNtBG_9into_iter8IntoIterhEEECsbMXVmEvvZJf_5uu_dd.exit.i.i ], [ %.pre168.i.i, %bb.bp ]
  %i.la = icmp ugt i64 %.sroa.04.0.lcssa.ph.i.i, %.lcssa41.ph.i.i
  br i1 %i.la, label %bb.cs, label %.sink.split.i

bb.bn:                                            ; preds = %bb.bm
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %.sroa.04.0104.i.i, i64 noundef %..i.i.i106, i64 noundef %.pre168.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #30, !noalias !2296
  unreachable

bb.bo:                                            ; preds = %bb.bm
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ku, i64 %.sroa.04.0104.i.i
  %i.lc = call { i64, ptr } @_RNvXs4_CsbMXVmEvvZJf_5uu_ddNtB5_5InputNtNtNtCs7tKScEop1B6_5alloc2io4read4Read4read(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull %i.lb, i64 noundef %i.ky) #27, !noalias !2296 ; 2 uses
  %i.ld = extractvalue { i64, ptr } %i.lc, 0
  %i.le = extractvalue { i64, ptr } %i.lc, 1      ; 3 uses
  %i.lf = ptrtoint ptr %i.le to i64               ; 7 uses
  %i.lg = trunc nuw i64 %i.ld to i1
  br i1 %i.lg, label %.loopexit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.lh = icmp eq ptr %i.le, null
  br i1 %i.lh, label %._crit_edge.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.li = icmp ugt i64 %i.ky, %i.lf
  br i1 %i.li, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.lj = add i64 %.sroa.0.0106.i.i, 1
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec6splice6SpliceINtNtBG_9into_iter8IntoIterhEEECsbMXVmEvvZJf_5uu_dd.exit.i.i

bb.bs:                                            ; preds = %bb.bq
  %i.lk = add i64 %.sroa.02.0105.i.i, 1
  %i.ll = sub nuw i64 %i.ky, %i.lf                ; 24 uses
  %.not.i.i.i.i = icmp slt i64 %i.ll, 0           ; 2 uses
  br i1 %i.kt, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  br i1 %.not.i.i.i.i, label %bb.by, label %bb.bu, !prof !17

bb.bu:                                            ; preds = %bb.bt
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !2300
  %i.lm = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.ll, i64 noundef range(i64 1, 17) 1) #27, !noalias !2300 ; 2 uses
  %i.ln = icmp eq ptr %i.lm, null
  br i1 %i.ln, label %bb.by, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbMXVmEvvZJf_5uu_dd.exit.i.i.i

bb.bv:                                            ; preds = %bb.bs
  br i1 %.not.i.i.i.i, label %bb.bx, label %bb.bw, !prof !17

bb.bw:                                            ; preds = %bb.bv
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !2301
  %i.lo = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ll, i64 noundef range(i64 1, 9) 1) #27, !noalias !2301 ; 3 uses
  %i.lp = icmp eq ptr %i.lo, null
  br i1 %i.lp, label %bb.bx, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbMXVmEvvZJf_5uu_dd.exit.i.i.i

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %bb.bw ], [ 0, %bb.bv ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.ll) #32, !noalias !2302
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbMXVmEvvZJf_5uu_dd.exit.i.i.i: ; preds = %bb.bw
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.lo, i8 %i.kr, i64 %i.ll, i1 false), !noalias !2302
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbMXVmEvvZJf_5uu_dd.exit.i.i.i

bb.by:                                            ; preds = %bb.bu, %bb.bt
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %bb.bu ], [ 0, %bb.bt ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.ll) #32, !noalias !2302
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbMXVmEvvZJf_5uu_dd.exit.i.i.i: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbMXVmEvvZJf_5uu_dd.exit.i.i.i, %bb.bu
  %.sroa.5.0.i.i = phi ptr [ %i.lo, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbMXVmEvvZJf_5uu_dd.exit.i.i.i ], [ %i.lm, %bb.bu ] ; 17 uses
  %.sroa.5.0.i.i1066 = ptrtoaddr ptr %.sroa.5.0.i.i to i64 ; 2 uses
  %i.lq = add i64 %.sroa.04.0104.i.i, %i.lf       ; 14 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2303)
  call void @llvm.experimental.noalias.scope.decl(metadata !2304)
  %i.lr = icmp ugt i64 %i.lq, %..i.i.i106
  br i1 %i.lr, label %bb.bz, label %_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VechE6spliceINtNtNtCs6JMX4GRUq9U_4core3ops5range5RangejEBw_ECsbMXVmEvvZJf_5uu_dd.exit.i.i, !prof !10

bb.bz:                                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbMXVmEvvZJf_5uu_dd.exit.i.i.i
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %i.lq, i64 noundef %..i.i.i106, i64 noundef range(i64 0, -9223372036854775808) %.pre168.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @203) #30, !noalias !2305
  unreachable

_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VechE6spliceINtNtNtCs6JMX4GRUq9U_4core3ops5range5RangejEBw_ECsbMXVmEvvZJf_5uu_dd.exit.i.i: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbMXVmEvvZJf_5uu_dd.exit.i.i.i
  store i64 %i.lq, ptr %i.hm, align 8, !alias.scope !2306, !noalias !2307
  %i.ls = sub nuw nsw i64 %.pre168.i.i, %..i.i.i106 ; 5 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i.i, i64 %i.ll ; 5 uses
  %.not.i.i = icmp ugt i64 %.pre168.i.i, %i.kx
  br i1 %.not.i.i, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VechE6spliceINtNtNtCs6JMX4GRUq9U_4core3ops5range5RangejEBw_ECsbMXVmEvvZJf_5uu_dd.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2308)
  call void @llvm.experimental.noalias.scope.decl(metadata !2309)
  %i.lu = load i64, ptr %i.ai, align 8, !range !18, !alias.scope !2310, !noalias !2311, !noundef !8
  %i.lv = sub nsw i64 %i.lu, %i.lq
  %i.lw = icmp ugt i64 %i.ll, %i.lv
  br i1 %i.lw, label %bb.cb, label %iter.check1109, !prof !10

bb.cb:                                            ; preds = %bb.ca
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai, i64 noundef %i.lq, i64 noundef %i.ll, i64 noundef 1, i64 noundef 1) #27, !noalias !2312
  %.pre.i.i.i.i.i.i = load i64, ptr %i.hm, align 8, !alias.scope !2313, !noalias !2311
  br label %iter.check1109

iter.check1109:                                   ; preds = %bb.cb, %bb.ca
  %i.lx = phi i64 [ %i.lq, %bb.ca ], [ %.pre.i.i.i.i.i.i, %bb.cb ] ; 7 uses
  %i.ly = load ptr, ptr %i.hl, align 8, !alias.scope !2313, !noalias !2311, !nonnull !8, !noundef !8 ; 7 uses
  %min.iters.check1093 = icmp ult i64 %i.ll, 8
  br i1 %min.iters.check1093, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.memcheck1090

vector.memcheck1090:                              ; preds = %iter.check1109
  %i.lz = ptrtoaddr ptr %i.ly to i64
  %i.ma = add i64 %i.lx, %i.lz
  %i.mb = sub i64 %.sroa.5.0.i.i1066, %i.ma
  %diff.check1091 = icmp ugt i64 %i.mb, -32
  br i1 %diff.check1091, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check1094

vector.main.loop.iter.check1094:                  ; preds = %vector.memcheck1090
  %min.iters.check1095 = icmp ult i64 %i.ll, 32
  br i1 %min.iters.check1095, label %vec.epilog.ph1113, label %vector.ph1096

vector.ph1096:                                    ; preds = %vector.main.loop.iter.check1094
  %2 = and i64 %i.ll, 24
  %n.vec1097 = and i64 %i.ll, -32                 ; 5 uses
  %3 = add i64 %i.lx, %n.vec1097                  ; 2 uses
  %4 = getelementptr i8, ptr %.sroa.5.0.i.i, i64 %n.vec1097
  %i.mc = getelementptr i8, ptr %i.ly, i64 %i.lx
  br label %vector.body1098

vector.body1098:                                  ; preds = %vector.body1098, %vector.ph1096
  %index1099 = phi i64 [ 0, %vector.ph1096 ], [ %index.next1103, %vector.body1098 ] ; 3 uses
  %next.gep1100 = getelementptr i8, ptr %.sroa.5.0.i.i, i64 %index1099 ; 2 uses
  %i.md = getelementptr i8, ptr %next.gep1100, i64 16
  %wide.load1101 = load <16 x i8>, ptr %next.gep1100, align 1, !noalias !2314
  %wide.load1102 = load <16 x i8>, ptr %i.md, align 1, !noalias !2314
  %i.me = getelementptr i8, ptr %i.mc, i64 %index1099 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  store <16 x i8> %wide.load1101, ptr %i.me, align 1, !noalias !2315
  store <16 x i8> %wide.load1102, ptr %i.mf, align 1, !noalias !2315
  %index.next1103 = add nuw i64 %index1099, 32    ; 2 uses
  %i.mg = icmp eq i64 %index.next1103, %n.vec1097
  br i1 %i.mg, label %middle.block1104, label %vector.body1098, !llvm.loop !1969

middle.block1104:                                 ; preds = %vector.body1098
  %cmp.n1105 = icmp eq i64 %i.ll, %n.vec1097
  br i1 %cmp.n1105, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i, label %vec.epilog.iter.check1111

vec.epilog.iter.check1111:                        ; preds = %middle.block1104
  %min.epilog.iters.check1112 = icmp eq i64 %2, 0
  br i1 %min.epilog.iters.check1112, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph1113, !prof !2318

vec.epilog.ph1113:                                ; preds = %vector.main.loop.iter.check1094, %vec.epilog.iter.check1111
  %vec.epilog.resume.val1106 = phi i64 [ %n.vec1097, %vec.epilog.iter.check1111 ], [ 0, %vector.main.loop.iter.check1094 ]
  %n.vec1114 = and i64 %i.ll, -8                  ; 4 uses
  %5 = add i64 %i.lx, %n.vec1114                  ; 2 uses
  %6 = getelementptr i8, ptr %.sroa.5.0.i.i, i64 %n.vec1114
  %i.mh = getelementptr i8, ptr %i.ly, i64 %i.lx
  br label %vec.epilog.vector.body1115

vec.epilog.vector.body1115:                       ; preds = %vec.epilog.vector.body1115, %vec.epilog.ph1113
  %index1116 = phi i64 [ %vec.epilog.resume.val1106, %vec.epilog.ph1113 ], [ %index.next1119, %vec.epilog.vector.body1115 ] ; 3 uses
  %next.gep1117 = getelementptr i8, ptr %.sroa.5.0.i.i, i64 %index1116
  %wide.load1118 = load <8 x i8>, ptr %next.gep1117, align 1, !noalias !2314
  %i.mi = getelementptr i8, ptr %i.mh, i64 %index1116
  store <8 x i8> %wide.load1118, ptr %i.mi, align 1, !noalias !2315
  %index.next1119 = add nuw i64 %index1116, 8     ; 2 uses
  %i.mj = icmp eq i64 %index.next1119, %n.vec1114
  br i1 %i.mj, label %vec.epilog.middle.block1120, label %vec.epilog.vector.body1115, !llvm.loop !1970

vec.epilog.middle.block1120:                      ; preds = %vec.epilog.vector.body1115
  %cmp.n1121 = icmp eq i64 %i.ll, %n.vec1114
  br i1 %cmp.n1121, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %vector.memcheck1090, %iter.check1109, %vec.epilog.iter.check1111, %vec.epilog.middle.block1120
  %.ph1127 = phi i64 [ %i.lx, %iter.check1109 ], [ %i.lx, %vector.memcheck1090 ], [ %3, %vec.epilog.iter.check1111 ], [ %5, %vec.epilog.middle.block1120 ]
  %.ph1128 = phi ptr [ %.sroa.5.0.i.i, %iter.check1109 ], [ %.sroa.5.0.i.i, %vector.memcheck1090 ], [ %4, %vec.epilog.iter.check1111 ], [ %6, %vec.epilog.middle.block1120 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.mk = phi i64 [ %i.mp, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.ph1127, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.ml = phi ptr [ %i.mn, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.ph1128, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.mm = load i8, ptr %i.ml, align 1, !noalias !2314, !noundef !8
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ml, i64 1 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ly, i64 %i.mk
  store i8 %i.mm, ptr %i.mo, align 1, !noalias !2315
  %i.mp = add i64 %i.mk, 1                        ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.mn, %i.lt
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1971

bb.cc:                                            ; preds = %_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VechE6spliceINtNtNtCs6JMX4GRUq9U_4core3ops5range5RangejEBw_ECsbMXVmEvvZJf_5uu_dd.exit.i.i
  %.not6.i.i.i.i.i = icmp samesign ult i64 %i.lq, %..i.i.i106
  br i1 %.not6.i.i.i.i.i, label %iter.check, label %.loopexit.i.i.i.i

iter.check:                                       ; preds = %bb.cc
  %min.iters.check1069 = icmp ult i64 %i.ll, 8
  br i1 %min.iters.check1069, label %.lr.ph.i.i.preheader, label %vector.memcheck1065

vector.memcheck1065:                              ; preds = %iter.check
  %i.mq = add i64 %.sroa.04.0104.i.i, %i.lf
  %i.mr = add i64 %i.mq, %i.kw
  %i.ms = sub i64 %.sroa.5.0.i.i1066, %i.mr
  %diff.check1067 = icmp ugt i64 %i.ms, -32
  br i1 %diff.check1067, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck1065
  %min.iters.check1070 = icmp ult i64 %i.ll, 32
  br i1 %min.iters.check1070, label %vec.epilog.ph, label %vector.ph1071

vector.ph1071:                                    ; preds = %vector.main.loop.iter.check
  %7 = and i64 %i.ll, 24
  %n.vec1072 = and i64 %i.ll, -32                 ; 5 uses
  %8 = add i64 %i.lq, %n.vec1072
  %9 = getelementptr i8, ptr %.sroa.5.0.i.i, i64 %n.vec1072 ; 2 uses
  %i.mt = getelementptr i8, ptr %i.ku, i64 %i.lq
  br label %vector.body1073

vector.body1073:                                  ; preds = %vector.body1073, %vector.ph1071
  %index1074 = phi i64 [ 0, %vector.ph1071 ], [ %index.next1078, %vector.body1073 ] ; 3 uses
  %next.gep1075 = getelementptr i8, ptr %.sroa.5.0.i.i, i64 %index1074 ; 2 uses
  %i.mu = getelementptr i8, ptr %next.gep1075, i64 16
  %wide.load1076 = load <16 x i8>, ptr %next.gep1075, align 1, !noalias !2319
  %wide.load1077 = load <16 x i8>, ptr %i.mu, align 1, !noalias !2319
  %i.mv = getelementptr i8, ptr %i.mt, i64 %index1074 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  store <16 x i8> %wide.load1076, ptr %i.mv, align 1, !noalias !2320
  store <16 x i8> %wide.load1077, ptr %i.mw, align 1, !noalias !2320
  %index.next1078 = add nuw i64 %index1074, 32    ; 2 uses
  %i.mx = icmp eq i64 %index.next1078, %n.vec1072
  br i1 %i.mx, label %middle.block1079, label %vector.body1073, !llvm.loop !1976

middle.block1079:                                 ; preds = %vector.body1073
  %cmp.n = icmp eq i64 %i.ll, %n.vec1072
  br i1 %cmp.n, label %.loopexit.i.i.i.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block1079
  %min.epilog.iters.check = icmp eq i64 %7, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !2318

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec1072, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1082 = and i64 %i.ll, -8                  ; 4 uses
  %10 = add i64 %i.lq, %n.vec1082
  %11 = getelementptr i8, ptr %.sroa.5.0.i.i, i64 %n.vec1082 ; 2 uses
  %i.my = getelementptr i8, ptr %i.ku, i64 %i.lq
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1083 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1086, %vec.epilog.vector.body ] ; 3 uses
  %next.gep1084 = getelementptr i8, ptr %.sroa.5.0.i.i, i64 %index1083
  %wide.load1085 = load <8 x i8>, ptr %next.gep1084, align 1, !noalias !2319
  %i.mz = getelementptr i8, ptr %i.my, i64 %index1083
  store <8 x i8> %wide.load1085, ptr %i.mz, align 1, !noalias !2320
  %index.next1086 = add nuw i64 %index1083, 8     ; 2 uses
  %i.na = icmp eq i64 %index.next1086, %n.vec1082
  br i1 %i.na, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1977

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1087 = icmp eq i64 %i.ll, %n.vec1082
  br i1 %cmp.n1087, label %.loopexit.i.i.i.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck1065, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.03.i.i.i96.i.i.ph = phi i64 [ %i.lq, %iter.check ], [ %i.lq, %vector.memcheck1065 ], [ %8, %vec.epilog.iter.check ], [ %10, %vec.epilog.middle.block ] ; 4 uses
  %.ph1126 = phi ptr [ %.sroa.5.0.i.i, %iter.check ], [ %.sroa.5.0.i.i, %vector.memcheck1065 ], [ %9, %vec.epilog.iter.check ], [ %11, %vec.epilog.middle.block ] ; 2 uses
  %i.nb = sub i64 %..i.i.i106, %.sroa.01.03.i.i.i96.i.i.ph
  %xtraiter = and i64 %i.nb, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.01.03.i.i.i96.i.i.prol = phi i64 [ %i.nf, %.lr.ph.i.i.prol ], [ %.sroa.01.03.i.i.i96.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.nc = phi ptr [ %i.nd, %.lr.ph.i.i.prol ], [ %.ph1126, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 1 ; 3 uses
  %i.ne = load i8, ptr %i.nc, align 1, !noalias !2319, !noundef !8
  %i.nf = add i64 %.sroa.01.03.i.i.i96.i.i.prol, 1 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ku, i64 %.sroa.01.03.i.i.i96.i.i.prol
  store i8 %i.ne, ptr %i.ng, align 1, !noalias !2320
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1978

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa1143.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.nd, %.lr.ph.i.i.prol ]
  %.sroa.01.03.i.i.i96.i.i.unr = phi i64 [ %.sroa.01.03.i.i.i96.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.nf, %.lr.ph.i.i.prol ]
  %.unr = phi ptr [ %.ph1126, %.lr.ph.i.i.preheader ], [ %i.nd, %.lr.ph.i.i.prol ]
  %i.nh = sub i64 %.sroa.01.03.i.i.i96.i.i.ph, %..i.i.i106
  %i.ni = icmp ugt i64 %i.nh, -4
  br i1 %i.ni, label %.loopexit.i.i.i.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.01.03.i.i.i96.i.i = phi i64 [ %i.nx, %.lr.ph.i.i ], [ %.sroa.01.03.i.i.i96.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %i.nj = phi ptr [ %i.nv, %.lr.ph.i.i ], [ %.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 1
  %i.nl = load i8, ptr %i.nj, align 1, !noalias !2319, !noundef !8
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ku, i64 %.sroa.01.03.i.i.i96.i.i
  store i8 %i.nl, ptr %i.nm, align 1, !noalias !2320
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nj, i64 2
  %i.no = load i8, ptr %i.nk, align 1, !noalias !2319, !noundef !8
  %i.np = getelementptr i8, ptr %i.ku, i64 %.sroa.01.03.i.i.i96.i.i
  %i.nq = getelementptr i8, ptr %i.np, i64 1
  store i8 %i.no, ptr %i.nq, align 1, !noalias !2320
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nj, i64 3
  %i.ns = load i8, ptr %i.nn, align 1, !noalias !2319, !noundef !8
  %i.nt = getelementptr i8, ptr %i.ku, i64 %.sroa.01.03.i.i.i96.i.i
  %i.nu = getelementptr i8, ptr %i.nt, i64 2
  store i8 %i.ns, ptr %i.nu, align 1, !noalias !2320
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nj, i64 4 ; 2 uses
  %i.nw = load i8, ptr %i.nr, align 1, !noalias !2319, !noundef !8
  %i.nx = add i64 %.sroa.01.03.i.i.i96.i.i, 4     ; 2 uses
  %i.ny = getelementptr i8, ptr %i.ku, i64 %.sroa.01.03.i.i.i96.i.i
  %i.nz = getelementptr i8, ptr %i.ny, i64 3
  store i8 %i.nw, ptr %i.nz, align 1, !noalias !2320
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %i.nx, %..i.i.i106
  br i1 %exitcond.not.i.i.i.i.i.3, label %.loopexit.i.i.i.loopexit.i, label %.lr.ph.i.i, !llvm.loop !1979

.loopexit.i.i.i.loopexit.i:                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block1079
  %.lcssa898 = phi ptr [ %11, %vec.epilog.middle.block ], [ %9, %middle.block1079 ], [ %.lcssa1143.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.nv, %.lr.ph.i.i ]
  store i64 %..i.i.i106, ptr %i.hm, align 8, !alias.scope !2297, !noalias !2321
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %.loopexit.i.i.i.loopexit.i, %bb.cc
  %i.oa = phi i64 [ %i.lq, %bb.cc ], [ %..i.i.i106, %.loopexit.i.i.i.loopexit.i ] ; 2 uses
  %.val18.i.i.i.i = phi ptr [ %.sroa.5.0.i.i, %bb.cc ], [ %.lcssa898, %.loopexit.i.i.i.loopexit.i ] ; 8 uses
  %i.ob = ptrtoint ptr %i.lt to i64               ; 3 uses
  %i.oc = ptrtoint ptr %.val18.i.i.i.i to i64     ; 6 uses
  %i.od = sub nuw i64 %i.ob, %i.oc                ; 4 uses
  %.not.i.i23.i.i = icmp eq ptr %i.lt, %.val18.i.i.i.i
  br i1 %.not.i.i23.i.i, label %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.thread.i.i.i, label %bb.cf

_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.loopexit.i.i.i.i: ; preds = %.lr.ph100.i.i
  store i64 %i.oo, ptr %i.hm, align 8, !alias.scope !2297, !noalias !2322
  %.pre.i.i.i.i = ptrtoint ptr %i.pt to i64       ; 2 uses
  %.pre10.i.i.i = sub nuw i64 %i.ob, %.pre.i.i.i.i
  br label %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.i.i.i

_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.i.i.i: ; preds = %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.loopexit.i.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %i.od, %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i ], [ %.pre10.i.i.i, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.loopexit.i.i.i.i ] ; 3 uses
  %i.oe = phi i64 [ %.promoted97.i.i, %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i ], [ %i.oo, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.loopexit.i.i.i.i ]
  %.pre-phi.i.i.i.i = phi i64 [ %i.oc, %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i ], [ %.pre.i.i.i.i, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.loopexit.i.i.i.i ]
  %.val.i.i.i29.i.i.i.i = phi ptr [ %.val18.i.i.i.i, %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i ], [ %i.pt, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.loopexit.i.i.i.i ]
  %.not.i.i.i.i.i.i.i.i = icmp slt i64 %.pre-phi.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ce, label %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.thread.i.i.i, !prof !2323

_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.thread.i.i.i: ; preds = %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.i.i.i, %.loopexit.i.i.i.i
  %i.of = phi ptr [ %i.op, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.i.i.i ], [ %i.ku, %.loopexit.i.i.i.i ] ; 2 uses
  %.val.i.i.i29.i39.i.i.i = phi ptr [ %.val.i.i.i29.i.i.i.i, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.i.i.i ], [ %.val18.i.i.i.i, %.loopexit.i.i.i.i ] ; 2 uses
  %i.og = phi i64 [ %i.oo, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.i.i.i ], [ %..i.i.i106, %.loopexit.i.i.i.i ] ; 6 uses
  %.pre-phi.i38.i.i.i = phi i64 [ %.pre-phi.i.i.i.i, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.i.i.i ], [ %i.oc, %.loopexit.i.i.i.i ]
  %i.oh = phi i64 [ %i.oe, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.i.i.i ], [ %i.oa, %.loopexit.i.i.i.i ] ; 3 uses
  %.pre-phi36.i.i.i = phi i64 [ %.pre-phi.i.i.i, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.i.i.i ], [ 0, %.loopexit.i.i.i.i ] ; 10 uses
  %i.oi = icmp eq ptr %i.lt, %.val.i.i.i29.i39.i.i.i
  br i1 %i.oi, label %.loopexit.i.i.i, label %bb.cd

bb.cd:                                            ; preds = %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.thread.i.i.i
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !2324
  %i.oj = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.pre-phi36.i.i.i, i64 noundef range(i64 1, 9) 1) #27, !noalias !2324 ; 6 uses
  %i.ok = icmp eq ptr %i.oj, null
  br i1 %i.ok, label %bb.ce, label %bb.ch

bb.ce:                                            ; preds = %bb.cd, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.i.i.i
  %.pre-phi37.i.i.i = phi i64 [ %.pre-phi36.i.i.i, %bb.cd ], [ %.pre-phi.i.i.i, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.i.i.i ]
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 1, %bb.cd ], [ 0, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.i.i.i ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %.pre-phi37.i.i.i) #32, !noalias !2325
  unreachable

bb.cf:                                            ; preds = %.loopexit.i.i.i.i
  %i.ol = load i64, ptr %i.ai, align 8, !range !18, !alias.scope !2297, !noalias !2326, !noundef !8
  %i.om = sub nsw i64 %i.ol, %.pre168.i.i
  %i.on = icmp ugt i64 %i.od, %i.om
  br i1 %i.on, label %bb.cg, label %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i, !prof !10

bb.cg:                                            ; preds = %bb.cf
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai, i64 noundef %.pre168.i.i, i64 noundef %i.od, i64 noundef 1, i64 noundef 1) #27, !noalias !2327
  %.pre164.i.i = load i64, ptr %i.hm, align 8, !alias.scope !2297, !noalias !2322
  br label %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i

_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i: ; preds = %bb.cg, %bb.cf
  %.promoted97.i.i = phi i64 [ %.pre164.i.i, %bb.cg ], [ %i.oa, %bb.cf ] ; 8 uses
  %i.oo = add i64 %i.od, %..i.i.i106              ; 7 uses
  %i.op = load ptr, ptr %i.hl, align 8, !alias.scope !2297, !noalias !2326, !nonnull !8, !noundef !8 ; 7 uses
  %i.oq = ptrtoaddr ptr %i.op to i64
  %i.or = getelementptr inbounds nuw i8, ptr %i.op, i64 %..i.i.i106
  %i.os = getelementptr inbounds nuw i8, ptr %i.op, i64 %i.oo
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.os, ptr nonnull align 1 %i.or, i64 %i.ls, i1 false), !noalias !2328
  %.not6.i31.i.i.i.i = icmp ult i64 %.promoted97.i.i, %i.oo
  br i1 %.not6.i31.i.i.i.i, label %.lr.ph100.i.i.preheader, label %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.i.i.i

.lr.ph100.i.i.preheader:                          ; preds = %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i
  %i.ot = ptrtoaddr ptr %.sroa.5.0.i.i to i64     ; 2 uses
  %i.ou = shl i64 %..i.i.i106, 1
  %i.ov = add i64 %i.ou, %i.ot
  %i.ow = xor i64 %.promoted97.i.i, -1
  %i.ox = add i64 %i.ov, %i.ow
  %i.oy = add i64 %.sroa.04.0104.i.i, %i.lf
  %i.oz = add i64 %i.oy, %i.oc
  %i.pa = sub i64 %i.ox, %i.oz
  %i.pb = add i64 %..i.i.i106, %i.ot
  %i.pc = xor i64 %.sroa.04.0104.i.i, -1
  %i.pd = add i64 %i.pb, %i.pc
  %i.pe = add i64 %i.lf, %i.oc
  %i.pf = sub i64 %i.pd, %i.pe
  %i.pg = call i64 @llvm.umin.i64(i64 %i.pa, i64 %i.pf)
  %i.ph = add i64 %i.pg, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.ph, 33
  br i1 %min.iters.check, label %.lr.ph100.i.i.preheader1124, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph100.i.i.preheader
  %i.pi = add i64 %.promoted97.i.i, %i.oq
  %i.pj = sub i64 %i.oc, %i.pi
  %diff.check = icmp ugt i64 %i.pj, -32
  br i1 %diff.check, label %.lr.ph100.i.i.preheader1124, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.pk = and i64 %i.ph, 31                       ; 2 uses
  %i.pl = icmp eq i64 %i.pk, 0
  %i.pm = select i1 %i.pl, i64 32, i64 %i.pk
  %n.vec = sub i64 %i.ph, %i.pm                   ; 3 uses
  %12 = add i64 %.promoted97.i.i, %n.vec
  %13 = getelementptr i8, ptr %.val18.i.i.i.i, i64 %n.vec
  %i.pn = getelementptr i8, ptr %i.op, i64 %.promoted97.i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.val18.i.i.i.i, i64 %index ; 2 uses
  %i.po = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !noalias !2329
  %wide.load1063 = load <16 x i8>, ptr %i.po, align 1, !noalias !2329
  %i.pp = getelementptr i8, ptr %i.pn, i64 %index ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 16
  store <16 x i8> %wide.load, ptr %i.pp, align 1, !noalias !2330
  store <16 x i8> %wide.load1063, ptr %i.pq, align 1, !noalias !2330
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.pr = icmp eq i64 %index.next, %n.vec
  br i1 %i.pr, label %.lr.ph100.i.i.preheader1124, label %vector.body, !llvm.loop !1994

.lr.ph100.i.i.preheader1124:                      ; preds = %vector.body, %vector.memcheck, %.lr.ph100.i.i.preheader
  %.sroa.01.03.i35.i.i99.i.i.ph = phi i64 [ %.promoted97.i.i, %vector.memcheck ], [ %.promoted97.i.i, %.lr.ph100.i.i.preheader ], [ %12, %vector.body ]
  %.ph1125 = phi ptr [ %.val18.i.i.i.i, %vector.memcheck ], [ %.val18.i.i.i.i, %.lr.ph100.i.i.preheader ], [ %13, %vector.body ]
  br label %.lr.ph100.i.i

.lr.ph.i33.i.i.i.i:                               ; preds = %.lr.ph100.i.i
  %.not.not.i36.i.i.i.i = icmp eq ptr %i.pt, %i.lt
  br i1 %.not.not.i36.i.i.i.i, label %.loopexit.i.i.i, label %.lr.ph100.i.i, !llvm.loop !1995

.lr.ph100.i.i:                                    ; preds = %.lr.ph100.i.i.preheader1124, %.lr.ph.i33.i.i.i.i
  %.sroa.01.03.i35.i.i99.i.i = phi i64 [ %i.pv, %.lr.ph.i33.i.i.i.i ], [ %.sroa.01.03.i35.i.i99.i.i.ph, %.lr.ph100.i.i.preheader1124 ] ; 2 uses
  %i.ps = phi ptr [ %i.pt, %.lr.ph.i33.i.i.i.i ], [ %.ph1125, %.lr.ph100.i.i.preheader1124 ] ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 1 ; 4 uses
  %i.pu = load i8, ptr %i.ps, align 1, !noalias !2329, !noundef !8
  %i.pv = add i64 %.sroa.01.03.i35.i.i99.i.i, 1   ; 3 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.op, i64 %.sroa.01.03.i35.i.i99.i.i
  store i8 %i.pu, ptr %i.pw, align 1, !noalias !2330
  %exitcond.not.i37.i.i.i.i = icmp eq i64 %i.pv, %i.oo
  br i1 %exitcond.not.i37.i.i.i.i, label %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.loopexit.i.i.i.i, label %.lr.ph.i33.i.i.i.i

bb.ch:                                            ; preds = %bb.cd
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.oj, ptr nonnull align 1 %.val.i.i.i29.i39.i.i.i, i64 %.pre-phi36.i.i.i, i1 false), !noalias !2331
  %i.px = getelementptr inbounds nuw i8, ptr %i.oj, i64 %.pre-phi36.i.i.i
  %.not14.i.i.i.i = icmp eq i64 %.pre-phi.i38.i.i.i, %i.ob
  br i1 %.not14.i.i.i.i, label %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i, label %bb.ci

_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i.loopexit: ; preds = %.lr.ph, %.lr.ph.i42.i.i.i.i, %.lr.ph.i42.i.i.i.i.preheader
  %.pre.i.i21.i.ph = phi i64 [ %.promoted, %.lr.ph.i42.i.i.i.i.preheader ], [ %i.qe, %.lr.ph ], [ %i.qp, %.lr.ph.i42.i.i.i.i ] ; 2 uses
  store i64 %.pre.i.i21.i.ph, ptr %i.hm, align 8
  br label %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i

_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i: ; preds = %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i.loopexit, %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit39.i.i.i.i, %bb.ch
  %.pre.i.i21.i = phi i64 [ %i.oh, %bb.ch ], [ %.promoted, %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit39.i.i.i.i ], [ %.pre.i.i21.i.ph, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i.loopexit ]
  %i.py = phi ptr [ %i.of, %bb.ch ], [ %i.qf, %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit39.i.i.i.i ], [ %i.qf, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i.loopexit ]
  %i.pz = phi i64 [ %i.og, %bb.ch ], [ %i.qe, %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit39.i.i.i.i ], [ %i.qe, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i.loopexit ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.oj, i64 noundef %.pre-phi36.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !2332
  br label %.loopexit.i.i.i

bb.ci:                                            ; preds = %bb.ch
  %i.qa = add i64 %i.og, %i.ls                    ; 2 uses
  %i.qb = load i64, ptr %i.ai, align 8, !range !18, !alias.scope !2297, !noalias !2333, !noundef !8
  %i.qc = sub i64 %i.qb, %i.qa
  %i.qd = icmp ugt i64 %.pre-phi36.i.i.i, %i.qc
  br i1 %i.qd, label %bb.cj, label %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit39.i.i.i.i, !prof !10

bb.cj:                                            ; preds = %bb.ci
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai, i64 noundef %i.qa, i64 noundef %.pre-phi36.i.i.i, i64 noundef 1, i64 noundef 1) #27, !noalias !2334
  %.pre165.i.i = load i64, ptr %i.hm, align 8, !alias.scope !2297, !noalias !2335
  br label %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit39.i.i.i.i

_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit39.i.i.i.i: ; preds = %bb.cj, %bb.ci
  %.promoted = phi i64 [ %.pre165.i.i, %bb.cj ], [ %i.oh, %bb.ci ] ; 6 uses
  %i.qe = add i64 %.pre-phi36.i.i.i, %i.og        ; 6 uses
  %i.qf = load ptr, ptr %i.hl, align 8, !alias.scope !2297, !noalias !2333, !nonnull !8, !noundef !8 ; 5 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 %i.og
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qf, i64 %i.qe
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.qh, ptr nonnull align 1 %i.qg, i64 %i.ls, i1 false), !noalias !2336
  %.not6.i40.i.i.i.i = icmp ult i64 %.promoted, %i.qe
  br i1 %.not6.i40.i.i.i.i, label %.lr.ph.i42.i.i.i.i.preheader, label %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i

.lr.ph.i42.i.i.i.i.preheader:                     ; preds = %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit39.i.i.i.i
  %.not.not.i45.i.i.i.i426 = icmp samesign eq i64 %.pre-phi36.i.i.i, 0
  br i1 %.not.not.i45.i.i.i.i426, label %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.i42.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.qf, i64 %.promoted
  %i.qi = add nsw i64 %.pre-phi36.i.i.i, -1       ; 2 uses
  %i.qj = add i64 %i.qi, %i.og
  %i.qk = sub i64 %i.qj, %.promoted
  %umin = call i64 @llvm.umin.i64(i64 %i.qk, i64 %i.qi)
  %i.ql = add nuw nsw i64 %umin, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, ptr noundef nonnull align 1 dereferenceable(1) %i.oj, i64 %i.ql, i1 false), !noalias !2337
  br label %.lr.ph

.lr.ph.i42.i.i.i.i:                               ; preds = %.lr.ph
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qn, i64 1 ; 2 uses
  %.not.not.i45.i.i.i.i = icmp eq ptr %i.qm, %i.px
  br i1 %.not.not.i45.i.i.i.i, label %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph.i42.i.i.i.i
  %i.qn = phi ptr [ %i.qm, %.lr.ph.i42.i.i.i.i ], [ %i.oj, %.lr.ph.preheader ]
  %i.qo = phi i64 [ %i.qp, %.lr.ph.i42.i.i.i.i ], [ %.promoted, %.lr.ph.preheader ]
  %i.qp = add i64 %i.qo, 1                        ; 3 uses
  %exitcond.not.i46.i.i.i.i = icmp eq i64 %i.qp, %i.qe
  br i1 %exitcond.not.i46.i.i.i.i, label %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i.loopexit, label %.lr.ph.i42.i.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i33.i.i.i.i, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.thread.i.i.i
  %i.qq = phi ptr [ %i.py, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i ], [ %i.of, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.thread.i.i.i ], [ %i.op, %.lr.ph.i33.i.i.i.i ]
  %i.qr = phi i64 [ %i.pz, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i ], [ %i.og, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.thread.i.i.i ], [ %i.oo, %.lr.ph.i33.i.i.i.i ] ; 2 uses
  %i.qs = phi i64 [ %.pre.i.i21.i, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i ], [ %i.oh, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.thread.i.i.i ], [ %i.pv, %.lr.ph.i33.i.i.i.i ] ; 4 uses
  %i.qt = icmp sgt i64 %i.qs, -1
  call void @llvm.assume(i1 %i.qt)
  %.not3.i.i.i.i.i.i.i = icmp eq i64 %i.qr, %i.qs
  br i1 %.not3.i.i.i.i.i.i.i, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cl, %.loopexit.i.i.i
  %i.qu = phi ptr [ %i.qw, %bb.cl ], [ %i.qq, %.loopexit.i.i.i ]
  %i.qv = add nuw i64 %i.qs, %i.ls
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i

bb.cl:                                            ; preds = %.loopexit.i.i.i
  %i.qw = load ptr, ptr %i.hl, align 8, !alias.scope !2297, !noalias !2338, !nonnull !8, !noundef !8 ; 3 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 %i.qr
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qw, i64 %i.qs
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.qy, ptr nonnull align 1 %i.qx, i64 %i.ls, i1 false), !noalias !2339
  br label %bb.ck

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block1104, %vec.epilog.middle.block1120, %bb.ck
  %i.qz = phi ptr [ %i.qu, %bb.ck ], [ %i.ly, %middle.block1104 ], [ %i.ly, %vec.epilog.middle.block1120 ], [ %i.ly, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %storemerge31.i.i = phi i64 [ %i.qv, %bb.ck ], [ %3, %middle.block1104 ], [ %5, %vec.epilog.middle.block1120 ], [ %i.mp, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  store i64 %storemerge31.i.i, ptr %i.hm, align 8, !alias.scope !2297, !noalias !2340
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.i.i, i64 noundef %i.ll, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !2341
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec6splice6SpliceINtNtBG_9into_iter8IntoIterhEEECsbMXVmEvvZJf_5uu_dd.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec6splice6SpliceINtNtBG_9into_iter8IntoIterhEEECsbMXVmEvvZJf_5uu_dd.exit.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i, %bb.br
  %.pre168.i221.i = phi i64 [ %.pre168.i.i, %bb.br ], [ %storemerge31.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i ] ; 4 uses
  %i.ra = phi ptr [ %i.ku, %bb.br ], [ %i.qz, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i ]
  %.sroa.02.1.i.i = phi i64 [ %.sroa.02.0105.i.i, %bb.br ], [ %i.lk, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i ] ; 2 uses
  %.sroa.0.1.i.i = phi i64 [ %i.lj, %bb.br ], [ %.sroa.0.0106.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i ] ; 2 uses
  %.sroa.011.1.i.i = add i64 %.sroa.011.0103.i.i, %i.lf ; 2 uses
  %i.rb = load ptr, ptr %i.az, align 8, !alias.scope !2342, !noalias !2296, !nonnull !8, !align !13, !noundef !8
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 112
  %i.rd = load i64, ptr %i.rc, align 8, !noalias !2296, !noundef !8 ; 2 uses
  %i.re = add i64 %i.rd, %.sroa.04.0104.i.i       ; 3 uses
  %i.rf = icmp sgt i64 %.pre168.i221.i, -1
  call void @llvm.assume(i1 %i.rf)
  %i.rg = icmp ult i64 %i.re, %.pre168.i221.i
  br i1 %i.rg, label %bb.bm, label %._crit_edge.i.i

bb.cm:                                            ; preds = %_RNvMs1_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE6resizeCsbMXVmEvvZJf_5uu_dd.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2343)
  %i.rh = getelementptr inbounds nuw i8, ptr %i.km, i64 112
  %i.ri = load i64, ptr %i.rh, align 8, !noalias !2344, !noundef !8 ; 2 uses
  %i.rj = icmp eq i64 %i.ri, 0
  br i1 %i.rj, label %bb.cn, label %bb.co, !prof !10

bb.cn:                                            ; preds = %bb.cm
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @3, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #30, !noalias !2344
  unreachable

bb.co:                                            ; preds = %bb.cm
  %i.rk = icmp eq i64 %storemerge.i.i, 0
  br i1 %i.rk, label %.sink.split.i, label %_RNvXs1f_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.i.i

_RNvXs1f_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.i.i: ; preds = %bb.co, %bb.cr
  %.sroa.0.041.i.i = phi i64 [ %i.rz, %bb.cr ], [ 0, %bb.co ] ; 2 uses
  %.sroa.04.040.i.i = phi i64 [ %i.ry, %bb.cr ], [ 0, %bb.co ] ; 2 uses
  %.sroa.0.02439.i.i = phi ptr [ %i.rl, %bb.cr ], [ %i.kl, %bb.co ] ; 2 uses
  %.sroa.6.038.i.i = phi i64 [ %i.rm, %bb.cr ], [ %storemerge.i.i, %bb.co ] ; 2 uses
  %..i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ri, i64 %.sroa.6.038.i.i) ; 3 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %.sroa.0.02439.i.i, i64 %..i.i.i.i
  %i.rm = sub nuw i64 %.sroa.6.038.i.i, %..i.i.i.i ; 2 uses
  %i.rn = call { i64, ptr } @_RNvXs4_CsbMXVmEvvZJf_5uu_ddNtB5_5InputNtNtNtCs7tKScEop1B6_5alloc2io4read4Read4read(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull %.sroa.0.02439.i.i, i64 noundef %..i.i.i.i) #27, !noalias !2345 ; 2 uses
  %i.ro = extractvalue { i64, ptr } %i.rn, 0
  %i.rp = extractvalue { i64, ptr } %i.rn, 1      ; 3 uses
  %i.rq = ptrtoint ptr %i.rp to i64               ; 3 uses
  %i.rr = trunc nuw i64 %i.ro to i1
  br i1 %i.rr, label %.loopexit, label %bb.cp

_RNvXs1f_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i: ; preds = %bb.cr, %bb.cq
  %.sroa.0.032.i.i = phi i64 [ %.sroa.0.041.i.i, %bb.cq ], [ %i.rz, %bb.cr ] ; 2 uses
  %.sroa.04.1.i.i = phi i64 [ %i.rx, %bb.cq ], [ %i.ry, %bb.cr ] ; 4 uses
  %.sroa.02.0.i.i = phi i64 [ %spec.select21.i.i, %bb.cq ], [ 0, %bb.cr ] ; 2 uses
  %i.rs = icmp ugt i64 %.sroa.04.1.i.i, %storemerge.i.i
  br i1 %i.rs, label %bb.cs, label %.sink.split.i

bb.cp:                                            ; preds = %_RNvXs1f_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.i.i
  %i.rt = load ptr, ptr %i.az, align 8, !alias.scope !2346, !noalias !2345, !nonnull !8, !align !13, !noundef !8
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 112
  %i.rv = load i64, ptr %i.ru, align 8, !noalias !2345, !noundef !8
  %i.rw = icmp eq i64 %i.rv, %i.rq
  br i1 %i.rw, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %.not20.i.i = icmp ne ptr %i.rp, null
  %i.rx = add i64 %.sroa.04.040.i.i, %i.rq
  %spec.select21.i.i = zext i1 %.not20.i.i to i64
  br label %_RNvXs1f_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i

bb.cr:                                            ; preds = %bb.cp
  %i.ry = add i64 %.sroa.04.040.i.i, %i.rq        ; 2 uses
  %i.rz = add i64 %.sroa.0.041.i.i, 1             ; 2 uses
  %i.sa = icmp eq i64 %i.rm, 0
  br i1 %i.sa, label %_RNvXs1f_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i, label %_RNvXs1f_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.i.i

.sink.split.i:                                    ; preds = %_RNvXs1f_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i, %bb.co, %._crit_edge.i.i, %bb.bl
  %.sroa.04.0.lcssa203.i.sink.i = phi i64 [ 0, %bb.bl ], [ %.sroa.04.0.lcssa.ph.i.i, %._crit_edge.i.i ], [ %.sroa.04.1.i.i, %_RNvXs1f_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i ], [ 0, %bb.co ]
  %.sroa.535.0.ph.sink.ph.i = phi i64 [ 0, %bb.bl ], [ %.sroa.0.0.lcssa.ph.i.i, %._crit_edge.i.i ], [ %.sroa.0.032.i.i, %_RNvXs1f_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i ], [ 0, %bb.co ]
  %.sroa.936.0.ph.sink.ph.i = phi i64 [ 0, %bb.bl ], [ %.sroa.02.0.lcssa.ph.i.i, %._crit_edge.i.i ], [ %.sroa.02.0.i.i, %_RNvXs1f_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i ], [ 0, %bb.co ]
  %.sroa.1137.0.ph.sink.ph.i = phi i64 [ 0, %bb.bl ], [ %.sroa.011.0.lcssa.ph.i.i, %._crit_edge.i.i ], [ %.sroa.04.1.i.i, %_RNvXs1f_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i ], [ 0, %bb.co ]
  store i64 %.sroa.04.0.lcssa203.i.sink.i, ptr %i.hm, align 8, !alias.scope !2283, !noalias !2287
  br label %bb.cs

bb.cs:                                            ; preds = %.sink.split.i, %_RNvXs1f_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i, %._crit_edge.i.i
  %.sroa.535.0.ph.sink.i = phi i64 [ %.sroa.0.032.i.i, %_RNvXs1f_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i ], [ %.sroa.0.0.lcssa.ph.i.i, %._crit_edge.i.i ], [ %.sroa.535.0.ph.sink.ph.i, %.sink.split.i ] ; 3 uses
  %.sroa.936.0.ph.sink.i = phi i64 [ %.sroa.02.0.i.i, %_RNvXs1f_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i ], [ %.sroa.02.0.lcssa.ph.i.i, %._crit_edge.i.i ], [ %.sroa.936.0.ph.sink.ph.i, %.sink.split.i ] ; 3 uses
  %.sroa.1137.0.ph.sink.i = phi i64 [ %.sroa.04.1.i.i, %_RNvXs1f_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i ], [ %.sroa.011.0.lcssa.ph.i.i, %._crit_edge.i.i ], [ %.sroa.1137.0.ph.sink.ph.i, %.sink.split.i ] ; 3 uses
  %i.sb = inttoptr i64 %.sroa.535.0.ph.sink.i to ptr
  store ptr %i.sb, ptr %i.l, align 8, !noalias !2293
  store i64 %.sroa.936.0.ph.sink.i, ptr %.sroa.412.0..sroa_idx.i, align 8, !noalias !2293
  store i64 %.sroa.1137.0.ph.sink.i, ptr %.sroa.412.sroa.4.0..sroa.412.0..sroa_idx.sroa_idx.i, align 8, !noalias !2293
  store i32 0, ptr %.sroa.412.sroa.5.0..sroa.412.0..sroa_idx.sroa_idx.i, align 8, !noalias !2293
  %i.sc = icmp eq i64 %.sroa.535.0.ph.sink.i, 0
end_hunk_0
