Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_mem_engine-7de41b043a674665.polars_mem_engine.a996911dcb712385-cgu.05?download=true
inline.NumInlined: 3032
inline.NumDeleted: 1183
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE20disconnect_receiversCseyIfFeUOWMb_17polars_mem_engine:bb.a

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 16, !dbg !30845
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef align 8 dereferenceable(48) %i.ap), !dbg !30845
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseyIfFeUOWMb_17polars_mem_engine.exit.i, !dbg !30845

bb.m:                                             ; preds = %bb.k
  tail call void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.an), !dbg !30845
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseyIfFeUOWMb_17polars_mem_engine.exit.i, !dbg !30845

bb.n:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 16, !dbg !30843
  %.val.i.i = load ptr, ptr %i.aq, align 8, !dbg !30843, !alias.scope !30837 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.z, i64 24, !dbg !30843
  %.val1.i.i = load ptr, ptr %i.ar, align 8, !dbg !30843, !alias.scope !30837, !nonnull !14, !align !181, !noundef !14 ; 5 uses
  %i.as = load ptr, ptr %.val1.i.i, align 8, !dbg !30847, !invariant.load !14, !noalias !30837 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.as, null, !dbg !30847
  br i1 %.not.i.i.i, label %bb.p, label %bb.o, !dbg !30847

bb.o:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.as(ptr noundef nonnull %.val.i.i)
          to label %bb.p unwind label %bb.r, !dbg !30847, !noalias !30837

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !30849
  %i.au = load i64, ptr %i.at, align 8, !dbg !30849, !range !1672, !invariant.load !14, !noalias !30837 ; 2 uses
  %i.av = icmp eq i64 %i.au, 0, !dbg !30853
  br i1 %i.av, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseyIfFeUOWMb_17polars_mem_engine.exit.i, label %bb.q, !dbg !30853

bb.q:                                             ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !30849
  %i.ax = load i64, ptr %i.aw, align 8, !dbg !30854, !range !1683, !invariant.load !14, !noalias !30837
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.au, i64 noundef range(i64 1, 536870913) %i.ax) #31, !dbg !30857, !noalias !30837
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseyIfFeUOWMb_17polars_mem_engine.exit.i, !dbg !30862

bb.r:                                             ; preds = %bb.o
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !30863
  %i.ba = load i64, ptr %i.az, align 8, !dbg !30863, !range !1672, !invariant.load !14, !noalias !30837 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0, !dbg !30867
  br i1 %i.bb, label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDNtNtCscgRAwXFJnXP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseyIfFeUOWMb_17polars_mem_engine.exit4.i.i.i, label %bb.s, !dbg !30867

bb.s:                                             ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !30863
  %i.bd = load i64, ptr %i.bc, align 8, !dbg !30868, !range !1683, !invariant.load !14, !noalias !30837
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.ba, i64 noundef range(i64 1, 536870913) %i.bd) #31, !dbg !30871, !noalias !30837
  br label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDNtNtCscgRAwXFJnXP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseyIfFeUOWMb_17polars_mem_engine.exit4.i.i.i, !dbg !30876

_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDNtNtCscgRAwXFJnXP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseyIfFeUOWMb_17polars_mem_engine.exit4.i.i.i: ; preds = %bb.s, %bb.r
  resume { ptr, i32 } %i.ay, !dbg !30847

_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE20discard_all_messagesCseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %bb.e
  ret i1 %i.g, !dbg !30877
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE4sendCseyIfFeUOWMb_17polars_mem_engine(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(72) %2, i64 %3, i32 noundef range(i32 0, 1000000001) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !30878 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  store i64 %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i32 %4, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !30879
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !30880
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false), !dbg !30880
  %i.m = load atomic i64, ptr %i.k monotonic, align 128, !dbg !30883, !noalias !30891 ; 2 uses
  %i.n = load i64, ptr %i.l, align 16, !dbg !30894, !noalias !30891, !noundef !14 ; 2 uses
  %i.o = and i64 %i.n, %i.m, !dbg !30896
  %i.p = icmp eq i64 %i.o, 0, !dbg !30896
  br i1 %i.p, label %.lr.ph.i.lr.ph, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE5writeCseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !30896

.lr.ph.i.lr.ph:                                   ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 384
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.u = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %.lr.ph.i, !dbg !30896

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %bb.ag
  %i.w = phi i64 [ %i.n, %.lr.ph.i.lr.ph ], [ %i.cu, %bb.ag ]
  %i.x = phi i64 [ %i.m, %.lr.ph.i.lr.ph ], [ %i.ct, %bb.ag ]
  call void @llvm.experimental.noalias.scope.decl(metadata !30897), !dbg !30899
  br label %bb.b, !dbg !30896

bb.b:                                             ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, %.lr.ph.i
  %i.y = phi i64 [ %i.w, %.lr.ph.i ], [ %i.bc, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ]
  %.sroa.02.034.i = phi i64 [ %i.x, %.lr.ph.i ], [ %i.bb, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ] ; 8 uses
  %.sroa.0.02933.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.0.1.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ] ; 14 uses
  %i.z = add i64 %i.y, -1, !dbg !30900
  %i.aa = and i64 %i.z, %.sroa.02.034.i, !dbg !30901 ; 3 uses
  %i.ab = load i64, ptr %i.q, align 8, !dbg !30902, !noalias !30897, !noundef !14
  %i.ac = sub i64 0, %i.ab, !dbg !30904
  %i.ad = and i64 %.sroa.02.034.i, %i.ac, !dbg !30905
  %i.ae = load ptr, ptr %i.r, align 8, !dbg !30906, !noalias !30897, !nonnull !14, !noundef !14
  %i.af = load i64, ptr %i.s, align 32, !dbg !30906, !noalias !30897, !noundef !14
  %i.ag = icmp ult i64 %i.aa, %i.af, !dbg !30908
  call void @llvm.assume(i1 %i.ag), !dbg !30913
  %i.ah = getelementptr inbounds nuw [80 x i8], ptr %i.ae, i64 %i.aa, !dbg !30914 ; 5 uses
  %i.ai = load atomic i64, ptr %i.ah acquire, align 8, !dbg !30915, !noalias !30897 ; 2 uses
  %i.aj = icmp eq i64 %.sroa.02.034.i, %i.ai, !dbg !30919
  br i1 %i.aj, label %bb.d, label %bb.c, !dbg !30919

bb.c:                                             ; preds = %bb.b
  %i.ak = load i64, ptr %i.q, align 8, !dbg !30921, !noalias !30897, !noundef !14
  %i.al = add i64 %i.ak, %i.ai, !dbg !30922
  %i.am = add i64 %.sroa.02.034.i, 1, !dbg !30925
  %i.an = icmp eq i64 %i.al, %i.am, !dbg !30926
  br i1 %i.an, label %bb.h, label %bb.e, !dbg !30926

bb.d:                                             ; preds = %bb.b
  %i.ao = add nuw i64 %i.aa, 1, !dbg !30927
  %i.ap = load i64, ptr %i.t, align 128, !dbg !30928, !noalias !30897, !noundef !14
  %i.aq = icmp ult i64 %i.ao, %i.ap, !dbg !30927
  br i1 %i.aq, label %bb.k, label %bb.j, !dbg !30927

bb.e:                                             ; preds = %bb.c
  %i.ar = icmp ult i32 %.sroa.0.02933.i, 7, !dbg !30929
  br i1 %i.ar, label %bb.g, label %bb.f, !dbg !30929

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i unwind label %.body.thread30.loopexit, !dbg !30931

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.sroa.0.02933.i, 0, !dbg !30932
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader, !dbg !30936

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.as = mul nuw i32 %.sroa.0.02933.i, %.sroa.0.02933.i, !dbg !30937 ; 2 uses
  %xtraiter = and i32 %i.as, 7, !dbg !30936       ; 3 uses
  %i.at = icmp ult i32 %.sroa.0.02933.i, 3, !dbg !30936
  br i1 %i.at, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new, !dbg !30936

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.as, 56, !dbg !30936
  br label %.lr.ph.i.i, !dbg !30936

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !dbg !30939, !noalias !30897
  call void @llvm.x86.sse2.pause(), !dbg !30939, !noalias !30897
  call void @llvm.x86.sse2.pause(), !dbg !30939, !noalias !30897
  call void @llvm.x86.sse2.pause(), !dbg !30939, !noalias !30897
  call void @llvm.x86.sse2.pause(), !dbg !30939, !noalias !30897
  call void @llvm.x86.sse2.pause(), !dbg !30939, !noalias !30897
  call void @llvm.x86.sse2.pause(), !dbg !30939, !noalias !30897
  call void @llvm.x86.sse2.pause(), !dbg !30939, !noalias !30897
  %niter.next.7 = add i32 %niter, 8, !dbg !30936  ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter, !dbg !30936
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !dbg !30936

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !30936
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader, !dbg !30936

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod91 = icmp ne i32 %xtraiter, 0, !dbg !30936
  call void @llvm.assume(i1 %lcmp.mod91), !dbg !30936
  br label %.lr.ph.i.i.epil, !dbg !30936

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !30939, !noalias !30897
  %epil.iter.next = add i32 %epil.iter, 1, !dbg !30936 ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter, !dbg !30936
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !dbg !30936, !llvm.loop !30942

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.f, %bb.g
  %i.au = add i32 %.sroa.0.02933.i, 1, !dbg !30943
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, !dbg !30944

bb.h:                                             ; preds = %bb.c
  fence seq_cst, !dbg !30945
  %i.av = load atomic i64, ptr %1 monotonic, align 128, !dbg !30947, !noalias !30897
  %i.aw = load i64, ptr %i.q, align 8, !dbg !30950, !noalias !30897, !noundef !14
  %i.ax = add i64 %i.aw, %i.av, !dbg !30952
  %i.ay = icmp eq i64 %i.ax, %.sroa.02.034.i, !dbg !30954
  br i1 %i.ay, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE10start_sendCseyIfFeUOWMb_17polars_mem_engine.exit, label %bb.i, !dbg !30954

bb.i:                                             ; preds = %bb.h
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02933.i, i32 6), !dbg !30955 ; 2 uses
  %5 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i, !dbg !30960 ; 2 uses
  %.not.i11.i = icmp eq i32 %.sroa.0.02933.i, 0, !dbg !30963
  br i1 %.not.i11.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, label %.lr.ph.i12.i.preheader, !dbg !30972

.lr.ph.i12.i.preheader:                           ; preds = %bb.i
  %xtraiter92 = and i32 %5, 5, !dbg !30972        ; 3 uses
  %i.az = icmp ult i32 %.sroa.0.02933.i, 3, !dbg !30972
  br i1 %i.az, label %.lr.ph.i12.i.epil.preheader, label %.lr.ph.i12.i.preheader.new, !dbg !30972

.lr.ph.i12.i.preheader.new:                       ; preds = %.lr.ph.i12.i.preheader
  %unroll_iter96 = and i32 %5, 56, !dbg !30972
  br label %.lr.ph.i12.i, !dbg !30972

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i12.i
  %lcmp.mod94.not = icmp eq i32 %xtraiter92, 0, !dbg !30972
  br i1 %lcmp.mod94.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil.preheader, !dbg !30972

.lr.ph.i12.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i12.i.preheader
  %lcmp.mod95 = icmp ne i32 %xtraiter92, 0, !dbg !30972
  call void @llvm.assume(i1 %lcmp.mod95), !dbg !30972
  br label %.lr.ph.i12.i.epil, !dbg !30972

.lr.ph.i12.i.epil:                                ; preds = %.lr.ph.i12.i.epil, %.lr.ph.i12.i.epil.preheader
  %epil.iter93 = phi i32 [ 0, %.lr.ph.i12.i.epil.preheader ], [ %epil.iter93.next, %.lr.ph.i12.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !30973, !noalias !30897
  %epil.iter93.next = add i32 %epil.iter93, 1, !dbg !30972 ; 2 uses
  %epil.iter93.cmp.not = icmp eq i32 %epil.iter93.next, %xtraiter92, !dbg !30972
  br i1 %epil.iter93.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil, !dbg !30972, !llvm.loop !30978

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i12.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ba = add i32 %.sroa.0.02933.i, 1, !dbg !30979
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, !dbg !30980

.lr.ph.i12.i:                                     ; preds = %.lr.ph.i12.i, %.lr.ph.i12.i.preheader.new
  %niter97 = phi i32 [ 0, %.lr.ph.i12.i.preheader.new ], [ %niter97.next.7, %.lr.ph.i12.i ]
  call void @llvm.x86.sse2.pause(), !dbg !30973, !noalias !30897
  call void @llvm.x86.sse2.pause(), !dbg !30973, !noalias !30897
  call void @llvm.x86.sse2.pause(), !dbg !30973, !noalias !30897
  call void @llvm.x86.sse2.pause(), !dbg !30973, !noalias !30897
  call void @llvm.x86.sse2.pause(), !dbg !30973, !noalias !30897
  call void @llvm.x86.sse2.pause(), !dbg !30973, !noalias !30897
  call void @llvm.x86.sse2.pause(), !dbg !30973, !noalias !30897
  call void @llvm.x86.sse2.pause(), !dbg !30973, !noalias !30897
  %niter97.next.7 = add i32 %niter97, 8, !dbg !30972 ; 2 uses
  %niter97.ncmp.7 = icmp eq i32 %niter97.next.7, %unroll_iter96, !dbg !30972
  br i1 %niter97.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i12.i, !dbg !30972

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i: ; preds = %._crit_edge.loopexit.i20.i, %bb.m, %._crit_edge.loopexit.i.i, %bb.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.1.i = phi i32 [ %i.au, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 1, %bb.m ], [ %i.bl, %._crit_edge.loopexit.i20.i ], [ %i.ba, %._crit_edge.loopexit.i.i ], [ 1, %bb.i ], !dbg !30984
  %i.bb = load atomic i64, ptr %i.k monotonic, align 128, !dbg !30985, !noalias !30897 ; 2 uses
  %i.bc = load i64, ptr %i.l, align 16, !dbg !30894, !noalias !30897, !noundef !14 ; 2 uses
  %i.bd = and i64 %i.bc, %i.bb, !dbg !30896
  %i.be = icmp eq i64 %i.bd, 0, !dbg !30896
  br i1 %i.be, label %bb.b, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE5writeCseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !30896

bb.j:                                             ; preds = %bb.d
  %i.bf = load i64, ptr %i.q, align 8, !dbg !30988, !noalias !30897, !noundef !14
  %i.bg = add i64 %i.bf, %i.ad, !dbg !30989
  br label %bb.l, !dbg !30991

bb.k:                                             ; preds = %bb.d
  %i.bh = add i64 %.sroa.02.034.i, 1, !dbg !30992
  br label %bb.l, !dbg !30991

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.01.0.i = phi i64 [ %i.bh, %bb.k ], [ %i.bg, %bb.j ], !dbg !30984
  %i.bi = cmpxchg weak ptr %i.k, i64 %.sroa.02.034.i, i64 %.sroa.01.0.i seq_cst monotonic, align 8, !dbg !30993, !noalias !30897
  %i.bj = extractvalue { i64, i1 } %i.bi, 1, !dbg !30993
  br i1 %i.bj, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE5writeCseyIfFeUOWMb_17polars_mem_engine.exit.thread, label %bb.m, !dbg !30999

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.i.i15.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02933.i, i32 6), !dbg !31000 ; 2 uses
  %6 = mul nuw nsw i32 %.sroa.0.0.i.i15.i, %.sroa.0.0.i.i15.i, !dbg !31003 ; 2 uses
  %.not.i16.i = icmp eq i32 %.sroa.0.02933.i, 0, !dbg !31005
  br i1 %.not.i16.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, label %.lr.ph.i17.i.preheader, !dbg !31009

.lr.ph.i17.i.preheader:                           ; preds = %bb.m
  %xtraiter98 = and i32 %6, 5, !dbg !31009        ; 3 uses
  %i.bk = icmp ult i32 %.sroa.0.02933.i, 3, !dbg !31009
  br i1 %i.bk, label %.lr.ph.i17.i.epil.preheader, label %.lr.ph.i17.i.preheader.new, !dbg !31009

.lr.ph.i17.i.preheader.new:                       ; preds = %.lr.ph.i17.i.preheader
  %unroll_iter102 = and i32 %6, 56, !dbg !31009
  br label %.lr.ph.i17.i, !dbg !31009

._crit_edge.loopexit.i20.i.unr-lcssa:             ; preds = %.lr.ph.i17.i
  %lcmp.mod100.not = icmp eq i32 %xtraiter98, 0, !dbg !31009
  br i1 %lcmp.mod100.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil.preheader, !dbg !31009

.lr.ph.i17.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i20.i.unr-lcssa, %.lr.ph.i17.i.preheader
  %lcmp.mod101 = icmp ne i32 %xtraiter98, 0, !dbg !31009
  call void @llvm.assume(i1 %lcmp.mod101), !dbg !31009
  br label %.lr.ph.i17.i.epil, !dbg !31009

.lr.ph.i17.i.epil:                                ; preds = %.lr.ph.i17.i.epil, %.lr.ph.i17.i.epil.preheader
  %epil.iter99 = phi i32 [ 0, %.lr.ph.i17.i.epil.preheader ], [ %epil.iter99.next, %.lr.ph.i17.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !31010, !noalias !30897
  %epil.iter99.next = add i32 %epil.iter99, 1, !dbg !31009 ; 2 uses
  %epil.iter99.cmp.not = icmp eq i32 %epil.iter99.next, %xtraiter98, !dbg !31009
  br i1 %epil.iter99.cmp.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil, !dbg !31009, !llvm.loop !31013

._crit_edge.loopexit.i20.i:                       ; preds = %.lr.ph.i17.i.epil, %._crit_edge.loopexit.i20.i.unr-lcssa
  %i.bl = add i32 %.sroa.0.02933.i, 1, !dbg !31014
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, !dbg !31015

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i, %.lr.ph.i17.i.preheader.new
  %niter103 = phi i32 [ 0, %.lr.ph.i17.i.preheader.new ], [ %niter103.next.7, %.lr.ph.i17.i ]
  call void @llvm.x86.sse2.pause(), !dbg !31010, !noalias !30897
  call void @llvm.x86.sse2.pause(), !dbg !31010, !noalias !30897
  call void @llvm.x86.sse2.pause(), !dbg !31010, !noalias !30897
  call void @llvm.x86.sse2.pause(), !dbg !31010, !noalias !30897
  call void @llvm.x86.sse2.pause(), !dbg !31010, !noalias !30897
  call void @llvm.x86.sse2.pause(), !dbg !31010, !noalias !30897
  call void @llvm.x86.sse2.pause(), !dbg !31010, !noalias !30897
  call void @llvm.x86.sse2.pause(), !dbg !31010, !noalias !30897
  %niter103.next.7 = add i32 %niter103, 8, !dbg !31009 ; 2 uses
  %niter103.ncmp.7 = icmp eq i32 %niter103.next.7, %unroll_iter102, !dbg !31009
  br i1 %niter103.ncmp.7, label %._crit_edge.loopexit.i20.i.unr-lcssa, label %.lr.ph.i17.i, !dbg !31009

.body.thread30.loopexit:                          ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread30.loopexit.split-lp:                 ; preds = %bb.z, %bb.u, %bb.p, %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCseyIfFeUOWMb_17polars_mem_engine.exit.i.i, %bb.n, %_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultIB3t_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtBZ_3any3AnyNtNtBZ_6marker4SendEL_EEE4send0uEs_0uECseyIfFeUOWMb_17polars_mem_engine.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE10start_sendCseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %bb.h
  %i.bm = load i32, ptr %i.i, align 8, !dbg !31017, !range !14553, !noundef !14 ; 2 uses
  %.not = icmp eq i32 %i.bm, 1000000000, !dbg !31017
  br i1 %.not, label %bb.o, label %bb.n, !dbg !31019

_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE5writeCseyIfFeUOWMb_17polars_mem_engine.exit.thread: ; preds = %bb.l
  store ptr %i.ah, ptr %i.g, align 8, !dbg !31020, !alias.scope !30897
  %i.bn = add i64 %.sroa.02.034.i, 1, !dbg !31021 ; 2 uses
  store i64 %i.bn, ptr %i.j, align 8, !dbg !31021, !alias.scope !30897
  %.sroa.018.0.copyload35 = load i64, ptr %2, align 8, !dbg !31022
  %.sroa.5.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !31022
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ah, i64 8, !dbg !31023
  store i64 %.sroa.018.0.copyload35, ptr %i.bo, align 8, !dbg !31029, !noalias !31034
  %.sroa.5.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.ah, i64 16, !dbg !31029
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx20, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx36, i64 64, i1 false), !dbg !31029
  store atomic i64 %i.bn, ptr %i.ah release, align 8, !dbg !31037, !noalias !31042
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 320, !dbg !31044
  call fastcc void @_RNvMs0_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bp) #38, !dbg !31045
  br label %bb.ai, !dbg !31046

bb.n:                                             ; preds = %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE10start_sendCseyIfFeUOWMb_17polars_mem_engine.exit
  %i.bq = load i64, ptr %i.h, align 8, !dbg !31050, !noundef !14 ; 2 uses
  %i.br = invoke { i64, i32 } @_RNvMNtCsh8eZTKRCwoO_3std4timeNtB2_7Instant3now()
          to label %bb.ac unwind label %.body.thread30.loopexit.split-lp, !dbg !31051 ; 2 uses

bb.o:                                             ; preds = %.split, %bb.ad, %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE10start_sendCseyIfFeUOWMb_17polars_mem_engine.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !31052, !noalias !31055
  store ptr %i.g, ptr %i.f, align 8, !dbg !31058
  store ptr %1, ptr %.sroa.422.0..sroa_idx, align 8, !dbg !31058
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !31058
  %i.bs = load i8, ptr %i.v, align 8, !dbg !31059, !range !2015, !noalias !31080, !noundef !14
  %i.bt = icmp eq i8 %i.bs, 1, !dbg !31087
  br i1 %i.bt, label %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCseyIfFeUOWMb_17polars_mem_engine.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCseyIfFeUOWMb_17polars_mem_engine.exit.i.i, !dbg !31087, !prof !298

_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCseyIfFeUOWMb_17polars_mem_engine.exit.i.i: ; preds = %bb.o
  %i.bu = invoke noundef ptr @_RINvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscgRAwXFJnXP_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECseyIfFeUOWMb_17polars_mem_engine(ptr noundef nonnull align 8 %i.u, ptr noalias noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc10 unwind label %.body.thread30.loopexit.split-lp, !dbg !31088 ; 2 uses

.noexc10:                                         ; preds = %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCseyIfFeUOWMb_17polars_mem_engine.exit.i.i
  %i.bv = icmp eq ptr %i.bu, null, !dbg !31089
  br i1 %i.bv, label %_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultIB3t_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtBZ_3any3AnyNtNtBZ_6marker4SendEL_EEE4send0uEs_0uECseyIfFeUOWMb_17polars_mem_engine.exit.i, label %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCseyIfFeUOWMb_17polars_mem_engine.exit.thread.i.i, !dbg !31089

_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCseyIfFeUOWMb_17polars_mem_engine.exit.thread.i.i: ; preds = %.noexc10, %bb.o
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.bu, %.noexc10 ], [ %i.u, %bb.o ] ; 4 uses
  %i.bw = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !dbg !31092, !noalias !31055, !noundef !14 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !dbg !31102, !noalias !31055
  %.not.i.i.i = icmp eq ptr %i.bw, null, !dbg !31104
  br i1 %.not.i.i.i, label %bb.p, label %bb.w, !dbg !31105, !prof !762

bb.p:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCseyIfFeUOWMb_17polars_mem_engine.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !31106, !noalias !31055
  %i.bx = invoke noundef nonnull ptr @_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB2_7Context3new()
          to label %bb.q unwind label %.body.thread30.loopexit.split-lp, !dbg !31106 ; 2 uses

bb.q:                                             ; preds = %bb.p
  store ptr %i.bx, ptr %i.e, align 8, !dbg !31106, !noalias !31055
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !31107, !noalias !31055
  store ptr %i.g, ptr %i.c, align 8, !dbg !31108, !noalias !31055
  store ptr %1, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8, !dbg !31108
  store ptr %i.h, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8, !dbg !31108
  invoke fastcc void @_RNCNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBZ_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB13_3any3AnyNtNtB13_6marker4SendEL_EEE4send0CseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.bx)
          to label %bb.t unwind label %bb.r, !dbg !31113, !noalias !31055

bb.r:                                             ; preds = %bb.q
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31115), !dbg !31118
  call void @llvm.experimental.noalias.scope.decl(metadata !31119), !dbg !31122
  call void @llvm.experimental.noalias.scope.decl(metadata !31124), !dbg !31127
  %i.bz = load ptr, ptr %i.e, align 8, !dbg !31129, !alias.scope !31133, !noalias !31055, !nonnull !14, !noundef !14
  %i.ca = atomicrmw sub ptr %i.bz, i64 1 release, align 8, !dbg !31134, !noalias !31137
  %i.cb = icmp eq i64 %i.ca, 1, !dbg !31138
  br i1 %i.cb, label %bb.s, label %.body.thread, !dbg !31138

bb.s:                                             ; preds = %bb.r
  fence acquire, !dbg !31139
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerE9drop_slowCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #41
          to label %.body.thread unwind label %bb.v, !dbg !31141, !noalias !31055

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !31107, !noalias !31055
  call void @llvm.experimental.noalias.scope.decl(metadata !31142), !dbg !31118
  call void @llvm.experimental.noalias.scope.decl(metadata !31145), !dbg !31148
  call void @llvm.experimental.noalias.scope.decl(metadata !31150), !dbg !31153
  %i.cc = load ptr, ptr %i.e, align 8, !dbg !31155, !alias.scope !31159, !noalias !31055, !nonnull !14, !noundef !14
  %i.cd = atomicrmw sub ptr %i.cc, i64 1 release, align 8, !dbg !31160, !noalias !31163
  %i.ce = icmp eq i64 %i.cd, 1, !dbg !31164
  br i1 %i.ce, label %bb.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECseyIfFeUOWMb_17polars_mem_engine.exit19.i.i.i, !dbg !31164

bb.u:                                             ; preds = %bb.t
  fence acquire, !dbg !31165
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerE9drop_slowCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #41
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECseyIfFeUOWMb_17polars_mem_engine.exit19.i.i.i unwind label %.body.thread30.loopexit.split-lp, !dbg !31167

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECseyIfFeUOWMb_17polars_mem_engine.exit19.i.i.i: ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !31118, !noalias !31055
  br label %bb.ag, !dbg !31118

bb.v:                                             ; preds = %bb.ab, %bb.s
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !31168, !noalias !31055
  unreachable, !dbg !31168

bb.w:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCseyIfFeUOWMb_17polars_mem_engine.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !31169, !noalias !31055
  store ptr %i.bw, ptr %i.d, align 8, !dbg !31169, !noalias !31055
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bw, i64 24, !dbg !31170
  store atomic i64 0, ptr %i.cg release, align 8, !dbg !31180, !noalias !31055
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bw, i64 32, !dbg !31182
  store atomic ptr null, ptr %i.ch release, align 8, !dbg !31189, !noalias !31055
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !31191, !noalias !31055
  store ptr %i.g, ptr %i.b, align 8, !dbg !31192, !noalias !31055
  store ptr %1, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8, !dbg !31192
  store ptr %i.h, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8, !dbg !31192
  invoke fastcc void @_RNCNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBZ_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB13_3any3AnyNtNtB13_6marker4SendEL_EEE4send0CseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.bw)
          to label %bb.x unwind label %bb.aa, !dbg !31196, !noalias !31055

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !31191, !noalias !31055
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !31198, !noalias !31055
  %i.ci = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !dbg !31202, !noalias !31055, !noundef !14 ; 3 uses
  store ptr %i.ci, ptr %i.a, align 8, !dbg !31202, !noalias !31055
  store ptr %i.bw, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !dbg !31206, !noalias !31055
  %i.cj = icmp eq ptr %i.ci, null, !dbg !31208
  br i1 %i.cj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i, label %bb.y, !dbg !31208

bb.y:                                             ; preds = %bb.x
  %i.ck = atomicrmw sub ptr %i.ci, i64 1 release, align 8, !dbg !31211, !noalias !31217
  %i.cl = icmp eq i64 %i.ck, 1, !dbg !31226
  br i1 %i.cl, label %bb.z, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i, !dbg !31226

bb.z:                                             ; preds = %bb.y
  fence acquire, !dbg !31227
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerE9drop_slowCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #41
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i unwind label %.body.thread30.loopexit.split-lp, !dbg !31229

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i: ; preds = %bb.z, %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !31230, !noalias !31055
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !31231, !noalias !31055
  br label %bb.ag, !dbg !31232

bb.aa:                                            ; preds = %bb.w
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cn = atomicrmw sub ptr %i.bw, i64 1 release, align 8, !dbg !31233, !noalias !31239
  %i.co = icmp eq i64 %i.cn, 1, !dbg !31246
  br i1 %i.co, label %bb.ab, label %.body.thread, !dbg !31246

bb.ab:                                            ; preds = %bb.aa
  fence acquire, !dbg !31247
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerE9drop_slowCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #41
          to label %.body.thread unwind label %bb.v, !dbg !31249, !noalias !31055

_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultIB3t_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtBZ_3any3AnyNtNtBZ_6marker4SendEL_EEE4send0uEs_0uECseyIfFeUOWMb_17polars_mem_engine.exit.i: ; preds = %.noexc10
  invoke fastcc void @_RNCINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIB1B_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1F_3any3AnyNtNtB1F_6marker4SendEL_EEE4send0uEs0_0CseyIfFeUOWMb_17polars_mem_engine(ptr nonnull %i.f)
          to label %bb.ag unwind label %.body.thread30.loopexit.split-lp, !dbg !31250

bb.ac:                                            ; preds = %bb.n
  %i.cp = extractvalue { i64, i32 } %i.br, 0, !dbg !31051 ; 2 uses
  %i.cq = icmp eq i64 %i.cp, %i.bq, !dbg !31254
  br i1 %i.cq, label %.split, label %bb.ad, !dbg !31254

.split:                                           ; preds = %bb.ac
  %i.cr = extractvalue { i64, i32 } %i.br, 1, !dbg !31051 ; 2 uses
  %i.cs = icmp ult i32 %i.cr, 1000000000, !dbg !31262
  call void @llvm.assume(i1 %i.cs), !dbg !31262
  %.not44 = icmp samesign ult i32 %i.cr, %i.bm, !dbg !31273
  br i1 %.not44, label %bb.o, label %bb.ae, !dbg !31051

bb.ad:                                            ; preds = %bb.ac
  %.not43 = icmp slt i64 %i.cp, %i.bq, !dbg !31273
  br i1 %.not43, label %bb.o, label %bb.ae, !dbg !31051

bb.ae:                                            ; preds = %.split, %bb.ad
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !31282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 72, i1 false), !dbg !31283
  store i64 0, ptr %0, align 8, !dbg !31282
  br label %bb.af, !dbg !31284

bb.af:                                            ; preds = %bb.ah, %bb.ai, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !31286
  ret void, !dbg !31287

bb.ag:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECseyIfFeUOWMb_17polars_mem_engine.exit19.i.i.i, %_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultIB3t_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtBZ_3any3AnyNtNtBZ_6marker4SendEL_EEE4send0uEs_0uECseyIfFeUOWMb_17polars_mem_engine.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !31288, !noalias !31055
  %i.ct = load atomic i64, ptr %i.k monotonic, align 128, !dbg !30883, !noalias !31289 ; 2 uses
  %i.cu = load i64, ptr %i.l, align 16, !dbg !30894, !noalias !31289, !noundef !14 ; 2 uses
  %i.cv = and i64 %i.cu, %i.ct, !dbg !30896
  %i.cw = icmp eq i64 %i.cv, 0, !dbg !30896
  br i1 %i.cw, label %.lr.ph.i, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE5writeCseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !30896

_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE5writeCseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %bb.ag, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, %bb.a
  %.sroa.018.0.copyload = load i64, ptr %2, align 8, !dbg !31022 ; 2 uses
  %.not7 = icmp eq i64 %.sroa.018.0.copyload, 20, !dbg !31291
  br i1 %.not7, label %bb.ai, label %bb.ah, !dbg !31046

bb.ah:                                            ; preds = %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE5writeCseyIfFeUOWMb_17polars_mem_engine.exit
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !31022
  %.sroa.43.sroa.4.0..sroa.43.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !31292
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.43.sroa.4.0..sroa.43.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx, i64 64, i1 false), !dbg !31294
  store i64 1, ptr %0, align 8, !dbg !31292
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !31292
  store i64 %.sroa.018.0.copyload, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !31292
  br label %bb.af, !dbg !31295

bb.ai:                                            ; preds = %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE5writeCseyIfFeUOWMb_17polars_mem_engine.exit.thread, %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE5writeCseyIfFeUOWMb_17polars_mem_engine.exit
  store i64 2, ptr %0, align 8, !dbg !31296
  br label %bb.af, !dbg !31298

bb.aj:                                            ; preds = %.body.thread
  resume { ptr, i32 } %eh.lpad-body29, !dbg !31299

.body.thread:                                     ; preds = %.body.thread30.loopexit, %.body.thread30.loopexit.split-lp, %bb.ab, %bb.aa, %bb.s, %bb.r
  %eh.lpad-body29 = phi { ptr, i32 } [ %i.cm, %bb.ab ], [ %i.by, %bb.r ], [ %i.cm, %bb.aa ], [ %i.by, %bb.s ], [ %lpad.loopexit, %.body.thread30.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread30.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef align 8 dereferenceable(72) %2) #36
          to label %bb.aj unwind label %bb.ak, !dbg !31286

bb.ak:                                            ; preds = %.body.thread
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !31299
  unreachable, !dbg !31299
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE8try_recvCseyIfFeUOWMb_17polars_mem_engine(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 128 %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !31300 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  %.sroa.64 = alloca [64 x i8], align 8           ; 5 uses
  %i.c = load atomic i64, ptr %1 monotonic, align 128, !dbg !31301, !noalias !31309
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 384
  br label %bb.b, !dbg !31312

bb.b:                                             ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, %bb.a
  %.sroa.0.029.i = phi i32 [ 0, %bb.a ], [ %.sroa.0.1.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ], !dbg !31314 ; 14 uses
  %.sroa.02.0.i = phi i64 [ %i.c, %bb.a ], [ %i.an, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ], !dbg !31315 ; 7 uses
  %i.j = load i64, ptr %i.d, align 16, !dbg !31317, !noalias !31309, !noundef !14
  %i.k = add i64 %i.j, -1, !dbg !31318
  %i.l = and i64 %i.k, %.sroa.02.0.i, !dbg !31319 ; 3 uses
  %i.m = load i64, ptr %i.e, align 8, !dbg !31320, !noalias !31309, !noundef !14
  %i.n = sub i64 0, %i.m, !dbg !31322
  %i.o = and i64 %.sroa.02.0.i, %i.n, !dbg !31323
  %i.p = load ptr, ptr %i.f, align 8, !dbg !31324, !noalias !31309, !nonnull !14, !noundef !14
  %i.q = load i64, ptr %i.g, align 32, !dbg !31324, !noalias !31309, !noundef !14
  %i.r = icmp ult i64 %i.l, %i.q, !dbg !31326
  tail call void @llvm.assume(i1 %i.r), !dbg !31331
  %i.s = getelementptr inbounds nuw [80 x i8], ptr %i.p, i64 %i.l, !dbg !31332 ; 3 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8, !dbg !31333, !noalias !31309 ; 3 uses
  %i.u = add i64 %.sroa.02.0.i, 1, !dbg !31337
  %i.v = icmp eq i64 %i.u, %i.t, !dbg !31337
  br i1 %i.v, label %bb.d, label %bb.c, !dbg !31337

bb.c:                                             ; preds = %bb.b
  %i.w = icmp eq i64 %i.t, %.sroa.02.0.i, !dbg !31339
  br i1 %i.w, label %bb.h, label %bb.e, !dbg !31339

bb.d:                                             ; preds = %bb.b
  %i.x = add nuw i64 %i.l, 1, !dbg !31340
  %i.y = load i64, ptr %i.i, align 128, !dbg !31341, !noalias !31309, !noundef !14
  %i.z = icmp ult i64 %i.x, %i.y, !dbg !31340
  br i1 %i.z, label %bb.l, label %bb.k, !dbg !31340

bb.e:                                             ; preds = %bb.c
  %i.aa = icmp ult i32 %.sroa.0.029.i, 7, !dbg !31342
  br i1 %i.aa, label %bb.g, label %bb.f, !dbg !31342

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now(), !dbg !31344, !noalias !31309
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, !dbg !31344

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.sroa.0.029.i, 0, !dbg !31345
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader, !dbg !31349

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.ab = mul nuw i32 %.sroa.0.029.i, %.sroa.0.029.i, !dbg !31350 ; 2 uses
  %xtraiter = and i32 %i.ab, 7, !dbg !31349       ; 3 uses
  %i.ac = icmp ult i32 %.sroa.0.029.i, 3, !dbg !31349
  br i1 %i.ac, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new, !dbg !31349

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.ab, 56, !dbg !31349
  br label %.lr.ph.i.i, !dbg !31349

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !dbg !31352, !noalias !31309
  tail call void @llvm.x86.sse2.pause(), !dbg !31352, !noalias !31309
  tail call void @llvm.x86.sse2.pause(), !dbg !31352, !noalias !31309
  tail call void @llvm.x86.sse2.pause(), !dbg !31352, !noalias !31309
  tail call void @llvm.x86.sse2.pause(), !dbg !31352, !noalias !31309
  tail call void @llvm.x86.sse2.pause(), !dbg !31352, !noalias !31309
  tail call void @llvm.x86.sse2.pause(), !dbg !31352, !noalias !31309
  tail call void @llvm.x86.sse2.pause(), !dbg !31352, !noalias !31309
  %niter.next.7 = add i32 %niter, 8, !dbg !31349  ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter, !dbg !31349
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !dbg !31349

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !31349
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader, !dbg !31349

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod35 = icmp ne i32 %xtraiter, 0, !dbg !31349
  tail call void @llvm.assume(i1 %lcmp.mod35), !dbg !31349
  br label %.lr.ph.i.i.epil, !dbg !31349

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !31352, !noalias !31309
  %epil.iter.next = add i32 %epil.iter, 1, !dbg !31349 ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter, !dbg !31349
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !dbg !31349, !llvm.loop !31355

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.g, %bb.f
  %i.ad = add i32 %.sroa.0.029.i, 1, !dbg !31356
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, !dbg !31357

bb.h:                                             ; preds = %bb.c
  fence seq_cst, !dbg !31358
  %i.ae = load atomic i64, ptr %i.h monotonic, align 128, !dbg !31360, !noalias !31309 ; 2 uses
  %i.af = load i64, ptr %i.d, align 16, !dbg !31363, !noalias !31309, !noundef !14 ; 2 uses
  %i.ag = xor i64 %i.af, -1, !dbg !31365
  %i.ah = and i64 %i.ae, %i.ag, !dbg !31366
  %i.ai = icmp eq i64 %i.ah, %.sroa.02.0.i, !dbg !31366
  br i1 %i.ai, label %bb.j, label %bb.i, !dbg !31366

bb.i:                                             ; preds = %bb.h
  %.sroa.0.0.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.029.i, i32 6), !dbg !31367 ; 2 uses
  %2 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i, !dbg !31370 ; 2 uses
  %.not.i11.i = icmp eq i32 %.sroa.0.029.i, 0, !dbg !31372
  br i1 %.not.i11.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, label %.lr.ph.i12.i.preheader, !dbg !31376

.lr.ph.i12.i.preheader:                           ; preds = %bb.i
  %xtraiter36 = and i32 %2, 5, !dbg !31376        ; 3 uses
  %i.aj = icmp ult i32 %.sroa.0.029.i, 3, !dbg !31376
  br i1 %i.aj, label %.lr.ph.i12.i.epil.preheader, label %.lr.ph.i12.i.preheader.new, !dbg !31376

.lr.ph.i12.i.preheader.new:                       ; preds = %.lr.ph.i12.i.preheader
  %unroll_iter40 = and i32 %2, 56, !dbg !31376
  br label %.lr.ph.i12.i, !dbg !31376

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i12.i
  %lcmp.mod38.not = icmp eq i32 %xtraiter36, 0, !dbg !31376
  br i1 %lcmp.mod38.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil.preheader, !dbg !31376

.lr.ph.i12.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i12.i.preheader
  %lcmp.mod39 = icmp ne i32 %xtraiter36, 0, !dbg !31376
  tail call void @llvm.assume(i1 %lcmp.mod39), !dbg !31376
  br label %.lr.ph.i12.i.epil, !dbg !31376

.lr.ph.i12.i.epil:                                ; preds = %.lr.ph.i12.i.epil, %.lr.ph.i12.i.epil.preheader
  %epil.iter37 = phi i32 [ 0, %.lr.ph.i12.i.epil.preheader ], [ %epil.iter37.next, %.lr.ph.i12.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !31377, !noalias !31309
  %epil.iter37.next = add i32 %epil.iter37, 1, !dbg !31376 ; 2 uses
  %epil.iter37.cmp.not = icmp eq i32 %epil.iter37.next, %xtraiter36, !dbg !31376
  br i1 %epil.iter37.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil, !dbg !31376, !llvm.loop !31380

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i12.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ak = add i32 %.sroa.0.029.i, 1, !dbg !31381
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, !dbg !31382

.lr.ph.i12.i:                                     ; preds = %.lr.ph.i12.i, %.lr.ph.i12.i.preheader.new
  %niter41 = phi i32 [ 0, %.lr.ph.i12.i.preheader.new ], [ %niter41.next.7, %.lr.ph.i12.i ]
  tail call void @llvm.x86.sse2.pause(), !dbg !31377, !noalias !31309
  tail call void @llvm.x86.sse2.pause(), !dbg !31377, !noalias !31309
  tail call void @llvm.x86.sse2.pause(), !dbg !31377, !noalias !31309
  tail call void @llvm.x86.sse2.pause(), !dbg !31377, !noalias !31309
  tail call void @llvm.x86.sse2.pause(), !dbg !31377, !noalias !31309
  tail call void @llvm.x86.sse2.pause(), !dbg !31377, !noalias !31309
  tail call void @llvm.x86.sse2.pause(), !dbg !31377, !noalias !31309
  tail call void @llvm.x86.sse2.pause(), !dbg !31377, !noalias !31309
  %niter41.next.7 = add i32 %niter41, 8, !dbg !31376 ; 2 uses
  %niter41.ncmp.7 = icmp eq i32 %niter41.next.7, %unroll_iter40, !dbg !31376
  br i1 %niter41.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i12.i, !dbg !31376

bb.j:                                             ; preds = %bb.h
  %i.al = and i64 %i.af, %i.ae, !dbg !31384
  %i.am = icmp eq i64 %i.al, 0, !dbg !31384
  br i1 %i.am, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE10start_recvCseyIfFeUOWMb_17polars_mem_engine.exit, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE4readCseyIfFeUOWMb_17polars_mem_engine.exit.thread, !dbg !31384

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i: ; preds = %._crit_edge.loopexit.i20.i, %bb.m, %._crit_edge.loopexit.i.i, %bb.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.1.i = phi i32 [ %i.ad, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 1, %bb.m ], [ %i.at, %._crit_edge.loopexit.i20.i ], [ %i.ak, %._crit_edge.loopexit.i.i ], [ 1, %bb.i ], !dbg !31385
  %i.an = load atomic i64, ptr %1 monotonic, align 128, !dbg !31386, !noalias !31309
  br label %bb.b, !dbg !31312

bb.k:                                             ; preds = %bb.d
  %i.ao = load i64, ptr %i.e, align 8, !dbg !31389, !noalias !31309, !noundef !14
  %i.ap = add i64 %i.ao, %i.o, !dbg !31390
  br label %bb.l, !dbg !31393

bb.l:                                             ; preds = %bb.k, %bb.d
  %.sroa.01.0.i = phi i64 [ %i.ap, %bb.k ], [ %i.t, %bb.d ], !dbg !31385
  %i.aq = cmpxchg weak ptr %1, i64 %.sroa.02.0.i, i64 %.sroa.01.0.i seq_cst monotonic, align 8, !dbg !31394, !noalias !31309
  %i.ar = extractvalue { i64, i1 } %i.aq, 1, !dbg !31394
  br i1 %i.ar, label %bb.n, label %bb.m, !dbg !31399

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.i.i15.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.029.i, i32 6), !dbg !31400 ; 2 uses
  %3 = mul nuw nsw i32 %.sroa.0.0.i.i15.i, %.sroa.0.0.i.i15.i, !dbg !31403 ; 2 uses
  %.not.i16.i = icmp eq i32 %.sroa.0.029.i, 0, !dbg !31405
  br i1 %.not.i16.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, label %.lr.ph.i17.i.preheader, !dbg !31409

.lr.ph.i17.i.preheader:                           ; preds = %bb.m
  %xtraiter42 = and i32 %3, 5, !dbg !31409        ; 3 uses
  %i.as = icmp ult i32 %.sroa.0.029.i, 3, !dbg !31409
  br i1 %i.as, label %.lr.ph.i17.i.epil.preheader, label %.lr.ph.i17.i.preheader.new, !dbg !31409

.lr.ph.i17.i.preheader.new:                       ; preds = %.lr.ph.i17.i.preheader
  %unroll_iter46 = and i32 %3, 56, !dbg !31409
  br label %.lr.ph.i17.i, !dbg !31409

._crit_edge.loopexit.i20.i.unr-lcssa:             ; preds = %.lr.ph.i17.i
  %lcmp.mod44.not = icmp eq i32 %xtraiter42, 0, !dbg !31409
  br i1 %lcmp.mod44.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil.preheader, !dbg !31409

.lr.ph.i17.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i20.i.unr-lcssa, %.lr.ph.i17.i.preheader
  %lcmp.mod45 = icmp ne i32 %xtraiter42, 0, !dbg !31409
  tail call void @llvm.assume(i1 %lcmp.mod45), !dbg !31409
  br label %.lr.ph.i17.i.epil, !dbg !31409

.lr.ph.i17.i.epil:                                ; preds = %.lr.ph.i17.i.epil, %.lr.ph.i17.i.epil.preheader
  %epil.iter43 = phi i32 [ 0, %.lr.ph.i17.i.epil.preheader ], [ %epil.iter43.next, %.lr.ph.i17.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !31410, !noalias !31309
  %epil.iter43.next = add i32 %epil.iter43, 1, !dbg !31409 ; 2 uses
  %epil.iter43.cmp.not = icmp eq i32 %epil.iter43.next, %xtraiter42, !dbg !31409
  br i1 %epil.iter43.cmp.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil, !dbg !31409, !llvm.loop !31413

._crit_edge.loopexit.i20.i:                       ; preds = %.lr.ph.i17.i.epil, %._crit_edge.loopexit.i20.i.unr-lcssa
  %i.at = add i32 %.sroa.0.029.i, 1, !dbg !31414
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, !dbg !31415

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i, %.lr.ph.i17.i.preheader.new
  %niter47 = phi i32 [ 0, %.lr.ph.i17.i.preheader.new ], [ %niter47.next.7, %.lr.ph.i17.i ]
  tail call void @llvm.x86.sse2.pause(), !dbg !31410, !noalias !31309
  tail call void @llvm.x86.sse2.pause(), !dbg !31410, !noalias !31309
  tail call void @llvm.x86.sse2.pause(), !dbg !31410, !noalias !31309
  tail call void @llvm.x86.sse2.pause(), !dbg !31410, !noalias !31309
  tail call void @llvm.x86.sse2.pause(), !dbg !31410, !noalias !31309
  tail call void @llvm.x86.sse2.pause(), !dbg !31410, !noalias !31309
  tail call void @llvm.x86.sse2.pause(), !dbg !31410, !noalias !31309
  tail call void @llvm.x86.sse2.pause(), !dbg !31410, !noalias !31309
  %niter47.next.7 = add i32 %niter47, 8, !dbg !31409 ; 2 uses
  %niter47.ncmp.7 = icmp eq i32 %niter47.next.7, %unroll_iter46, !dbg !31409
  br i1 %niter47.ncmp.7, label %._crit_edge.loopexit.i20.i.unr-lcssa, label %.lr.ph.i17.i, !dbg !31409

_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE10start_recvCseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !31417
  store i8 0, ptr %i.au, align 8, !dbg !31417
  store i64 20, ptr %0, align 8, !dbg !31417
  br label %bb.r, !dbg !31418

_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE4readCseyIfFeUOWMb_17polars_mem_engine.exit.thread: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.64), !dbg !31419
  br label %bb.s, !dbg !31420

bb.n:                                             ; preds = %bb.l
  %i.av = load i64, ptr %i.e, align 8, !dbg !31423, !noalias !31309, !noundef !14
  %i.aw = add i64 %i.av, %.sroa.02.0.i, !dbg !31424
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.64), !dbg !31419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !31426, !noalias !31429
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !31432
  %i.ax = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !31434
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %i.ax, i64 72, i1 false), !dbg !31437, !noalias !31429
  store atomic i64 %i.aw, ptr %i.s release, align 8, !dbg !31442, !noalias !31429
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !dbg !31447, !noalias !31429
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !31448
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 256, !dbg !31449
  invoke fastcc void @_RNvMs0_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.ay)
          to label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE4readCseyIfFeUOWMb_17polars_mem_engine.exit unwind label %bb.o, !dbg !31451, !noalias !31429

bb.o:                                             ; preds = %bb.n
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef align 8 dereferenceable(72) %i.b) #36
          to label %bb.q unwind label %bb.p, !dbg !31452, !noalias !31429

bb.p:                                             ; preds = %bb.o
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !31453, !noalias !31429
  unreachable, !dbg !31453

bb.q:                                             ; preds = %bb.o
  resume { ptr, i32 } %i.az, !dbg !31453

_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE4readCseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %bb.n
  %.sroa.02.0.copyload3 = load i64, ptr %i.b, align 8, !dbg !31454 ; 2 uses
  %.sroa.64.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !31454
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.64, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.64.0..sroa_idx5, i64 64, i1 false), !dbg !31454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !31452, !noalias !31429
  %i.bb = icmp eq i64 %.sroa.02.0.copyload3, 20, !dbg !31455
  br i1 %i.bb, label %bb.s, label %bb.t, !dbg !31420

bb.r:                                             ; preds = %bb.u, %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE10start_recvCseyIfFeUOWMb_17polars_mem_engine.exit
  ret void, !dbg !31456

bb.s:                                             ; preds = %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE4readCseyIfFeUOWMb_17polars_mem_engine.exit.thread, %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE4readCseyIfFeUOWMb_17polars_mem_engine.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !31457
  store i8 1, ptr %i.bc, align 8, !dbg !31457
  br label %bb.u, !dbg !31459

bb.t:                                             ; preds = %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE4readCseyIfFeUOWMb_17polars_mem_engine.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !31460
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.64, i64 64, i1 false), !dbg !31462
  br label %bb.u, !dbg !31463

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sroa.02.0.copyload3.sink = phi i64 [ %.sroa.02.0.copyload3, %bb.t ], [ 20, %bb.s ]
  store i64 %.sroa.02.0.copyload3.sink, ptr %0, align 8, !dbg !31464
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.64), !dbg !31465
  br label %bb.r, !dbg !31418
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit(i64 noundef range(i64 1, 17) %0, i64 noundef range(i64 0, 281) %1) unnamed_addr #3 !dbg !619 {
bb.a:
  %i.a = icmp eq i64 %1, 0, !dbg !31466
  br i1 %i.a, label %_RNvMNtCsgZ49sUHp3tW_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit.thread, label %_RNvMNtCsgZ49sUHp3tW_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit, !dbg !31466

_RNvMNtCsgZ49sUHp3tW_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit.thread: ; preds = %bb.a
  %i.b = inttoptr i64 %0 to ptr, !dbg !31470
  br label %bb.c, !dbg !31475

_RNvMNtCsgZ49sUHp3tW_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit: ; preds = %bb.a
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !dbg !31476
  %i.c = tail call noundef ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 0, 281) %1, i64 noundef range(i64 1, 17) %0) #31, !dbg !31478 ; 2 uses
  %i.d = icmp eq ptr %i.c, null, !dbg !31479
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !31475, !prof !628

bb.b:                                             ; preds = %_RNvMNtCsgZ49sUHp3tW_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef %0, i64 noundef %1) #40, !dbg !31480
  unreachable, !dbg !31480

bb.c:                                             ; preds = %_RNvMNtCsgZ49sUHp3tW_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit.thread, %_RNvMNtCsgZ49sUHp3tW_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit
  %.sroa.0.0.i4 = phi ptr [ %i.b, %_RNvMNtCsgZ49sUHp3tW_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit.thread ], [ %i.c, %_RNvMNtCsgZ49sUHp3tW_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit ]
  ret ptr %.sroa.0.0.i4, !dbg !31481
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCseyIfFeUOWMb_17polars_mem_engine14scan_predicate9functions21create_scan_predicate(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr nofree noundef nonnull align 16 captures(address, read_provenance) %1, ptr noalias noundef align 8 dereferenceable(32) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(64) %4, ptr noalias noundef dereferenceable(4) %5, i1 noundef zeroext %6, i1 noundef zeroext %7) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !31482 {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [56 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 16               ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [48 x i8], align 16               ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 16               ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [48 x i8], align 16               ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.0397 = alloca [23 x i8], align 1         ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [48 x i8], align 16               ; 4 uses
  %i.p = alloca [64 x i8], align 16               ; 4 uses
  %i.q = alloca [64 x i8], align 16               ; 4 uses
  %i.r = alloca [64 x i8], align 16               ; 4 uses
  %i.s = alloca [80 x i8], align 8                ; 7 uses
  %i.t = alloca [64 x i8], align 16               ; 4 uses
  %i.u = alloca [80 x i8], align 8                ; 7 uses
  %.sroa.066.sroa.0 = alloca [32 x i8], align 8   ; 3 uses
  %i.v = alloca [56 x i8], align 8                ; 8 uses
  %i.w = alloca [72 x i8], align 8                ; 8 uses
  %.sroa.675.sroa.0 = alloca [32 x i8], align 8   ; 6 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [32 x i8], align 8                ; 7 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [32 x i8], align 8               ; 9 uses
  %i.ac = alloca [72 x i8], align 8               ; 13 uses
  %i.ad = alloca [8 x i8], align 8                ; 11 uses
  %i.ae = alloca [72 x i8], align 8               ; 8 uses
  %i.af = alloca [48 x i8], align 16              ; 5 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [24 x i8], align 8               ; 7 uses
  %i.ai = alloca [24 x i8], align 8               ; 9 uses
  %i.aj = alloca [48 x i8], align 16              ; 5 uses
  %i.ak = alloca [48 x i8], align 16              ; 5 uses
  %i.al = alloca [16 x i8], align 8               ; 5 uses
  %i.am = alloca [24 x i8], align 8               ; 7 uses
  %i.an = alloca [24 x i8], align 8               ; 9 uses
  %i.ao = alloca [48 x i8], align 16              ; 5 uses
  %i.ap = alloca [48 x i8], align 16              ; 5 uses
  %i.aq = alloca [16 x i8], align 8               ; 5 uses
  %i.ar = alloca [24 x i8], align 8               ; 7 uses
  %i.as = alloca [24 x i8], align 8               ; 9 uses
  %i.at = alloca [48 x i8], align 16              ; 5 uses
  %i.au = alloca [8 x i8], align 8                ; 4 uses
  %i.av = alloca [24 x i8], align 8               ; 7 uses
  %i.aw = alloca [48 x i8], align 16              ; 5 uses
  %i.ax = alloca [64 x i8], align 8               ; 11 uses
  %i.ay = alloca [16 x i8], align 8               ; 5 uses
  %i.az = alloca [24 x i8], align 8               ; 6 uses
  %i.ba = alloca [16 x i8], align 8               ; 5 uses
  %i.bb = alloca [24 x i8], align 8               ; 6 uses
  %i.bc = alloca [32 x i8], align 8               ; 9 uses
  %.sroa.4 = alloca [24 x i8], align 8            ; 4 uses
  %i.bd = alloca [112 x i8], align 16             ; 12 uses
  %i.be = alloca [16 x i8], align 16              ; 14 uses
  %i.bf = alloca [72 x i8], align 8               ; 4 uses
  %i.bg = alloca [72 x i8], align 8               ; 4 uses
  %i.bh = alloca [64 x i8], align 8               ; 4 uses
  %i.bi = alloca [8 x i8], align 8                ; 11 uses
  %i.bj = alloca [72 x i8], align 8               ; 8 uses
  %i.bk = alloca [16 x i8], align 16              ; 11 uses
  %i.bl = alloca [112 x i8], align 16             ; 5 uses
  %i.bm = alloca [144 x i8], align 16             ; 8 uses
  %i.bn = alloca [32 x i8], align 8               ; 7 uses
  %i.bo = alloca [32 x i8], align 8               ; 8 uses
  %i.bp = alloca [112 x i8], align 16             ; 8 uses
  %i.bq = alloca [72 x i8], align 8               ; 8 uses
  %i.br = alloca [144 x i8], align 16             ; 8 uses
  %i.bs = alloca [32 x i8], align 8               ; 8 uses
  %i.bt = alloca [72 x i8], align 8               ; 7 uses
  %i.bu = alloca [24 x i8], align 8               ; 7 uses
  %i.bv = alloca [24 x i8], align 8               ; 17 uses
  %i.bw = alloca [24 x i8], align 8               ; 13 uses
  %i.bx = alloca [16 x i8], align 16              ; 17 uses
  %i.by = alloca [112 x i8], align 16             ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !dbg !31483
  call fastcc void @_RNvXsf_NtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_irNtB5_6ExprIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.by, ptr noundef nonnull align 16 %1) #38, !dbg !31484
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !dbg !31485
  store ptr null, ptr %i.bx, align 16, !dbg !31487
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8, !dbg !31487 ; 3 uses
  %.not = icmp eq ptr %4, null, !dbg !31488
  br i1 %.not, label %bb.c, label %bb.b, !dbg !31491

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !dbg !31492
  store i64 0, ptr %i.bw, align 8, !dbg !31494
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 8, !dbg !31494 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ca, align 8, !dbg !31494
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 16, !dbg !31494 ; 4 uses
  store i64 0, ptr %i.cb, align 8, !dbg !31494
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !dbg !31497
  store i64 0, ptr %i.bv, align 8, !dbg !31499
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 8, !dbg !31499 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.cc, align 8, !dbg !31499
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bv, i64 16, !dbg !31499 ; 5 uses
  store i64 0, ptr %i.cd, align 8, !dbg !31499
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 96, !dbg !31501
end_hunk_0
begin_hunk_1_@llvm.umin.i32
!30755 = !DILocation(line: 472, column: 28, scope: !30746)
!30756 = !DILocation(line: 3904, column: 24, scope: !5228, inlinedAt: !30757)
!30757 = distinct !DILocation(line: 2870, column: 26, scope: !30758, inlinedAt: !30759)
!30758 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE4load", scope: !279, file: !274, line: 2868, type: !13, scopeLine: 2868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!30759 = distinct !DILocation(line: 501, column: 34, scope: !30752, inlinedAt: !30753)
!30760 = !DILocation(line: 502, column: 27, scope: !30751, inlinedAt: !30753)
!30761 = !DILocation(line: 502, column: 20, scope: !30751, inlinedAt: !30753)
!30762 = !DILocation(line: 505, column: 9, scope: !30763, inlinedAt: !30753)
!30763 = distinct !DILexicalBlock(scope: !30764, file: !21381, line: 504, column: 9)
!30764 = distinct !DILexicalBlock(scope: !30751, file: !21381, line: 502, column: 9)
!30765 = !DILocation(line: 507, column: 33, scope: !30763, inlinedAt: !30753)
!30766 = !DILocation(line: 105, column: 9, scope: !30767, inlinedAt: !30771)
!30767 = distinct !DISubprogram(name: "new", linkageName: "_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff3new", scope: !30769, file: !30768, line: 104, type: !13, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!30768 = !DIFile(filename: "library/std/src/sync/mpmc/utils.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "b941d8df8f24d0813175fb738fe0f164")
!30769 = !DINamespace(name: "Backoff", scope: !30770)
!30770 = !DINamespace(name: "utils", scope: !20731)
!30771 = distinct !DILocation(line: 504, column: 23, scope: !30764, inlinedAt: !30753)
!30772 = !DILocation(line: 0, scope: !30752, inlinedAt: !30753)
!30773 = !DILocation(line: 507, column: 32, scope: !30763, inlinedAt: !30753)
!30774 = !DILocation(line: 507, column: 25, scope: !30763, inlinedAt: !30753)
!30775 = !DILocation(line: 508, column: 32, scope: !30776, inlinedAt: !30753)
!30776 = distinct !DILexicalBlock(scope: !30763, file: !21381, line: 507, column: 13)
!30777 = !DILocation(line: 508, column: 30, scope: !30776, inlinedAt: !30753)
!30778 = !DILocation(line: 508, column: 23, scope: !30776, inlinedAt: !30753)
!30779 = !DILocation(line: 512, column: 33, scope: !30780, inlinedAt: !30753)
!30780 = distinct !DILexicalBlock(scope: !30776, file: !21381, line: 508, column: 13)
!30781 = !DILocation(line: 252, column: 39, scope: !30782, inlinedAt: !30783)
!30782 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::array::Slot<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5array4SlotINtNtB9_6result6ResultIB1L_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB9_3any3AnyNtNtB9_6marker4SendEL_EEEE13get_uncheckedCseyIfFeUOWMb_17polars_mem_engine", scope: !17130, file: !17129, line: 239, type: !13, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!30783 = distinct !DILocation(line: 646, column: 26, scope: !30784, inlinedAt: !30785)
!30784 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::array::Slot<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5array4SlotINtNtB5_6result6ResultIB1i_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB5_3any3AnyNtNtB5_6marker4SendEL_EEE13get_uncheckedjECseyIfFeUOWMb_17polars_mem_engine", scope: !17032, file: !17031, line: 639, type: !13, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!30785 = distinct !DILocation(line: 512, column: 45, scope: !30780, inlinedAt: !30753)
!30786 = !DILocation(line: 252, column: 13, scope: !30782, inlinedAt: !30783)
!30787 = !DILocation(line: 253, column: 13, scope: !30782, inlinedAt: !30783)
!30788 = !DILocation(line: 3905, column: 24, scope: !5228, inlinedAt: !30789)
!30789 = distinct !DILocation(line: 2870, column: 26, scope: !30758, inlinedAt: !30790)
!30790 = distinct !DILocation(line: 513, column: 36, scope: !30791, inlinedAt: !30753)
!30791 = distinct !DILexicalBlock(scope: !30780, file: !21381, line: 512, column: 13)
!30792 = !DILocation(line: 516, column: 16, scope: !30793, inlinedAt: !30753)
!30793 = distinct !DILexicalBlock(scope: !30791, file: !21381, line: 513, column: 13)
!30794 = !DILocation(line: 531, column: 23, scope: !30793, inlinedAt: !30753)
!30795 = !DILocation(line: 517, column: 27, scope: !30793, inlinedAt: !30753)
!30796 = !DILocation(line: 517, column: 39, scope: !30793, inlinedAt: !30753)
!30797 = !DILocation(line: 127, column: 12, scope: !30798, inlinedAt: !30799)
!30798 = distinct !DISubprogram(name: "spin_heavy", linkageName: "_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy", scope: !30769, file: !30768, line: 126, type: !13, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!30799 = distinct !DILocation(line: 536, column: 25, scope: !30793, inlinedAt: !30753)
!30800 = !DILocation(line: 132, column: 13, scope: !30798, inlinedAt: !30799)
!30801 = !DILocation(line: 1917, column: 50, scope: !30802, inlinedAt: !30804)
!30802 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXs10_NtNtCscgRAwXFJnXP_4core3cmp5implsmNtB8_10PartialOrd2lt", scope: !30803, file: !441, line: 1917, type: !13, scopeLine: 1917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!30803 = !DINamespace(name: "{impl#64}", scope: !465)
!30804 = distinct !DILocation(line: 781, column: 12, scope: !30805, inlinedAt: !30806)
!30805 = distinct !DISubprogram(name: "spec_next<u32>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangemENtB5_17RangeIteratorImpl9spec_nextCseyIfFeUOWMb_17polars_mem_engine", scope: !17742, file: !17695, line: 780, type: !13, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!30806 = distinct !DILocation(line: 866, column: 14, scope: !30807, inlinedAt: !30808)
!30807 = distinct !DISubprogram(name: "next<u32>", linkageName: "_RNvXs4_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangemENtNtNtB7_6traits8iterator8Iterator4nextCseyIfFeUOWMb_17polars_mem_engine", scope: !17696, file: !17695, line: 865, type: !13, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!30808 = distinct !DILocation(line: 128, column: 22, scope: !30809, inlinedAt: !30799)
!30809 = !DILexicalBlockFile(scope: !30810, file: !30768, discriminator: 2)
!30810 = distinct !DILexicalBlock(scope: !30798, file: !30768, line: 128, column: 13)
!30811 = !DILocation(line: 781, column: 12, scope: !30805, inlinedAt: !30806)
!30812 = !DILocation(line: 3558, column: 28, scope: !30813, inlinedAt: !30817)
!30813 = distinct !DILexicalBlock(scope: !30814, file: !436, line: 3550, column: 13)
!30814 = distinct !DILexicalBlock(scope: !30815, file: !436, line: 3549, column: 13)
!30815 = distinct !DISubprogram(name: "pow", linkageName: "_RNvMs6_NtCscgRAwXFJnXP_4core3numm3pow", scope: !30816, file: !436, line: 3545, type: !13, scopeLine: 3545, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!30816 = !DINamespace(name: "{impl#8}", scope: !64)
!30817 = distinct !DILocation(line: 128, column: 41, scope: !30798, inlinedAt: !30799)
!30818 = !DILocation(line: 25, column: 14, scope: !30819, inlinedAt: !30820)
!30819 = distinct !DISubprogram(name: "_mm_pause", linkageName: "_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864sse29__mm_pause", scope: !19143, file: !19141, line: 22, type: !13, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!30820 = distinct !DILocation(line: 287, column: 13, scope: !30821, inlinedAt: !30822)
!30821 = distinct !DISubprogram(name: "spin_loop", linkageName: "_RNvNtCscgRAwXFJnXP_4core4hint9spin_loop", scope: !16998, file: !16997, line: 270, type: !13, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!30822 = distinct !DILocation(line: 129, column: 17, scope: !30810, inlinedAt: !30799)
!30823 = distinct !{!30823, !30824}
!30824 = !{!"llvm.loop.unroll.disable"}
!30825 = !DILocation(line: 135, column: 23, scope: !30798, inlinedAt: !30799)
!30826 = !DILocation(line: 516, column: 13, scope: !30793, inlinedAt: !30753)
!30827 = !DILocation(line: 0, scope: !30764, inlinedAt: !30753)
!30828 = !DILocation(line: 524, column: 38, scope: !30793, inlinedAt: !30753)
!30829 = !DILocation(line: 2511, column: 13, scope: !30830, inlinedAt: !30831)
!30830 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj12wrapping_add", scope: !17762, file: !436, line: 2510, type: !13, scopeLine: 2510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!30831 = distinct !DILocation(line: 524, column: 25, scope: !30793, inlinedAt: !30753)
!30832 = !DILocation(line: 517, column: 24, scope: !30793, inlinedAt: !30753)
!30833 = !DILocation(line: 0, scope: !30793, inlinedAt: !30753)
!30834 = !DILocation(line: 2447, column: 9, scope: !30835, inlinedAt: !30836)
!30835 = distinct !DISubprogram(name: "get<core::mem::maybe_uninit::MaybeUninit<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtB7_3mem12maybe_uninit11MaybeUninitINtNtB7_6result6ResultIB1t_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB7_3any3AnyNtNtB7_6marker4SendEL_EEEE3getCseyIfFeUOWMb_17polars_mem_engine", scope: !21443, file: !21442, line: 2443, type: !13, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!30836 = distinct !DILocation(line: 528, column: 32, scope: !30793, inlinedAt: !30753)
!30837 = !{!30838}
!30838 = distinct !{!30838, !30839, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseyIfFeUOWMb_17polars_mem_engine: argument 0"}
!30839 = distinct !{!30839, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseyIfFeUOWMb_17polars_mem_engine"}
!30840 = !DILocation(line: 832, column: 18, scope: !30841, inlinedAt: !30842)
!30841 = distinct !DISubprogram(name: "assume_init_drop<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3mem12maybe_uninitINtB5_11MaybeUninitINtNtB9_6result6ResultIB14_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB9_3any3AnyNtNtB9_6marker4SendEL_EEE16assume_init_dropCseyIfFeUOWMb_17polars_mem_engine", scope: !5289, file: !5288, line: 825, type: !13, scopeLine: 825, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!30842 = distinct !DILocation(line: 528, column: 39, scope: !30793, inlinedAt: !30753)
!30843 = !DILocation(line: 810, column: 1, scope: !2610, inlinedAt: !30844)
!30844 = distinct !DILocation(line: 832, column: 18, scope: !30841, inlinedAt: !30842)
!30845 = !DILocation(line: 810, column: 1, scope: !2614, inlinedAt: !30846)
!30846 = distinct !DILocation(line: 810, column: 1, scope: !2610, inlinedAt: !30844)
!30847 = !DILocation(line: 810, column: 1, scope: !2617, inlinedAt: !30848)
!30848 = distinct !DILocation(line: 810, column: 1, scope: !2610, inlinedAt: !30844)
!30849 = !DILocation(line: 457, column: 14, scope: !2620, inlinedAt: !30850)
!30850 = distinct !DILocation(line: 255, column: 43, scope: !2622, inlinedAt: !30851)
!30851 = distinct !DILocation(line: 1919, column: 26, scope: !2624, inlinedAt: !30852)
!30852 = distinct !DILocation(line: 810, column: 1, scope: !2617, inlinedAt: !30848)
!30853 = !DILocation(line: 1920, column: 16, scope: !2628, inlinedAt: !30852)
!30854 = !DILocation(line: 596, column: 14, scope: !2630, inlinedAt: !30855)
!30855 = distinct !DILocation(line: 125, column: 30, scope: !2632, inlinedAt: !30856)
!30856 = distinct !DILocation(line: 255, column: 68, scope: !2622, inlinedAt: !30851)
!30857 = !DILocation(line: 128, column: 14, scope: !650, inlinedAt: !30858)
!30858 = distinct !DILocation(line: 229, column: 22, scope: !652, inlinedAt: !30859)
!30859 = distinct !DILocation(line: 344, column: 9, scope: !654, inlinedAt: !30860)
!30860 = distinct !DILocation(line: 462, column: 23, scope: !656, inlinedAt: !30861)
!30861 = distinct !DILocation(line: 1921, column: 24, scope: !2628, inlinedAt: !30852)
!30862 = !DILocation(line: 1920, column: 13, scope: !2628, inlinedAt: !30852)
!30863 = !DILocation(line: 457, column: 14, scope: !2620, inlinedAt: !30864)
!30864 = distinct !DILocation(line: 255, column: 43, scope: !2622, inlinedAt: !30865)
!30865 = distinct !DILocation(line: 1919, column: 26, scope: !2624, inlinedAt: !30866)
!30866 = distinct !DILocation(line: 810, column: 1, scope: !2617, inlinedAt: !30848)
!30867 = !DILocation(line: 1920, column: 16, scope: !2628, inlinedAt: !30866)
!30868 = !DILocation(line: 596, column: 14, scope: !2630, inlinedAt: !30869)
!30869 = distinct !DILocation(line: 125, column: 30, scope: !2632, inlinedAt: !30870)
!30870 = distinct !DILocation(line: 255, column: 68, scope: !2622, inlinedAt: !30865)
!30871 = !DILocation(line: 128, column: 14, scope: !650, inlinedAt: !30872)
!30872 = distinct !DILocation(line: 229, column: 22, scope: !652, inlinedAt: !30873)
!30873 = distinct !DILocation(line: 344, column: 9, scope: !654, inlinedAt: !30874)
!30874 = distinct !DILocation(line: 462, column: 23, scope: !656, inlinedAt: !30875)
!30875 = distinct !DILocation(line: 1921, column: 24, scope: !2628, inlinedAt: !30866)
!30876 = !DILocation(line: 1920, column: 13, scope: !2628, inlinedAt: !30866)
!30877 = !DILocation(line: 481, column: 6, scope: !30733)
!30878 = distinct !DISubprogram(name: "send<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE4sendCseyIfFeUOWMb_17polars_mem_engine", scope: !21565, file: !21381, line: 319, type: !13, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!30879 = !DILocation(line: 324, column: 26, scope: !30878)
!30880 = !DILocation(line: 5, column: 17, scope: !30881, inlinedAt: !30879)
!30881 = distinct !DISubprogram(name: "default", linkageName: "_RNvXs2_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc6selectNtB5_5TokenNtNtCscgRAwXFJnXP_4core7default7Default7default", scope: !30882, file: !21388, line: 5, type: !13, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!30882 = !DINamespace(name: "{impl#4}", scope: !21390)
!30883 = !DILocation(line: 3904, column: 24, scope: !5228, inlinedAt: !30884)
!30884 = distinct !DILocation(line: 2870, column: 26, scope: !30885, inlinedAt: !30886)
!30885 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE4load", scope: !279, file: !274, line: 2868, type: !13, scopeLine: 2868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!30886 = distinct !DILocation(line: 126, column: 34, scope: !30887, inlinedAt: !30889)
!30887 = distinct !DILexicalBlock(scope: !30888, file: !21381, line: 125, column: 9)
!30888 = distinct !DISubprogram(name: "start_send<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE10start_sendCseyIfFeUOWMb_17polars_mem_engine", scope: !21565, file: !21381, line: 124, type: !13, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!30889 = distinct !DILocation(line: 327, column: 21, scope: !30890)
!30890 = distinct !DILexicalBlock(scope: !30878, file: !21381, line: 324, column: 9)
!30891 = !{!30892}
!30892 = distinct !{!30892, !30893, !"_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE10start_sendCseyIfFeUOWMb_17polars_mem_engine: argument 0:pre.rot"}
!30893 = distinct !{!30893, !"_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE10start_sendCseyIfFeUOWMb_17polars_mem_engine"}
!30894 = !DILocation(line: 130, column: 23, scope: !30895, inlinedAt: !30889)
!30895 = distinct !DILexicalBlock(scope: !30887, file: !21381, line: 126, column: 9)
!30896 = !DILocation(line: 130, column: 16, scope: !30895, inlinedAt: !30889)
!30897 = !{!30898}
!30898 = distinct !{!30898, !30893, !"_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE10start_sendCseyIfFeUOWMb_17polars_mem_engine: argument 0"}
!30899 = !DILocation(line: 327, column: 21, scope: !30890)
!30900 = !DILocation(line: 137, column: 32, scope: !30895, inlinedAt: !30889)
!30901 = !DILocation(line: 137, column: 25, scope: !30895, inlinedAt: !30889)
!30902 = !DILocation(line: 138, column: 32, scope: !30903, inlinedAt: !30889)
!30903 = distinct !DILexicalBlock(scope: !30895, file: !21381, line: 137, column: 13)
!30904 = !DILocation(line: 138, column: 30, scope: !30903, inlinedAt: !30889)
!30905 = !DILocation(line: 138, column: 23, scope: !30903, inlinedAt: !30889)
!30906 = !DILocation(line: 142, column: 33, scope: !30907, inlinedAt: !30889)
!30907 = distinct !DILexicalBlock(scope: !30903, file: !21381, line: 138, column: 13)
!30908 = !DILocation(line: 252, column: 39, scope: !30909, inlinedAt: !30910)
!30909 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::array::Slot<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5array4SlotINtNtB9_6result6ResultIB1L_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB9_3any3AnyNtNtB9_6marker4SendEL_EEEE13get_uncheckedCseyIfFeUOWMb_17polars_mem_engine", scope: !17130, file: !17129, line: 239, type: !13, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!30910 = distinct !DILocation(line: 646, column: 26, scope: !30911, inlinedAt: !30912)
!30911 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::array::Slot<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5array4SlotINtNtB5_6result6ResultIB1i_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB5_3any3AnyNtNtB5_6marker4SendEL_EEE13get_uncheckedjECseyIfFeUOWMb_17polars_mem_engine", scope: !17032, file: !17031, line: 639, type: !13, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!30912 = distinct !DILocation(line: 142, column: 45, scope: !30907, inlinedAt: !30889)
!30913 = !DILocation(line: 252, column: 13, scope: !30909, inlinedAt: !30910)
!30914 = !DILocation(line: 253, column: 13, scope: !30909, inlinedAt: !30910)
!30915 = !DILocation(line: 3905, column: 24, scope: !5228, inlinedAt: !30916)
!30916 = distinct !DILocation(line: 2870, column: 26, scope: !30885, inlinedAt: !30917)
!30917 = distinct !DILocation(line: 143, column: 36, scope: !30918, inlinedAt: !30889)
!30918 = distinct !DILexicalBlock(scope: !30907, file: !21381, line: 142, column: 13)
!30919 = !DILocation(line: 146, column: 16, scope: !30920, inlinedAt: !30889)
!30920 = distinct !DILexicalBlock(scope: !30918, file: !21381, line: 143, column: 13)
!30921 = !DILocation(line: 175, column: 42, scope: !30920, inlinedAt: !30889)
!30922 = !DILocation(line: 2511, column: 13, scope: !30923, inlinedAt: !30924)
!30923 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj12wrapping_add", scope: !17762, file: !436, line: 2510, type: !13, scopeLine: 2510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!30924 = distinct !DILocation(line: 175, column: 29, scope: !30920, inlinedAt: !30889)
!30925 = !DILocation(line: 175, column: 59, scope: !30920, inlinedAt: !30889)
!30926 = !DILocation(line: 175, column: 23, scope: !30920, inlinedAt: !30889)
!30927 = !DILocation(line: 147, column: 35, scope: !30920, inlinedAt: !30889)
!30928 = !DILocation(line: 147, column: 47, scope: !30920, inlinedAt: !30889)
!30929 = !DILocation(line: 127, column: 12, scope: !30798, inlinedAt: !30930)
!30930 = distinct !DILocation(line: 189, column: 25, scope: !30920, inlinedAt: !30889)
!30931 = !DILocation(line: 132, column: 13, scope: !30798, inlinedAt: !30930)
!30932 = !DILocation(line: 1917, column: 50, scope: !30802, inlinedAt: !30933)
!30933 = distinct !DILocation(line: 781, column: 12, scope: !30805, inlinedAt: !30934)
!30934 = distinct !DILocation(line: 866, column: 14, scope: !30807, inlinedAt: !30935)
!30935 = distinct !DILocation(line: 128, column: 22, scope: !30809, inlinedAt: !30930)
!30936 = !DILocation(line: 781, column: 12, scope: !30805, inlinedAt: !30934)
!30937 = !DILocation(line: 3558, column: 28, scope: !30813, inlinedAt: !30938)
!30938 = distinct !DILocation(line: 128, column: 41, scope: !30798, inlinedAt: !30930)
!30939 = !DILocation(line: 25, column: 14, scope: !30819, inlinedAt: !30940)
!30940 = distinct !DILocation(line: 287, column: 13, scope: !30821, inlinedAt: !30941)
!30941 = distinct !DILocation(line: 129, column: 17, scope: !30810, inlinedAt: !30930)
!30942 = distinct !{!30942, !30824}
!30943 = !DILocation(line: 135, column: 23, scope: !30798, inlinedAt: !30930)
!30944 = !DILocation(line: 175, column: 20, scope: !30920, inlinedAt: !30889)
!30945 = !DILocation(line: 4390, column: 23, scope: !1742, inlinedAt: !30946)
!30946 = distinct !DILocation(line: 176, column: 17, scope: !30920, inlinedAt: !30889)
!30947 = !DILocation(line: 3904, column: 24, scope: !5228, inlinedAt: !30948)
!30948 = distinct !DILocation(line: 2870, column: 26, scope: !30885, inlinedAt: !30949)
!30949 = distinct !DILocation(line: 177, column: 38, scope: !30920, inlinedAt: !30889)
!30950 = !DILocation(line: 180, column: 38, scope: !30951, inlinedAt: !30889)
!30951 = distinct !DILexicalBlock(scope: !30920, file: !21381, line: 177, column: 17)
!30952 = !DILocation(line: 2511, column: 13, scope: !30923, inlinedAt: !30953)
!30953 = distinct !DILocation(line: 180, column: 25, scope: !30951, inlinedAt: !30889)
!30954 = !DILocation(line: 180, column: 20, scope: !30951, inlinedAt: !30889)
!30955 = !DILocation(line: 1077, column: 12, scope: !30956, inlinedAt: !30957)
!30956 = distinct !DISubprogram(name: "min<u32>", linkageName: "_RNvYmNtNtCscgRAwXFJnXP_4core3cmp3Ord3minCseyIfFeUOWMb_17polars_mem_engine", scope: !442, file: !441, line: 1073, type: !13, scopeLine: 1073, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!30957 = distinct !DILocation(line: 114, column: 36, scope: !30958, inlinedAt: !30959)
!30958 = distinct !DISubprogram(name: "spin_light", linkageName: "_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light", scope: !30769, file: !30768, line: 113, type: !13, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!30959 = distinct !DILocation(line: 185, column: 25, scope: !30951, inlinedAt: !30889)
!30960 = !DILocation(line: 3558, column: 28, scope: !30813, inlinedAt: !30961)
!30961 = distinct !DILocation(line: 115, column: 26, scope: !30962, inlinedAt: !30959)
!30962 = distinct !DILexicalBlock(scope: !30958, file: !30768, line: 114, column: 9)
!30963 = !DILocation(line: 1917, column: 50, scope: !30964, inlinedAt: !30965)
!30964 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXs10_NtNtCscgRAwXFJnXP_4core3cmp5implsmNtB8_10PartialOrd2lt", scope: !30803, file: !441, line: 1917, type: !13, scopeLine: 1917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!30965 = distinct !DILocation(line: 781, column: 12, scope: !30966, inlinedAt: !30967)
!30966 = distinct !DISubprogram(name: "spec_next<u32>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangemENtB5_17RangeIteratorImpl9spec_nextCseyIfFeUOWMb_17polars_mem_engine", scope: !17742, file: !17695, line: 780, type: !13, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!30967 = distinct !DILocation(line: 866, column: 14, scope: !30968, inlinedAt: !30969)
!30968 = distinct !DISubprogram(name: "next<u32>", linkageName: "_RNvXs4_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangemENtNtNtB7_6traits8iterator8Iterator4nextCseyIfFeUOWMb_17polars_mem_engine", scope: !17696, file: !17695, line: 865, type: !13, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!30969 = distinct !DILocation(line: 115, column: 18, scope: !30970, inlinedAt: !30959)
!30970 = !DILexicalBlockFile(scope: !30971, file: !30768, discriminator: 2)
!30971 = distinct !DILexicalBlock(scope: !30962, file: !30768, line: 115, column: 9)
!30972 = !DILocation(line: 781, column: 12, scope: !30966, inlinedAt: !30967)
!30973 = !DILocation(line: 25, column: 14, scope: !30974, inlinedAt: !30975)
!30974 = distinct !DISubprogram(name: "_mm_pause", linkageName: "_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864sse29__mm_pause", scope: !19143, file: !19141, line: 22, type: !13, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!30975 = distinct !DILocation(line: 287, column: 13, scope: !30976, inlinedAt: !30977)
!30976 = distinct !DISubprogram(name: "spin_loop", linkageName: "_RNvNtCscgRAwXFJnXP_4core4hint9spin_loop", scope: !16998, file: !16997, line: 270, type: !13, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!30977 = distinct !DILocation(line: 116, column: 13, scope: !30971, inlinedAt: !30959)
!30978 = distinct !{!30978, !30824}
!30979 = !DILocation(line: 119, column: 23, scope: !30962, inlinedAt: !30959)
!30980 = !DILocation(line: 555, column: 18, scope: !30981, inlinedAt: !30983)
!30981 = distinct !DISubprogram(name: "get<u32>", linkageName: "_RNvMs8_NtCscgRAwXFJnXP_4core4cellINtB5_4CellmE3getCseyIfFeUOWMb_17polars_mem_engine", scope: !30982, file: !21442, line: 552, type: !13, scopeLine: 552, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!30982 = !DINamespace(name: "Cell", scope: !17965)
!30983 = distinct !DILocation(line: 119, column: 33, scope: !30962, inlinedAt: !30959)
!30984 = !DILocation(line: 0, scope: !30920, inlinedAt: !30889)
!30985 = !DILocation(line: 3904, column: 24, scope: !5228, inlinedAt: !30986)
!30986 = distinct !DILocation(line: 2870, column: 26, scope: !30885, inlinedAt: !30987)
!30987 = distinct !DILocation(line: 0, scope: !30920, inlinedAt: !30889)
!30988 = !DILocation(line: 154, column: 38, scope: !30920, inlinedAt: !30889)
!30989 = !DILocation(line: 2511, column: 13, scope: !30923, inlinedAt: !30990)
!30990 = distinct !DILocation(line: 154, column: 25, scope: !30920, inlinedAt: !30889)
!30991 = !DILocation(line: 147, column: 32, scope: !30920, inlinedAt: !30889)
!30992 = !DILocation(line: 150, column: 21, scope: !30920, inlinedAt: !30889)
!30993 = !DILocation(line: 4081, column: 17, scope: !30994, inlinedAt: !30995)
!30994 = distinct !DISubprogram(name: "atomic_compare_exchange_weak<usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic28atomic_compare_exchange_weakjECseyIfFeUOWMb_17polars_mem_engine", scope: !275, file: !274, line: 4034, type: !13, scopeLine: 4034, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!30995 = distinct !DILocation(line: 3130, column: 21, scope: !30996, inlinedAt: !30997)
!30996 = distinct !DISubprogram(name: "compare_exchange_weak", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE21compare_exchange_weak", scope: !279, file: !274, line: 3123, type: !13, scopeLine: 3123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!30997 = distinct !DILocation(line: 158, column: 33, scope: !30998, inlinedAt: !30889)
!30998 = distinct !DILexicalBlock(scope: !30920, file: !21381, line: 147, column: 17)
!30999 = !DILocation(line: 158, column: 17, scope: !30998, inlinedAt: !30889)
!31000 = !DILocation(line: 1077, column: 12, scope: !30956, inlinedAt: !31001)
!31001 = distinct !DILocation(line: 114, column: 36, scope: !30958, inlinedAt: !31002)
!31002 = distinct !DILocation(line: 171, column: 33, scope: !30998, inlinedAt: !30889)
!31003 = !DILocation(line: 3558, column: 28, scope: !30813, inlinedAt: !31004)
!31004 = distinct !DILocation(line: 115, column: 26, scope: !30962, inlinedAt: !31002)
!31005 = !DILocation(line: 1917, column: 50, scope: !30964, inlinedAt: !31006)
!31006 = distinct !DILocation(line: 781, column: 12, scope: !30966, inlinedAt: !31007)
!31007 = distinct !DILocation(line: 866, column: 14, scope: !30968, inlinedAt: !31008)
!31008 = distinct !DILocation(line: 115, column: 18, scope: !30970, inlinedAt: !31002)
!31009 = !DILocation(line: 781, column: 12, scope: !30966, inlinedAt: !31007)
!31010 = !DILocation(line: 25, column: 14, scope: !30974, inlinedAt: !31011)
!31011 = distinct !DILocation(line: 287, column: 13, scope: !30976, inlinedAt: !31012)
!31012 = distinct !DILocation(line: 116, column: 13, scope: !30971, inlinedAt: !31002)
!31013 = distinct !{!31013, !30824}
!31014 = !DILocation(line: 119, column: 23, scope: !30962, inlinedAt: !31002)
!31015 = !DILocation(line: 555, column: 18, scope: !30981, inlinedAt: !31016)
!31016 = distinct !DILocation(line: 119, column: 33, scope: !30962, inlinedAt: !31002)
!31017 = !DILocation(line: 332, column: 30, scope: !31018)
!31018 = distinct !DILexicalBlock(scope: !30890, file: !21381, line: 332, column: 39)
!31019 = !DILocation(line: 332, column: 20, scope: !31018)
!31020 = !DILocation(line: 166, column: 25, scope: !30998, inlinedAt: !30889)
!31021 = !DILocation(line: 167, column: 25, scope: !30998, inlinedAt: !30889)
!31022 = !DILocation(line: 328, column: 54, scope: !30890)
!31023 = !DILocation(line: 2447, column: 9, scope: !31024, inlinedAt: !31025)
!31024 = distinct !DISubprogram(name: "get<core::mem::maybe_uninit::MaybeUninit<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtB7_3mem12maybe_uninit11MaybeUninitINtNtB7_6result6ResultIB1t_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB7_3any3AnyNtNtB7_6marker4SendEL_EEEE3getCseyIfFeUOWMb_17polars_mem_engine", scope: !21443, file: !21442, line: 2443, type: !13, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31025 = distinct !DILocation(line: 205, column: 22, scope: !31026, inlinedAt: !31028)
!31026 = distinct !DILexicalBlock(scope: !31027, file: !21381, line: 204, column: 13)
!31027 = distinct !DISubprogram(name: "write<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE5writeCseyIfFeUOWMb_17polars_mem_engine", scope: !21565, file: !21381, line: 196, type: !569, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31028 = distinct !DILocation(line: 328, column: 41, scope: !30890)
!31029 = !DILocation(line: 1921, column: 41, scope: !31030, inlinedAt: !31031)
!31030 = distinct !DISubprogram(name: "write<core::mem::maybe_uninit::MaybeUninit<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr5writeINtNtNtB4_3mem12maybe_uninit11MaybeUninitINtNtB4_6result6ResultIB1d_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECseyIfFeUOWMb_17polars_mem_engine", scope: !56, file: !664, line: 1898, type: !13, scopeLine: 1898, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31031 = distinct !DILocation(line: 1418, column: 18, scope: !31032, inlinedAt: !31033)
!31032 = distinct !DISubprogram(name: "write<core::mem::maybe_uninit::MaybeUninit<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOINtNtNtB6_3mem12maybe_uninit11MaybeUninitINtNtB6_6result6ResultIB1i_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_3any3AnyNtNtB6_6marker4SendEL_EEE5writeCseyIfFeUOWMb_17polars_mem_engine", scope: !54, file: !53, line: 1413, type: !13, scopeLine: 1413, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31033 = distinct !DILocation(line: 205, column: 28, scope: !31026, inlinedAt: !31028)
!31034 = !{!31035}
!31035 = distinct !{!31035, !31036, !"_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE5writeCseyIfFeUOWMb_17polars_mem_engine: argument 0"}
!31036 = distinct !{!31036, !"_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE5writeCseyIfFeUOWMb_17polars_mem_engine"}
!31037 = !DILocation(line: 3890, column: 24, scope: !31038, inlinedAt: !31039)
!31038 = distinct !DISubprogram(name: "atomic_store<usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic12atomic_storejECseyIfFeUOWMb_17polars_mem_engine", scope: !275, file: !274, line: 3885, type: !13, scopeLine: 3885, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31039 = distinct !DILocation(line: 2898, column: 26, scope: !31040, inlinedAt: !31041)
!31040 = distinct !DISubprogram(name: "store", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE5store", scope: !279, file: !274, line: 2896, type: !13, scopeLine: 2896, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31041 = distinct !DILocation(line: 206, column: 24, scope: !31026, inlinedAt: !31028)
!31042 = !{!31035, !31043}
!31043 = distinct !{!31043, !31036, !"_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE5writeCseyIfFeUOWMb_17polars_mem_engine: argument 1"}
!31044 = !DILocation(line: 210, column: 9, scope: !31027, inlinedAt: !31028)
!31045 = !DILocation(line: 210, column: 24, scope: !31027, inlinedAt: !31028)
!31046 = !DILocation(line: 966, column: 9, scope: !31047, inlinedAt: !31048)
!31047 = distinct !DISubprogram(name: "map_err<(), core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>, std::sync::mpmc::error::SendTimeoutError<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>, fn(core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>) -> std::sync::mpmc::error::SendTimeoutError<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultuIBw_IBw_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB5_3any3AnyNtNtB5_6marker4SendEL_EEE7map_errINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5error16SendTimeoutErrorBJ_ENcNtB3S_12Disconnected0ECseyIfFeUOWMb_17polars_mem_engine", scope: !2002, file: !93, line: 962, type: !13, scopeLine: 962, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31048 = !DILocation(line: 329, column: 28, scope: !31049)
!31049 = distinct !DILexicalBlock(scope: !30890, file: !21381, line: 328, column: 17)
!31050 = !DILocation(line: 332, column: 25, scope: !31018)
!31051 = !DILocation(line: 333, column: 20, scope: !31018)
!31052 = !DILocation(line: 46, column: 13, scope: !31053, inlinedAt: !31054)
!31053 = distinct !DISubprogram(name: "with<std::sync::mpmc::array::{impl#1}::send::{closure_env#0}<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>, ()>", linkageName: "_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIB1z_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1D_3any3AnyNtNtB1D_6marker4SendEL_EEE4send0uECseyIfFeUOWMb_17polars_mem_engine", scope: !21591, file: !20727, line: 37, type: !13, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31054 = distinct !DILocation(line: 338, column: 13, scope: !30890)
!31055 = !{!31056}
!31056 = distinct !{!31056, !31057, !"_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIB1z_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1D_3any3AnyNtNtB1D_6marker4SendEL_EEE4send0uECseyIfFeUOWMb_17polars_mem_engine: argument 0"}
!31057 = distinct !{!31057, !"_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIB1z_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1D_3any3AnyNtNtB1D_6marker4SendEL_EEE4send0uECseyIfFeUOWMb_17polars_mem_engine"}
!31058 = !DILocation(line: 46, column: 21, scope: !31053, inlinedAt: !31054)
!31059 = !DILocation(line: 555, column: 18, scope: !31060, inlinedAt: !31061)
!31060 = distinct !DISubprogram(name: "get<std::sys::thread_local::native::lazy::State<()>>", linkageName: "_RNvMs8_NtCscgRAwXFJnXP_4core4cellINtB5_4CellINtNtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native4lazy5StateuEE3getCseyIfFeUOWMb_17polars_mem_engine", scope: !30982, file: !21442, line: 552, type: !13, scopeLine: 552, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31061 = distinct !DILocation(line: 59, column: 42, scope: !31062, inlinedAt: !31069)
!31062 = distinct !DILexicalBlock(scope: !31064, file: !31063, line: 59, column: 48)
!31063 = !DIFile(filename: "library/std/src/sys/thread_local/native/lazy.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "7bf40489a6d7aa3cf3a0ad73306be758")
!31064 = distinct !DISubprogram(name: "get_or_init<core::cell::Cell<core::option::Option<std::sync::mpmc::context::Context>>, (), fn() -> core::cell::Cell<core::option::Option<std::sync::mpmc::context::Context>>>", linkageName: "_RINvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscgRAwXFJnXP_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE11get_or_initNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECseyIfFeUOWMb_17polars_mem_engine", scope: !31065, file: !31063, line: 58, type: !13, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31065 = !DINamespace(name: "Storage", scope: !31066)
!31066 = !DINamespace(name: "lazy", scope: !31067)
!31067 = !DINamespace(name: "native", scope: !31068)
!31068 = !DINamespace(name: "thread_local", scope: !287)
!31069 = distinct !DILocation(line: 97, column: 49, scope: !31070, inlinedAt: !31073)
!31070 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB8_7Context4with7CONTEXT00CseyIfFeUOWMb_17polars_mem_engine", scope: !31071, file: !1960, line: 92, type: !569, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31071 = !DINamespace(name: "{constant#0}", scope: !31072)
!31072 = !DINamespace(name: "CONTEXT", scope: !20728)
!31073 = distinct !DILocation(line: 250, column: 5, scope: !31074, inlinedAt: !31075)
!31074 = distinct !DISubprogram(name: "call_once<std::sync::mpmc::context::{impl#0}::with::CONTEXT::{constant#0}::{closure_env#0}, (core::option::Option<&mut core::option::Option<core::cell::Cell<core::option::Option<std::sync::mpmc::context::Context>>>>)>", linkageName: "_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCseyIfFeUOWMb_17polars_mem_engine", scope: !1969, file: !1968, line: 250, type: !13, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31075 = distinct !DILocation(line: 461, column: 37, scope: !31076, inlinedAt: !31077)
!31076 = distinct !DISubprogram(name: "try_with<core::cell::Cell<core::option::Option<std::sync::mpmc::context::Context>>, std::sync::mpmc::context::{impl#0}::with::{closure_env#1}<std::sync::mpmc::array::{impl#1}::send::{closure_env#0}<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>, ()>, ()>", linkageName: "_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultIB3t_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtBZ_3any3AnyNtNtBZ_6marker4SendEL_EEE4send0uEs_0uECseyIfFeUOWMb_17polars_mem_engine", scope: !1975, file: !1974, line: 457, type: !569, scopeLine: 457, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31077 = distinct !DILocation(line: 53, column: 14, scope: !31078, inlinedAt: !31054)
!31078 = distinct !DILexicalBlock(scope: !31079, file: !20727, line: 47, column: 9)
!31079 = distinct !DILexicalBlock(scope: !31053, file: !20727, line: 46, column: 9)
!31080 = !{!31081, !31083, !31085, !31056}
!31081 = distinct !{!31081, !31082, !"_RINvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscgRAwXFJnXP_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE11get_or_initNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECseyIfFeUOWMb_17polars_mem_engine: argument 0"}
!31082 = distinct !{!31082, !"_RINvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscgRAwXFJnXP_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE11get_or_initNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECseyIfFeUOWMb_17polars_mem_engine"}
!31083 = distinct !{!31083, !31084, !"_RNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB8_7Context4with7CONTEXT00CseyIfFeUOWMb_17polars_mem_engine: argument 0"}
!31084 = distinct !{!31084, !"_RNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB8_7Context4with7CONTEXT00CseyIfFeUOWMb_17polars_mem_engine"}
!31085 = distinct !{!31085, !31086, !"_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCseyIfFeUOWMb_17polars_mem_engine: argument 0"}
!31086 = distinct !{!31086, !"_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCseyIfFeUOWMb_17polars_mem_engine"}
!31087 = !DILocation(line: 59, column: 16, scope: !31062, inlinedAt: !31069)
!31088 = !DILocation(line: 62, column: 27, scope: !31064, inlinedAt: !31069)
!31089 = !DILocation(line: 269, column: 12, scope: !31090, inlinedAt: !31091)
!31090 = distinct !DISubprogram(name: "as_ref<core::cell::Cell<core::option::Option<std::sync::mpmc::context::Context>>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPINtNtB6_4cell4CellINtNtB6_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEE6as_refCseyIfFeUOWMb_17polars_mem_engine", scope: !5472, file: !5471, line: 266, type: !13, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31091 = distinct !DILocation(line: 461, column: 56, scope: !31076, inlinedAt: !31077)
!31092 = !DILocation(line: 929, column: 22, scope: !31093, inlinedAt: !31094)
!31093 = distinct !DISubprogram(name: "replace<core::option::Option<std::sync::mpmc::context::Context>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem7replaceINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECseyIfFeUOWMb_17polars_mem_engine", scope: !1661, file: !1660, line: 915, type: !13, scopeLine: 915, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31094 = distinct !DILocation(line: 513, column: 9, scope: !31095, inlinedAt: !31096)
!31095 = distinct !DISubprogram(name: "replace<core::option::Option<std::sync::mpmc::context::Context>>", linkageName: "_RNvMs7_NtCscgRAwXFJnXP_4core4cellINtB5_4CellINtNtB7_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEE7replaceCseyIfFeUOWMb_17polars_mem_engine", scope: !30982, file: !21442, line: 510, type: !13, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31096 = distinct !DILocation(line: 675, column: 14, scope: !31097, inlinedAt: !31098)
!31097 = distinct !DISubprogram(name: "take<core::option::Option<std::sync::mpmc::context::Context>>", linkageName: "_RNvMsa_NtCscgRAwXFJnXP_4core4cellINtB5_4CellINtNtB7_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEE4takeCseyIfFeUOWMb_17polars_mem_engine", scope: !30982, file: !21442, line: 671, type: !13, scopeLine: 671, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31098 = distinct !DILocation(line: 53, column: 41, scope: !31099, inlinedAt: !31100)
!31099 = distinct !DISubprogram(name: "{closure#1}<std::sync::mpmc::array::{impl#1}::send::{closure_env#0}<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>, ()>", linkageName: "_RNCINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIB1B_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1F_3any3AnyNtNtB1F_6marker4SendEL_EEE4send0uEs_0CseyIfFeUOWMb_17polars_mem_engine", scope: !20728, file: !20727, line: 53, type: !569, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31100 = distinct !DILocation(line: 462, column: 12, scope: !31101, inlinedAt: !31077)
!31101 = distinct !DILexicalBlock(scope: !31076, file: !1974, line: 461, column: 9)
!31102 = !DILocation(line: 930, column: 49, scope: !31103, inlinedAt: !31094)
!31103 = distinct !DILexicalBlock(scope: !31093, file: !1660, line: 929, column: 9)
!31104 = !DILocation(line: 53, column: 36, scope: !31099, inlinedAt: !31100)
!31105 = !DILocation(line: 53, column: 30, scope: !31099, inlinedAt: !31100)
!31106 = !DILocation(line: 54, column: 28, scope: !31099, inlinedAt: !31100)
!31107 = !DILocation(line: 54, column: 25, scope: !31099, inlinedAt: !31100)
!31108 = !DILocation(line: 1015, column: 18, scope: !31109, inlinedAt: !31110)
!31109 = distinct !DISubprogram(name: "unwrap<std::sync::mpmc::array::{impl#1}::send::{closure_env#0}<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionNCNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtBO_7ChannelINtNtB4_6result6ResultIB1H_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEE4send0E6unwrapCseyIfFeUOWMb_17polars_mem_engine", scope: !17066, file: !17064, line: 1013, type: !13, scopeLine: 1013, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31110 = distinct !DILocation(line: 48, column: 30, scope: !31111, inlinedAt: !31112)
!31111 = distinct !DISubprogram(name: "{closure#0}<std::sync::mpmc::array::{impl#1}::send::{closure_env#0}<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>, ()>", linkageName: "_RNCINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIB1B_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1F_3any3AnyNtNtB1F_6marker4SendEL_EEE4send0uE0CseyIfFeUOWMb_17polars_mem_engine", scope: !20728, file: !20727, line: 47, type: !13, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31112 = distinct !DILocation(line: 54, column: 25, scope: !31099, inlinedAt: !31100)
!31113 = !DILocation(line: 49, column: 13, scope: !31114, inlinedAt: !31112)
!31114 = distinct !DILexicalBlock(scope: !31111, file: !20727, line: 48, column: 13)
!31115 = !{!31116}
!31116 = distinct !{!31116, !31117, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECseyIfFeUOWMb_17polars_mem_engine: argument 0"}
!31117 = distinct !{!31117, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECseyIfFeUOWMb_17polars_mem_engine"}
!31118 = !DILocation(line: 54, column: 42, scope: !31099, inlinedAt: !31100)
!31119 = !{!31120}
!31120 = distinct !{!31120, !31121, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECseyIfFeUOWMb_17polars_mem_engine: argument 0"}
!31121 = distinct !{!31121, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECseyIfFeUOWMb_17polars_mem_engine"}
!31122 = !DILocation(line: 810, column: 1, scope: !20758, inlinedAt: !31123)
!31123 = distinct !DILocation(line: 54, column: 42, scope: !31099, inlinedAt: !31100)
!31124 = !{!31125}
!31125 = distinct !{!31125, !31126, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseyIfFeUOWMb_17polars_mem_engine: argument 0"}
!31126 = distinct !{!31126, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseyIfFeUOWMb_17polars_mem_engine"}
!31127 = !DILocation(line: 810, column: 1, scope: !20764, inlinedAt: !31128)
!31128 = distinct !DILocation(line: 810, column: 1, scope: !20758, inlinedAt: !31123)
!31129 = !DILocation(line: 444, column: 20, scope: !20767, inlinedAt: !31130)
!31130 = distinct !DILocation(line: 2110, column: 27, scope: !20769, inlinedAt: !31131)
!31131 = distinct !DILocation(line: 2814, column: 17, scope: !20771, inlinedAt: !31132)
!31132 = distinct !DILocation(line: 810, column: 1, scope: !20764, inlinedAt: !31128)
!31133 = !{!31125, !31120, !31116}
!31134 = !DILocation(line: 3956, column: 24, scope: !20775, inlinedAt: !31135)
!31135 = distinct !DILocation(line: 3193, column: 26, scope: !20777, inlinedAt: !31136)
!31136 = distinct !DILocation(line: 2814, column: 32, scope: !20771, inlinedAt: !31132)
!31137 = !{!31125, !31120, !31116, !31056}
!31138 = !DILocation(line: 2814, column: 12, scope: !20771, inlinedAt: !31132)
!31139 = !DILocation(line: 4387, column: 24, scope: !1742, inlinedAt: !31140)
!31140 = distinct !DILocation(line: 64, column: 9, scope: !20771, inlinedAt: !31132)
!31141 = !DILocation(line: 2857, column: 18, scope: !20771, inlinedAt: !31132)
!31142 = !{!31143}
!31143 = distinct !{!31143, !31144, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECseyIfFeUOWMb_17polars_mem_engine: argument 0"}
!31144 = distinct !{!31144, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECseyIfFeUOWMb_17polars_mem_engine"}
!31145 = !{!31146}
!31146 = distinct !{!31146, !31147, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECseyIfFeUOWMb_17polars_mem_engine: argument 0"}
!31147 = distinct !{!31147, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECseyIfFeUOWMb_17polars_mem_engine"}
!31148 = !DILocation(line: 810, column: 1, scope: !20758, inlinedAt: !31149)
!31149 = distinct !DILocation(line: 54, column: 42, scope: !31099, inlinedAt: !31100)
!31150 = !{!31151}
!31151 = distinct !{!31151, !31152, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseyIfFeUOWMb_17polars_mem_engine: argument 0"}
!31152 = distinct !{!31152, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseyIfFeUOWMb_17polars_mem_engine"}
!31153 = !DILocation(line: 810, column: 1, scope: !20764, inlinedAt: !31154)
!31154 = distinct !DILocation(line: 810, column: 1, scope: !20758, inlinedAt: !31149)
!31155 = !DILocation(line: 444, column: 20, scope: !20767, inlinedAt: !31156)
!31156 = distinct !DILocation(line: 2110, column: 27, scope: !20769, inlinedAt: !31157)
!31157 = distinct !DILocation(line: 2814, column: 17, scope: !20771, inlinedAt: !31158)
!31158 = distinct !DILocation(line: 810, column: 1, scope: !20764, inlinedAt: !31154)
!31159 = !{!31151, !31146, !31143}
!31160 = !DILocation(line: 3956, column: 24, scope: !20775, inlinedAt: !31161)
!31161 = distinct !DILocation(line: 3193, column: 26, scope: !20777, inlinedAt: !31162)
!31162 = distinct !DILocation(line: 2814, column: 32, scope: !20771, inlinedAt: !31158)
!31163 = !{!31151, !31146, !31143, !31056}
!31164 = !DILocation(line: 2814, column: 12, scope: !20771, inlinedAt: !31158)
!31165 = !DILocation(line: 4387, column: 24, scope: !1742, inlinedAt: !31166)
!31166 = distinct !DILocation(line: 64, column: 9, scope: !20771, inlinedAt: !31158)
!31167 = !DILocation(line: 2857, column: 18, scope: !20771, inlinedAt: !31158)
!31168 = !DILocation(line: 53, column: 23, scope: !31099, inlinedAt: !31100)
!31169 = !DILocation(line: 55, column: 22, scope: !31099, inlinedAt: !31100)
!31170 = !DILocation(line: 2447, column: 9, scope: !31171, inlinedAt: !31172)
!31171 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<usize>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8jEE3getCseyIfFeUOWMb_17polars_mem_engine", scope: !21443, file: !21442, line: 2443, type: !13, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31172 = distinct !DILocation(line: 3615, column: 24, scope: !31173, inlinedAt: !31174)
!31173 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE6as_ptr", scope: !279, file: !274, line: 3614, type: !13, scopeLine: 3614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31174 = distinct !DILocation(line: 2898, column: 44, scope: !31175, inlinedAt: !31176)
!31175 = distinct !DISubprogram(name: "store", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE5store", scope: !279, file: !274, line: 2896, type: !13, scopeLine: 2896, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31176 = distinct !DILocation(line: 81, column: 27, scope: !31177, inlinedAt: !31178)
!31177 = distinct !DISubprogram(name: "reset", linkageName: "_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB2_7Context5reset", scope: !21591, file: !20727, line: 80, type: !13, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31178 = distinct !DILocation(line: 56, column: 24, scope: !31179, inlinedAt: !31100)
!31179 = distinct !DILexicalBlock(scope: !31099, file: !20727, line: 55, column: 17)
!31180 = !DILocation(line: 3890, column: 24, scope: !31038, inlinedAt: !31181)
!31181 = distinct !DILocation(line: 2898, column: 26, scope: !31175, inlinedAt: !31176)
!31182 = !DILocation(line: 2447, column: 9, scope: !31183, inlinedAt: !31184)
!31183 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<*mut ()>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8OuEE3getCseyIfFeUOWMb_17polars_mem_engine", scope: !21443, file: !21442, line: 2443, type: !13, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31184 = distinct !DILocation(line: 2500, column: 16, scope: !31185, inlinedAt: !31186)
!31185 = distinct !DISubprogram(name: "as_ptr<()>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicOuE6as_ptrCseyIfFeUOWMb_17polars_mem_engine", scope: !279, file: !274, line: 2499, type: !13, scopeLine: 2499, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31186 = distinct !DILocation(line: 1763, column: 31, scope: !31187, inlinedAt: !31188)
!31187 = distinct !DISubprogram(name: "store<()>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicOuE5storeCseyIfFeUOWMb_17polars_mem_engine", scope: !279, file: !274, line: 1760, type: !13, scopeLine: 1760, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31188 = distinct !DILocation(line: 82, column: 27, scope: !31177, inlinedAt: !31178)
!31189 = !DILocation(line: 3890, column: 24, scope: !30335, inlinedAt: !31190)
!31190 = distinct !DILocation(line: 1763, column: 13, scope: !31187, inlinedAt: !31188)
!31191 = !DILocation(line: 57, column: 31, scope: !31179, inlinedAt: !31100)
!31192 = !DILocation(line: 1015, column: 18, scope: !31109, inlinedAt: !31193)
!31193 = distinct !DILocation(line: 48, column: 30, scope: !31194, inlinedAt: !31195)
!31194 = !DILexicalBlockFile(scope: !31111, file: !20727, discriminator: 2)
!31195 = distinct !DILocation(line: 57, column: 31, scope: !31179, inlinedAt: !31100)
!31196 = !DILocation(line: 49, column: 13, scope: !31197, inlinedAt: !31195)
!31197 = distinct !DILexicalBlock(scope: !31111, file: !20727, line: 48, column: 13)
!31198 = !DILocation(line: 437, column: 9, scope: !31199, inlinedAt: !31200)
!31199 = distinct !DISubprogram(name: "set<core::option::Option<std::sync::mpmc::context::Context>>", linkageName: "_RNvMs7_NtCscgRAwXFJnXP_4core4cellINtB5_4CellINtNtB7_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEE3setCseyIfFeUOWMb_17polars_mem_engine", scope: !30982, file: !21442, line: 433, type: !13, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31200 = distinct !DILocation(line: 58, column: 26, scope: !31201, inlinedAt: !31100)
!31201 = distinct !DILexicalBlock(scope: !31179, file: !20727, line: 57, column: 21)
!31202 = !DILocation(line: 929, column: 22, scope: !31093, inlinedAt: !31203)
!31203 = distinct !DILocation(line: 513, column: 9, scope: !31204, inlinedAt: !31205)
!31204 = !DILexicalBlockFile(scope: !31095, file: !21442, discriminator: 2)
!31205 = distinct !DILocation(line: 437, column: 14, scope: !31199, inlinedAt: !31200)
!31206 = !DILocation(line: 930, column: 49, scope: !31207, inlinedAt: !31203)
!31207 = distinct !DILexicalBlock(scope: !31093, file: !1660, line: 929, column: 9)
!31208 = !DILocation(line: 810, column: 1, scope: !31209, inlinedAt: !31210)
!31209 = distinct !DISubprogram(name: "drop_in_place<core::option::Option<std::sync::mpmc::context::Context>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECseyIfFeUOWMb_17polars_mem_engine", scope: !56, file: !664, line: 810, type: !13, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31210 = distinct !DILocation(line: 437, column: 26, scope: !31199, inlinedAt: !31200)
!31211 = !DILocation(line: 3956, column: 24, scope: !20775, inlinedAt: !31212)
!31212 = distinct !DILocation(line: 3193, column: 26, scope: !20777, inlinedAt: !31213)
!31213 = distinct !DILocation(line: 2814, column: 32, scope: !20771, inlinedAt: !31214)
!31214 = distinct !DILocation(line: 810, column: 1, scope: !20764, inlinedAt: !31215)
!31215 = distinct !DILocation(line: 810, column: 1, scope: !20758, inlinedAt: !31216)
!31216 = distinct !DILocation(line: 810, column: 1, scope: !31209, inlinedAt: !31210)
!31217 = !{!31218, !31220, !31222, !31224, !31056}
!31218 = distinct !{!31218, !31219, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseyIfFeUOWMb_17polars_mem_engine: argument 0"}
!31219 = distinct !{!31219, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseyIfFeUOWMb_17polars_mem_engine"}
!31220 = distinct !{!31220, !31221, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECseyIfFeUOWMb_17polars_mem_engine: argument 0"}
!31221 = distinct !{!31221, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECseyIfFeUOWMb_17polars_mem_engine"}
!31222 = distinct !{!31222, !31223, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECseyIfFeUOWMb_17polars_mem_engine: argument 0"}
!31223 = distinct !{!31223, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECseyIfFeUOWMb_17polars_mem_engine"}
!31224 = distinct !{!31224, !31225, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECseyIfFeUOWMb_17polars_mem_engine: argument 0"}
!31225 = distinct !{!31225, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECseyIfFeUOWMb_17polars_mem_engine"}
!31226 = !DILocation(line: 2814, column: 12, scope: !20771, inlinedAt: !31214)
!31227 = !DILocation(line: 4387, column: 24, scope: !1742, inlinedAt: !31228)
!31228 = distinct !DILocation(line: 64, column: 9, scope: !20771, inlinedAt: !31214)
!31229 = !DILocation(line: 2857, column: 18, scope: !20771, inlinedAt: !31214)
!31230 = !DILocation(line: 437, column: 26, scope: !31199, inlinedAt: !31200)
!31231 = !DILocation(line: 60, column: 17, scope: !31099, inlinedAt: !31100)
!31232 = !DILocation(line: 61, column: 13, scope: !31099, inlinedAt: !31100)
!31233 = !DILocation(line: 3956, column: 24, scope: !20775, inlinedAt: !31234)
!31234 = distinct !DILocation(line: 3193, column: 26, scope: !20777, inlinedAt: !31235)
!31235 = distinct !DILocation(line: 2814, column: 32, scope: !20771, inlinedAt: !31236)
!31236 = distinct !DILocation(line: 810, column: 1, scope: !20764, inlinedAt: !31237)
!31237 = distinct !DILocation(line: 810, column: 1, scope: !20758, inlinedAt: !31238)
!31238 = distinct !DILocation(line: 60, column: 17, scope: !31099, inlinedAt: !31100)
!31239 = !{!31240, !31242, !31244, !31056}
!31240 = distinct !{!31240, !31241, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseyIfFeUOWMb_17polars_mem_engine: argument 0"}
!31241 = distinct !{!31241, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseyIfFeUOWMb_17polars_mem_engine"}
!31242 = distinct !{!31242, !31243, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECseyIfFeUOWMb_17polars_mem_engine: argument 0"}
!31243 = distinct !{!31243, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECseyIfFeUOWMb_17polars_mem_engine"}
!31244 = distinct !{!31244, !31245, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECseyIfFeUOWMb_17polars_mem_engine: argument 0"}
!31245 = distinct !{!31245, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECseyIfFeUOWMb_17polars_mem_engine"}
!31246 = !DILocation(line: 2814, column: 12, scope: !20771, inlinedAt: !31236)
!31247 = !DILocation(line: 4387, column: 24, scope: !1742, inlinedAt: !31248)
!31248 = distinct !DILocation(line: 64, column: 9, scope: !20771, inlinedAt: !31236)
!31249 = !DILocation(line: 2857, column: 18, scope: !20771, inlinedAt: !31236)
!31250 = !DILocation(line: 1622, column: 23, scope: !31251, inlinedAt: !31253)
!31251 = distinct !DILexicalBlock(scope: !31252, file: !93, line: 1622, column: 13)
!31252 = distinct !DISubprogram(name: "unwrap_or_else<(), std::thread::local::AccessError, std::sync::mpmc::context::{impl#0}::with::{closure_env#2}<std::sync::mpmc::array::{impl#1}::send::{closure_env#0}<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>, ()>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultuNtNtNtCsh8eZTKRCwoO_3std6thread5local11AccessErrorE14unwrap_or_elseNCINvMNtNtNtBP_4sync4mpmc7contextNtB1U_7Context4withNCNvMs_NtB1W_5arrayINtB2L_7ChannelIBw_IBw_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB5_3any3AnyNtNtB5_6marker4SendEL_EEE4send0uEs0_0ECseyIfFeUOWMb_17polars_mem_engine", scope: !2002, file: !93, line: 1616, type: !13, scopeLine: 1616, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31253 = distinct !DILocation(line: 62, column: 14, scope: !31078, inlinedAt: !31054)
!31254 = !DILocation(line: 25, column: 38, scope: !31255, inlinedAt: !31256)
!31255 = distinct !DISubprogram(name: "partial_cmp", linkageName: "_RNvXs5_NtNtNtNtCsh8eZTKRCwoO_3std3sys3pal4unix4timeNtB5_8TimespecNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp", scope: !21625, file: !21624, line: 25, type: !13, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31256 = !DILocation(line: 49, column: 38, scope: !31257, inlinedAt: !31258)
!31257 = distinct !DISubprogram(name: "partial_cmp", linkageName: "_RNvXsi_NtNtNtCsh8eZTKRCwoO_3std3sys4time4unixNtB5_7InstantNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp", scope: !21632, file: !21631, line: 49, type: !13, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31258 = !DILocation(line: 154, column: 38, scope: !31259, inlinedAt: !31260)
!31259 = distinct !DISubprogram(name: "partial_cmp", linkageName: "_RNvXsm_NtCsh8eZTKRCwoO_3std4timeNtB5_7InstantNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp", scope: !21638, file: !21637, line: 154, type: !13, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31260 = !DILocation(line: 1466, column: 14, scope: !31261, inlinedAt: !31051)
!31261 = distinct !DISubprogram(name: "ge<std::time::Instant, std::time::Instant>", linkageName: "_RNvYNtNtCsh8eZTKRCwoO_3std4time7InstantNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd2geCseyIfFeUOWMb_17polars_mem_engine", scope: !21642, file: !441, line: 1465, type: !13, scopeLine: 1465, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31262 = !DILocation(line: 49, column: 26, scope: !31263, inlinedAt: !31265)
!31263 = distinct !DISubprogram(name: "as_inner", linkageName: "_RNvMs6_NtNtCscgRAwXFJnXP_4core3num11niche_typesNtB5_11Nanoseconds8as_inner", scope: !31264, file: !61, line: 46, type: !13, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31264 = !DINamespace(name: "Nanoseconds", scope: !63)
!31265 = !DILocation(line: 70, column: 32, scope: !31266, inlinedAt: !31268)
!31266 = distinct !DISubprogram(name: "cmp", linkageName: "_RNvXsa_NtNtCscgRAwXFJnXP_4core3num11niche_typesNtB5_11NanosecondsNtNtB9_3cmp3Ord3cmp", scope: !31267, file: !61, line: 69, type: !13, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31267 = !DINamespace(name: "{impl#12}", scope: !63)
!31268 = !DILocation(line: 77, column: 22, scope: !31269, inlinedAt: !31271)
!31269 = distinct !DISubprogram(name: "partial_cmp", linkageName: "_RNvXsb_NtNtCscgRAwXFJnXP_4core3num11niche_typesNtB5_11NanosecondsNtNtB9_3cmp10PartialOrd11partial_cmp", scope: !31270, file: !61, line: 76, type: !13, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31270 = !DINamespace(name: "{impl#13}", scope: !63)
!31271 = !DILocation(line: 25, column: 38, scope: !31272, inlinedAt: !31256)
!31272 = !DILexicalBlockFile(scope: !31255, file: !21624, discriminator: 2)
!31273 = !DILocation(line: 539, column: 9, scope: !31274, inlinedAt: !31275)
!31274 = distinct !DISubprogram(name: "is_ge", linkageName: "_RNvMNtCscgRAwXFJnXP_4core3cmpNtB2_8Ordering5is_ge", scope: !21647, file: !441, line: 538, type: !13, scopeLine: 538, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31275 = !DILocation(line: 250, column: 5, scope: !31276, inlinedAt: !31278)
!31276 = !DILexicalBlockFile(scope: !31277, file: !1968, discriminator: 2)
!31277 = distinct !DISubprogram(name: "call_once<fn(core::cmp::Ordering) -> bool, (core::cmp::Ordering)>", linkageName: "_RNvYNvMNtCscgRAwXFJnXP_4core3cmpNtB5_8Ordering5is_geINtNtNtB7_3ops8function6FnOnceTBu_EE9call_onceCseyIfFeUOWMb_17polars_mem_engine", scope: !1969, file: !1968, line: 250, type: !13, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31278 = !DILocation(line: 664, column: 24, scope: !31279, inlinedAt: !31281)
!31279 = distinct !DILexicalBlock(scope: !31280, file: !17064, line: 664, column: 13)
!31280 = distinct !DISubprogram(name: "is_some_and<core::cmp::Ordering, fn(core::cmp::Ordering) -> bool>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionNtNtB5_3cmp8OrderingE11is_some_andNvMBK_BI_5is_geECseyIfFeUOWMb_17polars_mem_engine", scope: !17066, file: !17064, line: 661, type: !13, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31281 = !DILocation(line: 1466, column: 33, scope: !31261, inlinedAt: !31051)
!31282 = !DILocation(line: 334, column: 28, scope: !31018)
!31283 = !DILocation(line: 334, column: 58, scope: !31018)
!31284 = !DILocation(line: 0, scope: !31285)
!31285 = !DILexicalBlockFile(scope: !30890, file: !18448, discriminator: 0)
!31286 = !DILocation(line: 361, column: 5, scope: !30878)
!31287 = !DILocation(line: 361, column: 6, scope: !30878)
!31288 = !DILocation(line: 63, column: 5, scope: !31053, inlinedAt: !31054)
!31289 = !{!31290}
!31290 = distinct !{!31290, !30893, !"_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE10start_sendCseyIfFeUOWMb_17polars_mem_engine: argument 0:h.rot"}
!31291 = !DILocation(line: 966, column: 15, scope: !31047, inlinedAt: !31048)
!31292 = !DILocation(line: 968, column: 23, scope: !31293, inlinedAt: !31048)
!31293 = distinct !DILexicalBlock(scope: !31047, file: !93, line: 968, column: 13)
!31294 = !DILocation(line: 968, column: 17, scope: !31047, inlinedAt: !31048)
!31295 = !DILocation(line: 968, column: 32, scope: !31047, inlinedAt: !31048)
!31296 = !DILocation(line: 967, column: 22, scope: !31297, inlinedAt: !31048)
!31297 = distinct !DILexicalBlock(scope: !31047, file: !93, line: 967, column: 13)
!31298 = !DILocation(line: 970, column: 5, scope: !31047, inlinedAt: !31048)
!31299 = !DILocation(line: 319, column: 5, scope: !30878)
!31300 = distinct !DISubprogram(name: "try_recv<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE8try_recvCseyIfFeUOWMb_17polars_mem_engine", scope: !21565, file: !21381, line: 364, type: !13, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31301 = !DILocation(line: 3904, column: 24, scope: !5228, inlinedAt: !31302)
!31302 = distinct !DILocation(line: 2870, column: 26, scope: !31303, inlinedAt: !31304)
!31303 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE4load", scope: !279, file: !274, line: 2868, type: !13, scopeLine: 2868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31304 = distinct !DILocation(line: 217, column: 34, scope: !31305, inlinedAt: !31307)
!31305 = distinct !DILexicalBlock(scope: !31306, file: !21381, line: 216, column: 9)
!31306 = distinct !DISubprogram(name: "start_recv<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE10start_recvCseyIfFeUOWMb_17polars_mem_engine", scope: !21565, file: !21381, line: 215, type: !13, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31307 = distinct !DILocation(line: 367, column: 17, scope: !31308)
!31308 = distinct !DILexicalBlock(scope: !31300, file: !21381, line: 365, column: 9)
!31309 = !{!31310}
!31310 = distinct !{!31310, !31311, !"_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE10start_recvCseyIfFeUOWMb_17polars_mem_engine: argument 0"}
!31311 = distinct !{!31311, !"_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE10start_recvCseyIfFeUOWMb_17polars_mem_engine"}
!31312 = !DILocation(line: 219, column: 9, scope: !31313, inlinedAt: !31307)
!31313 = distinct !DILexicalBlock(scope: !31305, file: !21381, line: 217, column: 9)
!31314 = !DILocation(line: 0, scope: !31306, inlinedAt: !31307)
!31315 = !DILocation(line: 2870, column: 26, scope: !31303, inlinedAt: !31316)
!31316 = distinct !DILocation(line: 0, scope: !31305, inlinedAt: !31307)
!31317 = !DILocation(line: 221, column: 33, scope: !31313, inlinedAt: !31307)
!31318 = !DILocation(line: 221, column: 32, scope: !31313, inlinedAt: !31307)
!31319 = !DILocation(line: 221, column: 25, scope: !31313, inlinedAt: !31307)
!31320 = !DILocation(line: 222, column: 32, scope: !31321, inlinedAt: !31307)
!31321 = distinct !DILexicalBlock(scope: !31313, file: !21381, line: 221, column: 13)
!31322 = !DILocation(line: 222, column: 30, scope: !31321, inlinedAt: !31307)
!31323 = !DILocation(line: 222, column: 23, scope: !31321, inlinedAt: !31307)
!31324 = !DILocation(line: 226, column: 33, scope: !31325, inlinedAt: !31307)
!31325 = distinct !DILexicalBlock(scope: !31321, file: !21381, line: 222, column: 13)
!31326 = !DILocation(line: 252, column: 39, scope: !31327, inlinedAt: !31328)
!31327 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::array::Slot<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5array4SlotINtNtB9_6result6ResultIB1L_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB9_3any3AnyNtNtB9_6marker4SendEL_EEEE13get_uncheckedCseyIfFeUOWMb_17polars_mem_engine", scope: !17130, file: !17129, line: 239, type: !13, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31328 = distinct !DILocation(line: 646, column: 26, scope: !31329, inlinedAt: !31330)
!31329 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::array::Slot<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5array4SlotINtNtB5_6result6ResultIB1i_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB5_3any3AnyNtNtB5_6marker4SendEL_EEE13get_uncheckedjECseyIfFeUOWMb_17polars_mem_engine", scope: !17032, file: !17031, line: 639, type: !13, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31330 = distinct !DILocation(line: 226, column: 45, scope: !31325, inlinedAt: !31307)
!31331 = !DILocation(line: 252, column: 13, scope: !31327, inlinedAt: !31328)
!31332 = !DILocation(line: 253, column: 13, scope: !31327, inlinedAt: !31328)
!31333 = !DILocation(line: 3905, column: 24, scope: !5228, inlinedAt: !31334)
!31334 = distinct !DILocation(line: 2870, column: 26, scope: !31303, inlinedAt: !31335)
!31335 = distinct !DILocation(line: 227, column: 36, scope: !31336, inlinedAt: !31307)
!31336 = distinct !DILexicalBlock(scope: !31325, file: !21381, line: 226, column: 13)
!31337 = !DILocation(line: 230, column: 16, scope: !31338, inlinedAt: !31307)
!31338 = distinct !DILexicalBlock(scope: !31336, file: !21381, line: 227, column: 13)
!31339 = !DILocation(line: 259, column: 23, scope: !31338, inlinedAt: !31307)
!31340 = !DILocation(line: 231, column: 30, scope: !31338, inlinedAt: !31307)
!31341 = !DILocation(line: 231, column: 42, scope: !31338, inlinedAt: !31307)
!31342 = !DILocation(line: 127, column: 12, scope: !30798, inlinedAt: !31343)
!31343 = distinct !DILocation(line: 281, column: 25, scope: !31338, inlinedAt: !31307)
!31344 = !DILocation(line: 132, column: 13, scope: !30798, inlinedAt: !31343)
!31345 = !DILocation(line: 1917, column: 50, scope: !30802, inlinedAt: !31346)
!31346 = distinct !DILocation(line: 781, column: 12, scope: !30805, inlinedAt: !31347)
!31347 = distinct !DILocation(line: 866, column: 14, scope: !30807, inlinedAt: !31348)
!31348 = distinct !DILocation(line: 128, column: 22, scope: !30809, inlinedAt: !31343)
!31349 = !DILocation(line: 781, column: 12, scope: !30805, inlinedAt: !31347)
!31350 = !DILocation(line: 3558, column: 28, scope: !30813, inlinedAt: !31351)
!31351 = distinct !DILocation(line: 128, column: 41, scope: !30798, inlinedAt: !31343)
!31352 = !DILocation(line: 25, column: 14, scope: !30819, inlinedAt: !31353)
!31353 = distinct !DILocation(line: 287, column: 13, scope: !30821, inlinedAt: !31354)
!31354 = distinct !DILocation(line: 129, column: 17, scope: !30810, inlinedAt: !31343)
!31355 = distinct !{!31355, !30824}
!31356 = !DILocation(line: 135, column: 23, scope: !30798, inlinedAt: !31343)
!31357 = !DILocation(line: 259, column: 20, scope: !31338, inlinedAt: !31307)
!31358 = !DILocation(line: 4390, column: 23, scope: !1742, inlinedAt: !31359)
!31359 = distinct !DILocation(line: 260, column: 17, scope: !31338, inlinedAt: !31307)
!31360 = !DILocation(line: 3904, column: 24, scope: !5228, inlinedAt: !31361)
!31361 = distinct !DILocation(line: 2870, column: 26, scope: !31303, inlinedAt: !31362)
!31362 = distinct !DILocation(line: 261, column: 38, scope: !31338, inlinedAt: !31307)
!31363 = !DILocation(line: 264, column: 29, scope: !31364, inlinedAt: !31307)
!31364 = distinct !DILexicalBlock(scope: !31338, file: !21381, line: 261, column: 17)
!31365 = !DILocation(line: 264, column: 28, scope: !31364, inlinedAt: !31307)
!31366 = !DILocation(line: 264, column: 20, scope: !31364, inlinedAt: !31307)
!31367 = !DILocation(line: 1077, column: 12, scope: !30956, inlinedAt: !31368)
!31368 = distinct !DILocation(line: 114, column: 36, scope: !30958, inlinedAt: !31369)
!31369 = distinct !DILocation(line: 277, column: 25, scope: !31364, inlinedAt: !31307)
!31370 = !DILocation(line: 3558, column: 28, scope: !30813, inlinedAt: !31371)
!31371 = distinct !DILocation(line: 115, column: 26, scope: !30962, inlinedAt: !31369)
!31372 = !DILocation(line: 1917, column: 50, scope: !30964, inlinedAt: !31373)
!31373 = distinct !DILocation(line: 781, column: 12, scope: !30966, inlinedAt: !31374)
!31374 = distinct !DILocation(line: 866, column: 14, scope: !30968, inlinedAt: !31375)
!31375 = distinct !DILocation(line: 115, column: 18, scope: !30970, inlinedAt: !31369)
!31376 = !DILocation(line: 781, column: 12, scope: !30966, inlinedAt: !31374)
!31377 = !DILocation(line: 25, column: 14, scope: !30974, inlinedAt: !31378)
!31378 = distinct !DILocation(line: 287, column: 13, scope: !30976, inlinedAt: !31379)
!31379 = distinct !DILocation(line: 116, column: 13, scope: !30971, inlinedAt: !31369)
!31380 = distinct !{!31380, !30824}
!31381 = !DILocation(line: 119, column: 23, scope: !30962, inlinedAt: !31369)
!31382 = !DILocation(line: 555, column: 18, scope: !30981, inlinedAt: !31383)
!31383 = distinct !DILocation(line: 119, column: 33, scope: !30962, inlinedAt: !31369)
!31384 = !DILocation(line: 266, column: 24, scope: !31364, inlinedAt: !31307)
!31385 = !DILocation(line: 0, scope: !31338, inlinedAt: !31307)
!31386 = !DILocation(line: 3904, column: 24, scope: !5228, inlinedAt: !31387)
!31387 = distinct !DILocation(line: 2870, column: 26, scope: !31303, inlinedAt: !31388)
!31388 = distinct !DILocation(line: 0, scope: !31338, inlinedAt: !31307)
!31389 = !DILocation(line: 238, column: 38, scope: !31338, inlinedAt: !31307)
!31390 = !DILocation(line: 2511, column: 13, scope: !31391, inlinedAt: !31392)
!31391 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj12wrapping_add", scope: !17762, file: !436, line: 2510, type: !13, scopeLine: 2510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31392 = distinct !DILocation(line: 238, column: 25, scope: !31338, inlinedAt: !31307)
!31393 = !DILocation(line: 231, column: 27, scope: !31338, inlinedAt: !31307)
!31394 = !DILocation(line: 4081, column: 17, scope: !30994, inlinedAt: !31395)
!31395 = distinct !DILocation(line: 3130, column: 21, scope: !31396, inlinedAt: !31397)
!31396 = distinct !DISubprogram(name: "compare_exchange_weak", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE21compare_exchange_weak", scope: !279, file: !274, line: 3123, type: !13, scopeLine: 3123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31397 = distinct !DILocation(line: 242, column: 33, scope: !31398, inlinedAt: !31307)
!31398 = distinct !DILexicalBlock(scope: !31338, file: !21381, line: 231, column: 17)
!31399 = !DILocation(line: 242, column: 17, scope: !31398, inlinedAt: !31307)
!31400 = !DILocation(line: 1077, column: 12, scope: !30956, inlinedAt: !31401)
!31401 = distinct !DILocation(line: 114, column: 36, scope: !30958, inlinedAt: !31402)
!31402 = distinct !DILocation(line: 255, column: 33, scope: !31398, inlinedAt: !31307)
!31403 = !DILocation(line: 3558, column: 28, scope: !30813, inlinedAt: !31404)
!31404 = distinct !DILocation(line: 115, column: 26, scope: !30962, inlinedAt: !31402)
!31405 = !DILocation(line: 1917, column: 50, scope: !30964, inlinedAt: !31406)
!31406 = distinct !DILocation(line: 781, column: 12, scope: !30966, inlinedAt: !31407)
!31407 = distinct !DILocation(line: 866, column: 14, scope: !30968, inlinedAt: !31408)
!31408 = distinct !DILocation(line: 115, column: 18, scope: !30970, inlinedAt: !31402)
!31409 = !DILocation(line: 781, column: 12, scope: !30966, inlinedAt: !31407)
!31410 = !DILocation(line: 25, column: 14, scope: !30974, inlinedAt: !31411)
!31411 = distinct !DILocation(line: 287, column: 13, scope: !30976, inlinedAt: !31412)
!31412 = distinct !DILocation(line: 116, column: 13, scope: !30971, inlinedAt: !31402)
!31413 = distinct !{!31413, !30824}
!31414 = !DILocation(line: 119, column: 23, scope: !30962, inlinedAt: !31402)
!31415 = !DILocation(line: 555, column: 18, scope: !30981, inlinedAt: !31416)
!31416 = distinct !DILocation(line: 119, column: 33, scope: !30962, inlinedAt: !31402)
!31417 = !DILocation(line: 370, column: 13, scope: !31308)
!31418 = !DILocation(line: 367, column: 9, scope: !31308)
!31419 = !DILocation(line: 368, column: 22, scope: !31308)
!31420 = !DILocation(line: 966, column: 9, scope: !31421, inlinedAt: !31422)
!31421 = distinct !DISubprogram(name: "map_err<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>, (), std::sync::mpsc::TryRecvError, std::sync::mpmc::array::{impl#1}::try_recv::{closure_env#0}<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultIBw_IBw_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB5_3any3AnyNtNtB5_6marker4SendEL_EEuE7map_errNtNtNtCsh8eZTKRCwoO_3std4sync4mpsc12TryRecvErrorNCNvMs_NtNtB3W_4mpmc5arrayINtB4L_7ChannelBI_E8try_recv0ECseyIfFeUOWMb_17polars_mem_engine", scope: !2002, file: !93, line: 962, type: !13, scopeLine: 962, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31422 = !DILocation(line: 368, column: 39, scope: !31308)
!31423 = !DILocation(line: 251, column: 63, scope: !31398, inlinedAt: !31307)
!31424 = !DILocation(line: 2511, column: 13, scope: !31391, inlinedAt: !31425)
!31425 = distinct !DILocation(line: 251, column: 50, scope: !31398, inlinedAt: !31307)
!31426 = !DILocation(line: 295, column: 13, scope: !31427, inlinedAt: !31428)
!31427 = distinct !DISubprogram(name: "read<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE4readCseyIfFeUOWMb_17polars_mem_engine", scope: !21565, file: !21381, line: 288, type: !569, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31428 = distinct !DILocation(line: 368, column: 27, scope: !31308)
!31429 = !{!31430}
!31430 = distinct !{!31430, !31431, !"_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE4readCseyIfFeUOWMb_17polars_mem_engine: argument 0"}
!31431 = distinct !{!31431, !"_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE4readCseyIfFeUOWMb_17polars_mem_engine"}
!31432 = !DILocation(line: 298, column: 17, scope: !31433, inlinedAt: !31428)
!31433 = distinct !DILexicalBlock(scope: !31427, file: !21381, line: 296, column: 13)
!31434 = !DILocation(line: 2447, column: 9, scope: !31435, inlinedAt: !31436)
!31435 = distinct !DISubprogram(name: "get<core::mem::maybe_uninit::MaybeUninit<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtB7_3mem12maybe_uninit11MaybeUninitINtNtB7_6result6ResultIB1t_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB7_3any3AnyNtNtB7_6marker4SendEL_EEEE3getCseyIfFeUOWMb_17polars_mem_engine", scope: !21443, file: !21442, line: 2443, type: !13, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31436 = distinct !DILocation(line: 298, column: 32, scope: !31433, inlinedAt: !31428)
!31437 = !DILocation(line: 1721, column: 9, scope: !31438, inlinedAt: !31439)
!31438 = distinct !DISubprogram(name: "read<core::mem::maybe_uninit::MaybeUninit<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr4readINtNtNtB4_3mem12maybe_uninit11MaybeUninitINtNtB4_6result6ResultIB1c_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECseyIfFeUOWMb_17polars_mem_engine", scope: !56, file: !664, line: 1682, type: !13, scopeLine: 1682, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31439 = distinct !DILocation(line: 1263, column: 18, scope: !31440, inlinedAt: !31441)
!31440 = distinct !DISubprogram(name: "read<core::mem::maybe_uninit::MaybeUninit<core::result::Result<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOINtNtNtB6_3mem12maybe_uninit11MaybeUninitINtNtB6_6result6ResultIB1i_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_3any3AnyNtNtB6_6marker4SendEL_EEE4readCseyIfFeUOWMb_17polars_mem_engine", scope: !54, file: !53, line: 1258, type: !13, scopeLine: 1258, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31441 = distinct !DILocation(line: 298, column: 38, scope: !31433, inlinedAt: !31428)
!31442 = !DILocation(line: 3890, column: 24, scope: !31038, inlinedAt: !31443)
!31443 = distinct !DILocation(line: 2898, column: 26, scope: !31444, inlinedAt: !31445)
!31444 = distinct !DISubprogram(name: "store", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE5store", scope: !279, file: !274, line: 2896, type: !13, scopeLine: 2896, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31445 = distinct !DILocation(line: 299, column: 24, scope: !31446, inlinedAt: !31428)
!31446 = distinct !DILexicalBlock(scope: !31433, file: !21381, line: 298, column: 13)
!31447 = !DILocation(line: 300, column: 13, scope: !31446, inlinedAt: !31428)
!31448 = !DILocation(line: 301, column: 9, scope: !31433, inlinedAt: !31428)
!31449 = !DILocation(line: 304, column: 9, scope: !31450, inlinedAt: !31428)
!31450 = distinct !DILexicalBlock(scope: !31427, file: !21381, line: 295, column: 9)
!31451 = !DILocation(line: 304, column: 22, scope: !31450, inlinedAt: !31428)
!31452 = !DILocation(line: 306, column: 5, scope: !31427, inlinedAt: !31428)
!31453 = !DILocation(line: 288, column: 5, scope: !31427, inlinedAt: !31428)
!31454 = !DILocation(line: 305, column: 12, scope: !31450, inlinedAt: !31428)
!31455 = !DILocation(line: 966, column: 15, scope: !31421, inlinedAt: !31422)
!31456 = !DILocation(line: 372, column: 6, scope: !31300)
!31457 = !DILocation(line: 968, column: 23, scope: !31458, inlinedAt: !31422)
!31458 = distinct !DILexicalBlock(scope: !31421, file: !93, line: 968, column: 13)
!31459 = !DILocation(line: 968, column: 32, scope: !31421, inlinedAt: !31422)
!31460 = !DILocation(line: 967, column: 22, scope: !31461, inlinedAt: !31422)
!31461 = distinct !DILexicalBlock(scope: !31421, file: !93, line: 967, column: 13)
!31462 = !DILocation(line: 967, column: 16, scope: !31421, inlinedAt: !31422)
!31463 = !DILocation(line: 970, column: 5, scope: !31421, inlinedAt: !31422)
!31464 = !DILocation(line: 0, scope: !31421, inlinedAt: !31422)
!31465 = !DILocation(line: 368, column: 77, scope: !31308)
!31466 = !DILocation(line: 206, column: 9, scope: !611, inlinedAt: !31467)
!31467 = distinct !DILocation(line: 332, column: 9, scope: !614, inlinedAt: !31468)
!31468 = !DILocation(line: 449, column: 14, scope: !616, inlinedAt: !31469)
!31469 = !DILocation(line: 248, column: 18, scope: !619)
!31470 = !DILocation(line: 407, column: 18, scope: !31471, inlinedAt: !31472)
!31471 = distinct !DISubprogram(name: "as_ptr<u8>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullhE6as_ptrCseyIfFeUOWMb_17polars_mem_engine", scope: !1726, file: !1725, line: 401, type: !13, scopeLine: 401, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31472 = distinct !DILocation(line: 1450, column: 75, scope: !31473, inlinedAt: !31474)
!31473 = distinct !DISubprogram(name: "slice_from_raw_parts<u8>", linkageName: "_RNvMs4_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullShE20slice_from_raw_partsCseyIfFeUOWMb_17polars_mem_engine", scope: !1726, file: !1725, line: 1448, type: !13, scopeLine: 1448, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31474 = distinct !DILocation(line: 207, column: 21, scope: !611, inlinedAt: !31467)
!31475 = !DILocation(line: 248, column: 5, scope: !619)
!31476 = !DILocation(line: 99, column: 9, scope: !606, inlinedAt: !31477)
!31477 = distinct !DILocation(line: 210, column: 73, scope: !610, inlinedAt: !31467)
!31478 = !DILocation(line: 101, column: 9, scope: !606, inlinedAt: !31477)
!31479 = !DILocation(line: 248, column: 11, scope: !619)
!31480 = !DILocation(line: 250, column: 19, scope: !619)
!31481 = !DILocation(line: 252, column: 2, scope: !619)
!31482 = distinct !DISubprogram(name: "create_scan_predicate", linkageName: "_RNvNtNtCseyIfFeUOWMb_17polars_mem_engine14scan_predicate9functions21create_scan_predicate", scope: !17663, file: !17662, line: 32, type: !13, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31483 = !DILocation(line: 41, column: 9, scope: !31482)
!31484 = !DILocation(line: 41, column: 35, scope: !31482)
!31485 = !DILocation(line: 43, column: 9, scope: !31486)
!31486 = distinct !DILexicalBlock(scope: !31482, file: !17662, line: 41, column: 5)
!31487 = !DILocation(line: 43, column: 30, scope: !31486)
!31488 = !DILocation(line: 47, column: 33, scope: !31489)
!31489 = distinct !DILexicalBlock(scope: !31490, file: !17662, line: 44, column: 5)
!31490 = distinct !DILexicalBlock(scope: !31486, file: !17662, line: 43, column: 5)
!31491 = !DILocation(line: 47, column: 13, scope: !31489)
!31492 = !DILocation(line: 51, column: 13, scope: !31493)
!31493 = distinct !DILexicalBlock(scope: !31489, file: !17662, line: 47, column: 9)
!31494 = !DILocation(line: 464, column: 9, scope: !31495, inlinedAt: !31496)
!31495 = distinct !DISubprogram(name: "new<polars_utils::arena::Node>", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc3vecINtB2_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeE3newCseyIfFeUOWMb_17polars_mem_engine", scope: !39, file: !37, line: 463, type: !13, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31496 = !DILocation(line: 51, column: 40, scope: !31493)
!31497 = !DILocation(line: 52, column: 13, scope: !31498)
!31498 = distinct !DILexicalBlock(scope: !31493, file: !17662, line: 51, column: 9)
!31499 = !DILocation(line: 464, column: 9, scope: !31495, inlinedAt: !31500)
!31500 = !DILocation(line: 52, column: 44, scope: !31498)
!31501 = !DILocation(line: 196, column: 9, scope: !31502, inlinedAt: !31503)
!31502 = distinct !DISubprogram(name: "node", linkageName: "_RNvMs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_irNtB5_6ExprIR4node", scope: !21992, file: !21991, line: 195, type: !13, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31503 = !DILocation(line: 54, column: 58, scope: !31504)
!31504 = distinct !DILexicalBlock(scope: !31498, file: !17662, line: 52, column: 9)
!31505 = !DILocation(line: 54, column: 31, scope: !31504)
!31506 = !DILocation(line: 54, column: 9, scope: !31507)
!31507 = distinct !DILexicalBlock(scope: !31504, file: !17662, line: 54, column: 9)
!31508 = !DILocation(line: 107, column: 5, scope: !31493)
!31509 = !DILocation(line: 109, column: 9, scope: !31489)
!31510 = !DILocation(line: 44, column: 48, scope: !31490)
!31511 = !DILocation(line: 109, column: 26, scope: !31489)
!31512 = !DILocation(line: 54, column: 31, scope: !31507)
!31513 = !DILocation(line: 810, column: 1, scope: !20056, inlinedAt: !31514)
!31514 = distinct !DILocation(line: 810, column: 1, scope: !31515, inlinedAt: !31516)
!31515 = distinct !DISubprogram(name: "drop_in_place<polars_plan::plans::aexpr::minterm_iter::MintermIter>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr12minterm_iter11MintermIterECseyIfFeUOWMb_17polars_mem_engine", scope: !56, file: !664, line: 810, type: !13, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31516 = distinct !DILocation(line: 62, column: 9, scope: !31504)
!31517 = !DILocation(line: 55, column: 16, scope: !31518)
!31518 = distinct !DILexicalBlock(scope: !31507, file: !17662, line: 54, column: 9)
!31519 = !DILocation(line: 810, column: 1, scope: !20056, inlinedAt: !31520)
!31520 = distinct !DILocation(line: 810, column: 1, scope: !31515, inlinedAt: !31521)
!31521 = distinct !DILocation(line: 62, column: 9, scope: !31504)
!31522 = !DILocation(line: 62, column: 9, scope: !31504)
!31523 = !DILocation(line: 3024, column: 19, scope: !31524, inlinedAt: !31525)
!31524 = distinct !DISubprogram(name: "len<polars_utils::arena::Node, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeE3lenCseyIfFeUOWMb_17polars_mem_engine", scope: !39, file: !37, line: 3023, type: !13, scopeLine: 3023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31525 = !DILocation(line: 3049, column: 14, scope: !31526, inlinedAt: !31527)
!31526 = distinct !DISubprogram(name: "is_empty<polars_utils::arena::Node, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeE8is_emptyCseyIfFeUOWMb_17polars_mem_engine", scope: !39, file: !37, line: 3048, type: !13, scopeLine: 3048, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31527 = !DILocation(line: 64, column: 33, scope: !31504)
!31528 = !DILocation(line: 3029, column: 37, scope: !31529, inlinedAt: !31525)
!31529 = distinct !DILexicalBlock(scope: !31524, file: !37, line: 3024, column: 9)
!31530 = !DILocation(line: 3029, column: 18, scope: !31529, inlinedAt: !31525)
!31531 = !DILocation(line: 64, column: 12, scope: !31504)
!31532 = !DILocation(line: 3024, column: 19, scope: !31524, inlinedAt: !31533)
!31533 = !DILocation(line: 3049, column: 14, scope: !31534, inlinedAt: !31535)
!31534 = !DILexicalBlockFile(scope: !31526, file: !37, discriminator: 2)
!31535 = !DILocation(line: 68, column: 37, scope: !31504)
!31536 = !DILocation(line: 3029, column: 37, scope: !31537, inlinedAt: !31533)
!31537 = distinct !DILexicalBlock(scope: !31524, file: !37, line: 3024, column: 9)
!31538 = !DILocation(line: 3029, column: 18, scope: !31537, inlinedAt: !31533)
!31539 = !DILocation(line: 68, column: 12, scope: !31504)
!31540 = !DILocation(line: 0, scope: !31490)
!31541 = !DILocation(line: 810, column: 1, scope: !3754, inlinedAt: !31542)
!31542 = distinct !DILocation(line: 107, column: 5, scope: !31498)
!31543 = !DILocation(line: 810, column: 1, scope: !3757, inlinedAt: !31544)
!31544 = distinct !DILocation(line: 810, column: 1, scope: !3754, inlinedAt: !31542)
!31545 = !DILocation(line: 810, column: 1, scope: !3757, inlinedAt: !31546)
!31546 = distinct !DILocation(line: 810, column: 1, scope: !3754, inlinedAt: !31542)
!31547 = !DILocation(line: 74, column: 28, scope: !31504)
!31548 = !DILocation(line: 961, column: 18, scope: !31549, inlinedAt: !31550)
!31549 = distinct !DISubprogram(name: "add<polars_utils::arena::Node>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrONtNtCs2mZqlW55729_12polars_utils5arena4Node3addCseyIfFeUOWMb_17polars_mem_engine", scope: !54, file: !53, line: 927, type: !13, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31550 = !DILocation(line: 3927, column: 23, scope: !31551, inlinedAt: !31556)
!31551 = distinct !DILexicalBlock(scope: !31552, file: !37, line: 3923, column: 13)
!31552 = distinct !DILexicalBlock(scope: !31553, file: !37, line: 3922, column: 13)
!31553 = distinct !DILexicalBlock(scope: !31554, file: !37, line: 3921, column: 13)
!31554 = distinct !DILexicalBlock(scope: !31555, file: !37, line: 3920, column: 13)
!31555 = distinct !DISubprogram(name: "into_iter<polars_utils::arena::Node, alloc::alloc::Global>", linkageName: "_RNvXsf_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12IntoIterator9into_iterCseyIfFeUOWMb_17polars_mem_engine", scope: !48, file: !37, line: 3918, type: !13, scopeLine: 3918, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31556 = !DILocation(line: 74, column: 49, scope: !31504)
!31557 = !DILocation(line: 659, column: 28, scope: !31558, inlinedAt: !31559)
!31558 = distinct !DISubprogram(name: "add<polars_utils::arena::Node>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullNtNtCs2mZqlW55729_12polars_utils5arena4NodeE3addCseyIfFeUOWMb_17polars_mem_engine", scope: !1726, file: !1725, line: 651, type: !13, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31559 = distinct !DILocation(line: 227, column: 37, scope: !31560, inlinedAt: !31565)
!31560 = distinct !DILexicalBlock(scope: !31562, file: !31561, line: 226, column: 13)
!31561 = !DIFile(filename: "library/alloc/src/vec/into_iter.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "67afe9548c17103ef643b1b8003217a3")
!31562 = distinct !DISubprogram(name: "next<polars_utils::arena::Node, alloc::alloc::Global>", linkageName: "_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCseyIfFeUOWMb_17polars_mem_engine", scope: !31563, file: !31561, line: 213, type: !13, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31563 = !DINamespace(name: "{impl#6}", scope: !31564)
!31564 = !DINamespace(name: "into_iter", scope: !40)
!31565 = distinct !DILocation(line: 75, column: 33, scope: !31566)
!31566 = distinct !DILexicalBlock(scope: !31504, file: !17662, line: 74, column: 13)
!31567 = !DILocation(line: 1721, column: 9, scope: !31568, inlinedAt: !31569)
!31568 = distinct !DISubprogram(name: "read<polars_utils::arena::Node>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr4readNtNtCs2mZqlW55729_12polars_utils5arena4NodeECseyIfFeUOWMb_17polars_mem_engine", scope: !56, file: !664, line: 1682, type: !13, scopeLine: 1682, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31569 = distinct !DILocation(line: 990, column: 18, scope: !31570, inlinedAt: !31571)
!31570 = distinct !DISubprogram(name: "read<polars_utils::arena::Node>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullNtNtCs2mZqlW55729_12polars_utils5arena4NodeE4readCseyIfFeUOWMb_17polars_mem_engine", scope: !1726, file: !1725, line: 985, type: !13, scopeLine: 985, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31571 = distinct !DILocation(line: 230, column: 27, scope: !31572, inlinedAt: !31565)
!31572 = distinct !DILexicalBlock(scope: !31562, file: !31561, line: 214, column: 9)
!31573 = !{!31574}
!31574 = distinct !{!31574, !31575, !"_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCseyIfFeUOWMb_17polars_mem_engine: argument 0"}
!31575 = distinct !{!31575, !"_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCseyIfFeUOWMb_17polars_mem_engine"}
!31576 = !DILocation(line: 77, column: 30, scope: !31577)
!31577 = distinct !DILexicalBlock(scope: !31566, file: !17662, line: 75, column: 13)
!31578 = !DILocation(line: 1717, column: 9, scope: !31579, inlinedAt: !31580)
!31579 = distinct !DISubprogram(name: "eq<polars_utils::arena::Node>", linkageName: "_RNvXsd_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtB9_3cmp9PartialEq2eqCseyIfFeUOWMb_17polars_mem_engine", scope: !17036, file: !1725, line: 1716, type: !13, scopeLine: 1716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31580 = distinct !DILocation(line: 223, column: 16, scope: !31562, inlinedAt: !31581)
!31581 = distinct !DILocation(line: 77, column: 30, scope: !31582)
!31582 = distinct !DILexicalBlock(scope: !31577, file: !17662, line: 77, column: 13)
!31583 = !DILocation(line: 223, column: 16, scope: !31562, inlinedAt: !31581)
!31584 = !DILocation(line: 3024, column: 19, scope: !31585, inlinedAt: !31586)
!31585 = distinct !DISubprogram(name: "len<polars_plan::plans::aexpr::AExpr, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprE3lenCseyIfFeUOWMb_17polars_mem_engine", scope: !39, file: !37, line: 3023, type: !13, scopeLine: 3023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31586 = !DILocation(line: 58, column: 30, scope: !31587, inlinedAt: !31588)
!31587 = distinct !DISubprogram(name: "add<polars_plan::plans::aexpr::AExpr>", linkageName: "_RNvMs0_NtCs2mZqlW55729_12polars_utils5arenaINtB5_5ArenaNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprE3addCseyIfFeUOWMb_17polars_mem_engine", scope: !21881, file: !21880, line: 57, type: !13, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!31588 = !DILocation(line: 78, column: 35, scope: !31589)
!31589 = distinct !DILexicalBlock(scope: !31582, file: !17662, line: 77, column: 13)
!31590 = !DILocation(line: 107, column: 5, scope: !31498)
!31591 = !DILocation(line: 810, column: 1, scope: !3754, inlinedAt: !31592)
!31592 = distinct !DILocation(line: 107, column: 5, scope: !31493)
!31593 = !DILocation(line: 810, column: 1, scope: !3757, inlinedAt: !31594)
!31594 = distinct !DILocation(line: 810, column: 1, scope: !3754, inlinedAt: !31592)
!31595 = !DILocation(line: 810, column: 1, scope: !3757, inlinedAt: !31596)
!31596 = distinct !DILocation(line: 810, column: 1, scope: !3754, inlinedAt: !31592)
!31597 = !{!31598}
!31598 = distinct !{!31598, !31599, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EEECseyIfFeUOWMb_17polars_mem_engine: argument 0"}
!31599 = distinct !{!31599, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EEECseyIfFeUOWMb_17polars_mem_engine"}
!31600 = !DILocation(line: 206, column: 1, scope: !31486)
!31601 = !DILocation(line: 810, column: 1, scope: !6426, inlinedAt: !31602)
!31602 = distinct !DILocation(line: 206, column: 1, scope: !31486)
!31603 = !DILocation(line: 3956, column: 24, scope: !3951, inlinedAt: !31604)
!31604 = distinct !DILocation(line: 3193, column: 26, scope: !3953, inlinedAt: !31605)
!31605 = distinct !DILocation(line: 2814, column: 32, scope: !3947, inlinedAt: !31606)
!31606 = distinct !DILocation(line: 810, column: 1, scope: !3940, inlinedAt: !31607)
!31607 = distinct !DILocation(line: 810, column: 1, scope: !6426, inlinedAt: !31602)
!31608 = !{!31609, !31611, !31598}
!31609 = distinct !{!31609, !31610, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseyIfFeUOWMb_17polars_mem_engine: argument 0"}
!31610 = distinct !{!31610, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseyIfFeUOWMb_17polars_mem_engine"}
!31611 = distinct !{!31611, !31612, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EECseyIfFeUOWMb_17polars_mem_engine: argument 0"}
!31612 = distinct !{!31612, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EECseyIfFeUOWMb_17polars_mem_engine"}
!31613 = !DILocation(line: 2814, column: 12, scope: !3947, inlinedAt: !31606)
!31614 = !DILocation(line: 4387, column: 24, scope: !1742, inlinedAt: !31615)
!31615 = distinct !DILocation(line: 64, column: 9, scope: !3947, inlinedAt: !31606)
!31616 = !DILocation(line: 2857, column: 18, scope: !3947, inlinedAt: !31606)
end_hunk_1
