Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_mem_engine-7de41b043a674665.polars_mem_engine.a996911dcb712385-cgu.10?download=true
inline.NumInlined: 3075
inline.NumDeleted: 1348
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE20disconnect_receiversCseyIfFeUOWMb_17polars_mem_engine:bb.a

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !18199
  %i.bf = load i64, ptr %i.be, align 8, !dbg !18199, !range !2776, !invariant.load !14, !noalias !18186 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 0, !dbg !18203
  br i1 %i.bg, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseyIfFeUOWMb_17polars_mem_engine.exit.i, label %bb.s, !dbg !18203

bb.s:                                             ; preds = %bb.r
  %i.bh = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !18199
  %i.bi = load i64, ptr %i.bh, align 8, !dbg !18204, !range !1155, !invariant.load !14, !noalias !18186
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.bf, i64 noundef range(i64 1, 536870913) %i.bi) #34, !dbg !18207, !noalias !18186
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseyIfFeUOWMb_17polars_mem_engine.exit.i, !dbg !18212

bb.t:                                             ; preds = %bb.q
  %i.bj = landingpad { ptr, i32 }
          cleanup
  %i.bk = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !18213
  %i.bl = load i64, ptr %i.bk, align 8, !dbg !18213, !range !2776, !invariant.load !14, !noalias !18186 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 0, !dbg !18217
  br i1 %i.bm, label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDNtNtCscgRAwXFJnXP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseyIfFeUOWMb_17polars_mem_engine.exit4.i.i.i, label %bb.u, !dbg !18217

bb.u:                                             ; preds = %bb.t
  %i.bn = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !18213
  %i.bo = load i64, ptr %i.bn, align 8, !dbg !18218, !range !1155, !invariant.load !14, !noalias !18186
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.bl, i64 noundef range(i64 1, 536870913) %i.bo) #34, !dbg !18221, !noalias !18186
  br label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDNtNtCscgRAwXFJnXP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseyIfFeUOWMb_17polars_mem_engine.exit4.i.i.i, !dbg !18226

_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDNtNtCscgRAwXFJnXP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseyIfFeUOWMb_17polars_mem_engine.exit4.i.i.i: ; preds = %bb.u, %bb.t
  resume { ptr, i32 } %i.bj, !dbg !18197

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseyIfFeUOWMb_17polars_mem_engine.exit.i: ; preds = %bb.s, %bb.r, %bb.o, %bb.n, %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockINtNtCscgRAwXFJnXP_4core6result6ResultIBU_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtBY_3any3AnyNtNtBY_6marker4SendEL_EEE9wait_nextCseyIfFeUOWMb_17polars_mem_engine.exit.i
  %.sroa.011.2.i = phi ptr [ %i.am, %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockINtNtCscgRAwXFJnXP_4core6result6ResultIBU_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtBY_3any3AnyNtNtBY_6marker4SendEL_EEE9wait_nextCseyIfFeUOWMb_17polars_mem_engine.exit.i ], [ %.sroa.011.148.i, %bb.n ], [ %.sroa.011.148.i, %bb.o ], [ %.sroa.011.148.i, %bb.r ], [ %.sroa.011.148.i, %bb.s ], !dbg !18227 ; 2 uses
  %i.bp = add i64 %.sroa.05.049.i, 2, !dbg !18228 ; 3 uses
  %i.bq = lshr i64 %i.bp, 1, !dbg !18076          ; 2 uses
  %.not.i = icmp eq i64 %i.bq, %i.o, !dbg !18076
  br i1 %.not.i, label %._crit_edge52.i, label %.lr.ph51.i, !dbg !18076

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE20discard_all_messagesCseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %._crit_edge52.i, %bb.g
  %i.br = and i64 %.sroa.05.0.lcssa.i, -2, !dbg !18231
  store atomic i64 %i.br, ptr %0 release, align 128, !dbg !18232
  br label %bb.v, !dbg !18237

bb.v:                                             ; preds = %bb.a, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE20discard_all_messagesCseyIfFeUOWMb_17polars_mem_engine.exit
  ret i1 %i.d, !dbg !18238
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE4sendCseyIfFeUOWMb_17polars_mem_engine(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(72) %2, i64 %3, i32 noundef range(i32 0, 1000000001) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !18239 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.5 = alloca [64 x i8], align 8            ; 10 uses
  %.sroa.6 = alloca [64 x i8], align 8            ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 128, !dbg !18240 ; 5 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 128, !dbg !18251, !noalias !18253 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 136, !dbg !18256 ; 5 uses
  %i.g = load atomic ptr, ptr %i.f acquire, align 8, !dbg !18264, !noalias !18253
  %i.h = and i64 %i.e, 1, !dbg !18266
  %i.i = icmp eq i64 %i.h, 0, !dbg !18266
  br i1 %i.i, label %.lr.ph.lr.ph.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE10start_sendCseyIfFeUOWMb_17polars_mem_engine.exit.thread, !dbg !18266

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE10start_sendCseyIfFeUOWMb_17polars_mem_engine.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6), !dbg !18269
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !18270
  %.sroa.016.0.copyload36 = load i64, ptr %2, align 8, !dbg !18270
  %.sroa.5.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !18270
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx37, i64 64, i1 false), !dbg !18270
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE5writeCseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !18271

.lr.ph.lr.ph.i:                                   ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %.lr.ph.i, !dbg !18266

.lr.ph.i:                                         ; preds = %.outer.backedge.i, %.lr.ph.lr.ph.i
  %.sroa.03.0.ph80.i = phi i64 [ %i.e, %.lr.ph.lr.ph.i ], [ %i.am, %.outer.backedge.i ] ; 2 uses
  %.sroa.07.0.ph79.i = phi ptr [ %i.g, %.lr.ph.lr.ph.i ], [ %i.an, %.outer.backedge.i ]
  %.sroa.0.0.ph78.i = phi i32 [ 0, %.lr.ph.lr.ph.i ], [ %.sroa.0.0.ph.be.i, %.outer.backedge.i ] ; 2 uses
  %.sroa.037.0.ph77.i = phi ptr [ null, %.lr.ph.lr.ph.i ], [ %.sroa.037.0.ph.be.i, %.outer.backedge.i ] ; 4 uses
  %i.k = lshr exact i64 %.sroa.03.0.ph80.i, 1, !dbg !18274
  %i.l = and i64 %i.k, 31, !dbg !18274            ; 2 uses
  %i.m = icmp eq i64 %i.l, 31, !dbg !18275
  br i1 %i.m, label %.lr.ph, label %._crit_edge, !dbg !18275

bb.b:                                             ; preds = %.loopexit.i
  %i.n = add i32 %.sroa.0.073.i77, 1, !dbg !18277 ; 2 uses
  %i.o = lshr exact i64 %i.v, 1, !dbg !18274
  %i.p = and i64 %i.o, 31, !dbg !18274            ; 2 uses
  %i.q = icmp eq i64 %i.p, 31, !dbg !18275
  br i1 %i.q, label %.lr.ph, label %._crit_edge, !dbg !18275

.lr.ph:                                           ; preds = %.lr.ph.i, %bb.b
  %.sroa.0.073.i77 = phi i32 [ %i.n, %bb.b ], [ %.sroa.0.0.ph78.i, %.lr.ph.i ] ; 6 uses
  %i.r = icmp ult i32 %.sroa.0.073.i77, 7, !dbg !18279
  br i1 %i.r, label %bb.d, label %bb.c, !dbg !18279

bb.c:                                             ; preds = %.lr.ph
  invoke void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now()
          to label %.loopexit.i unwind label %.loopexit58.i, !dbg !18280, !noalias !18253

bb.d:                                             ; preds = %.lr.ph
  %.not.i.i = icmp eq i32 %.sroa.0.073.i77, 0, !dbg !18281
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader, !dbg !18285

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %i.s = mul nuw i32 %.sroa.0.073.i77, %.sroa.0.073.i77, !dbg !18286 ; 2 uses
  %xtraiter = and i32 %i.s, 7, !dbg !18285        ; 3 uses
  %i.t = icmp ult i32 %.sroa.0.073.i77, 3, !dbg !18285
  br i1 %i.t, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new, !dbg !18285

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.s, 56, !dbg !18285
  br label %.lr.ph.i.i, !dbg !18285

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !dbg !18288, !noalias !18253
  tail call void @llvm.x86.sse2.pause(), !dbg !18288, !noalias !18253
  tail call void @llvm.x86.sse2.pause(), !dbg !18288, !noalias !18253
  tail call void @llvm.x86.sse2.pause(), !dbg !18288, !noalias !18253
  tail call void @llvm.x86.sse2.pause(), !dbg !18288, !noalias !18253
  tail call void @llvm.x86.sse2.pause(), !dbg !18288, !noalias !18253
  tail call void @llvm.x86.sse2.pause(), !dbg !18288, !noalias !18253
  tail call void @llvm.x86.sse2.pause(), !dbg !18288, !noalias !18253
  %niter.next.7 = add i32 %niter, 8, !dbg !18285  ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter, !dbg !18285
  br i1 %niter.ncmp.7, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !dbg !18285

._crit_edge:                                      ; preds = %bb.b, %.lr.ph.i
  %.sroa.03.075.i.lcssa = phi i64 [ %.sroa.03.0.ph80.i, %.lr.ph.i ], [ %i.v, %bb.b ] ; 2 uses
  %.sroa.07.074.i.lcssa = phi ptr [ %.sroa.07.0.ph79.i, %.lr.ph.i ], [ %i.w, %bb.b ] ; 2 uses
  %.sroa.0.073.i.lcssa = phi i32 [ %.sroa.0.0.ph78.i, %.lr.ph.i ], [ %i.n, %bb.b ] ; 6 uses
  %.lcssa54 = phi i64 [ %i.l, %.lr.ph.i ], [ %i.p, %bb.b ], !dbg !18274 ; 2 uses
  %i.u = icmp eq i64 %.lcssa54, 30, !dbg !18291   ; 2 uses
  %.not.i = icmp eq ptr %.sroa.037.0.ph77.i, null
  %or.cond.i = select i1 %i.u, i1 %.not.i, i1 false, !dbg !18291
  br i1 %or.cond.i, label %bb.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultIB2o_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEIB13_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEEECseyIfFeUOWMb_17polars_mem_engine.exit.i, !dbg !18291

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !18285
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.lr.ph.i.i.epil.preheader, !dbg !18285

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod185 = icmp ne i32 %xtraiter, 0, !dbg !18285
  tail call void @llvm.assume(i1 %lcmp.mod185), !dbg !18285
  br label %.lr.ph.i.i.epil, !dbg !18285

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !18288, !noalias !18253
  %epil.iter.next = add i32 %epil.iter, 1, !dbg !18285 ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter, !dbg !18285
  br i1 %epil.iter.cmp.not, label %.loopexit.i, label %.lr.ph.i.i.epil, !dbg !18285, !llvm.loop !18292

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.d, %bb.c
  %i.v = load atomic i64, ptr %i.d acquire, align 128, !dbg !18293, !noalias !18253 ; 3 uses
  %i.w = load atomic ptr, ptr %i.f acquire, align 8, !dbg !18296, !noalias !18253
  %i.x = and i64 %i.v, 1, !dbg !18266
  %i.y = icmp eq i64 %i.x, 0, !dbg !18266
  br i1 %i.y, label %bb.b, label %.outer._crit_edge.i, !dbg !18266

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultIB2o_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEIB13_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEEECseyIfFeUOWMb_17polars_mem_engine.exit.i: ; preds = %bb.e, %._crit_edge
  %.sroa.037.2.i = phi ptr [ %.sroa.037.0.ph77.i, %._crit_edge ], [ %i.aa, %bb.e ], !dbg !18299 ; 9 uses
  %i.z = icmp eq ptr %.sroa.07.074.i.lcssa, null, !dbg !18300
  br i1 %i.z, label %bb.f, label %bb.k, !dbg !18300

bb.e:                                             ; preds = %._crit_edge
  %i.aa = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockINtNtCscgRAwXFJnXP_4core6result6ResultIB1t_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEIBx_DNtNtB1x_3any3AnyNtNtB1x_6marker4SendEL_EEEE13new_zeroed_inCseyIfFeUOWMb_17polars_mem_engine()
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultIB2o_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEIB13_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEEECseyIfFeUOWMb_17polars_mem_engine.exit.i unwind label %.body.loopexit, !dbg !18301

bb.f:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultIB2o_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEIB13_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEEECseyIfFeUOWMb_17polars_mem_engine.exit.i
  %i.ab = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockINtNtCscgRAwXFJnXP_4core6result6ResultIB1t_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEIBx_DNtNtB1x_3any3AnyNtNtB1x_6marker4SendEL_EEEE13new_zeroed_inCseyIfFeUOWMb_17polars_mem_engine()
          to label %bb.g unwind label %.loopexit.split-lp.i, !dbg !18306, !noalias !18253 ; 5 uses

bb.g:                                             ; preds = %bb.f
  %i.ac = cmpxchg ptr %i.f, ptr null, ptr %i.ab release monotonic, align 8, !dbg !18310, !noalias !18253
  %i.ad = extractvalue { ptr, i1 } %i.ac, 1, !dbg !18310
  br i1 %i.ad, label %bb.h, label %bb.i, !dbg !18316

bb.h:                                             ; preds = %bb.g
  store atomic ptr %i.ab, ptr %i.j release, align 8, !dbg !18317, !noalias !18253
  br label %bb.k, !dbg !18322

bb.i:                                             ; preds = %bb.g
  %i.ae = icmp eq ptr %.sroa.037.2.i, null, !dbg !18323
  br i1 %i.ae, label %.outer.backedge.i, label %bb.j, !dbg !18323

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.037.2.i, i64 noundef 2488, i64 noundef 8) #34, !dbg !18326, !noalias !18253
  br label %.outer.backedge.i, !dbg !18323

bb.k:                                             ; preds = %bb.h, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultIB2o_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEIB13_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEEECseyIfFeUOWMb_17polars_mem_engine.exit.i
  %.sroa.07.1.i = phi ptr [ %.sroa.07.074.i.lcssa, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultIB2o_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEIB13_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEEECseyIfFeUOWMb_17polars_mem_engine.exit.i ], [ %i.ab, %bb.h ], !dbg !18333 ; 3 uses
  %i.af = add i64 %.sroa.03.075.i.lcssa, 2, !dbg !18334
  %i.ag = cmpxchg weak ptr %i.d, i64 %.sroa.03.075.i.lcssa, i64 %i.af seq_cst acquire, align 8, !dbg !18335, !noalias !18253
  %i.ah = extractvalue { i64, i1 } %i.ag, 1, !dbg !18335
  br i1 %i.ah, label %bb.m, label %bb.l, !dbg !18341

bb.l:                                             ; preds = %bb.k
  %.sroa.0.0.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.073.i.lcssa, i32 6), !dbg !18342 ; 2 uses
  %5 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i, !dbg !18347 ; 2 uses
  %.not.i26.i = icmp eq i32 %.sroa.0.073.i.lcssa, 0, !dbg !18350
  br i1 %.not.i26.i, label %.outer.backedge.i, label %.lr.ph.i27.i.preheader, !dbg !18359

.lr.ph.i27.i.preheader:                           ; preds = %bb.l
  %xtraiter186 = and i32 %5, 5, !dbg !18359       ; 3 uses
  %i.ai = icmp ult i32 %.sroa.0.073.i.lcssa, 3, !dbg !18359
  br i1 %i.ai, label %.lr.ph.i27.i.epil.preheader, label %.lr.ph.i27.i.preheader.new, !dbg !18359

.lr.ph.i27.i.preheader.new:                       ; preds = %.lr.ph.i27.i.preheader
  %unroll_iter190 = and i32 %5, 56, !dbg !18359
  br label %.lr.ph.i27.i, !dbg !18359

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i27.i
  %lcmp.mod188.not = icmp eq i32 %xtraiter186, 0, !dbg !18359
  br i1 %lcmp.mod188.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i27.i.epil.preheader, !dbg !18359

.lr.ph.i27.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i27.i.preheader
  %lcmp.mod189 = icmp ne i32 %xtraiter186, 0, !dbg !18359
  tail call void @llvm.assume(i1 %lcmp.mod189), !dbg !18359
  br label %.lr.ph.i27.i.epil, !dbg !18359

.lr.ph.i27.i.epil:                                ; preds = %.lr.ph.i27.i.epil, %.lr.ph.i27.i.epil.preheader
  %epil.iter187 = phi i32 [ 0, %.lr.ph.i27.i.epil.preheader ], [ %epil.iter187.next, %.lr.ph.i27.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !18360, !noalias !18253
  %epil.iter187.next = add i32 %epil.iter187, 1, !dbg !18359 ; 2 uses
  %epil.iter187.cmp.not = icmp eq i32 %epil.iter187.next, %xtraiter186, !dbg !18359
  br i1 %epil.iter187.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i27.i.epil, !dbg !18359, !llvm.loop !18365

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i27.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.aj = add i32 %.sroa.0.073.i.lcssa, 1, !dbg !18366
  br label %.outer.backedge.i, !dbg !18367

.lr.ph.i27.i:                                     ; preds = %.lr.ph.i27.i, %.lr.ph.i27.i.preheader.new
  %niter191 = phi i32 [ 0, %.lr.ph.i27.i.preheader.new ], [ %niter191.next.7, %.lr.ph.i27.i ]
  tail call void @llvm.x86.sse2.pause(), !dbg !18360, !noalias !18253
  tail call void @llvm.x86.sse2.pause(), !dbg !18360, !noalias !18253
  tail call void @llvm.x86.sse2.pause(), !dbg !18360, !noalias !18253
  tail call void @llvm.x86.sse2.pause(), !dbg !18360, !noalias !18253
  tail call void @llvm.x86.sse2.pause(), !dbg !18360, !noalias !18253
  tail call void @llvm.x86.sse2.pause(), !dbg !18360, !noalias !18253
  tail call void @llvm.x86.sse2.pause(), !dbg !18360, !noalias !18253
  tail call void @llvm.x86.sse2.pause(), !dbg !18360, !noalias !18253
  %niter191.next.7 = add i32 %niter191, 8, !dbg !18359 ; 2 uses
  %niter191.ncmp.7 = icmp eq i32 %niter191.next.7, %unroll_iter190, !dbg !18359
  br i1 %niter191.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i27.i, !dbg !18359

bb.m:                                             ; preds = %bb.k
  br i1 %i.u, label %bb.n, label %.outer._crit_edge.i, !dbg !18370

bb.n:                                             ; preds = %bb.m
  %.not16.i = icmp eq ptr %.sroa.037.2.i, null, !dbg !18371
  br i1 %.not16.i, label %bb.o, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE10start_sendCseyIfFeUOWMb_17polars_mem_engine.exit.thread39, !dbg !18374, !prof !864

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #40
          to label %.noexc5 unwind label %.body.loopexit.split-lp, !dbg !18375

.noexc5:                                          ; preds = %bb.o
  unreachable

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE10start_sendCseyIfFeUOWMb_17polars_mem_engine.exit.thread39: ; preds = %bb.n
  store atomic ptr %.sroa.037.2.i, ptr %i.f release, align 8, !dbg !18376, !noalias !18253
  %i.ak = atomicrmw add ptr %i.d, i64 2 release, align 8, !dbg !18380, !noalias !18253 ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i, i64 2480, !dbg !18385
  store atomic ptr %.sroa.037.2.i, ptr %i.al release, align 8, !dbg !18386, !noalias !18253
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6), !dbg !18269
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !18270
  %.sroa.016.0.copyload42 = load i64, ptr %2, align 8, !dbg !18270
  %.sroa.5.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !18270
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx43, i64 64, i1 false), !dbg !18270
  br label %bb.r, !dbg !18271

.outer.backedge.i:                                ; preds = %._crit_edge.loopexit.i.i, %bb.l, %bb.j, %bb.i
  %.sroa.037.0.ph.be.i = phi ptr [ %i.ab, %bb.j ], [ %i.ab, %bb.i ], [ %.sroa.037.2.i, %bb.l ], [ %.sroa.037.2.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.sroa.0.0.ph.be.i = phi i32 [ %.sroa.0.073.i.lcssa, %bb.j ], [ %.sroa.0.073.i.lcssa, %bb.i ], [ 1, %bb.l ], [ %i.aj, %._crit_edge.loopexit.i.i ]
  %i.am = load atomic i64, ptr %i.d acquire, align 128, !dbg !18389, !noalias !18253 ; 2 uses
  %i.an = load atomic ptr, ptr %i.f acquire, align 8, !dbg !18392, !noalias !18253
  %i.ao = and i64 %i.am, 1, !dbg !18266
  %i.ap = icmp eq i64 %i.ao, 0, !dbg !18266
  br i1 %i.ap, label %.lr.ph.i, label %.outer._crit_edge.i, !dbg !18266

.loopexit58.i:                                    ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp.i:                             ; preds = %bb.f
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp.i, %.loopexit58.i
  %.sroa.037.1.ph.i = phi ptr [ %.sroa.037.0.ph77.i, %.loopexit58.i ], [ %.sroa.037.2.i, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit58.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %i.aq = icmp eq ptr %.sroa.037.1.ph.i, null, !dbg !18394
  br i1 %i.aq, label %.body.thread, label %.thread49.i, !dbg !18394

.thread49.i:                                      ; preds = %bb.p
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.037.1.ph.i, i64 noundef 2488, i64 noundef 8) #34, !dbg !18396, !noalias !18253
  br label %.body.thread, !dbg !18394

.outer._crit_edge.i:                              ; preds = %.outer.backedge.i, %.loopexit.i, %bb.m
  %.sroa.9.0 = phi i64 [ %.lcssa54, %bb.m ], [ 0, %.loopexit.i ], [ 0, %.outer.backedge.i ], !dbg !18403
  %.sroa.412.0 = phi ptr [ %.sroa.07.1.i, %bb.m ], [ null, %.loopexit.i ], [ null, %.outer.backedge.i ], !dbg !18404 ; 2 uses
  %.sroa.037.3.i = phi ptr [ %.sroa.037.2.i, %bb.m ], [ %.sroa.037.0.ph77.i, %.loopexit.i ], [ %.sroa.037.0.ph.be.i, %.outer.backedge.i ], !dbg !18299 ; 2 uses
  %i.ar = icmp eq ptr %.sroa.037.3.i, null, !dbg !18405
  br i1 %i.ar, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE10start_sendCseyIfFeUOWMb_17polars_mem_engine.exit, label %bb.q, !dbg !18405

bb.q:                                             ; preds = %.outer._crit_edge.i
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.037.3.i, i64 noundef 2488, i64 noundef 8) #34, !dbg !18407, !noalias !18253
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE10start_sendCseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !18405

.body.loopexit:                                   ; preds = %bb.e
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.loopexit.split-lp:                          ; preds = %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE10start_sendCseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %bb.q, %.outer._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6), !dbg !18269
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !18270
  %.sroa.016.0.copyload = load i64, ptr %2, align 8, !dbg !18270 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !18270
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx, i64 64, i1 false), !dbg !18270
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18414), !dbg !18417
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18418), !dbg !18417
  %i.as = icmp eq ptr %.sroa.412.0, null, !dbg !18271
  br i1 %i.as, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE5writeCseyIfFeUOWMb_17polars_mem_engine.exit, label %bb.r, !dbg !18271

bb.r:                                             ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE10start_sendCseyIfFeUOWMb_17polars_mem_engine.exit.thread39, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE10start_sendCseyIfFeUOWMb_17polars_mem_engine.exit
  %.sroa.016.0.copyload46 = phi i64 [ %.sroa.016.0.copyload42, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE10start_sendCseyIfFeUOWMb_17polars_mem_engine.exit.thread39 ], [ %.sroa.016.0.copyload, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE10start_sendCseyIfFeUOWMb_17polars_mem_engine.exit ]
  %.sroa.412.145 = phi ptr [ %.sroa.07.1.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE10start_sendCseyIfFeUOWMb_17polars_mem_engine.exit.thread39 ], [ %.sroa.412.0, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE10start_sendCseyIfFeUOWMb_17polars_mem_engine.exit ]
  %.sroa.9.144 = phi i64 [ 30, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE10start_sendCseyIfFeUOWMb_17polars_mem_engine.exit.thread39 ], [ %.sroa.9.0, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE10start_sendCseyIfFeUOWMb_17polars_mem_engine.exit ] ; 2 uses
  %i.at = icmp samesign ult i64 %.sroa.9.144, 31, !dbg !18420
  tail call void @llvm.assume(i1 %i.at), !dbg !18427
  %i.au = getelementptr inbounds nuw [80 x i8], ptr %.sroa.412.145, i64 %.sroa.9.144, !dbg !18428 ; 3 uses
  store i64 %.sroa.016.0.copyload46, ptr %i.au, align 8, !dbg !18429, !noalias !18414
  %.sroa.5.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.au, i64 8, !dbg !18429
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx18, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5, i64 64, i1 false), !dbg !18429, !noalias !18414
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 72, !dbg !18435
  %i.aw = atomicrmw or ptr %i.av, i64 1 release, align 8, !dbg !18442, !noalias !18445 ; 0 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !18446 ; 3 uses
  %i.ay = load atomic i8, ptr %i.ax seq_cst, align 8, !dbg !18453, !noalias !18445
  %i.az = icmp eq i8 %i.ay, 0, !dbg !18456
  br i1 %i.az, label %.noexc6, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE5writeCseyIfFeUOWMb_17polars_mem_engine.exit.thread, !dbg !18456

.noexc6:                                          ; preds = %bb.r
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 256, !dbg !18457
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !18458, !noalias !18445
  call void @_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.ba), !dbg !18459
  call void @llvm.experimental.noalias.scope.decl(metadata !18460), !dbg !18463
  %i.bb = load i64, ptr %i.c, align 8, !dbg !18464, !range !1049, !alias.scope !18460, !noalias !18466, !noundef !14
  %i.bc = trunc nuw i64 %i.bb to i1, !dbg !18468
  br i1 %i.bc, label %bb.s, label %bb.x, !dbg !18468, !prof !864

bb.s:                                             ; preds = %.noexc6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18469, !noalias !18470
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !18469
  %i.be = load ptr, ptr %i.bd, align 8, !dbg !18469, !alias.scope !18460, !noalias !18466, !nonnull !14, !align !1153, !noundef !14
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !18469
  %i.bg = load i8, ptr %i.bf, align 8, !dbg !18469, !range !5209, !alias.scope !18460, !noalias !18466, !noundef !14
  store ptr %i.be, ptr %i.a, align 8, !dbg !18469, !noalias !18470
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !18469
  store i8 %i.bg, ptr %i.bh, align 8, !dbg !18469, !noalias !18470
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @28, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #40
          to label %bb.u unwind label %bb.t, !dbg !18471, !noalias !18472

bb.t:                                             ; preds = %bb.s
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsh8eZTKRCwoO_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtNtBL_4mpmc5waker5WakerEEECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #38
          to label %.body.thread27 unwind label %bb.v, !dbg !18473, !noalias !18472

bb.u:                                             ; preds = %bb.s
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !18474, !noalias !18472
  unreachable, !dbg !18474

bb.w:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i, %bb.af, %.noexc5.i.i, %bb.ad, %.lr.ph.i.preheader.i.i.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc5waker5WakerEECseyIfFeUOWMb_17polars_mem_engine(ptr nonnull %i.bm, i8 %i.bo) #38
          to label %.body.thread27 unwind label %bb.an, !dbg !18475, !noalias !18445

bb.x:                                             ; preds = %.noexc6
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !18476
  %i.bm = load ptr, ptr %i.bl, align 8, !dbg !18476, !alias.scope !18460, !noalias !18466, !nonnull !14, !align !1153, !noundef !14 ; 8 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !18476
  %i.bo = load i8, ptr %i.bn, align 8, !dbg !18476, !range !5209, !alias.scope !18460, !noalias !18466, !noundef !14 ; 2 uses
  %i.bp = trunc nuw i8 %i.bo to i1, !dbg !18476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !18477, !noalias !18445
  %i.bq = load atomic i8, ptr %i.ax seq_cst, align 8, !dbg !18478, !noalias !18445
  %i.br = icmp eq i8 %i.bq, 0, !dbg !18482
  br i1 %i.br, label %bb.y, label %bb.aj, !dbg !18482

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !18483, !noalias !18445
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 8, !dbg !18484 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18489), !dbg !18492
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 24, !dbg !18493 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !dbg !18493, !alias.scope !18489, !noalias !18500, !noundef !14 ; 4 uses
  %i.bv = icmp ult i64 %i.bu, 384307168202282326, !dbg !18502
  call void @llvm.assume(i1 %i.bv), !dbg !18504
  %i.bw = icmp eq i64 %i.bu, 0, !dbg !18505
  br i1 %i.bw, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i, label %.lr.ph.i.preheader.i.i.i, !dbg !18505

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.y
  %i.bx = invoke noundef i64 @_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyhE4withNCNvNtNtNtBa_4sync4mpmc5waker17current_thread_id0jECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @48)
          to label %.noexc.i.i unwind label %bb.w, !dbg !18506, !noalias !18445

.noexc.i.i:                                       ; preds = %.lr.ph.i.preheader.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bm, i64 16, !dbg !18509
  %i.bz = load ptr, ptr %i.by, align 8, !dbg !18509, !alias.scope !18489, !noalias !18500, !nonnull !14, !noundef !14 ; 2 uses
  %.idx.i.i.i = mul nuw nsw i64 %i.bu, 24, !dbg !18523
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.idx.i.i.i, !dbg !18523
  br label %.lr.ph.i.i.i.i, !dbg !18532

.lr.ph.i.i.i.i:                                   ; preds = %_RNCNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i.i, %.noexc.i.i
  %.sroa.02.012.i.i.i.i = phi i64 [ %i.cv, %_RNCNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i.i ], [ 0, %.noexc.i.i ] ; 3 uses
  %i.cb = phi ptr [ %i.cc, %_RNCNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i.i ], [ %i.bz, %.noexc.i.i ] ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24, !dbg !18542 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18549), !dbg !18552
  %i.cd = load ptr, ptr %i.cb, align 8, !dbg !18553, !alias.scope !18549, !noalias !18562, !nonnull !14, !noundef !14 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 40, !dbg !18566
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !18566, !noalias !18567, !noundef !14
  %.not.i.i.i.i.i = icmp eq i64 %i.cf, %i.bx, !dbg !18532
  br i1 %.not.i.i.i.i.i, label %_RNCNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i.i, label %bb.z, !dbg !18532

bb.z:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 8, !dbg !18568
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !18568, !alias.scope !18549, !noalias !18562, !noundef !14
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 24, !dbg !18569
  %i.cj = cmpxchg ptr %i.ci, i64 0, i64 %i.ch acq_rel acquire, align 8, !dbg !18574, !noalias !18567
  %i.ck = extractvalue { i64, i1 } %i.cj, 1, !dbg !18574
  br i1 %i.ck, label %bb.aa, label %_RNCNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i.i, !dbg !18576

bb.aa:                                            ; preds = %bb.z
end_hunk_0
begin_hunk_1_@_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE4sendCseyIfFeUOWMb_17polars_mem_engine:bb.a
  store i64 %.sroa.016.0.copyload38, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !18718
  br label %bb.aq, !dbg !18721

bb.ap:                                            ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE5writeCseyIfFeUOWMb_17polars_mem_engine.exit.thread, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE5writeCseyIfFeUOWMb_17polars_mem_engine.exit
  store i64 2, ptr %0, align 8, !dbg !18722
  br label %bb.aq, !dbg !18724

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !18725
  ret void, !dbg !18726

.body.thread27:                                   ; preds = %bb.w, %bb.t, %.body.thread
  %eh.lpad-body25 = phi { ptr, i32 } [ %eh.lpad-body26, %.body.thread ], [ %i.bk, %bb.w ], [ %i.bi, %bb.t ]
  resume { ptr, i32 } %eh.lpad-body25, !dbg !18727

.body.thread:                                     ; preds = %.body.loopexit, %.body.loopexit.split-lp, %.thread49.i, %bb.p
  %eh.lpad-body26 = phi { ptr, i32 } [ %lpad.phi.i, %.thread49.i ], [ %lpad.phi.i, %bb.p ], [ %lpad.loopexit, %.body.loopexit ], [ %lpad.loopexit.split-lp, %.body.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef align 8 dereferenceable(72) %2) #38
          to label %.body.thread27 unwind label %bb.ar, !dbg !18728

bb.ar:                                            ; preds = %.body.thread
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !18727
  unreachable, !dbg !18727
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE8try_recvCseyIfFeUOWMb_17polars_mem_engine(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull align 128 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !18729 {
bb.a:
  %.sroa.416 = alloca [64 x i8], align 8          ; 2 uses
  %i.a = load atomic i64, ptr %1 acquire, align 128, !dbg !18730, !noalias !18738
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18741 ; 3 uses
  %i.c = load atomic ptr, ptr %i.b acquire, align 8, !dbg !18749, !noalias !18738
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 128
  br label %bb.b, !dbg !18751

bb.b:                                             ; preds = %.backedge.i, %bb.a
  %.sroa.0.037.i = phi i32 [ 0, %bb.a ], [ %.sroa.0.037.be.i, %.backedge.i ], !dbg !18753 ; 16 uses
  %.sroa.012.0.i = phi ptr [ %i.c, %bb.a ], [ %i.m, %.backedge.i ], !dbg !18754 ; 7 uses
  %.sroa.07.0.i = phi i64 [ %i.a, %bb.a ], [ %i.l, %.backedge.i ], !dbg !18756 ; 5 uses
  %i.e = lshr i64 %.sroa.07.0.i, 1, !dbg !18758   ; 2 uses
  %i.f = and i64 %i.e, 31, !dbg !18758            ; 5 uses
  %i.g = icmp eq i64 %i.f, 31, !dbg !18759
  br i1 %i.g, label %bb.c, label %bb.f, !dbg !18759

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ult i32 %.sroa.0.037.i, 7, !dbg !18761
  br i1 %i.h, label %bb.e, label %bb.d, !dbg !18761

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now(), !dbg !18763, !noalias !18738
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, !dbg !18763

bb.e:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i32 %.sroa.0.037.i, 0, !dbg !18764
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader, !dbg !18768

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.i = mul nuw i32 %.sroa.0.037.i, %.sroa.0.037.i, !dbg !18769 ; 2 uses
  %xtraiter69 = and i32 %i.i, 7, !dbg !18768      ; 3 uses
  %i.j = icmp ult i32 %.sroa.0.037.i, 3, !dbg !18768
  br i1 %i.j, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new, !dbg !18768

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter73 = and i32 %i.i, 56, !dbg !18768
  br label %.lr.ph.i.i, !dbg !18768

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter74 = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter74.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !dbg !18771, !noalias !18738
  tail call void @llvm.x86.sse2.pause(), !dbg !18771, !noalias !18738
  tail call void @llvm.x86.sse2.pause(), !dbg !18771, !noalias !18738
  tail call void @llvm.x86.sse2.pause(), !dbg !18771, !noalias !18738
  tail call void @llvm.x86.sse2.pause(), !dbg !18771, !noalias !18738
  tail call void @llvm.x86.sse2.pause(), !dbg !18771, !noalias !18738
  tail call void @llvm.x86.sse2.pause(), !dbg !18771, !noalias !18738
  tail call void @llvm.x86.sse2.pause(), !dbg !18771, !noalias !18738
  %niter74.next.7 = add i32 %niter74, 8, !dbg !18768 ; 2 uses
  %niter74.ncmp.7 = icmp eq i32 %niter74.next.7, %unroll_iter73, !dbg !18768
  br i1 %niter74.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !dbg !18768

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod71.not = icmp eq i32 %xtraiter69, 0, !dbg !18768
  br i1 %lcmp.mod71.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader, !dbg !18768

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod72 = icmp ne i32 %xtraiter69, 0, !dbg !18768
  tail call void @llvm.assume(i1 %lcmp.mod72), !dbg !18768
  br label %.lr.ph.i.i.epil, !dbg !18768

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter70 = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter70.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !18771, !noalias !18738
  %epil.iter70.next = add i32 %epil.iter70, 1, !dbg !18768 ; 2 uses
  %epil.iter70.cmp.not = icmp eq i32 %epil.iter70.next, %xtraiter69, !dbg !18768
  br i1 %epil.iter70.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !dbg !18768, !llvm.loop !18774

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.e, %bb.d
  %i.k = add i32 %.sroa.0.037.i, 1, !dbg !18775
  br label %.backedge.i, !dbg !18776

.backedge.i:                                      ; preds = %._crit_edge.loopexit.i.i, %bb.o, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.037.be.i = phi i32 [ %i.k, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ %i.aa, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i ], [ %i.ae, %._crit_edge.loopexit.i.i ], [ 1, %bb.o ]
  %i.l = load atomic i64, ptr %1 acquire, align 128, !dbg !18778, !noalias !18738
  %i.m = load atomic ptr, ptr %i.b acquire, align 8, !dbg !18781, !noalias !18738
  br label %bb.b, !dbg !18758

bb.f:                                             ; preds = %bb.b
  %i.n = add i64 %.sroa.07.0.i, 2, !dbg !18783    ; 2 uses
  %i.o = and i64 %.sroa.07.0.i, 1, !dbg !18784
  %i.p = icmp eq i64 %i.o, 0, !dbg !18784
  br i1 %i.p, label %bb.g, label %bb.j, !dbg !18784

bb.g:                                             ; preds = %bb.f
  fence seq_cst, !dbg !18786
  %i.q = load atomic i64, ptr %i.d monotonic, align 128, !dbg !18788, !noalias !18738 ; 3 uses
  %i.r = lshr i64 %i.q, 1, !dbg !18791
  %i.s = icmp eq i64 %i.e, %i.r, !dbg !18793
  br i1 %i.s, label %bb.i, label %bb.h, !dbg !18793

bb.h:                                             ; preds = %bb.g
  %.not.unshifted.i = xor i64 %i.q, %.sroa.07.0.i, !dbg !18794
  %.not.i = icmp ugt i64 %.not.unshifted.i, 63, !dbg !18794
  %i.t = zext i1 %.not.i to i64, !dbg !18794
  %spec.select.i = or disjoint i64 %i.n, %i.t, !dbg !18794
  br label %bb.j, !dbg !18794

bb.i:                                             ; preds = %bb.g
  %i.u = and i64 %i.q, 1, !dbg !18795
  %i.v = icmp eq i64 %i.u, 0, !dbg !18795
  br i1 %i.v, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE10start_recvCseyIfFeUOWMb_17polars_mem_engine.exit, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE4readCseyIfFeUOWMb_17polars_mem_engine.exit.thread, !dbg !18795

bb.j:                                             ; preds = %bb.h, %bb.f
  %.sroa.01.0.i = phi i64 [ %i.n, %bb.f ], [ %spec.select.i, %bb.h ], !dbg !18796 ; 2 uses
  %i.w = icmp eq ptr %.sroa.012.0.i, null, !dbg !18797
  br i1 %i.w, label %bb.k, label %bb.n, !dbg !18797

bb.k:                                             ; preds = %bb.j
  %i.x = icmp ult i32 %.sroa.0.037.i, 7, !dbg !18798
  br i1 %i.x, label %bb.m, label %bb.l, !dbg !18798

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now(), !dbg !18800, !noalias !18738
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, !dbg !18800

bb.m:                                             ; preds = %bb.k
  %.not.i18.i = icmp eq i32 %.sroa.0.037.i, 0, !dbg !18801
  br i1 %.not.i18.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i19.i.preheader, !dbg !18805

.lr.ph.i19.i.preheader:                           ; preds = %bb.m
  %i.y = mul nuw i32 %.sroa.0.037.i, %.sroa.0.037.i, !dbg !18806 ; 2 uses
  %xtraiter63 = and i32 %i.y, 7, !dbg !18805      ; 3 uses
  %i.z = icmp ult i32 %.sroa.0.037.i, 3, !dbg !18805
  br i1 %i.z, label %.lr.ph.i19.i.epil.preheader, label %.lr.ph.i19.i.preheader.new, !dbg !18805

.lr.ph.i19.i.preheader.new:                       ; preds = %.lr.ph.i19.i.preheader
  %unroll_iter67 = and i32 %i.y, 56, !dbg !18805
  br label %.lr.ph.i19.i, !dbg !18805

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i, %.lr.ph.i19.i.preheader.new
  %niter68 = phi i32 [ 0, %.lr.ph.i19.i.preheader.new ], [ %niter68.next.7, %.lr.ph.i19.i ]
  tail call void @llvm.x86.sse2.pause(), !dbg !18808, !noalias !18738
  tail call void @llvm.x86.sse2.pause(), !dbg !18808, !noalias !18738
  tail call void @llvm.x86.sse2.pause(), !dbg !18808, !noalias !18738
  tail call void @llvm.x86.sse2.pause(), !dbg !18808, !noalias !18738
  tail call void @llvm.x86.sse2.pause(), !dbg !18808, !noalias !18738
  tail call void @llvm.x86.sse2.pause(), !dbg !18808, !noalias !18738
  tail call void @llvm.x86.sse2.pause(), !dbg !18808, !noalias !18738
  tail call void @llvm.x86.sse2.pause(), !dbg !18808, !noalias !18738
  %niter68.next.7 = add i32 %niter68, 8, !dbg !18805 ; 2 uses
  %niter68.ncmp.7 = icmp eq i32 %niter68.next.7, %unroll_iter67, !dbg !18805
  br i1 %niter68.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa, label %.lr.ph.i19.i, !dbg !18805

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i19.i
  %lcmp.mod65.not = icmp eq i32 %xtraiter63, 0, !dbg !18805
  br i1 %lcmp.mod65.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i19.i.epil.preheader, !dbg !18805

.lr.ph.i19.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa, %.lr.ph.i19.i.preheader
  %lcmp.mod66 = icmp ne i32 %xtraiter63, 0, !dbg !18805
  tail call void @llvm.assume(i1 %lcmp.mod66), !dbg !18805
  br label %.lr.ph.i19.i.epil, !dbg !18805

.lr.ph.i19.i.epil:                                ; preds = %.lr.ph.i19.i.epil, %.lr.ph.i19.i.epil.preheader
  %epil.iter64 = phi i32 [ 0, %.lr.ph.i19.i.epil.preheader ], [ %epil.iter64.next, %.lr.ph.i19.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !18808, !noalias !18738
  %epil.iter64.next = add i32 %epil.iter64, 1, !dbg !18805 ; 2 uses
  %epil.iter64.cmp.not = icmp eq i32 %epil.iter64.next, %xtraiter63, !dbg !18805
  br i1 %epil.iter64.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i19.i.epil, !dbg !18805, !llvm.loop !18811

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa, %.lr.ph.i19.i.epil, %bb.m, %bb.l
  %i.aa = add i32 %.sroa.0.037.i, 1, !dbg !18812
  br label %.backedge.i, !dbg !18776

bb.n:                                             ; preds = %bb.j
  %i.ab = cmpxchg weak ptr %1, i64 %.sroa.07.0.i, i64 %.sroa.01.0.i seq_cst acquire, align 8, !dbg !18813, !noalias !18738
  %i.ac = extractvalue { i64, i1 } %i.ab, 1, !dbg !18813
  br i1 %i.ac, label %bb.p, label %bb.o, !dbg !18817

bb.o:                                             ; preds = %bb.n
  %.sroa.0.0.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.037.i, i32 6), !dbg !18818 ; 2 uses
  %2 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i, !dbg !18821 ; 2 uses
  %.not.i23.i = icmp eq i32 %.sroa.0.037.i, 0, !dbg !18823
  br i1 %.not.i23.i, label %.backedge.i, label %.lr.ph.i24.i.preheader, !dbg !18827

.lr.ph.i24.i.preheader:                           ; preds = %bb.o
  %xtraiter = and i32 %2, 5, !dbg !18827          ; 3 uses
  %i.ad = icmp ult i32 %.sroa.0.037.i, 3, !dbg !18827
  br i1 %i.ad, label %.lr.ph.i24.i.epil.preheader, label %.lr.ph.i24.i.preheader.new, !dbg !18827

.lr.ph.i24.i.preheader.new:                       ; preds = %.lr.ph.i24.i.preheader
  %unroll_iter = and i32 %2, 56, !dbg !18827
  br label %.lr.ph.i24.i, !dbg !18827

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i24.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !18827
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i24.i.epil.preheader, !dbg !18827

.lr.ph.i24.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i24.i.preheader
  %lcmp.mod62 = icmp ne i32 %xtraiter, 0, !dbg !18827
  tail call void @llvm.assume(i1 %lcmp.mod62), !dbg !18827
  br label %.lr.ph.i24.i.epil, !dbg !18827

.lr.ph.i24.i.epil:                                ; preds = %.lr.ph.i24.i.epil, %.lr.ph.i24.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i24.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i24.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !18828, !noalias !18738
  %epil.iter.next = add i32 %epil.iter, 1, !dbg !18827 ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter, !dbg !18827
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i24.i.epil, !dbg !18827, !llvm.loop !18831

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i24.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ae = add i32 %.sroa.0.037.i, 1, !dbg !18832
  br label %.backedge.i, !dbg !18833

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i, %.lr.ph.i24.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i24.i.preheader.new ], [ %niter.next.7, %.lr.ph.i24.i ]
  tail call void @llvm.x86.sse2.pause(), !dbg !18828, !noalias !18738
  tail call void @llvm.x86.sse2.pause(), !dbg !18828, !noalias !18738
  tail call void @llvm.x86.sse2.pause(), !dbg !18828, !noalias !18738
  tail call void @llvm.x86.sse2.pause(), !dbg !18828, !noalias !18738
  tail call void @llvm.x86.sse2.pause(), !dbg !18828, !noalias !18738
  tail call void @llvm.x86.sse2.pause(), !dbg !18828, !noalias !18738
  tail call void @llvm.x86.sse2.pause(), !dbg !18828, !noalias !18738
  tail call void @llvm.x86.sse2.pause(), !dbg !18828, !noalias !18738
  %niter.next.7 = add i32 %niter, 8, !dbg !18827  ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter, !dbg !18827
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i24.i, !dbg !18827

bb.p:                                             ; preds = %bb.n
  %i.af = icmp eq i64 %i.f, 30, !dbg !18835
  br i1 %i.af, label %bb.q, label %bb.t, !dbg !18835

bb.q:                                             ; preds = %bb.p
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 2480 ; 2 uses
  %i.ah = load atomic ptr, ptr %i.ag acquire, align 8, !dbg !18836, !noalias !18738 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null, !dbg !18840
  br i1 %i.ai, label %.lr.ph.i29.i, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockINtNtCscgRAwXFJnXP_4core6result6ResultIBU_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtBY_3any3AnyNtNtBY_6marker4SendEL_EEE9wait_nextCseyIfFeUOWMb_17polars_mem_engine.exit.i, !dbg !18840

.lr.ph.i29.i:                                     ; preds = %bb.q, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.02.i30.i = phi i32 [ %i.am, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.q ] ; 6 uses
  %i.aj = icmp ult i32 %.sroa.0.02.i30.i, 7, !dbg !18841
  br i1 %i.aj, label %bb.s, label %bb.r, !dbg !18841

bb.r:                                             ; preds = %.lr.ph.i29.i
  tail call void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now(), !dbg !18843, !noalias !18738
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, !dbg !18843

bb.s:                                             ; preds = %.lr.ph.i29.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i30.i, 0, !dbg !18844
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader, !dbg !18848

.lr.ph.i.i.i.preheader:                           ; preds = %bb.s
  %i.ak = mul nuw i32 %.sroa.0.02.i30.i, %.sroa.0.02.i30.i, !dbg !18849 ; 2 uses
  %xtraiter75 = and i32 %i.ak, 7, !dbg !18848     ; 3 uses
  %i.al = icmp ult i32 %.sroa.0.02.i30.i, 3, !dbg !18848
  br i1 %i.al, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new, !dbg !18848

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter79 = and i32 %i.ak, 56, !dbg !18848
  br label %.lr.ph.i.i.i, !dbg !18848

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter80 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter80.next.7, %.lr.ph.i.i.i ]
  tail call void @llvm.x86.sse2.pause(), !dbg !18851, !noalias !18738
  tail call void @llvm.x86.sse2.pause(), !dbg !18851, !noalias !18738
  tail call void @llvm.x86.sse2.pause(), !dbg !18851, !noalias !18738
  tail call void @llvm.x86.sse2.pause(), !dbg !18851, !noalias !18738
  tail call void @llvm.x86.sse2.pause(), !dbg !18851, !noalias !18738
  tail call void @llvm.x86.sse2.pause(), !dbg !18851, !noalias !18738
  tail call void @llvm.x86.sse2.pause(), !dbg !18851, !noalias !18738
  tail call void @llvm.x86.sse2.pause(), !dbg !18851, !noalias !18738
  %niter80.next.7 = add i32 %niter80, 8, !dbg !18848 ; 2 uses
  %niter80.ncmp.7 = icmp eq i32 %niter80.next.7, %unroll_iter79, !dbg !18848
  br i1 %niter80.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !dbg !18848

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod77.not = icmp eq i32 %xtraiter75, 0, !dbg !18848
  br i1 %lcmp.mod77.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader, !dbg !18848

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod78 = icmp ne i32 %xtraiter75, 0, !dbg !18848
  tail call void @llvm.assume(i1 %lcmp.mod78), !dbg !18848
  br label %.lr.ph.i.i.i.epil, !dbg !18848

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter76 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter76.next, %.lr.ph.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !18851, !noalias !18738
  %epil.iter76.next = add i32 %epil.iter76, 1, !dbg !18848 ; 2 uses
  %epil.iter76.cmp.not = icmp eq i32 %epil.iter76.next, %xtraiter75, !dbg !18848
  br i1 %epil.iter76.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !dbg !18848, !llvm.loop !18854

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.s, %bb.r
  %i.am = add i32 %.sroa.0.02.i30.i, 1, !dbg !18855
  %i.an = load atomic ptr, ptr %i.ag acquire, align 8, !dbg !18836, !noalias !18738 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null, !dbg !18840
  br i1 %i.ao, label %.lr.ph.i29.i, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockINtNtCscgRAwXFJnXP_4core6result6ResultIBU_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtBY_3any3AnyNtNtBY_6marker4SendEL_EEE9wait_nextCseyIfFeUOWMb_17polars_mem_engine.exit.i, !dbg !18840

_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockINtNtCscgRAwXFJnXP_4core6result6ResultIBU_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtBY_3any3AnyNtNtBY_6marker4SendEL_EEE9wait_nextCseyIfFeUOWMb_17polars_mem_engine.exit.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.q
  %.lcssa.i.i = phi ptr [ %i.ah, %bb.q ], [ %i.an, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], !dbg !18836 ; 2 uses
  %i.ap = and i64 %.sroa.01.0.i, -2, !dbg !18856
  %i.aq = add i64 %i.ap, 2, !dbg !18858
  %i.ar = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 2480, !dbg !18861
  %i.as = load atomic ptr, ptr %i.ar monotonic, align 8, !dbg !18868, !noalias !18738
  %i.at = icmp ne ptr %i.as, null, !dbg !18870
  %i.au = zext i1 %i.at to i64, !dbg !18870
  %spec.select17.i = or disjoint i64 %i.aq, %i.au, !dbg !18870
  store atomic ptr %.lcssa.i.i, ptr %i.b release, align 8, !dbg !18871, !noalias !18738
  store atomic i64 %spec.select17.i, ptr %1 release, align 128, !dbg !18875, !noalias !18738
  br label %bb.t, !dbg !18879

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE10start_recvCseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18880
  store i8 0, ptr %i.av, align 8, !dbg !18880
  br label %bb.ad, !dbg !18881

bb.t:                                             ; preds = %bb.p, %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockINtNtCscgRAwXFJnXP_4core6result6ResultIBU_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtBY_3any3AnyNtNtBY_6marker4SendEL_EEE9wait_nextCseyIfFeUOWMb_17polars_mem_engine.exit.i
  %i.aw = getelementptr inbounds nuw [80 x i8], ptr %.sroa.012.0.i, i64 %i.f, !dbg !18882 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 72 ; 3 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8, !dbg !18891, !noalias !18896
  %i.az = and i64 %i.ay, 1, !dbg !18899
  %i.ba = icmp eq i64 %i.az, 0, !dbg !18899
  br i1 %i.ba, label %.lr.ph.i.i3, label %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB2_4SlotINtNtCscgRAwXFJnXP_4core6result6ResultIBR_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtBV_3any3AnyNtNtBV_6marker4SendEL_EEE10wait_writeCseyIfFeUOWMb_17polars_mem_engine.exit.i, !dbg !18899

.lr.ph.i.i3:                                      ; preds = %bb.t, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5
  %.sroa.0.02.i.i4 = phi i32 [ %i.be, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5 ], [ 0, %bb.t ] ; 6 uses
  %i.bb = icmp ult i32 %.sroa.0.02.i.i4, 7, !dbg !18900
  br i1 %i.bb, label %bb.v, label %bb.u, !dbg !18900

bb.u:                                             ; preds = %.lr.ph.i.i3
  tail call void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now(), !dbg !18902, !noalias !18896
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, !dbg !18902

bb.v:                                             ; preds = %.lr.ph.i.i3
  %.not.i.i.i6 = icmp eq i32 %.sroa.0.02.i.i4, 0, !dbg !18903
  br i1 %.not.i.i.i6, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.preheader, !dbg !18907

.lr.ph.i.i.i7.preheader:                          ; preds = %bb.v
  %i.bc = mul nuw i32 %.sroa.0.02.i.i4, %.sroa.0.02.i.i4, !dbg !18908 ; 2 uses
  %xtraiter81 = and i32 %i.bc, 7, !dbg !18907     ; 3 uses
  %i.bd = icmp ult i32 %.sroa.0.02.i.i4, 3, !dbg !18907
  br i1 %i.bd, label %.lr.ph.i.i.i7.epil.preheader, label %.lr.ph.i.i.i7.preheader.new, !dbg !18907

.lr.ph.i.i.i7.preheader.new:                      ; preds = %.lr.ph.i.i.i7.preheader
  %unroll_iter85 = and i32 %i.bc, 56, !dbg !18907
  br label %.lr.ph.i.i.i7, !dbg !18907

.lr.ph.i.i.i7:                                    ; preds = %.lr.ph.i.i.i7, %.lr.ph.i.i.i7.preheader.new
  %niter86 = phi i32 [ 0, %.lr.ph.i.i.i7.preheader.new ], [ %niter86.next.7, %.lr.ph.i.i.i7 ]
  tail call void @llvm.x86.sse2.pause(), !dbg !18910, !noalias !18896
  tail call void @llvm.x86.sse2.pause(), !dbg !18910, !noalias !18896
  tail call void @llvm.x86.sse2.pause(), !dbg !18910, !noalias !18896
  tail call void @llvm.x86.sse2.pause(), !dbg !18910, !noalias !18896
  tail call void @llvm.x86.sse2.pause(), !dbg !18910, !noalias !18896
  tail call void @llvm.x86.sse2.pause(), !dbg !18910, !noalias !18896
  tail call void @llvm.x86.sse2.pause(), !dbg !18910, !noalias !18896
  tail call void @llvm.x86.sse2.pause(), !dbg !18910, !noalias !18896
  %niter86.next.7 = add i32 %niter86, 8, !dbg !18907 ; 2 uses
  %niter86.ncmp.7 = icmp eq i32 %niter86.next.7, %unroll_iter85, !dbg !18907
  br i1 %niter86.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa, label %.lr.ph.i.i.i7, !dbg !18907

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i7
  %lcmp.mod83.not = icmp eq i32 %xtraiter81, 0, !dbg !18907
  br i1 %lcmp.mod83.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.epil.preheader, !dbg !18907

.lr.ph.i.i.i7.epil.preheader:                     ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa, %.lr.ph.i.i.i7.preheader
  %lcmp.mod84 = icmp ne i32 %xtraiter81, 0, !dbg !18907
  tail call void @llvm.assume(i1 %lcmp.mod84), !dbg !18907
  br label %.lr.ph.i.i.i7.epil, !dbg !18907

.lr.ph.i.i.i7.epil:                               ; preds = %.lr.ph.i.i.i7.epil, %.lr.ph.i.i.i7.epil.preheader
  %epil.iter82 = phi i32 [ 0, %.lr.ph.i.i.i7.epil.preheader ], [ %epil.iter82.next, %.lr.ph.i.i.i7.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !18910, !noalias !18896
  %epil.iter82.next = add i32 %epil.iter82, 1, !dbg !18907 ; 2 uses
  %epil.iter82.cmp.not = icmp eq i32 %epil.iter82.next, %xtraiter81, !dbg !18907
  br i1 %epil.iter82.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.epil, !dbg !18907, !llvm.loop !18913

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa, %.lr.ph.i.i.i7.epil, %bb.v, %bb.u
  %i.be = add i32 %.sroa.0.02.i.i4, 1, !dbg !18914
  %i.bf = load atomic i64, ptr %i.ax acquire, align 8, !dbg !18891, !noalias !18896
  %i.bg = and i64 %i.bf, 1, !dbg !18899
  %i.bh = icmp eq i64 %i.bg, 0, !dbg !18899
  br i1 %i.bh, label %.lr.ph.i.i3, label %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB2_4SlotINtNtCscgRAwXFJnXP_4core6result6ResultIBR_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtBV_3any3AnyNtNtBV_6marker4SendEL_EEE10wait_writeCseyIfFeUOWMb_17polars_mem_engine.exit.i, !dbg !18899

_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB2_4SlotINtNtCscgRAwXFJnXP_4core6result6ResultIBR_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtBV_3any3AnyNtNtBV_6marker4SendEL_EEE10wait_writeCseyIfFeUOWMb_17polars_mem_engine.exit.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, %bb.t
  %.sroa.015.0.copyload = load i64, ptr %i.aw, align 8, !dbg !18915, !noalias !18896 ; 2 uses
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 8, !dbg !18915
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.416, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.416.0..sroa_idx, i64 64, i1 false), !dbg !18915
  %i.bi = add nuw nsw i64 %i.f, 1, !dbg !18920    ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 31, !dbg !18920
  br i1 %i.bj, label %.lr.ph.i2.i, label %bb.z, !dbg !18920

.lr.ph.i2.i:                                      ; preds = %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB2_4SlotINtNtCscgRAwXFJnXP_4core6result6ResultIBR_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtBV_3any3AnyNtNtBV_6marker4SendEL_EEE10wait_writeCseyIfFeUOWMb_17polars_mem_engine.exit.i, %bb.y
  %.sroa.0.04.i.i = phi i64 [ %i.bs, %bb.y ], [ 0, %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB2_4SlotINtNtCscgRAwXFJnXP_4core6result6ResultIBR_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtBV_3any3AnyNtNtBV_6marker4SendEL_EEE10wait_writeCseyIfFeUOWMb_17polars_mem_engine.exit.i ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [80 x i8], ptr %.sroa.012.0.i, i64 %.sroa.0.04.i.i, !dbg !18922
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 72, !dbg !18931 ; 2 uses
  %i.bm = load atomic i64, ptr %i.bl acquire, align 8, !dbg !18939, !noalias !18896
  %i.bn = and i64 %i.bm, 2, !dbg !18941
  %i.bo = icmp eq i64 %i.bn, 0, !dbg !18941
  br i1 %i.bo, label %bb.w, label %.lr.ph.i2.i.1, !dbg !18941

bb.w:                                             ; preds = %.lr.ph.i2.i
  %i.bp = atomicrmw or ptr %i.bl, i64 4 acq_rel, align 8, !dbg !18942, !noalias !18896
  %i.bq = and i64 %i.bp, 2, !dbg !18947
  %i.br = icmp eq i64 %i.bq, 0, !dbg !18947
  br i1 %i.br, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE4readCseyIfFeUOWMb_17polars_mem_engine.exit, label %.lr.ph.i2.i.1, !dbg !18947

.lr.ph.i2.i.1:                                    ; preds = %bb.w, %.lr.ph.i2.i
  %i.bs = add nuw nsw i64 %.sroa.0.04.i.i, 2, !dbg !18948 ; 2 uses
  %i.bt = getelementptr inbounds nuw [80 x i8], ptr %.sroa.012.0.i, i64 %.sroa.0.04.i.i, !dbg !18922
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 152, !dbg !18931 ; 2 uses
  %i.bv = load atomic i64, ptr %i.bu acquire, align 8, !dbg !18939, !noalias !18896
  %i.bw = and i64 %i.bv, 2, !dbg !18941
  %i.bx = icmp eq i64 %i.bw, 0, !dbg !18941
  br i1 %i.bx, label %bb.x, label %bb.y, !dbg !18941

bb.x:                                             ; preds = %.lr.ph.i2.i.1
  %i.by = atomicrmw or ptr %i.bu, i64 4 acq_rel, align 8, !dbg !18942, !noalias !18896
  %i.bz = and i64 %i.by, 2, !dbg !18947
  %i.ca = icmp eq i64 %i.bz, 0, !dbg !18947
  br i1 %i.ca, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE4readCseyIfFeUOWMb_17polars_mem_engine.exit, label %bb.y, !dbg !18947

bb.y:                                             ; preds = %bb.x, %.lr.ph.i2.i.1
  %exitcond.not.i.i2.1 = icmp eq i64 %i.bs, 30, !dbg !18959
  br i1 %exitcond.not.i.i2.1, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockINtNtCscgRAwXFJnXP_4core6result6ResultIBU_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtBY_3any3AnyNtNtBY_6marker4SendEL_EEE7destroyCseyIfFeUOWMb_17polars_mem_engine.exit.sink.split.i, label %.lr.ph.i2.i, !dbg !18962

bb.z:                                             ; preds = %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB2_4SlotINtNtCscgRAwXFJnXP_4core6result6ResultIBR_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtBV_3any3AnyNtNtBV_6marker4SendEL_EEE10wait_writeCseyIfFeUOWMb_17polars_mem_engine.exit.i
  %i.cb = atomicrmw or ptr %i.ax, i64 2 acq_rel, align 8, !dbg !18963, !noalias !18896
end_hunk_1
begin_hunk_2_@llvm.vector.reduce.add.v2i64
!18142 = !DILocation(line: 3905, column: 24, scope: !18117, inlinedAt: !18143)
!18143 = distinct !DILocation(line: 1732, column: 18, scope: !18144, inlinedAt: !18145)
!18144 = distinct !DISubprogram(name: "load<std::sync::mpmc::list::Block<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicOINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockINtNtB9_6result6ResultIB1F_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB9_3any3AnyNtNtB9_6marker4SendEL_EEEE4loadCseyIfFeUOWMb_17polars_mem_engine", scope: !189, file: !188, line: 1730, type: !13, scopeLine: 1730, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18145 = distinct !DILocation(line: 596, column: 46, scope: !18101, inlinedAt: !18018)
!18146 = !DILocation(line: 128, column: 14, scope: !2788, inlinedAt: !18147)
!18147 = distinct !DILocation(line: 229, column: 22, scope: !2792, inlinedAt: !18148)
!18148 = distinct !DILocation(line: 344, column: 9, scope: !2795, inlinedAt: !18149)
!18149 = distinct !DILocation(line: 462, column: 23, scope: !2797, inlinedAt: !18150)
!18150 = distinct !DILocation(line: 1921, column: 24, scope: !18107, inlinedAt: !18151)
!18151 = distinct !DILocation(line: 810, column: 1, scope: !18111, inlinedAt: !18152)
!18152 = distinct !DILocation(line: 1003, column: 1, scope: !18113, inlinedAt: !18153)
!18153 = distinct !DILocation(line: 597, column: 21, scope: !18154, inlinedAt: !18018)
!18154 = distinct !DILexicalBlock(scope: !18101, file: !17811, line: 596, column: 21)
!18155 = !DILocation(line: 587, column: 17, scope: !18101, inlinedAt: !18018)
!18156 = !DILocation(line: 253, column: 13, scope: !18157, inlinedAt: !18158)
!18157 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::list::Slot<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list4SlotINtNtB9_6result6ResultIB1K_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB9_3any3AnyNtNtB9_6marker4SendEL_EEEE13get_uncheckedCseyIfFeUOWMb_17polars_mem_engine", scope: !16915, file: !16914, line: 239, type: !13, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18158 = distinct !DILocation(line: 646, column: 26, scope: !18159, inlinedAt: !18160)
!18159 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::list::Slot<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list4SlotINtNtB5_6result6ResultIB1h_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB5_3any3AnyNtNtB5_6marker4SendEL_EEE13get_uncheckedjECseyIfFeUOWMb_17polars_mem_engine", scope: !465, file: !464, line: 639, type: !13, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18160 = distinct !DILocation(line: 589, column: 47, scope: !18101, inlinedAt: !18018)
!18161 = !DILocation(line: 3905, column: 24, scope: !3312, inlinedAt: !18162)
!18162 = distinct !DILocation(line: 2870, column: 26, scope: !18163, inlinedAt: !18164)
!18163 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE4load", scope: !189, file: !188, line: 2868, type: !13, scopeLine: 2868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18164 = distinct !DILocation(line: 47, column: 26, scope: !18165, inlinedAt: !18168)
!18165 = distinct !DILexicalBlock(scope: !18166, file: !17811, line: 46, column: 9)
!18166 = distinct !DISubprogram(name: "wait_write<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>", linkageName: "_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB2_4SlotINtNtCscgRAwXFJnXP_4core6result6ResultIBR_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtBV_3any3AnyNtNtBV_6marker4SendEL_EEE10wait_writeCseyIfFeUOWMb_17polars_mem_engine", scope: !18167, file: !17811, line: 45, type: !13, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18167 = !DINamespace(name: "Slot", scope: !17813)
!18168 = distinct !DILocation(line: 590, column: 26, scope: !18169, inlinedAt: !18018)
!18169 = distinct !DILexicalBlock(scope: !18101, file: !17811, line: 589, column: 21)
!18170 = !DILocation(line: 47, column: 15, scope: !18165, inlinedAt: !18168)
!18171 = !DILocation(line: 127, column: 12, scope: !18023, inlinedAt: !18172)
!18172 = distinct !DILocation(line: 48, column: 21, scope: !18165, inlinedAt: !18168)
!18173 = !DILocation(line: 132, column: 13, scope: !18023, inlinedAt: !18172)
!18174 = !DILocation(line: 1917, column: 50, scope: !18030, inlinedAt: !18175)
!18175 = distinct !DILocation(line: 781, column: 12, scope: !18032, inlinedAt: !18176)
!18176 = distinct !DILocation(line: 866, column: 14, scope: !18034, inlinedAt: !18177)
!18177 = distinct !DILocation(line: 128, column: 22, scope: !18036, inlinedAt: !18172)
!18178 = !DILocation(line: 781, column: 12, scope: !18032, inlinedAt: !18176)
!18179 = !DILocation(line: 3558, column: 28, scope: !18040, inlinedAt: !18180)
!18180 = distinct !DILocation(line: 128, column: 41, scope: !18023, inlinedAt: !18172)
!18181 = !DILocation(line: 25, column: 14, scope: !18046, inlinedAt: !18182)
!18182 = distinct !DILocation(line: 287, column: 13, scope: !18048, inlinedAt: !18183)
!18183 = distinct !DILocation(line: 129, column: 17, scope: !18037, inlinedAt: !18172)
!18184 = distinct !{!18184, !18051}
!18185 = !DILocation(line: 135, column: 23, scope: !18023, inlinedAt: !18172)
!18186 = !{!18187}
!18187 = distinct !{!18187, !18188, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseyIfFeUOWMb_17polars_mem_engine: argument 0"}
!18188 = distinct !{!18188, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseyIfFeUOWMb_17polars_mem_engine"}
!18189 = !DILocation(line: 1400, column: 18, scope: !18190, inlinedAt: !18191)
!18190 = distinct !DISubprogram(name: "drop_in_place<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOINtNtB6_6result6ResultIBD_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_3any3AnyNtNtB6_6marker4SendEL_EE13drop_in_placeCseyIfFeUOWMb_17polars_mem_engine", scope: !64, file: !63, line: 1395, type: !13, scopeLine: 1395, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18191 = distinct !DILocation(line: 592, column: 36, scope: !18192, inlinedAt: !18018)
!18192 = distinct !DILexicalBlock(scope: !18169, file: !17811, line: 591, column: 21)
!18193 = !DILocation(line: 810, column: 1, scope: !2752, inlinedAt: !18194)
!18194 = distinct !DILocation(line: 1400, column: 18, scope: !18190, inlinedAt: !18191)
!18195 = !DILocation(line: 810, column: 1, scope: !2756, inlinedAt: !18196)
!18196 = distinct !DILocation(line: 810, column: 1, scope: !2752, inlinedAt: !18194)
!18197 = !DILocation(line: 810, column: 1, scope: !2759, inlinedAt: !18198)
!18198 = distinct !DILocation(line: 810, column: 1, scope: !2752, inlinedAt: !18194)
!18199 = !DILocation(line: 457, column: 14, scope: !2762, inlinedAt: !18200)
!18200 = distinct !DILocation(line: 255, column: 43, scope: !2764, inlinedAt: !18201)
!18201 = distinct !DILocation(line: 1919, column: 26, scope: !2770, inlinedAt: !18202)
!18202 = distinct !DILocation(line: 810, column: 1, scope: !2759, inlinedAt: !18198)
!18203 = !DILocation(line: 1920, column: 16, scope: !2778, inlinedAt: !18202)
!18204 = !DILocation(line: 596, column: 14, scope: !2780, inlinedAt: !18205)
!18205 = distinct !DILocation(line: 125, column: 30, scope: !2782, inlinedAt: !18206)
!18206 = distinct !DILocation(line: 255, column: 68, scope: !2764, inlinedAt: !18201)
!18207 = !DILocation(line: 128, column: 14, scope: !2788, inlinedAt: !18208)
!18208 = distinct !DILocation(line: 229, column: 22, scope: !2792, inlinedAt: !18209)
!18209 = distinct !DILocation(line: 344, column: 9, scope: !2795, inlinedAt: !18210)
!18210 = distinct !DILocation(line: 462, column: 23, scope: !2797, inlinedAt: !18211)
!18211 = distinct !DILocation(line: 1921, column: 24, scope: !2778, inlinedAt: !18202)
!18212 = !DILocation(line: 1920, column: 13, scope: !2778, inlinedAt: !18202)
!18213 = !DILocation(line: 457, column: 14, scope: !2762, inlinedAt: !18214)
!18214 = distinct !DILocation(line: 255, column: 43, scope: !2764, inlinedAt: !18215)
!18215 = distinct !DILocation(line: 1919, column: 26, scope: !2770, inlinedAt: !18216)
!18216 = distinct !DILocation(line: 810, column: 1, scope: !2759, inlinedAt: !18198)
!18217 = !DILocation(line: 1920, column: 16, scope: !2778, inlinedAt: !18216)
!18218 = !DILocation(line: 596, column: 14, scope: !2780, inlinedAt: !18219)
!18219 = distinct !DILocation(line: 125, column: 30, scope: !2782, inlinedAt: !18220)
!18220 = distinct !DILocation(line: 255, column: 68, scope: !2764, inlinedAt: !18215)
!18221 = !DILocation(line: 128, column: 14, scope: !2788, inlinedAt: !18222)
!18222 = distinct !DILocation(line: 229, column: 22, scope: !2792, inlinedAt: !18223)
!18223 = distinct !DILocation(line: 344, column: 9, scope: !2795, inlinedAt: !18224)
!18224 = distinct !DILocation(line: 462, column: 23, scope: !2797, inlinedAt: !18225)
!18225 = distinct !DILocation(line: 1921, column: 24, scope: !2778, inlinedAt: !18216)
!18226 = !DILocation(line: 1920, column: 13, scope: !2778, inlinedAt: !18216)
!18227 = !DILocation(line: 0, scope: !18072, inlinedAt: !18018)
!18228 = !DILocation(line: 2511, column: 13, scope: !18229, inlinedAt: !18230)
!18229 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj12wrapping_add", scope: !1616, file: !1615, line: 2510, type: !13, scopeLine: 2510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18230 = distinct !DILocation(line: 601, column: 29, scope: !18101, inlinedAt: !18018)
!18231 = !DILocation(line: 610, column: 9, scope: !18072, inlinedAt: !18018)
!18232 = !DILocation(line: 3890, column: 24, scope: !18233, inlinedAt: !18234)
!18233 = distinct !DISubprogram(name: "atomic_store<usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic12atomic_storejECseyIfFeUOWMb_17polars_mem_engine", scope: !190, file: !188, line: 3885, type: !13, scopeLine: 3885, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18234 = distinct !DILocation(line: 2898, column: 26, scope: !18235, inlinedAt: !18236)
!18235 = distinct !DISubprogram(name: "store", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE5store", scope: !189, file: !188, line: 2896, type: !13, scopeLine: 2896, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18236 = distinct !DILocation(line: 611, column: 25, scope: !18072, inlinedAt: !18018)
!18237 = !DILocation(line: 529, column: 9, scope: !18011)
!18238 = !DILocation(line: 537, column: 6, scope: !17999)
!18239 = distinct !DISubprogram(name: "send<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>", linkageName: "_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE4sendCseyIfFeUOWMb_17polars_mem_engine", scope: !17812, file: !17811, line: 404, type: !13, scopeLine: 404, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18240 = !DILocation(line: 2447, column: 9, scope: !18241, inlinedAt: !18242)
!18241 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<usize>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8jEE3getCseyIfFeUOWMb_17polars_mem_engine", scope: !184, file: !183, line: 2443, type: !13, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18242 = distinct !DILocation(line: 3615, column: 24, scope: !18243, inlinedAt: !18244)
!18243 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE6as_ptr", scope: !189, file: !188, line: 3614, type: !13, scopeLine: 3614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18244 = distinct !DILocation(line: 2870, column: 43, scope: !18245, inlinedAt: !18246)
!18245 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE4load", scope: !189, file: !188, line: 2868, type: !13, scopeLine: 2868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18246 = distinct !DILocation(line: 177, column: 40, scope: !18247, inlinedAt: !18249)
!18247 = distinct !DILexicalBlock(scope: !18248, file: !17811, line: 176, column: 9)
!18248 = distinct !DISubprogram(name: "start_send<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>", linkageName: "_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE10start_sendCseyIfFeUOWMb_17polars_mem_engine", scope: !17812, file: !17811, line: 175, type: !13, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18249 = distinct !DILocation(line: 410, column: 22, scope: !18250)
!18250 = distinct !DILexicalBlock(scope: !18239, file: !17811, line: 409, column: 9)
!18251 = !DILocation(line: 3905, column: 24, scope: !3312, inlinedAt: !18252)
!18252 = distinct !DILocation(line: 2870, column: 26, scope: !18245, inlinedAt: !18246)
!18253 = !{!18254}
!18254 = distinct !{!18254, !18255, !"_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE10start_sendCseyIfFeUOWMb_17polars_mem_engine: argument 0"}
!18255 = distinct !{!18255, !"_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE10start_sendCseyIfFeUOWMb_17polars_mem_engine"}
!18256 = !DILocation(line: 2447, column: 9, scope: !18257, inlinedAt: !18258)
!18257 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<*mut std::sync::mpmc::list::Block<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8OINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockINtNtB7_6result6ResultIB2e_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB7_3any3AnyNtNtB7_6marker4SendEL_EEEEE3getCseyIfFeUOWMb_17polars_mem_engine", scope: !184, file: !183, line: 2443, type: !13, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18258 = distinct !DILocation(line: 2500, column: 16, scope: !18259, inlinedAt: !18260)
!18259 = distinct !DISubprogram(name: "as_ptr<std::sync::mpmc::list::Block<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicOINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockINtNtB9_6result6ResultIB1F_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB9_3any3AnyNtNtB9_6marker4SendEL_EEEE6as_ptrCseyIfFeUOWMb_17polars_mem_engine", scope: !189, file: !188, line: 2499, type: !13, scopeLine: 2499, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18260 = distinct !DILocation(line: 1732, column: 35, scope: !18261, inlinedAt: !18262)
!18261 = distinct !DISubprogram(name: "load<std::sync::mpmc::list::Block<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicOINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockINtNtB9_6result6ResultIB1F_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB9_3any3AnyNtNtB9_6marker4SendEL_EEEE4loadCseyIfFeUOWMb_17polars_mem_engine", scope: !189, file: !188, line: 1730, type: !13, scopeLine: 1730, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18262 = distinct !DILocation(line: 178, column: 41, scope: !18263, inlinedAt: !18249)
!18263 = distinct !DILexicalBlock(scope: !18247, file: !17811, line: 177, column: 9)
!18264 = !DILocation(line: 3905, column: 24, scope: !18117, inlinedAt: !18265)
!18265 = distinct !DILocation(line: 1732, column: 18, scope: !18261, inlinedAt: !18262)
!18266 = !DILocation(line: 183, column: 16, scope: !18267, inlinedAt: !18249)
!18267 = distinct !DILexicalBlock(scope: !18268, file: !17811, line: 179, column: 9)
!18268 = distinct !DILexicalBlock(scope: !18263, file: !17811, line: 178, column: 9)
!18269 = !DILocation(line: 411, column: 18, scope: !18250)
!18270 = !DILocation(line: 411, column: 36, scope: !18250)
!18271 = !DILocation(line: 265, column: 12, scope: !18272, inlinedAt: !18273)
!18272 = distinct !DISubprogram(name: "write<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>", linkageName: "_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE5writeCseyIfFeUOWMb_17polars_mem_engine", scope: !17812, file: !17811, line: 263, type: !398, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18273 = distinct !DILocation(line: 411, column: 23, scope: !18250)
!18274 = !DILocation(line: 189, column: 26, scope: !18267, inlinedAt: !18249)
!18275 = !DILocation(line: 192, column: 16, scope: !18276, inlinedAt: !18249)
!18276 = distinct !DILexicalBlock(scope: !18267, file: !17811, line: 189, column: 13)
!18277 = !DILocation(line: 135, column: 23, scope: !18023, inlinedAt: !18278)
!18278 = distinct !DILocation(line: 193, column: 25, scope: !18276, inlinedAt: !18249)
!18279 = !DILocation(line: 127, column: 12, scope: !18023, inlinedAt: !18278)
!18280 = !DILocation(line: 132, column: 13, scope: !18023, inlinedAt: !18278)
!18281 = !DILocation(line: 1917, column: 50, scope: !18030, inlinedAt: !18282)
!18282 = distinct !DILocation(line: 781, column: 12, scope: !18032, inlinedAt: !18283)
!18283 = distinct !DILocation(line: 866, column: 14, scope: !18034, inlinedAt: !18284)
!18284 = distinct !DILocation(line: 128, column: 22, scope: !18036, inlinedAt: !18278)
!18285 = !DILocation(line: 781, column: 12, scope: !18032, inlinedAt: !18283)
!18286 = !DILocation(line: 3558, column: 28, scope: !18040, inlinedAt: !18287)
!18287 = distinct !DILocation(line: 128, column: 41, scope: !18023, inlinedAt: !18278)
!18288 = !DILocation(line: 25, column: 14, scope: !18046, inlinedAt: !18289)
!18289 = distinct !DILocation(line: 287, column: 13, scope: !18048, inlinedAt: !18290)
!18290 = distinct !DILocation(line: 129, column: 17, scope: !18037, inlinedAt: !18278)
!18291 = !DILocation(line: 201, column: 16, scope: !18276, inlinedAt: !18249)
!18292 = distinct !{!18292, !18051}
!18293 = !DILocation(line: 3905, column: 24, scope: !3312, inlinedAt: !18294)
!18294 = distinct !DILocation(line: 2870, column: 26, scope: !18245, inlinedAt: !18295)
!18295 = distinct !DILocation(line: 194, column: 40, scope: !18276, inlinedAt: !18249)
!18296 = !DILocation(line: 3905, column: 24, scope: !18117, inlinedAt: !18297)
!18297 = distinct !DILocation(line: 1732, column: 18, scope: !18261, inlinedAt: !18298)
!18298 = distinct !DILocation(line: 195, column: 41, scope: !18276, inlinedAt: !18249)
!18299 = !DILocation(line: 0, scope: !18268, inlinedAt: !18249)
!18300 = !DILocation(line: 207, column: 16, scope: !18276, inlinedAt: !18249)
!18301 = !DILocation(line: 341, column: 9, scope: !18302, inlinedAt: !18303)
!18302 = distinct !DISubprogram(name: "new_zeroed<std::sync::mpmc::list::Block<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>>", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockINtNtCscgRAwXFJnXP_4core6result6ResultIB1r_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEIBv_DNtNtB1v_3any3AnyNtNtB1v_6marker4SendEL_EEEE10new_zeroedCseyIfFeUOWMb_17polars_mem_engine", scope: !14349, file: !2771, line: 340, type: !13, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18303 = distinct !DILocation(line: 73, column: 18, scope: !18304, inlinedAt: !18305)
!18304 = distinct !DISubprogram(name: "new<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockINtNtCscgRAwXFJnXP_4core6result6ResultIBU_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtBY_3any3AnyNtNtBY_6marker4SendEL_EEE3newCseyIfFeUOWMb_17polars_mem_engine", scope: !18123, file: !17811, line: 66, type: !13, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18305 = distinct !DILocation(line: 202, column: 35, scope: !18276, inlinedAt: !18249)
!18306 = !DILocation(line: 341, column: 9, scope: !18302, inlinedAt: !18307)
!18307 = distinct !DILocation(line: 73, column: 18, scope: !18308, inlinedAt: !18309)
!18308 = !DILexicalBlockFile(scope: !18304, file: !17811, discriminator: 2)
!18309 = distinct !DILocation(line: 208, column: 41, scope: !18276, inlinedAt: !18249)
!18310 = !DILocation(line: 3998, column: 17, scope: !18311, inlinedAt: !18312)
!18311 = distinct !DISubprogram(name: "atomic_compare_exchange<*mut std::sync::mpmc::list::Block<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic23atomic_compare_exchangeOINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockINtNtB6_6result6ResultIB1O_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_3any3AnyNtNtB6_6marker4SendEL_EEEECseyIfFeUOWMb_17polars_mem_engine", scope: !190, file: !188, line: 3969, type: !13, scopeLine: 3969, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18312 = distinct !DILocation(line: 1920, column: 18, scope: !18313, inlinedAt: !18314)
!18313 = distinct !DISubprogram(name: "compare_exchange<std::sync::mpmc::list::Block<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicOINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockINtNtB9_6result6ResultIB1F_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB9_3any3AnyNtNtB9_6marker4SendEL_EEEE16compare_exchangeCseyIfFeUOWMb_17polars_mem_engine", scope: !189, file: !188, line: 1912, type: !13, scopeLine: 1912, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18314 = distinct !DILocation(line: 213, column: 22, scope: !18315, inlinedAt: !18249)
!18315 = distinct !DILexicalBlock(scope: !18276, file: !17811, line: 208, column: 17)
!18316 = !DILocation(line: 210, column: 20, scope: !18315, inlinedAt: !18249)
!18317 = !DILocation(line: 3890, column: 24, scope: !18318, inlinedAt: !18319)
!18318 = distinct !DISubprogram(name: "atomic_store<*mut std::sync::mpmc::list::Block<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic12atomic_storeOINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockINtNtB6_6result6ResultIB1D_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_3any3AnyNtNtB6_6marker4SendEL_EEEECseyIfFeUOWMb_17polars_mem_engine", scope: !190, file: !188, line: 3885, type: !13, scopeLine: 3885, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18319 = distinct !DILocation(line: 1763, column: 13, scope: !18320, inlinedAt: !18321)
!18320 = distinct !DISubprogram(name: "store<std::sync::mpmc::list::Block<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicOINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockINtNtB9_6result6ResultIB1F_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB9_3any3AnyNtNtB9_6marker4SendEL_EEEE5storeCseyIfFeUOWMb_17polars_mem_engine", scope: !189, file: !188, line: 1760, type: !13, scopeLine: 1760, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18321 = distinct !DILocation(line: 221, column: 37, scope: !18315, inlinedAt: !18249)
!18322 = !DILocation(line: 3896, column: 2, scope: !18318, inlinedAt: !18319)
!18323 = !DILocation(line: 810, column: 1, scope: !18324, inlinedAt: !18325)
!18324 = distinct !DISubprogram(name: "drop_in_place<core::option::Option<alloc::boxed::Box<std::sync::mpmc::list::Block<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>, alloc::alloc::Global>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultIB2o_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEIB13_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEEECseyIfFeUOWMb_17polars_mem_engine", scope: !66, file: !106, line: 810, type: !398, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18325 = distinct !DILocation(line: 224, column: 21, scope: !18315, inlinedAt: !18249)
!18326 = !DILocation(line: 128, column: 14, scope: !2788, inlinedAt: !18327)
!18327 = distinct !DILocation(line: 229, column: 22, scope: !2792, inlinedAt: !18328)
!18328 = distinct !DILocation(line: 344, column: 9, scope: !2795, inlinedAt: !18329)
!18329 = distinct !DILocation(line: 462, column: 23, scope: !2797, inlinedAt: !18330)
!18330 = distinct !DILocation(line: 1921, column: 24, scope: !18107, inlinedAt: !18331)
!18331 = distinct !DILocation(line: 810, column: 1, scope: !18111, inlinedAt: !18332)
!18332 = distinct !DILocation(line: 810, column: 1, scope: !18324, inlinedAt: !18325)
!18333 = !DILocation(line: 0, scope: !18263, inlinedAt: !18249)
!18334 = !DILocation(line: 231, column: 28, scope: !18276, inlinedAt: !18249)
!18335 = !DILocation(line: 4084, column: 17, scope: !18336, inlinedAt: !18337)
!18336 = distinct !DISubprogram(name: "atomic_compare_exchange_weak<usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic28atomic_compare_exchange_weakjECseyIfFeUOWMb_17polars_mem_engine", scope: !190, file: !188, line: 4034, type: !13, scopeLine: 4034, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18337 = distinct !DILocation(line: 3130, column: 21, scope: !18338, inlinedAt: !18339)
!18338 = distinct !DISubprogram(name: "compare_exchange_weak", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE21compare_exchange_weak", scope: !189, file: !188, line: 3123, type: !13, scopeLine: 3123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18339 = distinct !DILocation(line: 234, column: 35, scope: !18340, inlinedAt: !18249)
!18340 = distinct !DILexicalBlock(scope: !18276, file: !17811, line: 231, column: 13)
!18341 = !DILocation(line: 234, column: 13, scope: !18340, inlinedAt: !18249)
!18342 = !DILocation(line: 1077, column: 12, scope: !18343, inlinedAt: !18344)
!18343 = distinct !DISubprogram(name: "min<u32>", linkageName: "_RNvYmNtNtCscgRAwXFJnXP_4core3cmp3Ord3minCseyIfFeUOWMb_17polars_mem_engine", scope: !13326, file: !998, line: 1073, type: !13, scopeLine: 1073, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18344 = distinct !DILocation(line: 114, column: 36, scope: !18345, inlinedAt: !18346)
!18345 = distinct !DISubprogram(name: "spin_light", linkageName: "_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light", scope: !18025, file: !18024, line: 113, type: !13, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18346 = distinct !DILocation(line: 254, column: 29, scope: !18340, inlinedAt: !18249)
!18347 = !DILocation(line: 3558, column: 28, scope: !18040, inlinedAt: !18348)
!18348 = distinct !DILocation(line: 115, column: 26, scope: !18349, inlinedAt: !18346)
!18349 = distinct !DILexicalBlock(scope: !18345, file: !18024, line: 114, column: 9)
!18350 = !DILocation(line: 1917, column: 50, scope: !18351, inlinedAt: !18352)
!18351 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXs10_NtNtCscgRAwXFJnXP_4core3cmp5implsmNtB8_10PartialOrd2lt", scope: !11581, file: !998, line: 1917, type: !13, scopeLine: 1917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18352 = distinct !DILocation(line: 781, column: 12, scope: !18353, inlinedAt: !18354)
!18353 = distinct !DISubprogram(name: "spec_next<u32>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangemENtB5_17RangeIteratorImpl9spec_nextCseyIfFeUOWMb_17polars_mem_engine", scope: !11740, file: !11739, line: 780, type: !13, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18354 = distinct !DILocation(line: 866, column: 14, scope: !18355, inlinedAt: !18356)
!18355 = distinct !DISubprogram(name: "next<u32>", linkageName: "_RNvXs4_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangemENtNtNtB7_6traits8iterator8Iterator4nextCseyIfFeUOWMb_17polars_mem_engine", scope: !11744, file: !11739, line: 865, type: !13, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18356 = distinct !DILocation(line: 115, column: 18, scope: !18357, inlinedAt: !18346)
!18357 = !DILexicalBlockFile(scope: !18358, file: !18024, discriminator: 2)
!18358 = distinct !DILexicalBlock(scope: !18349, file: !18024, line: 115, column: 9)
!18359 = !DILocation(line: 781, column: 12, scope: !18353, inlinedAt: !18354)
!18360 = !DILocation(line: 25, column: 14, scope: !18361, inlinedAt: !18362)
!18361 = distinct !DISubprogram(name: "_mm_pause", linkageName: "_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864sse29__mm_pause", scope: !13206, file: !13204, line: 22, type: !13, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18362 = distinct !DILocation(line: 287, column: 13, scope: !18363, inlinedAt: !18364)
!18363 = distinct !DISubprogram(name: "spin_loop", linkageName: "_RNvNtCscgRAwXFJnXP_4core4hint9spin_loop", scope: !16550, file: !16549, line: 270, type: !13, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18364 = distinct !DILocation(line: 116, column: 13, scope: !18358, inlinedAt: !18346)
!18365 = distinct !{!18365, !18051}
!18366 = !DILocation(line: 119, column: 23, scope: !18349, inlinedAt: !18346)
!18367 = !DILocation(line: 555, column: 18, scope: !18368, inlinedAt: !18369)
!18368 = distinct !DISubprogram(name: "get<u32>", linkageName: "_RNvMs8_NtCscgRAwXFJnXP_4core4cellINtB5_4CellmE3getCseyIfFeUOWMb_17polars_mem_engine", scope: !1559, file: !183, line: 552, type: !13, scopeLine: 552, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18369 = distinct !DILocation(line: 119, column: 33, scope: !18349, inlinedAt: !18346)
!18370 = !DILocation(line: 242, column: 24, scope: !18340, inlinedAt: !18249)
!18371 = !DILocation(line: 1014, column: 15, scope: !18372, inlinedAt: !18373)
!18372 = distinct !DISubprogram(name: "unwrap<alloc::boxed::Box<std::sync::mpmc::list::Block<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>, alloc::alloc::Global>>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultIB23_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEIBI_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEE6unwrapCseyIfFeUOWMb_17polars_mem_engine", scope: !249, file: !247, line: 1013, type: !13, scopeLine: 1013, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18373 = distinct !DILocation(line: 243, column: 67, scope: !18340, inlinedAt: !18249)
!18374 = !DILocation(line: 1014, column: 9, scope: !18372, inlinedAt: !18373)
!18375 = !DILocation(line: 1016, column: 21, scope: !18372, inlinedAt: !18373)
!18376 = !DILocation(line: 3890, column: 24, scope: !18318, inlinedAt: !18377)
!18377 = distinct !DILocation(line: 1763, column: 13, scope: !18320, inlinedAt: !18378)
!18378 = distinct !DILocation(line: 244, column: 41, scope: !18379, inlinedAt: !18249)
!18379 = distinct !DILexicalBlock(scope: !18340, file: !17811, line: 243, column: 25)
!18380 = !DILocation(line: 3939, column: 24, scope: !18381, inlinedAt: !18382)
!18381 = distinct !DISubprogram(name: "atomic_add<usize, usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic10atomic_addjjECseyIfFeUOWMb_17polars_mem_engine", scope: !190, file: !188, line: 3933, type: !13, scopeLine: 3933, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18382 = distinct !DILocation(line: 3162, column: 26, scope: !18383, inlinedAt: !18384)
!18383 = distinct !DISubprogram(name: "fetch_add", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE9fetch_add", scope: !189, file: !188, line: 3160, type: !13, scopeLine: 3160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18384 = distinct !DILocation(line: 245, column: 41, scope: !18379, inlinedAt: !18249)
!18385 = !DILocation(line: 246, column: 25, scope: !18379, inlinedAt: !18249)
!18386 = !DILocation(line: 3890, column: 24, scope: !18318, inlinedAt: !18387)
!18387 = distinct !DILocation(line: 1763, column: 13, scope: !18320, inlinedAt: !18388)
!18388 = distinct !DILocation(line: 246, column: 39, scope: !18379, inlinedAt: !18249)
!18389 = !DILocation(line: 3905, column: 24, scope: !3312, inlinedAt: !18390)
!18390 = distinct !DILocation(line: 2870, column: 26, scope: !18245, inlinedAt: !18391)
!18391 = distinct !DILocation(line: 0, scope: !18276, inlinedAt: !18249)
!18392 = !DILocation(line: 3905, column: 24, scope: !18117, inlinedAt: !18393)
!18393 = distinct !DILocation(line: 1732, column: 18, scope: !18261, inlinedAt: !18391)
!18394 = !DILocation(line: 810, column: 1, scope: !18324, inlinedAt: !18395)
!18395 = distinct !DILocation(line: 260, column: 5, scope: !18268, inlinedAt: !18249)
!18396 = !DILocation(line: 128, column: 14, scope: !2788, inlinedAt: !18397)
!18397 = distinct !DILocation(line: 229, column: 22, scope: !2792, inlinedAt: !18398)
!18398 = distinct !DILocation(line: 344, column: 9, scope: !2795, inlinedAt: !18399)
!18399 = distinct !DILocation(line: 462, column: 23, scope: !2797, inlinedAt: !18400)
!18400 = distinct !DILocation(line: 1921, column: 24, scope: !18107, inlinedAt: !18401)
!18401 = distinct !DILocation(line: 810, column: 1, scope: !18111, inlinedAt: !18402)
!18402 = distinct !DILocation(line: 810, column: 1, scope: !18324, inlinedAt: !18395)
!18403 = !DILocation(line: 0, scope: !18239)
!18404 = !DILocation(line: 0, scope: !18267, inlinedAt: !18249)
!18405 = !DILocation(line: 810, column: 1, scope: !18324, inlinedAt: !18406)
!18406 = distinct !DILocation(line: 260, column: 5, scope: !18268, inlinedAt: !18249)
!18407 = !DILocation(line: 128, column: 14, scope: !2788, inlinedAt: !18408)
!18408 = distinct !DILocation(line: 229, column: 22, scope: !2792, inlinedAt: !18409)
!18409 = distinct !DILocation(line: 344, column: 9, scope: !2795, inlinedAt: !18410)
!18410 = distinct !DILocation(line: 462, column: 23, scope: !2797, inlinedAt: !18411)
!18411 = distinct !DILocation(line: 1921, column: 24, scope: !18107, inlinedAt: !18412)
!18412 = distinct !DILocation(line: 810, column: 1, scope: !18111, inlinedAt: !18413)
!18413 = distinct !DILocation(line: 810, column: 1, scope: !18324, inlinedAt: !18406)
!18414 = !{!18415}
!18415 = distinct !{!18415, !18416, !"_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE5writeCseyIfFeUOWMb_17polars_mem_engine: argument 0"}
!18416 = distinct !{!18416, !"_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE5writeCseyIfFeUOWMb_17polars_mem_engine"}
!18417 = !DILocation(line: 411, column: 23, scope: !18250)
!18418 = !{!18419}
!18419 = distinct !{!18419, !18416, !"_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE5writeCseyIfFeUOWMb_17polars_mem_engine: argument 1"}
!18420 = !DILocation(line: 252, column: 39, scope: !18421, inlinedAt: !18422)
!18421 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::list::Slot<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list4SlotINtNtB9_6result6ResultIB1K_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB9_3any3AnyNtNtB9_6marker4SendEL_EEEE13get_uncheckedCseyIfFeUOWMb_17polars_mem_engine", scope: !16915, file: !16914, line: 239, type: !13, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18422 = distinct !DILocation(line: 646, column: 26, scope: !18423, inlinedAt: !18424)
!18423 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::list::Slot<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list4SlotINtNtB5_6result6ResultIB1h_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB5_3any3AnyNtNtB5_6marker4SendEL_EEE13get_uncheckedjECseyIfFeUOWMb_17polars_mem_engine", scope: !465, file: !464, line: 639, type: !13, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18424 = distinct !DILocation(line: 273, column: 39, scope: !18425, inlinedAt: !18273)
!18425 = distinct !DILexicalBlock(scope: !18426, file: !17811, line: 271, column: 9)
!18426 = distinct !DILexicalBlock(scope: !18272, file: !17811, line: 270, column: 9)
!18427 = !DILocation(line: 252, column: 13, scope: !18421, inlinedAt: !18422)
!18428 = !DILocation(line: 253, column: 13, scope: !18421, inlinedAt: !18422)
!18429 = !DILocation(line: 1921, column: 41, scope: !18430, inlinedAt: !18431)
!18430 = distinct !DISubprogram(name: "write<core::mem::maybe_uninit::MaybeUninit<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr5writeINtNtNtB4_3mem12maybe_uninit11MaybeUninitINtNtB4_6result6ResultIB1d_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECseyIfFeUOWMb_17polars_mem_engine", scope: !66, file: !106, line: 1898, type: !13, scopeLine: 1898, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18431 = distinct !DILocation(line: 1418, column: 18, scope: !18432, inlinedAt: !18433)
!18432 = distinct !DISubprogram(name: "write<core::mem::maybe_uninit::MaybeUninit<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOINtNtNtB6_3mem12maybe_uninit11MaybeUninitINtNtB6_6result6ResultIB1i_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_3any3AnyNtNtB6_6marker4SendEL_EEE5writeCseyIfFeUOWMb_17polars_mem_engine", scope: !64, file: !63, line: 1413, type: !13, scopeLine: 1413, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18433 = distinct !DILocation(line: 274, column: 28, scope: !18434, inlinedAt: !18273)
!18434 = distinct !DILexicalBlock(scope: !18425, file: !17811, line: 273, column: 13)
!18435 = !DILocation(line: 2447, column: 9, scope: !18436, inlinedAt: !18437)
!18436 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<usize>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8jEE3getCseyIfFeUOWMb_17polars_mem_engine", scope: !184, file: !183, line: 2443, type: !13, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18437 = distinct !DILocation(line: 3615, column: 24, scope: !18438, inlinedAt: !18439)
!18438 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE6as_ptr", scope: !189, file: !188, line: 3614, type: !13, scopeLine: 3614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18439 = distinct !DILocation(line: 3295, column: 41, scope: !18440, inlinedAt: !18441)
!18440 = distinct !DISubprogram(name: "fetch_or", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE8fetch_or", scope: !189, file: !188, line: 3293, type: !13, scopeLine: 3293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18441 = distinct !DILocation(line: 275, column: 24, scope: !18434, inlinedAt: !18273)
!18442 = !DILocation(line: 4137, column: 24, scope: !18443, inlinedAt: !18444)
!18443 = distinct !DISubprogram(name: "atomic_or<usize, usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic9atomic_orjjECseyIfFeUOWMb_17polars_mem_engine", scope: !190, file: !188, line: 4131, type: !13, scopeLine: 4131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18444 = distinct !DILocation(line: 3295, column: 26, scope: !18440, inlinedAt: !18441)
!18445 = !{!18415, !18419}
!18446 = !DILocation(line: 2447, column: 9, scope: !18447, inlinedAt: !18448)
!18447 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align1<u8>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align1hEE3getCseyIfFeUOWMb_17polars_mem_engine", scope: !184, file: !183, line: 2443, type: !13, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18448 = distinct !DILocation(line: 741, column: 37, scope: !18449, inlinedAt: !18450)
!18449 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs2_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicbE4load", scope: !189, file: !188, line: 738, type: !13, scopeLine: 738, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18450 = distinct !DILocation(line: 172, column: 27, scope: !18451, inlinedAt: !18452)
!18451 = distinct !DISubprogram(name: "notify", linkageName: "_RNvMs0_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify", scope: !17829, file: !17114, line: 171, type: !13, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18452 = distinct !DILocation(line: 279, column: 24, scope: !18425, inlinedAt: !18273)
!18453 = !DILocation(line: 3906, column: 23, scope: !18454, inlinedAt: !18455)
!18454 = distinct !DISubprogram(name: "atomic_load<u8>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic11atomic_loadhECseyIfFeUOWMb_17polars_mem_engine", scope: !190, file: !188, line: 3900, type: !13, scopeLine: 3900, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18455 = distinct !DILocation(line: 741, column: 18, scope: !18449, inlinedAt: !18450)
!18456 = !DILocation(line: 172, column: 13, scope: !18451, inlinedAt: !18452)
!18457 = !DILocation(line: 279, column: 9, scope: !18425, inlinedAt: !18273)
!18458 = !DILocation(line: 173, column: 29, scope: !18451, inlinedAt: !18452)
!18459 = !DILocation(line: 173, column: 40, scope: !18451, inlinedAt: !18452)
!18460 = !{!18461}
!18461 = distinct !{!18461, !18462, !"_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCseyIfFeUOWMb_17polars_mem_engine: argument 0"}
!18462 = distinct !{!18462, !"_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCseyIfFeUOWMb_17polars_mem_engine"}
!18463 = !DILocation(line: 173, column: 47, scope: !18451, inlinedAt: !18452)
!18464 = !DILocation(line: 1231, column: 15, scope: !17837, inlinedAt: !18465)
!18465 = distinct !DILocation(line: 173, column: 47, scope: !18451, inlinedAt: !18452)
!18466 = !{!18467, !18415, !18419}
!18467 = distinct !{!18467, !18462, !"_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCseyIfFeUOWMb_17polars_mem_engine: argument 1"}
!18468 = !DILocation(line: 1231, column: 9, scope: !17837, inlinedAt: !18465)
!18469 = !DILocation(line: 1233, column: 17, scope: !17837, inlinedAt: !18465)
!18470 = !{!18461, !18467, !18415, !18419}
!18471 = !DILocation(line: 1233, column: 23, scope: !17845, inlinedAt: !18465)
!18472 = !{!18461, !18415, !18419}
!18473 = !DILocation(line: 1233, column: 86, scope: !17837, inlinedAt: !18465)
!18474 = !DILocation(line: 1227, column: 5, scope: !17837, inlinedAt: !18465)
!18475 = !DILocation(line: 182, column: 9, scope: !18451, inlinedAt: !18452)
!18476 = !DILocation(line: 1232, column: 16, scope: !17837, inlinedAt: !18465)
!18477 = !DILocation(line: 173, column: 54, scope: !18451, inlinedAt: !18452)
!18478 = !DILocation(line: 3906, column: 23, scope: !18454, inlinedAt: !18479)
!18479 = distinct !DILocation(line: 741, column: 18, scope: !18449, inlinedAt: !18480)
!18480 = distinct !DILocation(line: 174, column: 31, scope: !18481, inlinedAt: !18452)
!18481 = distinct !DILexicalBlock(scope: !18451, file: !17114, line: 173, column: 13)
!18482 = !DILocation(line: 174, column: 17, scope: !18481, inlinedAt: !18452)
!18483 = !DILocation(line: 175, column: 17, scope: !18481, inlinedAt: !18452)
!18484 = !DILocation(line: 2447, column: 9, scope: !18485, inlinedAt: !18486)
!18485 = distinct !DISubprogram(name: "get<std::sync::mpmc::waker::Waker>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5WakerE3getCseyIfFeUOWMb_17polars_mem_engine", scope: !184, file: !183, line: 2443, type: !13, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18486 = distinct !DILocation(line: 736, column: 39, scope: !18487, inlinedAt: !18488)
!18487 = distinct !DISubprogram(name: "deref_mut<std::sync::mpmc::waker::Waker>", linkageName: "_RNvXsb_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_10MutexGuardNtNtNtB9_4mpmc5waker5WakerENtNtNtCscgRAwXFJnXP_4core3ops5deref8DerefMut9deref_mutCseyIfFeUOWMb_17polars_mem_engine", scope: !17855, file: !5212, line: 735, type: !13, scopeLine: 735, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18488 = distinct !DILocation(line: 175, column: 17, scope: !18481, inlinedAt: !18452)
!18489 = !{!18490}
!18490 = distinct !{!18490, !18491, !"_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10try_select: argument 1"}
!18491 = distinct !{!18491, !"_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10try_select"}
!18492 = !DILocation(line: 175, column: 23, scope: !18481, inlinedAt: !18452)
!18493 = !DILocation(line: 3024, column: 19, scope: !18494, inlinedAt: !18495)
!18494 = distinct !DISubprogram(name: "len<std::sync::mpmc::waker::Entry, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryE3lenCseyIfFeUOWMb_17polars_mem_engine", scope: !54, file: !41, line: 3023, type: !13, scopeLine: 3023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18495 = distinct !DILocation(line: 3049, column: 14, scope: !18496, inlinedAt: !18497)
!18496 = distinct !DISubprogram(name: "is_empty<std::sync::mpmc::waker::Entry, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryE8is_emptyCseyIfFeUOWMb_17polars_mem_engine", scope: !54, file: !41, line: 3048, type: !13, scopeLine: 3048, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18497 = distinct !DILocation(line: 68, column: 27, scope: !18498, inlinedAt: !18499)
!18498 = distinct !DISubprogram(name: "try_select", linkageName: "_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10try_select", scope: !17115, file: !17114, line: 67, type: !13, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18499 = distinct !DILocation(line: 175, column: 23, scope: !18481, inlinedAt: !18452)
!18500 = !{!18501, !18415, !18419}
!18501 = distinct !{!18501, !18491, !"_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10try_select: argument 0"}
!18502 = !DILocation(line: 3029, column: 37, scope: !18503, inlinedAt: !18495)
!18503 = distinct !DILexicalBlock(scope: !18494, file: !41, line: 3024, column: 9)
!18504 = !DILocation(line: 3029, column: 18, scope: !18503, inlinedAt: !18495)
!18505 = !DILocation(line: 68, column: 12, scope: !18498, inlinedAt: !18499)
!18506 = !DILocation(line: 208, column: 11, scope: !18507, inlinedAt: !18508)
!18507 = distinct !DISubprogram(name: "current_thread_id", linkageName: "_RNvNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker17current_thread_id", scope: !17116, file: !17114, line: 204, type: !13, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18508 = distinct !DILocation(line: 71, column: 29, scope: !18498, inlinedAt: !18499)
!18509 = !DILocation(line: 614, column: 9, scope: !18510, inlinedAt: !18511)
!18510 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, std::sync::mpmc::waker::Entry>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryECseyIfFeUOWMb_17polars_mem_engine", scope: !11700, file: !886, line: 613, type: !13, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18511 = distinct !DILocation(line: 609, column: 14, scope: !18512, inlinedAt: !18513)
!18512 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, std::sync::mpmc::waker::Entry>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryECseyIfFeUOWMb_17polars_mem_engine", scope: !11700, file: !886, line: 608, type: !13, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18513 = distinct !DILocation(line: 296, column: 20, scope: !18514, inlinedAt: !18515)
!18514 = distinct !DISubprogram(name: "ptr<std::sync::mpmc::waker::Entry, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryE3ptrCseyIfFeUOWMb_17polars_mem_engine", scope: !889, file: !886, line: 295, type: !13, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18515 = distinct !DILocation(line: 1942, column: 18, scope: !18516, inlinedAt: !18517)
!18516 = distinct !DISubprogram(name: "as_ptr<std::sync::mpmc::waker::Entry, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryE6as_ptrCseyIfFeUOWMb_17polars_mem_engine", scope: !54, file: !41, line: 1939, type: !13, scopeLine: 1939, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18517 = distinct !DILocation(line: 1841, column: 76, scope: !18518, inlinedAt: !18519)
!18518 = distinct !DISubprogram(name: "as_slice<std::sync::mpmc::waker::Entry, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryE8as_sliceCseyIfFeUOWMb_17polars_mem_engine", scope: !54, file: !41, line: 1824, type: !13, scopeLine: 1824, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18519 = distinct !DILocation(line: 3756, column: 14, scope: !18520, inlinedAt: !18521)
!18520 = distinct !DISubprogram(name: "deref<std::sync::mpmc::waker::Entry, alloc::alloc::Global>", linkageName: "_RNvXs7_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCseyIfFeUOWMb_17polars_mem_engine", scope: !15974, file: !41, line: 3755, type: !13, scopeLine: 3755, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18521 = distinct !DILocation(line: 73, column: 13, scope: !18522, inlinedAt: !18499)
!18522 = distinct !DILexicalBlock(scope: !18498, file: !17114, line: 71, column: 13)
!18523 = !DILocation(line: 961, column: 18, scope: !18524, inlinedAt: !18525)
!18524 = distinct !DISubprogram(name: "add<std::sync::mpmc::waker::Entry>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrONtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5Entry3addCseyIfFeUOWMb_17polars_mem_engine", scope: !64, file: !63, line: 927, type: !13, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18525 = distinct !DILocation(line: 102, column: 78, scope: !18526, inlinedAt: !18529)
!18526 = distinct !DILexicalBlock(scope: !18527, file: !456, line: 98, column: 9)
!18527 = distinct !DILexicalBlock(scope: !18528, file: !456, line: 97, column: 9)
!18528 = distinct !DISubprogram(name: "new<std::sync::mpmc::waker::Entry>", linkageName: "_RNvMs4_NtNtCscgRAwXFJnXP_4core5slice4iterINtB5_4IterNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryE3newCseyIfFeUOWMb_17polars_mem_engine", scope: !459, file: !456, line: 96, type: !13, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18529 = distinct !DILocation(line: 1041, column: 9, scope: !18530, inlinedAt: !18531)
!18530 = distinct !DISubprogram(name: "iter<std::sync::mpmc::waker::Entry>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5Entry4iterCseyIfFeUOWMb_17polars_mem_engine", scope: !465, file: !464, line: 1040, type: !13, scopeLine: 1040, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18531 = distinct !DILocation(line: 74, column: 18, scope: !18522, inlinedAt: !18499)
!18532 = !DILocation(line: 77, column: 21, scope: !18533, inlinedAt: !18536)
!18533 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CseyIfFeUOWMb_17polars_mem_engine", scope: !18534, file: !17114, line: 75, type: !398, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18534 = !DINamespace(name: "try_select", scope: !18535)
!18535 = !DINamespace(name: "{impl#0}", scope: !17116)
!18536 = distinct !DILocation(line: 384, column: 24, scope: !18537, inlinedAt: !18541)
!18537 = distinct !DILexicalBlock(scope: !18538, file: !16421, line: 383, column: 49)
!18538 = distinct !DILexicalBlock(scope: !18539, file: !16421, line: 382, column: 17)
!18539 = distinct !DILexicalBlock(scope: !18540, file: !16421, line: 381, column: 17)
!18540 = distinct !DISubprogram(name: "position<std::sync::mpmc::waker::Entry, std::sync::mpmc::waker::{impl#0}::try_select::{closure_env#0}>", linkageName: "_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvMBS_NtBS_5Waker10try_select0ECseyIfFeUOWMb_17polars_mem_engine", scope: !17124, file: !16421, line: 377, type: !13, scopeLine: 377, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18541 = distinct !DILocation(line: 75, column: 18, scope: !18522, inlinedAt: !18499)
!18542 = !DILocation(line: 659, column: 28, scope: !18543, inlinedAt: !18544)
!18543 = distinct !DISubprogram(name: "add<std::sync::mpmc::waker::Entry>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryE3addCseyIfFeUOWMb_17polars_mem_engine", scope: !229, file: !228, line: 651, type: !13, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18544 = distinct !DILocation(line: 185, column: 40, scope: !18545, inlinedAt: !18548)
!18545 = distinct !DILexicalBlock(scope: !18546, file: !16421, line: 162, column: 17)
!18546 = distinct !DILexicalBlock(scope: !18547, file: !16421, line: 161, column: 17)
!18547 = distinct !DISubprogram(name: "next<std::sync::mpmc::waker::Entry>", linkageName: "_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCseyIfFeUOWMb_17polars_mem_engine", scope: !17124, file: !16421, line: 157, type: !13, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18548 = distinct !DILocation(line: 383, column: 42, scope: !18537, inlinedAt: !18541)
!18549 = !{!18550}
!18550 = distinct !{!18550, !18551, !"_RNCNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CseyIfFeUOWMb_17polars_mem_engine: argument 0"}
!18551 = distinct !{!18551, !"_RNCNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CseyIfFeUOWMb_17polars_mem_engine"}
!18552 = !DILocation(line: 384, column: 24, scope: !18537, inlinedAt: !18541)
!18553 = !DILocation(line: 444, column: 20, scope: !18554, inlinedAt: !18555)
!18554 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<std::sync::mpmc::context::Inner>>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullINtNtCsgZ49sUHp3tW_5alloc4sync8ArcInnerNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEE6as_refCseyIfFeUOWMb_17polars_mem_engine", scope: !229, file: !228, line: 440, type: !13, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18555 = distinct !DILocation(line: 2110, column: 27, scope: !18556, inlinedAt: !18557)
!18556 = distinct !DISubprogram(name: "inner<std::sync::mpmc::context::Inner, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerE5innerCseyIfFeUOWMb_17polars_mem_engine", scope: !234, file: !233, line: 2104, type: !13, scopeLine: 2104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18557 = distinct !DILocation(line: 2428, column: 15, scope: !18558, inlinedAt: !18559)
!18558 = distinct !DISubprogram(name: "deref<std::sync::mpmc::context::Inner, alloc::alloc::Global>", linkageName: "_RNvXsw_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCseyIfFeUOWMb_17polars_mem_engine", scope: !1151, file: !233, line: 2427, type: !13, scopeLine: 2427, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18559 = distinct !DILocation(line: 157, column: 9, scope: !18560, inlinedAt: !18561)
!18560 = distinct !DISubprogram(name: "thread_id", linkageName: "_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB2_7Context9thread_id", scope: !17208, file: !17207, line: 156, type: !13, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18561 = distinct !DILocation(line: 77, column: 33, scope: !18533, inlinedAt: !18536)
!18562 = !{!18563, !18565, !18501, !18490, !18415, !18419}
!18563 = distinct !{!18563, !18564, !"_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvMBS_NtBS_5Waker10try_select0ECseyIfFeUOWMb_17polars_mem_engine: argument 0"}
!18564 = distinct !{!18564, !"_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvMBS_NtBS_5Waker10try_select0ECseyIfFeUOWMb_17polars_mem_engine"}
!18565 = distinct !{!18565, !18564, !"_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvMBS_NtBS_5Waker10try_select0ECseyIfFeUOWMb_17polars_mem_engine: argument 1"}
!18566 = !DILocation(line: 157, column: 9, scope: !18560, inlinedAt: !18561)
!18567 = !{!18550, !18563, !18565, !18501, !18490, !18415, !18419}
!18568 = !DILocation(line: 80, column: 61, scope: !18533, inlinedAt: !18536)
!18569 = !DILocation(line: 2447, column: 9, scope: !17200, inlinedAt: !18570)
end_hunk_2
begin_hunk_3_@llvm.vector.reduce.add.v2i64
!18618 = distinct !DILocation(line: 2927, column: 26, scope: !18612, inlinedAt: !18613)
!18619 = !DILocation(line: 96, column: 12, scope: !18614, inlinedAt: !18615)
!18620 = !DILocation(line: 97, column: 13, scope: !18614, inlinedAt: !18615)
!18621 = !DILocation(line: 390, column: 21, scope: !18537, inlinedAt: !18541)
!18622 = !DILocation(line: 1717, column: 9, scope: !18623, inlinedAt: !18624)
!18623 = distinct !DISubprogram(name: "eq<std::sync::mpmc::waker::Entry>", linkageName: "_RNvXsd_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryENtNtB9_3cmp9PartialEq2eqCseyIfFeUOWMb_17polars_mem_engine", scope: !573, file: !228, line: 1716, type: !13, scopeLine: 1716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18624 = distinct !DILocation(line: 180, column: 28, scope: !18545, inlinedAt: !18548)
!18625 = !DILocation(line: 180, column: 28, scope: !18545, inlinedAt: !18548)
!18626 = !DILocation(line: 387, column: 51, scope: !18537, inlinedAt: !18541)
!18627 = !DILocation(line: 210, column: 9, scope: !18628, inlinedAt: !18629)
!18628 = distinct !DISubprogram(name: "assert_unchecked", linkageName: "_RNvNtCscgRAwXFJnXP_4core4hint16assert_unchecked", scope: !16550, file: !16549, line: 202, type: !13, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18629 = distinct !DILocation(line: 387, column: 34, scope: !18537, inlinedAt: !18541)
!18630 = !DILocation(line: 92, column: 43, scope: !18631, inlinedAt: !18632)
!18631 = distinct !DISubprogram(name: "{closure#1}", linkageName: "_RNCNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB4_5Waker10try_selects_0CseyIfFeUOWMb_17polars_mem_engine", scope: !18534, file: !17114, line: 92, type: !13, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18632 = distinct !DILocation(line: 1165, column: 29, scope: !18633, inlinedAt: !18635)
!18633 = distinct !DILexicalBlock(scope: !18634, file: !247, line: 1165, column: 13)
!18634 = distinct !DISubprogram(name: "map<usize, std::sync::mpmc::waker::Entry, std::sync::mpmc::waker::{impl#0}::try_select::{closure_env#1}>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionjE3mapNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryNCNvMBQ_NtBQ_5Waker10try_selects_0ECseyIfFeUOWMb_17polars_mem_engine", scope: !249, file: !247, line: 1160, type: !13, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18635 = distinct !DILocation(line: 92, column: 18, scope: !18522, inlinedAt: !18499)
!18636 = !DILocation(line: 810, column: 1, scope: !18637, inlinedAt: !18638)
!18637 = distinct !DISubprogram(name: "drop_in_place<core::option::Option<std::sync::mpmc::waker::Entry>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryEECseyIfFeUOWMb_17polars_mem_engine", scope: !66, file: !106, line: 810, type: !13, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18638 = distinct !DILocation(line: 175, column: 35, scope: !18481, inlinedAt: !18452)
!18639 = !{!18640}
!18640 = distinct !{!18640, !18641, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryEECseyIfFeUOWMb_17polars_mem_engine: argument 0"}
!18641 = distinct !{!18641, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryEECseyIfFeUOWMb_17polars_mem_engine"}
!18642 = !DILocation(line: 175, column: 35, scope: !18481, inlinedAt: !18452)
!18643 = !DILocation(line: 3956, column: 24, scope: !17174, inlinedAt: !18644)
!18644 = distinct !DILocation(line: 3193, column: 26, scope: !17176, inlinedAt: !18645)
!18645 = distinct !DILocation(line: 2814, column: 32, scope: !17170, inlinedAt: !18646)
!18646 = distinct !DILocation(line: 810, column: 1, scope: !17163, inlinedAt: !18647)
!18647 = distinct !DILocation(line: 810, column: 1, scope: !17157, inlinedAt: !18648)
!18648 = distinct !DILocation(line: 810, column: 1, scope: !17151, inlinedAt: !18649)
!18649 = distinct !DILocation(line: 810, column: 1, scope: !18637, inlinedAt: !18638)
!18650 = !{!18651, !18653, !18655, !18657, !18640, !18415, !18419}
!18651 = distinct !{!18651, !18652, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseyIfFeUOWMb_17polars_mem_engine: argument 0"}
!18652 = distinct !{!18652, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseyIfFeUOWMb_17polars_mem_engine"}
!18653 = distinct !{!18653, !18654, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECseyIfFeUOWMb_17polars_mem_engine: argument 0"}
!18654 = distinct !{!18654, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECseyIfFeUOWMb_17polars_mem_engine"}
!18655 = distinct !{!18655, !18656, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECseyIfFeUOWMb_17polars_mem_engine: argument 0"}
!18656 = distinct !{!18656, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECseyIfFeUOWMb_17polars_mem_engine"}
!18657 = distinct !{!18657, !18658, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryECseyIfFeUOWMb_17polars_mem_engine: argument 0"}
!18658 = distinct !{!18658, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryECseyIfFeUOWMb_17polars_mem_engine"}
!18659 = !DILocation(line: 2814, column: 12, scope: !17170, inlinedAt: !18646)
!18660 = !DILocation(line: 4387, column: 24, scope: !345, inlinedAt: !18661)
!18661 = distinct !DILocation(line: 64, column: 9, scope: !17170, inlinedAt: !18646)
!18662 = !DILocation(line: 2857, column: 18, scope: !17170, inlinedAt: !18646)
!18663 = !DILocation(line: 176, column: 23, scope: !18481, inlinedAt: !18452)
!18664 = !DILocation(line: 3024, column: 19, scope: !18665, inlinedAt: !18666)
!18665 = distinct !DISubprogram(name: "len<std::sync::mpmc::waker::Entry, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryE3lenCseyIfFeUOWMb_17polars_mem_engine", scope: !54, file: !41, line: 3023, type: !13, scopeLine: 3023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18666 = distinct !DILocation(line: 3049, column: 14, scope: !18667, inlinedAt: !18668)
!18667 = distinct !DISubprogram(name: "is_empty<std::sync::mpmc::waker::Entry, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryE8is_emptyCseyIfFeUOWMb_17polars_mem_engine", scope: !54, file: !41, line: 3048, type: !13, scopeLine: 3048, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18668 = distinct !DILocation(line: 178, column: 37, scope: !18481, inlinedAt: !18452)
!18669 = !DILocation(line: 3029, column: 37, scope: !18670, inlinedAt: !18666)
!18670 = distinct !DILexicalBlock(scope: !18665, file: !41, line: 3024, column: 9)
!18671 = !DILocation(line: 3029, column: 18, scope: !18670, inlinedAt: !18666)
!18672 = !DILocation(line: 178, column: 21, scope: !18481, inlinedAt: !18452)
!18673 = !DILocation(line: 3024, column: 19, scope: !18665, inlinedAt: !18674)
!18674 = distinct !DILocation(line: 3049, column: 14, scope: !18675, inlinedAt: !18676)
!18675 = !DILexicalBlockFile(scope: !18667, file: !41, discriminator: 2)
!18676 = distinct !DILocation(line: 178, column: 67, scope: !18481, inlinedAt: !18452)
!18677 = !DILocation(line: 3029, column: 37, scope: !18678, inlinedAt: !18674)
!18678 = distinct !DILexicalBlock(scope: !18665, file: !41, line: 3024, column: 9)
!18679 = !DILocation(line: 3029, column: 18, scope: !18678, inlinedAt: !18674)
!18680 = !DILocation(line: 3049, column: 9, scope: !18667, inlinedAt: !18676)
!18681 = !DILocation(line: 178, scope: !18481, inlinedAt: !18452)
!18682 = !DILocation(line: 3891, column: 23, scope: !5243, inlinedAt: !18683)
!18683 = distinct !DILocation(line: 771, column: 13, scope: !18684, inlinedAt: !18685)
!18684 = distinct !DISubprogram(name: "store", linkageName: "_RNvMs2_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicbE5store", scope: !189, file: !188, line: 767, type: !13, scopeLine: 767, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18685 = distinct !DILocation(line: 177, column: 31, scope: !18481, inlinedAt: !18452)
!18686 = !DILocation(line: 3896, column: 2, scope: !5243, inlinedAt: !18683)
!18687 = !DILocation(line: 745, column: 13, scope: !5211, inlinedAt: !18688)
!18688 = distinct !DILocation(line: 810, column: 1, scope: !5217, inlinedAt: !18689)
!18689 = distinct !DILocation(line: 182, column: 9, scope: !18451, inlinedAt: !18452)
!18690 = !DILocation(line: 129, column: 13, scope: !5220, inlinedAt: !18691)
!18691 = distinct !DILocation(line: 745, column: 30, scope: !5211, inlinedAt: !18688)
!18692 = !DILocation(line: 3904, column: 24, scope: !3312, inlinedAt: !18693)
!18693 = distinct !DILocation(line: 2870, column: 26, scope: !5226, inlinedAt: !18694)
!18694 = distinct !DILocation(line: 464, column: 31, scope: !5228, inlinedAt: !18695)
!18695 = distinct !DILocation(line: 616, column: 6, scope: !5233, inlinedAt: !18696)
!18696 = distinct !DILocation(line: 221, column: 5, scope: !5235, inlinedAt: !18697)
!18697 = distinct !DILocation(line: 129, column: 32, scope: !5220, inlinedAt: !18691)
!18698 = !DILocation(line: 464, column: 12, scope: !5228, inlinedAt: !18695)
!18699 = !DILocation(line: 476, column: 13, scope: !5228, inlinedAt: !18695)
!18700 = !DILocation(line: 129, column: 32, scope: !5220, inlinedAt: !18691)
!18701 = !DILocation(line: 3889, column: 24, scope: !5243, inlinedAt: !18702)
!18702 = distinct !DILocation(line: 771, column: 13, scope: !5245, inlinedAt: !18703)
!18703 = distinct !DILocation(line: 130, column: 25, scope: !5220, inlinedAt: !18691)
!18704 = !DILocation(line: 129, column: 9, scope: !5220, inlinedAt: !18691)
!18705 = !DILocation(line: 3922, column: 24, scope: !5249, inlinedAt: !18706)
!18706 = distinct !DILocation(line: 2927, column: 26, scope: !5251, inlinedAt: !18707)
!18707 = distinct !DILocation(line: 90, column: 23, scope: !5253, inlinedAt: !18708)
!18708 = distinct !DILocation(line: 746, column: 29, scope: !5211, inlinedAt: !18688)
!18709 = !DILocation(line: 90, column: 12, scope: !5253, inlinedAt: !18708)
!18710 = !DILocation(line: 95, column: 18, scope: !5253, inlinedAt: !18708)
!18711 = !DILocation(line: 171, column: 5, scope: !18451, inlinedAt: !18452)
!18712 = !DILocation(line: 411, column: 39, scope: !18250)
!18713 = !DILocation(line: 966, column: 9, scope: !18714, inlinedAt: !18715)
!18714 = distinct !DISubprogram(name: "map_err<(), core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>, std::sync::mpmc::error::SendTimeoutError<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>, fn(core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>) -> std::sync::mpmc::error::SendTimeoutError<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultuIBw_IBw_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB5_3any3AnyNtNtB5_6marker4SendEL_EEE7map_errINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5error16SendTimeoutErrorBJ_ENcNtB3S_12Disconnected0ECseyIfFeUOWMb_17polars_mem_engine", scope: !1740, file: !98, line: 962, type: !13, scopeLine: 962, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18715 = !DILocation(line: 411, column: 41, scope: !18250)
!18716 = !DILocation(line: 266, column: 20, scope: !18272, inlinedAt: !18273)
!18717 = !DILocation(line: 966, column: 15, scope: !18714, inlinedAt: !18715)
!18718 = !DILocation(line: 968, column: 23, scope: !18719, inlinedAt: !18715)
!18719 = distinct !DILexicalBlock(scope: !18714, file: !98, line: 968, column: 13)
!18720 = !DILocation(line: 968, column: 17, scope: !18714, inlinedAt: !18715)
!18721 = !DILocation(line: 968, column: 32, scope: !18714, inlinedAt: !18715)
!18722 = !DILocation(line: 967, column: 22, scope: !18723, inlinedAt: !18715)
!18723 = distinct !DILexicalBlock(scope: !18714, file: !98, line: 967, column: 13)
!18724 = !DILocation(line: 970, column: 5, scope: !18714, inlinedAt: !18715)
!18725 = !DILocation(line: 411, column: 79, scope: !18250)
!18726 = !DILocation(line: 412, column: 6, scope: !18239)
!18727 = !DILocation(line: 404, column: 5, scope: !18239)
!18728 = !DILocation(line: 412, column: 5, scope: !18239)
!18729 = distinct !DISubprogram(name: "try_recv<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>", linkageName: "_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE8try_recvCseyIfFeUOWMb_17polars_mem_engine", scope: !17812, file: !17811, line: 415, type: !13, scopeLine: 415, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18730 = !DILocation(line: 3905, column: 24, scope: !3312, inlinedAt: !18731)
!18731 = distinct !DILocation(line: 2870, column: 26, scope: !18732, inlinedAt: !18733)
!18732 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE4load", scope: !189, file: !188, line: 2868, type: !13, scopeLine: 2868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18733 = distinct !DILocation(line: 286, column: 40, scope: !18734, inlinedAt: !18736)
!18734 = distinct !DILexicalBlock(scope: !18735, file: !17811, line: 285, column: 9)
!18735 = distinct !DISubprogram(name: "start_recv<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>", linkageName: "_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE10start_recvCseyIfFeUOWMb_17polars_mem_engine", scope: !17812, file: !17811, line: 284, type: !13, scopeLine: 284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18736 = distinct !DILocation(line: 418, column: 17, scope: !18737)
!18737 = distinct !DILexicalBlock(scope: !18729, file: !17811, line: 416, column: 9)
!18738 = !{!18739}
!18739 = distinct !{!18739, !18740, !"_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE10start_recvCseyIfFeUOWMb_17polars_mem_engine: argument 0"}
!18740 = distinct !{!18740, !"_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE10start_recvCseyIfFeUOWMb_17polars_mem_engine"}
!18741 = !DILocation(line: 2447, column: 9, scope: !18742, inlinedAt: !18743)
!18742 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<*mut std::sync::mpmc::list::Block<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8OINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockINtNtB7_6result6ResultIB2e_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB7_3any3AnyNtNtB7_6marker4SendEL_EEEEE3getCseyIfFeUOWMb_17polars_mem_engine", scope: !184, file: !183, line: 2443, type: !13, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18743 = distinct !DILocation(line: 2500, column: 16, scope: !18744, inlinedAt: !18745)
!18744 = distinct !DISubprogram(name: "as_ptr<std::sync::mpmc::list::Block<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicOINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockINtNtB9_6result6ResultIB1F_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB9_3any3AnyNtNtB9_6marker4SendEL_EEEE6as_ptrCseyIfFeUOWMb_17polars_mem_engine", scope: !189, file: !188, line: 2499, type: !13, scopeLine: 2499, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18745 = distinct !DILocation(line: 1732, column: 35, scope: !18746, inlinedAt: !18747)
!18746 = distinct !DISubprogram(name: "load<std::sync::mpmc::list::Block<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicOINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockINtNtB9_6result6ResultIB1F_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB9_3any3AnyNtNtB9_6marker4SendEL_EEEE4loadCseyIfFeUOWMb_17polars_mem_engine", scope: !189, file: !188, line: 1730, type: !13, scopeLine: 1730, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18747 = distinct !DILocation(line: 287, column: 41, scope: !18748, inlinedAt: !18736)
!18748 = distinct !DILexicalBlock(scope: !18734, file: !17811, line: 286, column: 9)
!18749 = !DILocation(line: 3905, column: 24, scope: !18117, inlinedAt: !18750)
!18750 = distinct !DILocation(line: 1732, column: 18, scope: !18746, inlinedAt: !18747)
!18751 = !DILocation(line: 289, column: 9, scope: !18752, inlinedAt: !18736)
!18752 = distinct !DILexicalBlock(scope: !18748, file: !17811, line: 287, column: 9)
!18753 = !DILocation(line: 0, scope: !18735, inlinedAt: !18736)
!18754 = !DILocation(line: 1732, column: 18, scope: !18746, inlinedAt: !18755)
!18755 = distinct !DILocation(line: 0, scope: !18748, inlinedAt: !18736)
!18756 = !DILocation(line: 2870, column: 26, scope: !18732, inlinedAt: !18757)
!18757 = distinct !DILocation(line: 0, scope: !18734, inlinedAt: !18736)
!18758 = !DILocation(line: 291, column: 26, scope: !18752, inlinedAt: !18736)
!18759 = !DILocation(line: 294, column: 16, scope: !18760, inlinedAt: !18736)
!18760 = distinct !DILexicalBlock(scope: !18752, file: !17811, line: 291, column: 13)
!18761 = !DILocation(line: 127, column: 12, scope: !18023, inlinedAt: !18762)
!18762 = distinct !DILocation(line: 295, column: 25, scope: !18760, inlinedAt: !18736)
!18763 = !DILocation(line: 132, column: 13, scope: !18023, inlinedAt: !18762)
!18764 = !DILocation(line: 1917, column: 50, scope: !18030, inlinedAt: !18765)
!18765 = distinct !DILocation(line: 781, column: 12, scope: !18032, inlinedAt: !18766)
!18766 = distinct !DILocation(line: 866, column: 14, scope: !18034, inlinedAt: !18767)
!18767 = distinct !DILocation(line: 128, column: 22, scope: !18036, inlinedAt: !18762)
!18768 = !DILocation(line: 781, column: 12, scope: !18032, inlinedAt: !18766)
!18769 = !DILocation(line: 3558, column: 28, scope: !18040, inlinedAt: !18770)
!18770 = distinct !DILocation(line: 128, column: 41, scope: !18023, inlinedAt: !18762)
!18771 = !DILocation(line: 25, column: 14, scope: !18046, inlinedAt: !18772)
!18772 = distinct !DILocation(line: 287, column: 13, scope: !18048, inlinedAt: !18773)
!18773 = distinct !DILocation(line: 129, column: 17, scope: !18037, inlinedAt: !18762)
!18774 = distinct !{!18774, !18051}
!18775 = !DILocation(line: 135, column: 23, scope: !18023, inlinedAt: !18762)
!18776 = !DILocation(line: 0, scope: !18777, inlinedAt: !18736)
!18777 = !DILexicalBlockFile(scope: !18760, file: !977, discriminator: 0)
!18778 = !DILocation(line: 3905, column: 24, scope: !3312, inlinedAt: !18779)
!18779 = distinct !DILocation(line: 2870, column: 26, scope: !18732, inlinedAt: !18780)
!18780 = distinct !DILocation(line: 0, scope: !18760, inlinedAt: !18736)
!18781 = !DILocation(line: 3905, column: 24, scope: !18117, inlinedAt: !18782)
!18782 = distinct !DILocation(line: 1732, column: 18, scope: !18746, inlinedAt: !18780)
!18783 = !DILocation(line: 301, column: 32, scope: !18760, inlinedAt: !18736)
!18784 = !DILocation(line: 303, column: 16, scope: !18785, inlinedAt: !18736)
!18785 = distinct !DILexicalBlock(scope: !18760, file: !17811, line: 301, column: 13)
!18786 = !DILocation(line: 4390, column: 23, scope: !345, inlinedAt: !18787)
!18787 = distinct !DILocation(line: 304, column: 17, scope: !18785, inlinedAt: !18736)
!18788 = !DILocation(line: 3904, column: 24, scope: !3312, inlinedAt: !18789)
!18789 = distinct !DILocation(line: 2870, column: 26, scope: !18732, inlinedAt: !18790)
!18790 = distinct !DILocation(line: 305, column: 44, scope: !18785, inlinedAt: !18736)
!18791 = !DILocation(line: 308, column: 37, scope: !18792, inlinedAt: !18736)
!18792 = distinct !DILexicalBlock(scope: !18785, file: !17811, line: 305, column: 17)
!18793 = !DILocation(line: 308, column: 20, scope: !18792, inlinedAt: !18736)
!18794 = !DILocation(line: 321, column: 20, scope: !18792, inlinedAt: !18736)
!18795 = !DILocation(line: 310, column: 24, scope: !18792, inlinedAt: !18736)
!18796 = !DILocation(line: 0, scope: !18760, inlinedAt: !18736)
!18797 = !DILocation(line: 328, column: 16, scope: !18785, inlinedAt: !18736)
!18798 = !DILocation(line: 127, column: 12, scope: !18023, inlinedAt: !18799)
!18799 = distinct !DILocation(line: 329, column: 25, scope: !18785, inlinedAt: !18736)
!18800 = !DILocation(line: 132, column: 13, scope: !18023, inlinedAt: !18799)
!18801 = !DILocation(line: 1917, column: 50, scope: !18030, inlinedAt: !18802)
!18802 = distinct !DILocation(line: 781, column: 12, scope: !18032, inlinedAt: !18803)
!18803 = distinct !DILocation(line: 866, column: 14, scope: !18034, inlinedAt: !18804)
!18804 = distinct !DILocation(line: 128, column: 22, scope: !18036, inlinedAt: !18799)
!18805 = !DILocation(line: 781, column: 12, scope: !18032, inlinedAt: !18803)
!18806 = !DILocation(line: 3558, column: 28, scope: !18040, inlinedAt: !18807)
!18807 = distinct !DILocation(line: 128, column: 41, scope: !18023, inlinedAt: !18799)
!18808 = !DILocation(line: 25, column: 14, scope: !18046, inlinedAt: !18809)
!18809 = distinct !DILocation(line: 287, column: 13, scope: !18048, inlinedAt: !18810)
!18810 = distinct !DILocation(line: 129, column: 17, scope: !18037, inlinedAt: !18799)
!18811 = distinct !{!18811, !18051}
!18812 = !DILocation(line: 135, column: 23, scope: !18023, inlinedAt: !18799)
!18813 = !DILocation(line: 4084, column: 17, scope: !18336, inlinedAt: !18814)
!18814 = distinct !DILocation(line: 3130, column: 21, scope: !18815, inlinedAt: !18816)
!18815 = distinct !DISubprogram(name: "compare_exchange_weak", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE21compare_exchange_weak", scope: !189, file: !188, line: 3123, type: !13, scopeLine: 3123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18816 = distinct !DILocation(line: 336, column: 35, scope: !18785, inlinedAt: !18736)
!18817 = !DILocation(line: 336, column: 13, scope: !18785, inlinedAt: !18736)
!18818 = !DILocation(line: 1077, column: 12, scope: !18343, inlinedAt: !18819)
!18819 = distinct !DILocation(line: 114, column: 36, scope: !18345, inlinedAt: !18820)
!18820 = distinct !DILocation(line: 360, column: 29, scope: !18785, inlinedAt: !18736)
!18821 = !DILocation(line: 3558, column: 28, scope: !18040, inlinedAt: !18822)
!18822 = distinct !DILocation(line: 115, column: 26, scope: !18349, inlinedAt: !18820)
!18823 = !DILocation(line: 1917, column: 50, scope: !18351, inlinedAt: !18824)
!18824 = distinct !DILocation(line: 781, column: 12, scope: !18353, inlinedAt: !18825)
!18825 = distinct !DILocation(line: 866, column: 14, scope: !18355, inlinedAt: !18826)
!18826 = distinct !DILocation(line: 115, column: 18, scope: !18357, inlinedAt: !18820)
!18827 = !DILocation(line: 781, column: 12, scope: !18353, inlinedAt: !18825)
!18828 = !DILocation(line: 25, column: 14, scope: !18361, inlinedAt: !18829)
!18829 = distinct !DILocation(line: 287, column: 13, scope: !18363, inlinedAt: !18830)
!18830 = distinct !DILocation(line: 116, column: 13, scope: !18358, inlinedAt: !18820)
!18831 = distinct !{!18831, !18051}
!18832 = !DILocation(line: 119, column: 23, scope: !18349, inlinedAt: !18820)
!18833 = !DILocation(line: 555, column: 18, scope: !18368, inlinedAt: !18834)
!18834 = distinct !DILocation(line: 119, column: 33, scope: !18349, inlinedAt: !18820)
!18835 = !DILocation(line: 344, column: 24, scope: !18785, inlinedAt: !18736)
!18836 = !DILocation(line: 3905, column: 24, scope: !18117, inlinedAt: !18837)
!18837 = distinct !DILocation(line: 1732, column: 18, scope: !18119, inlinedAt: !18838)
!18838 = distinct !DILocation(line: 80, column: 34, scope: !18121, inlinedAt: !18839)
!18839 = distinct !DILocation(line: 345, column: 45, scope: !18785, inlinedAt: !18736)
!18840 = !DILocation(line: 81, column: 17, scope: !18126, inlinedAt: !18839)
!18841 = !DILocation(line: 127, column: 12, scope: !18023, inlinedAt: !18842)
!18842 = distinct !DILocation(line: 84, column: 21, scope: !18126, inlinedAt: !18839)
!18843 = !DILocation(line: 132, column: 13, scope: !18023, inlinedAt: !18842)
!18844 = !DILocation(line: 1917, column: 50, scope: !18030, inlinedAt: !18845)
!18845 = distinct !DILocation(line: 781, column: 12, scope: !18032, inlinedAt: !18846)
!18846 = distinct !DILocation(line: 866, column: 14, scope: !18034, inlinedAt: !18847)
!18847 = distinct !DILocation(line: 128, column: 22, scope: !18036, inlinedAt: !18842)
!18848 = !DILocation(line: 781, column: 12, scope: !18032, inlinedAt: !18846)
!18849 = !DILocation(line: 3558, column: 28, scope: !18040, inlinedAt: !18850)
!18850 = distinct !DILocation(line: 128, column: 41, scope: !18023, inlinedAt: !18842)
!18851 = !DILocation(line: 25, column: 14, scope: !18046, inlinedAt: !18852)
!18852 = distinct !DILocation(line: 287, column: 13, scope: !18048, inlinedAt: !18853)
!18853 = distinct !DILocation(line: 129, column: 17, scope: !18037, inlinedAt: !18842)
!18854 = distinct !{!18854, !18051}
!18855 = !DILocation(line: 135, column: 23, scope: !18023, inlinedAt: !18842)
!18856 = !DILocation(line: 346, column: 46, scope: !18857, inlinedAt: !18736)
!18857 = distinct !DILexicalBlock(scope: !18785, file: !17811, line: 345, column: 25)
!18858 = !DILocation(line: 2511, column: 13, scope: !18859, inlinedAt: !18860)
!18859 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj12wrapping_add", scope: !1616, file: !1615, line: 2510, type: !13, scopeLine: 2510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18860 = distinct !DILocation(line: 346, column: 69, scope: !18857, inlinedAt: !18736)
!18861 = !DILocation(line: 2447, column: 9, scope: !18742, inlinedAt: !18862)
!18862 = distinct !DILocation(line: 2500, column: 16, scope: !18863, inlinedAt: !18864)
!18863 = !DILexicalBlockFile(scope: !18744, file: !188, discriminator: 6)
!18864 = distinct !DILocation(line: 1732, column: 35, scope: !18865, inlinedAt: !18866)
!18865 = !DILexicalBlockFile(scope: !18746, file: !188, discriminator: 6)
!18866 = distinct !DILocation(line: 347, column: 42, scope: !18867, inlinedAt: !18736)
!18867 = distinct !DILexicalBlock(scope: !18857, file: !17811, line: 346, column: 25)
!18868 = !DILocation(line: 3904, column: 24, scope: !18117, inlinedAt: !18869)
!18869 = distinct !DILocation(line: 1732, column: 18, scope: !18746, inlinedAt: !18866)
!18870 = !DILocation(line: 347, column: 29, scope: !18867, inlinedAt: !18736)
!18871 = !DILocation(line: 3890, column: 24, scope: !18318, inlinedAt: !18872)
!18872 = distinct !DILocation(line: 1763, column: 13, scope: !18873, inlinedAt: !18874)
!18873 = distinct !DISubprogram(name: "store<std::sync::mpmc::list::Block<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicOINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockINtNtB9_6result6ResultIB1F_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB9_3any3AnyNtNtB9_6marker4SendEL_EEEE5storeCseyIfFeUOWMb_17polars_mem_engine", scope: !189, file: !188, line: 1760, type: !13, scopeLine: 1760, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18874 = distinct !DILocation(line: 351, column: 41, scope: !18867, inlinedAt: !18736)
!18875 = !DILocation(line: 3890, column: 24, scope: !18233, inlinedAt: !18876)
!18876 = distinct !DILocation(line: 2898, column: 26, scope: !18877, inlinedAt: !18878)
!18877 = distinct !DISubprogram(name: "store", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE5store", scope: !189, file: !188, line: 2896, type: !13, scopeLine: 2896, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18878 = distinct !DILocation(line: 352, column: 41, scope: !18867, inlinedAt: !18736)
!18879 = !DILocation(line: 344, column: 21, scope: !18785, inlinedAt: !18736)
!18880 = !DILocation(line: 421, column: 13, scope: !18737)
!18881 = !DILocation(line: 418, column: 9, scope: !18737)
!18882 = !DILocation(line: 253, column: 13, scope: !18883, inlinedAt: !18884)
!18883 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::list::Slot<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list4SlotINtNtB9_6result6ResultIB1K_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB9_3any3AnyNtNtB9_6marker4SendEL_EEEE13get_uncheckedCseyIfFeUOWMb_17polars_mem_engine", scope: !16915, file: !16914, line: 239, type: !13, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18884 = distinct !DILocation(line: 646, column: 26, scope: !18885, inlinedAt: !18886)
!18885 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::list::Slot<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list4SlotINtNtB5_6result6ResultIB1h_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB5_3any3AnyNtNtB5_6marker4SendEL_EEE13get_uncheckedjECseyIfFeUOWMb_17polars_mem_engine", scope: !465, file: !464, line: 639, type: !13, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18886 = distinct !DILocation(line: 379, column: 39, scope: !18887, inlinedAt: !18890)
!18887 = distinct !DILexicalBlock(scope: !18888, file: !17811, line: 377, column: 9)
!18888 = distinct !DILexicalBlock(scope: !18889, file: !17811, line: 376, column: 9)
!18889 = distinct !DISubprogram(name: "read<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>", linkageName: "_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE4readCseyIfFeUOWMb_17polars_mem_engine", scope: !17812, file: !17811, line: 369, type: !398, scopeLine: 369, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18890 = distinct !DILocation(line: 419, column: 27, scope: !18737)
!18891 = !DILocation(line: 3905, column: 24, scope: !3312, inlinedAt: !18892)
!18892 = distinct !DILocation(line: 2870, column: 26, scope: !18163, inlinedAt: !18893)
!18893 = distinct !DILocation(line: 47, column: 26, scope: !18165, inlinedAt: !18894)
!18894 = distinct !DILocation(line: 380, column: 18, scope: !18895, inlinedAt: !18890)
!18895 = distinct !DILexicalBlock(scope: !18887, file: !17811, line: 379, column: 13)
!18896 = !{!18897}
!18897 = distinct !{!18897, !18898, !"_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE4readCseyIfFeUOWMb_17polars_mem_engine: argument 0"}
!18898 = distinct !{!18898, !"_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE4readCseyIfFeUOWMb_17polars_mem_engine"}
!18899 = !DILocation(line: 47, column: 15, scope: !18165, inlinedAt: !18894)
!18900 = !DILocation(line: 127, column: 12, scope: !18023, inlinedAt: !18901)
!18901 = distinct !DILocation(line: 48, column: 21, scope: !18165, inlinedAt: !18894)
!18902 = !DILocation(line: 132, column: 13, scope: !18023, inlinedAt: !18901)
!18903 = !DILocation(line: 1917, column: 50, scope: !18030, inlinedAt: !18904)
!18904 = distinct !DILocation(line: 781, column: 12, scope: !18032, inlinedAt: !18905)
!18905 = distinct !DILocation(line: 866, column: 14, scope: !18034, inlinedAt: !18906)
!18906 = distinct !DILocation(line: 128, column: 22, scope: !18036, inlinedAt: !18901)
!18907 = !DILocation(line: 781, column: 12, scope: !18032, inlinedAt: !18905)
!18908 = !DILocation(line: 3558, column: 28, scope: !18040, inlinedAt: !18909)
!18909 = distinct !DILocation(line: 128, column: 41, scope: !18023, inlinedAt: !18901)
!18910 = !DILocation(line: 25, column: 14, scope: !18046, inlinedAt: !18911)
!18911 = distinct !DILocation(line: 287, column: 13, scope: !18048, inlinedAt: !18912)
!18912 = distinct !DILocation(line: 129, column: 17, scope: !18037, inlinedAt: !18901)
!18913 = distinct !{!18913, !18051}
!18914 = !DILocation(line: 135, column: 23, scope: !18023, inlinedAt: !18901)
!18915 = !DILocation(line: 1721, column: 9, scope: !18916, inlinedAt: !18917)
!18916 = distinct !DISubprogram(name: "read<core::mem::maybe_uninit::MaybeUninit<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr4readINtNtNtB4_3mem12maybe_uninit11MaybeUninitINtNtB4_6result6ResultIB1c_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECseyIfFeUOWMb_17polars_mem_engine", scope: !66, file: !106, line: 1682, type: !13, scopeLine: 1682, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18917 = distinct !DILocation(line: 1263, column: 18, scope: !18918, inlinedAt: !18919)
!18918 = distinct !DISubprogram(name: "read<core::mem::maybe_uninit::MaybeUninit<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOINtNtNtB6_3mem12maybe_uninit11MaybeUninitINtNtB6_6result6ResultIB1i_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_3any3AnyNtNtB6_6marker4SendEL_EEE4readCseyIfFeUOWMb_17polars_mem_engine", scope: !64, file: !63, line: 1258, type: !13, scopeLine: 1258, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18919 = distinct !DILocation(line: 381, column: 38, scope: !18895, inlinedAt: !18890)
!18920 = !DILocation(line: 385, column: 16, scope: !18921, inlinedAt: !18890)
!18921 = distinct !DILexicalBlock(scope: !18895, file: !17811, line: 381, column: 13)
!18922 = !DILocation(line: 253, column: 13, scope: !18923, inlinedAt: !18924)
!18923 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::list::Slot<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list4SlotINtNtB9_6result6ResultIB1K_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB9_3any3AnyNtNtB9_6marker4SendEL_EEEE13get_uncheckedCseyIfFeUOWMb_17polars_mem_engine", scope: !16915, file: !16914, line: 239, type: !13, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18924 = distinct !DILocation(line: 646, column: 26, scope: !18925, inlinedAt: !18926)
!18925 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::list::Slot<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list4SlotINtNtB5_6result6ResultIB1h_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB5_3any3AnyNtNtB5_6marker4SendEL_EEE13get_uncheckedjECseyIfFeUOWMb_17polars_mem_engine", scope: !465, file: !464, line: 639, type: !13, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18926 = distinct !DILocation(line: 93, column: 47, scope: !18927, inlinedAt: !18930)
!18927 = distinct !DILexicalBlock(scope: !18928, file: !17811, line: 92, column: 9)
!18928 = distinct !DILexicalBlock(scope: !18929, file: !17811, line: 92, column: 9)
!18929 = distinct !DISubprogram(name: "destroy<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockINtNtCscgRAwXFJnXP_4core6result6ResultIBU_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtBY_3any3AnyNtNtBY_6marker4SendEL_EEE7destroyCseyIfFeUOWMb_17polars_mem_engine", scope: !18123, file: !17811, line: 89, type: !13, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18930 = distinct !DILocation(line: 386, column: 17, scope: !18921, inlinedAt: !18890)
!18931 = !DILocation(line: 2447, column: 9, scope: !18932, inlinedAt: !18933)
!18932 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<usize>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8jEE3getCseyIfFeUOWMb_17polars_mem_engine", scope: !184, file: !183, line: 2443, type: !13, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18933 = distinct !DILocation(line: 3615, column: 24, scope: !18934, inlinedAt: !18935)
!18934 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE6as_ptr", scope: !189, file: !188, line: 3614, type: !13, scopeLine: 3614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18935 = distinct !DILocation(line: 2870, column: 43, scope: !18936, inlinedAt: !18937)
!18936 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE4load", scope: !189, file: !188, line: 2868, type: !13, scopeLine: 2868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18937 = distinct !DILocation(line: 96, column: 27, scope: !18938, inlinedAt: !18930)
!18938 = distinct !DILexicalBlock(scope: !18927, file: !17811, line: 93, column: 13)
!18939 = !DILocation(line: 3905, column: 24, scope: !3312, inlinedAt: !18940)
!18940 = distinct !DILocation(line: 2870, column: 26, scope: !18936, inlinedAt: !18937)
!18941 = !DILocation(line: 96, column: 16, scope: !18938, inlinedAt: !18930)
!18942 = !DILocation(line: 4138, column: 23, scope: !18943, inlinedAt: !18944)
!18943 = distinct !DISubprogram(name: "atomic_or<usize, usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic9atomic_orjjECseyIfFeUOWMb_17polars_mem_engine", scope: !190, file: !188, line: 4131, type: !13, scopeLine: 4131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18944 = distinct !DILocation(line: 3295, column: 26, scope: !18945, inlinedAt: !18946)
!18945 = distinct !DISubprogram(name: "fetch_or", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE8fetch_or", scope: !189, file: !188, line: 3293, type: !13, scopeLine: 3293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18946 = distinct !DILocation(line: 97, column: 31, scope: !18938, inlinedAt: !18930)
!18947 = !DILocation(line: 97, column: 20, scope: !18938, inlinedAt: !18930)
!18948 = !DILocation(line: 898, column: 17, scope: !18949, inlinedAt: !18950)
!18949 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_add", scope: !1616, file: !1615, line: 886, type: !13, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18950 = distinct !DILocation(line: 214, column: 28, scope: !18951, inlinedAt: !18952)
!18951 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsF_NtNtCscgRAwXFJnXP_4core4iter5rangejNtB5_4Step17forward_unchecked", scope: !11777, file: !11739, line: 212, type: !13, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18952 = distinct !DILocation(line: 784, column: 35, scope: !18953, inlinedAt: !18955)
!18953 = distinct !DILexicalBlock(scope: !18954, file: !11739, line: 782, column: 13)
!18954 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCseyIfFeUOWMb_17polars_mem_engine", scope: !11740, file: !11739, line: 780, type: !13, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18955 = distinct !DILocation(line: 866, column: 14, scope: !18956, inlinedAt: !18957)
!18956 = distinct !DISubprogram(name: "next<usize>", linkageName: "_RNvXs4_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCseyIfFeUOWMb_17polars_mem_engine", scope: !11744, file: !11739, line: 865, type: !13, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18957 = distinct !DILocation(line: 92, column: 18, scope: !18958, inlinedAt: !18930)
!18958 = !DILexicalBlockFile(scope: !18928, file: !17811, discriminator: 2)
!18959 = !DILocation(line: 1917, column: 50, scope: !18960, inlinedAt: !18961)
!18960 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !11736, file: !998, line: 1917, type: !13, scopeLine: 1917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18961 = distinct !DILocation(line: 781, column: 12, scope: !18954, inlinedAt: !18955)
!18962 = !DILocation(line: 781, column: 12, scope: !18954, inlinedAt: !18955)
!18963 = !DILocation(line: 4138, column: 23, scope: !18964, inlinedAt: !18965)
!18964 = distinct !DISubprogram(name: "atomic_or<usize, usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic9atomic_orjjECseyIfFeUOWMb_17polars_mem_engine", scope: !190, file: !188, line: 4131, type: !13, scopeLine: 4131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18965 = distinct !DILocation(line: 3295, column: 26, scope: !18966, inlinedAt: !18967)
!18966 = distinct !DISubprogram(name: "fetch_or", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE8fetch_or", scope: !189, file: !188, line: 3293, type: !13, scopeLine: 3293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18967 = distinct !DILocation(line: 387, column: 34, scope: !18921, inlinedAt: !18890)
!18968 = !DILocation(line: 387, column: 23, scope: !18921, inlinedAt: !18890)
!18969 = !DILocation(line: 128, column: 14, scope: !2788, inlinedAt: !18970)
!18970 = distinct !DILocation(line: 229, column: 22, scope: !2792, inlinedAt: !18971)
!18971 = distinct !DILocation(line: 344, column: 9, scope: !2795, inlinedAt: !18972)
!18972 = distinct !DILocation(line: 462, column: 23, scope: !2797, inlinedAt: !18973)
!18973 = distinct !DILocation(line: 1921, column: 24, scope: !18107, inlinedAt: !18974)
!18974 = distinct !DILocation(line: 810, column: 1, scope: !18111, inlinedAt: !18975)
!18975 = distinct !DILocation(line: 1003, column: 1, scope: !18976, inlinedAt: !18977)
!18976 = distinct !DISubprogram(name: "drop<alloc::boxed::Box<std::sync::mpmc::list::Block<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem4dropINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultIB1S_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEIBx_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEECseyIfFeUOWMb_17polars_mem_engine", scope: !32, file: !1627, line: 999, type: !13, scopeLine: 999, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18977 = distinct !DILocation(line: 105, column: 9, scope: !18929, inlinedAt: !18978)
!18978 = distinct !DILocation(line: 0, scope: !18921, inlinedAt: !18890)
!18979 = !DILocation(line: 391, column: 13, scope: !18921, inlinedAt: !18890)
!18980 = !DILocation(line: 1917, column: 50, scope: !18960, inlinedAt: !18981)
!18981 = distinct !DILocation(line: 781, column: 12, scope: !18954, inlinedAt: !18982)
!18982 = distinct !DILocation(line: 866, column: 14, scope: !18956, inlinedAt: !18983)
!18983 = distinct !DILocation(line: 92, column: 18, scope: !18958, inlinedAt: !18984)
!18984 = distinct !DILocation(line: 388, column: 17, scope: !18921, inlinedAt: !18890)
!18985 = !DILocation(line: 781, column: 12, scope: !18954, inlinedAt: !18982)
!18986 = !DILocation(line: 898, column: 17, scope: !18949, inlinedAt: !18987)
!18987 = distinct !DILocation(line: 214, column: 28, scope: !18951, inlinedAt: !18988)
!18988 = distinct !DILocation(line: 784, column: 35, scope: !18953, inlinedAt: !18982)
!18989 = !DILocation(line: 253, column: 13, scope: !18923, inlinedAt: !18990)
!18990 = distinct !DILocation(line: 646, column: 26, scope: !18925, inlinedAt: !18991)
!18991 = distinct !DILocation(line: 93, column: 47, scope: !18927, inlinedAt: !18984)
!18992 = !DILocation(line: 2447, column: 9, scope: !18932, inlinedAt: !18993)
!18993 = distinct !DILocation(line: 3615, column: 24, scope: !18934, inlinedAt: !18994)
!18994 = distinct !DILocation(line: 2870, column: 43, scope: !18936, inlinedAt: !18995)
!18995 = distinct !DILocation(line: 96, column: 27, scope: !18938, inlinedAt: !18984)
!18996 = !DILocation(line: 3905, column: 24, scope: !3312, inlinedAt: !18997)
!18997 = distinct !DILocation(line: 2870, column: 26, scope: !18936, inlinedAt: !18995)
!18998 = !DILocation(line: 96, column: 16, scope: !18938, inlinedAt: !18984)
!18999 = !DILocation(line: 4138, column: 23, scope: !18943, inlinedAt: !19000)
!19000 = distinct !DILocation(line: 3295, column: 26, scope: !18945, inlinedAt: !19001)
!19001 = distinct !DILocation(line: 97, column: 31, scope: !18938, inlinedAt: !18984)
!19002 = !DILocation(line: 97, column: 20, scope: !18938, inlinedAt: !18984)
!19003 = !DILocation(line: 966, column: 15, scope: !19004, inlinedAt: !19005)
!19004 = distinct !DISubprogram(name: "map_err<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>, (), std::sync::mpsc::TryRecvError, std::sync::mpmc::list::{impl#3}::try_recv::{closure_env#0}<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultIBw_IBw_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB5_3any3AnyNtNtB5_6marker4SendEL_EEuE7map_errNtNtNtCsh8eZTKRCwoO_3std4sync4mpsc12TryRecvErrorNCNvMs1_NtNtB3W_4mpmc4listINtB4M_7ChannelBI_E8try_recv0ECseyIfFeUOWMb_17polars_mem_engine", scope: !1740, file: !98, line: 962, type: !13, scopeLine: 962, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!19005 = !DILocation(line: 419, column: 39, scope: !18737)
!19006 = !DILocation(line: 966, column: 9, scope: !19004, inlinedAt: !19005)
!19007 = !DILocation(line: 0, scope: !18737)
!19008 = !DILocation(line: 423, column: 6, scope: !18729)
!19009 = !DILocation(line: 968, column: 23, scope: !19010, inlinedAt: !19005)
!19010 = distinct !DILexicalBlock(scope: !19004, file: !98, line: 968, column: 13)
!19011 = !DILocation(line: 968, column: 32, scope: !19004, inlinedAt: !19005)
!19012 = !DILocation(line: 967, column: 22, scope: !19013, inlinedAt: !19005)
!19013 = distinct !DILexicalBlock(scope: !19004, file: !98, line: 967, column: 13)
!19014 = !DILocation(line: 967, column: 16, scope: !19004, inlinedAt: !19005)
!19015 = !DILocation(line: 970, column: 5, scope: !19004, inlinedAt: !19005)
!19016 = !DILocation(line: 3905, column: 24, scope: !1464, inlinedAt: !19017)
!19017 = distinct !DILocation(line: 1732, column: 18, scope: !1466, inlinedAt: !19018)
!19018 = !DILocation(line: 54, column: 20, scope: !1468, inlinedAt: !19019)
!19019 = !DILocation(line: 974, column: 23, scope: !1473)
!19020 = !DILocation(line: 54, column: 9, scope: !1468, inlinedAt: !19019)
!19021 = !DILocation(line: 974, column: 16, scope: !1473)
!19022 = !DILocation(line: 980, column: 10, scope: !1473)
!19023 = !DILocation(line: 3905, column: 24, scope: !1464, inlinedAt: !19024)
!19024 = distinct !DILocation(line: 1732, column: 18, scope: !1518, inlinedAt: !19025)
!19025 = !DILocation(line: 54, column: 20, scope: !1520, inlinedAt: !19026)
!19026 = !DILocation(line: 974, column: 23, scope: !1522)
!19027 = !DILocation(line: 54, column: 9, scope: !1520, inlinedAt: !19026)
!19028 = !DILocation(line: 974, column: 16, scope: !1522)
!19029 = !DILocation(line: 980, column: 10, scope: !1522)
!19030 = distinct !DISubprogram(name: "pop<rayon_core::job::JobRef>", linkageName: "_RNvMs4_NtCs8RCgFHiPUyX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefE3popCseyIfFeUOWMb_17polars_mem_engine", scope: !19031, file: !3294, line: 442, type: !13, scopeLine: 442, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!19031 = !DINamespace(name: "Worker", scope: !3296)
!19032 = !DILocation(line: 444, column: 20, scope: !19033, inlinedAt: !19034)
!19033 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<crossbeam_utils::cache_padded::CachePadded<crossbeam_deque::deque::Inner<rayon_core::job::JobRef>>>>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullINtNtCsgZ49sUHp3tW_5alloc4sync8ArcInnerINtNtCsi07hmUMJW4u_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque5InnerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEEE6as_refCseyIfFeUOWMb_17polars_mem_engine", scope: !229, file: !228, line: 440, type: !13, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!19034 = !DILocation(line: 2110, column: 27, scope: !19035, inlinedAt: !19036)
end_hunk_3
